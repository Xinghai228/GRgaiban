package io.github.lazyimmortal.sesame.entity;

import io.github.lazyimmortal.sesame.util.idMap.AntFarmDrawMachineTaskListMap;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class AlipayAntFarmDrawMachineTaskList extends IdAndName {
    private static List<AlipayAntFarmDrawMachineTaskList> list;

    public AlipayAntFarmDrawMachineTaskList(String str, String str2, String str3) {
        this.id = str;
        this.name = str2;
        this.icon = str3;
    }

    public static List<AlipayAntFarmDrawMachineTaskList> getList() {
        if (list == null) {
            list = new ArrayList();
            for (Map.Entry<String, String> entry : AntFarmDrawMachineTaskListMap.getMap().entrySet()) {
                list.add(new AlipayAntFarmDrawMachineTaskList(entry.getKey(), entry.getKey(), entry.getValue()));
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
