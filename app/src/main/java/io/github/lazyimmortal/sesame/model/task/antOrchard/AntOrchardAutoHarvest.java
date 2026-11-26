package io.github.lazyimmortal.sesame.model.task.antOrchard;

import android.content.Intent;
import android.net.Uri;
import androidx.core.app.NotificationCompat;
import com.fasterxml.jackson.databind.deser.DeserializerCache;
import io.github.lazyimmortal.sesame.hook.ApplicationHook;
import io.github.lazyimmortal.sesame.hook.Toast;
import io.github.lazyimmortal.sesame.mtop.bridge.MtopCaller;
import io.github.lazyimmortal.sesame.util.Log;
import io.github.lazyimmortal.sesame.util.MessageUtil;
import io.github.lazyimmortal.sesame.util.TimeUtil;
import java.util.ArrayList;
import java.util.Random;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class AntOrchardAutoHarvest {
    private static final String FIXED_EXCHANGE_URL = "https://pages-fast.m.taobao.com/wow/z/hdwk/farm-ssr/tmfarm-harvest?disableNav=YES&spm=farm";
    private static final String LOG_TAG = "农场收获🌳";
    private static final Random RANDOM = new Random();
    private static final String TAG = "AntOrchardAutoHarvest";

    private static int getRandomDelay() {
        return RANDOM.nextInt(3001) + DeserializerCache.DEFAULT_MAX_CACHE_SIZE;
    }

    public static boolean harvest(boolean z) {
        boolean zReportExchange;
        try {
            Log.record("农场收获🌳开始自动收获");
            TimeUtil.sleep(getRandomDelay());
            Log.record("农场收获🌳打开种成记录(执行收获)...");
            String strSilentFetchExchange = silentFetchExchange();
            if (strSilentFetchExchange == null || strSilentFetchExchange.length() <= 0) {
                Log.i(TAG, "获取数据为空");
                zReportExchange = false;
            } else {
                zReportExchange = reportExchange(strSilentFetchExchange);
            }
            if (!zReportExchange) {
                Log.record("农场收获🌳静默失败，跳转前台页面...");
                openUrl(FIXED_EXCHANGE_URL);
                TimeUtil.sleep(getRandomDelay());
            }
            if (z) {
                autoPlant();
                Log.farm("农场收获🌳自动收获+种植完成");
                return true;
            }
            Log.farm("农场收获🌳自动收获完成");
            return true;
        } catch (Throwable th) {
            Log.i(TAG, "harvest err:");
            Log.printStackTrace(TAG, th);
            return false;
        }
    }

    public static boolean autoPlant() {
        try {
            Log.record("农场收获🌳开始自动种植...");
            TimeUtil.sleep(getRandomDelay());
            String[] strArrSelectFirstSeed = selectFirstSeed();
            if (strArrSelectFirstSeed == null) {
                Log.record("农场收获🌳无可用种子库存，跳过种植");
                return false;
            }
            String str = strArrSelectFirstSeed[0];
            String str2 = strArrSelectFirstSeed[1];
            Log.record("农场收获🌳默认选第一个种: " + str2);
            TimeUtil.sleep((long) getRandomDelay());
            JSONObject jSONObject = new JSONObject(AntOrchardRpcCall.orchardSelectSeed(str));
            if (MessageUtil.checkResultCode(TAG, jSONObject).booleanValue() && jSONObject.optBoolean("success", false)) {
                Log.farm("农场收获🌳种植" + str2 + "成功");
                StringBuilder sb = new StringBuilder("芭芭农场已种植: ");
                sb.append(str2);
                Toast.show(sb.toString());
                return true;
            }
            Log.record("农场收获🌳种植" + str2 + "失败: " + jSONObject.optString("resultDesc", "未知错误"));
            return false;
        } catch (Throwable th) {
            Log.i(TAG, "autoPlant err:");
            Log.printStackTrace(TAG, th);
            return false;
        }
    }

    public static String[] selectFirstSeed() {
        try {
            JSONObject jSONObject = new JSONObject(AntOrchardRpcCall.orchardSeedList());
            if (!MessageUtil.checkResultCode(TAG, jSONObject).booleanValue()) {
                return null;
            }
            JSONArray jSONArray = new JSONObject(jSONObject.getString("taobaoData")).getJSONArray("seedList");
            ArrayList arrayList = new ArrayList();
            String[] strArr = null;
            for (int i = 0; i < jSONArray.length(); i++) {
                JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                if (jSONObject2.optBoolean("hasInventory", false)) {
                    String strOptString = jSONObject2.optString("seedCode");
                    String strOptString2 = jSONObject2.optString("seedTitle");
                    if (strOptString != null && strOptString.length() != 0) {
                        arrayList.add(strOptString2);
                        if (strArr == null) {
                            strArr = new String[]{strOptString, strOptString2};
                        }
                    }
                }
            }
            if (arrayList.isEmpty()) {
                Log.record("农场收获🌳可选种子为空(均无库存)");
            } else {
                StringBuilder sb = new StringBuilder("[");
                for (int i2 = 0; i2 < arrayList.size(); i2++) {
                    if (i2 > 0) {
                        sb.append("、");
                    }
                    sb.append((String) arrayList.get(i2));
                }
                sb.append("]");
                Log.record("农场收获🌳可选种子" + ((Object) sb));
            }
            return strArr;
        } catch (Throwable th) {
            Log.i(TAG, "selectFirstSeed err:");
            Log.printStackTrace(TAG, th);
            return null;
        }
    }

    private static boolean reportExchange(String str) {
        try {
            JSONObject jSONObjectOptJSONObject = new JSONObject(str).optJSONObject("data");
            String strOptString = "";
            if (jSONObjectOptJSONObject != null && "OK".equals(jSONObjectOptJSONObject.optString("code"))) {
                JSONObject jSONObjectOptJSONObject2 = jSONObjectOptJSONObject.optJSONObject("model");
                if (jSONObjectOptJSONObject2 == null) {
                    Log.record("农场收获🌳兑换列表获取失败: 无 model");
                    return false;
                }
                JSONObject jSONObjectOptJSONObject3 = jSONObjectOptJSONObject2.optJSONObject("accumulateTimes");
                JSONArray jSONArrayOptJSONArray = jSONObjectOptJSONObject2.optJSONArray("grownUpRecords");
                if (jSONObjectOptJSONObject3 != null) {
                    if (jSONArrayOptJSONArray != null) {
                        for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                            JSONObject jSONObjectOptJSONObject4 = jSONArrayOptJSONArray.optJSONObject(i);
                            if (jSONObjectOptJSONObject4 != null && "UNEXCHANGED".equals(jSONObjectOptJSONObject4.optString(NotificationCompat.CATEGORY_STATUS))) {
                                strOptString = jSONObjectOptJSONObject4.optString("title", "") + "已种成，用时" + jSONObjectOptJSONObject4.optInt("grownUpConsumeDays", -1) + "天（" + jSONObjectOptJSONObject4.optString("plantTime", "") + "）；";
                                break;
                            }
                        }
                    }
                    String str2 = strOptString + "累计" + jSONObjectOptJSONObject3.optInt("grownUpTimes", -1) + "次，待兑换" + jSONObjectOptJSONObject3.optInt("unExchangeTimes", -1) + "次";
                    Log.farm(LOG_TAG + str2);
                    Toast.show("芭芭农场已收获: " + str2);
                }
                if (jSONArrayOptJSONArray != null) {
                    return true;
                }
                Log.record("农场收获🌳兑换列表获取失败: 无 grownUpRecords");
                return false;
            }
            StringBuilder sb = new StringBuilder("农场收获🌳兑换列表获取失败: code=");
            sb.append(jSONObjectOptJSONObject == null ? "null" : jSONObjectOptJSONObject.optString("code"));
            sb.append(" desc=");
            if (jSONObjectOptJSONObject != null) {
                strOptString = jSONObjectOptJSONObject.optString("resultDesc");
            }
            sb.append(strOptString);
            Log.record(sb.toString());
            return false;
        } catch (Throwable th) {
            Log.i(TAG, "reportExchange err: " + th);
            return false;
        }
    }

    private static String silentFetchExchange() {
        try {
            return MtopCaller.call(ApplicationHook.getClassLoader(), "mtop.tmall.farm.commonapi.get", "{\"bizParam\":\"{}\",\"bizType\":\"plantTree.showFruitList\"}");
        } catch (Throwable th) {
            Log.i(TAG, "silentFetchExchange err: " + th);
            return null;
        }
    }

    private static void openUrl(String str) {
        try {
            if (!str.startsWith("alipays://")) {
                str = "alipays://platformapi/startapp?appId=68687599&url=" + str;
            }
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
            intent.addFlags(268435456);
            ApplicationHook.getContext().startActivity(intent);
        } catch (Throwable th) {
            Log.i(TAG, "openUrl err: " + th);
        }
    }
}
