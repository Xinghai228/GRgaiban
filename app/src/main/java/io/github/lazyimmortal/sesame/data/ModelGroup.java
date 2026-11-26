package io.github.lazyimmortal.sesame.data;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public enum ModelGroup {
    BASE("BASE", "基础", "svg/group/base.svg"),
    FOREST("FOREST", "森林", "svg/group/forest.svg"),
    FARM("FARM", "庄园", "svg/group/farm.svg"),
    STALL("STALL", "新村", "svg/group/stall.svg"),
    ORCHARD("ORCHARD", "农场", "svg/group/orchard.svg"),
    SPORTS("SPORTS", "运动", "svg/group/sports.svg"),
    MEMBER("MEMBER", "会员", "svg/group/member.svg"),
    OTHER("OTHER", "其他", "svg/group/other.svg");

    private static final Map<String, ModelGroup> MAP = new HashMap();
    final String code;
    final String icon;
    final String name;

    static {
        for (ModelGroup modelGroup : values()) {
            MAP.put(modelGroup.code, modelGroup);
        }
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

    ModelGroup(String str, String str2, String str3) {
        this.code = str;
        this.name = str2;
        this.icon = str3;
    }

    public static ModelGroup getByCode(String str) {
        return MAP.get(str);
    }

    public static String getName(String str) {
        ModelGroup byCode = getByCode(str);
        if (byCode == null) {
            return null;
        }
        return byCode.name;
    }
}
