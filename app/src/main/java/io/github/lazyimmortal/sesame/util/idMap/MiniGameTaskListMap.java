package io.github.lazyimmortal.sesame.util.idMap;

import com.fasterxml.jackson.core.type.TypeReference;
import io.github.lazyimmortal.sesame.entity.CustomOption;
import io.github.lazyimmortal.sesame.hook.SimpleViewImage;
import io.github.lazyimmortal.sesame.util.FileUtil;
import io.github.lazyimmortal.sesame.util.JsonUtil;
import io.github.lazyimmortal.sesame.util.Log;
import io.github.lazyimmortal.sesame.util.MessageUtil;
import io.github.lazyimmortal.sesame.util.TaskIconUtil;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public class MiniGameTaskListMap {
    private static final Pattern BARE_PROGRESS_PATTERN;
    private static final Pattern BRACKET_NUMBER_PATTERN;
    private static final Pattern BRACKET_PROGRESS_PATTERN;
    public static final String[] COMMON_GAME_TASK_WHITELIST;
    private static final Map<String, String[]> GAME_TASK_BLACKLIST;
    private static final Map<String, String> iconMap;
    private static final Map<String, List<String>> idMap;
    private static volatile boolean loaded;
    private static final Map<String, List<String>> readOnlyIdMap;

    static {
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        idMap = concurrentHashMap;
        iconMap = new ConcurrentHashMap();
        readOnlyIdMap = Collections.unmodifiableMap(concurrentHashMap);
        loaded = false;
        COMMON_GAME_TASK_WHITELIST = new String[0];
        ConcurrentHashMap concurrentHashMap2 = new ConcurrentHashMap();
        GAME_TASK_BLACKLIST = concurrentHashMap2;
        concurrentHashMap2.put("AntFarmDoFarmTaskList", new String[0]);
        concurrentHashMap2.put("AntFarmDrawMachineTaskList", new String[0]);
        concurrentHashMap2.put("AntOrchardTaskList", new String[0]);
        concurrentHashMap2.put("AntOrchardDrawTaskList", new String[0]);
        concurrentHashMap2.put("AntForestVitalityTaskList", new String[0]);
        concurrentHashMap2.put("AntForestHuntTaskList", new String[0]);
        concurrentHashMap2.put("MonopolyTaskList", new String[0]);
        concurrentHashMap2.put("AntOceanAntiepTaskList", new String[0]);
        concurrentHashMap2.put("AntOceanFishBlackList", new String[0]);
        concurrentHashMap2.put("AntStallTaskList", new String[0]);
        concurrentHashMap2.put("AntDodoTaskList", new String[0]);
        concurrentHashMap2.put("GoldenBeansTaskList", new String[0]);
        concurrentHashMap2.put("MemberCreditSesameTaskList", new String[0]);
        concurrentHashMap2.put("AntSportsTaskList", new String[0]);
        BRACKET_PROGRESS_PATTERN = Pattern.compile("[(（]\\s*\\d+\\s*/\\s*(\\d+)\\s*[)）]");
        BARE_PROGRESS_PATTERN = Pattern.compile("\\d+\\s*/\\s*(\\d+)");
        BRACKET_NUMBER_PATTERN = Pattern.compile("[(（]\\s*(\\d+)\\s*[)）]");
    }

    public static boolean isBlacklisted(String str, String str2) {
        return containsKeyword(str2, GAME_TASK_BLACKLIST.get(str));
    }

    public static boolean isGameTask(String str, String str2) {
        return containsKeyword(str2, COMMON_GAME_TASK_WHITELIST);
    }

    private static boolean containsKeyword(String str, String[] strArr) {
        if (str != null && strArr != null) {
            for (String str2 : strArr) {
                if (str.contains(str2)) {
                    return true;
                }
            }
        }
        return false;
    }

    public static String name(String str, String str2) {
        String strTrim = "";
        if (str == null) {
            return "";
        }
        if (str2 != null) {
            strTrim = str2.trim();
        }
        String strNormalize = normalize(strTrim);
        if (strNormalize.isEmpty()) {
            return str;
        }
        return str + "[" + strNormalize + "]";
    }

    private static String normalize(String str) {
        return BRACKET_NUMBER_PATTERN.matcher(BARE_PROGRESS_PATTERN.matcher(BRACKET_PROGRESS_PATTERN.matcher(readableDesc(str)).replaceAll("$1")).replaceAll("$1")).replaceAll("$1");
    }

    private static String readableDesc(String str) {
        String strTrim = str == null ? "" : str.trim();
        if (!strTrim.startsWith("{") && !strTrim.startsWith("[")) {
            return strTrim;
        }
        try {
            Object object = JsonUtil.parseObject(strTrim, (Class<Object>) Object.class);
            if ((object instanceof List) && !((List) object).isEmpty()) {
                object = ((List) object).get(0);
            }
            if (!(object instanceof Map)) {
                return object instanceof String ? cleanPlaceholder((String) object) : strTrim;
            }
            Map map = (Map) object;
            String[] strArr = {"baseDesc", "desc", "description", "subTitle", SimpleViewImage.TEXT, "content", "title"};
            for (int i = 0; i < 7; i++) {
                Object obj = map.get(strArr[i]);
                if ((obj instanceof String) && !((String) obj).trim().isEmpty()) {
                    return cleanPlaceholder((String) obj);
                }
            }
            for (Object obj2 : map.values()) {
                if ((obj2 instanceof String) && !((String) obj2).trim().isEmpty()) {
                    return cleanPlaceholder((String) obj2);
                }
            }
            return strTrim;
        } catch (Throwable unused) {
            return strTrim;
        }
    }

    private static String cleanPlaceholder(String str) {
        return str.replaceAll("\\{[^{}]*\\}", "").trim();
    }

    public static String key(String str, String str2) {
        return str + "||" + str2;
    }

    public static List<CustomOption> getOptions() {
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<String, List<String>> entry : getMap().entrySet()) {
            for (String str : entry.getValue()) {
                CustomOption customOption = new CustomOption(key(entry.getKey(), str), entry.getKey() + " | " + MessageUtil.getTaskListName(str));
                customOption.icon = backfillIcon(entry.getKey(), str);
                arrayList.add(customOption);
            }
        }
        return arrayList;
    }

    private static String backfillIcon(String str, String str2) {
        int iLastIndexOf;
        String icon = getIcon(str);
        if (TaskIconUtil.isIconUrl(icon)) {
            return icon;
        }
        String strResolveIcon = resolveIcon(str2, str);
        if (!TaskIconUtil.isIconUrl(strResolveIcon) && (iLastIndexOf = str.lastIndexOf(91)) > 0 && str.endsWith("]")) {
            strResolveIcon = resolveIcon(str2, str.substring(0, iLastIndexOf));
        }
        if (TaskIconUtil.isIconUrl(strResolveIcon)) {
            iconMap.put(str, strResolveIcon);
            saveIcons();
        }
        return TaskIconUtil.isIconUrl(strResolveIcon) ? strResolveIcon : "";
    }

    public static String getIcon(String str) {
        ensureLoaded();
        String str2 = iconMap.get(str);
        return str2 == null ? "" : str2;
    }

    private static String resolveIcon(String str, String str2) {
        String str3;
        if (str == null || str2 == null) {
            return "";
        }
        str.hashCode();
        switch (str) {
            case "AntSportsTaskList":
                str3 = AntSportsTaskListMap.get(str2);
                break;
            case "AntFarmDoFarmTaskList":
                str3 = AntFarmDoFarmTaskListMap.get(str2);
                break;
            case "AntMemberTaskList":
                str3 = AntMemberTaskListMap.get(str2);
                break;
            case "AntOrchardDrawTaskList":
                str3 = AntOrchardDrawTaskListMap.get(str2);
                break;
            case "AntFarmDrawMachineTaskList":
                str3 = AntFarmDrawMachineTaskListMap.get(str2);
                break;
            case "AntFarmChickenChefTaskList":
                str3 = AntFarmChickenChefTaskListMap.get(str2);
                break;
            case "AntStallTaskList":
                str3 = AntStallTaskListMap.get(str2);
                break;
            case "AntOceanFishBlackList":
                str3 = AntOceanFishBlackListMap.get(str2);
                break;
            case "AntDodoTaskList":
                str3 = AntDodoTaskListMap.get(str2);
                break;
            case "AntForestVitalityTaskList":
                str3 = AntForestVitalityTaskListMap.get(str2);
                break;
            case "MemberCreditSesameTaskList":
                str3 = MemberCreditSesameTaskListMap.get(str2);
                break;
            case "MonopolyTaskList":
                str3 = MonopolyTaskListMap.get(str2);
                break;
            case "GoldenBeansTaskList":
                str3 = GoldenBeansTaskListMap.get(str2);
                break;
            case "AntForestHuntTaskList":
                str3 = AntForestHuntTaskListMap.get(str2);
                break;
            case "AntOceanAntiepTaskList":
                str3 = AntOceanAntiepTaskListMap.get(str2);
                break;
            case "AntOrchardTaskList":
                str3 = AntOrchardTaskListMap.get(str2);
                break;
            default:
                str3 = null;
                break;
        }
        return TaskIconUtil.isIconUrl(str3) ? str3 : "";
    }

    public static Map<String, List<String>> getMap() {
        ensureLoaded();
        return readOnlyIdMap;
    }

    public static List<String> get(String str) {
        ensureLoaded();
        return idMap.get(str);
    }

    public static synchronized void add(String str, String str2, String str3) {
        String strName = name(str, str2);
        ensureLoaded();
        Map<String, String> map = iconMap;
        if (!TaskIconUtil.isIconUrl(map.get(strName))) {
            String strResolveIcon = resolveIcon(str3, str);
            if (TaskIconUtil.isIconUrl(strResolveIcon)) {
                map.put(strName, strResolveIcon);
                saveIcons();
            }
        }
        add(strName, str3);
    }

    private static synchronized void add(String str, String str2) {
        ensureLoaded();
        Map<String, List<String>> map = idMap;
        List<String> arrayList = map.get(str);
        if (arrayList == null) {
            arrayList = new ArrayList<>();
            map.put(str, arrayList);
        }
        if (arrayList.contains(str2)) {
            return;
        }
        arrayList.add(str2);
        if (save()) {
            Log.record("游戏任务🔱收集[" + str + "]来源[" + MessageUtil.getTaskListName(str2) + "]");
        }
    }

    public static synchronized void remove(String str) {
        ensureLoaded();
        idMap.remove(str);
        iconMap.remove(str);
        save();
    }

    public static synchronized void load() {
        try {
            Map<String, List<String>> map = idMap;
            map.clear();
            iconMap.clear();
            try {
                String fromFile = FileUtil.readFromFile(FileUtil.getMiniGameTaskListMapFile());
                if (!fromFile.isEmpty()) {
                    map.putAll((Map) JsonUtil.parseObject(fromFile, (TypeReference) new TypeReference<Map<String, List<String>>>() { // from class: io.github.lazyimmortal.sesame.util.idMap.MiniGameTaskListMap.1
                    }));
                }
                String fromFile2 = FileUtil.readFromFile(FileUtil.getMiniGameTaskIconMapFile());
                if (!fromFile2.isEmpty()) {
                    for (Map.Entry entry : ((Map) JsonUtil.parseObject(fromFile2, (TypeReference) new TypeReference<Map<String, String>>() { // from class: io.github.lazyimmortal.sesame.util.idMap.MiniGameTaskListMap.2
                    })).entrySet()) {
                        String str = (String) entry.getValue();
                        Map<String, String> map2 = iconMap;
                        String str2 = (String) entry.getKey();
                        if (!TaskIconUtil.isIconUrl(str)) {
                            str = "";
                        }
                        map2.put(str2, str);
                    }
                }
            } catch (Exception e) {
                Log.printStackTrace(e);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public static synchronized boolean save() {
        boolean zWrite2File;
        zWrite2File = FileUtil.write2File(JsonUtil.toJsonString(idMap), FileUtil.getMiniGameTaskListMapFile());
        saveIcons();
        return zWrite2File;
    }

    public static synchronized void saveIcons() {
        Map<String, String> map = iconMap;
        FileUtil.write2File(JsonUtil.toJsonString(map), FileUtil.getMiniGameTaskIconMapFile());
        TaskIconUtil.predownload(map.values());
    }

    public static synchronized void clear() {
        idMap.clear();
        iconMap.clear();
    }

    private static void ensureLoaded() {
        if (loaded) {
            return;
        }
        synchronized (MiniGameTaskListMap.class) {
            if (!loaded) {
                load();
                loaded = true;
            }
        }
    }
}
