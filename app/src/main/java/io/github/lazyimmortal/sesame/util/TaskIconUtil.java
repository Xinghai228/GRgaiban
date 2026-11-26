package io.github.lazyimmortal.sesame.util;

import android.graphics.Bitmap;
import java.io.File;
import java.util.Collection;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class TaskIconUtil {
    private static ImageZipCache cache;
    private static final String[] ICON_KEYS = {"icon", "taskIcon", "iconUrl", "logo", "skuHeadImg", "spuHeadImg", "templateIconNew"};
    private static final String[] FALLBACK_ICON_KEYS = {"awardIcon"};
    private static final String[] NESTED_CONTAINERS = {"taskDisplayConfig", "bizInfo", "extendInfo"};

    public static String extractIcon(JSONObject... jSONObjectArr) {
        String strPickIcon = pickIcon(jSONObjectArr, ICON_KEYS);
        return strPickIcon.isEmpty() ? pickIcon(jSONObjectArr, FALLBACK_ICON_KEYS) : strPickIcon;
    }

    private static String pickIcon(JSONObject[] jSONObjectArr, String[] strArr) {
        if (jSONObjectArr == null) {
            return "";
        }
        for (JSONObject jSONObject : jSONObjectArr) {
            String strPickIconDirect = pickIconDirect(jSONObject, strArr);
            if (!strPickIconDirect.isEmpty()) {
                return strPickIconDirect;
            }
        }
        for (JSONObject jSONObject2 : jSONObjectArr) {
            if (jSONObject2 != null) {
                for (String str : NESTED_CONTAINERS) {
                    String strPickIconDirect2 = pickIconDirect(jSONObject2.optJSONObject(str), strArr);
                    if (!strPickIconDirect2.isEmpty()) {
                        return strPickIconDirect2;
                    }
                    String strOptString = jSONObject2.optString(str, "");
                    if (strOptString.startsWith("{")) {
                        try {
                            String strPickIconDirect3 = pickIconDirect(new JSONObject(strOptString), strArr);
                            if (!strPickIconDirect3.isEmpty()) {
                                return strPickIconDirect3;
                            }
                        } catch (Exception unused) {
                            continue;
                        }
                    }
                }
            }
        }
        return "";
    }

    private static String pickIconDirect(JSONObject jSONObject, String[] strArr) {
        if (jSONObject == null) {
            return "";
        }
        for (String str : strArr) {
            String strOptString = jSONObject.optString(str, "");
            if (strOptString.startsWith("http")) {
                return strOptString;
            }
        }
        return "";
    }

    public static boolean isIconUrl(String str) {
        return str != null && str.startsWith("http");
    }

    private static synchronized ImageZipCache cache() {
        if (cache == null) {
            cache = new ImageZipCache(new File(FileUtil.MAIN_DIRECTORY_FILE, "icon.zip"));
        }
        return cache;
    }

    public static Bitmap loadCached(String str) {
        return cache().load(str);
    }

    public static void predownload(Collection<String> collection) {
        cache().predownload(collection);
    }

    public static Bitmap downloadAndGet(String str) {
        return cache().loadOrDownload(str);
    }
}
