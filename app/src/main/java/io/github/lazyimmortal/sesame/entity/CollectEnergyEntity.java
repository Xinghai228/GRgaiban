package io.github.lazyimmortal.sesame.entity;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class CollectEnergyEntity {
    private RpcEntity rpcEntity;
    private JSONObject userHome;
    private final String userId;
    private Integer collectCount = 0;
    private Integer tryCount = 0;
    private Boolean needDouble = false;
    private Boolean needRetry = false;

    public String getUserId() {
        return this.userId;
    }

    public void setUserHome(JSONObject jSONObject) {
        this.userHome = jSONObject;
    }

    public JSONObject getUserHome() {
        return this.userHome;
    }

    public void setRpcEntity(RpcEntity rpcEntity) {
        this.rpcEntity = rpcEntity;
    }

    public RpcEntity getRpcEntity() {
        return this.rpcEntity;
    }

    public Integer getCollectCount() {
        return this.collectCount;
    }

    public Integer getTryCount() {
        return this.tryCount;
    }

    public void setNeedDouble(Boolean bool) {
        this.needDouble = bool;
    }

    public Boolean getNeedDouble() {
        return this.needDouble;
    }

    public void setNeedRetry(Boolean bool) {
        this.needRetry = bool;
    }

    public Boolean getNeedRetry() {
        return this.needRetry;
    }

    public CollectEnergyEntity(String str) {
        this.userId = str;
    }

    public CollectEnergyEntity(String str, JSONObject jSONObject) {
        this.userId = str;
        this.userHome = jSONObject;
    }

    public CollectEnergyEntity(String str, JSONObject jSONObject, RpcEntity rpcEntity) {
        this.userId = str;
        this.userHome = jSONObject;
        this.rpcEntity = rpcEntity;
    }

    public Integer addTryCount() {
        Integer numValueOf = Integer.valueOf(this.tryCount.intValue() + 1);
        this.tryCount = numValueOf;
        return numValueOf;
    }

    public void resetTryCount() {
        this.tryCount = 0;
    }

    public void setNeedDouble() {
        this.collectCount = Integer.valueOf(this.collectCount.intValue() + 1);
        this.needDouble = true;
    }

    public void unsetNeedDouble() {
        this.needDouble = false;
    }

    public void setNeedRetry() {
        this.needRetry = true;
    }

    public void unsetNeedRetry() {
        this.needRetry = false;
    }
}
