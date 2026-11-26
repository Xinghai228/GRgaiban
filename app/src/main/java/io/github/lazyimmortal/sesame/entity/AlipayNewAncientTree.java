package io.github.lazyimmortal.sesame.entity;

import io.github.lazyimmortal.sesame.util.IconRegistry;
import io.github.lazyimmortal.sesame.util.idMap.NewAncientTreeIdMap;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class AlipayNewAncientTree extends IdAndName {
    private static List<AlipayNewAncientTree> list;

    public AlipayNewAncientTree(String str, String str2) {
        this.id = str;
        this.name = str2;
    }

    public static List<AlipayNewAncientTree> getList() {
        if (list == null) {
            list = new ArrayList();
            for (Map.Entry<String, String> entry : NewAncientTreeIdMap.getMap().entrySet()) {
                list.add(new AlipayNewAncientTree(entry.getKey(), entry.getValue()));
            }
        }
        for (AlipayNewAncientTree alipayNewAncientTree : list) {
            alipayNewAncientTree.icon = IconRegistry.get(IconRegistry.SCOPE_ANCIENT_TREE, alipayNewAncientTree.id);
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
