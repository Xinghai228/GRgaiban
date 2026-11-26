package io.github.lazyimmortal.sesame.data;

import io.github.lazyimmortal.sesame.data.modelFieldExt.BooleanModelField;
import java.io.Serializable;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class ModelConfig implements Serializable {
    private static final long serialVersionUID = 1;
    private String code;
    private final ModelFields fields;
    private ModelGroup group;
    private String icon;
    private String name;

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ModelConfig)) {
            return false;
        }
        ModelConfig modelConfig = (ModelConfig) obj;
        String code = getCode();
        String code2 = modelConfig.getCode();
        if (code != null ? !code.equals(code2) : code2 != null) {
            return false;
        }
        String name = getName();
        String name2 = modelConfig.getName();
        if (name != null ? !name.equals(name2) : name2 != null) {
            return false;
        }
        ModelGroup group = getGroup();
        ModelGroup group2 = modelConfig.getGroup();
        if (group != null ? !group.equals(group2) : group2 != null) {
            return false;
        }
        String icon = getIcon();
        String icon2 = modelConfig.getIcon();
        if (icon != null ? !icon.equals(icon2) : icon2 != null) {
            return false;
        }
        ModelFields fields = getFields();
        ModelFields fields2 = modelConfig.getFields();
        return fields != null ? fields.equals(fields2) : fields2 == null;
    }

    public int hashCode() {
        String code = getCode();
        int iHashCode = code == null ? 43 : code.hashCode();
        String name = getName();
        int iHashCode2 = ((iHashCode + 59) * 59) + (name == null ? 43 : name.hashCode());
        ModelGroup group = getGroup();
        int iHashCode3 = (iHashCode2 * 59) + (group == null ? 43 : group.hashCode());
        String icon = getIcon();
        int iHashCode4 = (iHashCode3 * 59) + (icon == null ? 43 : icon.hashCode());
        ModelFields fields = getFields();
        return (iHashCode4 * 59) + (fields != null ? fields.hashCode() : 43);
    }

    public void setCode(String str) {
        this.code = str;
    }

    public void setGroup(ModelGroup modelGroup) {
        this.group = modelGroup;
    }

    public void setIcon(String str) {
        this.icon = str;
    }

    public void setName(String str) {
        this.name = str;
    }

    public String toString() {
        return "ModelConfig(code=" + getCode() + ", name=" + getName() + ", group=" + getGroup() + ", icon=" + getIcon() + ", fields=" + getFields() + ")";
    }

    public String getCode() {
        return this.code;
    }

    public String getName() {
        return this.name;
    }

    public ModelGroup getGroup() {
        return this.group;
    }

    public String getIcon() {
        return this.icon;
    }

    public ModelFields getFields() {
        return this.fields;
    }

    public ModelConfig() {
        this.fields = new ModelFields();
    }

    public ModelConfig(Model model) {
        this();
        this.code = model.getClass().getSimpleName();
        this.name = model.getName();
        this.group = model.getGroup();
        BooleanModelField enableField = model.getEnableField();
        this.fields.put(enableField.getCode(), enableField);
        ModelFields fields = model.getFields();
        if (fields != null) {
            Iterator<Map.Entry<String, ModelField<?>>> it = fields.entrySet().iterator();
            while (it.hasNext()) {
                ModelField<?> value = it.next().getValue();
                if (value != null) {
                    this.fields.put(value.getCode(), value);
                }
            }
        }
    }

    public Boolean hasModelField(String str) {
        return Boolean.valueOf(this.fields.containsKey(str));
    }

    public ModelField<?> getModelField(String str) {
        return this.fields.get(str);
    }

    public <T extends ModelField<?>> T getModelFieldExt(String str) {
        return (T) this.fields.get(str);
    }
}
