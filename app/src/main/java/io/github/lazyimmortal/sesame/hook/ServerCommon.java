package io.github.lazyimmortal.sesame.hook;

import com.fasterxml.jackson.databind.ObjectMapper;

/* JADX INFO: loaded from: classes.dex */
public class ServerCommon {
    public static final String MIME_JSON = "application/json";
    public static final String MIME_PLAINTEXT = "text/plain";
    public static final ObjectMapper jsonMapper = new ObjectMapper();

    private ServerCommon() {
        throw new UnsupportedOperationException("Utility class cannot be instantiated");
    }
}
