package io.github.lazyimmortal.sesame.model.task.antForest;

import android.content.Context;
import androidx.core.app.NotificationCompat;
import io.github.lazyimmortal.sesame.hook.AlipayMiniMarkHelper;
import io.github.lazyimmortal.sesame.hook.ApplicationHook;
import io.github.lazyimmortal.sesame.hook.AuthCodeHelper;
import io.github.lazyimmortal.sesame.util.Log;
import io.github.lazyimmortal.sesame.util.Status;
import io.github.lazyimmortal.sesame.util.TimeUtil;
import io.github.lazyimmortal.sesame.util.idMap.UserIdMap;
import java.net.SocketTimeoutException;
import java.util.HashSet;
import java.util.Random;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class ReadForestTask {
    private static final String APP_ID = "2021003114652763";
    private static final String DONE_FLAG = "Forest::readForest";
    private static final String FINISHED_KEY = "finished_books";
    private static final String PREF_NAME = "sesame_forest_read";
    private static final Random RANDOM = new Random();
    private static final String TAG = "森林阅读📖";
    private static final String TOKEN_KEY = "token";
    private static final int TOTAL_FALLBACK = 150;
    private static final String VERSION = "0.2.2410251510.53";

    private ReadForestTask() {
    }

    public static void execute() {
        try {
            Context context = ApplicationHook.getContext();
            if (context == null) {
                Log.record("森林阅读📖未获取到应用上下文，自动阅读任务失败");
                return;
            }
            if (Status.hasFlagToday(DONE_FLAG).booleanValue()) {
                Log.i(TAG, "自动阅读任务今日已执行，跳过");
                return;
            }
            Log.record("森林阅读📖开始执行自动阅读任务(多本连读模式)");
            String alipayMiniMark = AlipayMiniMarkHelper.getAlipayMiniMark(APP_ID, VERSION);
            ReadForestRpcCall.setMiniMark(alipayMiniMark);
            String strLoadCachedToken = loadCachedToken(context);
            if (!isEmpty(strLoadCachedToken) && isTokenValid(strLoadCachedToken)) {
                Log.i(TAG, "复用缓存token");
            } else {
                String authCode = AuthCodeHelper.getAuthCode(APP_ID);
                if (isEmpty(authCode)) {
                    Log.record("森林阅读📖authCode为空，自动阅读任务失败");
                    return;
                }
                if (isEmpty(alipayMiniMark)) {
                    Log.i(TAG, "miniMark为空，继续尝试登录");
                }
                String strLogin = ReadForestRpcCall.login(authCode, alipayMiniMark, VERSION);
                if (isEmpty(strLogin)) {
                    Log.record("森林阅读📖登录失败: 返回为空");
                    return;
                }
                JSONObject jSONObject = new JSONObject(strLogin);
                if (jSONObject.optInt("code") != 2000) {
                    Log.record("森林阅读📖登录失败: " + jSONObject.optString(NotificationCompat.CATEGORY_MESSAGE));
                    return;
                }
                JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("data");
                if (jSONObjectOptJSONObject == null) {
                    Log.record("森林阅读📖登录失败: 缺少token");
                    return;
                }
                strLoadCachedToken = jSONObjectOptJSONObject.optString(TOKEN_KEY);
                if (isEmpty(strLoadCachedToken)) {
                    Log.record("森林阅读📖登录失败: token为空");
                    return;
                }
                saveCachedToken(context, strLoadCachedToken);
            }
            JSONObject jSONObjectLoadFinishedBooks = loadFinishedBooks(context, userScope());
            HashSet hashSet = new HashSet();
            while (true) {
                JSONObject jSONObjectSelectFreeBook = selectFreeBook(jSONObjectLoadFinishedBooks, ReadForestRpcCall.getIndex(strLoadCachedToken, VERSION), hashSet);
                if (jSONObjectSelectFreeBook == null) {
                    Log.record("森林阅读📖首页暂无更多未读免费书籍");
                    return;
                }
                String strOptString = jSONObjectSelectFreeBook.optString("book_id");
                String strOptString2 = jSONObjectSelectFreeBook.optString("name", "未知");
                if (isEmpty(strOptString)) {
                    hashSet.add("");
                    TimeUtil.sleep(2000L);
                } else {
                    Boolean boolAutoReadBook = autoReadBook(strOptString, strOptString2, strLoadCachedToken, context, jSONObjectLoadFinishedBooks);
                    if (Boolean.TRUE.equals(boolAutoReadBook)) {
                        Status.flagToday(DONE_FLAG, UserIdMap.getCurrentUid());
                        Log.record("森林阅读📖自动阅读任务完成，已获得今日满额能量");
                        return;
                    } else if (Boolean.FALSE.equals(boolAutoReadBook)) {
                        Log.record("森林阅读📖检测到当前无法获得阅读能量，终止任务流程");
                        return;
                    } else {
                        hashSet.add(strOptString);
                        TimeUtil.sleep(2000L);
                    }
                }
            }
        } catch (Throwable th) {
            Log.i(TAG, "execute err:");
            Log.printStackTrace(TAG, th);
        }
    }

    private static JSONObject selectFreeBook(JSONObject jSONObject, String str, Set<String> set) throws Exception {
        JSONArray jSONArrayOptJSONArray;
        JSONArray jSONArrayOptJSONArray2;
        if (!isEmpty(str) && (jSONArrayOptJSONArray = new JSONObject(str).optJSONArray("data")) != null) {
            for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i);
                if (jSONObjectOptJSONObject != null && (jSONArrayOptJSONArray2 = jSONObjectOptJSONObject.optJSONArray("block_resource")) != null) {
                    for (int i2 = 0; i2 < jSONArrayOptJSONArray2.length(); i2++) {
                        JSONObject jSONObjectOptJSONObject2 = jSONArrayOptJSONArray2.optJSONObject(i2);
                        if (jSONObjectOptJSONObject2 != null) {
                            String strOptString = jSONObjectOptJSONObject2.optString("book_id");
                            if ("0.00".equals(jSONObjectOptJSONObject2.optString("price")) && !set.contains(strOptString)) {
                                if (!jSONObject.has(strOptString)) {
                                    return jSONObjectOptJSONObject2;
                                }
                                set.add(strOptString);
                            }
                        }
                    }
                }
            }
        }
        return null;
    }

    private static Boolean autoReadBook(String str, String str2, String str3, Context context, JSONObject jSONObject) throws Exception {
        JSONObject data = parseData(ReadForestRpcCall.getChapter(str, null, str3, VERSION));
        if (data == null) {
            return Boolean.FALSE;
        }
        int i = -1;
        int i2 = -1;
        int i3 = 0;
        int i4 = 0;
        while (data != null) {
            String strOptString = data.optString("id");
            String strOptString2 = data.optString("next_id");
            String strOptString3 = data.optString("name", "未知");
            if (isEmpty(strOptString)) {
                return Boolean.FALSE;
            }
            if (i2 == i) {
                EnergyProgress energyProgress = readEnergyProgress(str3, str, strOptString);
                if (!energyProgress.hasData) {
                    Log.record("森林阅读📖[" + str2 + "]初始进度查询失败,跳过此书");
                    return Boolean.FALSE;
                }
                if (energyProgress.current >= energyProgress.total) {
                    return Boolean.TRUE;
                }
                i2 = energyProgress.current;
            }
            Random random = RANDOM;
            ReadForestRpcCall.updateReadingTime(str, strOptString, random.nextInt(668) + 333, str3, VERSION);
            ReadForestRpcCall.setReadRecently(str, strOptString, strOptString3, str3, VERSION);
            TimeUtil.sleep(1000L);
            EnergyProgress energyProgress2 = readEnergyProgress(str3, str, strOptString);
            if (energyProgress2.hasData) {
                int i5 = energyProgress2.current - i2;
                if (i5 > 0) {
                    Log.forest("森林阅读📖[" + str2 + "]进度(" + energyProgress2.current + "/" + energyProgress2.total + ")获得能量" + i5 + "g");
                    i3 = 0;
                } else {
                    Log.record("森林阅读📖[" + str2 + "]进度同步: " + energyProgress2.current + "/" + energyProgress2.total);
                    i3++;
                }
                if (energyProgress2.current >= energyProgress2.total) {
                    return Boolean.TRUE;
                }
                if (i3 >= 5) {
                    Log.record("森林阅读📖[" + str2 + "]连续5章无能量增加，可能达到此书上限，跳过");
                    return Boolean.FALSE;
                }
                i4 = 0;
            } else {
                i4++;
                Log.record("森林阅读📖[" + str2 + "]进度查询失败,继续阅读下一章(能量累计到下次记录)");
                if (i4 >= 5) {
                    Log.record("森林阅读📖[" + str2 + "]连续5章进度查询失败,网络异常,跳过");
                    return Boolean.FALSE;
                }
            }
            if (isEmpty(strOptString2) || "null".equals(strOptString2) || "0".equals(strOptString2)) {
                markFinished(context, jSONObject, str, str2);
                return null;
            }
            TimeUtil.sleep(random.nextInt(2002) + 1000);
            JSONObject data2 = parseData(ReadForestRpcCall.getChapter(str, strOptString2, str3, VERSION));
            if (data2 == null) {
                return Boolean.FALSE;
            }
            if (energyProgress2.hasData) {
                i2 = energyProgress2.current;
            }
            data = data2;
            i = -1;
        }
        return Boolean.FALSE;
    }

    private static EnergyProgress readEnergyProgress(String str, String str2, String str3) throws Exception {
        String strCheckEnergy;
        int i = 0;
        while (true) {
            if (i >= 2) {
                strCheckEnergy = null;
                break;
            }
            try {
                strCheckEnergy = ReadForestRpcCall.checkEnergy(str, VERSION, str2, str3);
                break;
            } catch (SocketTimeoutException unused) {
                TimeUtil.sleep(1000L);
                i++;
            }
        }
        if (isEmpty(strCheckEnergy)) {
            return new EnergyProgress(false, 0, TOTAL_FALLBACK);
        }
        JSONObject jSONObjectOptJSONObject = new JSONObject(strCheckEnergy).optJSONObject("data");
        if (jSONObjectOptJSONObject == null) {
            return new EnergyProgress(false, 0, TOTAL_FALLBACK);
        }
        return new EnergyProgress(true, jSONObjectOptJSONObject.optInt("current"), jSONObjectOptJSONObject.optInt("total", TOTAL_FALLBACK));
    }

    private static JSONObject parseData(String str) throws Exception {
        if (isEmpty(str)) {
            return null;
        }
        JSONObject jSONObject = new JSONObject(str);
        if (jSONObject.optInt("code") != 2000) {
            return null;
        }
        return jSONObject.optJSONObject("data");
    }

    private static JSONObject loadFinishedBooks(Context context, String str) {
        try {
            String string = context.getSharedPreferences(PREF_NAME, 0).getString("finished_books_" + str, "{}");
            return new JSONObject(string != null ? string : "{}");
        } catch (Exception unused) {
            return new JSONObject();
        }
    }

    private static void markFinished(Context context, JSONObject jSONObject, String str, String str2) {
        try {
            if (jSONObject.has(str)) {
                return;
            }
            if (str2 == null) {
                str2 = "未知";
            }
            jSONObject.put(str, str2);
            context.getSharedPreferences(PREF_NAME, 0).edit().putString("finished_books_" + userScope(), jSONObject.toString()).apply();
        } catch (Exception unused) {
        }
    }

    private static boolean isTokenValid(String str) {
        try {
            String strCheckToken = ReadForestRpcCall.checkToken(str, VERSION);
            return !isEmpty(strCheckToken) && new JSONObject(strCheckToken).optInt("code") == 2000;
        } catch (Throwable unused) {
            return false;
        }
    }

    private static String loadCachedToken(Context context) {
        try {
            return context.getSharedPreferences(PREF_NAME, 0).getString("token_" + userScope(), "");
        } catch (Throwable unused) {
            return "";
        }
    }

    private static void saveCachedToken(Context context, String str) {
        try {
            context.getSharedPreferences(PREF_NAME, 0).edit().putString("token_" + userScope(), str).apply();
        } catch (Throwable unused) {
        }
    }

    private static String userScope() {
        String currentUid = UserIdMap.getCurrentUid();
        return isEmpty(currentUid) ? "default" : currentUid.replaceAll("[^0-9A-Za-z_-]", "_");
    }

    private static boolean isEmpty(String str) {
        return str == null || str.length() == 0;
    }

    private static final class EnergyProgress {
        final int current;
        final boolean hasData;
        final int total;

        EnergyProgress(boolean z, int i, int i2) {
            this.hasData = z;
            this.current = i;
            this.total = i2;
        }
    }
}
