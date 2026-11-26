package io.github.lazyimmortal.sesame.hook;

import androidx.core.app.NotificationCompat;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import fi.iki.elonen.NanoHTTPD;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public abstract class BaseHandler implements HttpHandler {
    protected final ObjectMapper mapper = ServerCommon.jsonMapper;
    private final String secretToken;

    public BaseHandler(String str) {
        this.secretToken = str;
    }

    @Override // io.github.lazyimmortal.sesame.hook.HttpHandler
    public final NanoHTTPD.Response handle(NanoHTTPD.IHTTPSession iHTTPSession, String str) {
        try {
            if (!verifyToken(iHTTPSession)) {
                return unauthorized();
            }
            NanoHTTPD.Method method = iHTTPSession.getMethod();
            if (method == NanoHTTPD.Method.GET) {
                return onGet(iHTTPSession);
            }
            if (method == NanoHTTPD.Method.POST) {
                return onPost(iHTTPSession, str);
            }
            return methodNotAllowed();
        } catch (Exception e) {
            e.printStackTrace();
            String message = e.getMessage() != null ? e.getMessage() : "Unknown error";
            HashMap map = new HashMap();
            map.put(NotificationCompat.CATEGORY_STATUS, "error");
            map.put("message", message);
            return json(NanoHTTPD.Response.Status.INTERNAL_ERROR, map);
        }
    }

    private boolean verifyToken(NanoHTTPD.IHTTPSession iHTTPSession) {
        String strTrim;
        String str = this.secretToken;
        if (str == null || str.trim().isEmpty()) {
            return true;
        }
        String str2 = iHTTPSession.getHeaders().get("authorization");
        if (str2 == null) {
            return false;
        }
        if (str2.toLowerCase().startsWith("Bearer ".toLowerCase())) {
            strTrim = str2.substring(7).trim();
        } else {
            strTrim = str2.trim();
        }
        return strTrim.equals(this.secretToken);
    }

    protected NanoHTTPD.Response onGet(NanoHTTPD.IHTTPSession iHTTPSession) {
        return methodNotAllowed();
    }

    protected NanoHTTPD.Response onPost(NanoHTTPD.IHTTPSession iHTTPSession, String str) {
        return methodNotAllowed();
    }

    protected NanoHTTPD.Response json(NanoHTTPD.Response.Status status, Object obj) {
        String strWriteValueAsString;
        if (obj instanceof String) {
            strWriteValueAsString = (String) obj;
        } else {
            try {
                strWriteValueAsString = this.mapper.writeValueAsString(obj);
            } catch (JsonProcessingException unused) {
                strWriteValueAsString = "{\"status\":\"error\",\"message\":\"Failed to serialize response\"}";
            }
        }
        return NanoHTTPD.newFixedLengthResponse(status, ServerCommon.MIME_JSON, strWriteValueAsString);
    }

    protected NanoHTTPD.Response ok(Object obj) {
        return json(NanoHTTPD.Response.Status.OK, obj);
    }

    protected NanoHTTPD.Response badRequest(String str) {
        HashMap map = new HashMap();
        map.put(NotificationCompat.CATEGORY_STATUS, "error");
        map.put("message", str);
        return json(NanoHTTPD.Response.Status.BAD_REQUEST, map);
    }

    protected NanoHTTPD.Response unauthorized() {
        HashMap map = new HashMap();
        map.put(NotificationCompat.CATEGORY_STATUS, "unauthorized");
        return json(NanoHTTPD.Response.Status.UNAUTHORIZED, map);
    }

    protected NanoHTTPD.Response methodNotAllowed() {
        HashMap map = new HashMap();
        map.put(NotificationCompat.CATEGORY_STATUS, "method_not_allowed");
        return json(NanoHTTPD.Response.Status.METHOD_NOT_ALLOWED, map);
    }

    protected NanoHTTPD.Response notFound() {
        HashMap map = new HashMap();
        map.put(NotificationCompat.CATEGORY_STATUS, "not_found");
        return json(NanoHTTPD.Response.Status.NOT_FOUND, map);
    }
}
