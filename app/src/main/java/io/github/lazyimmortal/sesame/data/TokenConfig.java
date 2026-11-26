package io.github.lazyimmortal.sesame.data;

import android.os.Build;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.databind.JsonMappingException;
import io.github.lazyimmortal.sesame.util.FileUtil;
import io.github.lazyimmortal.sesame.util.JsonUtil;
import io.github.lazyimmortal.sesame.util.Log;
import io.github.lazyimmortal.sesame.util.RandomUtil;
import io.github.lazyimmortal.sesame.util.StringUtil;
import io.github.lazyimmortal.sesame.util.TimeUtil;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;
import java.util.Objects;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import java.util.function.Predicate;

/* JADX INFO: loaded from: classes.dex */
public class TokenConfig {
    public static final TokenConfig INSTANCE = new TokenConfig();
    private static final String TAG = "TokenConfig";

    @JsonIgnore
    private boolean init;
    private final Queue<String> customWalkPathIdQueue = new LinkedList();
    private final Map<String, String> answerList = new HashMap();
    private final Set<Map<String, String>> dishImageList = new HashSet();

    protected boolean canEqual(Object obj) {
        return obj instanceof TokenConfig;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof TokenConfig)) {
            return false;
        }
        TokenConfig tokenConfig = (TokenConfig) obj;
        if (!tokenConfig.canEqual(this) || isInit() != tokenConfig.isInit()) {
            return false;
        }
        Queue<String> customWalkPathIdQueue = getCustomWalkPathIdQueue();
        Queue<String> customWalkPathIdQueue2 = tokenConfig.getCustomWalkPathIdQueue();
        if (customWalkPathIdQueue != null ? !customWalkPathIdQueue.equals(customWalkPathIdQueue2) : customWalkPathIdQueue2 != null) {
            return false;
        }
        Map<String, String> answerList = getAnswerList();
        Map<String, String> answerList2 = tokenConfig.getAnswerList();
        if (answerList != null ? !answerList.equals(answerList2) : answerList2 != null) {
            return false;
        }
        Set<Map<String, String>> dishImageList = getDishImageList();
        Set<Map<String, String>> dishImageList2 = tokenConfig.getDishImageList();
        return dishImageList != null ? dishImageList.equals(dishImageList2) : dishImageList2 == null;
    }

    public int hashCode() {
        int i = isInit() ? 79 : 97;
        Queue<String> customWalkPathIdQueue = getCustomWalkPathIdQueue();
        int iHashCode = ((i + 59) * 59) + (customWalkPathIdQueue == null ? 43 : customWalkPathIdQueue.hashCode());
        Map<String, String> answerList = getAnswerList();
        int iHashCode2 = (iHashCode * 59) + (answerList == null ? 43 : answerList.hashCode());
        Set<Map<String, String>> dishImageList = getDishImageList();
        return (iHashCode2 * 59) + (dishImageList != null ? dishImageList.hashCode() : 43);
    }

    @JsonIgnore
    public void setInit(boolean z) {
        this.init = z;
    }

    public String toString() {
        return "TokenConfig(init=" + isInit() + ", customWalkPathIdQueue=" + getCustomWalkPathIdQueue() + ", answerList=" + getAnswerList() + ", dishImageList=" + getDishImageList() + ")";
    }

    public boolean isInit() {
        return this.init;
    }

    public Queue<String> getCustomWalkPathIdQueue() {
        return this.customWalkPathIdQueue;
    }

    public Map<String, String> getAnswerList() {
        return this.answerList;
    }

    public Set<Map<String, String>> getDishImageList() {
        return this.dishImageList;
    }

    public static String getCustomWalkPathId(Set<String> set) {
        String strPoll = INSTANCE.customWalkPathIdQueue.poll();
        if (strPoll != null) {
            save();
            return strPoll;
        }
        ArrayList arrayList = new ArrayList(set);
        if (arrayList.isEmpty()) {
            return null;
        }
        return (String) arrayList.get(RandomUtil.nextInt(0, arrayList.size() - 1));
    }

    public static Boolean addCustomWalkPathIdQueue(String str) {
        INSTANCE.customWalkPathIdQueue.add(str);
        return save();
    }

    public static Boolean clearCustomWalkPathIdQueue() {
        TokenConfig tokenConfig = INSTANCE;
        if (!tokenConfig.customWalkPathIdQueue.isEmpty()) {
            tokenConfig.customWalkPathIdQueue.clear();
            return save();
        }
        return true;
    }

    public static String getAnswer(String str) {
        long timeInMillis = TimeUtil.getToday().getTimeInMillis();
        return INSTANCE.answerList.get(timeInMillis + "::" + str);
    }

    public static void saveAnswer(String str, String str2) {
        long timeInMillis = TimeUtil.getToday().getTimeInMillis();
        long millis = TimeUnit.DAYS.toMillis(1L) + timeInMillis;
        final String strValueOf = String.valueOf(timeInMillis);
        final String strValueOf2 = String.valueOf(millis);
        String str3 = millis + "::" + str;
        TokenConfig tokenConfig = INSTANCE;
        if (Objects.equals(tokenConfig.answerList.get(str3), str2)) {
            return;
        }
        tokenConfig.answerList.put(str3, str2);
        if (Build.VERSION.SDK_INT >= 24) {
            tokenConfig.answerList.entrySet().removeIf(new Predicate() { // from class: io.github.lazyimmortal.sesame.data.TokenConfig$$ExternalSyntheticLambda1
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    return TokenConfig.lambda$saveAnswer$0(strValueOf, strValueOf2, (Map.Entry) obj);
                }
            });
        } else {
            Iterator<Map.Entry<String, String>> it = tokenConfig.answerList.entrySet().iterator();
            while (it.hasNext()) {
                Map.Entry<String, String> next = it.next();
                if (!next.getKey().startsWith(strValueOf) && !next.getKey().startsWith(strValueOf2)) {
                    it.remove();
                }
            }
        }
        save();
    }

    static /* synthetic */ boolean lambda$saveAnswer$0(String str, String str2, Map.Entry entry) {
        return (((String) entry.getKey()).startsWith(str) || ((String) entry.getKey()).startsWith(str2)) ? false : true;
    }

    public static Map<String, String> getRandomDishImage() {
        ArrayList arrayList = new ArrayList(INSTANCE.dishImageList);
        if (arrayList.isEmpty()) {
            return null;
        }
        Map<String, String> map = (Map) arrayList.get(RandomUtil.nextInt(0, arrayList.size() - 1));
        if (checkDishImage(map).booleanValue()) {
            return map;
        }
        return null;
    }

    public static void saveDishImage(Map<String, String> map) {
        if (checkDishImage(map).booleanValue()) {
            TokenConfig tokenConfig = INSTANCE;
            if (tokenConfig.dishImageList.contains(map)) {
                return;
            }
            tokenConfig.dishImageList.add(map);
            save();
        }
    }

    public static int getDishImageCount() {
        load();
        return INSTANCE.dishImageList.size();
    }

    public static Boolean clearDishImage() {
        INSTANCE.dishImageList.clear();
        return save();
    }

    public static Boolean checkDishImage(Map<String, String> map) {
        boolean z = false;
        if (map == null) {
            return false;
        }
        String str = map.get("BEFORE_MEALS");
        String str2 = map.get("AFTER_MEALS");
        if (!StringUtil.isEmpty(str) && !StringUtil.isEmpty(str2) && !Objects.equals(str, str2)) {
            z = true;
        }
        return Boolean.valueOf(z);
    }

    public static Boolean save() {
        Log.record("保存Token配置");
        return Boolean.valueOf(FileUtil.setTokenConfigFile(toSaveStr()));
    }

    public static synchronized TokenConfig load() {
        TokenConfig tokenConfig;
        File tokenConfigFile = FileUtil.getTokenConfigFile();
        try {
            if (tokenConfigFile.exists()) {
                String fromFile = FileUtil.readFromFile(tokenConfigFile);
                JsonUtil.copyMapper().readerForUpdating(INSTANCE).readValue(fromFile);
                String saveStr = toSaveStr();
                if (saveStr != null && !saveStr.equals(fromFile)) {
                    String str = TAG;
                    Log.i(str, "格式化Token配置");
                    Log.system(str, "格式化Token配置");
                    FileUtil.write2File(saveStr, tokenConfigFile);
                }
            } else {
                unload();
                String str2 = TAG;
                Log.i(str2, "初始Token配置");
                Log.system(str2, "初始Token配置");
                FileUtil.write2File(toSaveStr(), tokenConfigFile);
            }
        } catch (Throwable th) {
            String str3 = TAG;
            Log.printStackTrace(str3, th);
            Log.i(str3, "重置Token配置");
            Log.system(str3, "重置Token配置");
            try {
                unload();
                FileUtil.write2File(toSaveStr(), tokenConfigFile);
            } catch (Exception unused) {
                Log.printStackTrace(TAG, th);
            }
        }
        tokenConfig = INSTANCE;
        tokenConfig.setInit(true);
        return tokenConfig;
    }

    public static synchronized void unload() {
        try {
            JsonUtil.copyMapper().updateValue(INSTANCE, new TokenConfig());
        } catch (JsonMappingException e) {
            Log.printStackTrace(TAG, e);
        }
    }

    public static String toSaveStr() {
        return JsonUtil.toFormatJsonString(INSTANCE);
    }
}
