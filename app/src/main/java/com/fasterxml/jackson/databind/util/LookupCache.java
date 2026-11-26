package com.fasterxml.jackson.databind.util;

import java.util.function.BiConsumer;

/* JADX INFO: loaded from: classes.dex */
public interface LookupCache<K, V> {
    void clear();

    void contents(BiConsumer<K, V> biConsumer);

    LookupCache<K, V> emptyCopy();

    V get(Object obj);

    V put(K k, V v);

    V putIfAbsent(K k, V v);

    int size();

    /* JADX INFO: renamed from: com.fasterxml.jackson.databind.util.LookupCache$-CC, reason: invalid class name */
    public final /* synthetic */ class CC {
        public static void $default$contents(LookupCache _this, BiConsumer biConsumer) {
            throw new UnsupportedOperationException();
        }

        public static LookupCache $default$emptyCopy(LookupCache _this) {
            throw new UnsupportedOperationException("LookupCache implementation " + _this.getClass().getName() + " does not implement `emptyCopy()`");
        }
    }
}
