package io.github.lazyimmortal.sesame.entity;

import io.github.lazyimmortal.sesame.util.IconRegistry;
import io.github.lazyimmortal.sesame.util.idMap.VitalityBenefitIdMap;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class VitalityBenefit extends IdAndName {
    public VitalityBenefit(String str, String str2) {
        this.id = str;
        this.name = str2;
    }

    public static List<VitalityBenefit> getList() {
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<String, String> entry : VitalityBenefitIdMap.getMap().entrySet()) {
            VitalityBenefit vitalityBenefit = new VitalityBenefit(entry.getKey(), entry.getValue());
            vitalityBenefit.icon = IconRegistry.get(IconRegistry.SCOPE_VITALITY_BENEFIT, entry.getKey());
            arrayList.add(vitalityBenefit);
        }
        return arrayList;
    }
}
