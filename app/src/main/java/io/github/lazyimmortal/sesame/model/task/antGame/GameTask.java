package io.github.lazyimmortal.sesame.model.task.antGame;

import io.github.lazyimmortal.sesame.hook.AlipayMiniMarkHelper;
import io.github.lazyimmortal.sesame.hook.ApplicationHook;
import io.github.lazyimmortal.sesame.hook.AuthCodeHelper;
import io.github.lazyimmortal.sesame.hook.ServerCommon;
import io.github.lazyimmortal.sesame.util.Log;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.nio.charset.StandardCharsets;
import java.util.Random;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public enum GameTask {
    Orchard_ncscc("农场上车车", "2060170000356601", "zfb_ncscc", "ncscc_game_kaiche_every_10", "nongchangleyuan", "1.0.2", 2, SdkType.GAMESAPI2),
    Farm_ddply("对对碰乐园", "2021004149679303", "zfb_ddply", "ddply_game_xiaochu_every_5", "zhuangyuan", "1.0.14", 2, SdkType.GAMESAPI2),
    Forest_slxcc("森林小车车", "2060170000363691", "zfb_slxcc", "slxcc_game_kaiche_every_10", "lianyun_senlin_leyuan", "1.0.1", 3, SdkType.GAMESAPI2),
    Forest_sljyd("森林救援队(能量雨)", "2021005113684028", "zfb_sljydx", "sljyd_game_xiaochu_every_10", "lianyun_senlin_leyuan", "1.0.1", 3, SdkType.GAMESAPI2),
    GoldenBean_ncscc("农场上车车", "2060170000356601", "zfb_ncscc", "ncscc_game_kaiche_every_10", "goldenbean", "1.0.2", 2, SdkType.GAMESAPI2),
    GoldenBean_ddply("对对碰乐园", "2021004149679303", "zfb_ddply", "ddply_game_xiaochu_every_5", "goldenbean", "1.0.14", 4, SdkType.GAMESAPI2),
    GoldenBean_slxcc("森林小车车", "2060170000363691", "zfb_slxcc", "slxcc_game_kaiche_every_10", "goldenbean", "1.0.1", 2, SdkType.GAMESAPI2),
    GoldenBean_sljyd("森林救援队", "2021005113684028", "zfb_sljydx", "sljyd_game_xiaochu_every_10", "goldenbean", "1.0.1", 3, SdkType.GAMESAPI2);

    private final String action;
    private final String appId;
    private String cachedToken;
    private final String channel;
    private final String gid;
    private final int requestsPerEgg;
    private final SdkType sdkType;
    private final String title;
    private final String version;

    public enum SdkType {
        GAMESAPI2
    }

    GameTask(String str, String str2, String str3, String str4, String str5, String str6, int i, SdkType sdkType) {
        this.title = str;
        this.appId = str2;
        this.gid = str3;
        this.action = str4;
        this.channel = str5;
        this.version = str6;
        this.requestsPerEgg = i;
        this.sdkType = sdkType;
    }

    public SdkType getSdkType() {
        return this.sdkType;
    }

    public String getTitle() {
        return this.title;
    }

    public String getAction() {
        return this.action;
    }

    private String login() {
        return loginGamesApi2();
    }

    private String loginGamesApi2() {
        try {
            String authCode = AuthCodeHelper.getAuthCode(this.appId);
            String alipayMiniMark = AlipayMiniMarkHelper.getAlipayMiniMark(this.appId, this.version);
            String str = System.currentTimeMillis() + "_" + new Random().nextInt(350) + 1;
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("v", this.version);
            jSONObject.put("code", authCode);
            jSONObject.put("pf", "zfb");
            jSONObject.put("reqId", str);
            jSONObject.put("gid", this.gid);
            jSONObject.put("version", this.version);
            String string = jSONObject.toString();
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL("https://gamesapi2.aslk2018.com/v2/game/login").openConnection();
            httpURLConnection.setRequestMethod("POST");
            httpURLConnection.setDoOutput(true);
            httpURLConnection.setRequestProperty("Content-Type", ServerCommon.MIME_JSON);
            httpURLConnection.setRequestProperty("alipayMiniMark", alipayMiniMark);
            httpURLConnection.setRequestProperty("User-Agent", getDynamicUA());
            httpURLConnection.setRequestProperty("x-release-type", "ONLINE");
            OutputStreamWriter outputStreamWriter = new OutputStreamWriter(httpURLConnection.getOutputStream(), StandardCharsets.UTF_8);
            try {
                outputStreamWriter.write(string);
                outputStreamWriter.close();
                int responseCode = httpURLConnection.getResponseCode();
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader((responseCode < 200 || responseCode > 299) ? httpURLConnection.getErrorStream() : httpURLConnection.getInputStream(), StandardCharsets.UTF_8));
                StringBuilder sb = new StringBuilder();
                while (true) {
                    String line = bufferedReader.readLine();
                    if (line == null) {
                        break;
                    }
                    sb.append(line);
                }
                bufferedReader.close();
                httpURLConnection.disconnect();
                JSONObject jSONObject2 = new JSONObject(sb.toString());
                if (jSONObject2.optInt("code") == 1) {
                    JSONObject jSONObjectOptJSONObject = jSONObject2.optJSONObject("data");
                    if (jSONObjectOptJSONObject == null) {
                        return null;
                    }
                    this.cachedToken = jSONObjectOptJSONObject.optString("token");
                    Log.record("登录成功✅Token已获取");
                    return this.cachedToken;
                }
                Log.error("登录接口❌报错(Code" + responseCode + "):" + ((Object) sb));
                return null;
            } catch (Throwable th) {
                try {
                    outputStreamWriter.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (Exception e) {
            Log.error("登录过程🚨抛出异常:" + e.getMessage());
            return null;
        }
    }

    public void report(final String str, final int i) {
        final int i2 = (this.requestsPerEgg + 1) * i;
        new Thread(new Runnable() { // from class: io.github.lazyimmortal.sesame.model.task.antGame.GameTask$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m125xd972cfb6(str, i, i2);
            }
        }).start();
    }

    /* JADX INFO: renamed from: lambda$report$0$io-github-lazyimmortal-sesame-model-task-antGame-GameTask, reason: not valid java name */
    /* synthetic */ void m125xd972cfb6(String str, int i, int i2) {
        String strLogin = login();
        this.cachedToken = strLogin;
        if (strLogin == null || strLogin.isEmpty()) {
            Log.error("无法获取⚠️有效的Token，放弃上报任务");
            return;
        }
        Log.record("开始执行🚀" + str + "游戏任务:目标" + i + "个蛋，需请求" + i2 + "次");
        for (int i3 = 1; i3 <= i2 && executeSingleReport(str, i3, i2); i3++) {
            if (i3 < i2) {
                try {
                    Thread.sleep(new Random().nextInt(2001) + 1000);
                } catch (InterruptedException unused) {
                    Thread.currentThread().interrupt();
                }
            }
        }
        Log.record("任务流程🏁运行结束");
    }

    public void reportExact(final String str, final int i) {
        if (i <= 0) {
            return;
        }
        new Thread(new Runnable() { // from class: io.github.lazyimmortal.sesame.model.task.antGame.GameTask$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m126x678d3b14(str, i);
            }
        }).start();
    }

    /* JADX INFO: renamed from: lambda$reportExact$1$io-github-lazyimmortal-sesame-model-task-antGame-GameTask, reason: not valid java name */
    /* synthetic */ void m126x678d3b14(String str, int i) {
        String strLogin = login();
        this.cachedToken = strLogin;
        if (strLogin == null || strLogin.isEmpty()) {
            Log.error("无法获取⚠️有效的Token，放弃上报任务");
            return;
        }
        Log.record("开始执行🚀" + str + "游戏任务:精确提交" + i + "次");
        for (int i2 = 1; i2 <= i && executeSingleReport(str, i2, i); i2++) {
            if (i2 < i) {
                try {
                    Thread.sleep(new Random().nextInt(2001) + 1000);
                } catch (InterruptedException unused) {
                    Thread.currentThread().interrupt();
                }
            }
        }
        Log.record("任务流程🏁运行结束");
    }

    private boolean executeSingleReport(String str, int i, int i2) {
        try {
            String alipayMiniMark = AlipayMiniMarkHelper.getAlipayMiniMark(this.appId, this.version);
            String str2 = System.currentTimeMillis() + "_" + (new Random().nextInt(90) + 10);
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("v", this.version);
            jSONObject.put("version", this.version);
            jSONObject.put("reqId", str2);
            jSONObject.put("gid", this.gid);
            jSONObject.put("action_code", this.action);
            jSONObject.put("action_finish_channel", this.channel);
            String string = jSONObject.toString();
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL("https://gamesapi2.aslk2018.com/v2/zfb/taskReport").openConnection();
            httpURLConnection.setRequestMethod("POST");
            httpURLConnection.setDoOutput(true);
            httpURLConnection.setRequestProperty("authorization", this.cachedToken);
            httpURLConnection.setRequestProperty("alipayMiniMark", alipayMiniMark);
            httpURLConnection.setRequestProperty("Content-Type", ServerCommon.MIME_JSON);
            httpURLConnection.setRequestProperty("User-Agent", getDynamicUA());
            httpURLConnection.setRequestProperty("x-release-type", "ONLINE");
            httpURLConnection.setRequestProperty("referer", "https://" + this.appId + ".hybrid.alipay-eco.com/" + this.appId + "/" + this.version + "/index.html");
            OutputStreamWriter outputStreamWriter = new OutputStreamWriter(httpURLConnection.getOutputStream(), StandardCharsets.UTF_8);
            try {
                outputStreamWriter.write(string);
                outputStreamWriter.close();
                int responseCode = httpURLConnection.getResponseCode();
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader((responseCode < 200 || responseCode > 299) ? httpURLConnection.getErrorStream() : httpURLConnection.getInputStream(), StandardCharsets.UTF_8));
                StringBuilder sb = new StringBuilder();
                while (true) {
                    String line = bufferedReader.readLine();
                    if (line == null) {
                        break;
                    }
                    sb.append(line);
                }
                bufferedReader.close();
                httpURLConnection.disconnect();
                if (new JSONObject(sb.toString()).optInt("code") != 1) {
                    Log.error("⚠️ 第 " + i + " 次上报业务失败 (HTTP " + responseCode + "): " + ((Object) sb));
                    return false;
                }
                if (i % this.requestsPerEgg == 0) {
                    Log.other("游戏进度📈" + str + "[" + i + "/" + i2 + "](达成" + (i / this.requestsPerEgg) + "个)");
                }
                return true;
            } catch (Throwable th) {
                try {
                    outputStreamWriter.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (IOException e) {
            Log.error("🚨 第 " + i + " 次请求发生网络崩溃:" + e);
            return false;
        } catch (Exception e2) {
            Log.error("🚨 第 " + i + " 次请求发生异常:" + e2);
            return false;
        }
    }

    private String getDynamicUA() {
        String property = System.getProperty("http.agent");
        if (property == null || property.isEmpty()) {
            property = "Mozilla/5.0 (Linux; Android 11)";
        }
        String strValueOf = String.valueOf(ApplicationHook.getAlipayVersion());
        return property + " NebulaSDK/1.8.100112 Nebula AliApp(AP/" + strValueOf + ") AlipayClient/" + strValueOf;
    }
}
