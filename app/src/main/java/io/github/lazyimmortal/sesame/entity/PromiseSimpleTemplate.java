package io.github.lazyimmortal.sesame.entity;

import io.github.lazyimmortal.sesame.util.idMap.PromiseSimpleTemplateIdMap;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class PromiseSimpleTemplate extends IdAndName {
    public PromiseSimpleTemplate(String str, String str2) {
        this.id = str;
        this.name = str2;
    }

    public static List<PromiseSimpleTemplate> getList() {
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<String, String> entry : PromiseSimpleTemplateIdMap.getMap().entrySet()) {
            arrayList.add(new PromiseSimpleTemplate(entry.getKey(), entry.getValue()));
        }
        return arrayList;
    }
}
