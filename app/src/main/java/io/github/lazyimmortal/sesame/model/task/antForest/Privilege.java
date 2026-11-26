package io.github.lazyimmortal.sesame.model.task.antForest;

import io.github.lazyimmortal.sesame.util.Log;
import io.github.lazyimmortal.sesame.util.Status;
import io.github.lazyimmortal.sesame.util.idMap.UserIdMap;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class Privilege {
    private static final String FLAG_RECEIVED = "youth_privilege_forest_received";
    private static final String FLAG_STUDENT_TASK = "youth_privilege_student_task";
    private static final String PREFIX_PRIVILEGE = "青春特权🌸";
    private static final String PREFIX_SIGN = "青春特权🧧";
    private static final String RPC_SUCCESS = "SUCCESS";
    private static final int SIGN_END_HOUR = 10;
    private static final int SIGN_START_HOUR = 5;
    private static final String TAG = "Privilege";
    private static final String TASK_FINISHED = "FINISHED";
    private static final String TASK_RECEIVED = "RECEIVED";
    private static final List<YouthTask> YOUTH_TASKS;

    static {
        ArrayList arrayList = new ArrayList();
        YOUTH_TASKS = arrayList;
        arrayList.add(new YouthTask("DNHZ_SL_college", "DAXUESHENG_SJK", "双击卡"));
        arrayList.add(new YouthTask("DXS_BHZ", "NENGLIANGZHAO_20230807", "保护罩"));
        arrayList.add(new YouthTask("DXS_JSQ", "JIASUQI_20230808", "加速器"));
    }

    private Privilege() {
    }

    public static boolean youthPrivilege() {
        boolean z = false;
        if (Status.hasFlagToday(FLAG_RECEIVED).booleanValue()) {
            return false;
        }
        ArrayList arrayList = new ArrayList();
        Iterator<YouthTask> it = YOUTH_TASKS.iterator();
        while (it.hasNext()) {
            arrayList.addAll(processYouthTask(it.next()));
        }
        Iterator it2 = arrayList.iterator();
        do {
            if (!it2.hasNext()) {
                z = true;
                break;
            }
        } while ("处理成功".equals((String) it2.next()));
        if (z) {
            Status.flagToday(FLAG_RECEIVED);
        }
        return z;
    }

    private static List<String> processYouthTask(YouthTask youthTask) {
        return handleForestTasks(getForestTasks(youthTask.queryParam), youthTask.receiveParam, youthTask.name);
    }

    private static JSONArray getForestTasks(String str) {
        try {
            return new JSONObject(AntForestRpcCall.queryTaskListV2(str)).getJSONArray("taskInfoList");
        } catch (JSONException e) {
            Log.error("获取任务列表失败" + e);
            return null;
        }
    }

    private static List<String> handleForestTasks(JSONArray jSONArray, String str, String str2) {
        JSONObject jSONObjectOptJSONObject;
        ArrayList arrayList = new ArrayList();
        if (jSONArray != null) {
            try {
                if (jSONArray.length() > 0) {
                    for (int i = 0; i < jSONArray.length(); i++) {
                        JSONObject jSONObjectOptJSONObject2 = jSONArray.optJSONObject(i);
                        if (jSONObjectOptJSONObject2 != null && (jSONObjectOptJSONObject = jSONObjectOptJSONObject2.optJSONObject("taskBaseInfo")) != null) {
                            String string = new JSONObject(jSONObjectOptJSONObject.getString("bizInfo")).getString("taskTitle");
                            if (str.equals(jSONObjectOptJSONObject.optString("taskType"))) {
                                processSingleYouthTask(jSONObjectOptJSONObject, str, string, arrayList);
                            }
                        }
                    }
                }
            } catch (Throwable th) {
                Log.error("任务列表解析失败" + th);
                arrayList.add("处理异常");
            }
        }
        return arrayList;
    }

    private static void processSingleYouthTask(JSONObject jSONObject, String str, String str2, List<String> list) {
        String strOptString = jSONObject.optString("taskStatus");
        strOptString.hashCode();
        if (!strOptString.equals(TASK_RECEIVED)) {
            if (strOptString.equals(TASK_FINISHED)) {
                handleYouthTaskAward(str, str2, list);
            }
        } else {
            Log.forest("青春特权🌸[" + str2 + "]已领取[" + UserIdMap.getShowName(UserIdMap.getCurrentUid()) + "]");
        }
    }

    private static void handleYouthTaskAward(String str, String str2, List<String> list) {
        String str3;
        try {
            String strOptString = new JSONObject(AntForestRpcCall.receiveTaskAwardV2(str)).optString("desc");
            list.add(strOptString);
            if ("处理成功".equals(strOptString)) {
                str3 = "领取成功";
            } else {
                str3 = "领取结果：" + strOptString;
            }
            Log.forest("青春特权🌸[" + str2 + "]" + str3 + "[" + UserIdMap.getShowName(UserIdMap.getCurrentUid()) + "]");
        } catch (JSONException e) {
            Log.error("奖励领取结果解析失败" + e);
            list.add("处理异常");
        }
    }

    public static void studentSignInRedEnvelope() {
        if (!isSignInTimeValid()) {
            Log.record("青春特权🧧5点前不执行签到");
            return;
        }
        if (Status.hasFlagToday(FLAG_STUDENT_TASK).booleanValue()) {
            Log.record("青春特权🧧今日已完成签到");
            return;
        }
        try {
            processStudentSignIn();
        } catch (Exception e) {
            Log.error("学生签到异常" + e);
        }
    }

    private static boolean isSignInTimeValid() {
        return Calendar.getInstance().get(11) >= 5;
    }

    private static void processStudentSignIn() {
        try {
            JSONObject jSONObject = new JSONObject(AntForestRpcCall.studentQqueryCheckInModel());
            if (!RPC_SUCCESS.equals(jSONObject.optString("resultCode"))) {
                Log.record("青春特权🧧 查询失败：" + jSONObject.optString("resultDesc"));
            } else {
                JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("studentCheckInInfo");
                if (jSONObjectOptJSONObject == null || "DO_TASK".equals(jSONObjectOptJSONObject.optString("action"))) {
                    Status.flagToday(FLAG_STUDENT_TASK);
                } else {
                    executeStudentSignIn();
                }
            }
        } catch (JSONException e) {
            Log.error("学生签到模型解析失败" + e);
        }
    }

    private static void executeStudentSignIn() {
        try {
            handleSignInResult(new JSONObject(AntForestRpcCall.studentCheckin()), Calendar.getInstance().get(11) < 10 ? "double" : "single");
        } catch (JSONException e) {
            Log.error("学生签到失败：" + e.getMessage());
        }
    }

    private static void handleSignInResult(JSONObject jSONObject, String str) {
        String strOptString = jSONObject.optString("resultCode");
        String strOptString2 = jSONObject.optString("resultDesc");
        if (RPC_SUCCESS.equals(strOptString)) {
            Status.flagToday(FLAG_STUDENT_TASK);
            Log.forest(PREFIX_SIGN + str + strOptString2);
            return;
        }
        if (strOptString2.contains("不匹配")) {
            strOptString2 = strOptString2 + "可能账户不符合条件";
        }
        Log.error(PREFIX_SIGN + str + " 失败：" + strOptString2);
    }

    public static class YouthTask {
        public final String name;
        public final String queryParam;
        public final String receiveParam;

        public YouthTask(String str, String str2, String str3) {
            this.queryParam = str;
            this.receiveParam = str2;
            this.name = str3;
        }
    }
}
