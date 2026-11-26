package io.github.lazyimmortal.sesame.ui;

/* JADX INFO: loaded from: classes.dex */
public class ObjReference<T> {
    private T obj;

    protected boolean canEqual(Object obj) {
        return obj instanceof ObjReference;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ObjReference)) {
            return false;
        }
        ObjReference objReference = (ObjReference) obj;
        if (!objReference.canEqual(this)) {
            return false;
        }
        T obj2 = getObj();
        Object obj3 = objReference.getObj();
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
        return "ObjReference(obj=" + getObj() + ")";
    }

    public T getObj() {
        return this.obj;
    }

    public ObjReference() {
    }

    public ObjReference(T t) {
        this.obj = t;
    }

    public Boolean has() {
        return Boolean.valueOf(this.obj != null);
    }

    public T get() {
        return this.obj;
    }

    public Boolean set(T t) {
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

    public void setForce(T t) {
        this.obj = t;
    }

    public void del() {
        this.obj = null;
    }

    public void delIfEquals(T t) {
        if (this.obj == t) {
            this.obj = null;
        }
    }
}
