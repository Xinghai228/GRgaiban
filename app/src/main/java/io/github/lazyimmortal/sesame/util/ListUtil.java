package io.github.lazyimmortal.sesame.util;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class ListUtil {
    private static final String TAG = "ListUtil";

    @SafeVarargs
    public static <T> List<T> newArrayList(T... tArr) {
        ArrayList arrayList = new ArrayList();
        if (tArr != null) {
            Collections.addAll(arrayList, tArr);
        }
        return arrayList;
    }
}
