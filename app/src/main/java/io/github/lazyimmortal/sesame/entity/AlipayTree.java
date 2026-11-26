package io.github.lazyimmortal.sesame.entity;

import io.github.lazyimmortal.sesame.util.IconRegistry;
import io.github.lazyimmortal.sesame.util.idMap.TreeIdMap;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class AlipayTree extends IdAndName {
    private static List<AlipayTree> list;

    public AlipayTree(String str, String str2) {
        this.id = str;
        this.name = str2;
    }

    public static List<AlipayTree> getList() {
        if (list == null) {
            list = new ArrayList();
            for (Map.Entry<String, String> entry : TreeIdMap.getMap().entrySet()) {
                list.add(new AlipayTree(entry.getKey(), entry.getValue()));
            }
        }
        for (AlipayTree alipayTree : list) {
            alipayTree.icon = IconRegistry.get(IconRegistry.SCOPE_TREE, alipayTree.id);
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
