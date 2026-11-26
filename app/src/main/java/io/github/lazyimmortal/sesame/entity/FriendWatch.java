package io.github.lazyimmortal.sesame.entity;

import io.github.lazyimmortal.sesame.util.FileUtil;
import io.github.lazyimmortal.sesame.util.Log;
import io.github.lazyimmortal.sesame.util.StringUtil;
import io.github.lazyimmortal.sesame.util.TimeUtil;
import io.github.lazyimmortal.sesame.util.idMap.UserIdMap;
import java.io.File;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import java.util.TimeZone;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class FriendWatch extends IdAndName {
    private static final String TAG = "FriendWatch";
    private int allGet;
    public String bodyText;
    private long dailyAverage;
    private int dayGet;
    public boolean delete;
    private long fourWeekAverage;
    public boolean hasShield;
    public String headImageUrl;
    private int monthGet;
    private String startTime;
    public String statsExtraText;
    public String statsIntroText;
    private long thisWeekAverage;
    private long threeWeekAverage;
    public String titleText;
    private long twoWeekAverage;
    private int week1Get;
    private int week2Get;
    private int week3Get;
    private int weekGet;

    public FriendWatch(String str, String str2) {
        this.id = str;
        this.name = str2;
    }

    public int getDayGet() {
        return this.dayGet;
    }

    public int getWeekGet() {
        return this.weekGet;
    }

    public int getWeek1Get() {
        return this.week1Get;
    }

    public int getWeek2Get() {
        return this.week2Get;
    }

    public int getWeek3Get() {
        return this.week3Get;
    }

    public int getMonthGet() {
        return this.monthGet;
    }

    public int getAllGet() {
        return this.allGet;
    }

    public long getDailyAverage() {
        return this.dailyAverage;
    }

    public long getThisWeekAverage() {
        return this.thisWeekAverage;
    }

    public long getTwoWeekAverage() {
        return this.twoWeekAverage;
    }

    public long getThreeWeekAverage() {
        return this.threeWeekAverage;
    }

    public long getFourWeekAverage() {
        return this.fourWeekAverage;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // io.github.lazyimmortal.sesame.entity.IdAndName, java.lang.Comparable
    public int compareTo(IdAndName idAndName) {
        int i = this.weekGet;
        int i2 = ((FriendWatch) idAndName).weekGet;
        if (i > i2) {
            return -1;
        }
        if (i < i2) {
            return 1;
        }
        return super.compareTo(idAndName);
    }

    private static JSONObject readJo(String str) {
        String fromFile = FileUtil.readFromFile(FileUtil.getFriendWatchFile(str));
        if (StringUtil.isEmpty(fromFile)) {
            return new JSONObject();
        }
        try {
            return new JSONObject(fromFile);
        } catch (JSONException e) {
            Log.printStackTrace(e);
            return restoreFromBak(str);
        }
    }

    private static File getBakFile(String str) {
        return new File(FileUtil.getFriendWatchFile(str).getParentFile(), "friendWatch.json.bak");
    }

    private static File getDailyEnergyFile(String str) {
        return new File(FileUtil.getFriendWatchFile(str).getParentFile(), "friendEnergyDaily.json");
    }

    private static File getDailyEnergyBakFile(String str) {
        return new File(FileUtil.getFriendWatchFile(str).getParentFile(), "friendEnergyDaily.json.bak");
    }

    private static JSONObject readDailyEnergyJo(String str) {
        String fromFile = FileUtil.readFromFile(getDailyEnergyFile(str));
        if (StringUtil.isEmpty(fromFile)) {
            return new JSONObject();
        }
        try {
            return new JSONObject(fromFile);
        } catch (JSONException unused) {
            try {
                String fromFile2 = FileUtil.readFromFile(getDailyEnergyBakFile(str));
                if (StringUtil.isEmpty(fromFile2)) {
                    return null;
                }
                return new JSONObject(fromFile2);
            } catch (Throwable unused2) {
                return null;
            }
        }
    }

    private static void writeDailyEnergyJo(String str, JSONObject jSONObject) {
        String string = jSONObject.toString();
        FileUtil.write2File(string, getDailyEnergyFile(str));
        FileUtil.write2File(string, getDailyEnergyBakFile(str));
    }

    private static JSONObject restoreFromBak(String str) {
        try {
            String fromFile = FileUtil.readFromFile(getBakFile(str));
            if (StringUtil.isEmpty(fromFile)) {
                return null;
            }
            JSONObject jSONObject = new JSONObject(fromFile);
            Log.i(TAG, "统计文件损坏, 已用备份恢复: " + str);
            FileUtil.write2File(jSONObject.toString(), FileUtil.getFriendWatchFile(str));
            return jSONObject;
        } catch (Throwable th) {
            Log.printStackTrace(th);
            return null;
        }
    }

    private static void writeJo(String str, JSONObject jSONObject) {
        String string = jSONObject.toString();
        FileUtil.write2File(string, FileUtil.getFriendWatchFile(str));
        FileUtil.write2File(string, getBakFile(str));
    }

    private static long getWeekStartMillis(Calendar calendar) {
        Calendar calendar2 = (Calendar) calendar.clone();
        calendar2.add(6, -((calendar2.get(7) + 5) % 7));
        calendar2.set(11, 0);
        calendar2.set(12, 0);
        calendar2.set(13, 0);
        calendar2.set(14, 0);
        return calendar2.getTimeInMillis();
    }

    private static boolean rollWeek(JSONObject jSONObject, long j) throws JSONException {
        long jOptLong = jSONObject.optLong("weekStart", 0L);
        if (jOptLong <= 0) {
            jSONObject.put("weekStart", j);
            return true;
        }
        if (j <= jOptLong) {
            return false;
        }
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(jOptLong);
        int i = 0;
        while (calendar.getTimeInMillis() < j && i < 4) {
            calendar.add(6, 7);
            i++;
        }
        int[] iArr = {jSONObject.optInt("weekGet", 0), jSONObject.optInt("week1Get", 0), jSONObject.optInt("week2Get", 0), jSONObject.optInt("week3Get", 0)};
        int[] iArr2 = new int[4];
        for (int i2 = 0; i2 < 4; i2++) {
            int i3 = i2 - i;
            if (i3 >= 0 && i < 4) {
                iArr2[i2] = iArr[i3];
            }
        }
        jSONObject.put("weekGet", iArr2[0]);
        jSONObject.put("week1Get", iArr2[1]);
        jSONObject.put("week2Get", iArr2[2]);
        jSONObject.put("week3Get", iArr2[3]);
        jSONObject.put("weekStart", j);
        return true;
    }

    private static long getEffectiveStartMillis(JSONObject jSONObject, String str, Long l) {
        long jOptLong = jSONObject.optLong("startTimeMillis", 0L);
        if (jOptLong <= 0 && !StringUtil.isEmpty(str)) {
            try {
                Date date = DateFormat.getDateInstance().parse(str);
                if (date != null) {
                    jOptLong = date.getTime();
                }
            } catch (Throwable unused) {
            }
        }
        if (jOptLong <= 0) {
            jOptLong = System.currentTimeMillis();
        }
        return (l == null || l.longValue() <= jOptLong) ? jOptLong : l.longValue();
    }

    private static long getDaysSince(long j) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(j);
        calendar.set(11, 0);
        calendar.set(12, 0);
        calendar.set(13, 0);
        calendar.set(14, 0);
        Calendar calendar2 = Calendar.getInstance();
        calendar2.set(11, 0);
        calendar2.set(12, 0);
        calendar2.set(13, 0);
        calendar2.set(14, 0);
        TimeZone timeZone = TimeZone.getDefault();
        return Math.max(1L, (((calendar2.getTimeInMillis() - calendar.getTimeInMillis()) + ((long) (timeZone.getOffset(calendar2.getTimeInMillis()) - timeZone.getOffset(calendar.getTimeInMillis())))) / 86400000) + 1);
    }

    private static long calculateDailyAverage(int i, long j) {
        return Math.round(((double) i) / getDaysSince(j));
    }

    private static long calculateWeeklyAverage(int[] iArr, int i, long j) {
        long j2 = 0;
        for (int i2 = 0; i2 < i && i2 < iArr.length; i2++) {
            j2 += (long) iArr[i2];
        }
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(getWeekStartMillis(calendar));
        calendar.add(6, (i - 1) * (-7));
        return Math.round(j2 / getDaysSince(Math.max(calendar.getTimeInMillis(), j)));
    }

    public static synchronized long getTodayCollectedTotal(String str) {
        if (StringUtil.isEmpty(str)) {
            return -1L;
        }
        JSONObject jo = readJo(str);
        if (jo == null) {
            return -1L;
        }
        String dateStr = TimeUtil.getDateStr();
        Calendar calendar = Calendar.getInstance();
        Calendar calendar2 = Calendar.getInstance();
        calendar2.setTimeInMillis(FileUtil.getFriendWatchFile(str).lastModified());
        boolean z = calendar2.getTimeInMillis() > 0 && calendar2.get(1) == calendar.get(1) && calendar2.get(6) == calendar.get(6);
        Iterator<String> itKeys = jo.keys();
        long jMax = 0;
        boolean z2 = false;
        while (itKeys.hasNext()) {
            JSONObject jSONObjectOptJSONObject = jo.optJSONObject(itKeys.next());
            if (jSONObjectOptJSONObject != null) {
                String strOptString = jSONObjectOptJSONObject.optString("dayGetDate");
                if (dateStr.equals(strOptString)) {
                    jMax += (long) Math.max(0, jSONObjectOptJSONObject.optInt("dayGet", 0));
                } else if (StringUtil.isEmpty(strOptString) && z) {
                    jMax += (long) Math.max(0, jSONObjectOptJSONObject.optInt("dayGet", 0));
                    try {
                        jSONObjectOptJSONObject.put("dayGetDate", dateStr);
                        z2 = true;
                    } catch (JSONException unused) {
                    }
                }
            }
        }
        if (z2) {
            writeJo(str, jo);
        }
        JSONObject dailyEnergyJo = readDailyEnergyJo(str);
        if (dailyEnergyJo == null) {
            return -1L;
        }
        if (dateStr.equals(dailyEnergyJo.optString("date"))) {
            jMax += Math.max(0L, dailyEnergyJo.optLong("pkEnergy", 0L));
        }
        return jMax;
    }

    public static synchronized void addPkDailyCollectedEnergy(String str, int i) {
        if (StringUtil.isEmpty(str) || i <= 0) {
            return;
        }
        try {
            JSONObject dailyEnergyJo = readDailyEnergyJo(str);
            if (dailyEnergyJo == null) {
                Log.i(TAG, "addPkDailyCollectedEnergy skip: daily file damaged");
                return;
            }
            String dateStr = TimeUtil.getDateStr();
            if (!dateStr.equals(dailyEnergyJo.optString("date"))) {
                dailyEnergyJo.put("date", dateStr);
                dailyEnergyJo.put("pkEnergy", 0);
            }
            dailyEnergyJo.put("pkEnergy", dailyEnergyJo.optLong("pkEnergy", 0L) + ((long) i));
            writeDailyEnergyJo(str, dailyEnergyJo);
        } catch (Throwable th) {
            String str2 = TAG;
            Log.i(str2, "addPkDailyCollectedEnergy err:");
            Log.printStackTrace(str2, th);
        }
    }

    public static synchronized void friendWatch(String str, int i, String str2) {
        try {
            String currentUid = UserIdMap.getCurrentUid();
            if (StringUtil.isEmpty(currentUid)) {
                Log.i(TAG, "friendWatch skip: currentUid为空");
                return;
            }
            JSONObject jo = readJo(currentUid);
            if (jo == null) {
                Log.i(TAG, "friendWatch skip: 统计文件损坏且无备份");
                return;
            }
            if (StringUtil.isEmpty(str2)) {
                str2 = UserIdMap.getMaskName(str);
                if (StringUtil.isEmpty(str2)) {
                    str2 = UserIdMap.getShowName(str);
                }
            }
            JSONObject jSONObjectOptJSONObject = jo.optJSONObject(str);
            if (jSONObjectOptJSONObject == null) {
                jSONObjectOptJSONObject = new JSONObject();
                jSONObjectOptJSONObject.put("name", str2);
                jSONObjectOptJSONObject.put("allGet", 0);
                jSONObjectOptJSONObject.put("startTime", TimeUtil.getDateStr());
                jSONObjectOptJSONObject.put("startTimeMillis", System.currentTimeMillis());
            } else if (StringUtil.isEmpty(jSONObjectOptJSONObject.optString("name"))) {
                jSONObjectOptJSONObject.put("name", str2);
            }
            String dateStr = TimeUtil.getDateStr();
            String strOptString = jSONObjectOptJSONObject.optString("dayGetDate");
            if (!dateStr.equals(strOptString)) {
                Calendar calendar = Calendar.getInstance();
                calendar.setTimeInMillis(FileUtil.getFriendWatchFile(currentUid).lastModified());
                Calendar calendar2 = Calendar.getInstance();
                if (!StringUtil.isEmpty(strOptString) || calendar.getTimeInMillis() <= 0 || calendar.get(1) != calendar2.get(1) || calendar.get(6) != calendar2.get(6)) {
                    jSONObjectOptJSONObject.put("dayGet", 0);
                }
                jSONObjectOptJSONObject.put("dayGetDate", dateStr);
            }
            rollWeek(jSONObjectOptJSONObject, getWeekStartMillis(Calendar.getInstance()));
            jSONObjectOptJSONObject.put("dayGet", jSONObjectOptJSONObject.optInt("dayGet", 0) + i);
            jSONObjectOptJSONObject.put("weekGet", jSONObjectOptJSONObject.optInt("weekGet", 0) + i);
            jSONObjectOptJSONObject.put("monthGet", jSONObjectOptJSONObject.optInt("monthGet", 0) + i);
            jSONObjectOptJSONObject.put("allGet", jSONObjectOptJSONObject.optInt("allGet", 0) + i);
            jo.put(str, jSONObjectOptJSONObject);
            writeJo(currentUid, jo);
        } catch (Throwable th) {
            String str3 = TAG;
            Log.i(str3, "friendWatch err:");
            Log.printStackTrace(str3, th);
        }
    }

    public static synchronized void waterFriendWatch(String str, boolean z) {
        try {
            String currentUid = UserIdMap.getCurrentUid();
            if (StringUtil.isEmpty(currentUid)) {
                Log.i(TAG, "waterFriendWatch skip: currentUid为空");
                return;
            }
            JSONObject jo = readJo(currentUid);
            if (jo == null) {
                Log.i(TAG, "waterFriendWatch skip: 统计文件损坏且无备份");
                return;
            }
            JSONObject jSONObjectOptJSONObject = jo.optJSONObject(str);
            if (jSONObjectOptJSONObject == null) {
                jSONObjectOptJSONObject = new JSONObject();
                jSONObjectOptJSONObject.put("name", resolveName(str));
                jSONObjectOptJSONObject.put("allGet", 0);
                jSONObjectOptJSONObject.put("startTime", TimeUtil.getDateStr());
                jSONObjectOptJSONObject.put("startTimeMillis", System.currentTimeMillis());
            }
            String str2 = z ? "wateredCount" : "wateringCount";
            jSONObjectOptJSONObject.put(str2, jSONObjectOptJSONObject.optInt(str2, 0) + 1);
            jo.put(str, jSONObjectOptJSONObject);
            writeJo(currentUid, jo);
        } catch (Throwable th) {
            String str3 = TAG;
            Log.i(str3, "waterFriendWatch err:");
            Log.printStackTrace(str3, th);
        }
    }

    public static synchronized void updateShield(String str, long j) {
        try {
            String currentUid = UserIdMap.getCurrentUid();
            if (StringUtil.isEmpty(currentUid)) {
                return;
            }
            JSONObject jo = readJo(currentUid);
            if (jo == null) {
                return;
            }
            JSONObject jSONObjectOptJSONObject = jo.optJSONObject(str);
            if (jSONObjectOptJSONObject == null) {
                jSONObjectOptJSONObject = new JSONObject();
                jSONObjectOptJSONObject.put("name", resolveName(str));
                jSONObjectOptJSONObject.put("allGet", 0);
                jSONObjectOptJSONObject.put("startTime", TimeUtil.getDateStr());
                jSONObjectOptJSONObject.put("startTimeMillis", System.currentTimeMillis());
            }
            jSONObjectOptJSONObject.put("shieldEndTime", j);
            jo.put(str, jSONObjectOptJSONObject);
            writeJo(currentUid, jo);
        } catch (Throwable th) {
            String str2 = TAG;
            Log.i(str2, "updateShield err:");
            Log.printStackTrace(str2, th);
        }
    }

    public static Set<String> getDontCollectSet(String str) {
        JSONObject jSONObjectOptJSONObject;
        JSONObject jSONObjectOptJSONObject2;
        HashSet hashSet = new HashSet();
        if (StringUtil.isEmpty(str)) {
            return hashSet;
        }
        try {
            String fromFile = FileUtil.readFromFile(FileUtil.getConfigV2File(str));
            if (!StringUtil.isEmpty(fromFile) && (jSONObjectOptJSONObject = new JSONObject(fromFile).optJSONObject("modelFieldsMap")) != null) {
                Iterator<String> itKeys = jSONObjectOptJSONObject.keys();
                while (itKeys.hasNext()) {
                    JSONObject jSONObjectOptJSONObject3 = jSONObjectOptJSONObject.optJSONObject(itKeys.next());
                    if (jSONObjectOptJSONObject3 != null && (jSONObjectOptJSONObject2 = jSONObjectOptJSONObject3.optJSONObject("dontCollectList")) != null) {
                        JSONArray jSONArrayOptJSONArray = jSONObjectOptJSONObject2.optJSONArray("value");
                        if (jSONArrayOptJSONArray == null) {
                            break;
                        }
                        for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                            String strOptString = jSONArrayOptJSONArray.optString(i);
                            if (!StringUtil.isEmpty(strOptString)) {
                                hashSet.add(strOptString);
                            }
                        }
                        break;
                    }
                }
            } else {
                return hashSet;
            }
        } catch (Throwable th) {
            String str2 = TAG;
            Log.i(str2, "getDontCollectSet err:");
            Log.printStackTrace(str2, th);
        }
        return hashSet;
    }

    public static synchronized void save() {
    }

    public static synchronized int updateEnergySummation(JSONObject jSONObject) {
        int i = 0;
        try {
            String currentUid = UserIdMap.getCurrentUid();
            if (StringUtil.isEmpty(currentUid)) {
                return 0;
            }
            JSONObject jo = readJo(currentUid);
            if (jo == null) {
                Log.i(TAG, "updateEnergySummation skip: 统计文件损坏且无备份");
                return 0;
            }
            String[] strArr = {"friendRanking", "totalDatas"};
            boolean z = false;
            int i2 = 0;
            for (int i3 = 0; i3 < 2; i3++) {
                try {
                    JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray(strArr[i3]);
                    if (jSONArrayOptJSONArray != null) {
                        for (int i4 = 0; i4 < jSONArrayOptJSONArray.length(); i4++) {
                            JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i4);
                            if (jSONObjectOptJSONObject != null && jSONObjectOptJSONObject.has("energySummation")) {
                                String strOptString = jSONObjectOptJSONObject.optString("userId", "");
                                if (!strOptString.isEmpty()) {
                                    JSONObject jSONObjectOptJSONObject2 = jo.optJSONObject(strOptString);
                                    if (jSONObjectOptJSONObject2 == null) {
                                        jSONObjectOptJSONObject2 = new JSONObject();
                                        jSONObjectOptJSONObject2.put("name", resolveName(strOptString));
                                        jSONObjectOptJSONObject2.put("startTime", TimeUtil.getDateStr());
                                        jSONObjectOptJSONObject2.put("startTimeMillis", System.currentTimeMillis());
                                        jSONObjectOptJSONObject2.put("dayGet", 0);
                                        jSONObjectOptJSONObject2.put("weekGet", 0);
                                        jSONObjectOptJSONObject2.put("monthGet", 0);
                                        jSONObjectOptJSONObject2.put("allGet", 0);
                                        jo.put(strOptString, jSONObjectOptJSONObject2);
                                    } else if (StringUtil.isEmpty(jSONObjectOptJSONObject2.optString("name"))) {
                                        jSONObjectOptJSONObject2.put("name", resolveName(strOptString));
                                    }
                                    jSONObjectOptJSONObject2.put("totalEnergy", jSONObjectOptJSONObject.optInt("energySummation"));
                                    i2++;
                                    z = true;
                                }
                            }
                        }
                    }
                } catch (Throwable th) {
                    th = th;
                    i = i2;
                    String str = TAG;
                    Log.i(str, "updateEnergySummation err:");
                    Log.printStackTrace(str, th);
                    i2 = i;
                    return i2;
                }
            }
            if (z) {
                writeJo(currentUid, jo);
            }
            return i2;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    private static String resolveName(String str) {
        String maskName = UserIdMap.getMaskName(str);
        return StringUtil.isEmpty(maskName) ? UserIdMap.getShowName(str) : maskName;
    }

    public static synchronized void updateDay() {
        boolean z;
        String currentUid = UserIdMap.getCurrentUid();
        if (StringUtil.isEmpty(currentUid)) {
            return;
        }
        long jLastModified = FileUtil.getFriendWatchFile(currentUid).lastModified();
        Calendar calendar = Calendar.getInstance();
        boolean z2 = true;
        if (jLastModified == 0) {
            z = false;
        } else {
            Calendar calendar2 = Calendar.getInstance();
            calendar2.setTimeInMillis(jLastModified);
            boolean z3 = (calendar2.get(6) == calendar.get(6) && calendar2.get(1) == calendar.get(1)) ? false : true;
            if (calendar2.get(2) == calendar.get(2) && calendar2.get(1) == calendar.get(1)) {
                z2 = false;
            }
            boolean z4 = z2;
            z2 = z3;
            z = z4;
        }
        if (!z2) {
            return;
        }
        long weekStartMillis = getWeekStartMillis(calendar);
        try {
            JSONObject jo = readJo(currentUid);
            if (jo == null) {
                Log.i(TAG, "updateDay skip: 统计文件损坏且无备份");
                return;
            }
            String dateStr = TimeUtil.getDateStr();
            Iterator<String> itKeys = jo.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                JSONObject jSONObject = jo.getJSONObject(next);
                rollWeek(jSONObject, weekStartMillis);
                if (dateStr.equals(jSONObject.optString("dayGetDate"))) {
                    jSONObject.put("dayGet", 0);
                    jSONObject.put("dayGetDate", dateStr);
                }
                if (z) {
                    jSONObject.put("monthGet", 0);
                }
                if (!jSONObject.has("startTime")) {
                    jSONObject.put("startTime", dateStr);
                    jSONObject.put("startTimeMillis", System.currentTimeMillis());
                }
                jo.put(next, jSONObject);
            }
            writeJo(currentUid, jo);
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "friendWatchNewWeek err:");
            Log.printStackTrace(str, th);
        }
    }

    public static synchronized Boolean load() {
        return true;
    }

    public static synchronized void unload() {
    }

    public static synchronized List<FriendWatch> getList(String str) {
        ArrayList arrayList = new ArrayList();
        if (StringUtil.isEmpty(str)) {
            return arrayList;
        }
        try {
            JSONObject jo = readJo(str);
            if (jo == null) {
                Log.i(TAG, "getList skip: 统计文件损坏且无备份");
                return arrayList;
            }
            UserIdMap.load(str);
            Iterator<String> itKeys = jo.keys();
            long weekStartMillis = getWeekStartMillis(Calendar.getInstance());
            int i = 0;
            boolean z = false;
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                UserEntity userEntity = UserIdMap.get(next);
                if (UserIdMap.getUserMap().isEmpty() || userEntity != null) {
                    JSONObject jSONObjectOptJSONObject = jo.optJSONObject(next);
                    if (jSONObjectOptJSONObject == null) {
                        jSONObjectOptJSONObject = new JSONObject();
                    }
                    if (rollWeek(jSONObjectOptJSONObject, weekStartMillis)) {
                        z = true;
                    }
                    String strOptString = jSONObjectOptJSONObject.optString("name");
                    if (StringUtil.isEmpty(strOptString)) {
                        strOptString = UserIdMap.getMaskName(next);
                        if (StringUtil.isEmpty(strOptString)) {
                            strOptString = UserIdMap.getShowName(next);
                        }
                        try {
                            jSONObjectOptJSONObject.put("name", strOptString);
                            z = true;
                        } catch (Throwable unused) {
                        }
                    }
                    FriendWatch friendWatch = new FriendWatch(next, strOptString);
                    friendWatch.startTime = jSONObjectOptJSONObject.optString("startTime", "无");
                    friendWatch.dayGet = jSONObjectOptJSONObject.optInt("dayGet", i);
                    friendWatch.weekGet = jSONObjectOptJSONObject.optInt("weekGet", i);
                    friendWatch.week1Get = jSONObjectOptJSONObject.optInt("week1Get", i);
                    friendWatch.week2Get = jSONObjectOptJSONObject.optInt("week2Get", i);
                    friendWatch.week3Get = jSONObjectOptJSONObject.optInt("week3Get", i);
                    friendWatch.monthGet = jSONObjectOptJSONObject.optInt("monthGet", i);
                    friendWatch.allGet = jSONObjectOptJSONObject.optInt("allGet", i);
                    long effectiveStartMillis = getEffectiveStartMillis(jSONObjectOptJSONObject, friendWatch.startTime, userEntity != null ? userEntity.getFriendTime() : null);
                    boolean z2 = z;
                    friendWatch.dailyAverage = calculateDailyAverage(friendWatch.allGet, effectiveStartMillis);
                    int[] iArr = {friendWatch.weekGet, friendWatch.week1Get, friendWatch.week2Get, friendWatch.week3Get};
                    friendWatch.thisWeekAverage = calculateWeeklyAverage(iArr, 1, effectiveStartMillis);
                    friendWatch.twoWeekAverage = calculateWeeklyAverage(iArr, 2, effectiveStartMillis);
                    friendWatch.threeWeekAverage = calculateWeeklyAverage(iArr, 3, effectiveStartMillis);
                    friendWatch.fourWeekAverage = calculateWeeklyAverage(iArr, 4, effectiveStartMillis);
                    String str2 = "开始统计时间:" + friendWatch.startTime;
                    String str3 = str2 + "\n日收:" + friendWatch.dayGet + " 月收:" + friendWatch.monthGet + " 总收:" + friendWatch.allGet + " 日均:" + friendWatch.dailyAverage + "\n本周:" + friendWatch.weekGet + " 上周:" + friendWatch.week1Get + " 上上周:" + friendWatch.week2Get + " 上上上周:" + friendWatch.week3Get;
                    StringBuilder sb = new StringBuilder();
                    Iterator<String> it = itKeys;
                    long j = weekStartMillis;
                    long jOptLong = jSONObjectOptJSONObject.optLong("shieldEndTime", 0L);
                    if (jOptLong > System.currentTimeMillis()) {
                        String str4 = "\n保护罩:" + new SimpleDateFormat("MM-dd HH:mm", Locale.getDefault()).format(new Date(jOptLong));
                        str3 = str3 + str4;
                        sb.append(str4);
                        friendWatch.hasShield = true;
                    }
                    if (jSONObjectOptJSONObject.has("totalEnergy")) {
                        String str5 = "\nta的总能量:" + jSONObjectOptJSONObject.optInt("totalEnergy");
                        str3 = str3 + str5;
                        sb.append(str5);
                    }
                    if (userEntity != null) {
                        friendWatch.titleText = userEntity.getFullName();
                        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd", Locale.getDefault());
                        if (userEntity.getRegisterTime() != null && userEntity.getRegisterTime().longValue() > 0) {
                            String str6 = "\n更改时间:" + simpleDateFormat.format(new Date(userEntity.getRegisterTime().longValue()));
                            str3 = str3 + str6;
                            sb.append(str6);
                        }
                        if (userEntity.getFriendTime() != null && userEntity.getFriendTime().longValue() > 0) {
                            String str7 = " 成为好友:" + simpleDateFormat.format(new Date(userEntity.getFriendTime().longValue()));
                            sb.append(str7);
                            str3 = str3 + str7;
                        }
                        if (Boolean.TRUE.equals(userEntity.getIsDelete())) {
                            friendWatch.delete = true;
                        }
                        friendWatch.headImageUrl = userEntity.getHeadImageUrl();
                        friendWatch.icon = userEntity.getHeadImageUrl();
                    }
                    friendWatch.statsIntroText = str2;
                    friendWatch.statsExtraText = sb.length() > 0 ? sb.substring(1) : "";
                    friendWatch.bodyText = "\n" + str3 + "\n";
                    jo.put(next, jSONObjectOptJSONObject);
                    arrayList.add(friendWatch);
                    z = z2;
                    itKeys = it;
                    weekStartMillis = j;
                    i = 0;
                }
            }
            if (z) {
                writeJo(str, jo);
            }
            Collections.sort(arrayList, new Comparator() { // from class: io.github.lazyimmortal.sesame.entity.FriendWatch$$ExternalSyntheticLambda0
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    return FriendWatch.lambda$getList$0((FriendWatch) obj, (FriendWatch) obj2);
                }
            });
            return arrayList;
        } catch (Throwable th) {
            String str8 = TAG;
            Log.i(str8, "FriendWatch getList: ");
            Log.printStackTrace(str8, th);
        }
    }

    static /* synthetic */ int lambda$getList$0(FriendWatch friendWatch, FriendWatch friendWatch2) {
        boolean z = friendWatch.delete;
        if (z != friendWatch2.delete) {
            return z ? 1 : -1;
        }
        int i = friendWatch.allGet;
        int i2 = friendWatch2.allGet;
        if (i != i2) {
            return i2 - i;
        }
        int i3 = friendWatch.monthGet;
        int i4 = friendWatch2.monthGet;
        if (i3 != i4) {
            return i4 - i3;
        }
        int i5 = friendWatch.weekGet;
        int i6 = friendWatch2.weekGet;
        return i5 != i6 ? i6 - i5 : friendWatch2.dayGet - friendWatch.dayGet;
    }
}
