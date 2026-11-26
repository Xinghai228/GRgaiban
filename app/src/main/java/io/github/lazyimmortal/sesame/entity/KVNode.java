package io.github.lazyimmortal.sesame.entity;

import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class KVNode<K, V> implements Serializable {
    private K key;
    private V value;

    protected boolean canEqual(Object obj) {
        return obj instanceof KVNode;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof KVNode)) {
            return false;
        }
        KVNode kVNode = (KVNode) obj;
        if (!kVNode.canEqual(this)) {
            return false;
        }
        K key = getKey();
        Object key2 = kVNode.getKey();
        if (key != null ? !key.equals(key2) : key2 != null) {
            return false;
        }
        V value = getValue();
        Object value2 = kVNode.getValue();
        return value != null ? value.equals(value2) : value2 == null;
    }

    public int hashCode() {
        K key = getKey();
        int iHashCode = key == null ? 43 : key.hashCode();
        V value = getValue();
        return ((iHashCode + 59) * 59) + (value != null ? value.hashCode() : 43);
    }

    public void setKey(K k) {
        this.key = k;
    }

    public void setValue(V v) {
        this.value = v;
    }

    public String toString() {
        return "KVNode(key=" + getKey() + ", value=" + getValue() + ")";
    }

    public K getKey() {
        return this.key;
    }

    public V getValue() {
        return this.value;
    }

    public KVNode() {
    }

    public KVNode(K k, V v) {
        this.key = k;
        this.value = v;
    }
}
