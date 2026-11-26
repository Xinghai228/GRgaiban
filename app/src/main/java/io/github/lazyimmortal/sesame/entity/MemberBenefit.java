package io.github.lazyimmortal.sesame.entity;

import io.github.lazyimmortal.sesame.util.idMap.MemberBenefitIdMap;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class MemberBenefit extends IdAndName {
    public MemberBenefit(String str, String str2) {
        this.id = str;
        this.name = str2;
    }

    public static List<MemberBenefit> getList() {
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<String, String> entry : MemberBenefitIdMap.getMap().entrySet()) {
            arrayList.add(new MemberBenefit(entry.getKey(), entry.getValue()));
        }
        return arrayList;
    }
}
