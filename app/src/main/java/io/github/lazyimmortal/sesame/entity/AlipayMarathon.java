package io.github.lazyimmortal.sesame.entity;

import io.github.lazyimmortal.sesame.util.IconRegistry;
import io.github.lazyimmortal.sesame.util.idMap.MarathonIdMap;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class AlipayMarathon extends IdAndName {
    private static List<AlipayMarathon> list;

    public AlipayMarathon(String str, String str2) {
        this.id = str;
        this.name = str2;
    }

    public static List<AlipayMarathon> getList() {
        if (list == null) {
            list = new ArrayList();
            for (Map.Entry<String, String> entry : MarathonIdMap.getMap().entrySet()) {
                list.add(new AlipayMarathon(entry.getKey(), entry.getValue()));
            }
        }
        for (AlipayMarathon alipayMarathon : list) {
            alipayMarathon.icon = IconRegistry.get(IconRegistry.SCOPE_MARATHON, alipayMarathon.id);
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
