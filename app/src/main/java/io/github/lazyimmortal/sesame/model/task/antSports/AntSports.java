package io.github.lazyimmortal.sesame.model.task.antSports;

import androidx.core.app.NotificationCompat;
import com.fasterxml.jackson.databind.deser.DeserializerCache;
import de.robv.android.xposed.XC_MethodHook;
import de.robv.android.xposed.XposedHelpers;
import io.github.lazyimmortal.sesame.data.ConfigV2;
import io.github.lazyimmortal.sesame.data.ModelFields;
import io.github.lazyimmortal.sesame.data.ModelGroup;
import io.github.lazyimmortal.sesame.data.modelFieldExt.BooleanModelField;
import io.github.lazyimmortal.sesame.data.modelFieldExt.ChoiceModelField;
import io.github.lazyimmortal.sesame.data.modelFieldExt.IntegerModelField;
import io.github.lazyimmortal.sesame.data.modelFieldExt.SelectModelField;
import io.github.lazyimmortal.sesame.data.task.ModelTask;
import io.github.lazyimmortal.sesame.entity.AlipayAntSportsTaskList;
import io.github.lazyimmortal.sesame.entity.WalkPathThemeMapList;
import io.github.lazyimmortal.sesame.hook.ApplicationHook;
import io.github.lazyimmortal.sesame.hook.Toast;
import io.github.lazyimmortal.sesame.model.base.TaskAlternative;
import io.github.lazyimmortal.sesame.model.base.TaskCommon;
import io.github.lazyimmortal.sesame.model.extensions.ExtensionsHandle;
import io.github.lazyimmortal.sesame.model.task.antDodo.AntDodo$$ExternalSyntheticLambda3;
import io.github.lazyimmortal.sesame.util.Log;
import io.github.lazyimmortal.sesame.util.MessageUtil;
import io.github.lazyimmortal.sesame.util.RandomUtil;
import io.github.lazyimmortal.sesame.util.Status;
import io.github.lazyimmortal.sesame.util.StringUtil;
import io.github.lazyimmortal.sesame.util.TaskIconUtil;
import io.github.lazyimmortal.sesame.util.TimeUtil;
import io.github.lazyimmortal.sesame.util.idMap.AntSportsTaskListMap;
import io.github.lazyimmortal.sesame.util.idMap.PathThemeMapListMap;
import io.github.lazyimmortal.sesame.util.idMap.UserIdMap;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class AntSports extends ModelTask {
    public static final String DISPLAY_NAME = "悦动健康岛";
    public static final ModelGroup MODULE_GROUP = ModelGroup.SPORTS;
    private static final String TAG = "AntSports";
    private SelectModelField AntSportsTaskList;
    private BooleanModelField AutoAntSportsTaskList;
    private BooleanModelField MapListSwitch;
    private ChoiceModelField PathThemeMapList;
    private BooleanModelField QUERY_BUBBLE_TASK;
    private BooleanModelField QUERY_ITEM_LIST;
    private BooleanModelField QUERY_SIGN;
    private BooleanModelField QUERY_TASK_CENTER;
    private BooleanModelField WALK_GRID;
    private IntegerModelField WALK_GRID_LIMIT;
    private IntegerModelField WALK_GRID_MAX;
    private BooleanModelField awardspecialActivityReceive;
    private BooleanModelField club;
    private SelectModelField clubTradeMemberList;
    private ChoiceModelField clubTradeMemberType;
    private ChoiceModelField clubTrainItemType;
    private BooleanModelField coinExchangeDoubleCard;
    private IntegerModelField donateCharityCoinAmount;
    private ChoiceModelField donateCharityCoinType;
    private IntegerModelField earliestSyncStepTime;
    private ChoiceModelField energyStrategy;
    private IntegerModelField latestExchangeTime;
    private IntegerModelField minExchangeCount;
    private BooleanModelField neverLand;
    private SelectModelField neverLandBenefitList;
    private BooleanModelField receiveCoinAsset;
    private BooleanModelField sportsTasks;
    private IntegerModelField syncStepCount;
    private BooleanModelField tiyubiz;
    private int tmpStepCount = -1;
    private BooleanModelField walk;
    private BooleanModelField walkMinimumCompleteCount;

    public interface DonateCharityCoinType {
        public static final int ALL = 2;
        public static final int ONE = 1;
        public static final int ZERO = 0;
        public static final String[] nickNames = {"不捐赠", "捐赠一个项目", "捐赠所有项目"};
    }

    public interface EnergyStrategy {
        public static final int CONSERVE = 1;
        public static final int MAXIMIZE = 2;
        public static final int NONE = 0;
        public static final String[] nickNames = {"不操作", "保守策略", "最大化收益"};
    }

    public interface NeverLandOption {
    }

    public enum PathCompleteStatus {
        NOT_JOIN,
        JOIN,
        NOT_COMPLETED,
        COMPLETED,
        INTERRUPT
    }

    public enum TaskStatus {
        WAIT_COMPLETE,
        WAIT_RECEIVE,
        HAS_RECEIVED
    }

    public interface TradeMemberType {
        public static final int NONE = 0;
        public static final int NOT_TRADE = 2;
        public static final int TRADE = 1;
        public static final String[] nickNames = {"不抢购", "抢购已选好友", "抢购未选好友"};
    }

    public interface TrainItemType {
        public static final int BALLET = 1;
        public static final int BARBELL = 3;
        public static final int MUD = 6;
        public static final int NONE = 0;
        public static final int SANDBAG = 2;
        public static final int SKATE = 5;
        public static final int YANGKO = 4;
        public static final String[] nickNames = {"不训练", "跳芭蕾", "打沙包", "举杠铃", "扭秧歌", "玩滑板", "踩泥坑"};
        public static final String[] itemTypes = {"", "ballet", "sandbag", "barbell", "yangko", "skate", "mud"};
    }

    public interface WalkPathTheme {
        public static final int DA_MEI_ZHONG_GUO = 0;
        public static final int DENG_DING_ZHI_MA_SHAN = 2;
        public static final int GONG_YI_YI_XIAO_BU = 1;
        public static final int LONG_NIAN_QI_FU = 4;
        public static final int SHOU_HU_TI_YU_MENG = 5;
        public static final int WEI_C_DA_TIAO_ZHAN = 3;
        public static final String[] nickNames = {"大美中国", "公益一小步", "登顶芝麻山", "维C大挑战", "龙年祈福", "守护体育梦"};
        public static final String[] walkPathThemeIds = {"M202308082226", "M202401042147", "V202405271625", "202404221422", "WF202312050200", "V202409061650"};
    }

    public enum neverlandTaskStatus {
        TODO,
        FINISHED,
        EXPIRED,
        DISABLED
    }

    @Override // io.github.lazyimmortal.sesame.data.task.ModelTask, io.github.lazyimmortal.sesame.data.Model
    public String getName() {
        return "运动";
    }

    @Override // io.github.lazyimmortal.sesame.data.Model
    public ModelGroup getGroup() {
        return ModelGroup.SPORTS;
    }

    @Override // io.github.lazyimmortal.sesame.data.task.ModelTask, io.github.lazyimmortal.sesame.data.Model
    public ModelFields getFields() {
        ModelFields modelFields = new ModelFields();
        BooleanModelField booleanModelField = new BooleanModelField("walk", "行走路线 | 开启", false);
        this.walk = booleanModelField;
        modelFields.addField(booleanModelField);
        WalkPathThemeMapList.getList();
        ChoiceModelField choiceModelField = new ChoiceModelField("PathThemeMapList", "行走路线 | 路线主题", 0, WalkPathThemeMapList.nickNames);
        this.PathThemeMapList = choiceModelField;
        modelFields.addField(choiceModelField);
        BooleanModelField booleanModelField2 = new BooleanModelField("walkMinimumCompleteCount", "全主题路线(选最少完成数) | 开启", false);
        this.walkMinimumCompleteCount = booleanModelField2;
        modelFields.addField(booleanModelField2);
        BooleanModelField booleanModelField3 = new BooleanModelField("sportsTasks", "运动任务", false);
        this.sportsTasks = booleanModelField3;
        modelFields.addField(booleanModelField3);
        BooleanModelField booleanModelField4 = new BooleanModelField("AutoAntSportsTaskList", "运动任务 | 推荐黑白名单", true);
        this.AutoAntSportsTaskList = booleanModelField4;
        modelFields.addField(booleanModelField4);
        SelectModelField selectModelField = new SelectModelField("AntSportsTaskList", "运动任务 | 黑名单列表", new LinkedHashSet(), new SelectModelField.SelectListFunc() { // from class: io.github.lazyimmortal.sesame.model.task.antSports.AntSports$$ExternalSyntheticLambda1
            @Override // io.github.lazyimmortal.sesame.data.modelFieldExt.SelectModelField.SelectListFunc
            public final List getList() {
                return AlipayAntSportsTaskList.getList();
            }
        });
        this.AntSportsTaskList = selectModelField;
        modelFields.addField(selectModelField);
        BooleanModelField booleanModelField5 = new BooleanModelField("receiveCoinAsset", "收运动币", false);
        this.receiveCoinAsset = booleanModelField5;
        modelFields.addField(booleanModelField5);
        BooleanModelField booleanModelField6 = new BooleanModelField("club", "抢好友 | 开启", false);
        this.club = booleanModelField6;
        modelFields.addField(booleanModelField6);
        ChoiceModelField choiceModelField2 = new ChoiceModelField("clubTrainItemType", "抢好友 | 训练动作", 0, TrainItemType.nickNames);
        this.clubTrainItemType = choiceModelField2;
        modelFields.addField(choiceModelField2);
        ChoiceModelField choiceModelField3 = new ChoiceModelField("clubTradeMemberType", "抢好友 | 抢购动作", 0, TradeMemberType.nickNames);
        this.clubTradeMemberType = choiceModelField3;
        modelFields.addField(choiceModelField3);
        SelectModelField selectModelField2 = new SelectModelField("clubTradeMemberList", "抢好友 | 好友列表", new LinkedHashSet(), new AntDodo$$ExternalSyntheticLambda3());
        this.clubTradeMemberList = selectModelField2;
        modelFields.addField(selectModelField2);
        BooleanModelField booleanModelField7 = new BooleanModelField("tiyubiz", "文体中心", false);
        this.tiyubiz = booleanModelField7;
        modelFields.addField(booleanModelField7);
        IntegerModelField integerModelField = new IntegerModelField("syncStepCount", "同步步数 | 自定义", 22000);
        this.syncStepCount = integerModelField;
        modelFields.addField(integerModelField);
        IntegerModelField integerModelField2 = new IntegerModelField("earliestSyncStepTime", "同步步数 | 最早同步时间(24小时制)", 0, 0, 23);
        this.earliestSyncStepTime = integerModelField2;
        modelFields.addField(integerModelField2);
        IntegerModelField integerModelField3 = new IntegerModelField("latestExchangeTime", "行走捐 | 最晚捐步时间(24小时制)", 22);
        this.latestExchangeTime = integerModelField3;
        modelFields.addField(integerModelField3);
        IntegerModelField integerModelField4 = new IntegerModelField("minExchangeCount", "行走捐 | 最小捐步步数", 10);
        this.minExchangeCount = integerModelField4;
        modelFields.addField(integerModelField4);
        BooleanModelField booleanModelField8 = new BooleanModelField("neverLand", "健康岛 | 开启", false);
        this.neverLand = booleanModelField8;
        modelFields.addField(booleanModelField8);
        BooleanModelField booleanModelField9 = new BooleanModelField("QUERY_SIGN", "健康岛 | 每日签到", false);
        this.QUERY_SIGN = booleanModelField9;
        modelFields.addField(booleanModelField9);
        BooleanModelField booleanModelField10 = new BooleanModelField("QUERY_TASK_CENTER", "健康岛 | 做任务 加能量", false);
        this.QUERY_TASK_CENTER = booleanModelField10;
        modelFields.addField(booleanModelField10);
        BooleanModelField booleanModelField11 = new BooleanModelField("QUERY_BUBBLE_TASK", "健康岛 | 领取能量球奖励", false);
        this.QUERY_BUBBLE_TASK = booleanModelField11;
        modelFields.addField(booleanModelField11);
        BooleanModelField booleanModelField12 = new BooleanModelField("QUERY_ITEM_LIST", "健康岛 | 健康能量兑好礼", false);
        this.QUERY_ITEM_LIST = booleanModelField12;
        modelFields.addField(booleanModelField12);
        BooleanModelField booleanModelField13 = new BooleanModelField("WALK_GRID", "健康岛 | 能量泵", false);
        this.WALK_GRID = booleanModelField13;
        modelFields.addField(booleanModelField13);
        IntegerModelField integerModelField5 = new IntegerModelField("WALK_GRID_MAX", "健康岛 | 单次执行能量泵最大次数(不限:0)", 5);
        this.WALK_GRID_MAX = integerModelField5;
        modelFields.addField(integerModelField5);
        IntegerModelField integerModelField6 = new IntegerModelField("WALK_GRID_LIMIT", "健康岛 | 使用能量泵剩余能量值(低于该值停止使用)", 10000);
        this.WALK_GRID_LIMIT = integerModelField6;
        modelFields.addField(integerModelField6);
        BooleanModelField booleanModelField14 = new BooleanModelField("MapListSwitch", "健康岛 | 自动切岛", false);
        this.MapListSwitch = booleanModelField14;
        modelFields.addField(booleanModelField14);
        BooleanModelField booleanModelField15 = new BooleanModelField("awardspecialActivityReceive", "健康岛 | 领取活动岛奖励", false);
        this.awardspecialActivityReceive = booleanModelField15;
        modelFields.addField(booleanModelField15);
        return modelFields;
    }

    @Override // io.github.lazyimmortal.sesame.data.Model
    public void boot(ClassLoader classLoader) {
        try {
            XposedHelpers.findAndHookMethod("com.alibaba.health.pedometer.core.datasource.PedometerAgent", classLoader, "readDailyStep", new Object[]{new XC_MethodHook() { // from class: io.github.lazyimmortal.sesame.model.task.antSports.AntSports.1
                protected void afterHookedMethod(XC_MethodHook.MethodHookParam methodHookParam) {
                    int i = Integer.parseInt(Log.getFormatTime().split(":")[0]);
                    int iIntValue = ((Integer) methodHookParam.getResult()).intValue();
                    int iTmpStepCount = AntSports.this.tmpStepCount();
                    if (Status.hasFlagToday("sport::syncStep").booleanValue() || i < AntSports.this.earliestSyncStepTime.getValue().intValue() || iIntValue >= iTmpStepCount) {
                        return;
                    }
                    methodHookParam.setResult(Integer.valueOf(iTmpStepCount));
                }
            }});
            Log.i(TAG, "hook readDailyStep successfully");
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "hook readDailyStep err:");
            Log.printStackTrace(str, th);
        }
    }

    @Override // io.github.lazyimmortal.sesame.data.task.ModelTask
    public Boolean check() {
        if (TaskCommon.IS_ENERGY_TIME.booleanValue()) {
            Log.other("任务暂停⏸️支付宝运动:当前为仅收能量时间");
            return false;
        }
        return true;
    }

    @Override // io.github.lazyimmortal.sesame.data.task.ModelTask
    public void run() {
        try {
            int i = Integer.parseInt(Log.getFormatTime().split(":")[0]);
            if (!Status.hasFlagToday("sport::syncStep").booleanValue() && i >= this.earliestSyncStepTime.getValue().intValue()) {
                JSONObject jSONObject = new JSONObject(AntSportsRpcCall.queryWalkStep());
                if (!MessageUtil.checkResultCode(TAG, jSONObject).booleanValue()) {
                    return;
                }
                final int iOptInt = jSONObject.optInt("stepCount");
                addChildTask(new ModelTask.ChildModelTask("syncStep", new Runnable() { // from class: io.github.lazyimmortal.sesame.model.task.antSports.AntSports$$ExternalSyntheticLambda3
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.m128x7c5eb237(iOptInt);
                    }
                }));
            }
            if (this.walk.getValue().booleanValue()) {
                walk(this.syncStepCount.getValue().intValue());
            }
            if (!Status.hasFlagToday("BlackList::initAntSports").booleanValue()) {
                initAntSportsTaskListMap(this.AutoAntSportsTaskList.getValue().booleanValue(), this.sportsTasks.getValue().booleanValue());
                Status.flagToday("BlackList::initAntSports");
            }
            if (!Status.hasFlagToday("WalkPathTheme::init").booleanValue()) {
                initWalkPathThemeMap();
                Status.flagToday("WalkPathTheme::init");
            }
            if (this.minExchangeCount.getValue().intValue() > 0) {
                queryWalkStep();
            }
            if (this.tiyubiz.getValue().booleanValue()) {
                userTaskGroupQuery("SPORTS_DAILY_SIGN_GROUP");
                userTaskGroupQuery("SPORTS_DAILY_GROUP");
                userTaskRightsReceive();
                pathFeatureQuery();
            }
            if (this.club.getValue().booleanValue()) {
                queryClubHome();
            }
            if (this.sportsTasks.getValue().booleanValue()) {
                sportsTasks();
            }
            if (this.receiveCoinAsset.getValue().booleanValue()) {
                receiveCoinAsset();
                AntSportsRpcCall.pickAllEnergyBall();
            }
            if (this.neverLand.getValue().booleanValue()) {
                neverlandrun();
                healthIslandInfo();
            }
            sportsInfo();
            if (this.walk.getValue().booleanValue()) {
                routeInfo();
            }
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "start.run err:");
            Log.printStackTrace(str, th);
        }
    }

    /* JADX INFO: renamed from: lambda$run$0$io-github-lazyimmortal-sesame-model-task-antSports-AntSports, reason: not valid java name */
    /* synthetic */ void m128x7c5eb237(int i) {
        int iTmpStepCount = tmpStepCount();
        if (i < iTmpStepCount) {
            try {
                if (((Boolean) XposedHelpers.callMethod(XposedHelpers.callStaticMethod(ApplicationHook.getClassLoader().loadClass("com.alibaba.health.pedometer.intergation.rpc.RpcManager"), "a", new Object[0]), "a", new Object[]{Integer.valueOf(iTmpStepCount), Boolean.FALSE, "system"})).booleanValue()) {
                    Toast.show("同步步数🏃🏻\u200d♂️[" + iTmpStepCount + "步]");
                    Log.other("同步步数🏃🏻\u200d♂️[" + iTmpStepCount + "步]#[" + UserIdMap.getShowName(UserIdMap.getCurrentUid()) + "]");
                    Status.flagToday("sport::syncStep");
                } else {
                    Log.record("同步运动步数失败:" + iTmpStepCount);
                }
            } catch (Throwable th) {
                Log.printStackTrace(TAG, th);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:168:0x0288  */
    /* JADX WARN: Code duplicated, block: B:175:0x02c0  */
    /* JADX WARN: Code duplicated, block: B:178:0x02cc  */
    /* JADX WARN: Code duplicated, block: B:181:0x036a  */
    /* JADX WARN: Code duplicated, block: B:202:0x0091 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:41:0x0097 A[Catch: all -> 0x00f2, TRY_LEAVE, TryCatch #9 {all -> 0x00f2, blocks: (B:39:0x0091, B:41:0x0097, B:44:0x00a1), top: B:202:0x0091 }] */
    /* JADX WARN: Code duplicated, block: B:44:0x00a1 A[Catch: all -> 0x00f2, TRY_ENTER, TRY_LEAVE, TryCatch #9 {all -> 0x00f2, blocks: (B:39:0x0091, B:41:0x0097, B:44:0x00a1), top: B:202:0x0091 }] */
    /* JADX WARN: Code duplicated, block: B:55:0x00c4  */
    /* JADX WARN: Code duplicated, block: B:58:0x00d0 A[Catch: all -> 0x00e7, TRY_LEAVE, TryCatch #4 {all -> 0x00e7, blocks: (B:56:0x00c8, B:58:0x00d0), top: B:192:0x00c8 }] */
    /* JADX WARN: Code duplicated, block: B:60:0x00d5  */
    /* JADX WARN: Code duplicated, block: B:63:0x00dc A[Catch: all -> 0x00e5, TRY_LEAVE, TryCatch #2 {all -> 0x00e5, blocks: (B:61:0x00d6, B:63:0x00dc), top: B:188:0x00d6 }] */
    /* JADX WARN: Code duplicated, block: B:69:0x00ea  */
    /* JADX WARN: Code duplicated, block: B:76:0x0103  */
    /* JADX WARN: Code duplicated, block: B:80:0x011e A[Catch: all -> 0x0298, TryCatch #13 {all -> 0x0298, blocks: (B:78:0x0109, B:80:0x011e, B:82:0x0124, B:84:0x012c), top: B:210:0x0109 }] */
    /* JADX WARN: Instruction removed from duplicated block: B:181:0x036a, please report this as an issue */
    private void routeInfo() {
        String strOptString;
        String strOptString2;
        Integer numValueOf;
        Integer numValueOf2;
        Integer num;
        String str;
        String strOptString3;
        String strOptString4;
        String strOptString5;
        String strOptString6;
        String strOptString7;
        JSONObject jSONObjectQueryPath;
        Integer num2;
        JSONObject jSONObjectOptJSONObject;
        JSONObject jSONObjectOptJSONObject2;
        Integer num3;
        Throwable th;
        String strOptString8;
        Integer num4;
        Integer numValueOf3;
        Integer numValueOf4;
        Integer numValueOf5;
        Integer num5;
        Integer numValueOf6;
        String str2;
        StringBuilder sb;
        JSONObject jSONObject;
        Integer numValueOf7;
        Integer num6;
        JSONObject jSONObjectOptJSONObject3;
        JSONArray jSONArrayOptJSONArray;
        Integer num7;
        JSONObject jSONObjectQueryCityPath;
        Iterator it;
        JSONArray jSONArray;
        JSONArray jSONArrayOptJSONArray2;
        JSONArray jSONArray2;
        String strOptString9;
        JSONObject jSONObjectOptJSONObject4;
        AntSports antSports = this;
        String str3 = "";
        try {
            JSONObject jSONObject2 = new JSONObject(AntSportsRpcCall.queryUser());
            if (!MessageUtil.checkSuccess(TAG, jSONObject2).booleanValue() || (jSONObjectOptJSONObject4 = jSONObject2.optJSONObject("data")) == null) {
                strOptString9 = "";
                strOptString = strOptString9;
                strOptString2 = strOptString;
                numValueOf = null;
                numValueOf2 = null;
            } else {
                strOptString = jSONObjectOptJSONObject4.optString("joinedPathId", "");
                try {
                    JSONObject jSONObjectOptJSONObject5 = jSONObjectOptJSONObject4.optJSONObject("myPositionModel");
                    numValueOf2 = (jSONObjectOptJSONObject5 == null || !jSONObjectOptJSONObject5.has("stepCount")) ? null : Integer.valueOf(jSONObjectOptJSONObject5.optInt("stepCount"));
                    try {
                        numValueOf = jSONObjectOptJSONObject4.has("totalEnergyNum") ? Integer.valueOf(jSONObjectOptJSONObject4.optInt("totalEnergyNum")) : null;
                        try {
                            strOptString2 = jSONObjectOptJSONObject4.optString("totalGoDistanceKm", "");
                            try {
                                strOptString9 = jSONObjectOptJSONObject4.optString("totalGoStepCount", "");
                            } catch (Throwable th2) {
                                th = th2;
                                String str4 = TAG;
                                Log.i(str4, "routeInfo queryUser err:");
                                Log.printStackTrace(str4, th);
                                num = numValueOf;
                                str = "";
                            }
                        } catch (Throwable th3) {
                            th = th3;
                            strOptString2 = "";
                        }
                    } catch (Throwable th4) {
                        th = th4;
                        strOptString2 = "";
                        numValueOf = null;
                    }
                } catch (Throwable th5) {
                    th = th5;
                    strOptString2 = "";
                    numValueOf = null;
                    numValueOf2 = null;
                    String str5 = TAG;
                    Log.i(str5, "routeInfo queryUser err:");
                    Log.printStackTrace(str5, th);
                    num = numValueOf;
                    str = "";
                    String str6 = "themeId";
                    if (!StringUtil.isEmpty(strOptString)) {
                        try {
                            jSONObjectQueryPath = queryPath(strOptString);
                            if (jSONObjectQueryPath != null) {
                                jSONObjectOptJSONObject = jSONObjectQueryPath.optJSONObject("path");
                                if (jSONObjectOptJSONObject != null) {
                                    strOptString5 = jSONObjectOptJSONObject.optString("name", "");
                                    try {
                                        strOptString6 = jSONObjectOptJSONObject.optString("pathLength", "");
                                        try {
                                            strOptString7 = jSONObjectOptJSONObject.optString("pathStepCount", "");
                                            try {
                                                strOptString4 = jSONObjectOptJSONObject.optString("themeId", "");
                                            } catch (Throwable th6) {
                                                th = th6;
                                                strOptString3 = "";
                                                strOptString4 = strOptString3;
                                                String str7 = TAG;
                                                Log.i(str7, "routeInfo queryPath err:");
                                                Log.printStackTrace(str7, th);
                                                num2 = null;
                                                jSONObject = new JSONObject(AntSportsRpcCall.queryThemeList());
                                                if (MessageUtil.checkSuccess(TAG, jSONObject).booleanValue()) {
                                                    num3 = num2;
                                                    strOptString8 = "";
                                                    numValueOf7 = null;
                                                    numValueOf3 = null;
                                                    numValueOf6 = null;
                                                    num6 = null;
                                                    numValueOf5 = null;
                                                } else {
                                                    num3 = num2;
                                                    strOptString8 = "";
                                                    numValueOf7 = null;
                                                    numValueOf3 = null;
                                                    numValueOf6 = null;
                                                    num6 = null;
                                                    numValueOf5 = null;
                                                }
                                                numValueOf4 = num6;
                                                num5 = numValueOf7;
                                                str2 = strOptString8;
                                                sb = new StringBuilder();
                                                if (!StringUtil.isEmpty(str2)) {
                                                    sb.append(str2);
                                                    sb.append("-");
                                                }
                                                if (!StringUtil.isEmpty(strOptString3)) {
                                                    sb.append(strOptString3);
                                                    sb.append("-");
                                                }
                                                sb.append(strOptString5);
                                                StringBuilder sb2 = new StringBuilder("行走路线🚶[");
                                                sb2.append(UserIdMap.getShowName(UserIdMap.getCurrentUid()));
                                                sb2.append("]今日步数");
                                                sb2.append(Log.n(numValueOf2));
                                                sb2.append(";当前[");
                                                sb2.append((Object) sb);
                                                sb2.append("](");
                                                sb2.append(strOptString6);
                                                sb2.append("km/");
                                                sb2.append(strOptString7);
                                                sb2.append("步);累计走路");
                                                sb2.append(str);
                                                sb2.append("步/");
                                                sb2.append(strOptString2);
                                                sb2.append("km;路线能量");
                                                sb2.append(Log.n(num));
                                                sb2.append(";主题");
                                                sb2.append(Log.n(numValueOf5));
                                                sb2.append("个;城市");
                                                sb2.append(Log.n(numValueOf4));
                                                sb2.append("个见闻");
                                                sb2.append(Log.n(numValueOf6));
                                                sb2.append(";线路");
                                                sb2.append(Log.n(numValueOf3));
                                                sb2.append("条完成");
                                                sb2.append(Log.n(num5));
                                                sb2.append("次");
                                                if (num3 != null) {
                                                    str3 = ";累计完成" + num3 + "次";
                                                }
                                                sb2.append(str3);
                                                sb2.append(";");
                                                Log.info(sb2.toString());
                                            }
                                        } catch (Throwable th7) {
                                            th = th7;
                                            strOptString3 = "";
                                            strOptString4 = strOptString3;
                                            strOptString7 = strOptString4;
                                        }
                                    } catch (Throwable th8) {
                                        th = th8;
                                        strOptString3 = "";
                                        strOptString4 = strOptString3;
                                        strOptString6 = strOptString4;
                                        strOptString7 = strOptString6;
                                        String str8 = TAG;
                                        Log.i(str8, "routeInfo queryPath err:");
                                        Log.printStackTrace(str8, th);
                                        num2 = null;
                                        jSONObject = new JSONObject(AntSportsRpcCall.queryThemeList());
                                        if (MessageUtil.checkSuccess(TAG, jSONObject).booleanValue()) {
                                            num3 = num2;
                                            strOptString8 = "";
                                            numValueOf7 = null;
                                            numValueOf3 = null;
                                            numValueOf6 = null;
                                            num6 = null;
                                            numValueOf5 = null;
                                        } else {
                                            num3 = num2;
                                            strOptString8 = "";
                                            numValueOf7 = null;
                                            numValueOf3 = null;
                                            numValueOf6 = null;
                                            num6 = null;
                                            numValueOf5 = null;
                                        }
                                        numValueOf4 = num6;
                                        num5 = numValueOf7;
                                        str2 = strOptString8;
                                        sb = new StringBuilder();
                                        if (!StringUtil.isEmpty(str2)) {
                                            sb.append(str2);
                                            sb.append("-");
                                        }
                                        if (!StringUtil.isEmpty(strOptString3)) {
                                            sb.append(strOptString3);
                                            sb.append("-");
                                        }
                                        sb.append(strOptString5);
                                        StringBuilder sb3 = new StringBuilder("行走路线🚶[");
                                        sb3.append(UserIdMap.getShowName(UserIdMap.getCurrentUid()));
                                        sb3.append("]今日步数");
                                        sb3.append(Log.n(numValueOf2));
                                        sb3.append(";当前[");
                                        sb3.append((Object) sb);
                                        sb3.append("](");
                                        sb3.append(strOptString6);
                                        sb3.append("km/");
                                        sb3.append(strOptString7);
                                        sb3.append("步);累计走路");
                                        sb3.append(str);
                                        sb3.append("步/");
                                        sb3.append(strOptString2);
                                        sb3.append("km;路线能量");
                                        sb3.append(Log.n(num));
                                        sb3.append(";主题");
                                        sb3.append(Log.n(numValueOf5));
                                        sb3.append("个;城市");
                                        sb3.append(Log.n(numValueOf4));
                                        sb3.append("个见闻");
                                        sb3.append(Log.n(numValueOf6));
                                        sb3.append(";线路");
                                        sb3.append(Log.n(numValueOf3));
                                        sb3.append("条完成");
                                        sb3.append(Log.n(num5));
                                        sb3.append("次");
                                        if (num3 != null) {
                                            str3 = ";累计完成" + num3 + "次";
                                        }
                                        sb3.append(str3);
                                        sb3.append(";");
                                        Log.info(sb3.toString());
                                    }
                                } else {
                                    strOptString4 = "";
                                    strOptString5 = strOptString4;
                                    strOptString6 = strOptString5;
                                    strOptString7 = strOptString6;
                                }
                                try {
                                    jSONObjectOptJSONObject2 = jSONObjectQueryPath.optJSONObject("cityDetailVO");
                                    if (jSONObjectOptJSONObject2 != null) {
                                        strOptString3 = jSONObjectOptJSONObject2.optString("name", "");
                                    } else {
                                        strOptString3 = "";
                                    }
                                    try {
                                        Integer numValueOf8 = jSONObjectQueryPath.has("completedPathCount") ? Integer.valueOf(jSONObjectQueryPath.optInt("completedPathCount")) : null;
                                        num2 = numValueOf8;
                                    } catch (Throwable th9) {
                                        th = th9;
                                        String str9 = TAG;
                                        Log.i(str9, "routeInfo queryPath err:");
                                        Log.printStackTrace(str9, th);
                                        num2 = null;
                                    }
                                } catch (Throwable th10) {
                                    th = th10;
                                    strOptString3 = "";
                                }
                                jSONObject = new JSONObject(AntSportsRpcCall.queryThemeList());
                                if (MessageUtil.checkSuccess(TAG, jSONObject).booleanValue()) {
                                    num3 = num2;
                                    strOptString8 = "";
                                    numValueOf7 = null;
                                    numValueOf3 = null;
                                    numValueOf6 = null;
                                    num6 = null;
                                    numValueOf5 = null;
                                } else {
                                    num3 = num2;
                                    strOptString8 = "";
                                    numValueOf7 = null;
                                    numValueOf3 = null;
                                    numValueOf6 = null;
                                    num6 = null;
                                    numValueOf5 = null;
                                }
                                numValueOf4 = num6;
                                num5 = numValueOf7;
                                str2 = strOptString8;
                                sb = new StringBuilder();
                                if (!StringUtil.isEmpty(str2)) {
                                    sb.append(str2);
                                    sb.append("-");
                                }
                                if (!StringUtil.isEmpty(strOptString3)) {
                                    sb.append(strOptString3);
                                    sb.append("-");
                                }
                                sb.append(strOptString5);
                                StringBuilder sb4 = new StringBuilder("行走路线🚶[");
                                sb4.append(UserIdMap.getShowName(UserIdMap.getCurrentUid()));
                                sb4.append("]今日步数");
                                sb4.append(Log.n(numValueOf2));
                                sb4.append(";当前[");
                                sb4.append((Object) sb);
                                sb4.append("](");
                                sb4.append(strOptString6);
                                sb4.append("km/");
                                sb4.append(strOptString7);
                                sb4.append("步);累计走路");
                                sb4.append(str);
                                sb4.append("步/");
                                sb4.append(strOptString2);
                                sb4.append("km;路线能量");
                                sb4.append(Log.n(num));
                                sb4.append(";主题");
                                sb4.append(Log.n(numValueOf5));
                                sb4.append("个;城市");
                                sb4.append(Log.n(numValueOf4));
                                sb4.append("个见闻");
                                sb4.append(Log.n(numValueOf6));
                                sb4.append(";线路");
                                sb4.append(Log.n(numValueOf3));
                                sb4.append("条完成");
                                sb4.append(Log.n(num5));
                                sb4.append("次");
                                if (num3 != null) {
                                    str3 = ";累计完成" + num3 + "次";
                                }
                                sb4.append(str3);
                                sb4.append(";");
                                Log.info(sb4.toString());
                            }
                            strOptString3 = "";
                            strOptString4 = strOptString3;
                            strOptString5 = strOptString4;
                            strOptString6 = strOptString5;
                            strOptString7 = strOptString6;
                            num2 = numValueOf8;
                        } catch (Throwable th11) {
                            th = th11;
                            strOptString3 = "";
                            strOptString4 = strOptString3;
                            strOptString5 = strOptString4;
                            strOptString6 = strOptString5;
                        }
                        jSONObject = new JSONObject(AntSportsRpcCall.queryThemeList());
                        if (MessageUtil.checkSuccess(TAG, jSONObject).booleanValue()) {
                            num3 = num2;
                            strOptString8 = "";
                            numValueOf7 = null;
                            numValueOf3 = null;
                            numValueOf6 = null;
                            num6 = null;
                            numValueOf5 = null;
                        } else {
                            num3 = num2;
                            strOptString8 = "";
                            numValueOf7 = null;
                            numValueOf3 = null;
                            numValueOf6 = null;
                            num6 = null;
                            numValueOf5 = null;
                        }
                        numValueOf4 = num6;
                        num5 = numValueOf7;
                        str2 = strOptString8;
                        sb = new StringBuilder();
                        if (!StringUtil.isEmpty(str2)) {
                            sb.append(str2);
                            sb.append("-");
                        }
                        if (!StringUtil.isEmpty(strOptString3)) {
                            sb.append(strOptString3);
                            sb.append("-");
                        }
                        sb.append(strOptString5);
                        StringBuilder sb5 = new StringBuilder("行走路线🚶[");
                        sb5.append(UserIdMap.getShowName(UserIdMap.getCurrentUid()));
                        sb5.append("]今日步数");
                        sb5.append(Log.n(numValueOf2));
                        sb5.append(";当前[");
                        sb5.append((Object) sb);
                        sb5.append("](");
                        sb5.append(strOptString6);
                        sb5.append("km/");
                        sb5.append(strOptString7);
                        sb5.append("步);累计走路");
                        sb5.append(str);
                        sb5.append("步/");
                        sb5.append(strOptString2);
                        sb5.append("km;路线能量");
                        sb5.append(Log.n(num));
                        sb5.append(";主题");
                        sb5.append(Log.n(numValueOf5));
                        sb5.append("个;城市");
                        sb5.append(Log.n(numValueOf4));
                        sb5.append("个见闻");
                        sb5.append(Log.n(numValueOf6));
                        sb5.append(";线路");
                        sb5.append(Log.n(numValueOf3));
                        sb5.append("条完成");
                        sb5.append(Log.n(num5));
                        sb5.append("次");
                        if (num3 != null) {
                            str3 = ";累计完成" + num3 + "次";
                        }
                        sb5.append(str3);
                        sb5.append(";");
                        Log.info(sb5.toString());
                    }
                    strOptString3 = "";
                    strOptString4 = strOptString3;
                    strOptString5 = strOptString4;
                    strOptString6 = strOptString5;
                    strOptString7 = strOptString6;
                    num2 = null;
                    jSONObject = new JSONObject(AntSportsRpcCall.queryThemeList());
                    if (MessageUtil.checkSuccess(TAG, jSONObject).booleanValue()) {
                        num3 = num2;
                        strOptString8 = "";
                        numValueOf7 = null;
                        numValueOf3 = null;
                        numValueOf6 = null;
                        num6 = null;
                        numValueOf5 = null;
                    } else {
                        num3 = num2;
                        strOptString8 = "";
                        numValueOf7 = null;
                        numValueOf3 = null;
                        numValueOf6 = null;
                        num6 = null;
                        numValueOf5 = null;
                    }
                    numValueOf4 = num6;
                    num5 = numValueOf7;
                    str2 = strOptString8;
                    sb = new StringBuilder();
                    if (!StringUtil.isEmpty(str2)) {
                        sb.append(str2);
                        sb.append("-");
                    }
                    if (!StringUtil.isEmpty(strOptString3)) {
                        sb.append(strOptString3);
                        sb.append("-");
                    }
                    sb.append(strOptString5);
                    StringBuilder sb6 = new StringBuilder("行走路线🚶[");
                    sb6.append(UserIdMap.getShowName(UserIdMap.getCurrentUid()));
                    sb6.append("]今日步数");
                    sb6.append(Log.n(numValueOf2));
                    sb6.append(";当前[");
                    sb6.append((Object) sb);
                    sb6.append("](");
                    sb6.append(strOptString6);
                    sb6.append("km/");
                    sb6.append(strOptString7);
                    sb6.append("步);累计走路");
                    sb6.append(str);
                    sb6.append("步/");
                    sb6.append(strOptString2);
                    sb6.append("km;路线能量");
                    sb6.append(Log.n(num));
                    sb6.append(";主题");
                    sb6.append(Log.n(numValueOf5));
                    sb6.append("个;城市");
                    sb6.append(Log.n(numValueOf4));
                    sb6.append("个见闻");
                    sb6.append(Log.n(numValueOf6));
                    sb6.append(";线路");
                    sb6.append(Log.n(numValueOf3));
                    sb6.append("条完成");
                    sb6.append(Log.n(num5));
                    sb6.append("次");
                    if (num3 != null) {
                        str3 = ";累计完成" + num3 + "次";
                    }
                    sb6.append(str3);
                    sb6.append(";");
                    Log.info(sb6.toString());
                }
            }
            num = numValueOf;
            str = strOptString9;
        } catch (Throwable th12) {
            th = th12;
            strOptString = "";
            strOptString2 = strOptString;
        }
        String str10 = "themeId";
        try {
            if (!StringUtil.isEmpty(strOptString)) {
                jSONObjectQueryPath = queryPath(strOptString);
                if (jSONObjectQueryPath != null) {
                    jSONObjectOptJSONObject = jSONObjectQueryPath.optJSONObject("path");
                    if (jSONObjectOptJSONObject != null) {
                        strOptString5 = jSONObjectOptJSONObject.optString("name", "");
                        strOptString6 = jSONObjectOptJSONObject.optString("pathLength", "");
                        strOptString7 = jSONObjectOptJSONObject.optString("pathStepCount", "");
                        strOptString4 = jSONObjectOptJSONObject.optString("themeId", "");
                    } else {
                        strOptString4 = "";
                        strOptString5 = strOptString4;
                        strOptString6 = strOptString5;
                        strOptString7 = strOptString6;
                    }
                    jSONObjectOptJSONObject2 = jSONObjectQueryPath.optJSONObject("cityDetailVO");
                    if (jSONObjectOptJSONObject2 != null) {
                        strOptString3 = jSONObjectOptJSONObject2.optString("name", "");
                    } else {
                        strOptString3 = "";
                    }
                    if (jSONObjectQueryPath.has("completedPathCount")) {
                    }
                    num2 = numValueOf8;
                    jSONObject = new JSONObject(AntSportsRpcCall.queryThemeList());
                    if (MessageUtil.checkSuccess(TAG, jSONObject).booleanValue() || (jSONObjectOptJSONObject3 = jSONObject.optJSONObject("data")) == null || (jSONArrayOptJSONArray = jSONObjectOptJSONObject3.optJSONArray("themeList")) == null) {
                        num3 = num2;
                        strOptString8 = "";
                        numValueOf7 = null;
                        numValueOf3 = null;
                        numValueOf6 = null;
                        num6 = null;
                        numValueOf5 = null;
                    } else {
                        numValueOf5 = Integer.valueOf(jSONArrayOptJSONArray.length());
                        try {
                            LinkedHashSet linkedHashSet = new LinkedHashSet();
                            numValueOf5 = numValueOf5;
                            num3 = num2;
                            strOptString8 = "";
                            int i = 0;
                            int iOptInt = 0;
                            while (i < jSONArrayOptJSONArray.length()) {
                                try {
                                    JSONObject jSONObjectOptJSONObject6 = jSONArrayOptJSONArray.optJSONObject(i);
                                    if (jSONObjectOptJSONObject6 == null) {
                                        jSONArray = jSONArrayOptJSONArray;
                                    } else {
                                        jSONArray = jSONArrayOptJSONArray;
                                        String strOptString10 = jSONObjectOptJSONObject6.optString(str10, "");
                                        if (!StringUtil.isEmpty(strOptString10)) {
                                            if (!StringUtil.isEmpty(strOptString4) && strOptString4.equals(strOptString10)) {
                                                strOptString8 = jSONObjectOptJSONObject6.optString("themeName", "");
                                            }
                                            JSONObject jSONObjectQueryWorldMap = antSports.queryWorldMap(strOptString10);
                                            if (jSONObjectQueryWorldMap != null && (jSONArrayOptJSONArray2 = jSONObjectQueryWorldMap.optJSONArray("cityList")) != null) {
                                                int i2 = 0;
                                                while (i2 < jSONArrayOptJSONArray2.length()) {
                                                    JSONObject jSONObjectOptJSONObject7 = jSONArrayOptJSONArray2.optJSONObject(i2);
                                                    if (jSONObjectOptJSONObject7 == null) {
                                                        jSONArray2 = jSONArrayOptJSONArray2;
                                                    } else {
                                                        jSONArray2 = jSONArrayOptJSONArray2;
                                                        JSONObject jSONObjectOptJSONObject8 = jSONObjectOptJSONObject7.optJSONObject("knowledge");
                                                        if (jSONObjectOptJSONObject8 != null) {
                                                            String strOptString11 = jSONObjectOptJSONObject7.optString("cityId", "");
                                                            if (!linkedHashSet.contains(strOptString11)) {
                                                                linkedHashSet.add(strOptString11);
                                                            }
                                                            iOptInt += jSONObjectOptJSONObject8.optInt("receiveKnowledgeCount", 0);
                                                        }
                                                        i2++;
                                                        jSONArrayOptJSONArray2 = jSONArray2;
                                                        str10 = str10;
                                                    }
                                                    i2++;
                                                    jSONArrayOptJSONArray2 = jSONArray2;
                                                    str10 = str10;
                                                }
                                            }
                                        }
                                        i++;
                                        jSONArrayOptJSONArray = jSONArray;
                                        strOptString4 = strOptString4;
                                        str10 = str10;
                                    }
                                    strOptString4 = strOptString4;
                                    i++;
                                    jSONArrayOptJSONArray = jSONArray;
                                    strOptString4 = strOptString4;
                                    str10 = str10;
                                } catch (Throwable th13) {
                                    th = th13;
                                    numValueOf5 = numValueOf5;
                                    num4 = null;
                                    numValueOf3 = null;
                                    numValueOf4 = null;
                                    String str11 = TAG;
                                    Log.i(str11, "routeInfo queryThemeList err:");
                                    Log.printStackTrace(str11, th);
                                    numValueOf5 = numValueOf5;
                                    num5 = null;
                                    numValueOf6 = num4;
                                    str2 = strOptString8;
                                    sb = new StringBuilder();
                                    if (!StringUtil.isEmpty(str2)) {
                                        sb.append(str2);
                                        sb.append("-");
                                    }
                                    if (!StringUtil.isEmpty(strOptString3)) {
                                        sb.append(strOptString3);
                                        sb.append("-");
                                    }
                                    sb.append(strOptString5);
                                    StringBuilder sb7 = new StringBuilder("行走路线🚶[");
                                    sb7.append(UserIdMap.getShowName(UserIdMap.getCurrentUid()));
                                    sb7.append("]今日步数");
                                    sb7.append(Log.n(numValueOf2));
                                    sb7.append(";当前[");
                                    sb7.append((Object) sb);
                                    sb7.append("](");
                                    sb7.append(strOptString6);
                                    sb7.append("km/");
                                    sb7.append(strOptString7);
                                    sb7.append("步);累计走路");
                                    sb7.append(str);
                                    sb7.append("步/");
                                    sb7.append(strOptString2);
                                    sb7.append("km;路线能量");
                                    sb7.append(Log.n(num));
                                    sb7.append(";主题");
                                    sb7.append(Log.n(numValueOf5));
                                    sb7.append("个;城市");
                                    sb7.append(Log.n(numValueOf4));
                                    sb7.append("个见闻");
                                    sb7.append(Log.n(numValueOf6));
                                    sb7.append(";线路");
                                    sb7.append(Log.n(numValueOf3));
                                    sb7.append("条完成");
                                    sb7.append(Log.n(num5));
                                    sb7.append("次");
                                    if (num3 != null) {
                                        str3 = ";累计完成" + num3 + "次";
                                    }
                                    sb7.append(str3);
                                    sb7.append(";");
                                    Log.info(sb7.toString());
                                }
                            }
                            if (linkedHashSet.isEmpty()) {
                                numValueOf7 = null;
                                numValueOf3 = null;
                                numValueOf6 = null;
                                num6 = null;
                            } else {
                                numValueOf4 = Integer.valueOf(linkedHashSet.size());
                                try {
                                    numValueOf6 = Integer.valueOf(iOptInt);
                                    try {
                                        Iterator it2 = linkedHashSet.iterator();
                                        int iOptInt2 = 0;
                                        int length = 0;
                                        while (it2.hasNext()) {
                                            String str12 = (String) it2.next();
                                            if (StringUtil.isEmpty(str12) || (jSONObjectQueryCityPath = antSports.queryCityPath(str12)) == null) {
                                                it = it2;
                                            } else {
                                                it = it2;
                                                JSONArray jSONArrayOptJSONArray3 = jSONObjectQueryCityPath.optJSONArray("cityPathList");
                                                if (jSONArrayOptJSONArray3 == null) {
                                                    continue;
                                                } else {
                                                    length += jSONArrayOptJSONArray3.length();
                                                    int i3 = 0;
                                                    while (i3 < jSONArrayOptJSONArray3.length()) {
                                                        JSONObject jSONObjectOptJSONObject9 = jSONArrayOptJSONArray3.optJSONObject(i3);
                                                        if (jSONObjectOptJSONObject9 != null) {
                                                            num7 = numValueOf4;
                                                            try {
                                                                iOptInt2 += jSONObjectOptJSONObject9.optInt("completeCount", 0);
                                                            } catch (Throwable th14) {
                                                                th = th14;
                                                                num4 = numValueOf6;
                                                                numValueOf4 = num7;
                                                                numValueOf3 = null;
                                                                String str13 = TAG;
                                                                Log.i(str13, "routeInfo queryThemeList err:");
                                                                Log.printStackTrace(str13, th);
                                                                numValueOf5 = numValueOf5;
                                                                num5 = null;
                                                                numValueOf6 = num4;
                                                                str2 = strOptString8;
                                                                sb = new StringBuilder();
                                                                if (!StringUtil.isEmpty(str2)) {
                                                                    sb.append(str2);
                                                                    sb.append("-");
                                                                }
                                                                if (!StringUtil.isEmpty(strOptString3)) {
                                                                    sb.append(strOptString3);
                                                                    sb.append("-");
                                                                }
                                                                sb.append(strOptString5);
                                                                StringBuilder sb8 = new StringBuilder("行走路线🚶[");
                                                                sb8.append(UserIdMap.getShowName(UserIdMap.getCurrentUid()));
                                                                sb8.append("]今日步数");
                                                                sb8.append(Log.n(numValueOf2));
                                                                sb8.append(";当前[");
                                                                sb8.append((Object) sb);
                                                                sb8.append("](");
                                                                sb8.append(strOptString6);
                                                                sb8.append("km/");
                                                                sb8.append(strOptString7);
                                                                sb8.append("步);累计走路");
                                                                sb8.append(str);
                                                                sb8.append("步/");
                                                                sb8.append(strOptString2);
                                                                sb8.append("km;路线能量");
                                                                sb8.append(Log.n(num));
                                                                sb8.append(";主题");
                                                                sb8.append(Log.n(numValueOf5));
                                                                sb8.append("个;城市");
                                                                sb8.append(Log.n(numValueOf4));
                                                                sb8.append("个见闻");
                                                                sb8.append(Log.n(numValueOf6));
                                                                sb8.append(";线路");
                                                                sb8.append(Log.n(numValueOf3));
                                                                sb8.append("条完成");
                                                                sb8.append(Log.n(num5));
                                                                sb8.append("次");
                                                                if (num3 != null) {
                                                                    str3 = ";累计完成" + num3 + "次";
                                                                }
                                                                sb8.append(str3);
                                                                sb8.append(";");
                                                                Log.info(sb8.toString());
                                                            }
                                                        } else {
                                                            num7 = numValueOf4;
                                                        }
                                                        i3++;
                                                        jSONArrayOptJSONArray3 = jSONArrayOptJSONArray3;
                                                        numValueOf4 = num7;
                                                    }
                                                    antSports = this;
                                                }
                                            }
                                            it2 = it;
                                        }
                                        num7 = numValueOf4;
                                        numValueOf3 = Integer.valueOf(length);
                                        try {
                                            numValueOf7 = Integer.valueOf(iOptInt2);
                                            num6 = num7;
                                        } catch (Throwable th15) {
                                            th = th15;
                                            num4 = numValueOf6;
                                            numValueOf5 = numValueOf5;
                                            numValueOf4 = num7;
                                            String str14 = TAG;
                                            Log.i(str14, "routeInfo queryThemeList err:");
                                            Log.printStackTrace(str14, th);
                                            numValueOf5 = numValueOf5;
                                            num5 = null;
                                            numValueOf6 = num4;
                                        }
                                    } catch (Throwable th16) {
                                        th = th16;
                                        num4 = numValueOf6;
                                    }
                                } catch (Throwable th17) {
                                    th = th17;
                                    num4 = null;
                                }
                            }
                        } catch (Throwable th18) {
                            num3 = num2;
                            th = th18;
                            strOptString8 = "";
                        }
                    }
                    numValueOf4 = num6;
                    num5 = numValueOf7;
                    str2 = strOptString8;
                    sb = new StringBuilder();
                    if (!StringUtil.isEmpty(str2)) {
                        sb.append(str2);
                        sb.append("-");
                    }
                    if (!StringUtil.isEmpty(strOptString3)) {
                        sb.append(strOptString3);
                        sb.append("-");
                    }
                    sb.append(strOptString5);
                    StringBuilder sb9 = new StringBuilder("行走路线🚶[");
                    sb9.append(UserIdMap.getShowName(UserIdMap.getCurrentUid()));
                    sb9.append("]今日步数");
                    sb9.append(Log.n(numValueOf2));
                    sb9.append(";当前[");
                    sb9.append((Object) sb);
                    sb9.append("](");
                    sb9.append(strOptString6);
                    sb9.append("km/");
                    sb9.append(strOptString7);
                    sb9.append("步);累计走路");
                    sb9.append(str);
                    sb9.append("步/");
                    sb9.append(strOptString2);
                    sb9.append("km;路线能量");
                    sb9.append(Log.n(num));
                    sb9.append(";主题");
                    sb9.append(Log.n(numValueOf5));
                    sb9.append("个;城市");
                    sb9.append(Log.n(numValueOf4));
                    sb9.append("个见闻");
                    sb9.append(Log.n(numValueOf6));
                    sb9.append(";线路");
                    sb9.append(Log.n(numValueOf3));
                    sb9.append("条完成");
                    sb9.append(Log.n(num5));
                    sb9.append("次");
                    if (num3 != null) {
                        str3 = ";累计完成" + num3 + "次";
                    }
                    sb9.append(str3);
                    sb9.append(";");
                    Log.info(sb9.toString());
                }
                strOptString3 = "";
                strOptString4 = strOptString3;
                strOptString5 = strOptString4;
                strOptString6 = strOptString5;
                strOptString7 = strOptString6;
                num2 = numValueOf8;
                jSONObject = new JSONObject(AntSportsRpcCall.queryThemeList());
                if (MessageUtil.checkSuccess(TAG, jSONObject).booleanValue()) {
                    num3 = num2;
                    strOptString8 = "";
                    numValueOf7 = null;
                    numValueOf3 = null;
                    numValueOf6 = null;
                    num6 = null;
                    numValueOf5 = null;
                } else {
                    num3 = num2;
                    strOptString8 = "";
                    numValueOf7 = null;
                    numValueOf3 = null;
                    numValueOf6 = null;
                    num6 = null;
                    numValueOf5 = null;
                }
                numValueOf4 = num6;
                num5 = numValueOf7;
                str2 = strOptString8;
                sb = new StringBuilder();
                if (!StringUtil.isEmpty(str2)) {
                    sb.append(str2);
                    sb.append("-");
                }
                if (!StringUtil.isEmpty(strOptString3)) {
                    sb.append(strOptString3);
                    sb.append("-");
                }
                sb.append(strOptString5);
                StringBuilder sb10 = new StringBuilder("行走路线🚶[");
                sb10.append(UserIdMap.getShowName(UserIdMap.getCurrentUid()));
                sb10.append("]今日步数");
                sb10.append(Log.n(numValueOf2));
                sb10.append(";当前[");
                sb10.append((Object) sb);
                sb10.append("](");
                sb10.append(strOptString6);
                sb10.append("km/");
                sb10.append(strOptString7);
                sb10.append("步);累计走路");
                sb10.append(str);
                sb10.append("步/");
                sb10.append(strOptString2);
                sb10.append("km;路线能量");
                sb10.append(Log.n(num));
                sb10.append(";主题");
                sb10.append(Log.n(numValueOf5));
                sb10.append("个;城市");
                sb10.append(Log.n(numValueOf4));
                sb10.append("个见闻");
                sb10.append(Log.n(numValueOf6));
                sb10.append(";线路");
                sb10.append(Log.n(numValueOf3));
                sb10.append("条完成");
                sb10.append(Log.n(num5));
                sb10.append("次");
                if (num3 != null) {
                    str3 = ";累计完成" + num3 + "次";
                }
                sb10.append(str3);
                sb10.append(";");
                Log.info(sb10.toString());
            }
            strOptString3 = "";
            strOptString4 = strOptString3;
            strOptString5 = strOptString4;
            strOptString6 = strOptString5;
            strOptString7 = strOptString6;
            jSONObject = new JSONObject(AntSportsRpcCall.queryThemeList());
            if (MessageUtil.checkSuccess(TAG, jSONObject).booleanValue()) {
                num3 = num2;
                strOptString8 = "";
                numValueOf7 = null;
                numValueOf3 = null;
                numValueOf6 = null;
                num6 = null;
                numValueOf5 = null;
            } else {
                num3 = num2;
                strOptString8 = "";
                numValueOf7 = null;
                numValueOf3 = null;
                numValueOf6 = null;
                num6 = null;
                numValueOf5 = null;
            }
            numValueOf4 = num6;
            num5 = numValueOf7;
        } catch (Throwable th19) {
            num3 = num2;
            th = th19;
            strOptString8 = "";
            num4 = null;
            numValueOf3 = null;
            numValueOf4 = null;
            numValueOf5 = null;
        }
        num2 = null;
        str2 = strOptString8;
        sb = new StringBuilder();
        if (!StringUtil.isEmpty(str2)) {
            sb.append(str2);
            sb.append("-");
        }
        if (!StringUtil.isEmpty(strOptString3)) {
            sb.append(strOptString3);
            sb.append("-");
        }
        sb.append(strOptString5);
        StringBuilder sb11 = new StringBuilder("行走路线🚶[");
        sb11.append(UserIdMap.getShowName(UserIdMap.getCurrentUid()));
        sb11.append("]今日步数");
        sb11.append(Log.n(numValueOf2));
        sb11.append(";当前[");
        sb11.append((Object) sb);
        sb11.append("](");
        sb11.append(strOptString6);
        sb11.append("km/");
        sb11.append(strOptString7);
        sb11.append("步);累计走路");
        sb11.append(str);
        sb11.append("步/");
        sb11.append(strOptString2);
        sb11.append("km;路线能量");
        sb11.append(Log.n(num));
        sb11.append(";主题");
        sb11.append(Log.n(numValueOf5));
        sb11.append("个;城市");
        sb11.append(Log.n(numValueOf4));
        sb11.append("个见闻");
        sb11.append(Log.n(numValueOf6));
        sb11.append(";线路");
        sb11.append(Log.n(numValueOf3));
        sb11.append("条完成");
        sb11.append(Log.n(num5));
        sb11.append("次");
        if (num3 != null) {
            str3 = ";累计完成" + num3 + "次";
        }
        sb11.append(str3);
        sb11.append(";");
        Log.info(sb11.toString());
    }

    public int tmpStepCount() {
        int i = this.tmpStepCount;
        if (i >= 0) {
            return i;
        }
        int iIntValue = this.syncStepCount.getValue().intValue();
        this.tmpStepCount = iIntValue;
        if (iIntValue > 0) {
            int iNextInt = RandomUtil.nextInt(iIntValue, iIntValue + DeserializerCache.DEFAULT_MAX_CACHE_SIZE);
            this.tmpStepCount = iNextInt;
            if (iNextInt > 100000) {
                this.tmpStepCount = 100000;
            }
        }
        return this.tmpStepCount;
    }

    public static void initAntSportsTaskListMap(boolean z, boolean z2) {
        SelectModelField selectModelField;
        try {
            AntSportsTaskListMap.load();
            HashSet<String> hashSet = new HashSet();
            hashSet.add("下载登录AI健康管家");
            HashSet<String> hashSet2 = new HashSet();
            Iterator it = hashSet.iterator();
            while (it.hasNext()) {
                AntSportsTaskListMap.add((String) it.next(), "");
            }
            if (z2) {
                JSONObject jSONObject = new JSONObject(AntSportsRpcCall.queryCoinTaskPanel());
                if (MessageUtil.checkSuccess(TAG, jSONObject).booleanValue()) {
                    JSONObject jSONObject2 = jSONObject.getJSONObject("data");
                    if (jSONObject2.has("taskList")) {
                        JSONArray jSONArray = jSONObject2.getJSONArray("taskList");
                        for (int i = 0; i < jSONArray.length(); i++) {
                            JSONObject jSONObject3 = jSONArray.getJSONObject(i);
                            AntSportsTaskListMap.add(jSONObject3.getString("taskName"), TaskIconUtil.extractIcon(jSONObject3));
                        }
                    }
                }
                AntSportsTaskListMap.save();
                Log.record("同步任务🉑运动任务列表");
                if (!z || (selectModelField = (SelectModelField) ConfigV2.INSTANCE.getModelFieldsMap().get("AntSports").get("AntSportsTaskList")) == null) {
                    return;
                }
                Set<String> value = selectModelField.getValue();
                if (value != null) {
                    for (String str : hashSet) {
                        if (!value.contains(str)) {
                            selectModelField.add(str, 0);
                        }
                    }
                }
                Set<String> value2 = selectModelField.getValue();
                if (value2 != null) {
                    for (String str2 : hashSet2) {
                        if (value2.contains(str2)) {
                            value2.remove(str2);
                        }
                    }
                }
                if (ConfigV2.save(UserIdMap.getCurrentUid(), false).booleanValue()) {
                    Log.record("黑白名单🈲运动任务自动设置: " + selectModelField.getValue());
                    return;
                }
                Log.record("运动任务黑白名单设置失败");
            }
        } catch (Throwable th) {
            String str3 = TAG;
            Log.i(str3, "initSportsTaskListMap err:");
            Log.printStackTrace(str3, th);
        }
    }

    private void initWalkPathThemeMap() {
        JSONArray jSONArrayOptJSONArray;
        PathThemeMapListMap.load();
        try {
            JSONObject jSONObjectOptJSONObject = new JSONObject(AntSportsRpcCall.queryThemeList()).optJSONObject("data");
            if (jSONObjectOptJSONObject != null && (jSONArrayOptJSONArray = jSONObjectOptJSONObject.optJSONArray("themeList")) != null) {
                for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                    JSONObject jSONObjectOptJSONObject2 = jSONArrayOptJSONArray.optJSONObject(i);
                    String strOptString = jSONObjectOptJSONObject2.optString("themeId");
                    String strOptString2 = jSONObjectOptJSONObject2.optString("themeName");
                    if (strOptString != null && !strOptString.isEmpty() && strOptString2 != null && !strOptString2.isEmpty()) {
                        PathThemeMapListMap.add(strOptString, strOptString2);
                    }
                }
            }
            PathThemeMapListMap.save();
            Log.record("同步路线主题" + PathThemeMapListMap.getMap());
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "initWalkPathThemeMap err:");
            Log.printStackTrace(str, th);
        }
    }

    private void sportsTasks() {
        try {
            signInCoinTask();
            JSONObject jSONObject = new JSONObject(AntSportsRpcCall.queryCoinTaskPanel());
            if (MessageUtil.checkSuccess(TAG, jSONObject).booleanValue()) {
                JSONObject jSONObject2 = jSONObject.getJSONObject("data");
                if (jSONObject2.has("taskList")) {
                    JSONArray jSONArray = jSONObject2.getJSONArray("taskList");
                    for (int i = 0; i < jSONArray.length(); i++) {
                        JSONObject jSONObject3 = jSONArray.getJSONObject(i);
                        String string = jSONObject3.getString("taskName");
                        String string2 = jSONObject3.getString("taskStatus");
                        if (TaskStatus.HAS_RECEIVED.name().equals(string2)) {
                            return;
                        }
                        if (TaskStatus.WAIT_RECEIVE.name().equals(string2)) {
                            if (receiveCoinAsset(jSONObject3.getString("assetId"), jSONObject3.getInt("prizeAmount"), string).booleanValue()) {
                                TimeUtil.sleep(1000L);
                            }
                        } else if (this.AntSportsTaskList.getValue().contains(string)) {
                            if (TaskStatus.WAIT_COMPLETE.name().equals(string2)) {
                                string2 = "TODO";
                            }
                            TaskAlternative.handleGameTask(new TaskAlternative.GameTask("AntSportsTaskList", string, "", "", string2).bizKey(jSONObject3.optString("taskId")).taskPlayType(jSONObject3.optString("taskPlayType", jSONObject3.optString("taskProdPlayType"))).taskMode(jSONObject3.optString("taskMode")).taskSceneCode("ANTSPORTS").scene("ANTSPORTS", "medical_health").version(AntSportsRpcCall.VERSION));
                        } else if (jSONObject3.has("taskAction")) {
                            if (TaskStatus.WAIT_COMPLETE.name().equals(string2)) {
                                String string3 = jSONObject3.getString("taskAction");
                                String string4 = jSONObject3.getString("taskId");
                                if (jSONObject3.optBoolean("multiTask")) {
                                    string = string.replaceAll("（.*/.*）", "(" + (jSONObject3.getInt("currentNum") + 1) + "/" + jSONObject3.getInt("limitConfigNum") + ")");
                                }
                                if ((!jSONObject3.optBoolean("needSignUp") || signUpTask(string4).booleanValue()) && completeTask(string3, string4, string).booleanValue()) {
                                    TimeUtil.sleep(2000L);
                                }
                            } else {
                                completeTask(jSONObject3.getString("taskAction"), jSONObject3.getString("taskId"), string);
                            }
                        }
                    }
                }
            }
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "sportsTasks err:");
            Log.printStackTrace(str, th);
        }
    }

    private Boolean signUpTask(String str) {
        try {
            if (MessageUtil.checkSuccess(TAG, new JSONObject(AntSportsRpcCall.signUpTask(str))).booleanValue()) {
                return true;
            }
        } catch (Throwable th) {
            String str2 = TAG;
            Log.i(str2, "signUpTask err:");
            Log.printStackTrace(str2, th);
        }
        return false;
    }

    private Boolean completeTask(String str, String str2, String str3) {
        try {
            JSONObject jSONObject = new JSONObject(AntSportsRpcCall.completeTask(str, str2));
            MessageUtil.checkResultCodeAndMarkTaskBlackList("AntSportsTaskList", str3, jSONObject);
            if (MessageUtil.checkSuccess(TAG, jSONObject).booleanValue()) {
                Log.other("运动任务🧾完成[得运动币:" + str3 + "]");
                TimeUtil.sleep(1000L);
                return true;
            }
        } catch (Throwable th) {
            String str4 = TAG;
            Log.i(str4, "completeTask err:");
            Log.printStackTrace(str4, th);
        }
        return false;
    }

    private void signInCoinTask() {
        try {
            JSONObject jSONObject = new JSONObject(AntSportsRpcCall.signInCoinTask());
            if (MessageUtil.checkSuccess(TAG, jSONObject).booleanValue()) {
                JSONObject jSONObject2 = jSONObject.getJSONObject("data");
                if (jSONObject2.getBoolean("signed") || !jSONObject2.has("subscribeConfig")) {
                    return;
                }
                Log.other("运动任务🧾[做任务得运动币:签到" + jSONObject2.getJSONObject("subscribeConfig").getString("subscribeExpireDays") + "天]奖励" + jSONObject2.getString("toast") + "运动币");
            }
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "signInCoinTask err:");
            Log.printStackTrace(str, th);
        }
    }

    private void receiveCoinAsset() {
        try {
            JSONObject jSONObject = new JSONObject(AntSportsRpcCall.queryCoinBubbleModule());
            if (MessageUtil.checkSuccess(TAG, jSONObject).booleanValue()) {
                JSONObject jSONObject2 = jSONObject.getJSONObject("data");
                if (jSONObject2.has("recBubbleList")) {
                    JSONArray jSONArray = jSONObject2.getJSONArray("recBubbleList");
                    for (int i = 0; i < jSONArray.length(); i++) {
                        JSONObject jSONObject3 = jSONArray.getJSONObject(i);
                        if (!jSONObject2.has("assetId")) {
                            return;
                        }
                        if (receiveCoinAsset(jSONObject3.getString("assetId"), jSONObject3.getInt("coinAmount"), jSONObject3.optString("simpleSourceName")).booleanValue()) {
                            TimeUtil.sleep(500L);
                        }
                    }
                }
            }
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "receiveCoinAsset err:");
            Log.printStackTrace(str, th);
        }
    }

    private Boolean receiveCoinAsset(String str, int i, String str2) {
        try {
            if (MessageUtil.checkSuccess(TAG, new JSONObject(AntSportsRpcCall.receiveCoinAsset(str))).booleanValue()) {
                Log.other("运动中心🧊领取[" + str2 + "]奖励[" + i + "运动能量]");
                return true;
            }
        } catch (Throwable th) {
            String str3 = TAG;
            Log.i(str3, "receiveCoinAsset err:");
            Log.printStackTrace(str3, th);
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:21:0x007a  */
    private String getWalkPathMinCompleteCount() {
        String str;
        String str2;
        int i;
        String str3;
        String str4;
        String str5;
        JSONArray jSONArrayOptJSONArray;
        String str6;
        String str7 = "name";
        String str8 = "data";
        try {
            JSONObject jSONObjectOptJSONObject = new JSONObject(AntSportsRpcCall.queryThemeList()).optJSONObject("data");
            if (jSONObjectOptJSONObject == null || (jSONArrayOptJSONArray = jSONObjectOptJSONObject.optJSONArray("themeList")) == null) {
                str2 = null;
                i = 0;
                str3 = null;
                str4 = null;
                str5 = null;
            } else {
                int i2 = 0;
                String str9 = null;
                str3 = null;
                str4 = null;
                str5 = null;
                int i3 = 0;
                boolean z = false;
                while (i2 < jSONArrayOptJSONArray.length()) {
                    try {
                        JSONObject jSONObjectOptJSONObject2 = jSONArrayOptJSONArray.optJSONObject(i2);
                        String strOptString = jSONObjectOptJSONObject2.optString("themeId");
                        String strOptString2 = jSONObjectOptJSONObject2.optString("themeName");
                        JSONObject jSONObject = new JSONObject(AntSportsRpcCall.queryWorldMap(strOptString));
                        if (MessageUtil.checkSuccess(TAG, jSONObject).booleanValue()) {
                            JSONArray jSONArray = jSONObject.getJSONObject(str8).getJSONArray("cityList");
                            int i4 = 0;
                            while (i4 < jSONArray.length()) {
                                JSONObject jSONObject2 = jSONArray.getJSONObject(i4);
                                String string = jSONObject2.getString("cityId");
                                String string2 = jSONObject2.has(str7) ? jSONObject2.getString(str7) : null;
                                String strQueryCityPath = AntSportsRpcCall.queryCityPath(string);
                                if (strQueryCityPath == null) {
                                    str6 = str7;
                                } else {
                                    JSONObject jSONObject3 = new JSONObject(strQueryCityPath);
                                    if (MessageUtil.checkSuccess(TAG, jSONObject3).booleanValue()) {
                                        JSONArray jSONArray2 = jSONObject3.getJSONObject(str8).getJSONArray("cityPathList");
                                        int i5 = 0;
                                        while (i5 < jSONArray2.length()) {
                                            JSONObject jSONObject4 = jSONArray2.getJSONObject(i5);
                                            JSONArray jSONArray3 = jSONArray2;
                                            String string3 = jSONObject4.getString("pathId");
                                            String string4 = jSONObject4.getString(str7);
                                            String str10 = str7;
                                            int iOptInt = jSONObject4.optInt("completeCount");
                                            JSONArray jSONArray4 = jSONArrayOptJSONArray;
                                            boolean zOptBoolean = jSONObject4.optBoolean("locked", true);
                                            if (!z && !zOptBoolean) {
                                                i3 = iOptInt;
                                                str9 = strOptString2;
                                                str3 = string2;
                                                str4 = string4;
                                                str5 = string3;
                                                z = true;
                                            }
                                            if (iOptInt < i3 && !zOptBoolean) {
                                                i3 = iOptInt;
                                                str9 = strOptString2;
                                                str3 = string2;
                                                str4 = string4;
                                                str5 = string3;
                                            }
                                            i5++;
                                            jSONArray2 = jSONArray3;
                                            str7 = str10;
                                            jSONArrayOptJSONArray = jSONArray4;
                                        }
                                        str6 = str7;
                                    } else {
                                        str6 = str7;
                                    }
                                }
                                i4++;
                                str8 = str8;
                                str7 = str6;
                                jSONArrayOptJSONArray = jSONArrayOptJSONArray;
                            }
                        }
                        i2++;
                        str8 = str8;
                        str7 = str7;
                        jSONArrayOptJSONArray = jSONArrayOptJSONArray;
                    } catch (Throwable th) {
                        th = th;
                        str = str5;
                        String str11 = TAG;
                        Log.i(str11, "getWalkPathMinCompleteCount err:");
                        Log.printStackTrace(str11, th);
                        return str;
                    }
                }
                str2 = str9;
                i = i3;
            }
            Log.other("切换路线🚶🏻\u200d♂️选择主题[" + str2 + "]城市[" + str3 + "]线路[" + str4 + "](" + str5 + ")目前" + i + "次");
            return str5;
        } catch (Throwable th2) {
            th = th2;
            str = null;
        }
    }

    private void walk(int i) {
        String strQueryGoingPathId = queryGoingPathId();
        do {
            String str = (String) ExtensionsHandle.handleAlphaRequest("antSports", "walk", null);
            if (str != null) {
                strQueryGoingPathId = str;
            }
            TimeUtil.sleep(1000L);
            if (isNeedJoinNewPath(strQueryGoingPathId).booleanValue()) {
                if (this.walkMinimumCompleteCount.getValue().booleanValue()) {
                    strQueryGoingPathId = getWalkPathMinCompleteCount();
                } else {
                    String strQueryJoinPathId = queryJoinPathId();
                    if (checkJoinPathId(strQueryJoinPathId).booleanValue()) {
                        if (!joinPath(strQueryJoinPathId).booleanValue()) {
                            return;
                        } else {
                            strQueryGoingPathId = strQueryJoinPathId;
                        }
                    }
                }
            }
        } while (walkGo(queryPath(strQueryGoingPathId), i).booleanValue());
    }

    private Boolean isNeedJoinNewPath(String str) {
        if (str.isEmpty()) {
            return true;
        }
        try {
            JSONObject jSONObject = queryPath(str).getJSONObject("userPathStep");
            if (jSONObject.optBoolean("dayLimit")) {
                return true;
            }
            if (PathCompleteStatus.COMPLETED.name().equals(jSONObject.getString("pathCompleteStatus"))) {
                return true;
            }
        } catch (Throwable th) {
            String str2 = TAG;
            Log.i(str2, "isNeedJoinNewPath err:");
            Log.printStackTrace(str2, th);
        }
        return false;
    }

    private Boolean hasTreasureBox() {
        if (Status.hasFlagToday("sport::treasureBoxLimit").booleanValue()) {
            return false;
        }
        try {
            JSONObject jSONObject = new JSONObject(AntSportsRpcCall.queryMailList());
            if (!MessageUtil.checkResultCode(TAG, jSONObject).booleanValue()) {
                return false;
            }
            JSONArray jSONArray = jSONObject.getJSONArray("userMailList");
            int i = 0;
            for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                JSONObject jSONObject2 = jSONArray.getJSONObject(i2);
                if ("SPORTSPROD_GOPATH_AWARD_BOX".equals(jSONObject2.getString("templateId"))) {
                    if (!TimeUtil.isToday(Long.valueOf(jSONObject2.getLong("receiveTime"))).booleanValue()) {
                        break;
                    }
                    i++;
                }
            }
            if (i < 20) {
                return true;
            }
            Status.flagToday("sport::treasureBoxLimit");
            return false;
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "hasTreasureBox err:");
            Log.printStackTrace(str, th);
        }
    }

    private Boolean walkGo(JSONObject jSONObject, int i) {
        int i2;
        int i3;
        if (i > 20000) {
            i3 = i / 20;
            i2 = (i - 10000) / 20;
        } else {
            i2 = 500;
            i3 = 1000;
        }
        if (jSONObject != null) {
            try {
                if (jSONObject.has("path")) {
                    JSONObject jSONObject2 = jSONObject.getJSONObject("path");
                    JSONObject jSONObject3 = jSONObject.getJSONObject("userPathStep");
                    int i4 = jSONObject2.getInt("minGoStepCount");
                    int i5 = jSONObject2.getInt("pathStepCount");
                    if (jSONObject2.has("dailyMaxGoStepCount")) {
                        i5 = jSONObject2.getInt("dailyMaxGoStepCount");
                    }
                    int i6 = jSONObject3.getInt("forwardStepCount");
                    int i7 = jSONObject3.getInt("remainStepCount");
                    boolean z = jSONObject3.getBoolean("dayLimit");
                    int iMin = Math.min(Math.min(i7, hasTreasureBox().booleanValue() ? RandomUtil.nextInt(i2, i3) : i7), Math.max(i5 - (i6 % i5), i4));
                    if (iMin >= i4 && !z) {
                        return walkGo(jSONObject2.getString("name"), jSONObject2.getString("pathId"), iMin);
                    }
                    return false;
                }
            } catch (Throwable th) {
                String str = TAG;
                Log.i(str, "walkGo err:");
                Log.printStackTrace(str, th);
                return false;
            }
        }
        return false;
    }

    private Boolean walkGo(String str, String str2, int i) {
        boolean z = false;
        try {
            JSONObject jSONObject = new JSONObject(AntSportsRpcCall.walkGo(Log.getFormatDate(), str2, i));
            if (MessageUtil.checkSuccess(TAG, jSONObject).booleanValue()) {
                z = true;
                Log.other("行走路线🚶🏻\u200d♂️行走[" + str + "]#前进了" + i + "步");
                JSONObject jSONObject2 = jSONObject.getJSONObject("data");
                if (jSONObject2.has("completeInfo")) {
                    Log.other("行走路线🚶🏻\u200d♂️完成[" + str + "]");
                }
                parseRewardsByJSONObjectData(jSONObject2);
            }
        } catch (Throwable th) {
            String str3 = TAG;
            Log.i(str3, "walkGo err:");
            Log.printStackTrace(str3, th);
        }
        return Boolean.valueOf(z);
    }

    private JSONObject queryWorldMap(String str) {
        try {
            JSONObject jSONObject = new JSONObject(AntSportsRpcCall.queryWorldMap(str));
            if (MessageUtil.checkSuccess(TAG, jSONObject).booleanValue()) {
                return jSONObject.getJSONObject("data");
            }
            return null;
        } catch (Throwable th) {
            String str2 = TAG;
            Log.i(str2, "queryWorldMap err:");
            Log.printStackTrace(str2, th);
            return null;
        }
    }

    private JSONObject queryCityPath(String str) {
        try {
            String strQueryCityPath = AntSportsRpcCall.queryCityPath(str);
            if (strQueryCityPath == null) {
                return null;
            }
            JSONObject jSONObject = new JSONObject(strQueryCityPath);
            if (MessageUtil.checkSuccess(TAG, jSONObject).booleanValue()) {
                return jSONObject.getJSONObject("data");
            }
            return null;
        } catch (Throwable th) {
            String str2 = TAG;
            Log.i(str2, "queryCityPath err:");
            Log.printStackTrace(str2, th);
            return null;
        }
    }

    private static JSONObject queryPath(String str) {
        JSONObject jSONObject = null;
        try {
            JSONObject jSONObject2 = new JSONObject(AntSportsRpcCall.queryPath(Log.getFormatDate(), str));
            if (!MessageUtil.checkSuccess(TAG, jSONObject2).booleanValue()) {
                return null;
            }
            jSONObject = jSONObject2.getJSONObject("data");
            parseRewardsByJSONObjectData(jSONObject);
            return jSONObject;
        } catch (Throwable th) {
            String str2 = TAG;
            Log.i(str2, "queryPath err:");
            Log.printStackTrace(str2, th);
            return jSONObject;
        }
    }

    private static void openTreasureBox(JSONArray jSONArray) {
        for (int i = 0; i < jSONArray.length(); i++) {
            try {
                receiveEvent(jSONArray.getJSONObject(i).getString("boxNo"));
                TimeUtil.sleep(1000L);
            } catch (Throwable th) {
                String str = TAG;
                Log.i(str, "openTreasureBox err:");
                Log.printStackTrace(str, th);
                return;
            }
        }
    }

    private static void receiveEvent(String str) {
        try {
            JSONObject jSONObject = new JSONObject(AntSportsRpcCall.receiveEvent(str));
            if (MessageUtil.checkSuccess(TAG, jSONObject).booleanValue()) {
                parseRewardsByJSONArrayRewards(jSONObject.getJSONObject("data").getJSONArray("rewards"), 0);
            }
        } catch (Throwable th) {
            String str2 = TAG;
            Log.i(str2, "receiveEvent err:");
            Log.printStackTrace(str2, th);
        }
    }

    private static void parseRewardsByJSONArrayRewards(JSONArray jSONArray, int i) {
        String str;
        if (i == 0) {
            str = "宝箱奖励";
        } else if (i == 1) {
            str = "中奖奖励";
        } else if (i == 2) {
            str = "终点奖励";
        } else {
            str = "未知奖励";
        }
        for (int i2 = 0; i2 < jSONArray.length(); i2++) {
            try {
                JSONObject jSONObject = jSONArray.getJSONObject(i2);
                if (!jSONObject.has("rewardStatus") || "SUCCESS".equals(jSONObject.getString("rewardStatus"))) {
                    Log.other("行走路线🚶🏻\u200d♂️收获" + str + "[" + jSONObject.getString("rewardName") + "*" + jSONObject.getInt("count") + "]");
                }
            } catch (Throwable th) {
                String str2 = TAG;
                Log.i(str2, "parseRewardsByJSONArrayRewards err:");
                Log.printStackTrace(str2, th);
                return;
            }
        }
    }

    private static void parseRewardsByJSONObjectData(JSONObject jSONObject) {
        try {
            openTreasureBox(jSONObject.getJSONArray("treasureBoxList"));
            if (jSONObject.has("brandRewardVOs")) {
                parseRewardsByJSONArrayRewards(jSONObject.getJSONArray("brandRewardVOs"), 1);
            }
            if (jSONObject.has("completeInfo")) {
                parseRewardsByJSONArrayRewards(jSONObject.getJSONObject("completeInfo").getJSONArray("completeRewards"), 2);
            }
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "parseRewardsByJSONObjectData err:");
            Log.printStackTrace(str, th);
        }
    }

    private String queryGoingPathId() {
        try {
            JSONObject jSONObject = new JSONObject(AntSportsRpcCall.queryPath(Log.getFormatDate(), ""));
            if (!MessageUtil.checkSuccess(TAG, jSONObject).booleanValue()) {
                return "";
            }
            return jSONObject.getJSONObject("data").optString("goingPathId");
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "queryGoingPathId err:");
            Log.printStackTrace(str, th);
            return "";
        }
    }

    private String queryJoinPathId() {
        JSONObject jSONObjectQueryWorldMap;
        String string = null;
        try {
            int iIntValue = this.PathThemeMapList.getValue().intValue();
            if (iIntValue < 0 || iIntValue >= WalkPathThemeMapList.values.length || (jSONObjectQueryWorldMap = queryWorldMap(WalkPathThemeMapList.values[iIntValue])) == null) {
                return null;
            }
            JSONArray jSONArray = jSONObjectQueryWorldMap.getJSONArray("cityList");
            for (int i = 0; i < jSONArray.length(); i++) {
                JSONObject jSONObjectQueryCityPath = queryCityPath(jSONArray.getJSONObject(i).getString("cityId"));
                if (jSONObjectQueryCityPath != null) {
                    JSONArray jSONArray2 = jSONObjectQueryCityPath.getJSONArray("cityPathList");
                    for (int i2 = 0; i2 < jSONArray2.length(); i2++) {
                        JSONObject jSONObject = jSONArray2.getJSONObject(i2);
                        string = jSONObject.getString("pathId");
                        if (!PathCompleteStatus.COMPLETED.name().equals(jSONObject.optString("pathCompleteStatus"))) {
                            return string;
                        }
                    }
                }
            }
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "queryJoinPathId err:");
            Log.printStackTrace(str, th);
        }
        return string;
    }

    public static Boolean checkJoinPathId(String str) {
        try {
            JSONObject jSONObjectQueryPath = queryPath(str);
            if (Objects.equals(jSONObjectQueryPath.optString("goingPathId"), str)) {
                return false;
            }
            return Boolean.valueOf(!jSONObjectQueryPath.getJSONObject("userPathStep").optBoolean("dayLimit"));
        } catch (Throwable th) {
            String str2 = TAG;
            Log.i(str2, "checkJoinPathId err:");
            Log.printStackTrace(str2, th);
            return false;
        }
    }

    public static Boolean joinPath(String str) {
        if (str == null) {
            str = "p000202408231708";
        }
        try {
            if (MessageUtil.checkSuccess(TAG, new JSONObject(AntSportsRpcCall.joinPath(str))).booleanValue()) {
                Log.other("行走路线🚶🏻\u200d♂️加入[" + queryPath(str).getJSONObject("path").getString("name") + "]#[" + UserIdMap.getShowName(UserIdMap.getCurrentUid()) + "]");
                return true;
            }
        } catch (Throwable th) {
            String str2 = TAG;
            Log.i(str2, "joinPath err:");
            Log.printStackTrace(str2, th);
        }
        return false;
    }

    private Boolean canDonateCharityCoinToday() {
        if (Status.hasFlagToday("sport::donateCharityCoin").booleanValue()) {
            return false;
        }
        try {
            JSONObject jSONObject = new JSONObject(AntSportsRpcCall.queryDonateRecord());
            if (!MessageUtil.checkResultCode(TAG, jSONObject).booleanValue()) {
                return false;
            }
            JSONArray jSONArray = jSONObject.getJSONArray("footballFieldLongModel");
            if (jSONArray.length() != 0 && !TimeUtil.isLessThanNowOfDays(Long.valueOf(jSONArray.getJSONObject(0).getJSONObject("personStatModel").getLong("lastDonationTime"))).booleanValue()) {
                Status.flagToday("sport::donateCharityCoin");
                return false;
            }
            return true;
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "canDonateCharityCoinToday err:");
            Log.printStackTrace(str, th);
        }
    }

    private void queryProjectList() {
        int iIntValue;
        if (canDonateCharityCoinToday().booleanValue()) {
            try {
                JSONObject jSONObject = new JSONObject(AntSportsRpcCall.queryProjectList(0));
                if (MessageUtil.checkResultCode(TAG, jSONObject).booleanValue() && (i = jSONObject.getInt("charityCoinCount")) >= (iIntValue = this.donateCharityCoinAmount.getValue().intValue())) {
                    JSONArray jSONArray = jSONObject.getJSONObject("projectPage").getJSONArray("data");
                    for (int i = 0; i < jSONArray.length(); i++) {
                        JSONObject jSONObject2 = jSONArray.getJSONObject(i).getJSONObject("basicModel");
                        if (jSONObject2.optInt("acwProjectStatus") != 0) {
                            if ("DONATE_COMPLETED".equals(jSONObject2.getString("footballFieldStatus"))) {
                                return;
                            }
                            if (donate(iIntValue, jSONObject2.getString("projectId"), jSONObject2.getString("title")).booleanValue()) {
                                int i2 = i2 - iIntValue;
                                if (this.donateCharityCoinType.getValue().intValue() != 2 || i2 < iIntValue) {
                                    return;
                                }
                            } else {
                                continue;
                            }
                        }
                    }
                }
            } catch (Throwable th) {
                String str = TAG;
                Log.i(str, "queryProjectList err:");
                Log.printStackTrace(str, th);
            }
        }
    }

    private Boolean donate(int i, String str, String str2) {
        try {
            if (MessageUtil.checkResultCode(TAG, new JSONObject(AntSportsRpcCall.donate(i, str))).booleanValue()) {
                Log.other("公益捐赠❤️[捐赠运动币:" + str2 + "]捐赠" + i + "运动币");
                return true;
            }
        } catch (Throwable th) {
            String str3 = TAG;
            Log.i(str3, "donate err:");
            Log.printStackTrace(str3, th);
        }
        return false;
    }

    private Boolean canDonateWalkExchangeToday() {
        if (Status.hasFlagToday("sport::donateWalk").booleanValue()) {
            return false;
        }
        try {
            JSONObject jSONObject = new JSONObject(AntSportsRpcCall.donateExchangeRecord());
            if (!MessageUtil.checkResultCode(TAG, jSONObject).booleanValue()) {
                return false;
            }
            JSONArray jSONArray = jSONObject.getJSONArray("userExchangeRecords");
            if (jSONArray.length() != 0 && !TimeUtil.isLessThanNowOfDays(Long.valueOf(jSONArray.getJSONObject(0).getLong("gmtCreate"))).booleanValue()) {
                Status.flagToday("sport::donateWalk");
                return false;
            }
            return true;
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "canDonateWalkExchangeToday err:");
            Log.printStackTrace(str, th);
        }
    }

    private void queryWalkStep() {
        if (canDonateWalkExchangeToday().booleanValue() && !Status.hasFlagToday("sport::donateWalk").booleanValue()) {
            try {
                JSONObject jSONObject = new JSONObject(AntSportsRpcCall.queryWalkStep());
                String str = TAG;
                if (MessageUtil.checkResultCode(str, jSONObject).booleanValue()) {
                    int i = Integer.parseInt(Log.getFormatTime().split(":")[0]);
                    int iOptInt = jSONObject.optInt("stepCount");
                    if (iOptInt >= this.minExchangeCount.getValue().intValue() || i >= this.latestExchangeTime.getValue().intValue()) {
                        AntSportsRpcCall.walkDonateSignInfo(iOptInt);
                        JSONObject jSONObject2 = new JSONObject(AntSportsRpcCall.donateWalkHome(iOptInt));
                        if (MessageUtil.checkResultCode(str, jSONObject2).booleanValue()) {
                            JSONObject jSONObject3 = jSONObject2.getJSONObject("walkDonateHomeModel");
                            if (jSONObject3.getJSONObject("walkUserInfoModel").has("exchangeFlag")) {
                                JSONObject jSONObject4 = new JSONObject(AntSportsRpcCall.donateWalkExchange(jSONObject3.getJSONObject("walkCharityActivityModel").getString("activityId"), iOptInt, jSONObject3.getString("donateToken")));
                                if (MessageUtil.checkResultCode(str, jSONObject4).booleanValue()) {
                                    JSONObject jSONObject5 = jSONObject4.getJSONObject("donateExchangeResultModel");
                                    int i2 = jSONObject5.getInt("userCount");
                                    double d = jSONObject5.getJSONObject("userAmount").getDouble("amount");
                                    Log.other("公益捐赠❤️[捐步做公益:" + jSONObject5.getString("donateTitle") + "]捐赠" + i2 + "步,兑换" + d + "元公益金");
                                    Status.flagToday("sport::donateWalk");
                                }
                            }
                        }
                    }
                }
            } catch (Throwable th) {
                String str2 = TAG;
                Log.i(str2, "queryWalkStep err:");
                Log.printStackTrace(str2, th);
            }
        }
    }

    private void userTaskGroupQuery(String str) {
        try {
            String strUserTaskGroupQuery = AntSportsRpcCall.userTaskGroupQuery(str);
            JSONObject jSONObject = new JSONObject(strUserTaskGroupQuery);
            if (jSONObject.optBoolean("success")) {
                JSONArray jSONArray = jSONObject.getJSONObject("group").getJSONArray("userTaskList");
                for (int i = 0; i < jSONArray.length(); i++) {
                    JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                    if ("TODO".equals(jSONObject2.getString(NotificationCompat.CATEGORY_STATUS))) {
                        JSONObject jSONObject3 = jSONObject2.getJSONObject("taskInfo");
                        String string = jSONObject3.getString("bizType");
                        String string2 = jSONObject3.getString("taskId");
                        JSONObject jSONObject4 = new JSONObject(AntSportsRpcCall.userTaskComplete(string, string2));
                        if (jSONObject4.optBoolean("success")) {
                            Log.other("文体中心🧾完成任务[" + jSONObject3.optString("taskName", string2) + "]");
                        } else {
                            Log.record("文体每日任务 " + jSONObject4);
                        }
                    }
                }
                return;
            }
            Log.record("文体每日任务 " + strUserTaskGroupQuery);
        } catch (Throwable th) {
            String str2 = TAG;
            Log.i(str2, "userTaskGroupQuery err:");
            Log.printStackTrace(str2, th);
        }
    }

    private void participate() {
        try {
            JSONObject jSONObject = new JSONObject(AntSportsRpcCall.queryAccount());
            if (!jSONObject.optBoolean("success") || jSONObject.getDouble("balance") < 100.0d) {
                return;
            }
            JSONObject jSONObject2 = new JSONObject(AntSportsRpcCall.queryRoundList());
            if (!jSONObject2.optBoolean("success")) {
                Log.record("queryRoundList " + jSONObject2);
                return;
            }
            JSONArray jSONArray = jSONObject2.getJSONArray("dataList");
            for (int i = 0; i < jSONArray.length(); i++) {
                JSONObject jSONObject3 = jSONArray.getJSONObject(i);
                if ("P".equals(jSONObject3.getString(NotificationCompat.CATEGORY_STATUS)) && !jSONObject3.has("userRecord")) {
                    JSONArray jSONArray2 = jSONObject3.getJSONArray("instanceList");
                    String string = jSONObject3.getString("id");
                    String string2 = null;
                    String string3 = null;
                    int i2 = 0;
                    for (int length = jSONArray2.length() - 1; length >= 0; length--) {
                        JSONObject jSONObject4 = jSONArray2.getJSONObject(length);
                        if (jSONObject4.getInt("pointOptions") >= i2) {
                            i2 = jSONObject4.getInt("pointOptions");
                            string2 = jSONObject4.getString("id");
                            string3 = jSONObject4.getString("instanceResultId");
                        }
                    }
                    JSONObject jSONObject5 = new JSONObject(AntSportsRpcCall.participate(i2, string2, string3, string));
                    if (jSONObject5.optBoolean("success")) {
                        JSONObject jSONObject6 = jSONObject5.getJSONObject("data");
                        Log.other("走路挑战🚶🏻\u200d♂️[" + jSONObject6.getString("roundDescription") + "]#" + jSONObject6.getInt("targetStepCount"));
                    } else {
                        Log.record("走路挑战赛 " + jSONObject5);
                    }
                }
            }
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "participate err:");
            Log.printStackTrace(str, th);
        }
    }

    private void userTaskRightsReceive() {
        try {
            String strUserTaskGroupQuery = AntSportsRpcCall.userTaskGroupQuery("SPORTS_DAILY_GROUP");
            JSONObject jSONObject = new JSONObject(strUserTaskGroupQuery);
            if (jSONObject.optBoolean("success")) {
                JSONArray jSONArray = jSONObject.getJSONObject("group").getJSONArray("userTaskList");
                for (int i = 0; i < jSONArray.length(); i++) {
                    JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                    if ("COMPLETED".equals(jSONObject2.getString(NotificationCompat.CATEGORY_STATUS))) {
                        String string = jSONObject2.getString("userTaskId");
                        JSONObject jSONObject3 = jSONObject2.getJSONObject("taskInfo");
                        String string2 = jSONObject3.getString("taskId");
                        JSONObject jSONObject4 = new JSONObject(AntSportsRpcCall.userTaskRightsReceive(string2, string));
                        if (jSONObject4.optBoolean("success")) {
                            String strOptString = jSONObject3.optString("taskName", string2);
                            JSONArray jSONArray2 = jSONObject3.getJSONArray("rightsRuleList");
                            StringBuilder sb = new StringBuilder();
                            for (int i2 = 0; i2 < jSONArray2.length(); i2++) {
                                JSONObject jSONObject5 = jSONArray2.getJSONObject(i2);
                                sb.append(jSONObject5.getString("rightsName"));
                                sb.append("*");
                                sb.append(jSONObject5.getInt("baseAwardCount"));
                            }
                            Log.other("领取奖励🎖️[" + strOptString + "]#" + ((Object) sb));
                        } else {
                            Log.record("文体中心领取奖励");
                            Log.i(jSONObject4.toString());
                        }
                    }
                }
                return;
            }
            Log.record("文体中心领取奖励");
            Log.i(strUserTaskGroupQuery);
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "userTaskRightsReceive err:");
            Log.printStackTrace(str, th);
        }
    }

    private void pathFeatureQuery() {
        int i;
        try {
            JSONObject jSONObject = new JSONObject(AntSportsRpcCall.pathFeatureQuery());
            if (jSONObject.optBoolean("success")) {
                JSONObject jSONObject2 = jSONObject.getJSONObject("path");
                String string = jSONObject2.getString("pathId");
                String string2 = jSONObject2.getString("title");
                int i2 = jSONObject2.getInt("minGoStepCount");
                if (jSONObject.has("userPath")) {
                    JSONObject jSONObject3 = jSONObject.getJSONObject("userPath");
                    String string3 = jSONObject3.getString("userPathRecordStatus");
                    if ("COMPLETED".equals(string3)) {
                        pathMapHomepage(string);
                        pathMapJoin(string2, string);
                    } else if ("GOING".equals(string3)) {
                        pathMapHomepage(string);
                        String formatDate = Log.getFormatDate();
                        JSONObject jSONObject4 = new JSONObject(AntSportsRpcCall.stepQuery(formatDate, string));
                        if (jSONObject4.optBoolean("success") && (i = jSONObject4.getInt("canGoStepCount")) >= i2) {
                            tiyubizGo(formatDate, string2, i, string, jSONObject3.getString("userPathRecordId"));
                        }
                    }
                } else {
                    pathMapJoin(string2, string);
                }
            } else {
                Log.i(TAG, jSONObject.getString("resultDesc"));
            }
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "pathFeatureQuery err:");
            Log.printStackTrace(str, th);
        }
    }

    private void pathMapHomepage(String str) {
        try {
            String strPathMapHomepage = AntSportsRpcCall.pathMapHomepage(str);
            JSONObject jSONObject = new JSONObject(strPathMapHomepage);
            if (jSONObject.optBoolean("success")) {
                if (jSONObject.has("userPathGoRewardList")) {
                    JSONArray jSONArray = jSONObject.getJSONArray("userPathGoRewardList");
                    for (int i = 0; i < jSONArray.length(); i++) {
                        JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                        if ("UNRECEIVED".equals(jSONObject2.getString(NotificationCompat.CATEGORY_STATUS))) {
                            JSONObject jSONObject3 = new JSONObject(AntSportsRpcCall.rewardReceive(str, jSONObject2.getString("userPathRewardId")));
                            if (jSONObject3.optBoolean("success")) {
                                JSONArray jSONArray2 = jSONObject3.getJSONObject("userPathRewardDetail").getJSONArray("userPathRewardRightsList");
                                StringBuilder sb = new StringBuilder();
                                for (int i2 = 0; i2 < jSONArray2.length(); i2++) {
                                    JSONObject jSONObject4 = jSONArray2.getJSONObject(i2).getJSONObject("rightsContent");
                                    sb.append(jSONObject4.getString("name"));
                                    sb.append("*");
                                    sb.append(jSONObject4.getInt("count"));
                                }
                                Log.other("文体宝箱🎁[" + ((Object) sb) + "]#[" + UserIdMap.getShowName(UserIdMap.getCurrentUid()) + "]");
                            } else {
                                Log.record("文体中心开宝箱");
                                Log.i(jSONObject3.toString());
                            }
                        }
                    }
                    return;
                }
                return;
            }
            Log.record("文体中心开宝箱");
            Log.i(strPathMapHomepage);
        } catch (Throwable th) {
            String str2 = TAG;
            Log.i(str2, "pathMapHomepage err:");
            Log.printStackTrace(str2, th);
        }
    }

    private void pathMapJoin(String str, String str2) {
        try {
            JSONObject jSONObject = new JSONObject(AntSportsRpcCall.pathMapJoin(str2));
            if (jSONObject.optBoolean("success")) {
                Log.other("加入线路🚶🏻\u200d♂️[" + str + "]");
                pathFeatureQuery();
            } else {
                Log.i(TAG, jSONObject.toString());
            }
        } catch (Throwable th) {
            String str3 = TAG;
            Log.i(str3, "pathMapJoin err:");
            Log.printStackTrace(str3, th);
        }
    }

    private void tiyubizGo(String str, String str2, int i, String str3, String str4) {
        try {
            String strTiyubizGo = AntSportsRpcCall.tiyubizGo(str, i, str3, str4);
            JSONObject jSONObject = new JSONObject(strTiyubizGo);
            if (jSONObject.optBoolean("success")) {
                JSONObject jSONObject2 = jSONObject.getJSONObject("userPath");
                Log.other("行走线路🚶🏻\u200d♂️[" + str2 + "]#前进了" + jSONObject2.getInt("userPathRecordForwardStepCount") + "步");
                pathMapHomepage(str3);
                if ("COMPLETED".equals(jSONObject2.getString("userPathRecordStatus"))) {
                    Log.other("完成线路🚶🏻\u200d♂️[" + str2 + "]");
                    pathFeatureQuery();
                }
            } else {
                Log.i(TAG, strTiyubizGo);
            }
        } catch (Throwable th) {
            String str5 = TAG;
            Log.i(str5, "tiyubizGo err:");
            Log.printStackTrace(str5, th);
        }
    }

    private void sportsInfo() {
        Integer numValueOf;
        JSONArray jSONArrayOptJSONArray = null;
        try {
            JSONObject jSONObject = new JSONObject(AntSportsRpcCall.queryWalkStep());
            numValueOf = (MessageUtil.checkResultCode(TAG, jSONObject).booleanValue() && jSONObject.has("stepCount")) ? Integer.valueOf(jSONObject.optInt("stepCount")) : null;
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "sportsInfo 查询失败:");
            Log.printStackTrace(str, th);
        }
        StringBuilder sb = new StringBuilder();
        try {
            JSONObject jSONObject2 = new JSONObject(AntSportsRpcCall.walkRankingDailySteps());
            if (MessageUtil.checkResultCode(TAG, jSONObject2).booleanValue()) {
                JSONObject jSONObjectOptJSONObject = jSONObject2.optJSONObject("rank");
                if (jSONObjectOptJSONObject != null) {
                    jSONArrayOptJSONArray = jSONObjectOptJSONObject.optJSONArray("data");
                }
                if (jSONArrayOptJSONArray != null) {
                    int iMin = Math.min(3, jSONArrayOptJSONArray.length());
                    for (int i = 0; i < iMin; i++) {
                        JSONObject jSONObjectOptJSONObject2 = jSONArrayOptJSONArray.optJSONObject(i);
                        if (jSONObjectOptJSONObject2 != null) {
                            sb.append("第");
                            sb.append(i + 1);
                            sb.append("[");
                            sb.append(UserIdMap.getShowName(jSONObjectOptJSONObject2.optString("userId", "")));
                            sb.append("]");
                            sb.append(jSONObjectOptJSONObject2.optInt("steps"));
                            sb.append("步;");
                        }
                    }
                }
            }
        } catch (Throwable th2) {
            String str2 = TAG;
            Log.i(str2, "sportsInfo 榜单查询失败:");
            Log.printStackTrace(str2, th2);
        }
        Log.info("运动步数🏃[" + UserIdMap.getShowName(UserIdMap.getCurrentUid()) + "]今日步数" + Log.n(numValueOf) + ";" + ((Object) sb));
    }

    /* JADX WARN: Unreachable blocks removed: 2, instructions: 2 */
    /*  JADX ERROR: Type inference failed
        jadx.core.utils.exceptions.JadxOverflowException: Type inference error: updates count limit reached with updateSeq = 9511. Try increasing type updates limit count.
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:79)
        */
    private void clubInfo(org.json.JSONObject r25) {
        /*
            Method dump skipped, instruction units count: 951
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.github.lazyimmortal.sesame.model.task.antSports.AntSports.clubInfo(org.json.JSONObject):void");
    }

    private void queryClubHome() {
        try {
            JSONObject jSONObject = new JSONObject(AntSportsRpcCall.queryClubHome());
            if (MessageUtil.checkResultCode(TAG, jSONObject).booleanValue()) {
                clubInfo(jSONObject);
                JSONObject jSONObject2 = jSONObject.getJSONObject("mainRoom");
                if (jSONObject2.has("bubbleList")) {
                    JSONArray jSONArray = jSONObject2.getJSONArray("bubbleList");
                    for (int i = 0; i < jSONArray.length(); i++) {
                        collectBubble(jSONArray.getJSONObject(i).getString("bubbleId"), "[买卖]");
                        TimeUtil.sleep(200L);
                    }
                }
                JSONObject jSONObject3 = new JSONObject(AntSportsRpcCall.queryClubHome());
                if (MessageUtil.checkResultCode(TAG, jSONObject3).booleanValue()) {
                    JSONArray jSONArray2 = jSONObject3.getJSONArray("roomList");
                    for (int i2 = 0; i2 < jSONArray2.length(); i2++) {
                        JSONObject jSONObject4 = jSONArray2.getJSONObject(i2);
                        String string = jSONObject4.getString("roomId");
                        if (jSONObject4.has("bubbleList")) {
                            JSONArray jSONArray3 = jSONObject4.getJSONArray("bubbleList");
                            for (int i3 = 0; i3 < jSONArray3.length(); i3++) {
                                collectBubble(jSONArray3.getJSONObject(i3).getString("bubbleId"), "[训练]");
                                TimeUtil.sleep(200L);
                            }
                        }
                        if (jSONObject4.getJSONArray("memberList").length() == 0 && this.clubTradeMemberType.getValue().intValue() != 0) {
                            queryMemberPriceRanking(string);
                            TimeUtil.sleep(200L);
                        }
                    }
                    TimeUtil.sleep(200L);
                    JSONObject jSONObject5 = new JSONObject(AntSportsRpcCall.queryClubHome());
                    if (MessageUtil.checkResultCode(TAG, jSONObject5).booleanValue()) {
                        JSONArray jSONArray4 = jSONObject5.getJSONArray("roomList");
                        for (int i4 = 0; i4 < jSONArray4.length(); i4++) {
                            JSONObject jSONObject6 = jSONArray4.getJSONObject(i4);
                            if (jSONObject6.getJSONArray("memberList").length() != 0) {
                                trainMember(jSONObject6.getJSONArray("memberList").getJSONObject(0));
                                TimeUtil.sleep(1000L);
                            }
                        }
                        JSONObject jSONObject7 = new JSONObject(AntSportsRpcCall.queryClubHome());
                        if (MessageUtil.checkResultCode(TAG, jSONObject7).booleanValue()) {
                            JSONArray jSONArray5 = jSONObject7.getJSONArray("roomList");
                            for (int i5 = 0; i5 < jSONArray5.length(); i5++) {
                                JSONObject jSONObject8 = jSONArray5.getJSONObject(i5);
                                final String string2 = jSONObject8.getString("roomId");
                                if (jSONObject8.getJSONArray("memberList").length() != 0) {
                                    JSONObject jSONObject9 = jSONObject8.getJSONArray("memberList").getJSONObject(0).getJSONObject("trainInfo");
                                    if (jSONObject9.has("gmtEnd")) {
                                        final Long lValueOf = Long.valueOf(jSONObject9.getLong("gmtEnd"));
                                        addChildTask(new ModelTask.ChildModelTask(string2, "", new Runnable() { // from class: io.github.lazyimmortal.sesame.model.task.antSports.AntSports$$ExternalSyntheticLambda2
                                            @Override // java.lang.Runnable
                                            public final void run() {
                                                this.f$0.m127xd1d0f244(string2, lValueOf);
                                            }
                                        }, Long.valueOf(System.currentTimeMillis() + TimeUnit.SECONDS.toMillis(10L))));
                                    }
                                    TimeUtil.sleep(200L);
                                }
                            }
                        }
                    }
                }
            }
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "queryClubHome err:");
            Log.printStackTrace(str, th);
        }
    }

    private void collectBubble(String str, String str2) {
        try {
            JSONObject jSONObject = new JSONObject(AntSportsRpcCall.collectBubble(str));
            if (jSONObject.optBoolean("success")) {
                Log.other("好友大战🧊收取" + str2 + "获得[" + jSONObject.getJSONObject("data").getString("changeAmount") + "运动能量]#[" + UserIdMap.getShowName(UserIdMap.getCurrentUid()) + "]");
            }
        } catch (Throwable th) {
            String str3 = TAG;
            Log.i(str3, "collectBubble err:");
            Log.printStackTrace(str3, th);
        }
    }

    private void trainMember(JSONObject jSONObject) {
        try {
            String string = jSONObject.getString("memberId");
            String string2 = jSONObject.getString("originBossId");
            JSONObject jSONObject2 = jSONObject.getJSONObject("trainInfo");
            String showName = UserIdMap.getShowName(string2);
            if (!jSONObject2.getBoolean("training")) {
                String str = TrainItemType.itemTypes[this.clubTrainItemType.getValue().intValue()];
                if (StringUtil.isEmpty(str)) {
                    return;
                }
                String str2 = TrainItemType.nickNames[this.clubTrainItemType.getValue().intValue()];
                JSONObject jSONObject3 = new JSONObject(AntSportsRpcCall.queryTrainItem());
                String str3 = TAG;
                if (!MessageUtil.checkResultCode(str3, jSONObject3).booleanValue()) {
                    return;
                }
                if (jSONObject3.has("bizId")) {
                    String string3 = jSONObject3.getString("bizId");
                    String string4 = jSONObject3.getJSONObject("taskDetail").getString("taskId");
                    JSONObject jSONObject4 = new JSONObject(AntSportsRpcCall.DoubletrainMember(str, string3, string, string2));
                    Log.other("好友大战💪训练[" + showName + "]" + str2 + "[" + UserIdMap.getShowName(UserIdMap.getCurrentUid()) + "]");
                    if (!MessageUtil.checkResultCode(str3, jSONObject4).booleanValue()) {
                        return;
                    }
                    TimeUtil.sleep(7000L);
                    if (!MessageUtil.checkSuccess(str3, new JSONObject(AntSportsRpcCall.duublecompleteTask(string3, "SHOW_AD", string4))).booleanValue()) {
                        return;
                    }
                    Log.other("好友大战💪翻倍训练[" + showName + "]" + str2 + "[" + UserIdMap.getShowName(UserIdMap.getCurrentUid()) + "]");
                } else {
                    if (!MessageUtil.checkResultCode(str3, new JSONObject(AntSportsRpcCall.trainMember(str, string, string2))).booleanValue()) {
                        return;
                    }
                    Log.other("好友大战💪训练[" + showName + "]" + str2 + "[" + UserIdMap.getShowName(UserIdMap.getCurrentUid()) + "]");
                }
            }
        } catch (Throwable th) {
            String str4 = TAG;
            Log.i(str4, "trainMember err:");
            Log.printStackTrace(str4, th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: autoTrainMember, reason: merged with bridge method [inline-methods] */
    public void m127xd1d0f244(final String str, Long l) {
        String str2 = "TRAIN|" + str;
        if (hasChildTask(str2).booleanValue()) {
            return;
        }
        addChildTask(new ModelTask.ChildModelTask(str2, "TRAIN", new Runnable() { // from class: io.github.lazyimmortal.sesame.model.task.antSports.AntSports$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                AntSportsRpcCall.queryClubRoom(str);
            }
        }, l));
        Log.record("蹲点训练💪添加[" + Integer.parseInt(str.substring(2, 8)) + "号房]在[" + TimeUtil.getCommonDate(l) + "]执行");
    }

    private void queryMemberPriceRanking(String str) {
        try {
            JSONObject jSONObject = new JSONObject(AntSportsRpcCall.queryClubHome());
            String str2 = TAG;
            if (MessageUtil.checkResultCode(str2, jSONObject).booleanValue()) {
                int i = jSONObject.getJSONObject("assetsInfo").getInt("energyBalance");
                TimeUtil.sleep(200L);
                JSONObject jSONObject2 = new JSONObject(AntSportsRpcCall.queryMemberPriceRankingEnergy(i));
                if (MessageUtil.checkResultCode(str2, jSONObject2).booleanValue()) {
                    int i2 = jSONObject2.getInt("energyBalance");
                    JSONArray jSONArray = jSONObject2.getJSONObject("rank").getJSONArray("data");
                    for (int i3 = 0; i3 < jSONArray.length(); i3++) {
                        JSONObject jSONObject3 = jSONArray.getJSONObject(i3);
                        if (jSONObject3.getInt("price") <= i2) {
                            String string = jSONObject3.getString("originBossId");
                            if (!jSONObject3.getString("currentBossId").equals(UserIdMap.getCurrentUid())) {
                                boolean zContains = this.clubTradeMemberList.getValue().contains(string);
                                boolean z = true;
                                if (this.clubTradeMemberType.getValue().intValue() != 1) {
                                    zContains = !zContains;
                                }
                                if (zContains) {
                                    JSONObject jSONObject4 = new JSONObject(AntSportsRpcCall.queryClubHome());
                                    if (!MessageUtil.checkResultCode(TAG, jSONObject4).booleanValue()) {
                                        return;
                                    }
                                    JSONArray jSONArray2 = jSONObject4.getJSONArray("roomList");
                                    for (int i4 = 0; i4 < jSONArray2.length(); i4++) {
                                        JSONObject jSONObject5 = jSONArray2.getJSONObject(i4);
                                        if (jSONObject5.getJSONArray("memberList").length() != 0 && string.equals(jSONObject5.getJSONArray("memberList").getJSONObject(0).getString("originBossId"))) {
                                            z = false;
                                        }
                                    }
                                    if (z) {
                                        buyMember(str, queryClubMember(jSONObject3));
                                        return;
                                    }
                                }
                            }
                        }
                    }
                }
            }
        } catch (Throwable th) {
            String str3 = TAG;
            Log.i(str3, "queryMemberPriceRanking err:");
            Log.printStackTrace(str3, th);
        }
    }

    private JSONObject queryClubMember(JSONObject jSONObject) {
        try {
            JSONObject jSONObject2 = new JSONObject(AntSportsRpcCall.queryClubMember(jSONObject.getString("memberId"), jSONObject.getString("originBossId")));
            if (!MessageUtil.checkResultCode(TAG, jSONObject2).booleanValue()) {
                return null;
            }
            jSONObject.put("priceInfo", jSONObject2.getJSONObject("member").getJSONObject("priceInfo"));
            return jSONObject;
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "queryClubMember err:");
            Log.printStackTrace(str, th);
            return null;
        }
    }

    private Boolean buyMember(String str, JSONObject jSONObject) {
        if (jSONObject == null) {
            return false;
        }
        try {
            String string = jSONObject.getString("currentBossId");
            String showName = UserIdMap.getShowName(string) != null ? UserIdMap.getShowName(string) : string;
            String string2 = jSONObject.getString("memberId");
            String string3 = jSONObject.getString("originBossId");
            if (!MessageUtil.checkResultCode(TAG, new JSONObject(AntSportsRpcCall.buyMember(string, string2, string3, jSONObject.getJSONObject("priceInfo"), str))).booleanValue()) {
                return false;
            }
            String showName2 = UserIdMap.getShowName(string3);
            int i = jSONObject.getInt("price");
            Log.other("好友大战🉐抢购[" + showName2 + "]来自[" + showName + "]花费[" + i + "健康能量]#[" + UserIdMap.getShowName(UserIdMap.getCurrentUid()) + "]");
            StringBuilder sb = new StringBuilder("好友大战🉐抢购[");
            sb.append(showName2);
            sb.append("]来自[");
            sb.append(showName);
            sb.append("]花费[");
            sb.append(i);
            sb.append("健康能量]");
            Toast.show(sb.toString());
            return true;
        } catch (Throwable th) {
            String str2 = TAG;
            Log.i(str2, "buyMember err:");
            Log.printStackTrace(str2, th);
            return false;
        }
    }

    private void coinExchangeItem(String str) {
        try {
            JSONObject jSONObject = new JSONObject(AntSportsRpcCall.queryItemDetail(str));
            String str2 = TAG;
            if (MessageUtil.checkSuccess(str2, jSONObject).booleanValue()) {
                JSONObject jSONObject2 = jSONObject.getJSONObject("data");
                if ("OK".equals(jSONObject2.optString("exchangeBtnStatus"))) {
                    JSONObject jSONObject3 = jSONObject2.getJSONObject("itemBaseInfo");
                    String string = jSONObject3.getString("itemTitle");
                    int i = jSONObject3.getInt("valueCoinCount");
                    JSONObject jSONObject4 = new JSONObject(AntSportsRpcCall.exchangeItem(str, i));
                    if (MessageUtil.checkSuccess(str2, jSONObject4).booleanValue() && jSONObject4.getJSONObject("data").optBoolean("exgSuccess")) {
                        Log.other("运动好礼🎐兑换[" + string + "]花费" + i + "运动币");
                    }
                }
            }
        } catch (Throwable th) {
            String str3 = TAG;
            Log.i(str3, "trainMember err:");
            Log.printStackTrace(str3, th);
        }
    }

    public static void receiveSpecialPrize(String str, String str2) {
        int i;
        try {
            JSONObject jSONObject = new JSONObject(AntSportsRpcCall.receiveSpecialPrize(str));
            if (!MessageUtil.checkSuccess(TAG, jSONObject).booleanValue() || (i = jSONObject.getJSONObject("data").getInt("modifyCount")) <= 0) {
                return;
            }
            Log.other("悦动健康🚑️领取奖励[" + str2 + "]#获得[" + i + "g健康能量]");
        } catch (Exception e) {
            String str3 = TAG;
            Log.i(str3, "receiveSpecialPrize err:");
            Log.printStackTrace(str3, e);
        }
    }

    public static boolean signIn() {
        try {
            JSONObject jSONObject = new JSONObject(AntSportsRpcCall.takeSign());
            if (!MessageUtil.checkSuccess(TAG, jSONObject).booleanValue()) {
                return false;
            }
            JSONObject jSONObject2 = jSONObject.getJSONObject("data");
            Log.other("悦动健康🚑️连续签到[第" + jSONObject2.getJSONObject("continuousSignInfo").getInt("continuitySignedDayCount") + "天]#获得[" + jSONObject2.getJSONObject("continuousDoSignInVO").getInt("rewardAmount") + "g健康能量]#[" + UserIdMap.getShowName(UserIdMap.getCurrentUid()) + "]");
            return true;
        } catch (Exception e) {
            String str = TAG;
            Log.i(str, "takeSign err:");
            Log.printStackTrace(str, e);
            return false;
        }
    }

    public static boolean receiveTaskReward(JSONObject jSONObject) {
        try {
            jSONObject.put("scene", "MED_TASK_HALL").put("source", "jkdprizesign");
            JSONObject jSONObject2 = new JSONObject(AntSportsRpcCall.neverlandtaskReceive("[" + jSONObject.toString() + "]"));
            if (!MessageUtil.checkSuccess(TAG, jSONObject2).booleanValue()) {
                return false;
            }
            Log.other("悦动健康🚑️领取奖励[" + jSONObject.getString("title") + "]#获得" + parseRewards(jSONObject2.getJSONObject("data").getJSONArray("userItems")));
            return true;
        } catch (Exception e) {
            String str = TAG;
            Log.i(str, "taskReceive err:");
            Log.printStackTrace(str, e);
            return false;
        }
    }

    public static boolean completeTask(JSONObject jSONObject) {
        try {
            jSONObject.put("scene", "MED_TASK_HALL");
            if (!MessageUtil.checkSuccess(TAG, new JSONObject(AntSportsRpcCall.neverlandtaskSend("[" + jSONObject.toString() + "]"))).booleanValue()) {
                return false;
            }
            Log.other("悦动健康🚑️完成任务[" + jSONObject.getString("title") + "]");
            TimeUtil.sleep(1000L);
            return true;
        } catch (Exception e) {
            String str = TAG;
            Log.i(str, "taskSend err:");
            Log.printStackTrace(str, e);
            return false;
        }
    }

    public static boolean walkGrid(String str, String str2, String str3) {
        try {
            JSONObject jSONObject = new JSONObject(AntSportsRpcCall.neverlandwalkGrid(str, str2));
            if (MessageUtil.checkSuccess(TAG, jSONObject).booleanValue()) {
                JSONObject jSONObject2 = jSONObject.getJSONObject("data");
                int i = jSONObject2.getJSONArray("mapAwards").getJSONObject(0).getInt("step");
                int i2 = jSONObject2.getInt("leftCount");
                Log.other("悦动健康🚑️能量泵[" + str3 + "]#前进[" + i + "步]");
                ArrayList<String> rewards = parseRewards(jSONObject2.getJSONArray("userItems"));
                if (!rewards.isEmpty()) {
                    Log.other("悦动健康🚑️能量泵[" + str3 + "]#获得" + rewards);
                }
                return i2 >= 5 && jSONObject2.getJSONObject("starData").getInt("curr") < jSONObject2.getJSONObject("starData").getInt("count");
            }
        } catch (Exception e) {
            String str4 = TAG;
            Log.i(str4, "walkGrid err:");
            Log.printStackTrace(str4, e);
        }
        return false;
    }

    public static int build(String str, String str2, String str3, int i) {
        try {
            JSONObject jSONObject = new JSONObject(AntSportsRpcCall.build(str, str2, i));
            if (!MessageUtil.checkSuccess(TAG, jSONObject).booleanValue()) {
                return 0;
            }
            JSONObject jSONObject2 = jSONObject.getJSONObject("data");
            JSONObject jSONObject3 = jSONObject2.getJSONObject("endStageInfo");
            int iOptInt = jSONObject3.optInt("buildingEnergyFinal");
            String strOptString = jSONObject3.optString("buildingId");
            int iOptInt2 = jSONObject3.optInt("buildingEnergyProcess");
            Log.other("悦动健康🚑️能量泵[" + str3 + "]建造[" + strOptString + "]进度(" + iOptInt2 + "/" + iOptInt + ")#消耗" + (i * 5) + "g能量");
            ArrayList<String> rewards = parseRewards(jSONObject2.getJSONArray("rewards"));
            if (!rewards.isEmpty()) {
                Log.other("悦动健康🚑️能量泵[" + str3 + "]#获得" + rewards);
            }
            return iOptInt - iOptInt2;
        } catch (Exception e) {
            String str4 = TAG;
            Log.i(str4, "build err:");
            Log.printStackTrace(str4, e);
            return 0;
        }
    }

    public static boolean receiveBrowseReward(JSONObject jSONObject) {
        if (jSONObject.has("encryptValue") && jSONObject.has("energyNum")) {
            try {
                jSONObject.put("type", "LIGHT_FEEDS_TASK");
                JSONObject jSONObject2 = new JSONObject(AntSportsRpcCall.neverlandenergyReceive("[" + jSONObject.toString() + "]"));
                if (MessageUtil.checkSuccess(TAG, jSONObject2).booleanValue()) {
                    JSONArray jSONArray = jSONObject2.getJSONObject("data").getJSONArray("prizes");
                    int i = 0;
                    for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                        i += jSONArray.getJSONObject(i2).getInt("prizeCount");
                    }
                    Log.other("悦动健康🚑️完成任务[" + jSONObject.optString("title", "浏览商品15s得健康能量") + "]#获得[" + i + "g健康能量]");
                    return true;
                }
            } catch (Exception e) {
                String str = TAG;
                Log.i(str, "energyReceive err:");
                Log.printStackTrace(str, e);
            }
        }
        return false;
    }

    public static void receiveOfflineReward() {
        try {
            JSONObject jSONObject = new JSONObject(AntSportsRpcCall.offlineAward());
            if (MessageUtil.checkSuccess(TAG, jSONObject).booleanValue()) {
                ArrayList<String> rewards = parseRewards(jSONObject.getJSONObject("data").getJSONArray("userItems"));
                if (rewards.isEmpty()) {
                    return;
                }
                Log.other("悦动健康🚑️领取奖励[离线奖励]#获得" + rewards);
            }
        } catch (Exception e) {
            String str = TAG;
            Log.i(str, "offlineAward err:");
            Log.printStackTrace(str, e);
        }
    }

    public static ArrayList<String> parseRewards(JSONArray jSONArray) {
        ArrayList<String> arrayList = new ArrayList<>();
        for (int i = 0; i < jSONArray.length(); i++) {
            try {
                JSONObject jSONObject = jSONArray.getJSONObject(i);
                int iOptInt = jSONObject.optInt("modifyCount");
                if (iOptInt > 0) {
                    String str = "H1".equals(jSONObject.optString("itemId")) ? "g" : "";
                    String strOptString = jSONObject.optString("name", "");
                    if (!strOptString.isEmpty()) {
                        arrayList.add(iOptInt + str + strOptString);
                    }
                }
            } catch (Exception e) {
                String str2 = TAG;
                Log.i(str2, "parseRewards err:");
                Log.printStackTrace(str2, e);
            }
        }
        return arrayList;
    }

    public static void receiveBubbleReward(String str, String str2) {
        try {
            JSONObject jSONObject = new JSONObject(AntSportsRpcCall.neverlandpickBubbleTaskEnergy(str));
            if (MessageUtil.checkSuccess(TAG, jSONObject).booleanValue()) {
                Log.other("悦动健康🚑️领取奖励[" + str2 + "]#获得[" + jSONObject.getJSONObject("data").getString("changeAmount") + "g健康能量]");
            }
        } catch (Exception e) {
            String str3 = TAG;
            Log.i(str3, "pickBubbleTaskEnergy err:");
            Log.printStackTrace(str3, e);
        }
    }

    /* JADX WARN: Code duplicated, block: B:101:0x02a9  */
    /* JADX WARN: Code duplicated, block: B:73:0x0199  */
    /* JADX WARN: Code duplicated, block: B:74:0x019a A[Catch: Exception -> 0x02ae, TryCatch #0 {Exception -> 0x02ae, blocks: (B:3:0x0006, B:6:0x001c, B:8:0x002c, B:9:0x002f, B:12:0x003e, B:14:0x004c, B:16:0x005e, B:18:0x0064, B:21:0x0077, B:23:0x007d, B:26:0x008f, B:28:0x009f, B:30:0x00a5, B:32:0x00b7, B:34:0x00bd, B:36:0x00cb, B:38:0x00dd, B:40:0x00e3, B:42:0x00f5, B:44:0x0108, B:49:0x011a, B:51:0x0120, B:53:0x0127, B:55:0x0138, B:57:0x0146, B:59:0x014c, B:71:0x018b, B:74:0x019a, B:76:0x01a8, B:78:0x01ae, B:63:0x0159, B:65:0x0168, B:67:0x0176, B:69:0x017c, B:70:0x0183, B:82:0x01c6, B:84:0x01d4, B:86:0x01da, B:88:0x01fa, B:90:0x020e, B:92:0x021c, B:93:0x0223, B:95:0x0229, B:97:0x023b, B:99:0x0256), top: B:106:0x0006 }] */
    public void queryBaseInfoAndProcess() {
        int iBuild;
        try {
            JSONObject jSONObject = new JSONObject(AntSportsRpcCall.queryBaseinfo());
            if (MessageUtil.checkSuccess(TAG, jSONObject).booleanValue()) {
                JSONObject jSONObject2 = jSONObject.getJSONObject("data");
                if (jSONObject2.getJSONArray("offlineAwards").length() > 0) {
                    receiveOfflineReward();
                }
                long j = 2000;
                if (!jSONObject2.optBoolean("newGame") && this.WALK_GRID.getValue().booleanValue()) {
                    String string = jSONObject2.getString("branchId");
                    String string2 = jSONObject2.getString("mapId");
                    String string3 = jSONObject2.getString("mapName");
                    if (canWalkGrid(string, string2) && queryUserEnergy() >= 5 && queryUserEnergy() >= this.WALK_GRID_LIMIT.getValue().intValue()) {
                        int i = 0;
                        while (walkGrid(string, string2, string3)) {
                            TimeUtil.sleep(2000L);
                            if (this.WALK_GRID_MAX.getValue().intValue() != 0 && ((i = i + 1) >= this.WALK_GRID_MAX.getValue().intValue() || queryUserEnergy() < 5 || queryUserEnergy() <= this.WALK_GRID_LIMIT.getValue().intValue())) {
                                break;
                            }
                        }
                    }
                }
                if (jSONObject2.optBoolean("newGame") && this.WALK_GRID.getValue().booleanValue()) {
                    String string4 = jSONObject2.getString("branchId");
                    String string5 = jSONObject2.getString("mapId");
                    String string6 = jSONObject2.getString("mapName");
                    if (canBuild(string5) && queryUserEnergy() >= 5 && queryUserEnergy() >= this.WALK_GRID_LIMIT.getValue().intValue()) {
                        int iBuild2 = build(string4, string5, string6, 1);
                        if (1 >= this.WALK_GRID_MAX.getValue().intValue() && this.WALK_GRID_MAX.getValue().intValue() != 0) {
                            return;
                        }
                        int i2 = 1;
                        while (iBuild2 > 0 && canBuild(string5)) {
                            TimeUtil.sleep(j);
                            if (iBuild2 >= 50 && ((this.WALK_GRID_MAX.getValue().intValue() - i2 >= 10 || this.WALK_GRID_MAX.getValue().intValue() == 0) && queryUserEnergy() >= 50)) {
                                iBuild = build(string4, string5, string6, 10);
                                i2 += 10;
                            } else {
                                if (iBuild2 >= 25 && ((this.WALK_GRID_MAX.getValue().intValue() - i2 >= 5 || this.WALK_GRID_MAX.getValue().intValue() == 0) && queryUserEnergy() >= 25)) {
                                    iBuild = build(string4, string5, string6, 5);
                                    i2 += 5;
                                } else {
                                    i2++;
                                    iBuild2 = build(string4, string5, string6, 1);
                                }
                                if (this.WALK_GRID_MAX.getValue().intValue() != 0) {
                                    if (i2 < this.WALK_GRID_MAX.getValue().intValue() || queryUserEnergy() < 5 || queryUserEnergy() <= this.WALK_GRID_LIMIT.getValue().intValue()) {
                                        break;
                                        break;
                                        break;
                                    }
                                }
                                j = 2000;
                            }
                            iBuild2 = iBuild;
                            if (this.WALK_GRID_MAX.getValue().intValue() != 0) {
                                if (i2 < this.WALK_GRID_MAX.getValue().intValue()) {
                                    break;
                                }
                            }
                            j = 2000;
                        }
                    }
                }
                if (this.awardspecialActivityReceive.getValue().booleanValue() && jSONObject2.optBoolean("newGame")) {
                    String string7 = jSONObject2.getString("branchId");
                    String string8 = jSONObject2.getString("mapId");
                    jSONObject2.getString("mapName");
                    JSONObject jSONObject3 = new JSONObject(AntSportsRpcCall.queryMapDetail(string8));
                    if (MessageUtil.checkSuccess(TAG, jSONObject3).booleanValue()) {
                        JSONObject jSONObject4 = jSONObject3.getJSONObject("data").getJSONObject("baseMapInfo");
                        if (jSONObject4.getInt("currentPercent") == 100 && jSONObject4.optString(NotificationCompat.CATEGORY_STATUS).equals("FINISH_NOT_REWARD")) {
                            JSONArray jSONArray = jSONObject4.getJSONArray("rewards");
                            for (int i3 = 0; i3 < jSONArray.length(); i3++) {
                                JSONObject jSONObject5 = jSONArray.getJSONObject(i3);
                                if (jSONObject5.optString("prizeStatus").equals("待领取")) {
                                    JSONObject jSONObject6 = new JSONObject(AntSportsRpcCall.mapChooseReward(string7, string8, jSONObject5.optString("itemId")));
                                    if (MessageUtil.checkSuccess(TAG, jSONObject6).booleanValue()) {
                                        JSONObject jSONObject7 = jSONObject6.getJSONObject("data").getJSONObject("specialActivityReceiveResult").getJSONArray("prizes").getJSONObject(0);
                                        Log.other("悦动健康🚑️领取奖励[" + jSONObject7.optString("subTitle") + "]#获得[" + jSONObject7.optString("title") + "]#[" + UserIdMap.getShowName(UserIdMap.getCurrentUid()) + "]");
                                    }
                                }
                            }
                        }
                    }
                }
            }
        } catch (Exception e) {
            String str = TAG;
            Log.i(str, "queryBaseInfo err:");
            Log.printStackTrace(str, e);
        }
    }

    public static void queryAndProcessBubbleTasks() {
        try {
            JSONObject jSONObject = new JSONObject(AntSportsRpcCall.queryBubbleTask());
            if (MessageUtil.checkSuccess(TAG, jSONObject).booleanValue()) {
                JSONArray jSONArray = jSONObject.getJSONObject("data").getJSONArray("bubbleTaskVOS");
                for (int i = 0; i < jSONArray.length(); i++) {
                    JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                    if (jSONObject2.has("bubbleTaskStatus")) {
                        String string = jSONObject2.getString("title");
                        String string2 = jSONObject2.getString("bubbleTaskStatus");
                        if (string2.equals("INIT")) {
                            if ("AD_BALL".equals(jSONObject2.getString("taskId"))) {
                                jSONObject2.put("lightTaskId", "adBubble");
                                if (!receiveBrowseReward(jSONObject2)) {
                                    break;
                                }
                                TimeUtil.sleep(1000L);
                                queryAndProcessBubbleTasks();
                                break;
                            }
                            if ("STRATEGY_BALL".equals(jSONObject2.getString("taskId"))) {
                                receiveSpecialPrize(jSONObject2.getString("taskId") + "_ACTIVITY", string);
                                break;
                            }
                            if (!"SIGN_BALL".equals(jSONObject2.getString("taskId"))) {
                                break;
                            }
                            signIn();
                            break;
                        }
                        if (string2.equals("TO_RECEIVE")) {
                            receiveBubbleReward(jSONObject2.getString("medEnergyBallInfoRecordId"), string);
                            break;
                        }
                    }
                }
            }
        } catch (Exception e) {
            String str = TAG;
            Log.i(str, "queryBubbleTask err:");
            Log.printStackTrace(str, e);
        }
    }

    public void exchangeBenefits() {
        int iQueryUserEnergy = queryUserEnergy();
        boolean z = true;
        int i = 1;
        while (z) {
            try {
                if (Status.hasFlagToday("sport::exchangeBenefits_ERROR").booleanValue()) {
                    return;
                }
                JSONObject jSONObject = new JSONObject(AntSportsRpcCall.queryItemList(i));
                if (jSONObject.optString("errorMessage").equals("系统繁忙，请稍后再试。")) {
                    Status.flagToday("sport::exchangeBenefits_ERROR");
                    return;
                }
                if (!MessageUtil.checkSuccess(TAG, jSONObject).booleanValue()) {
                    return;
                }
                JSONObject jSONObject2 = jSONObject.getJSONObject("data");
                boolean zOptBoolean = jSONObject2.optBoolean("hasMore");
                if (!jSONObject2.has("itemVOList")) {
                    return;
                }
                JSONArray jSONArray = jSONObject2.getJSONArray("itemVOList");
                for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                    JSONObject jSONObject3 = jSONArray.getJSONObject(i2);
                    if ("benefitItem".equals(jSONObject3.getString("materialType"))) {
                        String string = jSONObject3.getString("benefitId");
                        String string2 = jSONObject3.getString("itemId");
                        String string3 = jSONObject3.getString("itemName");
                        int i3 = jSONObject3.getInt("remainCount");
                        int i4 = Integer.parseInt(jSONObject3.getString("salePoint"));
                        if (i3 >= 1 && this.neverLandBenefitList.contains(string2).booleanValue() && iQueryUserEnergy >= i4 && jSONObject3.getString(NotificationCompat.CATEGORY_STATUS).equals("ITEM_SALE")) {
                            if (MessageUtil.checkSuccess(TAG, new JSONObject(AntSportsRpcCall.createOrder(string, string2))).booleanValue()) {
                                Log.other("悦动健康🚑️兑换权益[" + string3 + "]#消耗[" + i4 + "g健康能量]");
                                iQueryUserEnergy -= i4;
                            }
                        }
                    }
                }
                i++;
                z = zOptBoolean;
            } catch (Exception e) {
                String str = TAG;
                Log.i(str, "exchangeBenefits err:");
                Log.printStackTrace(str, e);
                return;
            }
        }
    }

    public static boolean canWalkGrid(String str, String str2) {
        try {
            JSONObject jSONObject = new JSONObject(AntSportsRpcCall.queryMapInfo(str, str2));
            if (MessageUtil.checkSuccess(TAG, jSONObject).booleanValue()) {
                JSONObject jSONObject2 = jSONObject.getJSONObject("data");
                JSONObject jSONObject3 = jSONObject2.getJSONObject("starData");
                return jSONObject2.getBoolean("canWalk") && jSONObject3.getInt("curr") < jSONObject3.getInt("count");
            }
        } catch (Exception e) {
            String str3 = TAG;
            Log.i(str3, "canWalkGrid err:");
            Log.printStackTrace(str3, e);
        }
        return false;
    }

    public static boolean canBuild(String str) {
        try {
            JSONObject jSONObject = new JSONObject(AntSportsRpcCall.queryMapDetail(str));
            if (MessageUtil.checkSuccess(TAG, jSONObject).booleanValue()) {
                JSONObject jSONObject2 = jSONObject.getJSONObject("data").getJSONObject("baseMapInfo");
                return jSONObject2.getBoolean("newIsLandFlg") && jSONObject2.getInt("currentPercent") < 100;
            }
        } catch (Exception e) {
            String str2 = TAG;
            Log.i(str2, "canBuild err:");
            Log.printStackTrace(str2, e);
        }
        return false;
    }

    public static void processSignIn() {
        if (Status.hasFlagToday("NeverLand::SIGN").booleanValue()) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(AntSportsRpcCall.querySign());
            if (MessageUtil.checkSuccess(TAG, jSONObject).booleanValue()) {
                JSONObject jSONObject2 = jSONObject.getJSONObject("data");
                if (jSONObject2.has("days")) {
                    JSONArray jSONArray = jSONObject2.getJSONArray("days");
                    for (int i = 0; i < jSONArray.length(); i++) {
                        JSONObject jSONObject3 = jSONArray.getJSONObject(i);
                        if (jSONObject3.optBoolean("current") && !jSONObject3.optBoolean("signIn") && signIn()) {
                            Status.flagToday("NeverLand::SIGN");
                            return;
                        }
                    }
                    if (jSONObject2.has("continuousSignInfo")) {
                        if (jSONObject2.getJSONObject("continuousSignInfo").optBoolean("signedToday") || signIn()) {
                            Status.flagToday("NeverLand::SIGN");
                        }
                    }
                }
            }
        } catch (Exception e) {
            String str = TAG;
            Log.i(str, "processSignIn err:");
            Log.printStackTrace(str, e);
        }
    }

    public static void processTaskCenter() {
        try {
            JSONObject jSONObject = new JSONObject(AntSportsRpcCall.queryTaskCenter());
            if (MessageUtil.checkSuccess(TAG, jSONObject).booleanValue()) {
                JSONArray jSONArray = jSONObject.getJSONObject("data").getJSONArray("taskCenterTaskVOS");
                boolean z = false;
                for (int i = 0; i < jSONArray.length(); i++) {
                    JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                    String string = jSONObject2.getString("taskStatus");
                    if ("SIGNUP_COMPLETE".equals(string)) {
                        String string2 = jSONObject2.getString("taskType");
                        if ("LIGHT_TASK".equals(string2)) {
                            if (jSONObject2.has("logExtMap")) {
                                jSONObject2.getJSONObject("logExtMap");
                            }
                        } else if ("PROMOKERNEL_TASK".equals(string2) && completeTask(jSONObject2)) {
                            jSONObject2.put("taskStatus", "TO_RECEIVE");
                            TimeUtil.sleep(2000L);
                            z = true;
                        }
                    } else if ("TO_RECEIVE".equals(string) && receiveTaskReward(jSONObject2)) {
                        TimeUtil.sleep(1000L);
                        z = true;
                    }
                }
                if (z) {
                    processTaskCenter();
                }
            }
        } catch (Exception e) {
            String str = TAG;
            Log.i(str, "processTaskCenter err:");
            Log.printStackTrace(str, e);
        }
    }

    public static void processBrowseTasks() {
        try {
            JSONObject jSONObject = new JSONObject(AntSportsRpcCall.queryTaskInfo());
            if (MessageUtil.checkSuccess(TAG, jSONObject).booleanValue()) {
                JSONObject jSONObject2 = jSONObject.getJSONObject("data");
                if (jSONObject2.has("taskInfos")) {
                    JSONArray jSONArray = jSONObject2.getJSONArray("taskInfos");
                    boolean z = false;
                    for (int i = 0; i < jSONArray.length(); i++) {
                        JSONObject jSONObject3 = jSONArray.getJSONObject(i);
                        TimeUtil.sleep(TimeUnit.SECONDS.toMillis(jSONObject3.getInt("viewSec")));
                        if (receiveBrowseReward(jSONObject3)) {
                            z = true;
                        }
                    }
                    if (z) {
                        processBrowseTasks();
                    }
                }
            }
        } catch (Exception e) {
            String str = TAG;
            Log.i(str, "processBrowseTasks err:");
            Log.printStackTrace(str, e);
        }
    }

    public static int queryUserEnergy() {
        try {
            JSONObject jSONObject = new JSONObject(AntSportsRpcCall.queryUserAccount());
            if (MessageUtil.checkSuccess(TAG, jSONObject).booleanValue()) {
                return Integer.parseInt(jSONObject.getJSONObject("data").getString("balance"));
            }
            return 0;
        } catch (Exception e) {
            String str = TAG;
            Log.i(str, "queryUserEnergy err:");
            Log.printStackTrace(str, e);
            return 0;
        }
    }

    public void neverlandrun() {
        try {
            Log.record("悦动健康🚑️开始执行#[" + UserIdMap.getShowName(UserIdMap.getCurrentUid()) + "]");
            if (this.QUERY_SIGN.getValue().booleanValue()) {
                processSignIn();
            }
            if (this.QUERY_TASK_CENTER.getValue().booleanValue()) {
                processTaskCenter();
            }
            processBrowseTasks();
            if (this.QUERY_BUBBLE_TASK.getValue().booleanValue()) {
                queryAndProcessBubbleTasks();
            }
            queryBaseInfoAndProcess();
            if (this.QUERY_ITEM_LIST.getValue().booleanValue()) {
                exchangeBenefits();
            }
            if (this.MapListSwitch.getValue().booleanValue()) {
                queryMapListSwitch();
            }
            Log.record("悦动健康🚑️执行完成#[" + UserIdMap.getShowName(UserIdMap.getCurrentUid()) + "]");
        } catch (Exception e) {
            String str = TAG;
            Log.i(str, "run err:");
            Log.printStackTrace(str, e);
        }
    }

    /* JADX WARN: Code duplicated, block: B:101:0x018d A[Catch: all -> 0x01f8, TryCatch #11 {all -> 0x01f8, blocks: (B:99:0x0178, B:101:0x018d, B:106:0x019d, B:104:0x0195), top: B:166:0x0178 }] */
    /* JADX WARN: Code duplicated, block: B:103:0x0193  */
    /* JADX WARN: Code duplicated, block: B:104:0x0195 A[Catch: all -> 0x01f8, TryCatch #11 {all -> 0x01f8, blocks: (B:99:0x0178, B:101:0x018d, B:106:0x019d, B:104:0x0195), top: B:166:0x0178 }] */
    /* JADX WARN: Code duplicated, block: B:106:0x019d A[Catch: all -> 0x01f8, TRY_LEAVE, TryCatch #11 {all -> 0x01f8, blocks: (B:99:0x0178, B:101:0x018d, B:106:0x019d, B:104:0x0195), top: B:166:0x0178 }] */
    /* JADX WARN: Code duplicated, block: B:110:0x01b2 A[Catch: all -> 0x01ea, TryCatch #5 {all -> 0x01ea, blocks: (B:108:0x01ac, B:110:0x01b2, B:119:0x01d3, B:113:0x01bb, B:115:0x01c9, B:116:0x01cb, B:118:0x01d1, B:120:0x01d8), top: B:154:0x01ac }] */
    /* JADX WARN: Code duplicated, block: B:112:0x01b8  */
    /* JADX WARN: Code duplicated, block: B:113:0x01bb A[Catch: all -> 0x01ea, TryCatch #5 {all -> 0x01ea, blocks: (B:108:0x01ac, B:110:0x01b2, B:119:0x01d3, B:113:0x01bb, B:115:0x01c9, B:116:0x01cb, B:118:0x01d1, B:120:0x01d8), top: B:154:0x01ac }] */
    /* JADX WARN: Code duplicated, block: B:115:0x01c9 A[Catch: all -> 0x01ea, TryCatch #5 {all -> 0x01ea, blocks: (B:108:0x01ac, B:110:0x01b2, B:119:0x01d3, B:113:0x01bb, B:115:0x01c9, B:116:0x01cb, B:118:0x01d1, B:120:0x01d8), top: B:154:0x01ac }] */
    /* JADX WARN: Code duplicated, block: B:118:0x01d1 A[Catch: all -> 0x01ea, TryCatch #5 {all -> 0x01ea, blocks: (B:108:0x01ac, B:110:0x01b2, B:119:0x01d3, B:113:0x01bb, B:115:0x01c9, B:116:0x01cb, B:118:0x01d1, B:120:0x01d8), top: B:154:0x01ac }] */
    /* JADX WARN: Code duplicated, block: B:127:0x01ef  */
    /* JADX WARN: Code duplicated, block: B:135:0x0215  */
    /* JADX WARN: Code duplicated, block: B:136:0x0218  */
    /* JADX WARN: Code duplicated, block: B:138:0x021e  */
    /* JADX WARN: Code duplicated, block: B:141:0x024c  */
    /* JADX WARN: Code duplicated, block: B:177:0x01d3 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:98:0x0171  */
    private void healthIslandInfo() {
        Integer numValueOf;
        String strOptString;
        String strOptString2;
        String strOptString3;
        boolean z;
        String strOptString4;
        Integer num;
        Integer numValueOf2;
        Integer numValueOf3;
        Integer numValueOf4;
        Integer numValueOf5;
        Integer numValueOf6;
        Throwable th;
        Integer num2;
        Integer num3;
        Integer num4;
        Integer numValueOf7;
        Integer num5;
        JSONObject jSONObject;
        Integer numValueOf8;
        Integer num6;
        JSONObject jSONObjectOptJSONObject;
        JSONArray jSONArrayOptJSONArray;
        Integer numValueOf9;
        int i;
        int i2;
        int i3;
        JSONObject jSONObjectOptJSONObject2;
        JSONArray jSONArray;
        String strOptString5;
        Integer numValueOf10;
        JSONObject jSONObjectOptJSONObject3;
        boolean zOptBoolean;
        JSONObject jSONObjectOptJSONObject4;
        JSONObject jSONObjectOptJSONObject5;
        String str = "";
        try {
            JSONObject jSONObject2 = new JSONObject(AntSportsRpcCall.queryUserAccount());
            numValueOf = (MessageUtil.checkSuccess(TAG, jSONObject2).booleanValue() && (jSONObjectOptJSONObject5 = jSONObject2.optJSONObject("data")) != null && jSONObjectOptJSONObject5.has("balance")) ? Integer.valueOf(Integer.parseInt(jSONObjectOptJSONObject5.getString("balance"))) : null;
        } catch (Throwable th2) {
            String str2 = TAG;
            Log.i(str2, "healthIslandInfo 能量查询失败:");
            Log.printStackTrace(str2, th2);
            numValueOf = null;
        }
        try {
            JSONObject jSONObject3 = new JSONObject(AntSportsRpcCall.queryBaseinfo());
            if (!MessageUtil.checkSuccess(TAG, jSONObject3).booleanValue() || (jSONObjectOptJSONObject4 = jSONObject3.optJSONObject("data")) == null) {
                strOptString = "";
                strOptString2 = strOptString;
                strOptString3 = strOptString2;
                zOptBoolean = false;
            } else {
                strOptString = jSONObjectOptJSONObject4.optString("mapName", "");
                try {
                    strOptString2 = jSONObjectOptJSONObject4.optString("branchId", "");
                    try {
                        strOptString3 = jSONObjectOptJSONObject4.optString("mapId", "");
                        try {
                            zOptBoolean = jSONObjectOptJSONObject4.optBoolean("newGame", false);
                        } catch (Throwable th3) {
                            th = th3;
                            String str3 = TAG;
                            Log.i(str3, "healthIslandInfo 基础信息查询失败:");
                            Log.printStackTrace(str3, th);
                            z = false;
                        }
                    } catch (Throwable th4) {
                        th = th4;
                        strOptString3 = "";
                    }
                } catch (Throwable th5) {
                    th = th5;
                    strOptString2 = "";
                    strOptString3 = strOptString2;
                    String str4 = TAG;
                    Log.i(str4, "healthIslandInfo 基础信息查询失败:");
                    Log.printStackTrace(str4, th);
                    z = false;
                    if (!strOptString2.isEmpty()) {
                        strOptString4 = "";
                        num = null;
                        numValueOf2 = null;
                        numValueOf3 = null;
                        numValueOf4 = null;
                        numValueOf5 = null;
                        numValueOf6 = null;
                    } else {
                        strOptString4 = "";
                        num = null;
                        numValueOf2 = null;
                        numValueOf3 = null;
                        numValueOf4 = null;
                        numValueOf5 = null;
                        numValueOf6 = null;
                    }
                    jSONObject = new JSONObject(AntSportsRpcCall.queryMapList());
                    if (MessageUtil.checkSuccess(TAG, jSONObject).booleanValue()) {
                        jSONObjectOptJSONObject = jSONObject.optJSONObject("data");
                        if (jSONObjectOptJSONObject == null) {
                            jSONArrayOptJSONArray = null;
                        } else {
                            jSONArrayOptJSONArray = jSONObjectOptJSONObject.optJSONArray("mapList");
                        }
                        if (jSONArrayOptJSONArray != null) {
                            numValueOf9 = Integer.valueOf(jSONArrayOptJSONArray.length());
                            i = 0;
                            i2 = 0;
                            i3 = 0;
                            while (i < jSONArrayOptJSONArray.length()) {
                                try {
                                    jSONObjectOptJSONObject2 = jSONArrayOptJSONArray.optJSONObject(i);
                                    if (jSONObjectOptJSONObject2 == null) {
                                        jSONArray = jSONArrayOptJSONArray;
                                    } else {
                                        jSONArray = jSONArrayOptJSONArray;
                                        strOptString5 = jSONObjectOptJSONObject2.optString(NotificationCompat.CATEGORY_STATUS, "");
                                        if (strOptString5.contains("FINISH")) {
                                            i2++;
                                        }
                                        if ("FINISH_NOT_REWARD".equals(strOptString5)) {
                                            i3++;
                                        }
                                    }
                                    i++;
                                    jSONArrayOptJSONArray = jSONArray;
                                } catch (Throwable th6) {
                                    th = th6;
                                    num2 = numValueOf9;
                                    num3 = null;
                                    String str5 = TAG;
                                    num4 = num2;
                                    Log.i(str5, "healthIslandInfo 地图列表查询失败:");
                                    Log.printStackTrace(str5, th);
                                    numValueOf7 = num3;
                                    num5 = null;
                                    if ("FINISH".equals(strOptString4)) {
                                        strOptString4 = "已完成";
                                    } else if ("FINISH_NOT_REWARD".equals(strOptString4)) {
                                        strOptString4 = "待领奖";
                                    }
                                    StringBuilder sb = new StringBuilder("悦动健康🚑️[");
                                    sb.append(UserIdMap.getShowName(UserIdMap.getCurrentUid()));
                                    sb.append("]能量");
                                    sb.append(Log.n(numValueOf));
                                    sb.append(";岛屿[");
                                    sb.append(strOptString);
                                    sb.append("]");
                                    if (z) {
                                        str = "活动岛";
                                    }
                                    sb.append(str);
                                    sb.append(strOptString4);
                                    sb.append("进度");
                                    sb.append(Log.n(numValueOf5));
                                    sb.append("/");
                                    sb.append(Log.n(numValueOf4));
                                    sb.append(";建筑第");
                                    sb.append(Log.n(numValueOf3));
                                    sb.append("/");
                                    sb.append(Log.n(numValueOf6));
                                    sb.append("栋进度");
                                    sb.append(Log.n(numValueOf2));
                                    sb.append("/");
                                    sb.append(Log.n(num));
                                    sb.append(";全部岛屿");
                                    sb.append(Log.n(num4));
                                    sb.append("完成");
                                    sb.append(Log.n(numValueOf7));
                                    sb.append("待领奖");
                                    sb.append(Log.n(num5));
                                    sb.append(";");
                                    Log.info(sb.toString());
                                }
                            }
                            numValueOf7 = Integer.valueOf(i2);
                            try {
                                numValueOf8 = Integer.valueOf(i3);
                                num6 = numValueOf9;
                            } catch (Throwable th7) {
                                th = th7;
                                num3 = numValueOf7;
                                num2 = numValueOf9;
                                String str6 = TAG;
                                num4 = num2;
                                Log.i(str6, "healthIslandInfo 地图列表查询失败:");
                                Log.printStackTrace(str6, th);
                                numValueOf7 = num3;
                                num5 = null;
                            }
                        } else {
                            numValueOf8 = null;
                            numValueOf7 = null;
                            num6 = null;
                        }
                    } else {
                        numValueOf8 = null;
                        numValueOf7 = null;
                        num6 = null;
                    }
                    num4 = num6;
                    num5 = numValueOf8;
                    if ("FINISH".equals(strOptString4)) {
                        strOptString4 = "已完成";
                    } else if ("FINISH_NOT_REWARD".equals(strOptString4)) {
                        strOptString4 = "待领奖";
                    }
                    StringBuilder sb2 = new StringBuilder("悦动健康🚑️[");
                    sb2.append(UserIdMap.getShowName(UserIdMap.getCurrentUid()));
                    sb2.append("]能量");
                    sb2.append(Log.n(numValueOf));
                    sb2.append(";岛屿[");
                    sb2.append(strOptString);
                    sb2.append("]");
                    if (z) {
                        str = "活动岛";
                    }
                    sb2.append(str);
                    sb2.append(strOptString4);
                    sb2.append("进度");
                    sb2.append(Log.n(numValueOf5));
                    sb2.append("/");
                    sb2.append(Log.n(numValueOf4));
                    sb2.append(";建筑第");
                    sb2.append(Log.n(numValueOf3));
                    sb2.append("/");
                    sb2.append(Log.n(numValueOf6));
                    sb2.append("栋进度");
                    sb2.append(Log.n(numValueOf2));
                    sb2.append("/");
                    sb2.append(Log.n(num));
                    sb2.append(";全部岛屿");
                    sb2.append(Log.n(num4));
                    sb2.append("完成");
                    sb2.append(Log.n(numValueOf7));
                    sb2.append("待领奖");
                    sb2.append(Log.n(num5));
                    sb2.append(";");
                    Log.info(sb2.toString());
                }
            }
            z = zOptBoolean;
        } catch (Throwable th8) {
            th = th8;
            strOptString = "";
            strOptString2 = strOptString;
        }
        if (!strOptString2.isEmpty() || strOptString3.isEmpty()) {
            strOptString4 = "";
            num = null;
            numValueOf2 = null;
            numValueOf3 = null;
            numValueOf4 = null;
            numValueOf5 = null;
            numValueOf6 = null;
        } else {
            try {
                JSONObject jSONObject4 = new JSONObject(AntSportsRpcCall.queryMapInfoNew(strOptString2, strOptString3));
                if (!MessageUtil.checkSuccess(TAG, jSONObject4).booleanValue() || (jSONObjectOptJSONObject3 = jSONObject4.optJSONObject("data")) == null) {
                    strOptString4 = "";
                    numValueOf10 = null;
                    numValueOf2 = null;
                    numValueOf3 = null;
                    numValueOf4 = null;
                    numValueOf5 = null;
                    numValueOf6 = null;
                } else {
                    strOptString4 = jSONObjectOptJSONObject3.optString("mapStatus", "");
                    try {
                        numValueOf5 = jSONObjectOptJSONObject3.has("mapEnergyProcess") ? Integer.valueOf(jSONObjectOptJSONObject3.optInt("mapEnergyProcess")) : null;
                        try {
                            numValueOf4 = jSONObjectOptJSONObject3.has("mapEnergyFinal") ? Integer.valueOf(jSONObjectOptJSONObject3.optInt("mapEnergyFinal")) : null;
                            try {
                                JSONArray jSONArrayOptJSONArray2 = jSONObjectOptJSONObject3.optJSONArray("buildingConfigInfos");
                                numValueOf6 = jSONArrayOptJSONArray2 != null ? Integer.valueOf(jSONArrayOptJSONArray2.length()) : null;
                                try {
                                    JSONObject jSONObjectOptJSONObject6 = jSONObjectOptJSONObject3.optJSONObject("stageInfo");
                                    if (jSONObjectOptJSONObject6 != null) {
                                        numValueOf3 = jSONObjectOptJSONObject6.has("buildingIndex") ? Integer.valueOf(jSONObjectOptJSONObject6.optInt("buildingIndex") + 1) : null;
                                        try {
                                            numValueOf2 = jSONObjectOptJSONObject6.has("buildingEnergyProcess") ? Integer.valueOf(jSONObjectOptJSONObject6.optInt("buildingEnergyProcess")) : null;
                                            try {
                                                numValueOf10 = jSONObjectOptJSONObject6.has("buildingEnergyFinal") ? Integer.valueOf(jSONObjectOptJSONObject6.optInt("buildingEnergyFinal")) : null;
                                            } catch (Throwable th9) {
                                                th = th9;
                                                String str7 = TAG;
                                                Log.i(str7, "healthIslandInfo 岛屿详情查询失败:");
                                                Log.printStackTrace(str7, th);
                                                num = null;
                                            }
                                        } catch (Throwable th10) {
                                            th = th10;
                                            numValueOf2 = null;
                                        }
                                    } else {
                                        numValueOf10 = null;
                                        numValueOf2 = null;
                                        numValueOf3 = null;
                                    }
                                } catch (Throwable th11) {
                                    th = th11;
                                    numValueOf2 = null;
                                    numValueOf3 = null;
                                }
                            } catch (Throwable th12) {
                                th = th12;
                                numValueOf2 = null;
                                numValueOf3 = null;
                                numValueOf6 = null;
                                String str8 = TAG;
                                Log.i(str8, "healthIslandInfo 岛屿详情查询失败:");
                                Log.printStackTrace(str8, th);
                                num = null;
                                jSONObject = new JSONObject(AntSportsRpcCall.queryMapList());
                                if (MessageUtil.checkSuccess(TAG, jSONObject).booleanValue()) {
                                    numValueOf8 = null;
                                    numValueOf7 = null;
                                    num6 = null;
                                } else {
                                    jSONObjectOptJSONObject = jSONObject.optJSONObject("data");
                                    if (jSONObjectOptJSONObject == null) {
                                        jSONArrayOptJSONArray = null;
                                    } else {
                                        jSONArrayOptJSONArray = jSONObjectOptJSONObject.optJSONArray("mapList");
                                    }
                                    if (jSONArrayOptJSONArray != null) {
                                        numValueOf9 = Integer.valueOf(jSONArrayOptJSONArray.length());
                                        i = 0;
                                        i2 = 0;
                                        i3 = 0;
                                        while (i < jSONArrayOptJSONArray.length()) {
                                            jSONObjectOptJSONObject2 = jSONArrayOptJSONArray.optJSONObject(i);
                                            if (jSONObjectOptJSONObject2 == null) {
                                                jSONArray = jSONArrayOptJSONArray;
                                            } else {
                                                jSONArray = jSONArrayOptJSONArray;
                                                strOptString5 = jSONObjectOptJSONObject2.optString(NotificationCompat.CATEGORY_STATUS, "");
                                                if (strOptString5.contains("FINISH")) {
                                                    i2++;
                                                }
                                                if ("FINISH_NOT_REWARD".equals(strOptString5)) {
                                                    i3++;
                                                }
                                            }
                                            i++;
                                            jSONArrayOptJSONArray = jSONArray;
                                        }
                                        numValueOf7 = Integer.valueOf(i2);
                                        numValueOf8 = Integer.valueOf(i3);
                                        num6 = numValueOf9;
                                    } else {
                                        numValueOf8 = null;
                                        numValueOf7 = null;
                                        num6 = null;
                                    }
                                }
                                num4 = num6;
                                num5 = numValueOf8;
                                if ("FINISH".equals(strOptString4)) {
                                    strOptString4 = "已完成";
                                } else if ("FINISH_NOT_REWARD".equals(strOptString4)) {
                                    strOptString4 = "待领奖";
                                }
                                StringBuilder sb3 = new StringBuilder("悦动健康🚑️[");
                                sb3.append(UserIdMap.getShowName(UserIdMap.getCurrentUid()));
                                sb3.append("]能量");
                                sb3.append(Log.n(numValueOf));
                                sb3.append(";岛屿[");
                                sb3.append(strOptString);
                                sb3.append("]");
                                if (z) {
                                    str = "活动岛";
                                }
                                sb3.append(str);
                                sb3.append(strOptString4);
                                sb3.append("进度");
                                sb3.append(Log.n(numValueOf5));
                                sb3.append("/");
                                sb3.append(Log.n(numValueOf4));
                                sb3.append(";建筑第");
                                sb3.append(Log.n(numValueOf3));
                                sb3.append("/");
                                sb3.append(Log.n(numValueOf6));
                                sb3.append("栋进度");
                                sb3.append(Log.n(numValueOf2));
                                sb3.append("/");
                                sb3.append(Log.n(num));
                                sb3.append(";全部岛屿");
                                sb3.append(Log.n(num4));
                                sb3.append("完成");
                                sb3.append(Log.n(numValueOf7));
                                sb3.append("待领奖");
                                sb3.append(Log.n(num5));
                                sb3.append(";");
                                Log.info(sb3.toString());
                            }
                        } catch (Throwable th13) {
                            th = th13;
                            numValueOf2 = null;
                            numValueOf3 = null;
                            numValueOf4 = null;
                        }
                    } catch (Throwable th14) {
                        th = th14;
                        numValueOf2 = null;
                        numValueOf3 = null;
                        numValueOf4 = null;
                        numValueOf5 = null;
                        numValueOf6 = null;
                        String str9 = TAG;
                        Log.i(str9, "healthIslandInfo 岛屿详情查询失败:");
                        Log.printStackTrace(str9, th);
                        num = null;
                        jSONObject = new JSONObject(AntSportsRpcCall.queryMapList());
                        if (MessageUtil.checkSuccess(TAG, jSONObject).booleanValue()) {
                            numValueOf8 = null;
                            numValueOf7 = null;
                            num6 = null;
                        } else {
                            jSONObjectOptJSONObject = jSONObject.optJSONObject("data");
                            if (jSONObjectOptJSONObject == null) {
                                jSONArrayOptJSONArray = null;
                            } else {
                                jSONArrayOptJSONArray = jSONObjectOptJSONObject.optJSONArray("mapList");
                            }
                            if (jSONArrayOptJSONArray != null) {
                                numValueOf9 = Integer.valueOf(jSONArrayOptJSONArray.length());
                                i = 0;
                                i2 = 0;
                                i3 = 0;
                                while (i < jSONArrayOptJSONArray.length()) {
                                    jSONObjectOptJSONObject2 = jSONArrayOptJSONArray.optJSONObject(i);
                                    if (jSONObjectOptJSONObject2 == null) {
                                        jSONArray = jSONArrayOptJSONArray;
                                    } else {
                                        jSONArray = jSONArrayOptJSONArray;
                                        strOptString5 = jSONObjectOptJSONObject2.optString(NotificationCompat.CATEGORY_STATUS, "");
                                        if (strOptString5.contains("FINISH")) {
                                            i2++;
                                        }
                                        if ("FINISH_NOT_REWARD".equals(strOptString5)) {
                                            i3++;
                                        }
                                    }
                                    i++;
                                    jSONArrayOptJSONArray = jSONArray;
                                }
                                numValueOf7 = Integer.valueOf(i2);
                                numValueOf8 = Integer.valueOf(i3);
                                num6 = numValueOf9;
                            } else {
                                numValueOf8 = null;
                                numValueOf7 = null;
                                num6 = null;
                            }
                        }
                        num4 = num6;
                        num5 = numValueOf8;
                        if ("FINISH".equals(strOptString4)) {
                            strOptString4 = "已完成";
                        } else if ("FINISH_NOT_REWARD".equals(strOptString4)) {
                            strOptString4 = "待领奖";
                        }
                        StringBuilder sb4 = new StringBuilder("悦动健康🚑️[");
                        sb4.append(UserIdMap.getShowName(UserIdMap.getCurrentUid()));
                        sb4.append("]能量");
                        sb4.append(Log.n(numValueOf));
                        sb4.append(";岛屿[");
                        sb4.append(strOptString);
                        sb4.append("]");
                        if (z) {
                            str = "活动岛";
                        }
                        sb4.append(str);
                        sb4.append(strOptString4);
                        sb4.append("进度");
                        sb4.append(Log.n(numValueOf5));
                        sb4.append("/");
                        sb4.append(Log.n(numValueOf4));
                        sb4.append(";建筑第");
                        sb4.append(Log.n(numValueOf3));
                        sb4.append("/");
                        sb4.append(Log.n(numValueOf6));
                        sb4.append("栋进度");
                        sb4.append(Log.n(numValueOf2));
                        sb4.append("/");
                        sb4.append(Log.n(num));
                        sb4.append(";全部岛屿");
                        sb4.append(Log.n(num4));
                        sb4.append("完成");
                        sb4.append(Log.n(numValueOf7));
                        sb4.append("待领奖");
                        sb4.append(Log.n(num5));
                        sb4.append(";");
                        Log.info(sb4.toString());
                    }
                }
                num = numValueOf10;
            } catch (Throwable th15) {
                th = th15;
                strOptString4 = "";
            }
        }
        try {
            jSONObject = new JSONObject(AntSportsRpcCall.queryMapList());
            if (MessageUtil.checkSuccess(TAG, jSONObject).booleanValue()) {
                numValueOf8 = null;
                numValueOf7 = null;
                num6 = null;
            } else {
                jSONObjectOptJSONObject = jSONObject.optJSONObject("data");
                if (jSONObjectOptJSONObject == null) {
                    jSONArrayOptJSONArray = null;
                } else {
                    jSONArrayOptJSONArray = jSONObjectOptJSONObject.optJSONArray("mapList");
                }
                if (jSONArrayOptJSONArray != null) {
                    numValueOf9 = Integer.valueOf(jSONArrayOptJSONArray.length());
                    i = 0;
                    i2 = 0;
                    i3 = 0;
                    while (i < jSONArrayOptJSONArray.length()) {
                        jSONObjectOptJSONObject2 = jSONArrayOptJSONArray.optJSONObject(i);
                        if (jSONObjectOptJSONObject2 == null) {
                            jSONArray = jSONArrayOptJSONArray;
                        } else {
                            jSONArray = jSONArrayOptJSONArray;
                            strOptString5 = jSONObjectOptJSONObject2.optString(NotificationCompat.CATEGORY_STATUS, "");
                            if (strOptString5.contains("FINISH")) {
                                i2++;
                            }
                            if ("FINISH_NOT_REWARD".equals(strOptString5)) {
                                i3++;
                            }
                        }
                        i++;
                        jSONArrayOptJSONArray = jSONArray;
                    }
                    numValueOf7 = Integer.valueOf(i2);
                    numValueOf8 = Integer.valueOf(i3);
                    num6 = numValueOf9;
                } else {
                    numValueOf8 = null;
                    numValueOf7 = null;
                    num6 = null;
                }
            }
            num4 = num6;
            num5 = numValueOf8;
        } catch (Throwable th16) {
            th = th16;
            num2 = null;
        }
        if ("FINISH".equals(strOptString4)) {
            strOptString4 = "已完成";
        } else if ("FINISH_NOT_REWARD".equals(strOptString4)) {
            strOptString4 = "待领奖";
        }
        StringBuilder sb5 = new StringBuilder("悦动健康🚑️[");
        sb5.append(UserIdMap.getShowName(UserIdMap.getCurrentUid()));
        sb5.append("]能量");
        sb5.append(Log.n(numValueOf));
        sb5.append(";岛屿[");
        sb5.append(strOptString);
        sb5.append("]");
        if (z) {
            str = "活动岛";
        }
        sb5.append(str);
        sb5.append(strOptString4);
        sb5.append("进度");
        sb5.append(Log.n(numValueOf5));
        sb5.append("/");
        sb5.append(Log.n(numValueOf4));
        sb5.append(";建筑第");
        sb5.append(Log.n(numValueOf3));
        sb5.append("/");
        sb5.append(Log.n(numValueOf6));
        sb5.append("栋进度");
        sb5.append(Log.n(numValueOf2));
        sb5.append("/");
        sb5.append(Log.n(num));
        sb5.append(";全部岛屿");
        sb5.append(Log.n(num4));
        sb5.append("完成");
        sb5.append(Log.n(numValueOf7));
        sb5.append("待领奖");
        sb5.append(Log.n(num5));
        sb5.append(";");
        Log.info(sb5.toString());
    }

    private void queryMapListSwitch() {
        try {
            JSONObject jSONObject = new JSONObject(AntSportsRpcCall.queryBaseinfo());
            if (MessageUtil.checkSuccess(TAG, jSONObject).booleanValue()) {
                String strOptString = jSONObject.getJSONObject("data").optString("mapName");
                JSONObject jSONObject2 = new JSONObject(AntSportsRpcCall.queryMapList());
                if (MessageUtil.checkSuccess("queryMapList", jSONObject2).booleanValue()) {
                    JSONArray jSONArray = jSONObject2.getJSONObject("data").getJSONArray("mapList");
                    boolean z = false;
                    for (int i = 0; i < jSONArray.length(); i++) {
                        JSONObject jSONObject3 = jSONArray.getJSONObject(i);
                        String string = jSONObject3.getString("mapName");
                        String string2 = jSONObject3.getString(NotificationCompat.CATEGORY_STATUS);
                        if (string.equals(strOptString) && string2.contains("FINISH")) {
                            z = true;
                        }
                    }
                    if (z) {
                        for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                            JSONObject jSONObject4 = jSONArray.getJSONObject(i2);
                            String string3 = jSONObject4.getString("mapName");
                            String string4 = jSONObject4.getString("mapId");
                            String string5 = jSONObject4.getString(NotificationCompat.CATEGORY_STATUS);
                            String string6 = jSONObject4.getString("branchId");
                            if (!string3.equals(strOptString) && !string5.contains("FINISH") && !"OFFLINE".equals(string5) && MessageUtil.checkSuccess("mapChooseFree", new JSONObject(AntSportsRpcCall.mapChooseFree(string6, string4))).booleanValue()) {
                                Log.other("悦动健康🚑️切换到[" + string3 + "](" + string4 + ")#[" + UserIdMap.getShowName(UserIdMap.getCurrentUid()) + "]");
                                break;
                            }
                        }
                        queryBaseInfoAndProcess();
                    }
                }
            }
        } catch (Exception e) {
            String str = TAG;
            Log.i(str, "queryMapListSwitch err:");
            Log.printStackTrace(str, e);
        }
    }

    private boolean checkAuth() {
        try {
            JSONObject jSONObject = new JSONObject(AntSportsRpcCall.checkAuth());
            if (MessageUtil.checkSuccess("NeverLandAuth", jSONObject).booleanValue()) {
                return jSONObject.getJSONObject("resultObj").optBoolean("authStatus");
            }
            return false;
        } catch (Exception e) {
            String str = TAG;
            Log.i(str, "checkAuth err:");
            Log.printStackTrace(str, e);
            return false;
        }
    }
}
