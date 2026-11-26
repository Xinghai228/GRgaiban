package io.github.lazyimmortal.sesame.ui;

/* JADX INFO: loaded from: classes.dex */
public class ObjSyncReference<T> {
    private T obj;

    protected boolean canEqual(Object obj) {
        return obj instanceof ObjSyncReference;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ObjSyncReference)) {
            return false;
        }
        ObjSyncReference objSyncReference = (ObjSyncReference) obj;
        if (!objSyncReference.canEqual(this)) {
            return false;
        }
        T obj2 = getObj();
        Object obj3 = objSyncReference.getObj();
        return obj2 != null ? obj2.equals(obj3) : obj3 == null;
    }

    public int hashCode() {
        T obj = getObj();
        return 59 + (obj == null ? 43 : obj.hashCode());
    }

    public void setObj(T t) {
        this.obj = t;
    }

    public String toString() {
        return "ObjSyncReference(obj=" + getObj() + ")";
    }

    public T getObj() {
        return this.obj;
    }

    public ObjSyncReference() {
    }

    public ObjSyncReference(T t) {
        this.obj = t;
    }

    public Boolean has() {
        Boolean boolValueOf;
        synchronized (this) {
            boolValueOf = Boolean.valueOf(this.obj != null);
        }
        return boolValueOf;
    }

    public T get() {
        T t;
        synchronized (this) {
            t = this.obj;
        }
        return t;
    }

    public Boolean set(T t) {
        synchronized (this) {
            T t2 = this.obj;
            if (t2 == t) {
                return true;
            }
            if (t2 != null) {
                return false;
            }
            this.obj = t;
            return true;
        }
    }

    public void setForce(T t) {
        synchronized (this) {
            this.obj = t;
        }
    }

    public void del() {
        synchronized (this) {
            this.obj = null;
        }
    }

    public void delIfEquals(T t) {
        synchronized (this) {
            if (this.obj == t) {
                this.obj = null;
            }
        }
    }
}
