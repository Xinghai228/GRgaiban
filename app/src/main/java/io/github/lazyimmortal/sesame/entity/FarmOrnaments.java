package io.github.lazyimmortal.sesame.entity;

import io.github.lazyimmortal.sesame.util.idMap.FarmOrnamentsIdMap;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class FarmOrnaments extends IdAndName {
    public FarmOrnaments(String str, String str2) {
        this.id = str;
        this.name = str2;
    }

    public static List<FarmOrnaments> getList() {
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<String, String> entry : FarmOrnamentsIdMap.getMap().entrySet()) {
            arrayList.add(new FarmOrnaments(entry.getKey(), entry.getValue()));
        }
        return arrayList;
    }
}
