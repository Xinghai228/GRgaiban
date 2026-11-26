package io.github.lazyimmortal.sesame.hook;

import fi.iki.elonen.NanoHTTPD;
import io.github.lazyimmortal.sesame.util.Log;
import java.io.DataInputStream;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class ModuleHttpServer extends NanoHTTPD {
    private final Map<String, HttpHandler> routes;
    private final String tag;

    public ModuleHttpServer() {
        this(8080, "");
    }

    public ModuleHttpServer(int i) {
        this(i, "");
    }

    public ModuleHttpServer(int i, String str) {
        super("0.0.0.0", i);
        this.tag = "ModuleHttpServer";
        this.routes = new HashMap();
        register("/debugHandler", new DebugHandler(str), "调试接口");
        register("/getAlipayMiniMark", new AlipayMiniMarkHandler(), "获取支付宝小程序标记");
        register("/getAuthCode", new AuthCodeHandler(), "获取OAuth2授权码");
    }

    private void register(String str, HttpHandler httpHandler) {
        register(str, httpHandler, "");
    }

    private void register(String str, HttpHandler httpHandler, String str2) {
        Log.i("Registering handler : " + str + " -> " + str2);
        this.routes.put(str, httpHandler);
    }

    @Override // fi.iki.elonen.NanoHTTPD
    public NanoHTTPD.Response serve(NanoHTTPD.IHTTPSession iHTTPSession) {
        String uri = iHTTPSession.getUri();
        HttpHandler httpHandler = this.routes.get(uri);
        if (httpHandler == null) {
            return notFound();
        }
        try {
            NanoHTTPD.Method method = iHTTPSession.getMethod();
            return httpHandler.handle(iHTTPSession, (method == NanoHTTPD.Method.POST || method == NanoHTTPD.Method.PUT) ? getPostBodySafe(iHTTPSession) : null);
        } catch (Exception e) {
            Log.printStackTrace("Server Error on " + uri, e);
            StringBuilder sb = new StringBuilder("Internal Server Error: ");
            sb.append(e.getMessage() != null ? e.getMessage() : "Unknown error");
            return newFixedLengthResponse(NanoHTTPD.Response.Status.INTERNAL_ERROR, "text/plain", sb.toString());
        }
    }

    private String getPostBodySafe(NanoHTTPD.IHTTPSession iHTTPSession) {
        String str = iHTTPSession.getHeaders().get("content-length");
        if (str == null) {
            return null;
        }
        try {
            int i = Integer.parseInt(str);
            if (i == 0) {
                return "";
            }
            try {
                byte[] bArr = new byte[i];
                new DataInputStream(iHTTPSession.getInputStream()).readFully(bArr);
                return new String(bArr, StandardCharsets.UTF_8);
            } catch (IOException e) {
                Log.printStackTrace("Failed to read body", e);
                return null;
            } catch (Exception e2) {
                Log.printStackTrace("Error reading body fully", e2);
                return null;
            }
        } catch (NumberFormatException e3) {
            Log.printStackTrace("Invalid content-length value: " + str, e3);
            return null;
        }
    }

    private NanoHTTPD.Response notFound() {
        return newFixedLengthResponse(NanoHTTPD.Response.Status.NOT_FOUND, "text/plain", "Not Found");
    }
}
