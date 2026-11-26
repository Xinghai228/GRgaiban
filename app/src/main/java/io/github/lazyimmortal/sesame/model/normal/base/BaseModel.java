package io.github.lazyimmortal.sesame.model.normal.base;

import io.github.lazyimmortal.sesame.data.Model;
import io.github.lazyimmortal.sesame.data.ModelFields;
import io.github.lazyimmortal.sesame.data.ModelGroup;
import io.github.lazyimmortal.sesame.data.modelFieldExt.BooleanModelField;
import io.github.lazyimmortal.sesame.data.modelFieldExt.ChoiceModelField;
import io.github.lazyimmortal.sesame.data.modelFieldExt.IntegerModelField;
import io.github.lazyimmortal.sesame.data.modelFieldExt.ListModelField;
import io.github.lazyimmortal.sesame.data.modelFieldExt.SelectAndCountModelField;
import io.github.lazyimmortal.sesame.data.modelFieldExt.SelectModelField;
import io.github.lazyimmortal.sesame.entity.AlipayrpcRequest;
import io.github.lazyimmortal.sesame.hook.ApplicationHook;
import io.github.lazyimmortal.sesame.model.task.protectEcology.ProtectEcology;
import io.github.lazyimmortal.sesame.util.ListUtil;
import io.github.lazyimmortal.sesame.util.Log;
import io.github.lazyimmortal.sesame.util.Status;
import io.github.lazyimmortal.sesame.util.TimeUtil;
import io.github.lazyimmortal.sesame.util.idMap.AnimalIdMap;
import io.github.lazyimmortal.sesame.util.idMap.AntDodoTaskListMap;
import io.github.lazyimmortal.sesame.util.idMap.AntFarmChickenChefTaskListMap;
import io.github.lazyimmortal.sesame.util.idMap.AntFarmDoFarmTaskListMap;
import io.github.lazyimmortal.sesame.util.idMap.AntFarmDrawMachineTaskListMap;
import io.github.lazyimmortal.sesame.util.idMap.AntForestHuntTaskListMap;
import io.github.lazyimmortal.sesame.util.idMap.AntForestVitalityTaskListMap;
import io.github.lazyimmortal.sesame.util.idMap.AntMemberTaskListMap;
import io.github.lazyimmortal.sesame.util.idMap.AntOceanAntiepTaskListMap;
import io.github.lazyimmortal.sesame.util.idMap.AntOceanFishBlackListMap;
import io.github.lazyimmortal.sesame.util.idMap.AntOrchardDrawTaskListMap;
import io.github.lazyimmortal.sesame.util.idMap.AntOrchardTaskListMap;
import io.github.lazyimmortal.sesame.util.idMap.AntSportsTaskListMap;
import io.github.lazyimmortal.sesame.util.idMap.AntStallTaskListMap;
import io.github.lazyimmortal.sesame.util.idMap.BeachIdMap;
import io.github.lazyimmortal.sesame.util.idMap.ForestHuntIdMap;
import io.github.lazyimmortal.sesame.util.idMap.GoldenBeansTaskListMap;
import io.github.lazyimmortal.sesame.util.idMap.MarathonIdMap;
import io.github.lazyimmortal.sesame.util.idMap.MemberCreditSesameTaskListMap;
import io.github.lazyimmortal.sesame.util.idMap.MiniGameTaskListMap;
import io.github.lazyimmortal.sesame.util.idMap.MonopolyTaskListMap;
import io.github.lazyimmortal.sesame.util.idMap.NewAncientTreeIdMap;
import io.github.lazyimmortal.sesame.util.idMap.PlantSceneIdMap;
import io.github.lazyimmortal.sesame.util.idMap.ReserveIdMap;
import io.github.lazyimmortal.sesame.util.idMap.TreeIdMap;
import io.github.lazyimmortal.sesame.util.idMap.rpcRequestMap;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class BaseModel extends Model {
    public static IntegerModelField backupConfigDays;
    public static IntegerModelField backupLogDays;
    private static BooleanModelField batteryPerm;
    private static IntegerModelField.MultiplyIntegerModelField checkInterval;
    private static BooleanModelField debugMode;
    private static BooleanModelField enableOnGoing;
    private static ListModelField.ListJoinCommaToStringModelField energyTime;
    private static ListModelField.ListJoinCommaToStringModelField execAtTimeList;
    private static IntegerModelField maxGameTaskSubmitPerDay;
    private static SelectModelField miniGameTaskDisallowList;
    private static BooleanModelField newRpc;
    private static BooleanModelField recordLog;
    private static SelectAndCountModelField rpcRequestList;
    private static SelectModelField rpcRequestTaskList;
    private static BooleanModelField showToast;
    private static BooleanModelField stayAwake;
    private static ChoiceModelField timedTaskModel;
    private static BooleanModelField timeoutRestart;
    private static IntegerModelField toastOffsetY;
    private static IntegerModelField.MultiplyIntegerModelField waitWhenException;
    private static ListModelField.ListJoinCommaToStringModelField wakenAtTimeList;

    public interface TimedTaskModel {
        public static final int PROGRAM = 1;
        public static final int SYSTEM = 0;
        public static final String[] nickNames = {"系统计时", "程序计时"};
    }

    @Override // io.github.lazyimmortal.sesame.data.Model
    public void boot(ClassLoader classLoader) {
    }

    public static BooleanModelField getStayAwake() {
        return stayAwake;
    }

    public static IntegerModelField.MultiplyIntegerModelField getCheckInterval() {
        return checkInterval;
    }

    public static ListModelField.ListJoinCommaToStringModelField getExecAtTimeList() {
        return execAtTimeList;
    }

    public static ListModelField.ListJoinCommaToStringModelField getWakenAtTimeList() {
        return wakenAtTimeList;
    }

    public static ListModelField.ListJoinCommaToStringModelField getEnergyTime() {
        return energyTime;
    }

    public static ChoiceModelField getTimedTaskModel() {
        return timedTaskModel;
    }

    public static BooleanModelField getTimeoutRestart() {
        return timeoutRestart;
    }

    public static IntegerModelField.MultiplyIntegerModelField getWaitWhenException() {
        return waitWhenException;
    }

    public static IntegerModelField getBackupConfigDays() {
        return backupConfigDays;
    }

    public static IntegerModelField getBackupLogDays() {
        return backupLogDays;
    }

    public static BooleanModelField getNewRpc() {
        return newRpc;
    }

    public static BooleanModelField getDebugMode() {
        return debugMode;
    }

    public static IntegerModelField getMaxGameTaskSubmitPerDay() {
        return maxGameTaskSubmitPerDay;
    }

    public static SelectModelField getMiniGameTaskDisallowList() {
        return miniGameTaskDisallowList;
    }

    public static SelectAndCountModelField getRpcRequestList() {
        return rpcRequestList;
    }

    public static SelectModelField getRpcRequestTaskList() {
        return rpcRequestTaskList;
    }

    public static BooleanModelField getBatteryPerm() {
        return batteryPerm;
    }

    public static BooleanModelField getRecordLog() {
        return recordLog;
    }

    public static BooleanModelField getShowToast() {
        return showToast;
    }

    public static IntegerModelField getToastOffsetY() {
        return toastOffsetY;
    }

    public static BooleanModelField getEnableOnGoing() {
        return enableOnGoing;
    }

    @Override // io.github.lazyimmortal.sesame.data.Model
    public String getName() {
        return "基础";
    }

    @Override // io.github.lazyimmortal.sesame.data.Model
    public ModelGroup getGroup() {
        return ModelGroup.BASE;
    }

    @Override // io.github.lazyimmortal.sesame.data.Model
    public String getEnableFieldName() {
        return "启用模块";
    }

    public static boolean isMiniGameTaskDisallowed(String str, String str2) {
        return isMiniGameTaskDisallowed(str, "", str2);
    }

    public static boolean isMiniGameTaskDisallowed(String str, String str2, String str3) {
        Set<String> value = miniGameTaskDisallowList.getValue();
        if (value == null) {
            return false;
        }
        return value.contains(MiniGameTaskListMap.key(MiniGameTaskListMap.name(str, str2), str3)) || value.contains(MiniGameTaskListMap.key(str, str3));
    }

    @Override // io.github.lazyimmortal.sesame.data.Model
    public ModelFields getFields() {
        ModelFields modelFields = new ModelFields();
        BooleanModelField booleanModelField = new BooleanModelField("stayAwake", "保持唤醒", true);
        stayAwake = booleanModelField;
        modelFields.addField(booleanModelField);
        IntegerModelField.MultiplyIntegerModelField multiplyIntegerModelField = new IntegerModelField.MultiplyIntegerModelField("checkInterval", "执行间隔(分钟)", 50, 1, 720, 60000);
        checkInterval = multiplyIntegerModelField;
        modelFields.addField(multiplyIntegerModelField);
        ListModelField.ListJoinCommaToStringModelField listJoinCommaToStringModelField = new ListModelField.ListJoinCommaToStringModelField("execAtTimeList", "定时执行(关闭:-1)", ListUtil.newArrayList("065530", "2359", "24"));
        execAtTimeList = listJoinCommaToStringModelField;
        modelFields.addField(listJoinCommaToStringModelField);
        ListModelField.ListJoinCommaToStringModelField listJoinCommaToStringModelField2 = new ListModelField.ListJoinCommaToStringModelField("wakenAtTimeList", "定时唤醒(关闭:-1)", ListUtil.newArrayList("0650", "2350"));
        wakenAtTimeList = listJoinCommaToStringModelField2;
        modelFields.addField(listJoinCommaToStringModelField2);
        ListModelField.ListJoinCommaToStringModelField listJoinCommaToStringModelField3 = new ListModelField.ListJoinCommaToStringModelField("energyTime", "只收能量时间(范围)", ListUtil.newArrayList("0700-0731"));
        energyTime = listJoinCommaToStringModelField3;
        modelFields.addField(listJoinCommaToStringModelField3);
        ChoiceModelField choiceModelField = new ChoiceModelField("timedTaskModel", "定时任务模式", 0, TimedTaskModel.nickNames);
        timedTaskModel = choiceModelField;
        modelFields.addField(choiceModelField);
        BooleanModelField booleanModelField2 = new BooleanModelField("timeoutRestart", "超时重启", true);
        timeoutRestart = booleanModelField2;
        modelFields.addField(booleanModelField2);
        IntegerModelField.MultiplyIntegerModelField multiplyIntegerModelField2 = new IntegerModelField.MultiplyIntegerModelField("waitWhenException", "异常等待时间(分钟)", 60, 0, 1440, 60000);
        waitWhenException = multiplyIntegerModelField2;
        modelFields.addField(multiplyIntegerModelField2);
        IntegerModelField integerModelField = new IntegerModelField("backupConfigDays", "按天和修改备份配置保存数(滚动覆盖)", 5);
        backupConfigDays = integerModelField;
        modelFields.addField(integerModelField);
        IntegerModelField integerModelField2 = new IntegerModelField("backupLogDays", "保留之前日志天数", 1);
        backupLogDays = integerModelField2;
        modelFields.addField(integerModelField2);
        BooleanModelField booleanModelField3 = new BooleanModelField("newRpc", "使用新接口(最低支持v10.3.96.8100)", true);
        newRpc = booleanModelField3;
        modelFields.addField(booleanModelField3);
        BooleanModelField booleanModelField4 = new BooleanModelField("debugMode", "开启抓包(含小程序数据)", false);
        debugMode = booleanModelField4;
        modelFields.addField(booleanModelField4);
        IntegerModelField integerModelField3 = new IntegerModelField("maxGameTaskSubmitPerDay", "链接任务单个每日最大执行次数(0=仅收集不执行)", 1, 0, 10);
        maxGameTaskSubmitPerDay = integerModelField3;
        modelFields.addField(integerModelField3);
        SelectModelField selectModelField = new SelectModelField("miniGameTaskDisallowList", "跳转任务 | 不允许执行列表(游戏、第三方)", new LinkedHashSet(), new SelectModelField.SelectListFunc() { // from class: io.github.lazyimmortal.sesame.model.normal.base.BaseModel$$ExternalSyntheticLambda1
            @Override // io.github.lazyimmortal.sesame.data.modelFieldExt.SelectModelField.SelectListFunc
            public final List getList() {
                return MiniGameTaskListMap.getOptions();
            }
        });
        miniGameTaskDisallowList = selectModelField;
        modelFields.addField(selectModelField);
        SelectAndCountModelField selectAndCountModelField = new SelectAndCountModelField("rpcRequestList", "RPC请求列表及每日执行数(慎用)", new LinkedHashMap(), new SelectAndCountModelField.SelectListFunc() { // from class: io.github.lazyimmortal.sesame.model.normal.base.BaseModel$$ExternalSyntheticLambda2
            @Override // io.github.lazyimmortal.sesame.data.modelFieldExt.SelectAndCountModelField.SelectListFunc
            public final List getList() {
                return AlipayrpcRequest.getList();
            }
        }, "请填写每日执行次数");
        rpcRequestList = selectAndCountModelField;
        modelFields.addField(selectAndCountModelField);
        SelectModelField selectModelField2 = new SelectModelField("rpcRequestTaskList", "RPC可选任务列表(长按列表中的项仅移除用，内容需打开rpcResquest.json文件配置)", new LinkedHashSet(), new SelectModelField.SelectListFunc() { // from class: io.github.lazyimmortal.sesame.model.normal.base.BaseModel$$ExternalSyntheticLambda3
            @Override // io.github.lazyimmortal.sesame.data.modelFieldExt.SelectModelField.SelectListFunc
            public final List getList() {
                return AlipayrpcRequest.getList();
            }
        }, "长按删除RPC列表项用");
        rpcRequestTaskList = selectModelField2;
        modelFields.addField(selectModelField2);
        BooleanModelField booleanModelField5 = new BooleanModelField("batteryPerm", "为支付宝申请后台运行权限", true);
        batteryPerm = booleanModelField5;
        modelFields.addField(booleanModelField5);
        BooleanModelField booleanModelField6 = new BooleanModelField("recordLog", "记录日志", true);
        recordLog = booleanModelField6;
        modelFields.addField(booleanModelField6);
        BooleanModelField booleanModelField7 = new BooleanModelField("showToast", "气泡提示", true);
        showToast = booleanModelField7;
        modelFields.addField(booleanModelField7);
        IntegerModelField integerModelField4 = new IntegerModelField("toastOffsetY", "气泡纵向偏移", 0);
        toastOffsetY = integerModelField4;
        modelFields.addField(integerModelField4);
        BooleanModelField booleanModelField8 = new BooleanModelField("enableOnGoing", "开启状态栏禁删", false);
        enableOnGoing = booleanModelField8;
        modelFields.addField(booleanModelField8);
        return modelFields;
    }

    public static void initData() {
        new Thread(new Runnable() { // from class: io.github.lazyimmortal.sesame.model.normal.base.BaseModel$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                BaseModel.lambda$initData$0();
            }
        }).start();
    }

    static /* synthetic */ void lambda$initData$0() {
        try {
            TimeUtil.sleep(5000L);
            ProtectEcology.initForest();
            ProtectEcology.initOcean();
        } catch (Exception e) {
            Log.printStackTrace(e);
        }
    }

    public static void destroyData() {
        try {
            TreeIdMap.clear();
            ReserveIdMap.clear();
            AnimalIdMap.clear();
            MarathonIdMap.clear();
            NewAncientTreeIdMap.clear();
            BeachIdMap.clear();
            PlantSceneIdMap.clear();
            ForestHuntIdMap.clear();
            MemberCreditSesameTaskListMap.clear();
            AntForestVitalityTaskListMap.clear();
            AntForestHuntTaskListMap.clear();
            AntFarmDoFarmTaskListMap.clear();
            AntFarmDrawMachineTaskListMap.clear();
            AntFarmChickenChefTaskListMap.clear();
            AntDodoTaskListMap.clear();
            AntOceanAntiepTaskListMap.clear();
            AntOceanFishBlackListMap.clear();
            AntOrchardTaskListMap.clear();
            AntOrchardDrawTaskListMap.clear();
            GoldenBeansTaskListMap.clear();
            MonopolyTaskListMap.clear();
            AntStallTaskListMap.clear();
            AntSportsTaskListMap.clear();
            AntMemberTaskListMap.clear();
        } catch (Exception e) {
            Log.printStackTrace(e);
        }
    }

    public static void initRpcRequest() {
        rpcRequestMap.load();
        rpcRequestMap.add("{\"methodName\":\"alipay.antforest.forest.h5.queryMiscInfo\",\"requestData\":[{\"queryBizType\":\"usingProp\",\"source\":\"SELF_HOME\",\"version\":\"20240201\"}]}", "查询森林使用道具(示例)");
        rpcRequestMap.add("{\"methodName\":\"alipay.antforest.forest.h5.updateUserConfig\",\"requestData\":[{\"configMap\":{\"inTeam\":\"Y\"},\"source\":\"chInfo_ch_appcenter__chsub_9patch\"}]}", "切换到组队浇水(示例)");
        rpcRequestMap.add("{\"methodName\":\"alipay.antforest.forest.h5.updateUserConfig\",\"requestData\":[{\"configMap\":{\"inTeam\":\"N\"},\"source\":\"chInfo_ch_appcenter__chsub_9patch\"}]}", "切换到个人主页(示例)");
        rpcRequestMap.save();
    }

    public static void taskRpcRequest() {
        Map<String, Integer> value = rpcRequestList.getValue();
        if (value == null || value.isEmpty()) {
            return;
        }
        rpcRequestMap.load();
        for (Map.Entry<String, Integer> entry : value.entrySet()) {
            String key = entry.getKey();
            Integer value2 = entry.getValue();
            String str = rpcRequestMap.get(key);
            int iIntValue = Status.getrpcRequestListToday(str).intValue();
            if (iIntValue < value2.intValue()) {
                int i = iIntValue + 1;
                try {
                    Status.rpcRequestListToday(str, i);
                    if (key != null && !key.isEmpty()) {
                        JSONObject jSONObject = new JSONObject(key);
                        String string = jSONObject.getString("methodName");
                        String string2 = jSONObject.getString("requestData");
                        Log.debug("自主调用🈸RPC[" + str + "]第" + i + "[" + value2 + "]次\n方法：" + string + "\n参数：" + string2);
                        String strRequestString = ApplicationHook.requestString(string, string2);
                        StringBuilder sb = new StringBuilder();
                        sb.append("自主调用🈸RPC[");
                        sb.append(str);
                        sb.append("]返回\n数据：");
                        sb.append(strRequestString);
                        Log.debug(sb.toString());
                    }
                } catch (JSONException e) {
                    e.printStackTrace();
                    Log.debug("JSON解析失败，字符串内容：" + key);
                }
            }
        }
    }
}
