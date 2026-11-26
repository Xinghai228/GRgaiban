package io.github.lazyimmortal.sesame.hook;

import fi.iki.elonen.NanoHTTPD;

/* JADX INFO: loaded from: classes.dex */
public class AuthCodeHandler implements HttpHandler {
    @Override // io.github.lazyimmortal.sesame.hook.HttpHandler
    public NanoHTTPD.Response handle(NanoHTTPD.IHTTPSession iHTTPSession, String str) {
        if (iHTTPSession.getMethod() == NanoHTTPD.Method.GET) {
            return handleGetRequest(iHTTPSession);
        }
        return createResponse(NanoHTTPD.Response.Status.METHOD_NOT_ALLOWED, "{\"error\":\"Method not allowed\"}");
    }

    private NanoHTTPD.Response handleGetRequest(NanoHTTPD.IHTTPSession iHTTPSession) {
        String str = iHTTPSession.getParms().get("appId");
        if (str == null || str.trim().isEmpty()) {
            return createResponse(NanoHTTPD.Response.Status.BAD_REQUEST, "{\"error\":\"参数缺失，请提供appId参数\"}");
        }
        try {
            String authCode = AuthCodeHelper.getAuthCode(str);
            if (authCode != null) {
                return createResponse(NanoHTTPD.Response.Status.OK, String.format("{\"success\":true,\"authCode\":\"%s\"}", authCode));
            }
            return createResponse(NanoHTTPD.Response.Status.INTERNAL_ERROR, "{\"error\":\"获取OAuth2授权码失败\"}");
        } catch (Exception e) {
            return createResponse(NanoHTTPD.Response.Status.INTERNAL_ERROR, String.format("{\"error\":\"服务器内部错误: %s\"}", e.getMessage() != null ? e.getMessage() : "未知错误"));
        }
    }

    private NanoHTTPD.Response createResponse(NanoHTTPD.Response.Status status, String str) {
        return NanoHTTPD.newFixedLengthResponse(status, ServerCommon.MIME_JSON, str);
    }
}
