package io.github.lazyimmortal.sesame.entity;

import io.github.lazyimmortal.sesame.util.IconRegistry;
import io.github.lazyimmortal.sesame.util.idMap.BeachIdMap;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class AlipayBeach extends IdAndName {
    private static List<AlipayBeach> list;

    public AlipayBeach(String str, String str2) {
        this.id = str;
        this.name = str2;
    }

    public static List<AlipayBeach> getList() {
        if (list == null) {
            list = new ArrayList();
            for (Map.Entry<String, String> entry : BeachIdMap.getMap().entrySet()) {
                list.add(new AlipayBeach(entry.getKey(), entry.getValue()));
            }
        }
        for (AlipayBeach alipayBeach : list) {
            alipayBeach.icon = IconRegistry.get(IconRegistry.SCOPE_BEACH, alipayBeach.id);
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
