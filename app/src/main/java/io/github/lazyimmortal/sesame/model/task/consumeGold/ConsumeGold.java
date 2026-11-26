package io.github.lazyimmortal.sesame.model.task.consumeGold;

import io.github.lazyimmortal.sesame.data.ModelFields;
import io.github.lazyimmortal.sesame.data.ModelGroup;
import io.github.lazyimmortal.sesame.data.RuntimeInfo;
import io.github.lazyimmortal.sesame.data.task.ModelTask;
import io.github.lazyimmortal.sesame.model.base.TaskCommon;
import io.github.lazyimmortal.sesame.util.Log;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class ConsumeGold extends ModelTask {
    private static final String TAG = "ConsumeGold";

    @Override // io.github.lazyimmortal.sesame.data.task.ModelTask, io.github.lazyimmortal.sesame.data.Model
    public String getName() {
        return "消费金";
    }

    @Override // io.github.lazyimmortal.sesame.data.Model
    public ModelGroup getGroup() {
        return ModelGroup.OTHER;
    }

    @Override // io.github.lazyimmortal.sesame.data.task.ModelTask, io.github.lazyimmortal.sesame.data.Model
    public ModelFields getFields() {
        return new ModelFields();
    }

    @Override // io.github.lazyimmortal.sesame.data.task.ModelTask
    public Boolean check() {
        if (TaskCommon.IS_ENERGY_TIME.booleanValue()) {
            return false;
        }
        return Boolean.valueOf(System.currentTimeMillis() - RuntimeInfo.getInstance().getLong("consumeGold", 0L).longValue() >= 21600000);
    }

    @Override // io.github.lazyimmortal.sesame.data.task.ModelTask
    public void run() {
        try {
            RuntimeInfo.getInstance().put("consumeGold", Long.valueOf(System.currentTimeMillis()));
            signinCalendar();
            taskV2Index("CG_TASK_LIST");
            taskV2Index("HOME_NAVIGATION");
            taskV2Index("CG_SIGNIN_AD_FEEDS");
            taskV2Index("SURPRISE_TASK");
            taskV2Index("CG_BROWSER_AD_FEEDS");
            consumeGoldIndex();
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "start.run err:");
            Log.printStackTrace(str, th);
        }
    }

    private void taskV2Index(String str) {
        try {
            String strTaskV2Index = ConsumeGoldRpcCall.taskV2Index(str);
            JSONObject jSONObject = new JSONObject(strTaskV2Index);
            if (jSONObject.optBoolean("success")) {
                JSONArray jSONArray = jSONObject.getJSONArray("taskList");
                boolean z = false;
                for (int i = 0; i < jSONArray.length(); i++) {
                    JSONObject jSONObject2 = jSONArray.getJSONObject(i).getJSONObject("extInfo");
                    String string = jSONObject2.getString("taskStatus");
                    String string2 = jSONObject2.getString("title");
                    String string3 = jSONObject2.getString("actionBizId");
                    if ("TO_RECEIVE".equals(string)) {
                        taskV2TriggerReceive(string3, string2);
                    } else {
                        if ("NONE_SIGNUP".equals(string)) {
                            taskV2TriggerSignUp(string3);
                            Thread.sleep(1000L);
                            taskV2TriggerSend(string3);
                        } else if ("SIGNUP_COMPLETE".equals(string)) {
                            taskV2TriggerSend(string3);
                        }
                        z = true;
                    }
                }
                if (z) {
                    taskV2Index(str);
                    return;
                }
                return;
            }
            Log.record(jSONObject.getString("resultDesc"));
            Log.i(strTaskV2Index);
        } catch (Throwable th) {
            String str2 = TAG;
            Log.i(str2, "taskV2Index err:");
            Log.printStackTrace(str2, th);
        }
    }

    private void taskV2TriggerReceive(String str, String str2) {
        try {
            JSONObject jSONObject = new JSONObject(ConsumeGoldRpcCall.taskV2TriggerReceive(str));
            if (jSONObject.optBoolean("success")) {
                Log.other("赚消费金💰[" + str2 + "]#" + jSONObject.getInt("receiveAmount"));
            }
        } catch (Throwable th) {
            String str3 = TAG;
            Log.i(str3, "taskV2TriggerReceive err:");
            Log.printStackTrace(str3, th);
        }
    }

    private void taskV2TriggerSignUp(String str) {
        try {
            new JSONObject(ConsumeGoldRpcCall.taskV2TriggerSignUp(str)).optBoolean("success");
        } catch (Throwable th) {
            String str2 = TAG;
            Log.i(str2, "taskV2TriggerSignUp err:");
            Log.printStackTrace(str2, th);
        }
    }

    private void taskV2TriggerSend(String str) {
        try {
            new JSONObject(ConsumeGoldRpcCall.taskV2TriggerSend(str)).optBoolean("success");
        } catch (Throwable th) {
            String str2 = TAG;
            Log.i(str2, "taskV2TriggerSend err:");
            Log.printStackTrace(str2, th);
        }
    }

    private void consumeGoldIndex() {
        try {
            JSONObject jSONObject = new JSONObject(ConsumeGoldRpcCall.consumeGoldIndex());
            if (jSONObject.optBoolean("success")) {
                JSONArray jSONArray = jSONObject.getJSONObject("homePromoInfoDTO").getJSONArray("homePromoTokenDTOList");
                int i = 0;
                for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                    JSONObject jSONObject2 = jSONArray.getJSONObject(i2);
                    if ("CONSUME_GOLD".equals(jSONObject2.getString("tokenType"))) {
                        i = jSONObject2.getInt("tokenLeftAmount");
                    }
                }
                if (i > 0) {
                    for (int i3 = 0; i3 < i; i3++) {
                        JSONObject jSONObject3 = new JSONObject(ConsumeGoldRpcCall.promoTrigger());
                        if (jSONObject3.optBoolean("success")) {
                            JSONObject jSONObject4 = jSONObject3.getJSONObject("homePromoPrizeInfoDTO");
                            Log.other("赚消费金💰[投5币抽]#" + jSONObject4.getInt("quantity"));
                            if (jSONObject4.has("promoAdvertisementInfo")) {
                                new JSONObject(ConsumeGoldRpcCall.advertisement(jSONObject4.getJSONObject("promoAdvertisementInfo").getString("outBizNo")));
                            }
                        }
                    }
                }
            }
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "queryTreasureBox err:");
            Log.printStackTrace(str, th);
        }
    }

    private void signinCalendar() {
        try {
            JSONObject jSONObject = new JSONObject(ConsumeGoldRpcCall.signinCalendar());
            if (!jSONObject.optBoolean("success") || jSONObject.getBoolean("isSignInToday")) {
                return;
            }
            JSONObject jSONObject2 = new JSONObject(ConsumeGoldRpcCall.openBoxAward());
            if (jSONObject2.optBoolean("success")) {
                Log.other("消费金签到💰[" + jSONObject2.getInt("amount") + "金币]");
            }
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "signinCalendar err:");
            Log.printStackTrace(str, th);
        }
    }
}
