package io.github.lazyimmortal.sesame.util.idMap;

import com.fasterxml.jackson.core.type.TypeReference;
import io.github.lazyimmortal.sesame.util.FileUtil;
import io.github.lazyimmortal.sesame.util.JsonUtil;
import io.github.lazyimmortal.sesame.util.Log;
import io.github.lazyimmortal.sesame.util.TaskIconUtil;
import java.util.Collections;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes.dex */
public class AntFarmDoFarmTaskListMap {
    private static final Map<String, String> idMap;
    private static final Map<String, String> readOnlyIdMap;

    static {
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        idMap = concurrentHashMap;
        readOnlyIdMap = Collections.unmodifiableMap(concurrentHashMap);
    }

    public static Map<String, String> getMap() {
        return readOnlyIdMap;
    }

    public static String get(String str) {
        return idMap.get(str);
    }

    public static synchronized void add(String str, String str2) {
        if (!TaskIconUtil.isIconUrl(str2)) {
            str2 = idMap.get(str);
            if (!TaskIconUtil.isIconUrl(str2)) {
                str2 = "";
            }
        }
        idMap.put(str, str2);
    }

    public static synchronized void remove(String str) {
        idMap.remove(str);
    }

    public static synchronized void load() {
        idMap.clear();
        try {
            String fromFile = FileUtil.readFromFile(FileUtil.getAntFarmDoFarmTaskListMapFile());
            if (!fromFile.isEmpty()) {
                for (Map.Entry entry : ((Map) JsonUtil.parseObject(fromFile, (TypeReference) new TypeReference<Map<String, String>>() { // from class: io.github.lazyimmortal.sesame.util.idMap.AntFarmDoFarmTaskListMap.1
                })).entrySet()) {
                    String str = (String) entry.getValue();
                    Map<String, String> map = idMap;
                    String str2 = (String) entry.getKey();
                    if (!TaskIconUtil.isIconUrl(str)) {
                        str = "";
                    }
                    map.put(str2, str);
                }
            }
        } catch (Exception e) {
            Log.printStackTrace(e);
        }
    }

    public static synchronized boolean save() {
        boolean zWrite2File;
        Map<String, String> map = idMap;
        zWrite2File = FileUtil.write2File(JsonUtil.toJsonString(map), FileUtil.getAntFarmDoFarmTaskListMapFile());
        TaskIconUtil.predownload(map.values());
        return zWrite2File;
    }

    public static synchronized void clear() {
        idMap.clear();
    }
}
