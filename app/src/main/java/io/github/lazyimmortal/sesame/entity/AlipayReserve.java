package io.github.lazyimmortal.sesame.entity;

import io.github.lazyimmortal.sesame.util.IconRegistry;
import io.github.lazyimmortal.sesame.util.idMap.ReserveIdMap;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class AlipayReserve extends IdAndName {
    private static List<AlipayReserve> list;

    public AlipayReserve(String str, String str2) {
        this.id = str;
        this.name = str2;
    }

    public static List<AlipayReserve> getList() {
        if (list == null) {
            list = new ArrayList();
            for (Map.Entry<String, String> entry : ReserveIdMap.getMap().entrySet()) {
                list.add(new AlipayReserve(entry.getKey(), entry.getValue()));
            }
        }
        for (AlipayReserve alipayReserve : list) {
            alipayReserve.icon = IconRegistry.get(IconRegistry.SCOPE_RESERVE, alipayReserve.id);
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
