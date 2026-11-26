package io.github.lazyimmortal.sesame.entity;

import io.github.lazyimmortal.sesame.util.IconRegistry;
import io.github.lazyimmortal.sesame.util.idMap.AnimalIdMap;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class AlipayAnimal extends IdAndName {
    private static List<AlipayAnimal> list;

    public AlipayAnimal(String str, String str2) {
        this.id = str;
        this.name = str2;
    }

    public static List<AlipayAnimal> getList() {
        if (list == null) {
            list = new ArrayList();
            for (Map.Entry<String, String> entry : AnimalIdMap.getMap().entrySet()) {
                list.add(new AlipayAnimal(entry.getKey(), entry.getValue()));
            }
        }
        for (AlipayAnimal alipayAnimal : list) {
            alipayAnimal.icon = IconRegistry.get(IconRegistry.SCOPE_ANIMAL, alipayAnimal.id);
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
