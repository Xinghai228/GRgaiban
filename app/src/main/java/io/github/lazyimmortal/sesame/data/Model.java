package io.github.lazyimmortal.sesame.data;

import io.github.lazyimmortal.sesame.data.modelFieldExt.BooleanModelField;
import io.github.lazyimmortal.sesame.data.task.ModelTask;
import io.github.lazyimmortal.sesame.model.base.ModelOrder;
import io.github.lazyimmortal.sesame.util.Log;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes.dex */
public abstract class Model {
    private static final Map<ModelGroup, Map<String, ModelConfig>> groupModelConfigMap;
    private static final Model[] modelArray;
    private static final List<Class<? extends Model>> modelClazzList;
    private static final Map<String, ModelConfig> modelConfigMap;
    private static final List<Model> modelList;
    private static final Map<Class<? extends Model>, Model> modelMap;
    private static final Map<String, ModelConfig> readOnlyModelConfigMap;
    private static final List<Model> readOnlyModelList;
    private final BooleanModelField enableField = new BooleanModelField("enable", getEnableFieldName(), false);

    public void boot(ClassLoader classLoader) {
    }

    public void destroy() {
    }

    public abstract ModelFields getFields();

    public abstract ModelGroup getGroup();

    public abstract String getName();

    public void prepare() {
    }

    static {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        modelConfigMap = linkedHashMap;
        readOnlyModelConfigMap = Collections.unmodifiableMap(linkedHashMap);
        groupModelConfigMap = new LinkedHashMap();
        modelMap = new ConcurrentHashMap();
        List<Class<? extends Model>> clazzList = ModelOrder.getClazzList();
        modelClazzList = clazzList;
        Model[] modelArr = new Model[clazzList.size()];
        modelArray = modelArr;
        LinkedList linkedList = new LinkedList(Arrays.asList(modelArr));
        modelList = linkedList;
        readOnlyModelList = Collections.unmodifiableList(linkedList);
    }

    public static Model[] getModelArray() {
        return modelArray;
    }

    public final BooleanModelField getEnableField() {
        return this.enableField;
    }

    public String getEnableFieldName() {
        return "开启" + getName();
    }

    public final Boolean isEnable() {
        return this.enableField.getValue();
    }

    public ModelType getType() {
        return ModelType.NORMAL;
    }

    public static Map<String, ModelConfig> getModelConfigMap() {
        return readOnlyModelConfigMap;
    }

    public static Set<ModelGroup> getGroupModelConfigGroupSet() {
        return groupModelConfigMap.keySet();
    }

    public static List<Map<String, ModelConfig>> getGroupModelConfigMapList() {
        ArrayList arrayList = new ArrayList();
        Iterator<Map<String, ModelConfig>> it = groupModelConfigMap.values().iterator();
        while (it.hasNext()) {
            arrayList.add(Collections.unmodifiableMap(it.next()));
        }
        return arrayList;
    }

    public static Map<String, ModelConfig> getGroupModelConfig(ModelGroup modelGroup) {
        Map<String, ModelConfig> map = groupModelConfigMap.get(modelGroup);
        if (map == null) {
            return Collections.emptyMap();
        }
        return Collections.unmodifiableMap(map);
    }

    public static Boolean hasModel(Class<? extends Model> cls) {
        return Boolean.valueOf(modelMap.containsKey(cls));
    }

    public static <T extends Model> T getModel(Class<T> cls) {
        return (T) modelMap.get(cls);
    }

    public static List<Model> getModelList() {
        return readOnlyModelList;
    }

    public static synchronized void initAllModel() {
        destroyAllModel();
        int size = modelClazzList.size();
        for (int i = 0; i < size; i++) {
            Class<? extends Model> cls = modelClazzList.get(i);
            try {
                Model modelNewInstance = cls.getConstructor(null).newInstance(null);
                ModelConfig modelConfig = new ModelConfig(modelNewInstance);
                modelArray[i] = modelNewInstance;
                modelMap.put(cls, modelNewInstance);
                String code = modelConfig.getCode();
                modelConfigMap.put(code, modelConfig);
                ModelGroup group = modelConfig.getGroup();
                Map<ModelGroup, Map<String, ModelConfig>> map = groupModelConfigMap;
                Map<String, ModelConfig> linkedHashMap = map.get(group);
                if (linkedHashMap == null) {
                    linkedHashMap = new LinkedHashMap<>();
                    map.put(group, linkedHashMap);
                }
                linkedHashMap.put(code, modelConfig);
            } catch (ReflectiveOperationException e) {
                Log.printStackTrace(e);
            }
        }
    }

    public static synchronized void bootAllModel(ClassLoader classLoader) {
        for (Model model : modelArray) {
            try {
                model.prepare();
            } catch (Exception e) {
                Log.printStackTrace(e);
            }
            try {
                if (model.getEnableField().getValue().booleanValue()) {
                    model.boot(classLoader);
                }
            } catch (Exception e2) {
                Log.printStackTrace(e2);
            }
        }
    }

    public static synchronized void destroyAllModel() {
        int length = modelArray.length;
        for (int i = 0; i < length; i++) {
            Model model = modelArray[i];
            if (model != null) {
                try {
                    if (ModelType.TASK == model.getType()) {
                        ((ModelTask) model).stopTask();
                    }
                    model.destroy();
                } catch (Exception e) {
                    Log.printStackTrace(e);
                }
                modelArray[i] = null;
            }
            modelMap.clear();
            modelConfigMap.clear();
        }
    }
}
