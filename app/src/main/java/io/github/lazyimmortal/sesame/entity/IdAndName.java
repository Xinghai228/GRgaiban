package io.github.lazyimmortal.sesame.entity;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonProperty;
import io.github.lazyimmortal.sesame.util.HanziToPinyin;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public abstract class IdAndName implements Comparable<IdAndName> {
    public String icon;
    public String id;
    public String name;
    private ArrayList<String> pinyin;

    public String getName() {
        return this.name;
    }

    public String getId() {
        return this.id;
    }

    public String getIcon() {
        return this.icon;
    }

    @JsonIgnore
    public ArrayList<String> getPinyin() {
        ArrayList<String> arrayList = this.pinyin;
        if (arrayList != null) {
            return arrayList;
        }
        ArrayList<HanziToPinyin.Token> arrayList2 = HanziToPinyin.getInstance().get(this.name);
        this.pinyin = new ArrayList<>(arrayList2.size());
        Iterator<HanziToPinyin.Token> it = arrayList2.iterator();
        while (it.hasNext()) {
            this.pinyin.add(it.next().target);
        }
        return this.pinyin;
    }

    @JsonProperty("iconText")
    public String getIconText() {
        String str = this.icon;
        if (str != null && !str.isEmpty()) {
            return "";
        }
        return iconTextOf(this.name);
    }

    public static String iconTextOf(String str) {
        if (str == null || str.isEmpty()) {
            return "";
        }
        for (int i = 0; i < str.length(); i++) {
            char cCharAt = str.charAt(i);
            if (Character.isLetterOrDigit(cCharAt)) {
                return cCharAt < 128 ? String.valueOf(Character.toUpperCase(cCharAt)) : String.valueOf(cCharAt);
            }
        }
        return String.valueOf(str.charAt(0));
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // java.lang.Comparable
    public int compareTo(IdAndName idAndName) {
        ArrayList<String> pinyin = getPinyin();
        ArrayList<String> pinyin2 = idAndName.getPinyin();
        for (int i = 0; i < pinyin.size() && i < pinyin2.size(); i++) {
            if (pinyin.get(i).compareTo(pinyin2.get(i)) != 0) {
                return pinyin.get(i).compareTo(pinyin2.get(i));
            }
        }
        return pinyin.size() - pinyin2.size();
    }
}
