package io.github.lazyimmortal.sesame.ui.dto;

import java.io.Serializable;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class ModelDto implements Serializable {
    private String groupCode;
    private String modelCode;
    private List<ModelFieldShowDto> modelFields;
    private String modelName;

    protected boolean canEqual(Object obj) {
        return obj instanceof ModelDto;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ModelDto)) {
            return false;
        }
        ModelDto modelDto = (ModelDto) obj;
        if (!modelDto.canEqual(this)) {
            return false;
        }
        String modelCode = getModelCode();
        String modelCode2 = modelDto.getModelCode();
        if (modelCode != null ? !modelCode.equals(modelCode2) : modelCode2 != null) {
            return false;
        }
        String modelName = getModelName();
        String modelName2 = modelDto.getModelName();
        if (modelName != null ? !modelName.equals(modelName2) : modelName2 != null) {
            return false;
        }
        String groupCode = getGroupCode();
        String groupCode2 = modelDto.getGroupCode();
        if (groupCode != null ? !groupCode.equals(groupCode2) : groupCode2 != null) {
            return false;
        }
        List<ModelFieldShowDto> modelFields = getModelFields();
        List<ModelFieldShowDto> modelFields2 = modelDto.getModelFields();
        return modelFields != null ? modelFields.equals(modelFields2) : modelFields2 == null;
    }

    public int hashCode() {
        String modelCode = getModelCode();
        int iHashCode = modelCode == null ? 43 : modelCode.hashCode();
        String modelName = getModelName();
        int iHashCode2 = ((iHashCode + 59) * 59) + (modelName == null ? 43 : modelName.hashCode());
        String groupCode = getGroupCode();
        int iHashCode3 = (iHashCode2 * 59) + (groupCode == null ? 43 : groupCode.hashCode());
        List<ModelFieldShowDto> modelFields = getModelFields();
        return (iHashCode3 * 59) + (modelFields != null ? modelFields.hashCode() : 43);
    }

    public void setGroupCode(String str) {
        this.groupCode = str;
    }

    public void setModelCode(String str) {
        this.modelCode = str;
    }

    public void setModelFields(List<ModelFieldShowDto> list) {
        this.modelFields = list;
    }

    public void setModelName(String str) {
        this.modelName = str;
    }

    public String toString() {
        return "ModelDto(modelCode=" + getModelCode() + ", modelName=" + getModelName() + ", groupCode=" + getGroupCode() + ", modelFields=" + getModelFields() + ")";
    }

    public String getModelCode() {
        return this.modelCode;
    }

    public String getModelName() {
        return this.modelName;
    }

    public String getGroupCode() {
        return this.groupCode;
    }

    public List<ModelFieldShowDto> getModelFields() {
        return this.modelFields;
    }

    public ModelDto() {
    }

    public ModelDto(String str, String str2, String str3, List<ModelFieldShowDto> list) {
        this.modelCode = str;
        this.modelName = str2;
        this.groupCode = str3;
        this.modelFields = list;
    }
}
