package io.github.lazyimmortal.sesame.util;

import com.fasterxml.jackson.core.type.TypeReference;
import java.io.File;
import java.util.HashSet;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes.dex */
public class IconRegistry {
    public static final String SCOPE_ANCIENT_TREE = "ancientTree";
    public static final String SCOPE_ANIMAL = "animal";
    public static final String SCOPE_BEACH = "beach";
    public static final String SCOPE_COOPERATE = "cooperate";
    public static final String SCOPE_MALL_ITEM = "mallItem";
    public static final String SCOPE_MARATHON = "marathon";
    public static final String SCOPE_RESERVE = "reserve";
    public static final String SCOPE_TREE = "tree";
    public static final String SCOPE_VITALITY_BENEFIT = "vitalityBenefit";
    private static File file;
    private static final Map<String, String> iconMap = new ConcurrentHashMap();
    private static volatile boolean loaded = false;

    private static void ensureLoaded() {
        if (loaded) {
            return;
        }
        synchronized (IconRegistry.class) {
            if (!loaded) {
                load();
                loaded = true;
            }
        }
    }

    private static File file() {
        if (file == null) {
            file = new File(FileUtil.MAIN_DIRECTORY_FILE, "iconRegistry.json");
        }
        return file;
    }

    public static synchronized void load() {
        Map<String, String> map = iconMap;
        map.clear();
        try {
            map.putAll(readDisk());
        } catch (Throwable th) {
            try {
                Log.printStackTrace(th);
            } catch (Throwable th2) {
                loaded = true;
                throw th2;
            }
        }
        loaded = true;
    }

    private static Map<String, String> readDisk() throws Exception {
        Map map;
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        String fromFile = FileUtil.readFromFile(file());
        if (!fromFile.isEmpty() && (map = (Map) JsonUtil.parseObject(fromFile, (TypeReference) new TypeReference<Map<String, String>>() { // from class: io.github.lazyimmortal.sesame.util.IconRegistry.1
        })) != null) {
            concurrentHashMap.putAll(map);
        }
        return concurrentHashMap;
    }

    public static String get(String str, String str2) {
        if (str2 == null) {
            return "";
        }
        ensureLoaded();
        String str3 = iconMap.get(str + ":" + str2);
        return str3 == null ? "" : str3;
    }

    public static void put(String str, String str2, String str3) {
        if (str2 == null || !TaskIconUtil.isIconUrl(str3)) {
            return;
        }
        ensureLoaded();
        iconMap.put(str + ":" + str2, str3);
    }

    public static synchronized void saveAndPrefetch() {
        ensureLoaded();
        try {
            Map<? extends String, ? extends String> disk = readDisk();
            Map<String, String> map = iconMap;
            disk.putAll(map);
            map.clear();
            map.putAll(disk);
            FileUtil.write2File(JsonUtil.toJsonString(disk), file());
        } catch (Throwable th) {
            Log.printStackTrace(th);
        }
        prefetch();
    }

    public static void prefetch() {
        TaskIconUtil.predownload(new HashSet(iconMap.values()));
    }
}
