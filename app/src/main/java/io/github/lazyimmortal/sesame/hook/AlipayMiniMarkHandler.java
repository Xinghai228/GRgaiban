package io.github.lazyimmortal.sesame.hook;

import fi.iki.elonen.NanoHTTPD;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class AlipayMiniMarkHandler implements HttpHandler {
    @Override // io.github.lazyimmortal.sesame.hook.HttpHandler
    public NanoHTTPD.Response handle(NanoHTTPD.IHTTPSession iHTTPSession, String str) {
        if (iHTTPSession.getMethod() == NanoHTTPD.Method.GET) {
            return handleGetRequest(iHTTPSession);
        }
        return createResponse(NanoHTTPD.Response.Status.METHOD_NOT_ALLOWED, "{\"error\":\"Method not allowed\"}");
    }

    private NanoHTTPD.Response handleGetRequest(NanoHTTPD.IHTTPSession iHTTPSession) {
        Map<String, String> parms = iHTTPSession.getParms();
        String str = parms.get("appid");
        String str2 = parms.get("version");
        if (str == null || str.trim().isEmpty() || str2 == null || str2.trim().isEmpty()) {
            return createResponse(NanoHTTPD.Response.Status.BAD_REQUEST, "{\"error\":\"参数缺失，请提供appid和version参数\"}");
        }
        try {
            String alipayMiniMark = AlipayMiniMarkHelper.getAlipayMiniMark(str, str2);
            if (alipayMiniMark != null && !alipayMiniMark.trim().isEmpty()) {
                return createResponse(NanoHTTPD.Response.Status.OK, String.format("{\"success\":true,\"alipayMiniMark\":\"%s\"}", alipayMiniMark));
            }
            return createResponse(NanoHTTPD.Response.Status.INTERNAL_ERROR, "{\"error\":\"获取支付宝小程序标记失败\"}");
        } catch (Exception e) {
            return createResponse(NanoHTTPD.Response.Status.INTERNAL_ERROR, String.format("{\"error\":\"服务器内部错误: %s\"}", e.getMessage() != null ? e.getMessage() : "未知错误"));
        }
    }

    private NanoHTTPD.Response createResponse(NanoHTTPD.Response.Status status, String str) {
        return NanoHTTPD.newFixedLengthResponse(status, ServerCommon.MIME_JSON, str);
    }
}
