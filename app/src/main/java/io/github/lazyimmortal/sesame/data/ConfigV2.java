package io.github.lazyimmortal.sesame.data;

import com.fasterxml.jackson.annotation.JsonIgnore;
import io.github.lazyimmortal.sesame.data.task.ModelTask;
import io.github.lazyimmortal.sesame.entity.KVNode;
import io.github.lazyimmortal.sesame.entity.UserEntity;
import io.github.lazyimmortal.sesame.util.FileUtil;
import io.github.lazyimmortal.sesame.util.JsonUtil;
import io.github.lazyimmortal.sesame.util.Log;
import io.github.lazyimmortal.sesame.util.StringUtil;
import io.github.lazyimmortal.sesame.util.idMap.UserIdMap;
import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes.dex */
public class ConfigV2 {
    private static final String TAG = "ConfigV2";

    @JsonIgnore
    private static String lastSyncedText;

    @JsonIgnore
    private static String loadedUserId;

    @JsonIgnore
    private boolean init;
    private final Map<String, ModelFields> modelFieldsMap = new ConcurrentHashMap();
    public static final ConfigV2 INSTANCE = new ConfigV2();

    @JsonIgnore
    private static final Map<String, String> valueBaseline = new ConcurrentHashMap();

    protected boolean canEqual(Object obj) {
        return obj instanceof ConfigV2;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ConfigV2)) {
            return false;
        }
        ConfigV2 configV2 = (ConfigV2) obj;
        if (!configV2.canEqual(this) || isInit() != configV2.isInit()) {
            return false;
        }
        Map<String, ModelFields> modelFieldsMap = getModelFieldsMap();
        Map<String, ModelFields> modelFieldsMap2 = configV2.getModelFieldsMap();
        return modelFieldsMap != null ? modelFieldsMap.equals(modelFieldsMap2) : modelFieldsMap2 == null;
    }

    public int hashCode() {
        int i = isInit() ? 79 : 97;
        Map<String, ModelFields> modelFieldsMap = getModelFieldsMap();
        return ((i + 59) * 59) + (modelFieldsMap == null ? 43 : modelFieldsMap.hashCode());
    }

    @JsonIgnore
    public void setInit(boolean z) {
        this.init = z;
    }

    public String toString() {
        return "ConfigV2(init=" + isInit() + ", modelFieldsMap=" + getModelFieldsMap() + ")";
    }

    public boolean isInit() {
        return this.init;
    }

    public Map<String, ModelFields> getModelFieldsMap() {
        return this.modelFieldsMap;
    }

    public void setModelFieldsMap(Map<String, ModelFields> map) {
        this.modelFieldsMap.clear();
        Map<String, ModelConfig> modelConfigMap = ModelTask.getModelConfigMap();
        if (map == null) {
            map = new HashMap<>();
        }
        for (ModelConfig modelConfig : modelConfigMap.values()) {
            String code = modelConfig.getCode();
            ModelFields modelFields = new ModelFields();
            ModelFields fields = modelConfig.getFields();
            ModelFields modelFields2 = map.get(code);
            if (modelFields2 != null) {
                for (ModelField<?> modelField : fields.values()) {
                    ModelField<?> modelField2 = modelFields2.get(modelField.getCode());
                    if (modelField2 != null) {
                        try {
                            Object value = modelField2.getValue();
                            if (value != null) {
                                modelField.setObjectValue(value);
                            } else {
                                modelField.reset();
                            }
                        } catch (Exception e) {
                            Log.printStackTrace(e);
                        }
                    } else {
                        modelField.reset();
                    }
                    modelFields.addField(modelField);
                }
            } else {
                for (ModelField<?> modelField3 : fields.values()) {
                    modelField3.reset();
                    modelFields.addField(modelField3);
                }
            }
            this.modelFieldsMap.put(code, modelFields);
        }
    }

    public Boolean hasModelFields(String str) {
        return Boolean.valueOf(this.modelFieldsMap.containsKey(str));
    }

    public Boolean hasModelField(String str, String str2) {
        ModelFields modelFields = this.modelFieldsMap.get(str);
        if (modelFields == null) {
            return false;
        }
        return Boolean.valueOf(modelFields.containsKey(str2));
    }

    public static Boolean isModify(String str) {
        File configV2File;
        String saveStr;
        if (!valueBaseline.isEmpty()) {
            return Boolean.valueOf(!collectChangedFields().isEmpty());
        }
        if (StringUtil.isEmpty(str)) {
            configV2File = FileUtil.getDefaultConfigV2File();
        } else {
            configV2File = FileUtil.getConfigV2File(str);
        }
        String fromFile = configV2File.exists() ? FileUtil.readFromFile(configV2File) : null;
        if (fromFile != null && (saveStr = INSTANCE.toSaveStr()) != null && JsonUtil.isRewriteLossless(saveStr, fromFile)) {
            return false;
        }
        return true;
    }

    public static synchronized Boolean save(String str, Boolean bool) {
        boolean configV2File;
        String strMergeKeepingSourceKeys;
        String str2 = StringUtil.isEmpty(str) ? "" : str;
        String str3 = loadedUserId;
        if (str3 != null && !Objects.equals(str2, str3)) {
            StringBuilder sb = new StringBuilder("配置保存跳过#内存配置属于[");
            sb.append(loadedUserId.isEmpty() ? "默认" : loadedUserId);
            sb.append("]#拒绝写入[");
            if (str2.isEmpty()) {
                str2 = "默认";
            }
            sb.append(str2);
            sb.append("]");
            Log.record(sb.toString());
            return false;
        }
        if (!valueBaseline.isEmpty() && collectChangedFields().isEmpty()) {
            return true;
        }
        if (mergeDiskChanges(str2)) {
            return true;
        }
        String saveStr = INSTANCE.toSaveStr();
        File defaultConfigV2File = StringUtil.isEmpty(str) ? FileUtil.getDefaultConfigV2File() : FileUtil.getConfigV2File(str);
        if (defaultConfigV2File.exists() && (strMergeKeepingSourceKeys = JsonUtil.mergeKeepingSourceKeys(FileUtil.readFromFile(defaultConfigV2File), saveStr)) != null) {
            saveStr = strMergeKeepingSourceKeys;
        }
        if (StringUtil.isEmpty(str)) {
            str = "默认";
            configV2File = FileUtil.setDefaultConfigV2File(saveStr);
        } else {
            configV2File = FileUtil.setConfigV2File(str, saveStr);
        }
        if (configV2File) {
            FileUtil.backupConfigV2WithRolling(str);
            lastSyncedText = saveStr;
            captureBaseline();
        }
        Log.record("保存配置: " + str);
        return Boolean.valueOf(configV2File);
    }

    /* JADX WARN: Code duplicated, block: B:49:0x0177  */
    /* JADX WARN: Code duplicated, block: B:55:0x0188  */
    public static synchronized ConfigV2 load(String str) {
        File configV2File;
        String str2;
        ConfigV2 configV2;
        String fromFile;
        String fromFile2;
        String strMergeKeepingSourceKeys;
        String str3 = str;
        synchronized (ConfigV2.class) {
            String str4 = TAG;
            Log.i(str4, "开始加载配置");
            String showName = "";
            try {
                if (StringUtil.isEmpty(str)) {
                    configV2File = FileUtil.getDefaultConfigV2File();
                    showName = "默认";
                } else {
                    configV2File = FileUtil.getConfigV2File(str);
                    try {
                        UserEntity userEntity = UserIdMap.get(str);
                        showName = userEntity == null ? str3 : userEntity.getShowName();
                    } catch (Throwable th) {
                        th = th;
                        String str5 = TAG;
                        Log.printStackTrace(str5, th);
                        if (configV2File != null && restoreFromBackup(str3, configV2File, "")) {
                            Log.record("配置损坏恢复♻️已从备份恢复: ");
                        } else {
                            Log.i(str5, "重置配置: ");
                            Log.system(str5, "重置配置: ");
                            ConfigV2 configV3 = INSTANCE;
                            str2 = null;
                            configV3.setModelFieldsMap(null);
                            unload();
                            if (configV2File != null) {
                                FileUtil.write2File(configV3.toSaveStr(), configV2File);
                            }
                        }
                        configV2 = INSTANCE;
                        configV2.setInit(true);
                        if (configV2File != null) {
                            Log.i(TAG, "补充新增字段并格式化配置: " + showName);
                            FileUtil.write2File(strMergeKeepingSourceKeys, configV2File);
                        }
                        if (StringUtil.isEmpty(str)) {
                            str3 = "";
                        }
                        loadedUserId = str3;
                        if (configV2File == null) {
                            fromFile = str2;
                        } else {
                            fromFile = str2;
                        }
                        lastSyncedText = fromFile;
                        captureBaseline();
                        Log.i(TAG, "加载配置结束");
                        return configV2;
                    }
                }
                Log.record("加载配置: " + showName);
                if (configV2File.exists()) {
                    JsonUtil.copyMapper().readerForUpdating(INSTANCE).readValue(FileUtil.readFromFile(configV2File));
                } else if (restoreFromBackup(str3, configV2File, showName)) {
                    Log.record("配置文件缺失恢复♻️已从备份恢复: " + showName);
                } else {
                    File defaultConfigV2File = FileUtil.getDefaultConfigV2File();
                    if (defaultConfigV2File.exists()) {
                        String fromFile3 = FileUtil.readFromFile(defaultConfigV2File);
                        JsonUtil.copyMapper().readerForUpdating(INSTANCE).readValue(fromFile3);
                        Log.i(str4, "复制新配置: " + showName);
                        Log.system(str4, "复制新配置: " + showName);
                        FileUtil.write2File(fromFile3, configV2File);
                    } else {
                        ConfigV2 configV4 = INSTANCE;
                        configV4.setModelFieldsMap(null);
                        unload();
                        Log.i(str4, "初始新配置: " + showName);
                        Log.system(str4, "初始新配置: " + showName);
                        FileUtil.write2File(configV4.toSaveStr(), configV2File);
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                configV2File = null;
            }
            str2 = null;
            configV2 = INSTANCE;
            configV2.setInit(true);
            if (configV2File != null && configV2File.exists() && (strMergeKeepingSourceKeys = JsonUtil.mergeKeepingSourceKeys((fromFile2 = FileUtil.readFromFile(configV2File)), configV2.toSaveStr())) != null && !JsonUtil.isSameData(fromFile2, strMergeKeepingSourceKeys)) {
                Log.i(TAG, "补充新增字段并格式化配置: " + showName);
                FileUtil.write2File(strMergeKeepingSourceKeys, configV2File);
            }
            if (StringUtil.isEmpty(str)) {
                str3 = "";
            }
            loadedUserId = str3;
            if (configV2File == null && configV2File.exists()) {
                fromFile = FileUtil.readFromFile(configV2File);
            } else {
                fromFile = str2;
            }
            lastSyncedText = fromFile;
            captureBaseline();
            Log.i(TAG, "加载配置结束");
        }
        return configV2;
    }

    public static synchronized void unload() {
        Iterator<ModelFields> it = INSTANCE.modelFieldsMap.values().iterator();
        while (it.hasNext()) {
            for (ModelField<?> modelField : it.next().values()) {
                if (modelField != null) {
                    modelField.reset();
                }
            }
        }
    }

    private static boolean restoreFromBackup(String str, File file, String str2) {
        for (int i = 0; i < 3; i++) {
            try {
                File fileFindLatestBackupFile = FileUtil.findLatestBackupFile(str);
                if (fileFindLatestBackupFile != null && fileFindLatestBackupFile.exists()) {
                    String fromFile = FileUtil.readFromFile(fileFindLatestBackupFile);
                    if (StringUtil.isEmpty(fromFile)) {
                        Log.i(TAG, "备份内容为空，跳过: " + fileFindLatestBackupFile.getName());
                        return false;
                    }
                    try {
                        JsonUtil.copyMapper().readerForUpdating(INSTANCE).readValue(fromFile);
                        boolean zWrite2File = FileUtil.write2File(fromFile, file);
                        Log.i(TAG, "备份恢复成功: " + str2 + "#备份文件: " + fileFindLatestBackupFile.getName());
                        return zWrite2File;
                    } catch (Throwable th) {
                        String str3 = TAG;
                        Log.printStackTrace(str3, th);
                        Log.i(str3, "备份损坏，尝试上一份: " + fileFindLatestBackupFile.getName());
                        fileFindLatestBackupFile.delete();
                    }
                }
                return false;
            } catch (Throwable th2) {
                Log.printStackTrace(TAG, th2);
            }
        }
        return false;
    }

    public String toSaveStr() {
        return JsonUtil.toFormatJsonString(this);
    }

    private static String stableValueText(Object obj) {
        if (obj instanceof List) {
            return String.valueOf(obj);
        }
        if (obj instanceof Collection) {
            ArrayList arrayList = new ArrayList();
            Iterator it = ((Collection) obj).iterator();
            while (it.hasNext()) {
                arrayList.add(String.valueOf(it.next()));
            }
            Collections.sort(arrayList);
            return arrayList.toString();
        }
        if (obj instanceof Map) {
            ArrayList arrayList2 = new ArrayList();
            for (Map.Entry entry : ((Map) obj).entrySet()) {
                arrayList2.add(entry.getKey() + "=" + entry.getValue());
            }
            Collections.sort(arrayList2);
            return arrayList2.toString();
        }
        return String.valueOf(obj);
    }

    private static void captureBaseline() {
        HashMap map = new HashMap();
        for (Map.Entry<String, ModelFields> entry : INSTANCE.modelFieldsMap.entrySet()) {
            for (ModelField<?> modelField : entry.getValue().values()) {
                if (modelField != null && modelField.getCode() != null) {
                    map.put(fieldKey(entry.getKey(), modelField.getCode()), stableValueText(modelField.getValue()));
                }
            }
        }
        Map<String, String> map2 = valueBaseline;
        map2.clear();
        map2.putAll(map);
    }

    private static Map<String, Object> collectChangedFields() {
        String strFieldKey;
        String str;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry<String, ModelFields> entry : INSTANCE.modelFieldsMap.entrySet()) {
            for (ModelField<?> modelField : entry.getValue().values()) {
                if (modelField != null && modelField.getCode() != null && (str = valueBaseline.get((strFieldKey = fieldKey(entry.getKey(), modelField.getCode())))) != null && !str.equals(stableValueText(modelField.getValue()))) {
                    linkedHashMap.put(strFieldKey, copyFieldValue(modelField.getValue()));
                }
            }
        }
        return linkedHashMap;
    }

    private static boolean mergeDiskChanges(String str) {
        String fromFile;
        try {
            File defaultConfigV2File = StringUtil.isEmpty(str) ? FileUtil.getDefaultConfigV2File() : FileUtil.getConfigV2File(str);
            if (defaultConfigV2File.exists() && lastSyncedText != null && (fromFile = FileUtil.readFromFile(defaultConfigV2File)) != null && !fromFile.equals(lastSyncedText)) {
                Map<String, Object> mapCollectChangedFields = collectChangedFields();
                JsonUtil.copyMapper().readerForUpdating(INSTANCE).readValue(fromFile);
                if (mapCollectChangedFields.isEmpty()) {
                    lastSyncedText = fromFile;
                    captureBaseline();
                    Log.record("配置已被其他进程更新，本进程无改动，已重载并跳过写入");
                    return true;
                }
                for (Map.Entry<String, Object> entry : mapCollectChangedFields.entrySet()) {
                    int iIndexOf = entry.getKey().indexOf(124);
                    ModelFields modelFields = INSTANCE.modelFieldsMap.get(entry.getKey().substring(0, iIndexOf));
                    ModelField<?> modelField = modelFields == null ? null : modelFields.get(entry.getKey().substring(iIndexOf + 1));
                    if (modelField != null) {
                        modelField.setObjectValue(entry.getValue());
                    }
                }
                Log.record("配置已被其他进程更新，已合并本进程改动后再保存");
                return false;
            }
            return false;
        } catch (Throwable th) {
            Log.printStackTrace(TAG, th);
        }
    }

    private static String fieldKey(String str, String str2) {
        return str + "|" + str2;
    }

    private static Object copyFieldValue(Object obj) {
        if (obj instanceof Set) {
            return new LinkedHashSet((Set) obj);
        }
        if (obj instanceof Map) {
            return new LinkedHashMap((Map) obj);
        }
        if (obj instanceof List) {
            return new ArrayList((List) obj);
        }
        if (!(obj instanceof KVNode)) {
            return obj;
        }
        KVNode kVNode = (KVNode) obj;
        return new KVNode(kVNode.getKey(), kVNode.getValue());
    }
}
