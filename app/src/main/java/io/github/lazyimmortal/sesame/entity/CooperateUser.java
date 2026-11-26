package io.github.lazyimmortal.sesame.entity;

import io.github.lazyimmortal.sesame.util.IconRegistry;
import io.github.lazyimmortal.sesame.util.idMap.CooperationIdMap;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class CooperateUser extends IdAndName {
    public CooperateUser(String str, String str2) {
        this.id = str;
        this.name = str2;
    }

    public static List<CooperateUser> getList() {
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<String, String> entry : CooperationIdMap.getMap().entrySet()) {
            CooperateUser cooperateUser = new CooperateUser(entry.getKey(), entry.getValue());
            cooperateUser.icon = IconRegistry.get(IconRegistry.SCOPE_COOPERATE, entry.getKey());
            arrayList.add(cooperateUser);
        }
        return arrayList;
    }
}
