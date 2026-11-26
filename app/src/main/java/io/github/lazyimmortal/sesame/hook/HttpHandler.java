package io.github.lazyimmortal.sesame.hook;

import fi.iki.elonen.NanoHTTPD;

/* JADX INFO: loaded from: classes.dex */
public interface HttpHandler {
    NanoHTTPD.Response handle(NanoHTTPD.IHTTPSession iHTTPSession, String str);
}
