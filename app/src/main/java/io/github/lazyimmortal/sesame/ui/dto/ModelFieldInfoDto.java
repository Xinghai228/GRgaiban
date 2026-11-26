package io.github.lazyimmortal.sesame.ui.dto;

import io.github.lazyimmortal.sesame.data.ModelField;
import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class ModelFieldInfoDto implements Serializable {
    private String code;
    private String configValue;
    private String description;
    private Object expandKey;
    private Object expandValue;
    private String name;
    private String type;

    protected boolean canEqual(Object obj) {
        return obj instanceof ModelFieldInfoDto;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ModelFieldInfoDto)) {
            return false;
        }
        ModelFieldInfoDto modelFieldInfoDto = (ModelFieldInfoDto) obj;
        if (!modelFieldInfoDto.canEqual(this)) {
            return false;
        }
        String code = getCode();
        String code2 = modelFieldInfoDto.getCode();
        if (code != null ? !code.equals(code2) : code2 != null) {
            return false;
        }
        String name = getName();
        String name2 = modelFieldInfoDto.getName();
        if (name != null ? !name.equals(name2) : name2 != null) {
            return false;
        }
        String type = getType();
        String type2 = modelFieldInfoDto.getType();
        if (type != null ? !type.equals(type2) : type2 != null) {
            return false;
        }
        Object expandKey = getExpandKey();
        Object expandKey2 = modelFieldInfoDto.getExpandKey();
        if (expandKey != null ? !expandKey.equals(expandKey2) : expandKey2 != null) {
            return false;
        }
        Object expandValue = getExpandValue();
        Object expandValue2 = modelFieldInfoDto.getExpandValue();
        if (expandValue != null ? !expandValue.equals(expandValue2) : expandValue2 != null) {
            return false;
        }
        String configValue = getConfigValue();
        String configValue2 = modelFieldInfoDto.getConfigValue();
        if (configValue != null ? !configValue.equals(configValue2) : configValue2 != null) {
            return false;
        }
        String description = getDescription();
        String description2 = modelFieldInfoDto.getDescription();
        return description != null ? description.equals(description2) : description2 == null;
    }

    public int hashCode() {
        String code = getCode();
        int iHashCode = code == null ? 43 : code.hashCode();
        String name = getName();
        int iHashCode2 = ((iHashCode + 59) * 59) + (name == null ? 43 : name.hashCode());
        String type = getType();
        int iHashCode3 = (iHashCode2 * 59) + (type == null ? 43 : type.hashCode());
        Object expandKey = getExpandKey();
        int iHashCode4 = (iHashCode3 * 59) + (expandKey == null ? 43 : expandKey.hashCode());
        Object expandValue = getExpandValue();
        int iHashCode5 = (iHashCode4 * 59) + (expandValue == null ? 43 : expandValue.hashCode());
        String configValue = getConfigValue();
        int iHashCode6 = (iHashCode5 * 59) + (configValue == null ? 43 : configValue.hashCode());
        String description = getDescription();
        return (iHashCode6 * 59) + (description != null ? description.hashCode() : 43);
    }

    public void setCode(String str) {
        this.code = str;
    }

    public void setConfigValue(String str) {
        this.configValue = str;
    }

    public void setDescription(String str) {
        this.description = str;
    }

    public void setExpandKey(Object obj) {
        this.expandKey = obj;
    }

    public void setExpandValue(Object obj) {
        this.expandValue = obj;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setType(String str) {
        this.type = str;
    }

    public String toString() {
        return "ModelFieldInfoDto(code=" + getCode() + ", name=" + getName() + ", type=" + getType() + ", expandKey=" + getExpandKey() + ", expandValue=" + getExpandValue() + ", configValue=" + getConfigValue() + ", description=" + getDescription() + ")";
    }

    public String getCode() {
        return this.code;
    }

    public String getName() {
        return this.name;
    }

    public String getType() {
        return this.type;
    }

    public Object getExpandKey() {
        return this.expandKey;
    }

    public Object getExpandValue() {
        return this.expandValue;
    }

    public String getConfigValue() {
        return this.configValue;
    }

    public String getDescription() {
        return this.description;
    }

    public static ModelFieldInfoDto toInfoDto(ModelField<?> modelField) {
        ModelFieldInfoDto modelFieldInfoDto = new ModelFieldInfoDto();
        modelFieldInfoDto.setCode(modelField.getCode());
        modelFieldInfoDto.setName(modelField.getName());
        modelFieldInfoDto.setType(modelField.getType());
        modelFieldInfoDto.setExpandKey(modelField.getExpandKey());
        modelFieldInfoDto.setExpandValue(modelField.getExpandValue());
        modelFieldInfoDto.setConfigValue(modelField.getConfigValue());
        modelFieldInfoDto.setDescription(modelField.getDescription());
        return modelFieldInfoDto;
    }
}
