package io.github.lazyimmortal.sesame.model.task.ancientTree;

import io.github.lazyimmortal.sesame.data.ModelFields;
import io.github.lazyimmortal.sesame.data.ModelGroup;
import io.github.lazyimmortal.sesame.data.modelFieldExt.BooleanModelField;
import io.github.lazyimmortal.sesame.data.modelFieldExt.SelectModelField;
import io.github.lazyimmortal.sesame.data.task.ModelTask;
import io.github.lazyimmortal.sesame.entity.AreaCode;
import io.github.lazyimmortal.sesame.model.base.TaskCommon;
import io.github.lazyimmortal.sesame.util.IconRegistry;
import io.github.lazyimmortal.sesame.util.Log;
import io.github.lazyimmortal.sesame.util.MessageUtil;
import io.github.lazyimmortal.sesame.util.Status;
import io.github.lazyimmortal.sesame.util.TimeUtil;
import java.text.SimpleDateFormat;
import java.util.Collection;
import java.util.Date;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class AncientTree extends ModelTask {
    private static final String TAG = "AncientTree";
    private SelectModelField ancientTreeCityCodeList;
    private BooleanModelField ancientTreeOnlyWeek;

    @Override // io.github.lazyimmortal.sesame.data.task.ModelTask, io.github.lazyimmortal.sesame.data.Model
    public String getName() {
        return "古树";
    }

    @Override // io.github.lazyimmortal.sesame.data.Model
    public ModelGroup getGroup() {
        return ModelGroup.FOREST;
    }

    @Override // io.github.lazyimmortal.sesame.data.task.ModelTask, io.github.lazyimmortal.sesame.data.Model
    public ModelFields getFields() {
        ModelFields modelFields = new ModelFields();
        BooleanModelField booleanModelField = new BooleanModelField("ancientTreeOnlyWeek", "仅星期一、三、五运行保护古树", false);
        this.ancientTreeOnlyWeek = booleanModelField;
        modelFields.addField(booleanModelField);
        SelectModelField selectModelField = new SelectModelField("ancientTreeCityCodeList", "古树区划代码列表", new LinkedHashSet(), new SelectModelField.SelectListFunc() { // from class: io.github.lazyimmortal.sesame.model.task.ancientTree.AncientTree$$ExternalSyntheticLambda0
            @Override // io.github.lazyimmortal.sesame.data.modelFieldExt.SelectModelField.SelectListFunc
            public final List getList() {
                return AreaCode.getList();
            }
        });
        this.ancientTreeCityCodeList = selectModelField;
        modelFields.addField(selectModelField);
        return modelFields;
    }

    @Override // io.github.lazyimmortal.sesame.data.task.ModelTask
    public Boolean check() {
        if (!TaskCommon.IS_ENERGY_TIME.booleanValue() && TaskCommon.IS_AFTER_8AM.booleanValue()) {
            if (!this.ancientTreeOnlyWeek.getValue().booleanValue()) {
                return true;
            }
            String str = new SimpleDateFormat("EEEE", Locale.getDefault()).format(new Date());
            return Boolean.valueOf("星期一".equals(str) || "星期三".equals(str) || "星期五".equals(str));
        }
        return false;
    }

    @Override // io.github.lazyimmortal.sesame.data.task.ModelTask
    public void run() {
        try {
            Log.record("开始检测古树保护");
            ancientTree(this.ancientTreeCityCodeList.getValue());
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "start.run err:");
            Log.printStackTrace(str, th);
        }
    }

    private static void ancientTree(Collection<String> collection) {
        try {
            for (String str : collection) {
                if (Status.canAncientTreeToday(str).booleanValue()) {
                    ancientTreeProtect(str);
                    Thread.sleep(1000L);
                }
            }
        } catch (Throwable th) {
            String str2 = TAG;
            Log.i(str2, "ancientTree err:");
            Log.printStackTrace(str2, th);
        }
    }

    private static void ancientTreeProtect(String str) {
        try {
            JSONObject jSONObject = new JSONObject(AncientTreeRpcCall.homePage(str));
            if (MessageUtil.checkResultCode(TAG, jSONObject).booleanValue()) {
                JSONObject jSONObject2 = jSONObject.getJSONObject("data");
                if (jSONObject2.has("districtBriefInfoList")) {
                    JSONArray jSONArray = jSONObject2.getJSONArray("districtBriefInfoList");
                    for (int i = 0; i < jSONArray.length(); i++) {
                        JSONObject jSONObject3 = jSONArray.getJSONObject(i);
                        if (jSONObject3.optInt("userCanProtectTreeNum", 0) >= 1) {
                            districtDetail(jSONObject3.getJSONObject("districtInfo").getString("districtCode"));
                            TimeUtil.sleep(1000L);
                        }
                    }
                    Status.ancientTreeToday(str);
                }
            }
        } catch (Throwable th) {
            String str2 = TAG;
            Log.i(str2, "ancientTreeProtect err:");
            Log.printStackTrace(str2, th);
        }
    }

    private static void districtDetail(String str) {
        try {
            JSONObject jSONObject = new JSONObject(AncientTreeRpcCall.districtDetail(str));
            if (MessageUtil.checkResultCode(TAG, jSONObject).booleanValue()) {
                JSONObject jSONObject2 = jSONObject.getJSONObject("data");
                if (jSONObject2.has("ancientTreeList")) {
                    JSONObject jSONObject3 = jSONObject2.getJSONObject("districtInfo");
                    String string = jSONObject3.getString("cityCode");
                    String string2 = jSONObject3.getString("cityName");
                    String string3 = jSONObject3.getString("districtName");
                    JSONArray jSONArray = jSONObject2.getJSONArray("ancientTreeList");
                    for (int i = 0; i < jSONArray.length(); i++) {
                        JSONObject jSONObject4 = jSONArray.getJSONObject(i);
                        if (!jSONObject4.getBoolean("hasProtected")) {
                            JSONObject jSONObject5 = jSONObject4.getJSONObject("ancientTreeControlInfo");
                            if (jSONObject5.optInt("quota", 0) > jSONObject5.optInt("useQuota", 0)) {
                                JSONObject jSONObject6 = new JSONObject(AncientTreeRpcCall.projectDetail(jSONObject4.getString("projectId"), string));
                                String str2 = TAG;
                                if (MessageUtil.checkResultCode(str2, jSONObject6).booleanValue()) {
                                    JSONObject jSONObject7 = jSONObject6.getJSONObject("data");
                                    if (jSONObject7.getBoolean("canProtect")) {
                                        int i2 = jSONObject7.getInt("currentEnergy");
                                        JSONObject jSONObject8 = jSONObject7.getJSONObject(IconRegistry.SCOPE_ANCIENT_TREE);
                                        String string4 = jSONObject8.getString("activityId");
                                        String string5 = jSONObject8.getString("projectId");
                                        JSONObject jSONObject9 = jSONObject8.getJSONObject("ancientTreeInfo");
                                        String string6 = jSONObject9.getString("name");
                                        int i3 = jSONObject9.getInt("age");
                                        int i4 = jSONObject9.getInt("protectExpense");
                                        String string7 = jSONObject9.getString("cityCode");
                                        if (i2 < i4) {
                                            return;
                                        }
                                        TimeUtil.sleep(200L);
                                        if (MessageUtil.checkResultCode(str2, new JSONObject(AncientTreeRpcCall.protect(string4, string5, string7))).booleanValue()) {
                                            Log.forest("保护古树🎐[" + string2 + "-" + string3 + "]#" + i3 + "年" + string6 + ",消耗能量" + i4 + "g");
                                        }
                                        string = string7;
                                    }
                                    TimeUtil.sleep(500L);
                                }
                            }
                        }
                    }
                }
            }
        } catch (Throwable th) {
            String str3 = TAG;
            Log.i(str3, "districtDetail err:");
            Log.printStackTrace(str3, th);
        }
    }
}
