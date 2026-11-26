package io.github.lazyimmortal.sesame.util.idMap;

import com.fasterxml.jackson.core.type.TypeReference;
import io.github.lazyimmortal.sesame.util.FileUtil;
import io.github.lazyimmortal.sesame.util.JsonUtil;
import io.github.lazyimmortal.sesame.util.Log;
import java.util.Collections;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes.dex */
public class CooperationIdMap {
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

    public static synchronized void add(String str, String str2) {
        idMap.put(str, str2);
    }

    public static synchronized void remove(String str) {
        idMap.remove(str);
    }

    public static synchronized void load(String str) {
        Map<String, String> map = idMap;
        map.clear();
        try {
            String fromFile = FileUtil.readFromFile(FileUtil.getCooperationIdMapFile(str));
            if (!fromFile.isEmpty()) {
                map.putAll((Map) JsonUtil.parseObject(fromFile, (TypeReference) new TypeReference<Map<String, String>>() { // from class: io.github.lazyimmortal.sesame.util.idMap.CooperationIdMap.1
                }));
            }
        } catch (Exception e) {
            Log.printStackTrace(e);
        }
    }

    public static synchronized boolean save(String str) {
        return FileUtil.write2File(JsonUtil.toJsonString(idMap), FileUtil.getCooperationIdMapFile(str));
    }
}
