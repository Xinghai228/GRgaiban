package io.github.lazyimmortal.sesame.model.task.antGame;

import android.os.Build;
import android.util.Base64;
import androidx.core.app.NotificationCompat;
import fi.iki.elonen.NanoHTTPD;
import io.github.lazyimmortal.sesame.hook.AlipayMiniMarkHelper;
import io.github.lazyimmortal.sesame.hook.ApplicationHook;
import io.github.lazyimmortal.sesame.hook.AuthCodeHelper;
import io.github.lazyimmortal.sesame.hook.ServerCommon;
import io.github.lazyimmortal.sesame.util.Log;
import io.github.lazyimmortal.sesame.util.MessageUtil;
import io.github.lazyimmortal.sesame.util.idMap.UserIdMap;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Random;
import java.util.UUID;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;
import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;
import kotlin.jvm.internal.LongCompanionObject;
import kotlin.text.Typography;
import okhttp3.internal.connection.RealConnection;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class MiniGameVendorReporter {
    private static volatile String DEVICE_UUID = null;
    private static final Map<String, String[][]> EXTRA_KEYWORDS;
    private static final String FARM_CHANNEL = "nongchangleyuan";
    private static final String FOREST_CHANNEL = "lianyun_senlin_leyuan";
    private static final String GAME_TASK_CHANNEL = "zmxyzms_game_task";
    private static final String[][] LEARN_ENDPOINTS;
    private static final byte[] QMHD_DES_KEY;
    private static final Random RANDOM = new Random();
    private static final Map<String, Vendor> SDK_VENDORS;
    private static final String ZHUANGYUAN_CHANNEL = "zhuangyuan";

    private enum Vendor {
        HALIGAME,
        DIANWANSHIDAI,
        YYXX,
        NEBULA,
        CPCHX,
        HNYC,
        DIANLI100,
        D3GAMES,
        TOMATO,
        GAMESAPI2,
        RAYIANTWAY,
        FLOURISH,
        DEVOURAD,
        MICROFUN,
        QUFANG,
        QMHD87,
        LUMOSFUN
    }

    static {
        HashMap map = new HashMap();
        SDK_VENDORS = map;
        HashMap map2 = new HashMap();
        EXTRA_KEYWORDS = map2;
        map.put("haligame", Vendor.HALIGAME);
        map.put("dianwanshidai", Vendor.DIANWANSHIDAI);
        map.put("yyxxgame", Vendor.YYXX);
        map.put("nebula737", Vendor.NEBULA);
        map.put("cpchxapi", Vendor.CPCHX);
        map.put("hnycgames", Vendor.HNYC);
        map.put("dianli100", Vendor.DIANLI100);
        map.put("d3games", Vendor.D3GAMES);
        map.put("tomato", Vendor.TOMATO);
        map.put("aslk2018", Vendor.GAMESAPI2);
        map.put("raiyantway", Vendor.RAYIANTWAY);
        map.put("flourish", Vendor.FLOURISH);
        map.put("devourad", Vendor.DEVOURAD);
        map.put("microfun", Vendor.MICROFUN);
        map.put("qufang", Vendor.QUFANG);
        map.put("qmhd87", Vendor.QMHD87);
        map.put("lumosfun", Vendor.LUMOSFUN);
        map2.put("2021005139650112", new String[][]{new String[]{"消除", "dgls_game_xiaochu_every_5"}, new String[]{"道具", "dgls_game_daoju_every_1"}, new String[]{"", "dgls_game_level_every_1"}});
        map2.put("2021005132680209", new String[][]{new String[]{"", "zgwhx_game_level_every_1"}});
        map2.put("2021004122696780", new String[][]{new String[]{"伏魔塔", "qyj_game_fengmoguta_every_1"}, new String[]{"九幽", "qyj_game_jiuyoufuben_every_1"}, new String[]{"通关", "qyj_game_pass_level_every_3"}, new String[]{"任务", "qyj_game_mission_every_1"}, new String[]{"挑战", "qyj_game_mission_every_1"}, new String[]{"关卡", "qyj_game_level_every_1"}, new String[]{"升级", "qyj_game_level_every_1"}, new String[]{"", "qyj_game_level_every_1"}});
        map2.put("2060170000359285", new String[][]{new String[]{"技能", "yblb_game_jineng_every_1"}, new String[]{"许愿", "yblb_game_gaojixuyuan_every_1"}, new String[]{"", "yblb_game_pass_every_1"}});
        LEARN_ENDPOINTS = new String[][]{new String[]{"haligame", "https://{appId}.hybrid.alipay-eco.com/get_openid.php", ""}, new String[]{"dianwanshidai", "https://platformv2.dianwanshidai.com/user/login", "https://platformv2.dianwanshidai.com/ZfbSop/behavior"}, new String[]{"yyxxgame", "", "https://fumodasapi.yyxxgame.com/alipay/alipay_game_report"}, new String[]{"nebula737", "https://gate-nebula737.com/account/user/detail", "https://feiyu.nebula737.com/behavior/report"}, new String[]{"cpchxapi", "https://api.cpchxapi.com/auth/login-ali", "https://api.cpchxapi.com/analytics/ali-report"}, new String[]{"hnycgames", "https://h5sdk.hnycgames.cn/Channel/login/yxtGame/{name}/yxtChannel/myxyx/yxtSubChannel/myxyx", ""}, new String[]{"dianli100", "https://farm.dianli100.com/farm/openid", "https://farm.dianli100.com/farm/action/report"}, new String[]{"d3games", "https://api.d3games.com/api/login", "https://api.d3games.com/ali/incrementgameaction/submit"}, new String[]{"tomato", "https://merge-game.37.com.cn/init/v2/sdk/initDevices", "https://merge-game.37.com.cn/merge/v3/login/inland/zfbMiniGame"}, new String[]{"gamesapi2", "https://gamesapi2.aslk2018.com/v2/game/login", "https://gamesapi2.aslk2018.com/v2/zfb/taskReport"}, new String[]{"raiyantway", "https://cbqta.rayiantway.com:8525/MiniGameServer/minigame/login.do", "https://cbqta.rayiantway.com:8525/MiniGameServer/alipay/reportGameAction"}};
        QMHD_DES_KEY = "cTawb7/c".getBytes(StandardCharsets.UTF_8);
    }

    private static boolean d3gamesEnabled(String str) {
        return (MiniGameTaskTable.param(str, "appKey").isEmpty() || MiniGameTaskTable.param(str, "gameId").isEmpty()) ? false : true;
    }

    private static final class Meta {
        final String[][] actions;
        final String appKey;
        String channel;
        final String channelId;
        final String companyId;
        final String gcid;
        final String name;
        final String nebulaAppId;
        final String oid;
        final Vendor vendor;
        final String version;

        Meta(String str, String str2, Vendor vendor, String str3, String[][] strArr, String str4, String str5, String str6, String str7, String str8, String str9) {
            this.name = str;
            this.version = str2;
            this.vendor = vendor;
            this.channel = str3;
            this.actions = strArr;
            this.oid = str4;
            this.gcid = str5;
            this.appKey = str6;
            this.nebulaAppId = str7;
            this.companyId = str8;
            this.channelId = str9;
        }
    }

    private MiniGameVendorReporter() {
    }

    public static boolean supports(String str) {
        Vendor vendor = SDK_VENDORS.get(MiniGameTaskTable.sdk(str));
        if (vendor == null) {
            return false;
        }
        if (vendor == Vendor.D3GAMES) {
            return d3gamesEnabled(str);
        }
        if (vendor == Vendor.GAMESAPI2) {
            return !MiniGameTaskTable.param(str, "gid").isEmpty();
        }
        return true;
    }

    public static String sdkName(String str) {
        return MiniGameTaskTable.sdk(str);
    }

    public static String vendorName(String str) {
        Vendor vendor = SDK_VENDORS.get(MiniGameTaskTable.sdk(str));
        return vendor == null ? "" : vendor.name();
    }

    private static Meta metaOf(String str) {
        Vendor vendor;
        String str2;
        MiniGameTaskTable.Game game = MiniGameTaskTable.get(str);
        if (game == null || (vendor = SDK_VENDORS.get(game.sdk)) == null) {
            return null;
        }
        if (vendor == Vendor.D3GAMES && !d3gamesEnabled(str)) {
            return null;
        }
        if (vendor == Vendor.GAMESAPI2 && MiniGameTaskTable.param(str, "gid").isEmpty()) {
            return null;
        }
        switch (AnonymousClass1.$SwitchMap$io$github$lazyimmortal$sesame$model$task$antGame$MiniGameVendorReporter$Vendor[vendor.ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
                str2 = FOREST_CHANNEL;
                break;
            case 10:
            case 11:
            case 12:
                str2 = ZHUANGYUAN_CHANNEL;
                break;
            case 13:
            case 14:
                str2 = FARM_CHANNEL;
                break;
            default:
                str2 = GAME_TASK_CHANNEL;
                break;
        }
        String str3 = str2;
        String strParam = MiniGameTaskTable.param(str, "bgid");
        if (strParam.isEmpty()) {
            strParam = MiniGameTaskTable.param(str, "companyId");
        }
        return new Meta(game.name, game.version, vendor, str3, EXTRA_KEYWORDS.get(str), MiniGameTaskTable.param(str, "oid"), MiniGameTaskTable.param(str, "gcid"), firstParam(str, "nbAppKey", "appKey", "secret"), MiniGameTaskTable.param(str, "nebulaAppId"), strParam, MiniGameTaskTable.param(str, "channelId"));
    }

    /* JADX INFO: renamed from: io.github.lazyimmortal.sesame.model.task.antGame.MiniGameVendorReporter$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$io$github$lazyimmortal$sesame$model$task$antGame$MiniGameVendorReporter$Vendor;

        static {
            int[] iArr = new int[Vendor.values().length];
            $SwitchMap$io$github$lazyimmortal$sesame$model$task$antGame$MiniGameVendorReporter$Vendor = iArr;
            try {
                iArr[Vendor.YYXX.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$io$github$lazyimmortal$sesame$model$task$antGame$MiniGameVendorReporter$Vendor[Vendor.NEBULA.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$io$github$lazyimmortal$sesame$model$task$antGame$MiniGameVendorReporter$Vendor[Vendor.CPCHX.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$io$github$lazyimmortal$sesame$model$task$antGame$MiniGameVendorReporter$Vendor[Vendor.HNYC.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$io$github$lazyimmortal$sesame$model$task$antGame$MiniGameVendorReporter$Vendor[Vendor.D3GAMES.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$io$github$lazyimmortal$sesame$model$task$antGame$MiniGameVendorReporter$Vendor[Vendor.TOMATO.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$io$github$lazyimmortal$sesame$model$task$antGame$MiniGameVendorReporter$Vendor[Vendor.FLOURISH.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$io$github$lazyimmortal$sesame$model$task$antGame$MiniGameVendorReporter$Vendor[Vendor.QUFANG.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$io$github$lazyimmortal$sesame$model$task$antGame$MiniGameVendorReporter$Vendor[Vendor.LUMOSFUN.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$io$github$lazyimmortal$sesame$model$task$antGame$MiniGameVendorReporter$Vendor[Vendor.DIANLI100.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$io$github$lazyimmortal$sesame$model$task$antGame$MiniGameVendorReporter$Vendor[Vendor.DEVOURAD.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$io$github$lazyimmortal$sesame$model$task$antGame$MiniGameVendorReporter$Vendor[Vendor.QMHD87.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$io$github$lazyimmortal$sesame$model$task$antGame$MiniGameVendorReporter$Vendor[Vendor.RAYIANTWAY.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$io$github$lazyimmortal$sesame$model$task$antGame$MiniGameVendorReporter$Vendor[Vendor.MICROFUN.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                $SwitchMap$io$github$lazyimmortal$sesame$model$task$antGame$MiniGameVendorReporter$Vendor[Vendor.HALIGAME.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                $SwitchMap$io$github$lazyimmortal$sesame$model$task$antGame$MiniGameVendorReporter$Vendor[Vendor.DIANWANSHIDAI.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                $SwitchMap$io$github$lazyimmortal$sesame$model$task$antGame$MiniGameVendorReporter$Vendor[Vendor.GAMESAPI2.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
        }
    }

    private static String firstParam(String str, String... strArr) {
        for (String str2 : strArr) {
            String strParam = MiniGameTaskTable.param(str, str2);
            if (!strParam.isEmpty()) {
                return strParam;
            }
        }
        return "";
    }

    public static String appVersion(String str) {
        return MiniGameTaskTable.version(str);
    }

    private static void learnMode(String str, String str2, String str3, String str4) {
        try {
            String authCode = AuthCodeHelper.getAuthCode(str);
            if (authCode != null && !authCode.isEmpty()) {
                String strVersion = MiniGameTaskTable.version(str);
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                linkedHashMap.put("alipayminimark", AlipayMiniMarkHelper.getAlipayMiniMark(str, strVersion));
                linkedHashMap.put("x-release-type", "ONLINE");
                linkedHashMap.put("referer", "https://" + str + ".hybrid.alipay-eco.com/" + str + "/" + strVersion + "/index.html");
                linkedHashMap.put("user-agent", dynamicUa());
                Log.debug("游戏任务🔍学习模式[" + str2 + "]#appId=" + str + "，version=" + strVersion + "，channel=" + str3 + "，action=" + str4 + "，开始探测已知族端点");
                for (String[] strArr : LEARN_ENDPOINTS) {
                    String str5 = strArr[0];
                    String strReplace = strArr[1].replace("{appId}", str).replace("{name}", str2);
                    String strReplace2 = strArr[2].replace("{appId}", str).replace("{name}", str2);
                    if (!strReplace.isEmpty()) {
                        probe(str5, strReplace, authCode, linkedHashMap);
                    }
                    if (!strReplace2.isEmpty()) {
                        probe(str5, strReplace2, authCode, linkedHashMap);
                    }
                }
                return;
            }
            Log.debug("游戏任务🔍学习模式[" + str2 + "]#取不到授权码，跳过探测");
        } catch (Throwable th) {
            Log.debug("游戏任务🔍学习模式异常[" + str2 + "]: " + th);
        }
    }

    private static void probe(String str, String str2, String str3, Map<String, String> map) {
        try {
            String str4 = str2 + (str2.contains("?") ? "&" : "?") + "authCode=" + str3;
            Log.debug("游戏任务🔍探测[" + str + "] GET " + str4);
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str4).openConnection();
            httpURLConnection.setConnectTimeout(NanoHTTPD.SOCKET_READ_TIMEOUT);
            httpURLConnection.setReadTimeout(NanoHTTPD.SOCKET_READ_TIMEOUT);
            httpURLConnection.setRequestMethod("GET");
            for (Map.Entry<String, String> entry : map.entrySet()) {
                httpURLConnection.setRequestProperty(entry.getKey(), entry.getValue());
            }
            int responseCode = httpURLConnection.getResponseCode();
            StringBuilder sb = new StringBuilder();
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(responseCode >= 400 ? httpURLConnection.getErrorStream() : httpURLConnection.getInputStream(), StandardCharsets.UTF_8));
            while (true) {
                try {
                    String line = bufferedReader.readLine();
                    if (line == null || sb.length() >= 500) {
                        break;
                    } else {
                        sb.append(line);
                    }
                } catch (Throwable th) {
                    try {
                        bufferedReader.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
                Log.debug("游戏任务🔍探测[" + str + "]失败: " + th.getMessage());
            }
            bufferedReader.close();
            httpURLConnection.disconnect();
            Log.debug("游戏任务🔍探测[" + str + "] HTTP " + responseCode + "，响应=" + (sb.length() > 500 ? sb.substring(0, 500) + "..." : sb.toString()));
        } catch (Throwable th3) {
            Log.debug("游戏任务🔍探测[" + str + "]失败: " + th3.getMessage());
        }
    }

    public static String resolveAction(String str, String str2) {
        Meta metaMetaOf = metaOf(str);
        return metaMetaOf == null ? "" : pickAction(metaMetaOf, str, str2);
    }

    public static boolean report(String str, String str2, String str3, String str4, int i, String str5) {
        String str6;
        boolean zReportYyxx;
        String str7;
        String str8 = str;
        Meta metaMetaOf = metaOf(str);
        if (metaMetaOf == null) {
            learnMode(str, str2, str3, str4);
            return false;
        }
        if (str3 != null && !str3.isEmpty()) {
            metaMetaOf.channel = str3;
        }
        String strPickAction = (str4 == null || str4.isEmpty()) ? pickAction(metaMetaOf, str8, str2) : str4;
        if (strPickAction.isEmpty()) {
            return false;
        }
        Log.debug("游戏任务 厂商上报[" + metaMetaOf.name + "]#vendor=" + metaMetaOf.vendor + "，channel=" + metaMetaOf.channel + "，action=" + strPickAction + "，times=" + i + "（登录与上报的完整链接/请求体/响应见下方 厂商请求/厂商响应）");
        try {
            String authCode = AuthCodeHelper.getAuthCode(str);
            if (authCode != null && !authCode.isEmpty()) {
                Map<String, String> mapBaseHeaders = baseHeaders(metaMetaOf, str8);
                int iEveryOf = MiniGameTaskTable.everyOf(str8, strPickAction);
                int i2 = 1;
                int iMax = Math.max(1, i);
                StringBuilder sb = new StringBuilder("游戏任务🎮厂商上报[");
                sb.append(metaMetaOf.name);
                sb.append("]任务列表[");
                sb.append(MessageUtil.getTaskListName(str5));
                sb.append("]，厂商=");
                sb.append(metaMetaOf.vendor);
                sb.append("，次数=");
                sb.append(iMax);
                if (iEveryOf > 1) {
                    str6 = "（每次上报=" + iEveryOf + "次游戏行为）";
                } else {
                    str6 = "";
                }
                sb.append(str6);
                sb.append("，开始登录并提交");
                MessageUtil.logByTaskList(str5, sb.toString());
                int i3 = 0;
                boolean z = false;
                while (i3 < iMax) {
                    if (iMax > i2) {
                        Log.debug("游戏任务 厂商上报[" + metaMetaOf.name + "]#第 " + (i3 + 1) + "/" + iMax + " 次");
                    }
                    switch (AnonymousClass1.$SwitchMap$io$github$lazyimmortal$sesame$model$task$antGame$MiniGameVendorReporter$Vendor[metaMetaOf.vendor.ordinal()]) {
                        case 1:
                            zReportYyxx = reportYyxx(metaMetaOf, str8, strPickAction, mapBaseHeaders);
                            break;
                        case 2:
                            zReportYyxx = reportNebula(metaMetaOf, strPickAction, authCode, mapBaseHeaders);
                            break;
                        case 3:
                            zReportYyxx = reportCpchx(metaMetaOf, str8, strPickAction, authCode, mapBaseHeaders);
                            break;
                        case 4:
                            zReportYyxx = reportHnyc(metaMetaOf, strPickAction, authCode, mapBaseHeaders);
                            break;
                        case 5:
                            zReportYyxx = reportD3games(metaMetaOf, str8, strPickAction, authCode, mapBaseHeaders);
                            break;
                        case 6:
                            zReportYyxx = reportTomato(metaMetaOf, str8, strPickAction, authCode, mapBaseHeaders);
                            break;
                        case 7:
                            zReportYyxx = reportFlourish(metaMetaOf, str8, strPickAction, authCode, mapBaseHeaders);
                            break;
                        case 8:
                            zReportYyxx = reportQufang(metaMetaOf, str8, strPickAction, authCode, mapBaseHeaders);
                            break;
                        case 9:
                            zReportYyxx = reportLumosfun(metaMetaOf, str8, strPickAction, authCode, mapBaseHeaders);
                            break;
                        case 10:
                            zReportYyxx = reportDianli100(metaMetaOf, str8, strPickAction, authCode, mapBaseHeaders);
                            break;
                        case 11:
                            zReportYyxx = reportDevourad(metaMetaOf, str8, strPickAction, authCode, mapBaseHeaders);
                            break;
                        case 12:
                            zReportYyxx = reportQmhd87(metaMetaOf, str8, strPickAction, authCode, mapBaseHeaders);
                            break;
                        case 13:
                            zReportYyxx = reportRaiyantway(metaMetaOf, str8, strPickAction, authCode, mapBaseHeaders);
                            break;
                        case 14:
                            zReportYyxx = reportMicrofun(metaMetaOf, str8, strPickAction, authCode, mapBaseHeaders);
                            break;
                        case 15:
                            zReportYyxx = reportHaligame(metaMetaOf, strPickAction, authCode, mapBaseHeaders);
                            break;
                        case 16:
                            zReportYyxx = reportDianwanshidai(metaMetaOf, str8, strPickAction, authCode, mapBaseHeaders);
                            break;
                        case 17:
                            zReportYyxx = reportGamesapi2(metaMetaOf, str8, strPickAction, authCode, mapBaseHeaders);
                            break;
                        default:
                            return z;
                    }
                    z |= zReportYyxx;
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("游戏任务🎮厂商上报[");
                    sb2.append(metaMetaOf.name);
                    sb2.append("]");
                    if (iMax > 1) {
                        str7 = " 第" + (i3 + 1) + "/" + iMax + "次";
                    } else {
                        str7 = "";
                    }
                    sb2.append(str7);
                    sb2.append(zReportYyxx ? " 成功" : " 失败（登录/提交详情见 debug 日志）");
                    MessageUtil.logByTaskList(str5, sb2.toString());
                    if (!zReportYyxx) {
                        return z;
                    }
                    i3++;
                    if (i3 < iMax) {
                        Thread.sleep(500L);
                    }
                    str8 = str;
                    i2 = 1;
                }
                return z;
            }
            Log.debug("游戏任务⏭️[" + metaMetaOf.name + "]#取不到授权码，跳过厂商上报");
            MessageUtil.logByTaskList(str5, "游戏任务⏭️[" + metaMetaOf.name + "]#取不到授权码，跳过厂商上报");
            return false;
        } catch (Throwable th) {
            Log.debug("游戏任务 厂商上报异常[" + metaMetaOf.name + "]: " + th);
            MessageUtil.logByTaskList(str5, "游戏任务🎮厂商上报[" + metaMetaOf.name + "] 异常: " + th);
            return false;
        }
    }

    private static String pickAction(Meta meta, String str, String str2) {
        if (str2 == null) {
            str2 = "";
        }
        for (MiniGameTaskTable.Action action : MiniGameTaskTable.actions(str)) {
            if (action.matches(str2)) {
                return action.code;
            }
        }
        if (meta.actions != null) {
            for (String[] strArr : meta.actions) {
                if (strArr[0].isEmpty() || str2.contains(strArr[0])) {
                    return strArr[1];
                }
            }
        }
        String strMatchByBehavior = matchByBehavior(str, str2);
        if (!strMatchByBehavior.isEmpty()) {
            return strMatchByBehavior;
        }
        if (MiniGameTaskTable.actions(str).isEmpty()) {
            return "";
        }
        return MiniGameTaskTable.actions(str).get(0).code;
    }

    private static String matchByBehavior(String str, String str2) {
        String[][] strArr = {new String[]{"闯关|通关|通过|过关|胜利|获胜|击败|挑战", "_pass|_level|_win|_mission|_boss|_tianguan"}, new String[]{"消除|消消", "_xiaochu"}, new String[]{"合成|合并", "_hecheng|_synthetise|_merge"}, new String[]{"订单|居民|顾客", "_dingdan|_order|_gukedan"}, new String[]{"开车|车辆|辆车", "_kaiche"}, new String[]{"对局|对战|比赛", "_duiju|_match"}, new String[]{"宝箱|开箱", "_baoxiang"}, new String[]{"道具", "_daoju"}, new String[]{"技能", "_jineng"}, new String[]{"建造|建筑", "_jianzhu|_jianzao"}, new String[]{"升级|升到", "_shengji"}, new String[]{"体力", "_tili"}, new String[]{"箭头", "_jiantou"}, new String[]{"配对|匹配", "_pipei"}, new String[]{"家具", "_jiaju"}, new String[]{"主线", "_zhuxian"}, new String[]{"日常", "_richang"}, new String[]{"招募", "_zhaomu"}, new String[]{"游历", "_take"}, new String[]{"研发", "_gcyf"}, new String[]{"伙伴", "_hbts"}, new String[]{"任务", "_rw|_renwu"}};
        for (int i = 0; i < 22; i++) {
            String[] strArr2 = strArr[i];
            if (containsAny(str2, strArr2[0])) {
                for (MiniGameTaskTable.Action action : MiniGameTaskTable.actions(str)) {
                    for (String str3 : strArr2[1].split("\\|")) {
                        if (action.code.contains(str3)) {
                            return action.code;
                        }
                    }
                }
            }
        }
        return "";
    }

    private static boolean containsAny(String str, String str2) {
        for (String str3 : str2.split("\\|")) {
            if (!str3.isEmpty() && str.contains(str3)) {
                return true;
            }
        }
        return false;
    }

    private static boolean reportGamesapi2(Meta meta, String str, String str2, String str3, Map<String, String> map) {
        try {
            String strParam = MiniGameTaskTable.param(str, "gid");
            if (strParam.isEmpty()) {
                Log.debug("游戏任务 厂商上报 缺 gid[" + meta.name + "]，无法走 gamesapi2");
                return false;
            }
            String strParam2 = MiniGameTaskTable.param(str, "v");
            if (strParam2.isEmpty()) {
                strParam2 = meta.version;
            }
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("v", strParam2);
            jSONObject.put("code", str3);
            jSONObject.put("pf", "zfb");
            StringBuilder sb = new StringBuilder();
            String str4 = strParam2;
            sb.append(System.currentTimeMillis());
            sb.append("_");
            Random random = RANDOM;
            sb.append(random.nextInt(350) + 1);
            jSONObject.put("reqId", sb.toString());
            jSONObject.put("gid", strParam);
            jSONObject.put("version", meta.version);
            LinkedHashMap linkedHashMap = new LinkedHashMap(map);
            linkedHashMap.put("content-type", ServerCommon.MIME_JSON);
            String strPost = post("https://gamesapi2.aslk2018.com/v2/game/login", jSONObject.toString(), linkedHashMap);
            JSONObject jSONObject2 = new JSONObject(strPost);
            JSONObject jSONObjectOptJSONObject = jSONObject2.optJSONObject("data");
            String strOptString = jSONObjectOptJSONObject == null ? "" : jSONObjectOptJSONObject.optString("token");
            if (jSONObject2.optInt("code") == 1 && !strOptString.isEmpty()) {
                JSONObject jSONObject3 = new JSONObject();
                jSONObject3.put("v", str4);
                jSONObject3.put("version", meta.version);
                jSONObject3.put("reqId", System.currentTimeMillis() + "_" + (random.nextInt(90) + 10));
                jSONObject3.put("gid", strParam);
                jSONObject3.put("action_code", str2);
                jSONObject3.put("action_finish_channel", meta.channel);
                LinkedHashMap linkedHashMap2 = new LinkedHashMap(map);
                linkedHashMap2.put("content-type", ServerCommon.MIME_JSON);
                linkedHashMap2.put("authorization", strOptString);
                String strPost2 = post("https://gamesapi2.aslk2018.com/v2/zfb/taskReport", jSONObject3.toString(), linkedHashMap2);
                if (new JSONObject(strPost2).optInt("code") != 1) {
                    Log.record("游戏任务 厂商上报[" + meta.name + "] gamesapi2 拒绝: " + strPost2);
                    return false;
                }
                Log.record("游戏任务 厂商上报[" + meta.name + "] action=" + str2 + " channel=" + meta.channel + " 成功");
                return true;
            }
            Log.record("游戏任务 gamesapi2 登录失败[" + meta.name + "] " + strPost);
            return false;
        } catch (Throwable th) {
            Log.error("游戏任务 厂商上报 gamesapi2 异常: " + th);
            return false;
        }
    }

    private static Map<String, String> baseHeaders(Meta meta, String str) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        String alipayMiniMark = AlipayMiniMarkHelper.getAlipayMiniMark(str, meta.version);
        linkedHashMap.put("alipayminimark", alipayMiniMark);
        Log.debug("游戏任务 厂商上报 alipayminimark appId=" + str + " version=" + meta.version + " len=" + alipayMiniMark.length() + " mark=" + alipayMiniMark);
        linkedHashMap.put("x-release-type", "ONLINE");
        linkedHashMap.put("referer", "https://" + str + ".hybrid.alipay-eco.com/" + str + "/" + meta.version + "/index.html");
        linkedHashMap.put("user-agent", dynamicUa());
        return linkedHashMap;
    }

    private static String dynamicUa() {
        String versionString;
        String property = System.getProperty("http.agent");
        if (property == null || property.isEmpty()) {
            property = "Mozilla/5.0 (Linux; Android " + Build.VERSION.RELEASE + ")";
        }
        try {
            versionString = ApplicationHook.getAlipayVersion().getVersionString();
        } catch (Throwable unused) {
            versionString = "";
        }
        return property + " NebulaSDK/1.8.100112 Nebula AliApp(AP/" + versionString + ") AlipayClient/" + versionString;
    }

    private static boolean reportHaligame(Meta meta, String str, String str2, Map<String, String> map) throws Exception {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("auth_code", str2);
        LinkedHashMap linkedHashMap = new LinkedHashMap(map);
        linkedHashMap.put("content-type", "application/json; charset=utf-8");
        String strPost = post("https://zf.haligame.com/ajax/get_openid.php", jSONObject.toString(), linkedHashMap);
        String strFindString = findString(strPost, "open_id", "openid", "openId");
        if (strFindString.isEmpty()) {
            Log.debug("游戏任务⏭️[" + meta.name + "]#haligame 未取到 open_id，响应=" + strPost);
            return false;
        }
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put("action_code", str);
        jSONObject2.put("action_finish_channel", meta.channel);
        jSONObject2.put("open_id", strFindString);
        LinkedHashMap linkedHashMap2 = new LinkedHashMap(map);
        linkedHashMap2.put("content-type", "application/x-www-form-urlencoded");
        boolean zContains = post("https://zf.haligame.com/ajax/user_action_submit.php", jSONObject2.toString(), linkedHashMap2).contains("\"code\":\"10000\"");
        StringBuilder sb = new StringBuilder("游戏任务🎮厂商上报[");
        sb.append(meta.name);
        sb.append("]#");
        sb.append(str);
        sb.append(" 结果=");
        sb.append(zContains ? "成功" : "失败");
        Log.debug(sb.toString());
        return zContains;
    }

    private static boolean reportDianwanshidai(Meta meta, String str, String str2, String str3, Map<String, String> map) throws Exception {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("openid", "");
        jSONObject.put("code", str3);
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put("channel", "");
        jSONObject.put("query", jSONObject2);
        LinkedHashMap linkedHashMap = new LinkedHashMap(map);
        linkedHashMap.put("content-type", "application/json; charset=utf-8");
        linkedHashMap.put("appid", str);
        linkedHashMap.put("app-id", str);
        linkedHashMap.put("bgid", meta.companyId);
        String strPost = post("https://platformv2.dianwanshidai.com/api_v2/v1/user/login", jSONObject.toString(), linkedHashMap);
        String strFindString = findString(strPost, "openid", "open_id", "openId");
        if (strFindString.isEmpty()) {
            Log.debug("游戏任务⏭️[" + meta.name + "]#dianwanshidai 未取到 openid，响应=" + strPost);
            return false;
        }
        JSONObject jSONObject3 = new JSONObject();
        jSONObject3.put("openid", strFindString);
        jSONObject3.put("action_code", str2);
        jSONObject3.put("channel", meta.channel);
        boolean zContains = post("https://platformv2.dianwanshidai.com/api_v2/v1/ZfbSop/behavior", jSONObject3.toString(), linkedHashMap).contains("\"code\":200");
        StringBuilder sb = new StringBuilder("游戏任务🎮厂商上报[");
        sb.append(meta.name);
        sb.append("]#");
        sb.append(str2);
        sb.append(" 结果=");
        sb.append(zContains ? "成功" : "失败");
        Log.debug(sb.toString());
        return zContains;
    }

    private static boolean reportYyxx(Meta meta, String str, String str2, Map<String, String> map) throws Exception {
        String userId = ApplicationHook.getUserId();
        if (userId == null || userId.isEmpty()) {
            userId = UserIdMap.getCurrentUid();
        }
        if (userId == null || userId.isEmpty()) {
            Log.debug("游戏任务🎮厂商上报[" + meta.name + "]#" + str2 + "，跳过：未取到支付宝 UID");
            return false;
        }
        Log.debug("游戏任务🎮厂商上报[" + meta.name + "]#user_id=" + userId + "（len=" + userId.length() + "），oid=" + meta.oid + "，gcid=" + meta.gcid + "，channel=" + meta.channel);
        long jCurrentTimeMillis = System.currentTimeMillis();
        String str3 = "action_code=" + str2 + "&action_finish_channel=" + meta.channel + "&gcid=" + meta.gcid + "&oid=" + meta.oid + "&user_id=" + userId + "&time=" + jCurrentTimeMillis + "undefined";
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("user_id", userId);
        linkedHashMap.put("action_code", str2);
        linkedHashMap.put("action_finish_channel", meta.channel);
        linkedHashMap.put("oid", meta.oid);
        linkedHashMap.put("gcid", meta.gcid);
        linkedHashMap.put("sign", md5(str3));
        linkedHashMap.put("time", String.valueOf(jCurrentTimeMillis));
        String strParam = MiniGameTaskTable.param(str, "reportHost");
        if (strParam.isEmpty()) {
            strParam = "fumodasapi.yyxxgame.com";
        }
        String str4 = "https://" + strParam + "/alipay/alipay_game_report";
        String strPostForm = postForm(str4, linkedHashMap, map);
        boolean zContains = strPostForm.contains("\"code\":1");
        if (zContains) {
            Log.debug("游戏任务🎮厂商上报[" + meta.name + "]#" + str2 + " 结果=成功");
        } else {
            Log.debug("游戏任务🎮厂商上报[" + meta.name + "]#" + str2 + " 结果=失败\n请求: POST " + str4 + "\n参数: " + linkedHashMap + "\n响应: " + strPostForm);
        }
        return zContains;
    }

    private static boolean reportNebula(Meta meta, String str, String str2, Map<String, String> map) throws Exception {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("app_id", meta.nebulaAppId);
        linkedHashMap.put("channel_id", meta.channelId);
        linkedHashMap.put("code", str2);
        linkedHashMap.put("company_id", meta.companyId);
        linkedHashMap.put("data_version", "1");
        linkedHashMap.put("device_id", randomHex(32));
        linkedHashMap.put("device_type", Build.MODEL);
        linkedHashMap.put("extend", "");
        linkedHashMap.put("game_version", "1.6.13");
        linkedHashMap.put("is_debug", "0");
        linkedHashMap.put("network_mode", "0");
        linkedHashMap.put("open_id", "");
        linkedHashMap.put("os", "1");
        linkedHashMap.put("os_version", Build.VERSION.RELEASE);
        linkedHashMap.put("passport_code", "alipayminigame");
        linkedHashMap.put("payment_code", "alipayminigame");
        linkedHashMap.put("sdk_version", "3.4.35");
        linkedHashMap.put("sign_nonce", randomHexUpper(8));
        linkedHashMap.put("sign_type", "md5");
        linkedHashMap.put("sign_version", "1.0");
        linkedHashMap.put("startup_id", randomHex(32));
        linkedHashMap.put("timestamp", String.valueOf(System.currentTimeMillis() / 1000));
        linkedHashMap.put("union_id", "");
        linkedHashMap.put("user_id", "0");
        JSONObject jSONObject = new JSONObject();
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            jSONObject.put((String) entry.getKey(), entry.getValue());
        }
        jSONObject.put("sign", md5(encodedSorted(linkedHashMap) + "&" + meta.appKey));
        LinkedHashMap linkedHashMap2 = new LinkedHashMap(map);
        linkedHashMap2.put("content-type", "application/json; charset=utf-8");
        String strPost = post("https://gate-nebula.737.com/account/user/detail", jSONObject.toString(), linkedHashMap2);
        String strFindString = findString(strPost, "open_id", "openId");
        String strFindString2 = findString(strPost, "user_id", "userId");
        if (strFindString.isEmpty() || strFindString2.isEmpty()) {
            Log.debug("游戏任务⏭️[" + meta.name + "]#nebula 登录未取到 open_id/user_id，响应=" + strPost);
            return false;
        }
        LinkedHashMap linkedHashMap3 = new LinkedHashMap();
        linkedHashMap3.put("action_code", str);
        linkedHashMap3.put("action_finish_channel", meta.channel);
        linkedHashMap3.put("action_finish_date", new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.CHINA).format(new Date()));
        linkedHashMap3.put("app_id", meta.nebulaAppId);
        linkedHashMap3.put("channel_id", meta.channelId);
        linkedHashMap3.put("open_id", strFindString);
        linkedHashMap3.put("out_biz_no", randomHex(32));
        linkedHashMap3.put("user_id", strFindString2);
        JSONObject jSONObject2 = new JSONObject();
        for (Map.Entry entry2 : linkedHashMap3.entrySet()) {
            jSONObject2.put((String) entry2.getKey(), entry2.getValue());
            if ("channel_id".equals(entry2.getKey())) {
                jSONObject2.put((String) entry2.getKey(), Integer.parseInt((String) entry2.getValue()));
            }
        }
        jSONObject2.put("sign", md5(encodedSorted(linkedHashMap3) + "&" + meta.appKey));
        boolean zContains = post("https://api-combine.feiyu.com/v1/alipayMiniGame/behavior/report", jSONObject2.toString(), linkedHashMap2).contains("\"code\":2000");
        StringBuilder sb = new StringBuilder("游戏任务🎮厂商上报[");
        sb.append(meta.name);
        sb.append("]#");
        sb.append(str);
        sb.append(" 结果=");
        sb.append(zContains ? "成功" : "失败");
        Log.debug(sb.toString());
        return zContains;
    }

    private static boolean reportCpchx(Meta meta, String str, String str2, String str3, Map<String, String> map) throws Exception {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("appId", str);
        jSONObject.put("code", str3);
        jSONObject.put("anonymousCode", JSONObject.NULL);
        jSONObject.put("channel", 3);
        jSONObject.put("inviteId", "");
        LinkedHashMap linkedHashMap = new LinkedHashMap(map);
        linkedHashMap.put("content-type", "application/json; charset=utf-8");
        String strPost = post("https://cpchxapi.dianwanshidai.com/app-api/game/auth/login-ali", jSONObject.toString(), linkedHashMap);
        String strFindString = findString(strPost, "token");
        if (strFindString.isEmpty()) {
            Log.debug("游戏任务⏭️[" + meta.name + "]#cpchx 未取到 token，响应=" + strPost);
            return false;
        }
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put("eventName", str2);
        jSONObject2.put("channel", meta.channel);
        LinkedHashMap linkedHashMap2 = new LinkedHashMap(linkedHashMap);
        linkedHashMap2.put("authorization", "Bearer " + strFindString);
        boolean zContains = post("https://cpchxapi.dianwanshidai.com/app-api/game/analytics/ali-report", jSONObject2.toString(), linkedHashMap2).contains("\"code\":0");
        StringBuilder sb = new StringBuilder("游戏任务🎮厂商上报[");
        sb.append(meta.name);
        sb.append("]#");
        sb.append(str2);
        sb.append(" 结果=");
        sb.append(zContains ? "成功" : "失败");
        Log.debug(sb.toString());
        return zContains;
    }

    private static boolean reportHnyc(Meta meta, String str, String str2, Map<String, String> map) throws Exception {
        String str3;
        int iIndexOf = str.indexOf("_game_");
        String str4 = "yxtGame/" + (iIndexOf > 0 ? str.substring(0, iIndexOf) : "wdhysj") + "/yxtChannel/myxyx/yxtSubChannel/myxyx";
        LinkedHashMap linkedHashMap = new LinkedHashMap(map);
        linkedHashMap.put("content-type", "application/x-www-form-urlencoded");
        String strPost = post("https://h5sdk.hnycgames.cn/Channel/login/" + str4, "authCode=" + URLEncoder.encode(str2, "UTF-8") + "&scene=" + URLEncoder.encode(meta.channel, "UTF-8"), linkedHashMap);
        String strFindString = findString(strPost, "yxtChannelUserId");
        if (strFindString.isEmpty()) {
            Log.debug("游戏任务⏭️[" + meta.name + "]#hnyc 未取到 yxtChannelUserId，响应=" + strPost);
            return false;
        }
        String strPost2 = post("https://h5sdk.hnycgames.cn/channel/index/yxtMethod/reportaction/" + str4, "action_code=" + URLEncoder.encode(str, "UTF-8") + "&channel=" + URLEncoder.encode(meta.channel, "UTF-8") + "&yxtChannelUserId=" + URLEncoder.encode(strFindString, "UTF-8"), linkedHashMap);
        boolean zContains = strPost2.contains("\"errorCode\":0");
        StringBuilder sb = new StringBuilder("游戏任务🎮厂商上报[");
        sb.append(meta.name);
        sb.append("]#");
        sb.append(str);
        sb.append(" 结果=");
        sb.append(zContains ? "成功" : "失败");
        if (zContains) {
            str3 = "";
        } else {
            str3 = "，响应=" + strPost2;
        }
        sb.append(str3);
        Log.debug(sb.toString());
        return zContains;
    }

    private static boolean reportDianli100(Meta meta, String str, String str2, String str3, Map<String, String> map) throws Exception {
        LinkedHashMap linkedHashMap = new LinkedHashMap(map);
        linkedHashMap.put("content-type", "application/json; charset=utf-8");
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("authCode", str3);
        String strPost = post("https://alifunc.dianli100.com/majiang/alipay/farm/openid", jSONObject.toString(), linkedHashMap);
        String strFindString = findString(strPost, "data");
        if (strFindString.isEmpty()) {
            Log.debug("游戏任务⏭️[" + meta.name + "]#dianli100 未取到 openid，响应=" + strPost);
            return false;
        }
        String authCode = AuthCodeHelper.getAuthCode(str);
        if (authCode == null || authCode.isEmpty()) {
            Log.debug("游戏任务⏭️[" + meta.name + "]#dianli100 上报取不到授权码");
            return false;
        }
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put("authCode", authCode);
        jSONObject2.put("channel", meta.channel);
        jSONObject2.put("actionCode", str2);
        boolean zContains = post("https://alifunc.dianli100.com/majiang/alipay/farm/action/report", jSONObject2.toString(), linkedHashMap).contains("\"code\":200");
        StringBuilder sb = new StringBuilder("游戏任务🎮厂商上报[");
        sb.append(meta.name);
        sb.append("]#");
        sb.append(str2);
        sb.append(" 结果=");
        sb.append(zContains ? "成功" : "失败");
        sb.append(" openid=");
        sb.append(strFindString);
        Log.debug(sb.toString());
        return zContains;
    }

    private static boolean reportD3games(Meta meta, String str, String str2, String str3, Map<String, String> map) throws Exception {
        String str4;
        String strParam = MiniGameTaskTable.param(str, "reportHost");
        if (strParam.isEmpty()) {
            strParam = "api-slhyj.d3games.com";
        }
        String str5 = "https://" + strParam + "/api";
        String strParam2 = MiniGameTaskTable.param(str, "gameId");
        LinkedHashMap linkedHashMap = new LinkedHashMap(map);
        linkedHashMap.put("content-type", "application/x-www-form-urlencoded");
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        linkedHashMap2.put("ver", "2.0.1");
        linkedHashMap2.put("gameid", strParam2);
        linkedHashMap2.put("appid", str);
        String str6 = "sign_type";
        linkedHashMap2.put("sign_type", "md5");
        linkedHashMap2.put("time_stamp", String.valueOf(System.currentTimeMillis() / 1000));
        linkedHashMap2.put("channel", meta.channel);
        linkedHashMap2.put("model", Build.MODEL);
        linkedHashMap2.put("version", alipayVersion());
        linkedHashMap2.put("system", Build.VERSION.RELEASE);
        linkedHashMap2.put("platform", "Android");
        linkedHashMap2.put("shareuid", "0");
        linkedHashMap2.put("scene", "0");
        linkedHashMap2.put("sharekey", "");
        linkedHashMap2.put("shareid", "0");
        linkedHashMap2.put("clue_token", "");
        linkedHashMap2.put("creative_id", "");
        linkedHashMap2.put("advertister_id", "");
        linkedHashMap2.put("request_id", "");
        linkedHashMap2.put("code", str3);
        JSONObject jSONObject = new JSONObject();
        Iterator it = linkedHashMap2.entrySet().iterator();
        while (true) {
            str4 = str6;
            if (!it.hasNext()) {
                break;
            }
            Map.Entry entry = (Map.Entry) it.next();
            if ("shareuid".equals(entry.getKey())) {
                jSONObject.put((String) entry.getKey(), 0);
            } else {
                jSONObject.put((String) entry.getKey(), entry.getValue());
            }
            str6 = str4;
        }
        jSONObject.put("sign", d3Sign(linkedHashMap2, meta.appKey));
        String strPost = post(str5 + "/login", jSONObject.toString(), linkedHashMap);
        String strFindString = findString(strPost, "uid");
        String strFindString2 = findString(strPost, "openid");
        String strFindString3 = findString(strPost, "token");
        if (strFindString.isEmpty() || strFindString3.isEmpty()) {
            Log.debug("游戏任务⏭️[" + meta.name + "]#d3games 登录未取到 uid/token，响应=" + strPost);
            return false;
        }
        LinkedHashMap linkedHashMap3 = new LinkedHashMap();
        linkedHashMap3.put("ver", "2.0.1");
        linkedHashMap3.put("gameid", strParam2);
        linkedHashMap3.put("appid", str);
        linkedHashMap3.put(str4, "md5");
        linkedHashMap3.put("time_stamp", String.valueOf(System.currentTimeMillis() / 1000));
        linkedHashMap3.put("action_code", str2);
        linkedHashMap3.put("action_finish_channel", meta.channel);
        linkedHashMap3.put("uid", strFindString);
        linkedHashMap3.put("openid", strFindString2);
        linkedHashMap3.put("token", strFindString3);
        JSONObject jSONObject2 = new JSONObject();
        for (Map.Entry entry2 : linkedHashMap3.entrySet()) {
            if ("uid".equals(entry2.getKey())) {
                jSONObject2.put((String) entry2.getKey(), Long.parseLong((String) entry2.getValue()));
            } else {
                jSONObject2.put((String) entry2.getKey(), entry2.getValue());
            }
        }
        jSONObject2.put("sign", d3Sign(linkedHashMap3, meta.appKey));
        boolean zContains = post(str5 + "/ali/incrementgameaction/submit", jSONObject2.toString(), linkedHashMap).contains("\"code\":\"0\"");
        StringBuilder sb = new StringBuilder("游戏任务🎮厂商上报[");
        sb.append(meta.name);
        sb.append("]#");
        sb.append(str2);
        sb.append(" 结果=");
        sb.append(zContains ? "成功" : "失败");
        Log.debug(sb.toString());
        return zContains;
    }

    private static boolean reportTomato(Meta meta, String str, String str2, String str3, Map<String, String> map) throws Exception {
        String strParam = MiniGameTaskTable.param(str, "secret");
        String strParam2 = MiniGameTaskTable.param(str, "gameId");
        String strParam3 = MiniGameTaskTable.param(str, "platformKey");
        String strParam4 = MiniGameTaskTable.param(str, "sdkChannel");
        String strParam5 = MiniGameTaskTable.param(str, "cid");
        String strDeviceUuid = deviceUuid();
        String str4 = String.format(Locale.ROOT, "%010d-%d", Long.valueOf((RANDOM.nextLong() & LongCompanionObject.MAX_VALUE) % RealConnection.IDLE_CONNECTION_HEALTHY_NS), Long.valueOf(System.currentTimeMillis()));
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("advertisingId", strDeviceUuid);
        linkedHashMap.put("androidId", strDeviceUuid);
        linkedHashMap.put("channel", strParam4);
        linkedHashMap.put("cid", strParam5);
        linkedHashMap.put("device_no", strDeviceUuid);
        linkedHashMap.put("gameId", strParam2);
        linkedHashMap.put("gid", str4);
        linkedHashMap.put("idfa", strDeviceUuid);
        linkedHashMap.put("idfv", strDeviceUuid);
        linkedHashMap.put("imei", strDeviceUuid);
        linkedHashMap.put("ip", "");
        linkedHashMap.put("mac", "");
        linkedHashMap.put("model", Build.MODEL);
        linkedHashMap.put("network_type", "4g");
        linkedHashMap.put("oaid", strDeviceUuid);
        linkedHashMap.put("sdk_version", "1.0.0");
        linkedHashMap.put("type", "0");
        linkedHashMap.put("udid", alipayVersion());
        linkedHashMap.put("version", "1.0.171");
        LinkedHashMap linkedHashMap2 = new LinkedHashMap(linkedHashMap);
        linkedHashMap2.put("afContent", "");
        linkedHashMap2.put("channelType", "1");
        linkedHashMap2.put("extension", new JSONObject().put("miniprogram", new JSONObject().put("zfb_uid", strDeviceUuid)).toString());
        linkedHashMap2.put("sign", tomatoSign(linkedHashMap2, strParam));
        String strPostForm = postForm("https://ssbhc-minigame-sdk.tomatogames.com/init/v2/sdk/initDevices", linkedHashMap2, map);
        if (!strPostForm.contains("\"code\":\"1\"")) {
            Log.debug("游戏任务⏭️[" + meta.name + "]#tomato initDevices 失败，响应=" + strPostForm);
            return false;
        }
        LinkedHashMap linkedHashMap3 = new LinkedHashMap(linkedHashMap);
        linkedHashMap3.put("channelType", "1");
        linkedHashMap3.put("extSdkData", new JSONObject().put("source", new JSONObject().put("platform", "my").put("ext", new JSONObject())).toString());
        linkedHashMap3.put("extension", new JSONObject().put("loginMode", "99").put("extension", new JSONObject().put("miniprogram", new JSONObject().put("zfb_uid", strDeviceUuid))).put("code", str3).toString());
        linkedHashMap3.put("method", "");
        linkedHashMap3.put("sign", tomatoSign(linkedHashMap3, strParam));
        String strPostForm2 = postForm("https://ssbhc-minigame-sdk.tomatogames.com/merge/v3/login/inland/zfbMiniGame", linkedHashMap3, map);
        String strFindString = findString(strPostForm2, "channelUserId");
        if (strFindString.isEmpty()) {
            Log.debug("游戏任务⏭️[" + meta.name + "]#tomato 登录未取到 channelUserId，响应=" + strPostForm2);
            return false;
        }
        String string = new JSONObject().put("eventId", str2).put("eventFinishChannel", meta.channel).put("isCustom", true).put("eventFinishDate", new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.CHINA).format(new Date())).put("openId", strFindString).toString();
        LinkedHashMap linkedHashMap4 = new LinkedHashMap(linkedHashMap);
        linkedHashMap4.put("platformKey", strParam3);
        linkedHashMap4.put("platformType", "ali");
        linkedHashMap4.put("pushParams", string);
        JSONObject jSONObject = new JSONObject();
        for (Map.Entry entry : linkedHashMap4.entrySet()) {
            jSONObject.put((String) entry.getKey(), entry.getValue());
        }
        jSONObject.put("sign", tomatoSign(linkedHashMap4, strParam));
        LinkedHashMap linkedHashMap5 = new LinkedHashMap(map);
        linkedHashMap5.put("content-type", "application/json; charset=utf-8");
        boolean zContains = post("https://ssbhc-minigame-sdk.tomatogames.com/init/platform/event/push", jSONObject.toString(), linkedHashMap5).contains("\"code\":\"1\"");
        StringBuilder sb = new StringBuilder("游戏任务🎮厂商上报[");
        sb.append(meta.name);
        sb.append("]#");
        sb.append(str2);
        sb.append(" 结果=");
        sb.append(zContains ? "成功" : "失败");
        Log.debug(sb.toString());
        return zContains;
    }

    private static boolean reportFlourish(Meta meta, String str, String str2, String str3, Map<String, String> map) throws Exception {
        String str4;
        String strParam = MiniGameTaskTable.param(str, "appKey");
        if (strParam.isEmpty()) {
            Log.debug("游戏任务⏭️[" + meta.name + "]#flourish 缺 appKey（表 param），跳过");
            return false;
        }
        String userId = ApplicationHook.getUserId();
        if (userId == null || userId.isEmpty()) {
            userId = UserIdMap.getCurrentUid();
        }
        if (userId == null || userId.isEmpty()) {
            Log.debug("游戏任务⏭️[" + meta.name + "]#flourish 未取到支付宝 UID，跳过");
            return false;
        }
        String string = new JSONObject().put("channel", meta.channel).toString();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("c_id", "1");
        linkedHashMap.put("game_id", "192");
        linkedHashMap.put("game_version", "1.0.0");
        linkedHashMap.put("sdk_version", "1.1.2");
        linkedHashMap.put("agent_id", "1001");
        linkedHashMap.put("site_id", "10001");
        linkedHashMap.put("sdk_channel", "qg_alipay");
        linkedHashMap.put("brand", "");
        linkedHashMap.put("model", Build.MANUFACTURER + " " + Build.MODEL);
        linkedHashMap.put("os_type", "android");
        linkedHashMap.put("is_quick_game", "1");
        linkedHashMap.put("device", "qg_" + md5(userId));
        linkedHashMap.put("timestamp", String.valueOf(System.currentTimeMillis() / 1000));
        linkedHashMap.put("timezone", "Asia/Shanghai");
        linkedHashMap.put("utctime", "UTC+8");
        linkedHashMap.put("launch_options", string);
        linkedHashMap.put("channel_params", new JSONObject().put("code", str3).toString());
        linkedHashMap.put("sign", flourishSign(linkedHashMap, strParam));
        LinkedHashMap linkedHashMap2 = new LinkedHashMap(map);
        linkedHashMap2.put("content-type", "application/json; charset=utf-8");
        String strPost = post("https://sdk.flourish-fs.com/QuickGame/login", flourishJson(linkedHashMap).toString(), linkedHashMap2);
        String strFindString = findString(strPost, "openid");
        String strFindString2 = findString(strPost, "access_token");
        String strFindString3 = findString(strPost, "refresh_token");
        String strFindString4 = findString(strPost, "uid");
        String strFindString5 = findString(strPost, "uname");
        if (!strPost.contains("\"code\":0") || strFindString.isEmpty() || strFindString2.isEmpty() || strFindString4.isEmpty()) {
            Log.debug("游戏任务⏭️[" + meta.name + "]#flourish 登录未取到 openid/token，响应=" + strPost);
            return false;
        }
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("launch_options", new JSONObject().put("channel", meta.channel));
        jSONObject.put(NotificationCompat.CATEGORY_EVENT, "alipay_game_action");
        jSONObject.put("role_id", "21045803606873136");
        jSONObject.put("role_name", "铁匠铺霜归墟");
        jSONObject.put("power", "1669");
        jSONObject.put("action_code", str2);
        jSONObject.put("level", 1);
        jSONObject.put("server_id", "4900108");
        jSONObject.put("server_name", "冰爽一区70服");
        jSONObject.put("role_level", 1);
        jSONObject.put("combat_power", "1669");
        LinkedHashMap linkedHashMap3 = new LinkedHashMap(linkedHashMap);
        linkedHashMap3.remove("sign");
        linkedHashMap3.remove("launch_options");
        linkedHashMap3.put("timestamp", String.valueOf(System.currentTimeMillis() / 1000));
        linkedHashMap3.put("access_token", strFindString2);
        linkedHashMap3.put("refresh_token", strFindString3);
        linkedHashMap3.put("openid", strFindString);
        linkedHashMap3.put("uid", strFindString4);
        linkedHashMap3.put("uname", strFindString5);
        linkedHashMap3.put("method", "incrementGameAction");
        linkedHashMap3.put("channel_params", jSONObject.toString());
        linkedHashMap3.put("sign", flourishSign(linkedHashMap3, strParam));
        Map<String, String> mapBaseHeaders = baseHeaders(meta, str);
        mapBaseHeaders.put("content-type", "application/json; charset=utf-8");
        String strPost2 = post("https://sdk.flourish-fs.com/QuickGame/callMethod", flourishJson(linkedHashMap3).toString(), mapBaseHeaders);
        boolean zContains = strPost2.contains("\"code\":0");
        StringBuilder sb = new StringBuilder("游戏任务🎮厂商上报[");
        sb.append(meta.name);
        sb.append("]#");
        sb.append(str2);
        sb.append(" 结果=");
        sb.append(zContains ? "成功" : "失败");
        if (zContains) {
            str4 = "";
        } else {
            str4 = "，响应=" + strPost2;
        }
        sb.append(str4);
        Log.debug(sb.toString());
        return zContains;
    }

    private static boolean reportDevourad(Meta meta, String str, String str2, String str3, Map<String, String> map) throws Exception {
        String str4;
        String strParam = MiniGameTaskTable.param(str, "appKey");
        if (strParam.isEmpty()) {
            Log.debug("游戏任务⏭️[" + meta.name + "]#devourad 缺 appKey（表 param），跳过");
            return false;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(map);
        linkedHashMap.put("content-type", "application/json; charset=utf-8");
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("appid", str);
        jSONObject.put("code", str3);
        jSONObject.put("sign", md5(str + strParam + str3));
        String strPost = post("https://api.devourad.com/alipay/gameLogin", jSONObject.toString(), linkedHashMap);
        String strFindString = findString(strPost, "open_id", "openid");
        if (strFindString.isEmpty() || !strPost.contains("\"code\":1")) {
            Log.debug("游戏任务⏭️[" + meta.name + "]#devourad 登录失败，响应=" + strPost);
            return false;
        }
        String strMd5 = md5(UUID.randomUUID().toString());
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put("appid", str);
        jSONObject2.put("action_code", str2);
        jSONObject2.put("action_finish_channel", meta.channel);
        jSONObject2.put("open_id", strFindString);
        jSONObject2.put("out_biz_no", strMd5);
        jSONObject2.put("sign", md5(str + strParam + str2 + meta.channel + strMd5 + strFindString));
        String strPost2 = post("https://api.devourad.com/alipay/gameReport", jSONObject2.toString(), linkedHashMap);
        boolean zContains = strPost2.contains("\"code\":1");
        StringBuilder sb = new StringBuilder("游戏任务🎮厂商上报[");
        sb.append(meta.name);
        sb.append("]#");
        sb.append(str2);
        sb.append(" 结果=");
        sb.append(zContains ? "成功" : "失败");
        if (zContains) {
            str4 = "";
        } else {
            str4 = "，响应=" + strPost2;
        }
        sb.append(str4);
        Log.debug(sb.toString());
        return zContains;
    }

    private static boolean reportMicrofun(Meta meta, String str, String str2, String str3, Map<String, String> map) throws Exception {
        String str4;
        String strParam = MiniGameTaskTable.param(str, "path");
        if (strParam.isEmpty()) {
            Log.debug("游戏任务⏭️[" + meta.name + "]#microfun 缺 path（表 param），跳过");
            return false;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(map);
        linkedHashMap.put("content-type", "application/json; charset=utf-8");
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("code", str3);
        String strPost = post("https://xyx-txeo.cliapi.microfun.cn/zhifubao/getDeviceInfo/" + strParam, jSONObject.toString(), linkedHashMap);
        String strFindString = findString(strPost, "openid", "open_id");
        if (strFindString.isEmpty()) {
            Log.debug("游戏任务⏭️[" + meta.name + "]#microfun 登录未取到 openid，响应=" + strPost);
            return false;
        }
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        linkedHashMap2.put("action_finish_date", new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.CHINA).format(new Date()));
        linkedHashMap2.put("open_id", strFindString);
        linkedHashMap2.put("action_code", str2);
        linkedHashMap2.put("action_finish_channel", meta.channel);
        String strPostForm = postForm("https://xyx-txeo.cliapi.microfun.cn/zhifubao/uploadActionNew/" + strParam, linkedHashMap2, map);
        boolean zContains = strPostForm.contains("\"code\":\"10000\"");
        StringBuilder sb = new StringBuilder("游戏任务🎮厂商上报[");
        sb.append(meta.name);
        sb.append("]#");
        sb.append(str2);
        sb.append(" 结果=");
        sb.append(zContains ? "成功" : "失败");
        if (zContains) {
            str4 = "";
        } else {
            str4 = "，响应=" + strPostForm;
        }
        sb.append(str4);
        Log.debug(sb.toString());
        return zContains;
    }

    private static boolean reportQufang(Meta meta, String str, String str2, String str3, Map<String, String> map) throws Exception {
        String str4;
        String strParam = MiniGameTaskTable.param(str, "loginHost");
        if (strParam.isEmpty()) {
            strParam = "login-01.qufang.top";
        }
        String strParam2 = MiniGameTaskTable.param(str, "reportHost");
        if (strParam2.isEmpty()) {
            strParam2 = "game-factory-jail-001.qufang.top";
        }
        String strParam3 = MiniGameTaskTable.param(str, "versionApp");
        if (strParam3.isEmpty()) {
            strParam3 = "4.4.5";
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(map);
        linkedHashMap.put("content-type", "application/json; charset=utf-8");
        linkedHashMap.put("qy-appid", str);
        linkedHashMap.put("qy-rid", UUID.randomUUID().toString());
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("screenWidth", 1080);
        jSONObject.put("screenHeight", 2400);
        jSONObject.put("windowWidth", 411);
        jSONObject.put("windowHeight", 914);
        jSONObject.put("pixelRatio", 2.625d);
        jSONObject.put("model", Build.MODEL);
        jSONObject.put("system", Build.VERSION.RELEASE);
        jSONObject.put("version", alipayVersion());
        jSONObject.put("language", "zh-Hans");
        jSONObject.put("isIphoneXSeries", false);
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put("path", "");
        jSONObject2.put("query", new JSONObject().put("channel", meta.channel));
        jSONObject2.put("referrerInfo", new JSONObject());
        JSONObject jSONObject3 = new JSONObject();
        jSONObject3.put("login", strParam);
        jSONObject3.put("game_factory", strParam2);
        jSONObject3.put(NotificationCompat.CATEGORY_EVENT, "event-jail-001.qufang.top");
        jSONObject3.put("more_game", "moregame.qufang.top");
        jSONObject3.put("static_resources_public", "static-resources-public.qufang.top");
        JSONObject jSONObject4 = new JSONObject();
        jSONObject4.put("version", 3);
        jSONObject4.put("versionApp", strParam3);
        String str5 = strParam2;
        jSONObject4.put("type", "alipay");
        jSONObject4.put("code", str3);
        jSONObject4.put("idx", 0);
        jSONObject4.put("launchOptions", jSONObject2);
        jSONObject4.put("systemInfo", jSONObject);
        jSONObject4.put("stored_part", new JSONObject().put("part", new JSONObject().put("syncVersion", 0)));
        jSONObject4.put("hostName", jSONObject3);
        jSONObject4.put("res", new JSONObject().put("code", str3));
        JSONObject jSONObject5 = new JSONObject();
        jSONObject5.put("version", 3);
        jSONObject5.put("versionApp", strParam3);
        jSONObject5.put("platformType", "alipay");
        jSONObject5.put("appid", str);
        jSONObject5.put("t", System.currentTimeMillis());
        jSONObject5.put("message", jSONObject4);
        String strPost = post("https://" + strParam + "/account/login", jSONObject5.toString(), linkedHashMap);
        String strFindString = findString(strPost, "uid");
        String strFindString2 = findString(strPost, "token");
        if (!strPost.contains("\"ok\":1") || strFindString.isEmpty() || strFindString2.isEmpty()) {
            Log.debug("游戏任务⏭️[" + meta.name + "]#qufang 登录未取到 uid/token，响应=" + strPost);
            return false;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        JSONObject jSONObject6 = new JSONObject();
        jSONObject6.put("action_code", str2);
        jSONObject6.put("action_finish_channel", meta.channel);
        jSONObject6.put("action_finish_time", jCurrentTimeMillis);
        StringBuilder sb = new StringBuilder("v3_");
        sb.append(sha1("qyqf-cocos3" + str + strParam3 + strFindString + strFindString2 + jCurrentTimeMillis + qufangMessage(jSONObject6)));
        String string = sb.toString();
        JSONObject jSONObject7 = new JSONObject();
        jSONObject7.put("version", 3);
        jSONObject7.put("versionApp", strParam3);
        jSONObject7.put("platformType", "alipay");
        jSONObject7.put("appid", str);
        jSONObject7.put("uid", strFindString);
        jSONObject7.put("token", strFindString2);
        jSONObject7.put("t", jCurrentTimeMillis);
        jSONObject7.put("message", jSONObject6);
        jSONObject7.put("signature", string);
        LinkedHashMap linkedHashMap2 = new LinkedHashMap(map);
        linkedHashMap2.put("content-type", "application/json; charset=utf-8");
        linkedHashMap2.put("qy-appid", str);
        linkedHashMap2.put("qy-rid", UUID.randomUUID().toString());
        linkedHashMap2.put("qy-uid", strFindString);
        String strPost2 = post("https://" + str5 + "/platform_service/increment/basic", jSONObject7.toString(), linkedHashMap2);
        boolean zContains = strPost2.contains("\"ok\":1");
        StringBuilder sb2 = new StringBuilder("游戏任务🎮厂商上报[");
        sb2.append(meta.name);
        sb2.append("]#");
        sb2.append(str2);
        sb2.append(" 结果=");
        sb2.append(zContains ? "成功" : "失败");
        if (zContains) {
            str4 = "";
        } else {
            str4 = "，响应=" + strPost2;
        }
        sb2.append(str4);
        Log.debug(sb2.toString());
        return zContains;
    }

    private static String qufangMessage(JSONObject jSONObject) throws Exception {
        JSONArray jSONArrayNames = jSONObject.names();
        ArrayList<String> arrayList = new ArrayList();
        if (jSONArrayNames != null) {
            for (int i = 0; i < jSONArrayNames.length(); i++) {
                arrayList.add(jSONArrayNames.optString(i));
            }
        }
        Collections.sort(arrayList);
        StringBuilder sb = new StringBuilder();
        for (String str : arrayList) {
            String strOptString = jSONObject.optString(str);
            if (!strOptString.isEmpty()) {
                if (sb.length() > 0) {
                    sb.append(Typography.amp);
                }
                sb.append(str);
                sb.append('=');
                sb.append(URLEncoder.encode(strOptString, "UTF-8").replace("+", "%20"));
            }
        }
        return sb.toString();
    }

    private static boolean reportQmhd87(Meta meta, String str, String str2, String str3, Map<String, String> map) throws Exception {
        String strFindString;
        String str4;
        String strFindString2;
        String strParam = MiniGameTaskTable.param(str, "reportHost");
        if (strParam.isEmpty()) {
            strParam = "game2-sjwy.qmhd87.com";
        }
        String strParam2 = MiniGameTaskTable.param(str, "channelCode");
        if (strParam2.isEmpty()) {
            strParam2 = "PA0306";
        }
        String strParam3 = MiniGameTaskTable.param(str, "packageName");
        if (strParam3.isEmpty()) {
            strParam3 = "projectA";
        }
        String str5 = strParam3;
        String strParam4 = MiniGameTaskTable.param(str, "sdkVersion");
        if (strParam4.isEmpty()) {
            strParam4 = "6.9.7";
        }
        String str6 = "https://" + strParam;
        long jCurrentTimeMillis = System.currentTimeMillis();
        String strValueOf = String.valueOf(RANDOM.nextInt(900000000) + 100000000);
        Map<String, String> mapQmhdHeaders = qmhdHeaders(map, "rc" + jCurrentTimeMillis, jCurrentTimeMillis, strValueOf, strParam2, str5, strParam4);
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("eData", qmhdEncrypt(new JSONObject().put("code", str3).toString()));
        String strPost = post(str6 + "/api/v1/ap/openid/", jSONObject.toString(), mapQmhdHeaders);
        JSONObject jSONObjectQmhdJson = qmhdJson(strPost);
        String str7 = "";
        String strFindString3 = jSONObjectQmhdJson == null ? "" : findString(jSONObjectQmhdJson, "openid", "open_id");
        if (jSONObjectQmhdJson == null) {
            strFindString = "";
        } else {
            strFindString = findString(jSONObjectQmhdJson, "token", "authorization", "accessToken", "access_token");
        }
        boolean z = false;
        if (strFindString3.isEmpty()) {
            Log.debug("游戏任务⏭️[" + meta.name + "]#qmhd87 未取到 openid，响应=" + strPost);
            return false;
        }
        String str8 = strFindString3;
        String str9 = strParam2;
        String str10 = strFindString;
        Map<String, String> mapQmhdHeaders2 = qmhdHeaders(map, strFindString3, jCurrentTimeMillis, strValueOf, strParam2, str5, strParam4);
        if (str10.isEmpty()) {
            str4 = str10;
        } else {
            StringBuilder sb = new StringBuilder("Bearer ");
            str4 = str10;
            sb.append(str4);
            mapQmhdHeaders2.put("authorization", sb.toString());
        }
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put("type", 6);
        jSONObject2.put("account", str8);
        jSONObject2.put("extData", new JSONObject());
        JSONObject jSONObject3 = new JSONObject();
        jSONObject3.put("eData", qmhdEncrypt(jSONObject2.toString()));
        JSONObject jSONObjectQmhdJson2 = qmhdJson(post(str6 + "/api/v1/login/", jSONObject3.toString(), mapQmhdHeaders2));
        if (jSONObjectQmhdJson2 == null) {
            strFindString2 = "";
        } else {
            strFindString2 = findString(jSONObjectQmhdJson2, "token", "authorization", "accessToken", "access_token");
        }
        String str11 = str4;
        Map<String, String> mapQmhdHeaders3 = qmhdHeaders(map, str8, jCurrentTimeMillis, strValueOf, str9, str5, strParam4);
        String str12 = strFindString2.isEmpty() ? str11 : strFindString2;
        if (!str12.isEmpty()) {
            mapQmhdHeaders3.put("authorization", "Bearer " + str12);
        }
        JSONObject jSONObject4 = new JSONObject();
        jSONObject4.put("actionCode", str2);
        jSONObject4.put("actionFinishAt", System.currentTimeMillis() / 1000);
        jSONObject4.put("actionFinishChannel", meta.channel);
        JSONObject jSONObject5 = new JSONObject();
        jSONObject5.put("eData", qmhdEncrypt(jSONObject4.toString()));
        String strPost2 = post(str6 + "/api/v1/ap/report/", jSONObject5.toString(), mapQmhdHeaders3);
        JSONObject jSONObjectQmhdJson3 = qmhdJson(strPost2);
        if (jSONObjectQmhdJson3 != null && jSONObjectQmhdJson3.optInt("code", -1) == 0) {
            z = true;
        }
        StringBuilder sb2 = new StringBuilder("游戏任务🎮厂商上报[");
        sb2.append(meta.name);
        sb2.append("]#");
        sb2.append(str2);
        sb2.append(" 结果=");
        sb2.append(z ? "成功" : "失败");
        if (!z) {
            str7 = "，响应=" + strPost2;
        }
        sb2.append(str7);
        Log.debug(sb2.toString());
        return z;
    }

    private static Map<String, String> qmhdHeaders(Map<String, String> map, String str, long j, String str2, String str3, String str4, String str5) throws Exception {
        long jCurrentTimeMillis = System.currentTimeMillis() / 1000;
        LinkedHashMap linkedHashMap = new LinkedHashMap(map);
        linkedHashMap.put("content-type", "application/json; charset=utf-8");
        linkedHashMap.put("channel", str3);
        linkedHashMap.put("did", str);
        linkedHashMap.put("install-id", String.valueOf(j));
        linkedHashMap.put("noise", str2);
        linkedHashMap.put("package-name", str4);
        linkedHashMap.put("run-id", String.valueOf(j));
        linkedHashMap.put("timestamp", String.valueOf(jCurrentTimeMillis));
        linkedHashMap.put("version", str5);
        linkedHashMap.put("sign", md5(str3 + str + j + str2 + str4 + j + jCurrentTimeMillis + str5 + "6KscZatA"));
        return linkedHashMap;
    }

    private static JSONObject qmhdJson(String str) {
        if (str != null && !str.isEmpty()) {
            try {
                try {
                    JSONObject jSONObject = new JSONObject(str);
                    String strOptString = jSONObject.optString("eData");
                    return strOptString.isEmpty() ? jSONObject : new JSONObject(qmhdDecrypt(strOptString));
                } catch (Throwable unused) {
                }
            } catch (Throwable unused2) {
                return new JSONObject(qmhdDecrypt(str));
            }
        }
        return null;
    }

    private static String qmhdEncrypt(String str) throws Exception {
        String strEncodeToString = Base64.encodeToString(gzip(str.getBytes(StandardCharsets.UTF_8)), 2);
        Cipher cipher = Cipher.getInstance("DES/ECB/PKCS5Padding");
        cipher.init(1, new SecretKeySpec(QMHD_DES_KEY, "DES"));
        return Base64.encodeToString(cipher.doFinal(strEncodeToString.getBytes(StandardCharsets.UTF_8)), 2);
    }

    private static String qmhdDecrypt(String str) throws Exception {
        Cipher cipher = Cipher.getInstance("DES/ECB/PKCS5Padding");
        cipher.init(2, new SecretKeySpec(QMHD_DES_KEY, "DES"));
        return gunzip(Base64.decode(new String(cipher.doFinal(Base64.decode(str, 0)), StandardCharsets.UTF_8).trim(), 0));
    }

    private static boolean reportLumosfun(Meta meta, String str, String str2, String str3, Map<String, String> map) throws Exception {
        String strParam = MiniGameTaskTable.param(str, "loginHost");
        if (strParam.isEmpty()) {
            strParam = "azory.lumosfun.com:8525";
        }
        String strParam2 = MiniGameTaskTable.param(str, "reportHost");
        if (strParam2.isEmpty()) {
            strParam2 = "gjdz-zfb-def.gusspro.com:15087";
        }
        String str4 = "";
        String strRequest = request("GET", "https://" + strParam + "/MiniGameServer/minigame/login.do?userType=31&appId=" + URLEncoder.encode(str, "UTF-8") + "&code=" + URLEncoder.encode(str3, "UTF-8"), "", map);
        String strFindString = findString(strRequest, "openId", "openid", "open_id");
        if (!strRequest.contains("\"code\":\"0\"") || strFindString.isEmpty()) {
            Log.debug("游戏任务⏭️[" + meta.name + "]#lumosfun 登录未取到 openId，响应=" + strRequest);
            return false;
        }
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("openId", strFindString);
        jSONObject.put("eventId", str2);
        jSONObject.put("EventFinishChannel", meta.channel);
        jSONObject.put("AlipayUserId", "");
        jSONObject.put("EventFinishDate", new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.CHINA).format(new Date()));
        jSONObject.put("OutBizNo", "SB_" + (System.currentTimeMillis() / 1000));
        LinkedHashMap linkedHashMap = new LinkedHashMap(map);
        linkedHashMap.put("content-type", "application/json; charset=utf-8");
        String strPost = post("https://" + strParam2 + "/mini-alipay/event/submit", jSONObject.toString(), linkedHashMap);
        boolean zContains = strPost.contains("\"code\":\"0\"");
        StringBuilder sb = new StringBuilder("游戏任务🎮厂商上报[");
        sb.append(meta.name);
        sb.append("]#");
        sb.append(str2);
        sb.append(" 结果=");
        sb.append(zContains ? "成功" : "失败");
        if (!zContains) {
            str4 = "，响应=" + strPost;
        }
        sb.append(str4);
        Log.debug(sb.toString());
        return zContains;
    }

    private static byte[] gzip(byte[] bArr) throws Exception {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
        try {
            gZIPOutputStream.write(bArr);
            gZIPOutputStream.close();
            return byteArrayOutputStream.toByteArray();
        } catch (Throwable th) {
            try {
                gZIPOutputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    private static String gunzip(byte[] bArr) throws Exception {
        GZIPInputStream gZIPInputStream = new GZIPInputStream(new ByteArrayInputStream(bArr));
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            byte[] bArr2 = new byte[1024];
            while (true) {
                int i = gZIPInputStream.read(bArr2);
                if (i > 0) {
                    byteArrayOutputStream.write(bArr2, 0, i);
                } else {
                    String str = new String(byteArrayOutputStream.toByteArray(), StandardCharsets.UTF_8);
                    gZIPInputStream.close();
                    return str;
                }
            }
        } catch (Throwable th) {
            try {
                gZIPInputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    private static String sha1(String str) throws Exception {
        return hex(MessageDigest.getInstance("SHA-1").digest(str.getBytes(StandardCharsets.UTF_8)));
    }

    private static JSONObject flourishJson(Map<String, String> map) throws Exception {
        JSONObject jSONObject = new JSONObject();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            String key = entry.getKey();
            String value = entry.getValue();
            if ("c_id".equals(key) || "game_id".equals(key) || "agent_id".equals(key) || "site_id".equals(key) || "is_quick_game".equals(key)) {
                jSONObject.put(key, Integer.parseInt(value));
            } else if ("timestamp".equals(key) || "uid".equals(key)) {
                jSONObject.put(key, Long.parseLong(value));
            } else {
                jSONObject.put(key, value);
            }
        }
        return jSONObject;
    }

    private static String flourishSign(Map<String, String> map, String str) throws Exception {
        ArrayList<String> arrayList = new ArrayList(map.keySet());
        Collections.sort(arrayList);
        StringBuilder sb = new StringBuilder();
        for (String str2 : arrayList) {
            if (!"sign".equals(str2) && !"channel_params".equals(str2) && !"launch_options".equals(str2) && !"role_name".equals(str2) && !"server_name".equals(str2) && !"goods_name".equals(str2) && !"extension".equals(str2) && !"event_params".equals(str2)) {
                if (sb.length() > 0) {
                    sb.append(Typography.amp);
                }
                sb.append(str2);
                sb.append('=');
                sb.append(map.get(str2));
            }
        }
        sb.append(str);
        return md5(sb.toString());
    }

    private static boolean reportRaiyantway(Meta meta, String str, String str2, String str3, Map<String, String> map) throws Exception {
        String str4;
        String strParam = MiniGameTaskTable.param(str, "loginHost");
        if (strParam.isEmpty()) {
            Log.debug("游戏任务⏭️[" + meta.name + "]#raiyantway 缺 loginHost（表 param），跳过");
            return false;
        }
        String strParam2 = MiniGameTaskTable.param(str, "userType");
        if (strParam2.isEmpty()) {
            strParam2 = "31";
        }
        String str5 = "https://" + strParam + "/MiniGameServer";
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("userType", strParam2);
        jSONObject.put("appId", str);
        jSONObject.put("code", str3);
        LinkedHashMap linkedHashMap = new LinkedHashMap(map);
        linkedHashMap.put("content-type", "application/json; charset=utf-8");
        String strPost = post(str5 + "/minigame/login.do", jSONObject.toString(), linkedHashMap);
        String strFindString = findString(strPost, "openId");
        if (!strPost.contains("\"code\":\"0\"") || strFindString.isEmpty()) {
            Log.debug("游戏任务⏭️[" + meta.name + "]#raiyantway 登录未取到 openId，响应=" + strPost);
            return false;
        }
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put("appId", str);
        jSONObject2.put("openId", strFindString);
        jSONObject2.put("actionCode", str2);
        jSONObject2.put("actionFinishChannel", meta.channel);
        jSONObject2.put("outBizNo", UUID.randomUUID().toString());
        jSONObject2.put("actionFinishDate", System.currentTimeMillis());
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        linkedHashMap2.put("ENCODE_DATA", raiyantwayEncode(jSONObject2.toString()));
        String strPostForm = postForm(str5 + "/alipay/reportGameAction", linkedHashMap2, map);
        boolean zContains = strPostForm.contains("\"code\":\"0\"");
        StringBuilder sb = new StringBuilder("游戏任务🎮厂商上报[");
        sb.append(meta.name);
        sb.append("]#");
        sb.append(str2);
        sb.append(" 结果=");
        sb.append(zContains ? "成功" : "失败");
        if (zContains) {
            str4 = "";
        } else {
            str4 = "\n明文: " + jSONObject2 + "\n响应: " + strPostForm;
        }
        sb.append(str4);
        Log.debug(sb.toString());
        return zContains;
    }

    private static String raiyantwayEncode(String str) {
        byte[] bytes = str.getBytes(StandardCharsets.UTF_8);
        int length = (4 - (bytes.length % 4)) % 4;
        byte[] bArr = new byte[4];
        RANDOM.nextBytes(bArr);
        byte[] bArr2 = new byte[bytes.length + length + 4];
        int i = 0;
        while (i < bytes.length + length) {
            bArr2[i] = (byte) ((i < bytes.length ? bytes[i] : (byte) 0) ^ bArr[i % 4]);
            i++;
        }
        System.arraycopy(bArr, 0, bArr2, bytes.length + length, 4);
        return Base64.encodeToString(bArr2, 2);
    }

    private static String deviceUuid() {
        if (DEVICE_UUID == null) {
            DEVICE_UUID = UUID.randomUUID().toString();
        }
        return DEVICE_UUID;
    }

    private static String alipayVersion() {
        try {
            return ApplicationHook.getAlipayVersion().getVersionString();
        } catch (Throwable unused) {
            return "";
        }
    }

    private static String d3Sign(Map<String, String> map, String str) throws Exception {
        String str2;
        ArrayList<String> arrayList = new ArrayList(map.keySet());
        Collections.sort(arrayList);
        StringBuilder sb = new StringBuilder();
        for (String str3 : arrayList) {
            if (!"ver".equals(str3) && !"sign".equals(str3) && (str2 = map.get(str3)) != null && !str2.isEmpty() && !"0".equals(str2)) {
                sb.append(str3);
                sb.append('=');
                sb.append(str2);
            }
        }
        sb.append(str);
        return md5(sb.toString());
    }

    private static String tomatoSign(Map<String, String> map, String str) throws Exception {
        ArrayList<String> arrayList = new ArrayList(map.keySet());
        Collections.sort(arrayList);
        StringBuilder sb = new StringBuilder();
        for (String str2 : arrayList) {
            if (!"sign".equals(str2)) {
                if (sb.length() > 0) {
                    sb.append(Typography.amp);
                }
                sb.append(str2);
                sb.append('=');
                sb.append(map.get(str2));
            }
        }
        sb.append(str);
        return md5(sb.toString());
    }

    private static String postForm(String str, Map<String, String> map, Map<String, String> map2) throws Exception {
        StringBuilder sb = new StringBuilder();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            if (sb.length() > 0) {
                sb.append(Typography.amp);
            }
            sb.append(URLEncoder.encode(entry.getKey(), "UTF-8"));
            sb.append('=');
            sb.append(URLEncoder.encode(entry.getValue() == null ? "" : entry.getValue(), "UTF-8"));
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(map2);
        linkedHashMap.put("content-type", "application/x-www-form-urlencoded");
        return post(str, sb.toString(), linkedHashMap);
    }

    private static String encodedSorted(Map<String, String> map) throws Exception {
        ArrayList<String> arrayList = new ArrayList(map.keySet());
        Collections.sort(arrayList);
        StringBuilder sb = new StringBuilder();
        for (String str : arrayList) {
            if (sb.length() > 0) {
                sb.append(Typography.amp);
            }
            sb.append(URLEncoder.encode(str, "UTF-8").replace("+", "%20"));
            sb.append('=');
            sb.append(URLEncoder.encode(map.get(str), "UTF-8").replace("+", "%20"));
        }
        return sb.toString();
    }

    private static String md5(String str) throws Exception {
        return hex(MessageDigest.getInstance("MD5").digest(str.getBytes(StandardCharsets.UTF_8)));
    }

    private static String hex(byte[] bArr) {
        StringBuilder sb = new StringBuilder();
        for (byte b : bArr) {
            sb.append(String.format("%02x", Byte.valueOf(b)));
        }
        return sb.toString();
    }

    private static String randomHex(int i) {
        StringBuilder sb = new StringBuilder();
        for (int i2 = 0; i2 < i; i2++) {
            sb.append("0123456789abcdef".charAt(RANDOM.nextInt(16)));
        }
        return sb.toString();
    }

    private static String randomHexUpper(int i) {
        return randomHex(i).toUpperCase(Locale.ROOT);
    }

    private static String findString(String str, String... strArr) {
        if (str != null && !str.isEmpty()) {
            try {
                return findString(new JSONObject(str), strArr);
            } catch (Throwable unused) {
            }
        }
        return "";
    }

    private static String findString(Object obj, String... strArr) {
        int i = 0;
        if (obj instanceof JSONObject) {
            JSONObject jSONObject = (JSONObject) obj;
            for (String str : strArr) {
                String strOptString = jSONObject.optString(str);
                if (!strOptString.isEmpty()) {
                    return strOptString;
                }
            }
            JSONArray jSONArrayNames = jSONObject.names();
            if (jSONArrayNames != null) {
                while (i < jSONArrayNames.length()) {
                    String strFindString = findString(jSONObject.opt(jSONArrayNames.optString(i)), strArr);
                    if (!strFindString.isEmpty()) {
                        return strFindString;
                    }
                    i++;
                }
                return "";
            }
            return "";
        }
        if (obj instanceof JSONArray) {
            JSONArray jSONArray = (JSONArray) obj;
            while (i < jSONArray.length()) {
                String strFindString2 = findString(jSONArray.opt(i), strArr);
                if (!strFindString2.isEmpty()) {
                    return strFindString2;
                }
                i++;
            }
            return "";
        }
        return "";
    }

    private static String post(String str, String str2, Map<String, String> map) throws Exception {
        return request("POST", str, str2, map);
    }

    private static String request(String str, String str2, String str3, Map<String, String> map) throws Exception {
        Log.debug("厂商请求 " + str + " " + str2 + "\n请求头: " + map + "\n参数: " + str3);
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str2).openConnection();
        httpURLConnection.setRequestMethod(str);
        if (str3 != null && !str3.isEmpty()) {
            httpURLConnection.setDoOutput(true);
        }
        httpURLConnection.setConnectTimeout(10000);
        httpURLConnection.setReadTimeout(15000);
        for (Map.Entry<String, String> entry : map.entrySet()) {
            if (entry.getValue() != null && !entry.getValue().isEmpty()) {
                httpURLConnection.setRequestProperty(entry.getKey(), entry.getValue());
            }
        }
        if (str3 != null && !str3.isEmpty()) {
            OutputStreamWriter outputStreamWriter = new OutputStreamWriter(httpURLConnection.getOutputStream(), StandardCharsets.UTF_8);
            try {
                outputStreamWriter.write(str3);
                outputStreamWriter.close();
            } catch (Throwable th) {
                try {
                    outputStreamWriter.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        int responseCode = httpURLConnection.getResponseCode();
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader((responseCode < 200 || responseCode > 299) ? httpURLConnection.getErrorStream() : httpURLConnection.getInputStream(), StandardCharsets.UTF_8));
        StringBuilder sb = new StringBuilder();
        while (true) {
            String line = bufferedReader.readLine();
            if (line != null) {
                sb.append(line);
            } else {
                bufferedReader.close();
                httpURLConnection.disconnect();
                Log.debug("厂商响应 " + str + " " + str2 + " HTTP " + responseCode + "\n数据: " + ((Object) sb));
                return sb.toString();
            }
        }
    }
}
