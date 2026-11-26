package io.github.lazyimmortal.sesame.entity;

import io.github.lazyimmortal.sesame.util.idMap.rpcRequestMap;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class AlipayrpcRequest extends IdAndName {
    private static List<AlipayrpcRequest> list;

    public AlipayrpcRequest(String str, String str2) {
        this.id = str;
        this.name = str2;
    }

    public static List<AlipayrpcRequest> getList() {
        if (list == null) {
            list = new ArrayList();
            for (Map.Entry<String, String> entry : rpcRequestMap.getMap().entrySet()) {
                list.add(new AlipayrpcRequest(entry.getKey(), entry.getValue()));
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
