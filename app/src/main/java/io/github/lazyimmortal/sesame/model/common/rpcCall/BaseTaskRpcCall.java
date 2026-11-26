package io.github.lazyimmortal.sesame.model.common.rpcCall;

import io.github.lazyimmortal.sesame.hook.ApplicationHook;
import io.github.lazyimmortal.sesame.util.JsonUtil;
import io.github.lazyimmortal.sesame.util.Log;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class BaseTaskRpcCall {
    public static String taskQuery(String str) {
        return ApplicationHook.requestString("com.alipay.loanpromoweb.promo.task.taskQuery", "[{\"appletId\":\"" + str + "\",\"completedBottom\":true}]");
    }

    public static String taskTrigger(String str, String str2, String str3) {
        return ApplicationHook.requestString("com.alipay.loanpromoweb.promo.task.taskTrigger", "[{\"appletId\":\"" + str + "\",\"stageCode\":\"" + str2 + "\",\"taskCenId\":\"" + str3 + "\"}]");
    }

    public static String signInTrigger(String str) {
        return ApplicationHook.requestString("com.alipay.loanpromoweb.promo.signin.trigger", "[{\"extInfo\":{},\"sceneId\":\"" + str + "\"}]");
    }

    /* JADX WARN: Code duplicated, block: B:27:0x00cc A[Catch: all -> 0x0132, TryCatch #0 {all -> 0x0132, blocks: (B:3:0x0004, B:6:0x0015, B:8:0x002e, B:9:0x003b, B:11:0x0041, B:13:0x0053, B:16:0x005d, B:19:0x0071, B:21:0x0082, B:27:0x00cc, B:29:0x00d4, B:32:0x00db, B:38:0x010c, B:35:0x00e2, B:37:0x00f3, B:22:0x009c, B:24:0x00a2, B:26:0x00b3), top: B:43:0x0004 }] */
    /* JADX WARN: Code duplicated, block: B:29:0x00d4 A[Catch: all -> 0x0132, TryCatch #0 {all -> 0x0132, blocks: (B:3:0x0004, B:6:0x0015, B:8:0x002e, B:9:0x003b, B:11:0x0041, B:13:0x0053, B:16:0x005d, B:19:0x0071, B:21:0x0082, B:27:0x00cc, B:29:0x00d4, B:32:0x00db, B:38:0x010c, B:35:0x00e2, B:37:0x00f3, B:22:0x009c, B:24:0x00a2, B:26:0x00b3), top: B:43:0x0004 }] */
    /* JADX WARN: Code duplicated, block: B:35:0x00e2 A[Catch: all -> 0x0132, TryCatch #0 {all -> 0x0132, blocks: (B:3:0x0004, B:6:0x0015, B:8:0x002e, B:9:0x003b, B:11:0x0041, B:13:0x0053, B:16:0x005d, B:19:0x0071, B:21:0x0082, B:27:0x00cc, B:29:0x00d4, B:32:0x00db, B:38:0x010c, B:35:0x00e2, B:37:0x00f3, B:22:0x009c, B:24:0x00a2, B:26:0x00b3), top: B:43:0x0004 }] */
    /* JADX WARN: Code duplicated, block: B:37:0x00f3 A[Catch: all -> 0x0132, TryCatch #0 {all -> 0x0132, blocks: (B:3:0x0004, B:6:0x0015, B:8:0x002e, B:9:0x003b, B:11:0x0041, B:13:0x0053, B:16:0x005d, B:19:0x0071, B:21:0x0082, B:27:0x00cc, B:29:0x00d4, B:32:0x00db, B:38:0x010c, B:35:0x00e2, B:37:0x00f3, B:22:0x009c, B:24:0x00a2, B:26:0x00b3), top: B:43:0x0004 }] */
    /* JADX WARN: Code duplicated, block: B:38:0x010c A[Catch: all -> 0x0132, TRY_LEAVE, TryCatch #0 {all -> 0x0132, blocks: (B:3:0x0004, B:6:0x0015, B:8:0x002e, B:9:0x003b, B:11:0x0041, B:13:0x0053, B:16:0x005d, B:19:0x0071, B:21:0x0082, B:27:0x00cc, B:29:0x00d4, B:32:0x00db, B:38:0x010c, B:35:0x00e2, B:37:0x00f3, B:22:0x009c, B:24:0x00a2, B:26:0x00b3), top: B:43:0x0004 }] */
    /* JADX WARN: Instruction removed from duplicated block: B:37:0x00f3, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:38:0x010c, please report this as an issue */
    public static void doTask(String str, String str2, String str3) {
        JSONObject jSONObject;
        try {
            JSONObject jSONObject2 = new JSONObject(taskQuery(str));
            if (!jSONObject2.optBoolean("success")) {
                Log.i(str2 + ".doTask.taskQuery", jSONObject2.optString("resultDesc"));
                return;
            }
            JSONArray jSONArray = jSONObject2.getJSONObject("result").getJSONArray("taskDetailList");
            for (int i = 0; i < jSONArray.length(); i++) {
                JSONObject jSONObject3 = jSONArray.getJSONObject(i);
                String string = jSONObject3.getString("sendCampTriggerType");
                if ("USER_TRIGGER".equals(string) || "EVENT_TRIGGER".equals(string)) {
                    String string2 = jSONObject3.getString("taskProcessStatus");
                    String string3 = jSONObject3.getString("taskId");
                    if ("TO_RECEIVE".equals(string2)) {
                        JSONObject jSONObject4 = new JSONObject(taskTrigger(string3, "receive", str));
                        if (!jSONObject4.optBoolean("success")) {
                            Log.i(str2 + ".doTask.receive", jSONObject4.optString("resultDesc"));
                        } else if (!"SIGNUP_COMPLETE".equals(string2) || "NONE_SIGNUP".equals(string2)) {
                            jSONObject = new JSONObject(taskTrigger(string3, "send", str));
                            if (jSONObject.optBoolean("success")) {
                                Log.other(str3 + "[" + JsonUtil.getValueByPath(jSONObject3, "taskExtProps.TASK_MORPHO_DETAIL.title") + "]任务完成");
                            } else {
                                Log.i(str2 + ".doTask.send", jSONObject.optString("resultDesc"));
                            }
                        } else if ("TO_RECEIVE".equals(string2)) {
                            Log.other(str3 + "[" + JsonUtil.getValueByPath(jSONObject3, "taskExtProps.TASK_MORPHO_DETAIL.title") + "]任务完成");
                        }
                    } else if ("NONE_SIGNUP".equals(string2)) {
                        JSONObject jSONObject5 = new JSONObject(taskTrigger(string3, "signup", str));
                        if (!jSONObject5.optBoolean("success")) {
                            Log.i(str2 + ".doTask.signup", jSONObject5.optString("resultDesc"));
                        } else if (!"SIGNUP_COMPLETE".equals(string2)) {
                            jSONObject = new JSONObject(taskTrigger(string3, "send", str));
                            if (jSONObject.optBoolean("success")) {
                                Log.i(str2 + ".doTask.send", jSONObject.optString("resultDesc"));
                            } else {
                                Log.other(str3 + "[" + JsonUtil.getValueByPath(jSONObject3, "taskExtProps.TASK_MORPHO_DETAIL.title") + "]任务完成");
                            }
                        } else {
                            jSONObject = new JSONObject(taskTrigger(string3, "send", str));
                            if (jSONObject.optBoolean("success")) {
                                Log.i(str2 + ".doTask.send", jSONObject.optString("resultDesc"));
                            } else {
                                Log.other(str3 + "[" + JsonUtil.getValueByPath(jSONObject3, "taskExtProps.TASK_MORPHO_DETAIL.title") + "]任务完成");
                            }
                        }
                    } else if (!"SIGNUP_COMPLETE".equals(string2)) {
                        jSONObject = new JSONObject(taskTrigger(string3, "send", str));
                        if (jSONObject.optBoolean("success")) {
                            Log.i(str2 + ".doTask.send", jSONObject.optString("resultDesc"));
                        } else {
                            Log.other(str3 + "[" + JsonUtil.getValueByPath(jSONObject3, "taskExtProps.TASK_MORPHO_DETAIL.title") + "]任务完成");
                        }
                    } else {
                        jSONObject = new JSONObject(taskTrigger(string3, "send", str));
                        if (jSONObject.optBoolean("success")) {
                            Log.i(str2 + ".doTask.send", jSONObject.optString("resultDesc"));
                        } else {
                            Log.other(str3 + "[" + JsonUtil.getValueByPath(jSONObject3, "taskExtProps.TASK_MORPHO_DETAIL.title") + "]任务完成");
                        }
                    }
                }
            }
        } catch (Throwable th) {
            Log.i(str2, "doTask err:");
            Log.printStackTrace(str2, th);
        }
    }
}
