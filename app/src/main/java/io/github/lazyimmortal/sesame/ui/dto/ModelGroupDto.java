package io.github.lazyimmortal.sesame.ui.dto;

import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class ModelGroupDto implements Serializable {
    private String code;
    private String icon;
    private String name;

    protected boolean canEqual(Object obj) {
        return obj instanceof ModelGroupDto;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ModelGroupDto)) {
            return false;
        }
        ModelGroupDto modelGroupDto = (ModelGroupDto) obj;
        if (!modelGroupDto.canEqual(this)) {
            return false;
        }
        String code = getCode();
        String code2 = modelGroupDto.getCode();
        if (code != null ? !code.equals(code2) : code2 != null) {
            return false;
        }
        String name = getName();
        String name2 = modelGroupDto.getName();
        if (name != null ? !name.equals(name2) : name2 != null) {
            return false;
        }
        String icon = getIcon();
        String icon2 = modelGroupDto.getIcon();
        return icon != null ? icon.equals(icon2) : icon2 == null;
    }

    public int hashCode() {
        String code = getCode();
        int iHashCode = code == null ? 43 : code.hashCode();
        String name = getName();
        int iHashCode2 = ((iHashCode + 59) * 59) + (name == null ? 43 : name.hashCode());
        String icon = getIcon();
        return (iHashCode2 * 59) + (icon != null ? icon.hashCode() : 43);
    }

    public void setCode(String str) {
        this.code = str;
    }

    public void setIcon(String str) {
        this.icon = str;
    }

    public void setName(String str) {
        this.name = str;
    }

    public String toString() {
        return "ModelGroupDto(code=" + getCode() + ", name=" + getName() + ", icon=" + getIcon() + ")";
    }

    public String getCode() {
        return this.code;
    }

    public String getName() {
        return this.name;
    }

    public String getIcon() {
        return this.icon;
    }

    public ModelGroupDto() {
    }

    public ModelGroupDto(String str, String str2, String str3) {
        this.code = str;
        this.name = str2;
        this.icon = str3;
    }
}
