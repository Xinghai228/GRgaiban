package io.github.lazyimmortal.sesame.hook;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

/* JADX INFO: loaded from: classes.dex */
@JsonIgnoreProperties(ignoreUnknown = true)
public class RpcRequest {
    private final String methodName;
    private final Object requestData;

    public RpcRequest() {
        this.methodName = "";
        this.requestData = null;
    }

    public RpcRequest(String str, Object obj) {
        this.methodName = str == null ? "" : str;
        this.requestData = obj;
    }

    public String getRequestDataString(ObjectMapper objectMapper) {
        Object obj = this.requestData;
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj == null) {
            return "";
        }
        try {
            return objectMapper.writeValueAsString(obj);
        } catch (JsonProcessingException unused) {
            return "";
        }
    }

    public String getMethodName() {
        return this.methodName;
    }

    public Object getRequestData() {
        return this.requestData;
    }

    public String toString() {
        return "RpcRequest{methodName='" + this.methodName + "', requestData=" + this.requestData + '}';
    }
}
