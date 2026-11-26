package io.github.lazyimmortal.sesame.entity;

import io.github.lazyimmortal.sesame.util.Log;
import io.github.lazyimmortal.sesame.util.idMap.UserIdMap;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class AlipayUser extends IdAndName {

    public interface Filter {
        Boolean apply(UserEntity userEntity);
    }

    public AlipayUser(String str, String str2) {
        this.id = str;
        this.name = str2;
    }

    public static List<AlipayUser> getList() {
        return getList(new Filter() { // from class: io.github.lazyimmortal.sesame.entity.AlipayUser$$ExternalSyntheticLambda0
            @Override // io.github.lazyimmortal.sesame.entity.AlipayUser.Filter
            public final Boolean apply(UserEntity userEntity) {
                return AlipayUser.lambda$getList$0(userEntity);
            }
        });
    }

    static /* synthetic */ Boolean lambda$getList$0(UserEntity userEntity) {
        return true;
    }

    public static List<AlipayUser> getList(Filter filter) {
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<String, UserEntity> entry : UserIdMap.getUserMap().entrySet()) {
            UserEntity value = entry.getValue();
            try {
                if (filter.apply(value).booleanValue()) {
                    AlipayUser alipayUser = new AlipayUser(entry.getKey(), value.getFullName());
                    alipayUser.icon = value.getHeadImageUrl();
                    arrayList.add(alipayUser);
                }
            } catch (Throwable th) {
                Log.printStackTrace(th);
            }
        }
        return arrayList;
    }
}
