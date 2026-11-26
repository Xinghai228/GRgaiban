package io.github.lazyimmortal.sesame.model.task.antForest;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkCapabilities;
import android.os.Build;
import android.telephony.TelephonyManager;
import android.util.DisplayMetrics;
import io.github.lazyimmortal.sesame.hook.ApplicationHook;
import io.github.lazyimmortal.sesame.util.ClassUtil;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.nio.charset.StandardCharsets;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Random;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class ReadForestRpcCall {
    private static final String APP_ID = "2021003114652763";
    private static final String DEFAULT_VERSION = "0.2.2410251510.53";
    private static final String HOST = "https://m.zhangwenwh.com/api";
    private static final Random RANDOM = new Random();
    private static volatile String currentMiniMark = "";

    private ReadForestRpcCall() {
    }

    public static void setMiniMark(String str) {
        if (str == null) {
            str = "";
        }
        currentMiniMark = str;
    }

    public static String login(String str, String str2, String str3) throws Exception {
        setMiniMark(str2);
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("auth_code", str);
        jSONObject.put("app_id", APP_ID);
        jSONObject.put("cid", "7001");
        return post("/authorization", jSONObject, null, getReferer(str3, null, null));
    }

    public static String checkToken(String str, String str2) throws Exception {
        return post("/authorization", new JSONObject(), str, getReferer(str2, null, null));
    }

    public static String getIndex(String str, String str2) throws Exception {
        return get("/index/index?type=1", str, getReferer(str2, null, null));
    }

    public static String getChapter(String str, String str2, String str3, String str4) throws Exception {
        String str5;
        if (str2 == null || str2.length() == 0) {
            str5 = "/book/chapter?book_id=" + str;
        } else {
            str5 = "/book/chapter?book_id=" + str + "&chapter_id=" + str2;
        }
        return get(str5, str3, getReferer(str4, str, str2));
    }

    public static String checkEnergy(String str, String str2, String str3, String str4) throws Exception {
        return get("/user/forestPro", str, getReferer(str2, str3, str4));
    }

    public static String updateReadingTime(String str, String str2, int i, String str3, String str4) throws Exception {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("time", i);
        putChapterId(jSONObject, str2);
        jSONObject.put("book_id", str);
        return post("/user/updateWel", jSONObject, str3, getReferer(str4, str, str2));
    }

    public static String setReadRecently(String str, String str2, String str3, String str4, String str5) throws Exception {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("book_id", str);
        putChapterId(jSONObject, str2);
        jSONObject.put("chapter_name", str3);
        return post("/book/set_read_recently", jSONObject, str4, getReferer(str5, str, str2));
    }

    private static void putChapterId(JSONObject jSONObject, String str) throws Exception {
        try {
            jSONObject.put("chapter_id", Long.parseLong(str));
        } catch (Exception unused) {
            jSONObject.put("chapter_id", str);
        }
    }

    public static String getReferer(String str, String str2, String str3) {
        if (str == null || str.length() == 0) {
            str = DEFAULT_VERSION;
        }
        if (str.startsWith("http")) {
            return str;
        }
        String str4 = "https://2021003114652763.hybrid.alipay-eco.com/2021003114652763/" + str + "/index.html";
        if (str2 != null && str2.length() != 0 && str3 != null && str3.length() != 0) {
            return str4 + "#moduleA/pages/chapter/index?__appxPageId=" + (RANDOM.nextInt(20) + 1) + "&bid=" + str2 + "&cid=" + str3;
        }
        if (str2 != null && str2.length() != 0) {
            return str4 + "#moduleA/pages/chapter/index?__appxPageId=" + (RANDOM.nextInt(20) + 1) + "&bid=" + str2;
        }
        return str4 + "#pages/index/index";
    }

    private static String getBaseUserAgent() {
        String property = System.getProperty("http.agent");
        if (property == null || property.isEmpty()) {
            property = "Mozilla/5.0 (Linux; Android 11)";
        }
        String strTrim = property.replace(" Mobile Safari/537.36", "").trim();
        String versionString = ApplicationHook.getAlipayVersion().getVersionString();
        return strTrim + " MYWeb/1.11.126.260911211123 UWS/3.22.2.9999 UCBS/3.22.2.9999_220000000000 Mobile Safari/537.36 NebulaSDK/1.8.100112 Nebula AlipayDefined(nt:" + networkType() + ",ws:" + screenSpec() + ") AliApp(AP/" + versionString + ") AlipayClient/" + versionString + " Language/zh-Hans isConcaveScreen/true Region/CNAriver/" + versionString + " DTN/2.0";
    }

    private static String networkType() {
        NetworkCapabilities networkCapabilities;
        TelephonyManager telephonyManager;
        try {
            Context context = ApplicationHook.getContext();
            if (context == null) {
                return "WIFI";
            }
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            if (Build.VERSION.SDK_INT < 23 || (networkCapabilities = connectivityManager.getNetworkCapabilities(connectivityManager.getActiveNetwork())) == null || networkCapabilities.hasTransport(1) || !networkCapabilities.hasTransport(0)) {
                return "WIFI";
            }
            if (Build.VERSION.SDK_INT >= 29 && (telephonyManager = (TelephonyManager) context.getSystemService("phone")) != null && telephonyManager.getDataNetworkType() == 20) {
                return "5G";
            }
            return "4G";
        } catch (Throwable unused) {
            return "WIFI";
        }
    }

    private static String screenSpec() {
        try {
            Context context = ApplicationHook.getContext();
            if (context != null) {
                DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
                return Math.round(displayMetrics.widthPixels / displayMetrics.density) + "|0|" + (Math.round(displayMetrics.density * 100.0f) / 100.0f);
            }
            return "393|0|2.75";
        } catch (Throwable unused) {
            return "393|0|2.75";
        }
    }

    private static Map<String, String> getHeaders(String str, String str2) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("alipayminimark", currentMiniMark == null ? "" : currentMiniMark);
        linkedHashMap.put("content-type", "application/json;charset=UTF-8");
        if (str2 == null) {
            str2 = "";
        }
        linkedHashMap.put("referer", str2);
        linkedHashMap.put("user-agent", getBaseUserAgent());
        linkedHashMap.put("x-requested-with", ClassUtil.PACKAGE_NAME);
        linkedHashMap.put("x-mass-tappid", APP_ID);
        linkedHashMap.put("accept-language", "zh-CN,zh;q=0.9,en-US;q=0.8,en;q=0.7");
        linkedHashMap.put("x-release-type", "ONLINE");
        if (str != null) {
            linkedHashMap.put("authorization", "Bearer " + str);
        }
        return linkedHashMap;
    }

    private static String get(String str, String str2, String str3) throws Exception {
        return request("GET", str, null, str2, str3);
    }

    private static String post(String str, JSONObject jSONObject, String str2, String str3) throws Exception {
        return request("POST", str, jSONObject == null ? "{}" : jSONObject.toString(), str2, str3);
    }

    private static String request(String str, String str2, String str3, String str4, String str5) throws Exception {
        HttpURLConnection httpURLConnection = null;
        try {
            HttpURLConnection httpURLConnection2 = (HttpURLConnection) new URL(HOST + str2).openConnection();
            try {
                httpURLConnection2.setConnectTimeout(10000);
                httpURLConnection2.setReadTimeout(20000);
                httpURLConnection2.setRequestMethod(str);
                httpURLConnection2.setUseCaches(false);
                for (Map.Entry<String, String> entry : getHeaders(str4, str5).entrySet()) {
                    httpURLConnection2.setRequestProperty(entry.getKey(), entry.getValue());
                }
                if ("POST".equals(str)) {
                    if (str3 == null) {
                        str3 = "";
                    }
                    byte[] bytes = str3.getBytes(StandardCharsets.UTF_8);
                    httpURLConnection2.setDoOutput(true);
                    httpURLConnection2.setFixedLengthStreamingMode(bytes.length);
                    OutputStream outputStream = httpURLConnection2.getOutputStream();
                    outputStream.write(bytes);
                    outputStream.close();
                }
                InputStream errorStream = httpURLConnection2.getResponseCode() >= 400 ? httpURLConnection2.getErrorStream() : httpURLConnection2.getInputStream();
                if (errorStream == null) {
                    if (httpURLConnection2 != null) {
                        httpURLConnection2.disconnect();
                    }
                    return "";
                }
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                byte[] bArr = new byte[4096];
                while (true) {
                    int i = errorStream.read(bArr);
                    if (i == -1) {
                        break;
                    }
                    byteArrayOutputStream.write(bArr, 0, i);
                }
                errorStream.close();
                String string = byteArrayOutputStream.toString("UTF-8");
                if (httpURLConnection2 != null) {
                    httpURLConnection2.disconnect();
                }
                return string;
            } catch (Throwable th) {
                th = th;
                httpURLConnection = httpURLConnection2;
                if (httpURLConnection != null) {
                    httpURLConnection.disconnect();
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }
}
