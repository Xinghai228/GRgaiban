package io.github.lazyimmortal.sesame.hook;

import androidx.core.app.NotificationCompat;
import fi.iki.elonen.NanoHTTPD;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public class DebugHandler extends BaseHandler {
    public DebugHandler(String str) {
        super(str);
    }

    @Override // io.github.lazyimmortal.sesame.hook.BaseHandler
    protected NanoHTTPD.Response onPost(NanoHTTPD.IHTTPSession iHTTPSession, String str) {
        if (str == null || str.trim().isEmpty()) {
            return badRequest("Empty body");
        }
        try {
            RpcRequest rpcRequest = (RpcRequest) this.mapper.readValue(str, RpcRequest.class);
            String requestDataString = rpcRequest.getRequestDataString(this.mapper);
            if (rpcRequest.getMethodName() == null || rpcRequest.getMethodName().trim().isEmpty() || requestDataString == null || requestDataString.trim().isEmpty()) {
                return badRequest("Fields cannot be empty");
            }
            try {
                String strRequestString = ApplicationHook.requestString(rpcRequest.getMethodName(), requestDataString);
                if (strRequestString != null && !strRequestString.trim().isEmpty()) {
                    return NanoHTTPD.newFixedLengthResponse(NanoHTTPD.Response.Status.OK, ServerCommon.MIME_JSON, strRequestString);
                }
                HashMap map = new HashMap();
                map.put(NotificationCompat.CATEGORY_STATUS, "empty");
                return json(NanoHTTPD.Response.Status.OK, map);
            } catch (Exception e) {
                StringBuilder sb = new StringBuilder("RPC Error: ");
                sb.append(e.getMessage() != null ? e.getMessage() : "Unknown error");
                return badRequest(sb.toString());
            }
        } catch (Exception e2) {
            StringBuilder sb2 = new StringBuilder("Invalid JSON: ");
            sb2.append(e2.getMessage() != null ? e2.getMessage() : "Unknown error");
            return badRequest(sb2.toString());
        }
    }
}
