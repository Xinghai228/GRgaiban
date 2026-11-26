package io.github.lazyimmortal.sesame.model.task.antBookRead;

import androidx.core.app.NotificationCompat;
import io.github.lazyimmortal.sesame.data.ModelFields;
import io.github.lazyimmortal.sesame.data.ModelGroup;
import io.github.lazyimmortal.sesame.data.RuntimeInfo;
import io.github.lazyimmortal.sesame.data.task.ModelTask;
import io.github.lazyimmortal.sesame.model.base.TaskCommon;
import io.github.lazyimmortal.sesame.util.Log;
import io.github.lazyimmortal.sesame.util.RandomUtil;
import io.github.lazyimmortal.sesame.util.StringUtil;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class AntBookRead extends ModelTask {
    private static final String TAG = "AntBookRead";

    @Override // io.github.lazyimmortal.sesame.data.task.ModelTask, io.github.lazyimmortal.sesame.data.Model
    public String getName() {
        return "读书听书";
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
        if (TaskCommon.IS_ENERGY_TIME.booleanValue() || !TaskCommon.IS_AFTER_8AM.booleanValue()) {
            return false;
        }
        return Boolean.valueOf(System.currentTimeMillis() - RuntimeInfo.getInstance().getLong("consumeGold", 0L).longValue() >= 21600000);
    }

    @Override // io.github.lazyimmortal.sesame.data.task.ModelTask
    public void run() {
        try {
            RuntimeInfo.getInstance().put("consumeGold", Long.valueOf(System.currentTimeMillis()));
            queryTaskCenterPage();
            queryTask();
            queryTreasureBox();
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "start.run err:");
            Log.printStackTrace(str, th);
        }
    }

    /* JADX WARN: Code duplicated, block: B:24:0x00f9  */
    private static void queryTaskCenterPage() {
        int i;
        try {
            String strQueryTaskCenterPage = AntBookReadRpcCall.queryTaskCenterPage();
            JSONObject jSONObject = new JSONObject(strQueryTaskCenterPage);
            if (jSONObject.optBoolean("success")) {
                if (Integer.parseInt(StringUtil.getSubString(jSONObject.getJSONObject("data").getJSONObject("benefitAggBlock").getString("todayPlayDurationText"), "今日听读时长", "分钟")) < 450) {
                    JSONObject jSONObject2 = new JSONObject(AntBookReadRpcCall.queryHomePage());
                    if (jSONObject2.optBoolean("success")) {
                        JSONArray jSONArray = jSONObject2.getJSONObject("data").getJSONArray("dynamicCardList").getJSONObject(0).getJSONObject("data").getJSONArray("bookList");
                        String string = jSONArray.getJSONObject(RandomUtil.nextInt(0, jSONArray.length() - 1)).getString("bookId");
                        JSONObject jSONObject3 = new JSONObject(AntBookReadRpcCall.queryReaderContent(string));
                        if (jSONObject3.optBoolean("success")) {
                            String string2 = jSONObject3.getJSONObject("data").getString("nextChapterId");
                            String string3 = jSONObject3.getJSONObject("data").getJSONObject("readerHomePageVO").getString("name");
                            for (int i2 = 0; i2 < 17; i2++) {
                                if (new JSONObject(AntBookReadRpcCall.syncUserReadInfo(string, string2)).optBoolean("success")) {
                                    JSONObject jSONObject4 = new JSONObject(AntBookReadRpcCall.queryReaderForestEnergyInfo(string));
                                    if (jSONObject4.optBoolean("success")) {
                                        String string4 = jSONObject4.getJSONObject("data").getString("tips");
                                        i = string4.contains("已得") ? Integer.parseInt(StringUtil.getSubString(string4, "已得", "g")) : 0;
                                        Log.forest("阅读书籍📚[" + string3 + "]#累计能量" + i + "g");
                                    } else {
                                        i = 0;
                                    }
                                } else {
                                    i = 0;
                                }
                                if (i >= 150) {
                                    return;
                                }
                                Thread.sleep(1500L);
                            }
                            return;
                        }
                        return;
                    }
                    return;
                }
                return;
            }
            Log.record(jSONObject.getString("resultDesc"));
            Log.i(strQueryTaskCenterPage);
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "queryTaskCenterPage err:");
            Log.printStackTrace(str, th);
        }
    }

    private static void queryTask() {
        try {
            String strQueryTaskCenterPage = AntBookReadRpcCall.queryTaskCenterPage();
            JSONObject jSONObject = new JSONObject(strQueryTaskCenterPage);
            if (jSONObject.optBoolean("success")) {
                JSONArray jSONArray = jSONObject.getJSONObject("data").getJSONObject("userTaskListModuleVO").getJSONArray("userTaskGroupList");
                boolean z = false;
                for (int i = 0; i < jSONArray.length(); i++) {
                    JSONArray jSONArray2 = jSONArray.getJSONObject(i).getJSONArray("userTaskList");
                    for (int i2 = 0; i2 < jSONArray2.length(); i2++) {
                        JSONObject jSONObject2 = jSONArray2.getJSONObject(i2);
                        String string = jSONObject2.getString("taskStatus");
                        String string2 = jSONObject2.getString("taskType");
                        String string3 = jSONObject2.getString("title");
                        if ("TO_RECEIVE".equals(string)) {
                            if ("READ_MULTISTAGE".equals(string2)) {
                                JSONArray jSONArray3 = jSONObject2.getJSONArray("multiSubTaskList");
                                for (int i3 = 0; i3 < jSONArray3.length(); i3++) {
                                    JSONObject jSONObject3 = jSONArray3.getJSONObject(i3);
                                    if ("TO_RECEIVE".equals(jSONObject3.getString("taskStatus"))) {
                                        collectTaskPrize(jSONObject3.getString("taskId"), string2, string3);
                                    }
                                }
                            } else {
                                collectTaskPrize(jSONObject2.getString("taskId"), string2, string3);
                            }
                        } else if ("NOT_DONE".equals(string)) {
                            if ("AD_VIDEO_TASK".equals(string2)) {
                                String string4 = jSONObject2.getString("taskId");
                                for (int i4 = 0; i4 < 5; i4++) {
                                    taskFinish(string4, string2);
                                    Thread.sleep(1500L);
                                    collectTaskPrize(string4, string2, string3);
                                    Thread.sleep(1500L);
                                }
                            } else if ("FOLLOW_UP".equals(string2) || "JUMP".equals(string2)) {
                                taskFinish(jSONObject2.getString("taskId"), string2);
                                z = true;
                            }
                        }
                    }
                }
                if (z) {
                    queryTask();
                    return;
                }
                return;
            }
            Log.record(jSONObject.getString("resultDesc"));
            Log.i(strQueryTaskCenterPage);
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "queryTask err:");
            Log.printStackTrace(str, th);
        }
    }

    private static void collectTaskPrize(String str, String str2, String str3) {
        try {
            JSONObject jSONObject = new JSONObject(AntBookReadRpcCall.collectTaskPrize(str, str2));
            if (jSONObject.optBoolean("success")) {
                Log.other("阅读任务📖[" + str3 + "]#" + jSONObject.getJSONObject("data").getInt("coinNum"));
            }
        } catch (Throwable th) {
            String str4 = TAG;
            Log.i(str4, "collectTaskPrize err:");
            Log.printStackTrace(str4, th);
        }
    }

    private static void taskFinish(String str, String str2) {
        try {
            new JSONObject(AntBookReadRpcCall.taskFinish(str, str2)).optBoolean("success");
        } catch (Throwable th) {
            String str3 = TAG;
            Log.i(str3, "taskFinish err:");
            Log.printStackTrace(str3, th);
        }
    }

    private static void queryTreasureBox() {
        try {
            JSONObject jSONObject = new JSONObject(AntBookReadRpcCall.queryTreasureBox());
            if (jSONObject.optBoolean("success")) {
                JSONObject jSONObject2 = jSONObject.getJSONObject("data").getJSONObject("treasureBoxVo");
                if (!jSONObject2.has("countdown") && "CAN_OPEN".equals(jSONObject2.getString(NotificationCompat.CATEGORY_STATUS))) {
                    JSONObject jSONObject3 = new JSONObject(AntBookReadRpcCall.openTreasureBox());
                    if (jSONObject3.optBoolean("success")) {
                        Log.other("阅读任务📖[打开宝箱]#" + jSONObject3.getJSONObject("data").getInt("coinNum"));
                    }
                }
            }
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "queryTreasureBox err:");
            Log.printStackTrace(str, th);
        }
    }
}
