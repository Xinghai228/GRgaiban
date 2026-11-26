package io.github.lazyimmortal.sesame.model.task.antOrchard;

import androidx.core.app.NotificationCompat;
import io.github.lazyimmortal.sesame.data.ConfigV2;
import io.github.lazyimmortal.sesame.data.ModelFields;
import io.github.lazyimmortal.sesame.data.ModelGroup;
import io.github.lazyimmortal.sesame.data.modelFieldExt.BooleanModelField;
import io.github.lazyimmortal.sesame.data.modelFieldExt.ChoiceModelField;
import io.github.lazyimmortal.sesame.data.modelFieldExt.IntegerModelField;
import io.github.lazyimmortal.sesame.data.modelFieldExt.SelectAndCountModelField;
import io.github.lazyimmortal.sesame.data.modelFieldExt.SelectModelField;
import io.github.lazyimmortal.sesame.data.task.ModelTask;
import io.github.lazyimmortal.sesame.entity.AlipayAntOrchardDrawTaskList;
import io.github.lazyimmortal.sesame.entity.AlipayAntOrchardTaskList;
import io.github.lazyimmortal.sesame.entity.AlipayGoldenBeansTaskList;
import io.github.lazyimmortal.sesame.entity.AlipayPlantScene;
import io.github.lazyimmortal.sesame.hook.Toast;
import io.github.lazyimmortal.sesame.model.base.TaskAlternative;
import io.github.lazyimmortal.sesame.model.base.TaskCommon;
import io.github.lazyimmortal.sesame.model.task.antDodo.AntDodo$$ExternalSyntheticLambda3;
import io.github.lazyimmortal.sesame.model.task.antGame.GameTask;
import io.github.lazyimmortal.sesame.util.FileUtil;
import io.github.lazyimmortal.sesame.util.Log;
import io.github.lazyimmortal.sesame.util.MessageUtil;
import io.github.lazyimmortal.sesame.util.RandomUtil;
import io.github.lazyimmortal.sesame.util.Status;
import io.github.lazyimmortal.sesame.util.TaskIconUtil;
import io.github.lazyimmortal.sesame.util.TimeUtil;
import io.github.lazyimmortal.sesame.util.idMap.AntOrchardDrawTaskListMap;
import io.github.lazyimmortal.sesame.util.idMap.AntOrchardTaskListMap;
import io.github.lazyimmortal.sesame.util.idMap.GoldenBeansTaskListMap;
import io.github.lazyimmortal.sesame.util.idMap.PlantSceneIdMap;
import io.github.lazyimmortal.sesame.util.idMap.UserIdMap;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class AntOrchard extends ModelTask {
    private static final ModelGroup GROUP = ModelGroup.ORCHARD;
    private static final String NAME = "农场";
    private static final Set<String> ORCHARD_TASK_BLACKLIST;
    private static final String TAG = "AntOrchard";
    private static final ArrayList<String> enableSceneList;
    private static int fertilizerProgress;
    private SelectModelField AntOrchardDrawTaskList;
    private SelectModelField AntOrchardTaskList;
    private BooleanModelField AutoAntOrchardDrawTaskList;
    private BooleanModelField AutoAntOrchardTaskList;
    private BooleanModelField AutoGoldenBeansTaskList;
    private BooleanModelField GoldenBeansGameCenter;
    private SelectModelField GoldenBeansTaskList;
    private BooleanModelField assistFriend;
    private SelectModelField assistFriendList;
    private BooleanModelField batchHireAnimal;
    private SelectModelField doNotHireList;
    private SelectModelField doNotWeedingList;
    private BooleanModelField drawGameCenterAward;
    private SelectModelField driveAnimalList;
    private ChoiceModelField driveAnimalType;
    private IntegerModelField executeInterval;
    private IntegerModelField goldenBeanDailyManureLimit;
    private BooleanModelField goldenBeanExchangeManure;
    private IntegerModelField goldenBeanReserveManure;
    private BooleanModelField goldenBeans;
    private BooleanModelField goldenBeansTask;
    private JSONObject lastOrchardIndexJo = null;
    private BooleanModelField orchardAutoHarvest;
    private BooleanModelField orchardAutoPlant;
    private BooleanModelField orchardDrawListTask;
    private BooleanModelField orchardListTask;
    private BooleanModelField orchardPlantNew;
    private BooleanModelField orchardSpreadManure;
    private SelectAndCountModelField orchardSpreadManureSceneList;
    private BooleanModelField receiveOrchardGameStay;
    private BooleanModelField useBatchSpread;
    private String userId;
    private String[] wuaList;

    public interface DriveAnimalType {
        public static final int ALL = 1;
        public static final int NONE = 0;
        public static final String[] nickNames = {"不操作", "驱赶所有"};
    }

    public enum TaskStatus {
        TODO,
        FINISHED,
        RECEIVED
    }

    static {
        HashSet hashSet = new HashSet();
        ORCHARD_TASK_BLACKLIST = hashSet;
        hashSet.add("ORCHARD_NORMAL_KUAISHOU_MAX");
        hashSet.add("ORCHARD_NORMAL_DIAOYU1");
        hashSet.add("ZHUFANG3IN1");
        hashSet.add("逛助农好货得肥料");
        hashSet.add("12173");
        hashSet.add("70000");
        hashSet.add("TOUTIAO");
        hashSet.add("ORCHARD_NORMAL_ZADAN10_3000");
        hashSet.add("TAOBAO2");
        hashSet.add("ORCHARD_NORMAL_JIUYIHUISHOU_VISIT");
        hashSet.add("ORCHARD_NORMAL_SHOUJISHUMAHUISHOU");
        hashSet.add("ORCHARD_NORMAL_AQ_XIAZAI");
        hashSet.add("ORCHARD_NORMAL_WAIMAIMIANDAN");
        hashSet.add("逛一逛签到领现金");
        fertilizerProgress = 0;
        enableSceneList = new ArrayList<>();
    }

    @Override // io.github.lazyimmortal.sesame.data.task.ModelTask, io.github.lazyimmortal.sesame.data.Model
    public String getName() {
        return NAME;
    }

    @Override // io.github.lazyimmortal.sesame.data.Model
    public ModelGroup getGroup() {
        return GROUP;
    }

    @Override // io.github.lazyimmortal.sesame.data.task.ModelTask, io.github.lazyimmortal.sesame.data.Model
    public ModelFields getFields() {
        ModelFields modelFields = new ModelFields();
        IntegerModelField integerModelField = new IntegerModelField("executeInterval", "执行间隔(毫秒)", 500, 500, null);
        this.executeInterval = integerModelField;
        modelFields.addField(integerModelField);
        BooleanModelField booleanModelField = new BooleanModelField("orchardListTask", "农场任务", false);
        this.orchardListTask = booleanModelField;
        modelFields.addField(booleanModelField);
        BooleanModelField booleanModelField2 = new BooleanModelField("AutoAntOrchardTaskList", "农场任务 | 推荐黑白名单", true);
        this.AutoAntOrchardTaskList = booleanModelField2;
        modelFields.addField(booleanModelField2);
        SelectModelField selectModelField = new SelectModelField("AntOrchardTaskList", "农场任务 | 黑名单列表", new LinkedHashSet(), new SelectModelField.SelectListFunc() { // from class: io.github.lazyimmortal.sesame.model.task.antOrchard.AntOrchard$$ExternalSyntheticLambda0
            @Override // io.github.lazyimmortal.sesame.data.modelFieldExt.SelectModelField.SelectListFunc
            public final List getList() {
                return AlipayAntOrchardTaskList.getList();
            }
        });
        this.AntOrchardTaskList = selectModelField;
        modelFields.addField(selectModelField);
        BooleanModelField booleanModelField3 = new BooleanModelField("orchardSpreadManure", "农场施肥 | 开启", false);
        this.orchardSpreadManure = booleanModelField3;
        modelFields.addField(booleanModelField3);
        BooleanModelField booleanModelField4 = new BooleanModelField("useBatchSpread", "一键施肥5次", false);
        this.useBatchSpread = booleanModelField4;
        modelFields.addField(booleanModelField4);
        SelectAndCountModelField selectAndCountModelField = new SelectAndCountModelField("orchardSpreadManureSceneList", "农场施肥 | 场景列表", new LinkedHashMap(), new SelectAndCountModelField.SelectListFunc() { // from class: io.github.lazyimmortal.sesame.model.task.antOrchard.AntOrchard$$ExternalSyntheticLambda1
            @Override // io.github.lazyimmortal.sesame.data.modelFieldExt.SelectAndCountModelField.SelectListFunc
            public final List getList() {
                return AlipayPlantScene.getList();
            }
        }, "请填写每日施肥次数");
        this.orchardSpreadManureSceneList = selectAndCountModelField;
        modelFields.addField(selectAndCountModelField);
        BooleanModelField booleanModelField5 = new BooleanModelField("orchardAutoHarvest", "自动收果树 | 开启", false);
        this.orchardAutoHarvest = booleanModelField5;
        modelFields.addField(booleanModelField5);
        BooleanModelField booleanModelField6 = new BooleanModelField("orchardAutoPlant", "自动种果树 | 开启", false);
        this.orchardAutoPlant = booleanModelField6;
        modelFields.addField(booleanModelField6);
        BooleanModelField booleanModelField7 = new BooleanModelField("drawGameCenterAward", "农场乐园 | 游戏宝箱", true);
        this.drawGameCenterAward = booleanModelField7;
        modelFields.addField(booleanModelField7);
        BooleanModelField booleanModelField8 = new BooleanModelField("receiveOrchardGameStay", "游戏时长任务 | 开启", false);
        this.receiveOrchardGameStay = booleanModelField8;
        modelFields.addField(booleanModelField8);
        BooleanModelField booleanModelField9 = new BooleanModelField("orchardDrawListTask", "农场抽抽乐任务", false);
        this.orchardDrawListTask = booleanModelField9;
        modelFields.addField(booleanModelField9);
        BooleanModelField booleanModelField10 = new BooleanModelField("AutoAntOrchardDrawTaskList", "农场抽抽乐任务 | 推荐黑白名单", true);
        this.AutoAntOrchardDrawTaskList = booleanModelField10;
        modelFields.addField(booleanModelField10);
        SelectModelField selectModelField2 = new SelectModelField("AntOrchardDrawTaskList", "农场抽抽乐任务 | 黑名单列表", new LinkedHashSet(), new SelectModelField.SelectListFunc() { // from class: io.github.lazyimmortal.sesame.model.task.antOrchard.AntOrchard$$ExternalSyntheticLambda2
            @Override // io.github.lazyimmortal.sesame.data.modelFieldExt.SelectModelField.SelectListFunc
            public final List getList() {
                return AlipayAntOrchardDrawTaskList.getList();
            }
        });
        this.AntOrchardDrawTaskList = selectModelField2;
        modelFields.addField(selectModelField2);
        BooleanModelField booleanModelField11 = new BooleanModelField("assistFriend", "分享助力 | 开启", false);
        this.assistFriend = booleanModelField11;
        modelFields.addField(booleanModelField11);
        SelectModelField selectModelField3 = new SelectModelField("assistFriendList", "分享助力 | 好友列表", new LinkedHashSet(), new AntDodo$$ExternalSyntheticLambda3());
        this.assistFriendList = selectModelField3;
        modelFields.addField(selectModelField3);
        BooleanModelField booleanModelField12 = new BooleanModelField("goldenBeans", "金豆夺宝 | 开启", false);
        this.goldenBeans = booleanModelField12;
        modelFields.addField(booleanModelField12);
        BooleanModelField booleanModelField13 = new BooleanModelField("goldenBeansTask", "金豆完成任务领奖 | 开启", false);
        this.goldenBeansTask = booleanModelField13;
        modelFields.addField(booleanModelField13);
        BooleanModelField booleanModelField14 = new BooleanModelField("AutoGoldenBeansTaskList", "金豆任务 | 推荐黑白名单", true);
        this.AutoGoldenBeansTaskList = booleanModelField14;
        modelFields.addField(booleanModelField14);
        SelectModelField selectModelField4 = new SelectModelField("GoldenBeansTaskList", "金豆任务 | 黑名单列表", new LinkedHashSet(), new SelectModelField.SelectListFunc() { // from class: io.github.lazyimmortal.sesame.model.task.antOrchard.AntOrchard$$ExternalSyntheticLambda3
            @Override // io.github.lazyimmortal.sesame.data.modelFieldExt.SelectModelField.SelectListFunc
            public final List getList() {
                return AlipayGoldenBeansTaskList.getList();
            }
        });
        this.GoldenBeansTaskList = selectModelField4;
        modelFields.addField(selectModelField4);
        BooleanModelField booleanModelField15 = new BooleanModelField("GoldenBeansGameCenter", "农场金豆乐园 | 游戏宝箱", true);
        this.GoldenBeansGameCenter = booleanModelField15;
        modelFields.addField(booleanModelField15);
        BooleanModelField booleanModelField16 = new BooleanModelField("goldenBeanExchangeManure", "金豆夺宝 | 肥料换金豆", false);
        this.goldenBeanExchangeManure = booleanModelField16;
        modelFields.addField(booleanModelField16);
        IntegerModelField integerModelField2 = new IntegerModelField("goldenBeanDailyManureLimit", "金豆夺宝 | 当日兑换肥料上限(0不限制)", 0, 0, null);
        this.goldenBeanDailyManureLimit = integerModelField2;
        modelFields.addField(integerModelField2);
        IntegerModelField integerModelField3 = new IntegerModelField("goldenBeanReserveManure", "金豆夺宝 | 剩余肥料下限(0不限制)", 0, 0, null);
        this.goldenBeanReserveManure = integerModelField3;
        modelFields.addField(integerModelField3);
        return modelFields;
    }

    @Override // io.github.lazyimmortal.sesame.data.task.ModelTask
    public Boolean check() {
        if (TaskCommon.IS_ENERGY_TIME.booleanValue()) {
            Log.farm("任务暂停⏸️芭芭农场:当前为只收能量时间");
            return false;
        }
        return true;
    }

    @Override // io.github.lazyimmortal.sesame.data.task.ModelTask
    public void run() {
        try {
            super.startTask();
            this.userId = UserIdMap.getCurrentUid();
            if (checkOrchardOpen()) {
                if (!Status.hasFlagToday("BlackList::initAntOrchard").booleanValue()) {
                    initAntOrchardTaskListMap(this.orchardListTask.getValue().booleanValue(), this.orchardDrawListTask.getValue().booleanValue(), this.goldenBeansTask.getValue().booleanValue(), this.AutoAntOrchardTaskList.getValue().booleanValue(), this.AutoAntOrchardDrawTaskList.getValue().booleanValue(), this.AutoGoldenBeansTaskList.getValue().booleanValue());
                    Status.flagToday("BlackList::initAntOrchard");
                }
                extraInfoGet();
                if (this.orchardListTask.getValue().booleanValue()) {
                    orchardListTask();
                }
                if (this.orchardSpreadManure.getValue().booleanValue()) {
                    orchardSpreadManure();
                }
                if (this.assistFriend.getValue().booleanValue()) {
                    orchardAssistFriend();
                }
                if (this.goldenBeans.getValue().booleanValue()) {
                    new GoldenBean().run(this.goldenBeansTask.getValue().booleanValue(), this.GoldenBeansTaskList.getValue(), this.GoldenBeansGameCenter.getValue().booleanValue(), this.goldenBeanExchangeManure.getValue().booleanValue(), this.goldenBeanReserveManure.getValue().intValue(), this.goldenBeanDailyManureLimit.getValue().intValue());
                }
                if (this.orchardDrawListTask.getValue().booleanValue()) {
                    orchardDrawListTask();
                }
                if (this.receiveOrchardGameStay.getValue().booleanValue()) {
                    AntOrchardGameStayTask.execute();
                }
                orchardInfo();
            }
        } catch (Throwable th) {
            Log.i(TAG, "start.run err:");
            Log.printStackTrace(TAG, th);
        }
    }

    private static String trimDouble(double d) {
        if (d == Math.rint(d) && !Double.isInfinite(d)) {
            return Long.toString((long) d);
        }
        return Double.toString(d);
    }

    /* JADX WARN: Code duplicated, block: B:116:0x021e  */
    /* JADX WARN: Code duplicated, block: B:117:0x0221  */
    /* JADX WARN: Code duplicated, block: B:119:0x0227  */
    /* JADX WARN: Code duplicated, block: B:120:0x023f  */
    /* JADX WARN: Instruction removed from duplicated block: B:119:0x0227, please report this as an issue */
    private void orchardInfo() {
        Throwable th;
        String str;
        String strOptString;
        Integer numValueOf;
        Integer numValueOf2;
        Integer numValueOf3;
        Integer numValueOf4;
        Integer numValueOf5;
        Boolean boolValueOf;
        Integer numValueOf6;
        Integer numValueOf7;
        Integer numValueOf8;
        Integer numValueOf9;
        Integer num;
        String str2;
        String str3;
        Integer num2;
        Integer num3;
        String str4;
        Integer num4;
        Integer num5;
        JSONObject jSONObjectOptJSONObject;
        String strOptString2 = "";
        try {
            JSONObject jSONObject = this.lastOrchardIndexJo;
            if (jSONObject == null) {
                Log.info("芭芭农场🌳[" + UserIdMap.getShowName(UserIdMap.getCurrentUid()) + "]未获取到首页数据");
                return;
            }
            JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject("goldenEggInfo");
            if (jSONObjectOptJSONObject2 != null) {
                numValueOf9 = jSONObjectOptJSONObject2.has("smashedGoldenEggs") ? Integer.valueOf(jSONObjectOptJSONObject2.optInt("smashedGoldenEggs")) : null;
                try {
                    numValueOf8 = jSONObjectOptJSONObject2.has("goldenEggLimit") ? Integer.valueOf(jSONObjectOptJSONObject2.optInt("goldenEggLimit")) : null;
                    try {
                        numValueOf7 = jSONObjectOptJSONObject2.has("unsmashedGoldenEggs") ? Integer.valueOf(jSONObjectOptJSONObject2.optInt("unsmashedGoldenEggs")) : null;
                    } catch (Throwable th2) {
                        th = th2;
                        str = "";
                        strOptString = str;
                        numValueOf = null;
                        numValueOf2 = null;
                        numValueOf3 = null;
                        numValueOf4 = null;
                        numValueOf5 = null;
                        boolValueOf = null;
                        numValueOf6 = null;
                        numValueOf7 = null;
                        Log.i(TAG, "orchardInfo 解析失败:");
                        Log.printStackTrace(TAG, th);
                        num = numValueOf3;
                        str2 = str;
                        str3 = strOptString;
                        num2 = null;
                        num3 = numValueOf4;
                        if (boolValueOf == null) {
                            str4 = " ";
                        } else if (boolValueOf.booleanValue()) {
                            str4 = "可兑换(已兑" + Log.n(num3) + "次)";
                        } else {
                            str4 = "未成熟";
                        }
                        Log.info("芭芭农场🌳[" + UserIdMap.getShowName(UserIdMap.getCurrentUid()) + "][" + strOptString2 + str3 + "]" + str2 + "(" + Log.n(num) + "/" + Log.n(numValueOf2) + "级)进度" + Log.n(numValueOf) + "/" + Log.n(num2) + ";肥料" + Log.n(numValueOf6) + ";今日可施肥" + Log.n(numValueOf5) + "次;金蛋" + Log.n(numValueOf9) + "/" + Log.n(numValueOf8) + "(待砸" + Log.n(numValueOf7) + ");" + str4 + ";");
                    }
                } catch (Throwable th3) {
                    th = th3;
                    str = "";
                    strOptString = str;
                    numValueOf = null;
                    numValueOf2 = null;
                    numValueOf3 = null;
                    numValueOf4 = null;
                    numValueOf5 = null;
                    boolValueOf = null;
                    numValueOf6 = null;
                    numValueOf7 = null;
                    numValueOf8 = null;
                }
            } else {
                numValueOf7 = null;
                numValueOf8 = null;
                numValueOf9 = null;
            }
            try {
                String strOptString3 = jSONObject.optString("taobaoData", "");
                if (!strOptString3.isEmpty() && (jSONObjectOptJSONObject = new JSONObject(strOptString3).optJSONObject("gameInfo")) != null) {
                    JSONObject jSONObjectOptJSONObject3 = jSONObjectOptJSONObject.optJSONObject("accountInfo");
                    if (jSONObjectOptJSONObject3 != null) {
                        numValueOf6 = jSONObjectOptJSONObject3.has("happyPoint") ? Integer.valueOf(jSONObjectOptJSONObject3.optInt("happyPoint")) : null;
                        try {
                            numValueOf5 = jSONObjectOptJSONObject3.has("wateringLeftTimes") ? Integer.valueOf(jSONObjectOptJSONObject3.optInt("wateringLeftTimes")) : null;
                        } catch (Throwable th4) {
                            th = th4;
                            str = "";
                            strOptString = str;
                            numValueOf = null;
                            numValueOf2 = null;
                            numValueOf3 = null;
                            numValueOf4 = null;
                            numValueOf5 = null;
                            boolValueOf = null;
                            Log.i(TAG, "orchardInfo 解析失败:");
                            Log.printStackTrace(TAG, th);
                            num = numValueOf3;
                            str2 = str;
                            str3 = strOptString;
                            num2 = null;
                            num3 = numValueOf4;
                            if (boolValueOf == null) {
                                str4 = " ";
                            } else if (boolValueOf.booleanValue()) {
                                str4 = "可兑换(已兑" + Log.n(num3) + "次)";
                            } else {
                                str4 = "未成熟";
                            }
                            Log.info("芭芭农场🌳[" + UserIdMap.getShowName(UserIdMap.getCurrentUid()) + "][" + strOptString2 + str3 + "]" + str2 + "(" + Log.n(num) + "/" + Log.n(numValueOf2) + "级)进度" + Log.n(numValueOf) + "/" + Log.n(num2) + ";肥料" + Log.n(numValueOf6) + ";今日可施肥" + Log.n(numValueOf5) + "次;金蛋" + Log.n(numValueOf9) + "/" + Log.n(numValueOf8) + "(待砸" + Log.n(numValueOf7) + ");" + str4 + ";");
                        }
                    } else {
                        numValueOf5 = null;
                        numValueOf6 = null;
                    }
                    try {
                        JSONObject jSONObjectOptJSONObject4 = jSONObjectOptJSONObject.optJSONObject("plantInfo");
                        if (jSONObjectOptJSONObject4 != null) {
                            boolValueOf = jSONObjectOptJSONObject4.has("canExchange") ? Boolean.valueOf(jSONObjectOptJSONObject4.optBoolean("canExchange")) : null;
                            try {
                                numValueOf4 = jSONObjectOptJSONObject4.has("exchangeCount") ? Integer.valueOf(jSONObjectOptJSONObject4.optInt("exchangeCount")) : null;
                                try {
                                    JSONObject jSONObjectOptJSONObject5 = jSONObjectOptJSONObject4.optJSONObject("seedStage");
                                    if (jSONObjectOptJSONObject5 != null) {
                                        String strOptString4 = jSONObjectOptJSONObject5.optString("seedName", "");
                                        num3 = numValueOf4;
                                        try {
                                            strOptString = jSONObjectOptJSONObject5.optString("seedSubTitle", "");
                                            try {
                                                strOptString2 = jSONObjectOptJSONObject5.optString("stageName", "");
                                                numValueOf3 = jSONObjectOptJSONObject5.has("stageLevel") ? Integer.valueOf(jSONObjectOptJSONObject5.optInt("stageLevel")) : null;
                                                try {
                                                    numValueOf2 = jSONObjectOptJSONObject5.has("stageMaxLevel") ? Integer.valueOf(jSONObjectOptJSONObject5.optInt("stageMaxLevel")) : null;
                                                    try {
                                                        numValueOf = jSONObjectOptJSONObject5.has("currentProgress") ? Integer.valueOf(jSONObjectOptJSONObject5.optInt("currentProgress")) : null;
                                                        try {
                                                            if (jSONObjectOptJSONObject5.has("totalProgress")) {
                                                                Integer numValueOf10 = Integer.valueOf(jSONObjectOptJSONObject5.optInt("totalProgress"));
                                                                num = numValueOf3;
                                                                num5 = numValueOf6;
                                                                num4 = numValueOf10;
                                                                str2 = strOptString2;
                                                                strOptString2 = strOptString4;
                                                            } else {
                                                                num = numValueOf3;
                                                                num5 = numValueOf6;
                                                                str2 = strOptString2;
                                                                strOptString2 = strOptString4;
                                                                num4 = null;
                                                            }
                                                        } catch (Throwable th5) {
                                                            th = th5;
                                                            str = strOptString2;
                                                            strOptString2 = strOptString4;
                                                            numValueOf4 = num3;
                                                            Log.i(TAG, "orchardInfo 解析失败:");
                                                            Log.printStackTrace(TAG, th);
                                                            num = numValueOf3;
                                                            str2 = str;
                                                            str3 = strOptString;
                                                            num2 = null;
                                                            num3 = numValueOf4;
                                                        }
                                                    } catch (Throwable th6) {
                                                        th = th6;
                                                        str = strOptString2;
                                                        strOptString2 = strOptString4;
                                                        numValueOf4 = num3;
                                                        numValueOf = null;
                                                    }
                                                } catch (Throwable th7) {
                                                    th = th7;
                                                    str = strOptString2;
                                                    strOptString2 = strOptString4;
                                                    numValueOf4 = num3;
                                                    numValueOf = null;
                                                    numValueOf2 = null;
                                                }
                                            } catch (Throwable th8) {
                                                th = th8;
                                                str = strOptString2;
                                                strOptString2 = strOptString4;
                                                numValueOf4 = num3;
                                                numValueOf = null;
                                                numValueOf2 = null;
                                                numValueOf3 = null;
                                                Log.i(TAG, "orchardInfo 解析失败:");
                                                Log.printStackTrace(TAG, th);
                                                num = numValueOf3;
                                                str2 = str;
                                                str3 = strOptString;
                                                num2 = null;
                                                num3 = numValueOf4;
                                                if (boolValueOf == null) {
                                                    str4 = " ";
                                                } else if (boolValueOf.booleanValue()) {
                                                    str4 = "可兑换(已兑" + Log.n(num3) + "次)";
                                                } else {
                                                    str4 = "未成熟";
                                                }
                                                Log.info("芭芭农场🌳[" + UserIdMap.getShowName(UserIdMap.getCurrentUid()) + "][" + strOptString2 + str3 + "]" + str2 + "(" + Log.n(num) + "/" + Log.n(numValueOf2) + "级)进度" + Log.n(numValueOf) + "/" + Log.n(num2) + ";肥料" + Log.n(numValueOf6) + ";今日可施肥" + Log.n(numValueOf5) + "次;金蛋" + Log.n(numValueOf9) + "/" + Log.n(numValueOf8) + "(待砸" + Log.n(numValueOf7) + ");" + str4 + ";");
                                            }
                                        } catch (Throwable th9) {
                                            th = th9;
                                            str = "";
                                            strOptString = str;
                                        }
                                    } else {
                                        num3 = numValueOf4;
                                        num5 = numValueOf6;
                                        str2 = "";
                                        strOptString = str2;
                                        numValueOf = null;
                                        numValueOf2 = null;
                                        num4 = null;
                                        num = null;
                                    }
                                } catch (Throwable th10) {
                                    th = th10;
                                    str = "";
                                    strOptString = str;
                                }
                            } catch (Throwable th11) {
                                th = th11;
                                str = "";
                                strOptString = str;
                                numValueOf = null;
                                numValueOf2 = null;
                                numValueOf3 = null;
                                numValueOf4 = null;
                            }
                        } else {
                            num5 = numValueOf6;
                            str2 = "";
                            strOptString = str2;
                            numValueOf = null;
                            numValueOf2 = null;
                            num4 = null;
                            boolValueOf = null;
                        }
                        numValueOf6 = num5;
                        num2 = num4;
                        str3 = strOptString;
                    } catch (Throwable th12) {
                        th = th12;
                        str = "";
                        strOptString = str;
                        numValueOf = null;
                        numValueOf2 = null;
                        numValueOf3 = null;
                        numValueOf4 = null;
                        boolValueOf = null;
                        Log.i(TAG, "orchardInfo 解析失败:");
                        Log.printStackTrace(TAG, th);
                        num = numValueOf3;
                        str2 = str;
                        str3 = strOptString;
                        num2 = null;
                        num3 = numValueOf4;
                        if (boolValueOf == null) {
                            str4 = " ";
                        } else if (boolValueOf.booleanValue()) {
                            str4 = "可兑换(已兑" + Log.n(num3) + "次)";
                        } else {
                            str4 = "未成熟";
                        }
                        Log.info("芭芭农场🌳[" + UserIdMap.getShowName(UserIdMap.getCurrentUid()) + "][" + strOptString2 + str3 + "]" + str2 + "(" + Log.n(num) + "/" + Log.n(numValueOf2) + "级)进度" + Log.n(numValueOf) + "/" + Log.n(num2) + ";肥料" + Log.n(numValueOf6) + ";今日可施肥" + Log.n(numValueOf5) + "次;金蛋" + Log.n(numValueOf9) + "/" + Log.n(numValueOf8) + "(待砸" + Log.n(numValueOf7) + ");" + str4 + ";");
                    }
                    if (boolValueOf == null) {
                        str4 = " ";
                    } else if (boolValueOf.booleanValue()) {
                        str4 = "可兑换(已兑" + Log.n(num3) + "次)";
                    } else {
                        str4 = "未成熟";
                    }
                    Log.info("芭芭农场🌳[" + UserIdMap.getShowName(UserIdMap.getCurrentUid()) + "][" + strOptString2 + str3 + "]" + str2 + "(" + Log.n(num) + "/" + Log.n(numValueOf2) + "级)进度" + Log.n(numValueOf) + "/" + Log.n(num2) + ";肥料" + Log.n(numValueOf6) + ";今日可施肥" + Log.n(numValueOf5) + "次;金蛋" + Log.n(numValueOf9) + "/" + Log.n(numValueOf8) + "(待砸" + Log.n(numValueOf7) + ");" + str4 + ";");
                }
                str2 = "";
                strOptString = str2;
                numValueOf = null;
                numValueOf2 = null;
                num4 = null;
                numValueOf5 = null;
                boolValueOf = null;
                num5 = null;
                num = null;
                num3 = null;
                numValueOf6 = num5;
                num2 = num4;
                str3 = strOptString;
            } catch (Throwable th13) {
                th = th13;
                str = "";
                strOptString = str;
                numValueOf = null;
                numValueOf2 = null;
                numValueOf3 = null;
                numValueOf4 = null;
                numValueOf5 = null;
                boolValueOf = null;
                numValueOf6 = null;
            }
            if (boolValueOf == null) {
                str4 = " ";
            } else if (boolValueOf.booleanValue()) {
                str4 = "可兑换(已兑" + Log.n(num3) + "次)";
            } else {
                str4 = "未成熟";
            }
            Log.info("芭芭农场🌳[" + UserIdMap.getShowName(UserIdMap.getCurrentUid()) + "][" + strOptString2 + str3 + "]" + str2 + "(" + Log.n(num) + "/" + Log.n(numValueOf2) + "级)进度" + Log.n(numValueOf) + "/" + Log.n(num2) + ";肥料" + Log.n(numValueOf6) + ";今日可施肥" + Log.n(numValueOf5) + "次;金蛋" + Log.n(numValueOf9) + "/" + Log.n(numValueOf8) + "(待砸" + Log.n(numValueOf7) + ");" + str4 + ";");
        } catch (Throwable th14) {
            th = th14;
            str = "";
            strOptString = str;
            numValueOf = null;
            numValueOf2 = null;
            numValueOf3 = null;
            numValueOf4 = null;
            numValueOf5 = null;
            boolValueOf = null;
            numValueOf6 = null;
            numValueOf7 = null;
            numValueOf8 = null;
            numValueOf9 = null;
        }
    }

    private boolean checkOrchardOpen() {
        try {
            JSONObject jSONObject = new JSONObject(AntOrchardRpcCall.orchardIndex());
            if (!MessageUtil.checkResultCode(TAG, jSONObject).booleanValue()) {
                return false;
            }
            if (!jSONObject.optBoolean("userOpenOrchard")) {
                getEnableField().setValue(false);
                Log.record("请先开启芭芭农场！");
                return false;
            }
            if (jSONObject.has("lotteryPlusInfo")) {
                drawLotteryPlus(jSONObject.getJSONObject("lotteryPlusInfo"));
            }
            initPlantScene(jSONObject);
            handleEnableScenes(jSONObject);
            querySubplotsActivity("BATTLE_V2");
            handleTaobaoData(jSONObject.getString("taobaoData"));
            if (this.drawGameCenterAward.getValue().booleanValue()) {
                JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("goldenEggInfo");
                if (jSONObjectOptJSONObject != null) {
                    int iOptInt = jSONObjectOptJSONObject.optInt("unsmashedGoldenEggs");
                    int iOptInt2 = jSONObjectOptJSONObject.optInt("goldenEggLimit");
                    int iOptInt3 = jSONObjectOptJSONObject.optInt("smashedGoldenEggs");
                    if (iOptInt > 0) {
                        smashedGoldenEgg(iOptInt);
                    } else {
                        int i = iOptInt2 - iOptInt3;
                        if (i > 0) {
                            GameTask.Orchard_ncscc.report(NAME, i);
                        }
                    }
                }
                queryOptionalPlay();
            }
            this.lastOrchardIndexJo = jSONObject;
            return true;
        } catch (Throwable th) {
            Log.i(TAG, "orchardIndex err:");
            Log.printStackTrace(TAG, th);
            return false;
        }
    }

    private void queryOptionalPlay() {
        try {
            JSONObject jSONObject = new JSONObject(AntOrchardRpcCall.queryOptionalPlay());
            if (MessageUtil.checkSuccess(TAG, jSONObject).booleanValue() && jSONObject.has("taskTriggerPlayInfo")) {
                JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("taskTriggerPlayInfo");
                if (jSONObjectOptJSONObject.has("taskList")) {
                    JSONArray jSONArray = jSONObjectOptJSONObject.getJSONArray("taskList");
                    for (int i = 0; i < jSONArray.length(); i++) {
                        JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                        String string = jSONObject2.getString("taskType");
                        String string2 = jSONObject2.getString("taskStatus");
                        String string3 = jSONObject2.getString("sceneCode");
                        int iOptInt = jSONObject2.optInt("awardCount") - jSONObject2.optInt("alreadyReceiveAwardCount");
                        String string4 = jSONObject2.getJSONObject("bizInfo").getString("title");
                        if (string2.equals("FINISHED") && iOptInt > 0) {
                            JSONObject jSONObject3 = new JSONObject(AntOrchardRpcCall.receiveTaskAwardantorchard(iOptInt, string3, string));
                            if (MessageUtil.checkSuccess(TAG, jSONObject3).booleanValue()) {
                                int iOptInt2 = jSONObject3.optInt("incAwardCount");
                                Log.farm("农场乐园🎖️领取[" + string4 + "]奖励[" + jSONObject3.optJSONObject("taskConfigResultVO").getString("awardType") + "*" + iOptInt2 + "]");
                            } else {
                                continue;
                            }
                        }
                    }
                }
            }
        } catch (Throwable th) {
            Log.i(TAG, "queryOptionalPlay err:");
            Log.printStackTrace(TAG, th);
        }
    }

    public static void initAntOrchardTaskListMap(boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6) {
        SelectModelField selectModelField;
        try {
            AntOrchardTaskListMap.load();
            HashSet<String> hashSet = new HashSet();
            hashSet.add("完成1笔旧衣回收");
            hashSet.add("逛助农好货得肥料");
            hashSet.add("逛一逛快手");
            hashSet.add("下载蚂蚁阿福看健康攻略");
            hashSet.add("逛一逛签到领现金");
            hashSet.add("钓鱼1次");
            hashSet.add("逛一逛闪购外卖");
            hashSet.add("完成1单手机数码回收");
            hashSet.add("逛好物最高得1500肥料");
            HashSet<String> hashSet2 = new HashSet();
            Iterator it = hashSet.iterator();
            while (it.hasNext()) {
                AntOrchardTaskListMap.add((String) it.next(), "");
            }
            if (z) {
                JSONObject jSONObject = new JSONObject(AntOrchardRpcCall.orchardListTask());
                if (MessageUtil.checkResultCode(TAG, jSONObject).booleanValue()) {
                    JSONArray jSONArray = jSONObject.getJSONArray("taskList");
                    for (int i = 0; i < jSONArray.length(); i++) {
                        JSONObject jSONObjectOptJSONObject = jSONArray.getJSONObject(i).optJSONObject("taskDisplayConfig");
                        if (jSONObjectOptJSONObject.has("title")) {
                            AntOrchardTaskListMap.add(jSONObjectOptJSONObject.optString("title"), TaskIconUtil.extractIcon(jSONObjectOptJSONObject));
                        }
                    }
                }
                AntOrchardTaskListMap.save();
                Log.record("同步任务🉑芭芭农场肥料任务列表");
                if (z4) {
                    SelectModelField selectModelField2 = (SelectModelField) ConfigV2.INSTANCE.getModelFieldsMap().get(TAG).get("AntOrchardTaskList");
                    if (selectModelField2 == null) {
                        return;
                    }
                    Set<String> value = selectModelField2.getValue();
                    if (value != null) {
                        for (String str : hashSet) {
                            if (!value.contains(str)) {
                                selectModelField2.add(str, 0);
                            }
                        }
                        for (String str2 : hashSet2) {
                            if (value.contains(str2)) {
                                value.remove(str2);
                            }
                        }
                    }
                    if (ConfigV2.save(UserIdMap.getCurrentUid(), false).booleanValue()) {
                        Log.record("黑白名单🈲芭芭农场肥料任务自动设置: " + selectModelField2.getValue());
                    } else {
                        Log.record("农场肥料任务黑白名单设置失败");
                    }
                }
            }
            AntOrchardDrawTaskListMap.load();
            HashSet<String> hashSet3 = new HashSet();
            hashSet3.add("去完成2个居民订单");
            hashSet3.add("去完成20个居民订单");
            hashSet3.add("去完成50个居民订单");
            hashSet3.add("花园世界任意充值一笔");
            HashSet<String> hashSet4 = new HashSet();
            Iterator it2 = hashSet3.iterator();
            while (it2.hasNext()) {
                AntOrchardDrawTaskListMap.add((String) it2.next(), "");
            }
            if (z2) {
                JSONObject jSONObject2 = new JSONObject(AntOrchardRpcCall.orchardDrawListTask());
                if (MessageUtil.checkResultCode(TAG, jSONObject2).booleanValue()) {
                    JSONArray jSONArray2 = jSONObject2.getJSONArray("taskInfoList");
                    for (int i2 = 0; i2 < jSONArray2.length(); i2++) {
                        JSONObject jSONObject3 = new JSONObject(jSONArray2.getJSONObject(i2).getJSONObject("taskBaseInfo").getString("bizInfo"));
                        AntOrchardDrawTaskListMap.add(jSONObject3.getString("title"), TaskIconUtil.extractIcon(jSONObject3));
                    }
                }
                AntOrchardDrawTaskListMap.save();
                Log.record("同步任务🉑芭芭农场抽抽乐任务列表");
                if (z5) {
                    SelectModelField selectModelField3 = (SelectModelField) ConfigV2.INSTANCE.getModelFieldsMap().get(TAG).get("AntOrchardDrawTaskList");
                    if (selectModelField3 == null) {
                        return;
                    }
                    Set<String> value2 = selectModelField3.getValue();
                    if (value2 != null) {
                        for (String str3 : hashSet3) {
                            if (!value2.contains(str3)) {
                                selectModelField3.add(str3, 0);
                            }
                        }
                        for (String str4 : hashSet4) {
                            if (value2.contains(str4)) {
                                value2.remove(str4);
                            }
                        }
                    }
                    if (ConfigV2.save(UserIdMap.getCurrentUid(), false).booleanValue()) {
                        Log.record("黑白名单🈲芭芭农场抽抽乐任务自动设置: " + selectModelField3.getValue());
                    } else {
                        Log.record("农场抽抽乐任务黑白名单设置失败");
                    }
                }
            }
            GoldenBeansTaskListMap.load();
            HashSet<String> hashSet5 = new HashSet();
            hashSet5.add("逛一逛快手");
            hashSet5.add("到店支付1笔");
            hashSet5.add("四季物语合成20次");
            hashSet5.add("余额宝攒钱满1000元");
            hashSet5.add("线上支付1笔");
            hashSet5.add("逛一逛淘宝拍照");
            hashSet5.add("每日福利：肥料兑换支金豆");
            hashSet5.add("逛一逛淘宝闪购");
            hashSet5.add("支付宝旧衣回收1次");
            HashSet<String> hashSet6 = new HashSet();
            Iterator it3 = hashSet5.iterator();
            while (it3.hasNext()) {
                GoldenBeansTaskListMap.add((String) it3.next(), "");
            }
            if (z3) {
                JSONObject jSONObject4 = new JSONObject(GoldenBeanRpcCall.index());
                if (MessageUtil.checkResultCode(TAG, jSONObject4).booleanValue()) {
                    if (jSONObject4.has("taskList")) {
                        JSONArray jSONArray3 = jSONObject4.getJSONArray("taskList");
                        for (int i3 = 0; i3 < jSONArray3.length(); i3++) {
                            JSONObject jSONObject5 = jSONArray3.getJSONObject(i3).getJSONObject("taskDisplayConfig");
                            GoldenBeansTaskListMap.add(jSONObject5.getString("title"), TaskIconUtil.extractIcon(jSONObject5));
                        }
                    }
                    if (jSONObject4.has("farmTaskList")) {
                        JSONArray jSONArray4 = jSONObject4.getJSONArray("farmTaskList");
                        for (int i4 = 0; i4 < jSONArray4.length(); i4++) {
                            JSONObject jSONObject6 = jSONArray4.getJSONObject(i4).getJSONObject("taskDisplayConfig");
                            GoldenBeansTaskListMap.add(jSONObject6.getString("title"), TaskIconUtil.extractIcon(jSONObject6));
                        }
                    }
                    GoldenBeansTaskListMap.save();
                    Log.record("同步任务🉑芭芭农场金豆任务列表");
                    if (!z6 || (selectModelField = (SelectModelField) ConfigV2.INSTANCE.getModelFieldsMap().get(TAG).get("GoldenBeansTaskList")) == null) {
                        return;
                    }
                    Set<String> value3 = selectModelField.getValue();
                    if (value3 != null) {
                        for (String str5 : hashSet5) {
                            if (!value3.contains(str5)) {
                                selectModelField.add(str5, 0);
                            }
                        }
                        for (String str6 : hashSet6) {
                            if (value3.contains(str6)) {
                                value3.remove(str6);
                            }
                        }
                    }
                    if (ConfigV2.save(UserIdMap.getCurrentUid(), false).booleanValue()) {
                        Log.record("黑白名单🈲芭芭农场金豆任务自动设置: " + selectModelField.getValue());
                        return;
                    }
                    Log.record("农场金豆任务黑白名单设置失败");
                }
            }
        } catch (Throwable th) {
            Log.i(TAG, "initAntOrchardTaskListMap err:");
            Log.printStackTrace(TAG, th);
        }
    }

    public static void initPlantScene(JSONObject jSONObject) {
        try {
            JSONArray jSONArray = jSONObject.getJSONArray("enableSwitchSceneList");
            if (jSONArray == null) {
                return;
            }
            PlantSceneIdMap.load();
            for (int i = 0; i < jSONArray.length(); i++) {
                String string = jSONArray.getString(i);
                PlantSceneIdMap.add(string, string);
            }
            PlantSceneIdMap.save();
        } catch (Throwable th) {
            Log.i(TAG, "initPlantScene err:");
            Log.printStackTrace(TAG, th);
        }
    }

    private void handleEnableScenes(JSONObject jSONObject) {
        try {
            JSONArray jSONArray = jSONObject.getJSONArray("enableSwitchSceneList");
            enableSceneList.clear();
            for (int i = 0; i < jSONArray.length(); i++) {
                String string = jSONArray.getString(i);
                ArrayList<String> arrayList = enableSceneList;
                arrayList.add(string);
                if ("main".equals(string) && !jSONObject.getString("currentPlantScene").equals(string)) {
                    switchPlantScene(PlantScene.main);
                }
                if ("yeb".equals(string)) {
                    JSONObject jSONObject2 = jSONObject.getJSONObject("yebSceneActivityInfo");
                    if ("NOT_PLANTED".equals(jSONObject2.getString("yebSceneStatus"))) {
                        arrayList.remove(string);
                    } else if (jSONObject2.optBoolean("revenueNotReceived")) {
                        queryYebRevenueDetail();
                    }
                }
            }
        } catch (Throwable th) {
            Log.i(TAG, "handleEnableScenes err:");
            Log.printStackTrace(TAG, th);
        }
    }

    private void handleTaobaoData(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str).getJSONObject("gameInfo").getJSONObject("plantInfo");
            JSONObject jSONObject2 = jSONObject.getJSONObject("seedStage");
            if (jSONObject.getBoolean("canExchange")) {
                Log.farm("农场果树似乎可以兑换了！");
                Toast.show("芭芭农场果树似乎可以兑换了！");
                if (this.orchardAutoHarvest.getValue().booleanValue()) {
                    AntOrchardAutoHarvest.harvest(this.orchardAutoPlant.getValue().booleanValue());
                }
            }
            if (jSONObject2.has("totalValue")) {
                fertilizerProgress = jSONObject2.getInt("totalValue");
            }
        } catch (Throwable th) {
            Log.i(TAG, "handleTaoBaoData err:");
            Log.printStackTrace(TAG, th);
        }
    }

    private void orchardSpreadManure() {
        boolean z;
        do {
            try {
                z = false;
                for (PlantScene plantScene : PlantScene.getEntries()) {
                    if (enableSceneList.contains(plantScene.name()) && this.orchardSpreadManureSceneList.contains(plantScene.name()).booleanValue() && switchPlantScene(plantScene) && canSpreadManure(plantScene) && doSpreadManure(plantScene)) {
                        z = true;
                        break;
                    }
                }
                querySpreadManureActivity();
                TimeUtil.sleep(this.executeInterval.getValue() != null ? this.executeInterval.getValue().intValue() : 500);
            } catch (Throwable th) {
                Log.i(TAG, "orchardSpreadManure err:");
                Log.printStackTrace(TAG, th);
                return;
            }
        } while (z);
    }

    private boolean doSpreadManure(PlantScene plantScene) {
        try {
            String strName = plantScene.name();
            JSONObject jSONObject = new JSONObject(AntOrchardRpcCall.orchardSpreadManure(this.useBatchSpread.getValue(), getWua()));
            if (!MessageUtil.checkResultCode(TAG, jSONObject).booleanValue()) {
                return false;
            }
            JSONObject jSONObject2 = new JSONObject(jSONObject.getString("taobaoData"));
            Log.farm("芭芭农场🌳" + plantScene.nickname() + "施肥#消耗[" + jSONObject2.getInt("currentCost") + "g肥料]");
            if (jSONObject2.has("currentStage")) {
                int iOptInt = jSONObject2.getJSONObject("currentStage").optInt("totalValue", fertilizerProgress);
                if (iOptInt - fertilizerProgress <= 1) {
                    Log.record("施肥只加0.01%进度今日停止施肥！");
                    Status.flagToday("spreadManureLimit:" + strName, this.userId);
                }
                fertilizerProgress = iOptInt;
            }
            return true;
        } catch (Throwable th) {
            Log.i(TAG, "doSpreadManure err:");
            Log.printStackTrace(TAG, th);
            return false;
        }
    }

    private String getWua() {
        if (this.wuaList == null) {
            try {
                String fromFile = FileUtil.readFromFile(FileUtil.getWuaFile());
                if (fromFile != null && !fromFile.trim().isEmpty()) {
                    this.wuaList = fromFile.split("\n");
                } else {
                    this.wuaList = new String[0];
                }
            } catch (Throwable unused) {
                this.wuaList = new String[0];
            }
        }
        String[] strArr = this.wuaList;
        if (strArr.length > 0) {
            return this.wuaList[RandomUtil.nextInt(0, strArr.length)];
        }
        return "";
    }

    private boolean canSpreadManure(PlantScene plantScene) {
        Integer num;
        if (Status.hasFlagToday("spreadManureLimit:" + plantScene.name()).booleanValue() || (num = this.orchardSpreadManureSceneList.get(plantScene.name())) == null) {
            return false;
        }
        try {
            int i = AnonymousClass1.$SwitchMap$io$github$lazyimmortal$sesame$model$task$antOrchard$AntOrchard$PlantScene[plantScene.ordinal()];
            if (i == 1) {
                JSONObject jSONObject = new JSONObject(AntOrchardRpcCall.orchardSyncIndex());
                if (!MessageUtil.checkResultCode(TAG, jSONObject).booleanValue()) {
                    return false;
                }
                JSONObject jSONObject2 = jSONObject.getJSONObject("farmMainAccountInfo");
                return Integer.parseInt(jSONObject2.getString("happyPoint")) >= jSONObject2.getInt("wateringCost") && 200 - jSONObject2.getInt("wateringLeftTimes") < num.intValue();
            }
            if (i != 2) {
                return false;
            }
            JSONObject jSONObject3 = new JSONObject(AntOrchardRpcCall.orchardIndex());
            if (MessageUtil.checkResultCode(TAG, jSONObject3).booleanValue() && jSONObject3.has("yebScenePlantInfo")) {
                JSONObject jSONObject4 = jSONObject3.getJSONObject("yebScenePlantInfo").getJSONObject("plantProgressInfo");
                return jSONObject4.getInt("spreadProgress") < num.intValue() && num.intValue() < jSONObject4.getInt("dailySpreadLimit");
            }
            return false;
        } catch (Throwable th) {
            Log.i(TAG, "canSpreadManure err:");
            Log.printStackTrace(TAG, th);
            return false;
        }
    }

    /* JADX INFO: renamed from: io.github.lazyimmortal.sesame.model.task.antOrchard.AntOrchard$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$io$github$lazyimmortal$sesame$model$task$antOrchard$AntOrchard$PlantScene;

        static {
            int[] iArr = new int[PlantScene.values().length];
            $SwitchMap$io$github$lazyimmortal$sesame$model$task$antOrchard$AntOrchard$PlantScene = iArr;
            try {
                iArr[PlantScene.main.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$io$github$lazyimmortal$sesame$model$task$antOrchard$AntOrchard$PlantScene[PlantScene.yeb.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    private boolean switchPlantScene(PlantScene plantScene) {
        try {
            return MessageUtil.checkResultCode(TAG, new JSONObject(AntOrchardRpcCall.switchPlantScene(plantScene.name()))).booleanValue();
        } catch (Throwable th) {
            Log.i(TAG, "switchPlantScene err:");
            Log.printStackTrace(TAG, th);
            return false;
        }
    }

    private void querySpreadManureActivity() {
        try {
            JSONObject jSONObject = new JSONObject(AntOrchardRpcCall.orchardIndex());
            if (MessageUtil.checkResultCode(TAG, jSONObject).booleanValue() && jSONObject.has("spreadManureActivity")) {
                JSONObject jSONObject2 = jSONObject.getJSONObject("spreadManureActivity").getJSONObject("spreadManureStage");
                if ("FINISHED".equals(jSONObject2.getString(NotificationCompat.CATEGORY_STATUS))) {
                    JSONObject jSONObject3 = new JSONObject(AntOrchardRpcCall.receiveTaskAward(jSONObject2.getString("sceneCode"), jSONObject2.getString("taskType")));
                    if (MessageUtil.checkResultCode(TAG, jSONObject3).booleanValue()) {
                        Log.farm("芭芭农场🎁丰收礼包#获得[" + jSONObject3.getInt("incAwardCount") + "g肥料]");
                    }
                }
            }
        } catch (Throwable th) {
            Log.i(TAG, "querySpreadManureActivity err:");
            Log.printStackTrace(TAG, th);
        }
    }

    private void orchardListTask() {
        try {
            JSONObject jSONObject = new JSONObject(AntOrchardRpcCall.orchardListTask());
            if (MessageUtil.checkResultCode(TAG, jSONObject).booleanValue()) {
                Log.record(jSONObject.optBoolean("inTeam", false) ? "当前为芭芭农场 team 模式（合种/帮帮种已开启）" : "当前为普通单人农场模式");
                if (jSONObject.has("signTaskInfo")) {
                    handleSignTask(jSONObject.getJSONObject("signTaskInfo"));
                }
                JSONArray jSONArray = jSONObject.getJSONArray("taskList");
                triggerTbTask(jSONArray);
                handleTaskList(jSONArray);
            }
        } catch (Throwable th) {
            Log.i(TAG, "orchardListTask err:");
            Log.printStackTrace(TAG, th);
        }
    }

    private void handleSignTask(JSONObject jSONObject) {
        if (Status.hasFlagToday("orchardSign").booleanValue()) {
            return;
        }
        try {
            if (jSONObject.getJSONObject("currentSignItem").getBoolean("signed")) {
                Log.record("农场今日已签到");
                Status.flagToday("orchardSign", this.userId);
                return;
            }
            JSONObject jSONObject2 = new JSONObject(AntOrchardRpcCall.orchardSign());
            if (MessageUtil.checkResultCode(TAG, jSONObject2).booleanValue()) {
                JSONObject jSONObject3 = jSONObject2.getJSONObject("signTaskInfo").getJSONObject("currentSignItem");
                Log.farm("农场任务📅七天签到[第" + jSONObject3.getInt("currentContinuousCount") + "天]#获得[" + jSONObject3.getInt("awardCount") + "g肥料]");
                Status.flagToday("orchardSign", this.userId);
            }
        } catch (Throwable th) {
            Log.i(TAG, "handleSignTask err:");
            Log.printStackTrace(TAG, th);
        }
    }

    private void handleTaskList(JSONArray jSONArray) {
        for (int i = 0; i < jSONArray.length(); i++) {
            try {
                JSONObject jSONObject = jSONArray.getJSONObject(i);
                String string = jSONObject.getString("taskStatus");
                int iOptInt = jSONObject.optInt("rightsTimes", 0);
                int iOptInt2 = jSONObject.optInt("rightsTimesLimit", 0);
                if (!TaskStatus.RECEIVED.name().equals(string)) {
                    jSONObject.optString("groupId", "");
                    JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("taskDisplayConfig");
                    String strOptString = jSONObjectOptJSONObject != null ? jSONObjectOptJSONObject.optString("title", "未知任务") : "未知任务";
                    String strOptString2 = jSONObjectOptJSONObject == null ? "" : jSONObjectOptJSONObject.optString("desc");
                    String strOptString3 = jSONObjectOptJSONObject == null ? "" : jSONObjectOptJSONObject.optString("targetUrl");
                    if (this.AntOrchardTaskList.getValue().contains(strOptString)) {
                        TaskAlternative.handleGameTask(new TaskAlternative.GameTask("AntOrchardTaskList", strOptString, strOptString2, strOptString3, string).bizKey(jSONObject.optString("taskId")).rights(jSONObject.optInt("rightsTimes", 0), jSONObject.optInt("rightsTimesLimit", 0)).taskRemain(jSONObject.optInt("taskRemain", 0)).taskPlayType(jSONObject.optString("taskPlayType", jSONObject.optString("taskProdPlayType"))).taskMode(jSONObject.optString("taskMode")).taskSceneCode(jSONObject.optString("sceneCode")).scene("ORCHARD", "H5").version(AntOrchardRpcCall.VERSION));
                    } else if ((TaskStatus.TODO.name().equals(string) || iOptInt2 > iOptInt) && finishOrchardTask(jSONObject)) {
                        TimeUtil.sleep(500L);
                    }
                }
            } catch (Throwable th) {
                Log.i(TAG, "handleTaskList err:");
                Log.printStackTrace(TAG, th);
                return;
            }
        }
    }

    private boolean finishOrchardTask(JSONObject jSONObject) {
        try {
            if (!jSONObject.has("taskDisplayConfig") || !jSONObject.getJSONObject("taskDisplayConfig").has("title")) {
                return false;
            }
            String string = jSONObject.getJSONObject("taskDisplayConfig").getString("title");
            String string2 = jSONObject.getString("actionType");
            String strOptString = jSONObject.optString("sceneCode");
            String strOptString2 = jSONObject.optString("taskId");
            int iOptInt = jSONObject.optInt("rightsTimes", 0);
            int iOptInt2 = jSONObject.optInt("rightsTimesLimit", 0);
            if (!"VISIT".equals(string2) && !"XLIGHT".equals(string2)) {
                if (!"TRIGGER".equals(string2) && !"ADD_HOME".equals(string2) && !"PUSH_SUBSCRIBE".equals(string2)) {
                    int i = iOptInt2 > iOptInt ? iOptInt2 - iOptInt : 1;
                    for (int i2 = 0; i2 < i; i2++) {
                        JSONObject jSONObject2 = new JSONObject(AntOrchardRpcCall.finishTask(strOptString, strOptString2));
                        MessageUtil.checkResultCodeAndMarkTaskBlackList("AntOrchardTaskList", string, jSONObject2);
                        if (!MessageUtil.checkResultCode(TAG, jSONObject2).booleanValue()) {
                            break;
                        }
                        Log.farm("肥料任务🧾完成[" + string + "]" + TaskAlternative.rightsProgressText(iOptInt, iOptInt2, i2));
                        TimeUtil.sleep(500L);
                    }
                    return true;
                }
                int iRightsTimesToDo = TaskAlternative.rightsTimesToDo(iOptInt, iOptInt2);
                for (int i3 = 0; i3 < iRightsTimesToDo; i3++) {
                    JSONObject jSONObject3 = new JSONObject(AntOrchardRpcCall.finishTask(strOptString, strOptString2));
                    MessageUtil.checkResultCodeAndMarkTaskBlackList("AntOrchardTaskList", string, jSONObject3);
                    if (!MessageUtil.checkResultCode(TAG, jSONObject3).booleanValue()) {
                        break;
                    }
                    Log.farm("肥料任务🧾完成[" + string + "]" + TaskAlternative.rightsProgressText(iOptInt, iOptInt2, i3));
                    TimeUtil.sleep(500L);
                }
                return true;
            }
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("extend");
            if (jSONObjectOptJSONObject != null && iOptInt2 <= 0) {
                String strOptString3 = jSONObjectOptJSONObject.optString("rightsTimesLimit", "");
                if (!strOptString3.isEmpty()) {
                    try {
                        iOptInt2 = Integer.parseInt(strOptString3);
                    } catch (Exception unused) {
                    }
                }
            }
            int iRightsTimesToDo2 = TaskAlternative.rightsTimesToDo(iOptInt, iOptInt2);
            if (iRightsTimesToDo2 <= 0) {
                return true;
            }
            for (int i4 = 0; i4 < iRightsTimesToDo2; i4++) {
                JSONObject jSONObject4 = new JSONObject(AntOrchardRpcCall.finishTask(strOptString, strOptString2));
                MessageUtil.checkResultCodeAndMarkTaskBlackList("AntOrchardTaskList", string, jSONObject4);
                if (!MessageUtil.checkResultCode(TAG, jSONObject4).booleanValue()) {
                    Log.record("失败：芭芭农场广告任务📺[" + string + "] " + jSONObject4.optString("desc"));
                    break;
                }
                Log.farm("肥料任务🧾完成[" + string + "]" + TaskAlternative.rightsProgressText(iOptInt, iOptInt2, i4));
                TimeUtil.sleep(500L);
            }
            return true;
        } catch (Throwable th) {
            Log.i(TAG, "finishOrchardTask err:");
            Log.printStackTrace(TAG, th);
            return false;
        }
    }

    private void triggerTbTask(JSONArray jSONArray) {
        for (int i = 0; i < jSONArray.length(); i++) {
            try {
                JSONObject jSONObject = jSONArray.getJSONObject(i);
                if ("FINISHED".equals(jSONObject.getString("taskStatus"))) {
                    String string = jSONObject.getJSONObject("taskDisplayConfig").getString("title");
                    int iOptInt = jSONObject.optInt("awardCount", 0);
                    JSONObject jSONObject2 = new JSONObject(AntOrchardRpcCall.triggerTbTask(jSONObject.getString("taskId"), jSONObject.getString("taskPlantType")));
                    MessageUtil.checkResultCodeAndMarkTaskBlackList("AntOrchardTaskList", string, jSONObject2);
                    if (MessageUtil.checkResultCode(TAG, jSONObject2).booleanValue()) {
                        Log.farm("肥料领取🎖️任务[" + string + "]奖励#获得[" + iOptInt + "g]");
                    } else {
                        continue;
                    }
                }
            } catch (Throwable th) {
                Log.i(TAG, "triggerTbTask err:");
                Log.printStackTrace(TAG, th);
                return;
            }
        }
    }

    private void orchardDrawListTask() {
        String str;
        JSONObject jSONObject;
        String str2;
        String str3;
        String str4 = "*";
        String str5 = "农场寻宝🎁抽中[";
        String str6 = "prizeVO";
        String str7 = "blance";
        String str8 = "sceneCode";
        String str9 = "drawAsset";
        try {
            JSONObject jSONObject2 = new JSONObject(AntOrchardRpcCall.enterDrawActivityantorchard());
            if (MessageUtil.checkSuccess(TAG, jSONObject2).booleanValue() && jSONObject2.has("drawActivity")) {
                JSONObject jSONObjectOptJSONObject = jSONObject2.optJSONObject("drawActivity");
                String strOptString = jSONObjectOptJSONObject.optString("activityId");
                jSONObjectOptJSONObject.optString("sceneCode");
                JSONObject jSONObject3 = new JSONObject(AntOrchardRpcCall.orchardDrawListTask());
                if (MessageUtil.checkSuccess(TAG, jSONObject3).booleanValue()) {
                    JSONArray jSONArray = jSONObject3.getJSONArray("taskInfoList");
                    int i = 0;
                    while (i < jSONArray.length()) {
                        JSONObject jSONObject4 = jSONArray.getJSONObject(i);
                        JSONObject jSONObject5 = jSONObject4.getJSONObject("taskBaseInfo");
                        JSONObject jSONObject6 = new JSONObject(jSONObject5.getString("bizInfo"));
                        String string = jSONObject6.getString("title");
                        JSONArray jSONArray2 = jSONArray;
                        String string2 = jSONObject5.getString(str8);
                        String str10 = str8;
                        String string3 = jSONObject5.getString("taskStatus");
                        String str11 = str4;
                        String string4 = jSONObject5.getString("taskType");
                        String str12 = str5;
                        JSONObject jSONObject7 = jSONObject4.getJSONObject("taskRights");
                        int i2 = jSONObject7.getInt("rightsTimes");
                        String str13 = str6;
                        int i3 = jSONObject7.getInt("rightsTimesLimit");
                        if (TaskStatus.RECEIVED.name().equals(string3)) {
                            str = str7;
                            str2 = str9;
                            jSONObject = jSONObject2;
                            str3 = strOptString;
                        } else {
                            str = str7;
                            jSONObject = jSONObject2;
                            str2 = str9;
                            if (TaskStatus.FINISHED.name().equals(string3)) {
                                str3 = strOptString;
                                JSONObject jSONObject8 = new JSONObject(AntOrchardRpcCall.receiveTaskAwardantorchard(string4, string2));
                                if (MessageUtil.checkSuccess(TAG, jSONObject8).booleanValue()) {
                                    Log.farm("农场寻宝🎖️领取[" + string + "]获得抽奖*" + jSONObject8.getInt("incAwardCount"));
                                }
                                if (i3 > i2) {
                                }
                            } else {
                                str3 = strOptString;
                            }
                            if (this.AntOrchardDrawTaskList.getValue().contains(string)) {
                                TaskAlternative.handleGameTask(new TaskAlternative.GameTask("AntOrchardDrawTaskList", string, jSONObject6.optString("desc"), jSONObject6.optString("targetUrl"), string3).bizKey(string4).rights(i2, i3).taskRemain(Math.max(0, jSONObject5.optInt("taskRequire", 0) - jSONObject5.optInt("taskProgress", 0))).taskPlayType(jSONObject5.optString("taskPlayType", jSONObject5.optString("taskProdPlayType"))).taskMode(jSONObject5.optString("taskMode")).taskSceneCode(string2).scene("ORCHARD", "ANTFARM_ORCHARD").version(AntOrchardRpcCall.VERSION));
                            } else if (TaskStatus.TODO.name().equals(string3)) {
                                int iRightsTimesToDo = TaskAlternative.rightsTimesToDo(i2, i3);
                                for (int i4 = 0; i4 < iRightsTimesToDo; i4++) {
                                    JSONObject jSONObject9 = new JSONObject(AntOrchardRpcCall.finishTaskantorchard(string4, string2));
                                    MessageUtil.checkResultCodeAndMarkTaskBlackList("AntOrchardDrawTaskList", string, jSONObject9);
                                    if (MessageUtil.checkSuccess(TAG, jSONObject9).booleanValue()) {
                                        Log.farm("农场寻宝🧾完成[" + string + "]" + TaskAlternative.rightsProgressText(i2, i3, i4));
                                    }
                                    JSONObject jSONObject10 = new JSONObject(AntOrchardRpcCall.receiveTaskAwardantorchard(string4, string2));
                                    if (MessageUtil.checkSuccess(TAG, jSONObject10).booleanValue()) {
                                        Log.farm("农场寻宝🎖️领取[" + string + "]获得抽奖*" + jSONObject10.getInt("incAwardCount"));
                                    }
                                    TimeUtil.sleep(1000L);
                                }
                            }
                        }
                        try {
                            i++;
                            jSONArray = jSONArray2;
                            str8 = str10;
                            str4 = str11;
                            str5 = str12;
                            str6 = str13;
                            str7 = str;
                            jSONObject2 = jSONObject;
                            str9 = str2;
                            strOptString = str3;
                        } catch (Throwable th) {
                            th = th;
                        }
                    }
                    String str14 = str4;
                    String str15 = str5;
                    String str16 = str6;
                    String str17 = str7;
                    String str18 = str9;
                    JSONObject jSONObject11 = jSONObject2;
                    String str19 = strOptString;
                    JSONObject jSONObject12 = new JSONObject(AntOrchardRpcCall.drawSyncantorchard(str19));
                    if (MessageUtil.checkSuccess(TAG, jSONObject12).booleanValue() && jSONObject12.has(str18)) {
                        int iOptInt = jSONObject11.optJSONObject(str18).optInt(str17);
                        String currentUid = UserIdMap.getCurrentUid();
                        while (iOptInt > 0) {
                            String str20 = str19;
                            JSONObject jSONObject13 = new JSONObject(AntOrchardRpcCall.drawantorchard(str20, currentUid));
                            if (!MessageUtil.checkSuccess(TAG, jSONObject13).booleanValue() || !jSONObject13.has(str18)) {
                                return;
                            }
                            int iOptInt2 = jSONObject13.optJSONObject(str18).optInt(str17);
                            String str21 = str16;
                            if (!jSONObject13.has(str21)) {
                                return;
                            }
                            JSONObject jSONObjectOptJSONObject2 = jSONObject13.optJSONObject(str21);
                            String string5 = jSONObjectOptJSONObject2.getString("prizeName");
                            int i5 = jSONObjectOptJSONObject2.getInt("prizeNum");
                            StringBuilder sb = new StringBuilder();
                            String str22 = str15;
                            sb.append(str22);
                            sb.append(string5);
                            String str23 = str14;
                            sb.append(str23);
                            sb.append(i5);
                            sb.append("]#[");
                            sb.append(UserIdMap.getShowName(UserIdMap.getCurrentUid()));
                            sb.append("]");
                            Log.farm(sb.toString());
                            Toast.show(str22 + string5 + str23 + i5 + "]");
                            str19 = str20;
                            iOptInt = iOptInt2;
                            str16 = str21;
                            str15 = str22;
                            str14 = str23;
                        }
                        return;
                    }
                    return;
                }
                return;
            }
            return;
        } catch (Throwable th2) {
            th = th2;
        }
        Log.i(TAG, "orchardDrawListTask err:");
        Log.printStackTrace(TAG, th);
    }

    private void drawLotteryPlus(JSONObject jSONObject) {
        if (Status.hasFlagToday("orchardLotteryPlus").booleanValue()) {
            return;
        }
        try {
            if (jSONObject.has("userSevenDaysGiftsItem")) {
                JSONArray jSONArray = jSONObject.getJSONObject("userSevenDaysGiftsItem").getJSONArray("userEverydayGiftItems");
                String string = jSONObject.getString("itemId");
                for (int i = 0; i < jSONArray.length(); i++) {
                    JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                    if (jSONObject2.getString("itemId").equals(string) && jSONObject2.getBoolean("received")) {
                        Log.record("芭芭农场七日礼包当日奖励已领取");
                        Status.flagToday("orchardLotteryPlus", this.userId);
                        return;
                    }
                }
                JSONObject jSONObject3 = new JSONObject(AntOrchardRpcCall.drawLottery());
                if (MessageUtil.checkResultCode(TAG, jSONObject3).booleanValue()) {
                    JSONArray jSONArray2 = jSONObject3.getJSONObject("lotteryPlusInfo").getJSONObject("userSevenDaysGiftsItem").getJSONArray("userEverydayGiftItems");
                    for (int i2 = 0; i2 < jSONArray2.length(); i2++) {
                        JSONObject jSONObject4 = jSONArray2.getJSONObject(i2);
                        if (jSONObject4.getString("itemId").equals(string)) {
                            Log.farm("芭芭农场🎁七日礼包#获得[" + jSONObject4.optInt("awardCount", 1) + "g肥料]");
                            Status.flagToday("orchardLotteryPlus", this.userId);
                            return;
                        }
                    }
                }
            }
        } catch (Throwable th) {
            Log.i(TAG, "drawLotteryPlus err:");
            Log.printStackTrace(TAG, th);
        }
    }

    private void extraInfoGet() {
        try {
            JSONObject jSONObject = new JSONObject(AntOrchardRpcCall.extraInfoGet());
            if (MessageUtil.checkResultCode(TAG, jSONObject).booleanValue()) {
                JSONObject jSONObject2 = jSONObject.getJSONObject("data").getJSONObject("extraData").getJSONObject("fertilizerPacket");
                if ("todayFertilizerWaitTake".equals(jSONObject2.getString(NotificationCompat.CATEGORY_STATUS))) {
                    int i = jSONObject2.getInt("todayFertilizerNum");
                    if (MessageUtil.checkResultCode(TAG, new JSONObject(AntOrchardRpcCall.extraInfoSet())).booleanValue()) {
                        Log.farm("每日肥料💩[" + i + "g]");
                    }
                }
            }
        } catch (Throwable th) {
            Log.i(TAG, "extraInfoGet err:");
            Log.printStackTrace(TAG, th);
        }
    }

    private void orchardAssistFriend() {
        Set<String> value;
        if (Status.hasFlagToday("orchardAssistLimit").booleanValue() || (value = this.assistFriendList.getValue()) == null || value.isEmpty()) {
            return;
        }
        try {
            for (String str : value) {
                if (!Status.hasFlagToday("orchardAssist:" + str).booleanValue()) {
                    JSONObject jSONObject = new JSONObject(AntOrchardRpcCall.achieveBeShareP2P(str));
                    if ("600000026".equals(jSONObject.optString("code"))) {
                        Status.flagToday("orchardAssist:" + str, this.userId);
                        TimeUtil.sleep(5000L);
                    } else {
                        if (MessageUtil.checkResultCode(TAG, jSONObject).booleanValue()) {
                            Log.farm("芭芭农场🌳助力好友[" + UserIdMap.getShowName(str) + "]");
                        } else if ("600000027".equals(jSONObject.optString("code"))) {
                            Status.flagToday("orchardAssistLimit", this.userId);
                            return;
                        }
                        Status.flagToday("orchardAssist:" + str, this.userId);
                        TimeUtil.sleep(5000L);
                    }
                }
            }
        } catch (Throwable th) {
            Log.i(TAG, "orchardAssistFriend err:");
            Log.printStackTrace(TAG, th);
        }
    }

    private void querySubplotsActivity(String str) {
        try {
            JSONObject jSONObject = new JSONObject(AntOrchardRpcCall.querySubplotsActivity());
            if (MessageUtil.checkResultCode(TAG, jSONObject).booleanValue()) {
                JSONArray jSONArray = jSONObject.getJSONArray("subplotsActivityList");
                for (int i = 0; i < jSONArray.length(); i++) {
                    JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                    if (str.equals(jSONObject2.getString("activityType"))) {
                        if ("WISH".equals(str)) {
                            handleWishActivity(jSONObject2);
                        } else if ("CAMP_TAKEOVER".equals(str)) {
                            handleCampTakeoverActivity(jSONObject2);
                        } else if ("BATTLE_V2".equals(str)) {
                            handleBattleV2(jSONObject2);
                        }
                    }
                }
            }
        } catch (Throwable th) {
            Log.i(TAG, "querySubplotsActivity err:");
            Log.printStackTrace(TAG, th);
        }
    }

    private void handleBattleV2(JSONObject jSONObject) {
        try {
            String strOptString = jSONObject.optString("activityId");
            JSONObject jSONObject2 = new JSONObject(jSONObject.optString("extend", "{}"));
            JSONObject jSONObjectOptJSONObject = jSONObject2.optJSONObject("result");
            JSONObject jSONObjectOptJSONObject2 = jSONObject2.optJSONObject("reward");
            if (strOptString.length() != 0 && jSONObjectOptJSONObject != null && jSONObjectOptJSONObject2 != null && jSONObjectOptJSONObject2.optBoolean("hasReward") && !jSONObjectOptJSONObject2.optBoolean("issued")) {
                JSONObject jSONObject3 = new JSONObject(AntOrchardRpcCall.triggerSubplotsActivity(strOptString, "BATTLE_V2", "CONFIRM_RESULT"));
                if (MessageUtil.checkResultCode(TAG, jSONObject3).booleanValue()) {
                    JSONObject jSONObjectOptJSONObject3 = new JSONObject(jSONObject3.optString("extend", "{}")).optJSONObject("reward");
                    int iOptInt = jSONObjectOptJSONObject3 == null ? 0 : jSONObjectOptJSONObject3.optInt("settledAmount");
                    String strOptString2 = jSONObjectOptJSONObject.optString("result");
                    if ("WIN".equals(strOptString2)) {
                        strOptString2 = "胜利";
                    } else if ("LOSE".equals(strOptString2)) {
                        strOptString2 = "失败";
                    }
                    if (iOptInt > 0) {
                        Log.farm("农场比赛🥊PK" + strOptString2 + "结果#领取[" + iOptInt + "g肥料]");
                        return;
                    }
                    Log.farm("农场比赛🥊PK" + strOptString2 + "结果");
                }
            }
        } catch (Throwable th) {
            Log.i(TAG, "handleBattleV2 err:");
            Log.printStackTrace(TAG, th);
        }
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0067 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:18:0x0069 A[Catch: all -> 0x00cd, TryCatch #0 {all -> 0x00cd, blocks: (B:3:0x0004, B:6:0x001a, B:8:0x002d, B:10:0x004b, B:12:0x0053, B:14:0x005e, B:23:0x0074, B:24:0x0085, B:26:0x008b, B:28:0x0097, B:30:0x00b0, B:18:0x0069), top: B:36:0x0004 }] */
    /* JADX WARN: Code duplicated, block: B:20:0x0070  */
    /* JADX WARN: Code duplicated, block: B:21:0x0071  */
    private void handleWishActivity(JSONObject jSONObject) {
        int i;
        try {
            String string = jSONObject.getString("activityId");
            String string2 = jSONObject.getString(NotificationCompat.CATEGORY_STATUS);
            if ("FINISHED".equals(string2)) {
                JSONObject jSONObject2 = new JSONObject(AntOrchardRpcCall.receiveOrchardRights(string, "WISH"));
                if (MessageUtil.checkResultCode(TAG, jSONObject2).booleanValue()) {
                    Log.farm("农场许愿✨完成承诺#获得[" + jSONObject2.getInt("amount") + "g肥料]");
                    querySubplotsActivity("WISH");
                    return;
                }
                return;
            }
            if ("NOT_STARTED".equals(string2)) {
                Integer num = this.orchardSpreadManureSceneList.get("main");
                if (num != null) {
                    i = 10;
                    if (num.intValue() < 10) {
                        if (num != null) {
                            i = 3;
                            if (num.intValue() >= 3) {
                                i = 0;
                            }
                        } else {
                            i = 0;
                        }
                    }
                } else if (num != null) {
                    i = 3;
                    if (num.intValue() >= 3) {
                        i = 0;
                    }
                } else {
                    i = 0;
                }
                if (i > 0) {
                    JSONArray jSONArray = new JSONObject(jSONObject.getString("extend")).getJSONArray("wishActivityOptionList");
                    for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                        JSONObject jSONObject3 = jSONArray.getJSONObject(i2);
                        if (jSONObject3.getInt("taskRequire") == i) {
                            if (MessageUtil.checkResultCode(TAG, new JSONObject(AntOrchardRpcCall.triggerSubplotsActivity(string, "WISH", jSONObject3.getString("optionKey")))).booleanValue()) {
                                Log.farm("农场许愿✨许下承诺[每日施肥" + i + "次]");
                                return;
                            }
                            return;
                        }
                    }
                }
            }
        } catch (Throwable th) {
            Log.i(TAG, "handleWishActivity err:");
            Log.printStackTrace(TAG, th);
        }
    }

    private void handleCampTakeoverActivity(JSONObject jSONObject) {
        try {
            JSONObject jSONObject2 = new JSONObject(jSONObject.getString("extend")).getJSONObject("currentActivityInfo");
            String string = jSONObject2.getString("activityStatus");
            if ("TO_CHOOSE_PRIZE".equals(string)) {
                JSONArray jSONArray = jSONObject2.getJSONArray("recommendPrizeList");
                for (int i = 0; i < jSONArray.length(); i++) {
                    JSONObject jSONObject3 = jSONArray.getJSONObject(i);
                    if ("FEILIAO".equals(jSONObject3.getString("prizeType"))) {
                        JSONObject jSONObject4 = new JSONObject(AntOrchardRpcCall.choosePrize(jSONObject3.getString("sendOrderId")));
                        if (!MessageUtil.checkResultCode(TAG, jSONObject4).booleanValue()) {
                            break;
                        }
                        Log.farm("速成奖励✨接受挑战#选择[" + jSONObject4.getJSONObject("currentActivityInfo").getJSONObject("currentPrize").getString("prizeName") + "]");
                        break;
                    }
                }
            }
            if ("TO_DO_TASK".equals(string)) {
                handleTaskList(jSONObject2.getJSONArray("taskList"));
                querySubplotsActivity("CAMP_TAKEOVER");
            }
        } catch (Throwable th) {
            Log.i(TAG, "handleCampTakeoverActivity err:");
            Log.printStackTrace(TAG, th);
        }
    }

    private void queryYebRevenueDetail() {
        JSONObject jSONObjectOptJSONObject;
        try {
            JSONObject jSONObject = new JSONObject(AntOrchardRpcCall.yebPlantSceneRevenuePage());
            if (MessageUtil.checkResultCode(TAG, jSONObject).booleanValue()) {
                JSONArray jSONArray = jSONObject.getJSONArray("yebRevenueDetailList");
                for (int i = 0; i < jSONArray.length(); i++) {
                    if ("I".equals(jSONArray.getJSONObject(i).getString("orderStatus"))) {
                        JSONObject jSONObject2 = new JSONObject(AntOrchardRpcCall.triggerYebMoneyTree());
                        if (MessageUtil.checkResultCode(TAG, jSONObject2).booleanValue() && (jSONObjectOptJSONObject = jSONObject2.getJSONObject("result").optJSONObject("awardInfo")) != null) {
                            Log.farm("芭芭农场🌳领取奖励[摇钱树]#获得[" + jSONObjectOptJSONObject.getString("totalAmount") + "元余额宝收益]");
                        }
                    }
                }
            }
        } catch (Throwable th) {
            Log.i(TAG, "queryYebRevenueDetail err:");
            Log.printStackTrace(TAG, th);
        }
    }

    private void smashedGoldenEgg(int i) {
        for (int i2 = 0; i2 < i; i2++) {
            try {
                JSONObject jSONObject = new JSONObject(AntOrchardRpcCall.smashedGoldenEgg());
                if (MessageUtil.checkResultCode(TAG, jSONObject).booleanValue()) {
                    JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("goldenEggInfoVO");
                    int iOptInt = jSONObjectOptJSONObject != null ? jSONObjectOptJSONObject.optInt("unsmashedGoldenEggs") : 0;
                    JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("batchSmashedList");
                    if (jSONArrayOptJSONArray != null && jSONArrayOptJSONArray.length() > 0) {
                        for (int i3 = 0; i3 < jSONArrayOptJSONArray.length(); i3++) {
                            JSONObject jSONObjectOptJSONObject2 = jSONArrayOptJSONArray.optJSONObject(i3);
                            if (jSONObjectOptJSONObject2 != null) {
                                int iOptInt2 = jSONObjectOptJSONObject2.optInt("manureCount", 0);
                                boolean zOptBoolean = jSONObjectOptJSONObject2.optBoolean("jackpot", false);
                                String str = "";
                                String str2 = iOptInt < 0 ? "" : "[剩蛋" + iOptInt + "个]";
                                if (zOptBoolean) {
                                    str = "（触发大奖）";
                                }
                                Log.farm("砸出肥料🎖️" + iOptInt2 + "g" + str2 + str + "#[" + UserIdMap.getShowName(UserIdMap.getCurrentUid()) + "]");
                            }
                        }
                    }
                } else {
                    Log.record("砸金蛋失败: " + jSONObject.optString("resultDesc", "未知错误"));
                }
                TimeUtil.sleep(500L);
            } catch (Throwable th) {
                Log.i(TAG, "smashedGoldenEgg err:");
                Log.printStackTrace(TAG, th);
                return;
            }
        }
    }

    private void receiveOrchardVisitAward() {
        try {
            String strReceiveOrchardVisitAward = AntOrchardRpcCall.receiveOrchardVisitAward();
            JSONObject jSONObject = new JSONObject(strReceiveOrchardVisitAward);
            if (!jSONObject.optBoolean("success", false)) {
                Log.record("领取回访奖励失败: " + strReceiveOrchardVisitAward);
                return;
            }
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("orchardVisitAwardList");
            if (jSONArrayOptJSONArray != null && jSONArrayOptJSONArray.length() != 0) {
                for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                    JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i);
                    if (jSONObjectOptJSONObject != null) {
                        int iOptInt = jSONObjectOptJSONObject.optInt("awardCount", 0);
                        Log.farm("回访奖励[" + jSONObjectOptJSONObject.optString("awardDesc", "") + "] " + iOptInt + " g肥料");
                    }
                }
                Status.flagToday("orchardWidgetDailyAward", this.userId);
                return;
            }
            Log.record("领取回访奖励失败: 无奖励，可能已领取过");
            Status.flagToday("orchardWidgetDailyAward", this.userId);
        } catch (Throwable th) {
            Log.i(TAG, "receiveOrchardVisitAward err:");
            Log.printStackTrace(TAG, th);
        }
    }

    /* JADX WARN: Code duplicated, block: B:73:0x0206  */
    private void limitedTimeChallenge() {
        byte b;
        try {
            String strOrchardSyncIndex = AntOrchardRpcCall.orchardSyncIndex();
            JSONObject jSONObject = new JSONObject(strOrchardSyncIndex);
            if (!MessageUtil.checkResultCode(TAG, jSONObject).booleanValue()) {
                Log.record("orchardSyncIndex 查询失败: " + strOrchardSyncIndex);
                return;
            }
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("limitedTimeChallenge");
            if (jSONObjectOptJSONObject == null) {
                Log.record("limitedTimeChallenge 字段不存在或为 null");
                return;
            }
            int iOptInt = jSONObjectOptJSONObject.optInt("currentRound", 0);
            if (iOptInt <= 0) {
                Log.record("currentRound 无效：" + iOptInt);
                return;
            }
            JSONArray jSONArrayOptJSONArray = jSONObjectOptJSONObject.optJSONArray("limitedTimeChallengeTasks");
            if (jSONArrayOptJSONArray == null) {
                Log.record("limitedTimeChallengeTasks 字段不存在或不是数组");
                return;
            }
            int i = iOptInt - 1;
            if (i >= 0 && i < jSONArrayOptJSONArray.length()) {
                JSONObject jSONObjectOptJSONObject2 = jSONArrayOptJSONArray.optJSONObject(i);
                if (jSONObjectOptJSONObject2 == null) {
                    Log.record("第 " + iOptInt + " 轮任务不存在");
                    return;
                }
                boolean zOptBoolean = jSONObjectOptJSONObject2.optBoolean("ongoing", false);
                String strOptString = jSONObjectOptJSONObject2.optString("taskStatus");
                String strOptString2 = jSONObjectOptJSONObject2.optString("taskId");
                int iOptInt2 = jSONObjectOptJSONObject2.optInt("awardCount", 0);
                if ("FINISHED".equals(strOptString) && zOptBoolean) {
                    Log.record("第 " + iOptInt + " 轮 奖励未领取，尝试领取");
                    JSONObject jSONObject2 = new JSONObject(AntOrchardRpcCall.receiveTaskAward("ORCHARD_LIMITED_TIME_CHALLENGE", strOptString2));
                    if (!MessageUtil.checkResultCode(TAG, jSONObject2).booleanValue()) {
                        Log.record("芭芭农场 限时任务 错误：" + jSONObject2.optString("desc", "未知错误"));
                        return;
                    }
                    Log.farm("第 " + iOptInt + " 轮 限时任务🎁[肥料 * " + iOptInt2 + "]");
                    return;
                }
                if (!"TODO".equals(jSONObjectOptJSONObject2.optString("taskStatus"))) {
                    Log.record("警告：第 " + iOptInt + " 轮任务非 TODO，状态=" + jSONObjectOptJSONObject2.optString("taskStatus"));
                    return;
                }
                JSONArray jSONArrayOptJSONArray2 = jSONObjectOptJSONObject2.optJSONArray("childTaskList");
                if (jSONArrayOptJSONArray2 == null) {
                    Log.record("警告：第 " + iOptInt + " 轮无子任务列表");
                    return;
                }
                Log.record("开始处理第 " + iOptInt + " 轮的 " + jSONArrayOptJSONArray2.length() + " 个子任务");
                for (int i2 = 0; i2 < jSONArrayOptJSONArray2.length(); i2++) {
                    JSONObject jSONObjectOptJSONObject3 = jSONArrayOptJSONArray2.optJSONObject(i2);
                    if (jSONObjectOptJSONObject3 != null && "TODO".equals(jSONObjectOptJSONObject3.optString("taskStatus"))) {
                        String strOptString3 = jSONObjectOptJSONObject3.optString("taskId", "未知ID");
                        String strOptString4 = jSONObjectOptJSONObject3.optString("actionType");
                        String strOptString5 = jSONObjectOptJSONObject3.optString("groupId");
                        String strOptString6 = jSONObjectOptJSONObject3.optString("sceneCode");
                        if (!"GROUP_1_STEP_3_GAME_WZZT_30s".equals(strOptString5)) {
                            Log.record("------ 开始处理子任务 " + i2 + " | ID=" + strOptString3 + " ------");
                            int iHashCode = strOptString4.hashCode();
                            if (iHashCode != -1429635558) {
                                if (iHashCode != 34571586) {
                                    if (iHashCode == 81679659 && strOptString4.equals("VISIT")) {
                                        b = 2;
                                    } else {
                                        b = -1;
                                    }
                                } else if (strOptString4.equals("GAME_CENTER")) {
                                    b = 1;
                                } else {
                                    b = -1;
                                }
                            } else if (strOptString4.equals("SPREAD_MANURE")) {
                                b = 0;
                            } else {
                                b = -1;
                            }
                            if (b == 0) {
                                int iOptInt3 = jSONObjectOptJSONObject3.optInt("taskRequire", 0) - jSONObjectOptJSONObject3.optInt("taskProgress", 0);
                                if (iOptInt3 > 0) {
                                    Log.record("施肥任务需补充 " + iOptInt3 + " 次");
                                    int i3 = 0;
                                    while (i3 < iOptInt3) {
                                        String strOrchardSpreadManure = AntOrchardRpcCall.orchardSpreadManure(false, getWua());
                                        StringBuilder sb = new StringBuilder();
                                        sb.append("施肥第 ");
                                        i3++;
                                        sb.append(i3);
                                        sb.append(" 次结果：");
                                        sb.append(strOrchardSpreadManure);
                                        Log.record(sb.toString());
                                        JSONObject jSONObject3 = new JSONObject(strOrchardSpreadManure);
                                        if (!MessageUtil.checkResultCode(TAG, jSONObject3).booleanValue()) {
                                            Log.record("芭芭农场 orchardSpreadManure 错误：" + jSONObject3.optString("resultDesc"));
                                            return;
                                        }
                                    }
                                    Log.record("施肥任务成功完成 " + iOptInt3 + " 次");
                                } else {
                                    continue;
                                }
                            } else if (b == 1) {
                                String strNoticeGame = AntOrchardRpcCall.noticeGame("2021004165643274");
                                if (MessageUtil.checkResultCode(TAG, new JSONObject(strNoticeGame)).booleanValue()) {
                                    Log.record("游戏任务触发成功 → 子任务应当自动完成");
                                } else {
                                    Log.record("游戏任务触发失败，返回: " + strNoticeGame);
                                }
                            } else if (b != 2) {
                                Log.record("无法处理的任务类型：" + strOptString3 + " | actionType=" + strOptString4);
                            } else {
                                JSONObject jSONObjectOptJSONObject4 = jSONObjectOptJSONObject3.optJSONObject("taskDisplayConfig");
                                if (jSONObjectOptJSONObject4 == null || jSONObjectOptJSONObject4.optString("targetUrl", "").isEmpty()) {
                                    Log.record("任务没有 taskDisplayConfig，无法继续");
                                } else {
                                    String strFinishTask = AntOrchardRpcCall.finishTask(strOptString6, strOptString3);
                                    if (MessageUtil.checkResultCode(TAG, new JSONObject(strFinishTask)).booleanValue()) {
                                        Log.record("广告任务触发成功");
                                    } else {
                                        Log.record("广告任务触发失败: " + strFinishTask);
                                    }
                                }
                            }
                        }
                    }
                }
                return;
            }
            Log.record("当前轮数 " + iOptInt + " 对应下标 " + i + " 超出数组长度: " + jSONArrayOptJSONArray.length());
        } catch (Throwable th) {
            Log.i(TAG, "limitedTimeChallenge err:");
            Log.printStackTrace(TAG, th);
        }
    }

    public enum PlantScene {
        main("主场景"),
        yeb("余额宝场景");

        private final String nickname;

        PlantScene(String str) {
            this.nickname = str;
        }

        public String nickname() {
            return this.nickname;
        }

        public static PlantScene[] getEntries() {
            return values();
        }

        public static List<String> getList() {
            ArrayList arrayList = new ArrayList();
            for (PlantScene plantScene : values()) {
                arrayList.add(plantScene.name());
            }
            return arrayList;
        }
    }
}
