package io.github.lazyimmortal.sesame.entity;

import io.github.lazyimmortal.sesame.util.idMap.PlantSceneIdMap;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class AlipayPlantScene extends IdAndName {
    private static List<AlipayPlantScene> list;

    public AlipayPlantScene(String str, String str2) {
        this.id = str;
        this.name = str2;
    }

    public static List<AlipayPlantScene> getList() {
        if (list == null) {
            list = new ArrayList();
            for (Map.Entry<String, String> entry : PlantSceneIdMap.getMap().entrySet()) {
                list.add(new AlipayPlantScene(entry.getKey(), entry.getValue()));
            }
        }
        return list;
    }

    public static void remove(String str) {
        getList();
        for (int i = 0; i < list.size(); i++) {
            if (list.get(i).id.equals(str)) {
                list.remove(i);
                return;
            }
        }
    }
}
