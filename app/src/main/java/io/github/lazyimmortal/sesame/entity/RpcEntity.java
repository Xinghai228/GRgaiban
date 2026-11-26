package io.github.lazyimmortal.sesame.entity;

/* JADX INFO: loaded from: classes.dex */
public class RpcEntity {
    private volatile Boolean hasError;
    private volatile Boolean hasResult;
    private final String requestData;
    private final String requestMethod;
    private final String requestRelation;
    private final Thread requestThread;
    private volatile Object responseObject;
    private volatile String responseString;

    public Thread getRequestThread() {
        return this.requestThread;
    }

    public String getRequestMethod() {
        return this.requestMethod;
    }

    public String getRequestData() {
        return this.requestData;
    }

    public String getRequestRelation() {
        return this.requestRelation;
    }

    public Boolean getHasResult() {
        return this.hasResult;
    }

    public Boolean getHasError() {
        return this.hasError;
    }

    public Object getResponseObject() {
        return this.responseObject;
    }

    public String getResponseString() {
        return this.responseString;
    }

    public RpcEntity() {
        this(null, null);
    }

    public RpcEntity(String str, String str2) {
        this(str, str2, null);
    }

    public RpcEntity(String str, String str2, String str3) {
        this.hasResult = false;
        this.hasError = false;
        this.requestThread = Thread.currentThread();
        this.requestMethod = str;
        this.requestData = str2;
        this.requestRelation = str3;
    }

    public void setResponseObject(Object obj, String str) {
        this.hasResult = true;
        this.responseObject = obj;
        this.responseString = str;
    }

    public void setError() {
        this.hasError = true;
    }
}
