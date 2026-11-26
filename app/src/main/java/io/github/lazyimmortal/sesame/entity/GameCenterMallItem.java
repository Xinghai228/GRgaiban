package io.github.lazyimmortal.sesame.entity;

import io.github.lazyimmortal.sesame.util.IconRegistry;
import io.github.lazyimmortal.sesame.util.idMap.GameCenterMallItemMap;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class GameCenterMallItem extends IdAndName {
    public GameCenterMallItem(String str, String str2) {
        this.id = str;
        this.name = str2;
    }

    public static List<GameCenterMallItem> getList() {
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<String, String> entry : GameCenterMallItemMap.getMap().entrySet()) {
            GameCenterMallItem gameCenterMallItem = new GameCenterMallItem(entry.getKey(), entry.getValue());
            gameCenterMallItem.icon = IconRegistry.get(IconRegistry.SCOPE_MALL_ITEM, entry.getKey());
            arrayList.add(gameCenterMallItem);
        }
        return arrayList;
    }
}
