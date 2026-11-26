package io.github.lazyimmortal.sesame.model.task.greenFinance;

import androidx.core.app.NotificationCompat;
import com.fasterxml.jackson.databind.type.TypeFactory;
import io.github.lazyimmortal.sesame.data.ModelFields;
import io.github.lazyimmortal.sesame.data.ModelGroup;
import io.github.lazyimmortal.sesame.data.modelFieldExt.BooleanModelField;
import io.github.lazyimmortal.sesame.data.task.ModelTask;
import io.github.lazyimmortal.sesame.model.base.TaskCommon;
import io.github.lazyimmortal.sesame.util.JsonUtil;
import io.github.lazyimmortal.sesame.util.Log;
import io.github.lazyimmortal.sesame.util.Status;
import io.github.lazyimmortal.sesame.util.TimeUtil;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Locale;
import java.util.TreeMap;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class GreenFinance extends ModelTask {
    private static final String TAG = "GreenFinance";
    private BooleanModelField greenFinanceDonation;
    private BooleanModelField greenFinanceLsbg;
    private BooleanModelField greenFinanceLscg;
    private BooleanModelField greenFinanceLswl;
    private BooleanModelField greenFinanceLsxd;
    private BooleanModelField greenFinancePointFriend;
    private BooleanModelField greenFinanceWdxd;

    @Override // io.github.lazyimmortal.sesame.data.task.ModelTask, io.github.lazyimmortal.sesame.data.Model
    public String getName() {
        return "经营";
    }

    @Override // io.github.lazyimmortal.sesame.data.Model
    public ModelGroup getGroup() {
        return ModelGroup.OTHER;
    }

    @Override // io.github.lazyimmortal.sesame.data.task.ModelTask, io.github.lazyimmortal.sesame.data.Model
    public ModelFields getFields() {
        ModelFields modelFields = new ModelFields();
        BooleanModelField booleanModelField = new BooleanModelField("greenFinanceLsxd", "打卡 | 绿色行动", false);
        this.greenFinanceLsxd = booleanModelField;
        modelFields.addField(booleanModelField);
        BooleanModelField booleanModelField2 = new BooleanModelField("greenFinanceLscg", "打卡 | 绿色采购", false);
        this.greenFinanceLscg = booleanModelField2;
        modelFields.addField(booleanModelField2);
        BooleanModelField booleanModelField3 = new BooleanModelField("greenFinanceLsbg", "打卡 | 绿色办公", false);
        this.greenFinanceLsbg = booleanModelField3;
        modelFields.addField(booleanModelField3);
        BooleanModelField booleanModelField4 = new BooleanModelField("greenFinanceWdxd", "打卡 | 绿色销售", false);
        this.greenFinanceWdxd = booleanModelField4;
        modelFields.addField(booleanModelField4);
        BooleanModelField booleanModelField5 = new BooleanModelField("greenFinanceLswl", "打卡 | 绿色物流", false);
        this.greenFinanceLswl = booleanModelField5;
        modelFields.addField(booleanModelField5);
        BooleanModelField booleanModelField6 = new BooleanModelField("greenFinancePointFriend", "收取 | 好友金币", false);
        this.greenFinancePointFriend = booleanModelField6;
        modelFields.addField(booleanModelField6);
        BooleanModelField booleanModelField7 = new BooleanModelField("greenFinanceDonation", "捐助 | 快过期金币", false);
        this.greenFinanceDonation = booleanModelField7;
        modelFields.addField(booleanModelField7);
        return modelFields;
    }

    @Override // io.github.lazyimmortal.sesame.data.task.ModelTask
    public Boolean check() {
        if (TaskCommon.IS_ENERGY_TIME.booleanValue()) {
            Log.other("任务暂停⏸️绿色经营:当前为仅收能量时间");
            return false;
        }
        return true;
    }

    @Override // io.github.lazyimmortal.sesame.data.task.ModelTask
    public void run() {
        try {
            JSONObject jSONObject = new JSONObject(GreenFinanceRpcCall.greenFinanceIndex());
            if (!jSONObject.optBoolean("success")) {
                Log.i(TAG, jSONObject.optString("resultDesc"));
                return;
            }
            JSONObject jSONObject2 = jSONObject.getJSONObject("result");
            if (!jSONObject2.getBoolean("greenFinanceSigned")) {
                Log.other("绿色经营📊未开通");
                return;
            }
            JSONArray jSONArray = jSONObject2.getJSONObject("mcaGreenLeafResult").getJSONArray("greenLeafList");
            JSONArray jSONArray2 = new JSONArray();
            for (int i = 0; i < jSONArray.length(); i++) {
                JSONObject jSONObject3 = jSONArray.getJSONObject(i);
                if ("".equals(jSONObject3.getString("code")) || jSONArray2.length() == 0) {
                    jSONArray2.put(jSONObject3.getString("bsnId"));
                } else {
                    batchSelfCollect(jSONArray2);
                    jSONArray2 = new JSONArray();
                }
            }
            if (jSONArray2.length() > 0) {
                batchSelfCollect(jSONArray2);
            }
            signIn("PLAY102632271");
            signIn("PLAY102232206");
            if (TimeUtil.isNowAfterOrCompareTimeStr("0836").booleanValue()) {
                behaviorTick();
                batchStealFriend();
            }
            donation();
            prizes();
            GreenFinanceRpcCall.doTask("AP13159535", TAG, "绿色经营📊");
            TimeUtil.sleep(500L);
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "index err:");
            Log.printStackTrace(str, th);
        }
    }

    private void batchSelfCollect(JSONArray jSONArray) {
        try {
            JSONObject jSONObject = new JSONObject(GreenFinanceRpcCall.batchSelfCollect(jSONArray));
            if (jSONObject.optBoolean("success")) {
                Log.other("绿色经营📊收集获得" + jSONObject.getJSONObject("result").getInt("totalCollectPoint"));
            } else {
                Log.i(TAG + ".batchSelfCollect", jSONObject.optString("resultDesc"));
            }
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "batchSelfCollect err:");
            Log.printStackTrace(str, th);
        }
    }

    private void signIn(String str) {
        try {
            JSONObject jSONObject = new JSONObject(GreenFinanceRpcCall.signInQuery(str));
            if (!jSONObject.optBoolean("success")) {
                Log.i(TAG + ".signIn.signInQuery", jSONObject.optString("resultDesc"));
                return;
            }
            if (jSONObject.getJSONObject("result").getBoolean("isTodaySignin")) {
                return;
            }
            String strSignInTrigger = GreenFinanceRpcCall.signInTrigger(str);
            TimeUtil.sleep(300L);
            JSONObject jSONObject2 = new JSONObject(strSignInTrigger);
            if (jSONObject2.optBoolean("success")) {
                Log.other("绿色经营📊签到成功");
                return;
            }
            Log.i(TAG + ".signIn.signInTrigger", jSONObject2.optString("resultDesc"));
        } catch (Throwable th) {
            String str2 = TAG;
            Log.i(str2, "signIn err:");
            Log.printStackTrace(str2, th);
        }
    }

    private void behaviorTick() {
        if (this.greenFinanceLsxd.getValue().booleanValue()) {
            TimeUtil.sleep(1000L);
            doTick("lsxd");
            TimeUtil.sleep(1500L);
        }
        if (this.greenFinanceLscg.getValue().booleanValue()) {
            TimeUtil.sleep(1000L);
            doTick("lscg");
            TimeUtil.sleep(1500L);
        }
        if (this.greenFinanceLswl.getValue().booleanValue()) {
            TimeUtil.sleep(1000L);
            doTick("lswl");
            TimeUtil.sleep(1500L);
        }
        if (this.greenFinanceLsbg.getValue().booleanValue()) {
            TimeUtil.sleep(1000L);
            doTick("lsbg");
            TimeUtil.sleep(1500L);
        }
        if (this.greenFinanceWdxd.getValue().booleanValue()) {
            TimeUtil.sleep(1000L);
            doTick("wdxd");
            TimeUtil.sleep(1500L);
        }
    }

    private void doTick(String str) {
        try {
            JSONObject jSONObject = new JSONObject(GreenFinanceRpcCall.queryUserTickItem(str));
            if (!jSONObject.optBoolean("success")) {
                Log.i(TAG + ".doTick.queryUserTickItem", jSONObject.optString("resultDesc"));
                return;
            }
            JSONArray jSONArray = jSONObject.getJSONArray("result");
            for (int i = 0; i < jSONArray.length(); i++) {
                JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                if (!"Y".equals(jSONObject2.getString(NotificationCompat.CATEGORY_STATUS))) {
                    String strSubmitTick = GreenFinanceRpcCall.submitTick(str, jSONObject2.getString("behaviorCode"));
                    TimeUtil.sleep(1500L);
                    JSONObject jSONObject3 = new JSONObject(strSubmitTick);
                    if (jSONObject3.optBoolean("success") && String.valueOf(true).equals(JsonUtil.getValueByPath(jSONObject3, "result.result"))) {
                        Log.other("绿色经营📊[" + jSONObject2.getString("title") + "]打卡成功");
                    }
                    Log.other("绿色经营📊[" + jSONObject2.getString("title") + "]打卡失败");
                    return;
                }
            }
        } catch (Throwable th) {
            String str2 = TAG;
            Log.i(str2, "doTick err:");
            Log.printStackTrace(str2, th);
        }
    }

    private void donation() {
        if (this.greenFinanceDonation.getValue().booleanValue()) {
            try {
                String strQueryExpireMcaPoint = GreenFinanceRpcCall.queryExpireMcaPoint(1L);
                TimeUtil.sleep(300L);
                JSONObject jSONObject = new JSONObject(strQueryExpireMcaPoint);
                if (!jSONObject.optBoolean("success")) {
                    Log.i(TAG + ".donation.queryExpireMcaPoint", jSONObject.optString("resultDesc"));
                    return;
                }
                String valueByPath = JsonUtil.getValueByPath(jSONObject, "result.expirePoint.amount");
                if (!valueByPath.isEmpty() && valueByPath.matches("-?\\d+(\\.\\d+)?")) {
                    double d = Double.parseDouble(valueByPath);
                    if (d <= 0.0d) {
                        return;
                    }
                    Log.other("绿色经营📊1天内过期的金币[" + d + "]");
                    String strQueryAllDonationProjectNew = GreenFinanceRpcCall.queryAllDonationProjectNew();
                    TimeUtil.sleep(300L);
                    JSONObject jSONObject2 = new JSONObject(strQueryAllDonationProjectNew);
                    if (!jSONObject2.optBoolean("success")) {
                        Log.i(TAG + ".donation.queryAllDonationProjectNew", jSONObject2.optString("resultDesc"));
                        return;
                    }
                    JSONArray jSONArray = jSONObject2.getJSONArray("result");
                    TreeMap treeMap = new TreeMap();
                    for (int i = 0; i < jSONArray.length(); i++) {
                        JSONObject jSONObject3 = (JSONObject) JsonUtil.getValueByPathObject(jSONArray.getJSONObject(i), "mcaDonationProjectResult.[0]");
                        if (jSONObject3 != null) {
                            String strOptString = jSONObject3.optString("projectId");
                            if (!strOptString.isEmpty()) {
                                treeMap.put(strOptString, jSONObject3.optString("projectName"));
                            }
                        }
                    }
                    int[] iArrCalculateDeductions = calculateDeductions((int) d, treeMap.size());
                    String strValueOf = "200";
                    for (int i2 = 0; i2 < iArrCalculateDeductions[0]; i2++) {
                        String str = (String) new ArrayList(treeMap.keySet()).get(i2);
                        String str2 = (String) treeMap.get(str);
                        if (i2 == iArrCalculateDeductions[0] - 1) {
                            strValueOf = String.valueOf(iArrCalculateDeductions[1]);
                        }
                        String strDonation = GreenFinanceRpcCall.donation(str, strValueOf);
                        TimeUtil.sleep(1000L);
                        JSONObject jSONObject4 = new JSONObject(strDonation);
                        if (!jSONObject4.optBoolean("success")) {
                            Log.i(TAG + ".donation." + str, jSONObject4.optString("resultDesc"));
                            return;
                        }
                        Log.other("绿色经营📊成功捐助[" + str2 + "]" + strValueOf + "金币");
                    }
                }
            } catch (Throwable th) {
                String str3 = TAG;
                Log.i(str3, "donation err:");
                Log.printStackTrace(str3, th);
            }
        }
    }

    private void prizes() {
        try {
            if (Status.canGreenFinancePrizesMap()) {
                JSONObject jSONObject = new JSONObject(GreenFinanceRpcCall.queryPrizes("CP14664674"));
                if (!jSONObject.optBoolean("success")) {
                    Log.i(TAG + ".prizes.queryPrizes", jSONObject.optString("resultDesc"));
                    return;
                }
                JSONArray jSONArray = (JSONArray) JsonUtil.getValueByPathObject(jSONObject, "result.prizes");
                if (jSONArray != null) {
                    for (int i = 0; i < jSONArray.length(); i++) {
                        if (TimeUtil.getWeekNumber(new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'", Locale.ENGLISH).parse(jSONArray.getJSONObject(i).getString("bizTime"))) == TimeUtil.getWeekNumber(new Date())) {
                            Status.greenFinancePrizesMap();
                            return;
                        }
                    }
                }
                JSONObject jSONObject2 = new JSONObject(GreenFinanceRpcCall.campTrigger("CP14664674"));
                if (!jSONObject2.optBoolean("success")) {
                    Log.i(TAG + ".prizes.campTrigger", jSONObject2.optString("resultDesc"));
                    return;
                }
                JSONObject jSONObject3 = (JSONObject) JsonUtil.getValueByPathObject(jSONObject2, "result.prizes.[0]");
                if (jSONObject3 == null) {
                    return;
                }
                Log.other("绿色经营🍬评级奖品[" + jSONObject3.getString("prizeName") + "]" + jSONObject3.getString("price"));
            }
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "prizes err:");
            Log.printStackTrace(str, th);
        }
    }

    private void batchStealFriend() {
        try {
            if (!Status.canGreenFinancePointFriend()) {
                return;
            }
            try {
                if (!this.greenFinancePointFriend.getValue().booleanValue()) {
                    return;
                }
                int i = 0;
                while (true) {
                    try {
                        String strQueryRankingList = GreenFinanceRpcCall.queryRankingList(i);
                        TimeUtil.sleep(1500L);
                        JSONObject jSONObject = new JSONObject(strQueryRankingList);
                        if (!jSONObject.optBoolean("success")) {
                            Log.other("绿色经营🙋，好友金币巡查失败");
                            return;
                        }
                        JSONObject jSONObject2 = jSONObject.getJSONObject("result");
                        if (jSONObject2.getBoolean("lastPage")) {
                            Log.other("绿色经营🙋，好友金币巡查完成");
                            Status.greenFinancePointFriend();
                            return;
                        }
                        int i2 = jSONObject2.getInt("nextStartIndex");
                        JSONArray jSONArray = jSONObject2.getJSONArray("rankingList");
                        for (int i3 = 0; i3 < jSONArray.length(); i3++) {
                            JSONObject jSONObject3 = jSONArray.getJSONObject(i3);
                            if (jSONObject3.getBoolean("collectFlag")) {
                                String strOptString = jSONObject3.optString("uid");
                                if (!strOptString.isEmpty()) {
                                    String strQueryGuestIndexPoints = GreenFinanceRpcCall.queryGuestIndexPoints(strOptString);
                                    TimeUtil.sleep(1000L);
                                    JSONObject jSONObject4 = new JSONObject(strQueryGuestIndexPoints);
                                    if (jSONObject4.optBoolean("success")) {
                                        JSONArray jSONArray2 = (JSONArray) JsonUtil.getValueByPathObject(jSONObject4, "result.pointDetailList");
                                        if (jSONArray2 != null) {
                                            JSONArray jSONArray3 = new JSONArray();
                                            for (int i4 = 0; i4 < jSONArray2.length(); i4++) {
                                                JSONObject jSONObject5 = jSONArray2.getJSONObject(i4);
                                                if (!jSONObject5.getBoolean("collectFlag")) {
                                                    jSONArray3.put(jSONObject5.getString("bsnId"));
                                                }
                                            }
                                            if (jSONArray3.length() != 0) {
                                                String strBatchSteal = GreenFinanceRpcCall.batchSteal(jSONArray3, strOptString);
                                                TimeUtil.sleep(1000L);
                                                JSONObject jSONObject6 = new JSONObject(strBatchSteal);
                                                if (jSONObject6.optBoolean("success")) {
                                                    Log.other("绿色经营🤩收[" + jSONObject3.optString("nickName") + "]" + JsonUtil.getValueByPath(jSONObject6, "result.totalCollectPoint") + "金币");
                                                } else {
                                                    Log.i(TAG + ".batchStealFriend.batchSteal", jSONObject6.optString("resultDesc"));
                                                }
                                            }
                                        }
                                    } else {
                                        Log.i(TAG + ".batchStealFriend.queryGuestIndexPoints", jSONObject4.optString("resultDesc"));
                                    }
                                }
                            }
                        }
                        i = i2;
                    } catch (Exception e) {
                        Log.printStackTrace(e);
                        return;
                    }
                }
            } catch (Throwable th) {
                th = th;
                String str = TAG;
                Log.i(str, "batchStealFriend err:");
                Log.printStackTrace(str, th);
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    private int[] calculateDeductions(int i, int i2) {
        if (i < 200) {
            return new int[]{1, TypeFactory.DEFAULT_MAX_CACHE_SIZE};
        }
        int iMin = Math.min(i2, (int) Math.ceil(((double) i) / 200.0d));
        int i3 = i - (iMin * TypeFactory.DEFAULT_MAX_CACHE_SIZE);
        int i4 = i3 % 100 != 0 ? ((i3 + 99) / 100) * 100 : i3;
        if (i4 < 200) {
            i4 = TypeFactory.DEFAULT_MAX_CACHE_SIZE;
        }
        if (i4 < i3) {
            iMin = (i - i4) / TypeFactory.DEFAULT_MAX_CACHE_SIZE;
        }
        return new int[]{iMin, i4};
    }
}
