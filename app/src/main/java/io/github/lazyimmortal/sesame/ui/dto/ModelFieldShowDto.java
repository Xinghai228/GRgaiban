package io.github.lazyimmortal.sesame.ui.dto;

import io.github.lazyimmortal.sesame.data.ModelField;
import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class ModelFieldShowDto implements Serializable {
    private String code;
    private String configValue;
    private String description;
    private Object expandKey;
    private String name;
    private String type;

    protected boolean canEqual(Object obj) {
        return obj instanceof ModelFieldShowDto;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ModelFieldShowDto)) {
            return false;
        }
        ModelFieldShowDto modelFieldShowDto = (ModelFieldShowDto) obj;
        if (!modelFieldShowDto.canEqual(this)) {
            return false;
        }
        String code = getCode();
        String code2 = modelFieldShowDto.getCode();
        if (code != null ? !code.equals(code2) : code2 != null) {
            return false;
        }
        String name = getName();
        String name2 = modelFieldShowDto.getName();
        if (name != null ? !name.equals(name2) : name2 != null) {
            return false;
        }
        String type = getType();
        String type2 = modelFieldShowDto.getType();
        if (type != null ? !type.equals(type2) : type2 != null) {
            return false;
        }
        Object expandKey = getExpandKey();
        Object expandKey2 = modelFieldShowDto.getExpandKey();
        if (expandKey != null ? !expandKey.equals(expandKey2) : expandKey2 != null) {
            return false;
        }
        String configValue = getConfigValue();
        String configValue2 = modelFieldShowDto.getConfigValue();
        if (configValue != null ? !configValue.equals(configValue2) : configValue2 != null) {
            return false;
        }
        String description = getDescription();
        String description2 = modelFieldShowDto.getDescription();
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
        String configValue = getConfigValue();
        int iHashCode5 = (iHashCode4 * 59) + (configValue == null ? 43 : configValue.hashCode());
        String description = getDescription();
        return (iHashCode5 * 59) + (description != null ? description.hashCode() : 43);
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

    public void setName(String str) {
        this.name = str;
    }

    public void setType(String str) {
        this.type = str;
    }

    public String toString() {
        return "ModelFieldShowDto(code=" + getCode() + ", name=" + getName() + ", type=" + getType() + ", expandKey=" + getExpandKey() + ", configValue=" + getConfigValue() + ", description=" + getDescription() + ")";
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

    public String getConfigValue() {
        return this.configValue;
    }

    public String getDescription() {
        return this.description;
    }

    public static ModelFieldShowDto toShowDto(ModelField<?> modelField) {
        ModelFieldShowDto modelFieldShowDto = new ModelFieldShowDto();
        modelFieldShowDto.setCode(modelField.getCode());
        modelFieldShowDto.setName(modelField.getName());
        modelFieldShowDto.setType(modelField.getType());
        modelFieldShowDto.setExpandKey(modelField.getExpandKey());
        modelFieldShowDto.setConfigValue(modelField.getConfigValue());
        modelFieldShowDto.setDescription(modelField.getDescription());
        return modelFieldShowDto;
    }
}
