package io.github.lazyimmortal.sesame.model.task.antFarm;

import android.os.Build;
import androidx.core.app.NotificationCompat;
import com.fasterxml.jackson.databind.deser.DeserializerCache;
import io.github.lazyimmortal.sesame.data.ConfigV2;
import io.github.lazyimmortal.sesame.data.ModelFields;
import io.github.lazyimmortal.sesame.data.ModelGroup;
import io.github.lazyimmortal.sesame.data.TokenConfig;
import io.github.lazyimmortal.sesame.data.modelFieldExt.BooleanModelField;
import io.github.lazyimmortal.sesame.data.modelFieldExt.ChoiceModelField;
import io.github.lazyimmortal.sesame.data.modelFieldExt.IntegerModelField;
import io.github.lazyimmortal.sesame.data.modelFieldExt.ListModelField;
import io.github.lazyimmortal.sesame.data.modelFieldExt.SelectAndCountModelField;
import io.github.lazyimmortal.sesame.data.modelFieldExt.SelectModelField;
import io.github.lazyimmortal.sesame.data.modelFieldExt.StringModelField;
import io.github.lazyimmortal.sesame.data.task.ModelTask;
import io.github.lazyimmortal.sesame.entity.AlipayAntFarmChickenChefTaskList;
import io.github.lazyimmortal.sesame.entity.AlipayAntFarmDoFarmTaskList;
import io.github.lazyimmortal.sesame.entity.AlipayAntFarmDrawMachineTaskList;
import io.github.lazyimmortal.sesame.entity.AlipayUser;
import io.github.lazyimmortal.sesame.entity.CustomOption;
import io.github.lazyimmortal.sesame.entity.FarmOrnaments;
import io.github.lazyimmortal.sesame.entity.GameCenterMallItem;
import io.github.lazyimmortal.sesame.hook.SimplePageManager$$ExternalSyntheticBackport0;
import io.github.lazyimmortal.sesame.model.base.TaskAlternative;
import io.github.lazyimmortal.sesame.model.base.TaskCommon;
import io.github.lazyimmortal.sesame.model.extensions.ExtensionsHandle;
import io.github.lazyimmortal.sesame.model.normal.answerAI.AnswerAI;
import io.github.lazyimmortal.sesame.model.task.antDodo.AntDodo$$ExternalSyntheticLambda3;
import io.github.lazyimmortal.sesame.model.task.antGame.GameTask;
import io.github.lazyimmortal.sesame.rpc.intervallimit.RpcIntervalLimit;
import io.github.lazyimmortal.sesame.util.JsonUtil;
import io.github.lazyimmortal.sesame.util.Log;
import io.github.lazyimmortal.sesame.util.MessageUtil;
import io.github.lazyimmortal.sesame.util.RandomUtil;
import io.github.lazyimmortal.sesame.util.Status;
import io.github.lazyimmortal.sesame.util.StringUtil;
import io.github.lazyimmortal.sesame.util.TimeUtil;
import io.github.lazyimmortal.sesame.util.idMap.AntFarmDoFarmTaskListMap;
import io.github.lazyimmortal.sesame.util.idMap.AntFarmDrawMachineTaskListMap;
import io.github.lazyimmortal.sesame.util.idMap.FarmOrnamentsIdMap;
import io.github.lazyimmortal.sesame.util.idMap.GameCenterMallItemMap;
import io.github.lazyimmortal.sesame.util.idMap.UserIdMap;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class AntFarm extends ModelTask {
    private static final String TAG = "AntFarm";
    private static String donationCompetitionDisabledUid;
    private SelectModelField AntFarmChickenChefTaskList;
    private SelectModelField AntFarmDoFarmTaskList;
    private SelectModelField AntFarmDrawMachineTaskList;
    private BooleanModelField AutoAntFarmChickenChefTaskList;
    private BooleanModelField AutoAntFarmDoFarmTaskList;
    private BooleanModelField AutoAntFarmDrawMachineTaskList;
    private BooleanModelField IPexchangeBenefit;
    private BooleanModelField acceptGift;
    private Animal[] animals;
    private BooleanModelField autoChickenChefCook;
    private double benevolenceScore;
    private BooleanModelField chickenChef;
    private ChoiceModelField chickenChefCookStrategy;
    private BooleanModelField chickenDiary;
    private BooleanModelField competition;
    private IntegerModelField competitionDailyLimit;
    private IntegerModelField competitionLeadEggs;
    private IntegerModelField competitionStarNum;
    private IntegerModelField competitionStealMinutes;
    private IntegerModelField donationAmount;
    private ChoiceModelField donationType;
    private BooleanModelField drawGameCenterAward;
    private BooleanModelField drawMachine;
    private BooleanModelField enableSleep;
    private BooleanModelField family;
    private SelectModelField familyOptions;
    private ListModelField.ListJoinCommaToStringModelField farmGameTime;
    private FarmTool[] farmTools;
    private BooleanModelField feedAnimal;
    private BooleanModelField feedFriendAnimal;
    private SelectAndCountModelField feedFriendAnimalList;
    private int foodStock;
    private int foodStockLimit;
    private BooleanModelField gameCenterBuyMallItem;
    private SelectAndCountModelField gameCenterBuyMallItemList;
    private SelectModelField getFeedList;
    private SelectModelField giftAiKitchenIngredientFriendList;
    private double harvestBenevolenceScore;
    private BooleanModelField harvestProduce;
    private SelectModelField hireAnimalList;
    private ChoiceModelField hireAnimalType;
    private BooleanModelField kitchen;
    private SelectModelField notInviteList;
    private SelectModelField notifyFriendList;
    private ChoiceModelField notifyFriendType;
    private BooleanModelField ornamentsDressUp;
    private IntegerModelField ornamentsDressUpDays;
    private SelectModelField ornamentsDressUpList;
    private String ownerFarmId;
    private String ownerGroupId;
    private String ownerUserId;
    private ChoiceModelField recallAnimalType;
    private BooleanModelField receiveFarmTaskAward;
    private BooleanModelField receiveFarmToolReward;
    private BooleanModelField recordFarmGame;
    private BooleanModelField rewardFriend;
    private RewardFriend[] rewardList;
    private String rewardProductNum;
    private SelectModelField sendBackAnimalList;
    private ChoiceModelField sendBackAnimalType;
    private ChoiceModelField sendBackAnimalWay;
    private IntegerModelField sleepMinutes;
    private StringModelField sleepTime;
    private IntegerModelField stealRankMinutes;
    private BooleanModelField useAccelerateTool;
    private SelectModelField useAccelerateToolOptions;
    private BooleanModelField useBigEaterTool;
    private BooleanModelField useNewEggTool;
    private BooleanModelField useSpecialFood;
    private IntegerModelField useSpecialFoodCountLimit;
    private SelectAndCountModelField visitFriendList;
    private Animal ownerAnimal = new Animal();
    private double finalScore = 0.0d;
    private int foodInTrough = 0;
    Map<String, JSONObject> skuInfo = new HashMap();

    public enum AnimalBuff {
        ACCELERATING,
        INJURED,
        NONE
    }

    public enum AnimalFeedStatus {
        HUNGRY,
        EATING,
        SLEEPY
    }

    public enum AnimalInteractStatus {
        HOME,
        GOTOSTEAL,
        STEALING
    }

    @Deprecated
    public interface ChickenChefCookStrategy {
        public static final int MASTERY = 0;
        public static final int RANDOM = 2;
        public static final int RICHNESS = 1;
        public static final String[] nickNames = {"精通优先", "丰富优先", "随机制作"};
    }

    public interface DonationType {
        public static final int ALL = 2;
        public static final int ONE = 1;
        public static final int ZERO = 0;
        public static final String[] nickNames = {"不捐赠", "捐赠一个项目", "捐赠所有项目"};
    }

    public interface HireAnimalType {
        public static final int HIRE = 1;
        public static final int NONE = 0;
        public static final int NOT_HIRE = 2;
        public static final String[] nickNames = {"不雇佣小鸡", "雇佣已选好友", "雇佣未选好友"};
    }

    public interface NotifyFriendType {
        public static final int NONE = 0;
        public static final int NOTIFY = 1;
        public static final int NOT_NOTIFY = 2;
        public static final String[] nickNames = {"不通知赶鸡", "通知已选好友", "通知未选好友"};
    }

    public interface RecallAnimalType {
        public static final int ALWAYS = 0;
        public static final int NEVER = 3;
        public static final int WHEN_HUNGRY = 2;
        public static final int WHEN_THIEF = 1;
        public static final String[] nickNames = {"始终召回", "偷吃召回", "饥饿召回", "暂不召回"};
    }

    public interface SendBackAnimalType {
        public static final int BACK = 1;
        public static final int NONE = 0;
        public static final int NOT_BACK = 2;
        public static final String[] nickNames = {"不遣返小鸡", "遣返已选好友", "遣返未选好友"};
    }

    public interface SendBackAnimalWay {
        public static final int HIT = 0;
        public static final int NORMAL = 1;
        public static final String[] nickNames = {"攻击", "常规"};
    }

    public enum SubAnimalType {
        NORMAL,
        GUEST,
        PIRATE,
        WORK
    }

    public enum TaskStatus {
        TODO,
        FINISHED,
        RECEIVED
    }

    @Override // io.github.lazyimmortal.sesame.data.task.ModelTask, io.github.lazyimmortal.sesame.data.Model
    public String getName() {
        return "庄园";
    }

    @Override // io.github.lazyimmortal.sesame.data.Model
    public ModelGroup getGroup() {
        return ModelGroup.FARM;
    }

    public IntegerModelField getUseSpecialFoodCountLimit() {
        return this.useSpecialFoodCountLimit;
    }

    @Override // io.github.lazyimmortal.sesame.data.task.ModelTask, io.github.lazyimmortal.sesame.data.Model
    public ModelFields getFields() {
        ModelFields modelFields = new ModelFields();
        BooleanModelField booleanModelField = new BooleanModelField("receiveFarmTaskAward", "饲料任务及奖励", false);
        this.receiveFarmTaskAward = booleanModelField;
        modelFields.addField(booleanModelField);
        BooleanModelField booleanModelField2 = new BooleanModelField("AutoAntFarmDoFarmTaskList", "庄园饲料 | 推荐黑白名单", true);
        this.AutoAntFarmDoFarmTaskList = booleanModelField2;
        modelFields.addField(booleanModelField2);
        SelectModelField selectModelField = new SelectModelField("AntFarmDoFarmTaskList", "庄园饲料 | 黑名单列表", new LinkedHashSet(), new SelectModelField.SelectListFunc() { // from class: io.github.lazyimmortal.sesame.model.task.antFarm.AntFarm$$ExternalSyntheticLambda11
            @Override // io.github.lazyimmortal.sesame.data.modelFieldExt.SelectModelField.SelectListFunc
            public final List getList() {
                return AlipayAntFarmDoFarmTaskList.getList();
            }
        });
        this.AntFarmDoFarmTaskList = selectModelField;
        modelFields.addField(selectModelField);
        BooleanModelField booleanModelField3 = new BooleanModelField("useNewEggTool", "新蛋卡 | 使用", false);
        this.useNewEggTool = booleanModelField3;
        modelFields.addField(booleanModelField3);
        BooleanModelField booleanModelField4 = new BooleanModelField("useAccelerateTool", "加速卡 | 使用", false);
        this.useAccelerateTool = booleanModelField4;
        modelFields.addField(booleanModelField4);
        SelectModelField selectModelField2 = new SelectModelField("useAccelerateToolOptions", "加速卡 | 选项", new LinkedHashSet(), new SelectModelField.SelectListFunc() { // from class: io.github.lazyimmortal.sesame.model.task.antFarm.AntFarm$$ExternalSyntheticLambda15
            @Override // io.github.lazyimmortal.sesame.data.modelFieldExt.SelectModelField.SelectListFunc
            public final List getList() {
                return CustomOption.getUseAccelerateToolOptions();
            }
        });
        this.useAccelerateToolOptions = selectModelField2;
        modelFields.addField(selectModelField2);
        BooleanModelField booleanModelField5 = new BooleanModelField("useBigEaterTool", "加饭卡 | 使用", false);
        this.useBigEaterTool = booleanModelField5;
        modelFields.addField(booleanModelField5);
        BooleanModelField booleanModelField6 = new BooleanModelField("useSpecialFood", "特殊食品 | 使用", false);
        this.useSpecialFood = booleanModelField6;
        modelFields.addField(booleanModelField6);
        IntegerModelField integerModelField = new IntegerModelField("useSpecialFoodCountLimit", "特殊食品 | 使用上限(无限:0)", 0);
        this.useSpecialFoodCountLimit = integerModelField;
        modelFields.addField(integerModelField);
        BooleanModelField booleanModelField7 = new BooleanModelField("kitchen", "小鸡厨房", false);
        this.kitchen = booleanModelField7;
        modelFields.addField(booleanModelField7);
        BooleanModelField booleanModelField8 = new BooleanModelField("autoChickenChefCook", "自动做美食", false);
        this.autoChickenChefCook = booleanModelField8;
        modelFields.addField(booleanModelField8);
        ChoiceModelField choiceModelField = new ChoiceModelField("chickenChefCookStrategy", "小鸡大厨 | 做美食策略", 1, ChickenKitchen.ChickenChefCookStrategy.nickNames);
        this.chickenChefCookStrategy = choiceModelField;
        modelFields.addField(choiceModelField);
        BooleanModelField booleanModelField9 = new BooleanModelField("chickenChef", "小鸡大厨任务", false);
        this.chickenChef = booleanModelField9;
        modelFields.addField(booleanModelField9);
        BooleanModelField booleanModelField10 = new BooleanModelField("AutoAntFarmChickenChefTaskList", "大厨任务 | 推荐黑名单", true);
        this.AutoAntFarmChickenChefTaskList = booleanModelField10;
        modelFields.addField(booleanModelField10);
        SelectModelField selectModelField3 = new SelectModelField("AntFarmChickenChefTaskList", "大厨任务 | 黑名单列表", new LinkedHashSet(), new SelectModelField.SelectListFunc() { // from class: io.github.lazyimmortal.sesame.model.task.antFarm.AntFarm$$ExternalSyntheticLambda16
            @Override // io.github.lazyimmortal.sesame.data.modelFieldExt.SelectModelField.SelectListFunc
            public final List getList() {
                return AlipayAntFarmChickenChefTaskList.getList();
            }
        });
        this.AntFarmChickenChefTaskList = selectModelField3;
        modelFields.addField(selectModelField3);
        SelectModelField selectModelField4 = new SelectModelField("giftAiKitchenIngredientFriendList", "小鸡大厨 | 赠送好友列表", new LinkedHashSet(), new AntDodo$$ExternalSyntheticLambda3());
        this.giftAiKitchenIngredientFriendList = selectModelField4;
        modelFields.addField(selectModelField4);
        BooleanModelField booleanModelField11 = new BooleanModelField("rewardFriend", "打赏好友", false);
        this.rewardFriend = booleanModelField11;
        modelFields.addField(booleanModelField11);
        ChoiceModelField choiceModelField2 = new ChoiceModelField("recallAnimalType", "召回小鸡", 0, RecallAnimalType.nickNames);
        this.recallAnimalType = choiceModelField2;
        modelFields.addField(choiceModelField2);
        BooleanModelField booleanModelField12 = new BooleanModelField("feedAnimal", "投喂小鸡", false);
        this.feedAnimal = booleanModelField12;
        modelFields.addField(booleanModelField12);
        BooleanModelField booleanModelField13 = new BooleanModelField("feedFriendAnimal", "帮喂小鸡 | 开启", true);
        this.feedFriendAnimal = booleanModelField13;
        modelFields.addField(booleanModelField13);
        SelectAndCountModelField selectAndCountModelField = new SelectAndCountModelField("feedFriendAnimalList", "帮喂小鸡 | 好友列表", new LinkedHashMap(), new AntFarm$$ExternalSyntheticLambda14(), "请填写帮喂次数(每日)");
        this.feedFriendAnimalList = selectAndCountModelField;
        modelFields.addField(selectAndCountModelField);
        ChoiceModelField choiceModelField3 = new ChoiceModelField("hireAnimalType", "雇佣小鸡 | 动作", 0, HireAnimalType.nickNames);
        this.hireAnimalType = choiceModelField3;
        modelFields.addField(choiceModelField3);
        SelectModelField selectModelField5 = new SelectModelField("hireAnimalList", "雇佣小鸡 | 好友列表", new LinkedHashSet(), new AntDodo$$ExternalSyntheticLambda3());
        this.hireAnimalList = selectModelField5;
        modelFields.addField(selectModelField5);
        ChoiceModelField choiceModelField4 = new ChoiceModelField("sendBackAnimalWay", "遣返小鸡 | 方式", 1, SendBackAnimalWay.nickNames);
        this.sendBackAnimalWay = choiceModelField4;
        modelFields.addField(choiceModelField4);
        ChoiceModelField choiceModelField5 = new ChoiceModelField("sendBackAnimalType", "遣返小鸡 | 动作", 0, SendBackAnimalType.nickNames);
        this.sendBackAnimalType = choiceModelField5;
        modelFields.addField(choiceModelField5);
        SelectModelField selectModelField6 = new SelectModelField("sendFriendList", "遣返小鸡 | 好友列表", new LinkedHashSet(), new AntDodo$$ExternalSyntheticLambda3());
        this.sendBackAnimalList = selectModelField6;
        modelFields.addField(selectModelField6);
        ChoiceModelField choiceModelField6 = new ChoiceModelField("notifyFriendType", "通知赶鸡 | 动作", 0, NotifyFriendType.nickNames);
        this.notifyFriendType = choiceModelField6;
        modelFields.addField(choiceModelField6);
        SelectModelField selectModelField7 = new SelectModelField("notifyFriendList", "通知赶鸡 | 好友列表", new LinkedHashSet(), new AntDodo$$ExternalSyntheticLambda3());
        this.notifyFriendList = selectModelField7;
        modelFields.addField(selectModelField7);
        BooleanModelField booleanModelField14 = new BooleanModelField("ornamentsDressUp", "装扮焕新 | 开启", false);
        this.ornamentsDressUp = booleanModelField14;
        modelFields.addField(booleanModelField14);
        SelectModelField selectModelField8 = new SelectModelField("ornamentsDressUpList", "装扮焕新 | 套装列表", new LinkedHashSet(), new SelectModelField.SelectListFunc() { // from class: io.github.lazyimmortal.sesame.model.task.antFarm.AntFarm$$ExternalSyntheticLambda0
            @Override // io.github.lazyimmortal.sesame.data.modelFieldExt.SelectModelField.SelectListFunc
            public final List getList() {
                return FarmOrnaments.getList();
            }
        });
        this.ornamentsDressUpList = selectModelField8;
        modelFields.addField(selectModelField8);
        IntegerModelField integerModelField2 = new IntegerModelField("ornamentsDressUpDays", "装扮焕新 | 焕新频率(天)", 7);
        this.ornamentsDressUpDays = integerModelField2;
        modelFields.addField(integerModelField2);
        BooleanModelField booleanModelField15 = new BooleanModelField("drawMachine", "装扮抽抽乐", false);
        this.drawMachine = booleanModelField15;
        modelFields.addField(booleanModelField15);
        BooleanModelField booleanModelField16 = new BooleanModelField("AutoAntFarmDrawMachineTaskList", "抽抽乐 | 推荐黑白名单", true);
        this.AutoAntFarmDrawMachineTaskList = booleanModelField16;
        modelFields.addField(booleanModelField16);
        SelectModelField selectModelField9 = new SelectModelField("AntFarmDrawMachineTaskList", "抽抽乐 | 黑名单列表", new LinkedHashSet(), new SelectModelField.SelectListFunc() { // from class: io.github.lazyimmortal.sesame.model.task.antFarm.AntFarm$$ExternalSyntheticLambda1
            @Override // io.github.lazyimmortal.sesame.data.modelFieldExt.SelectModelField.SelectListFunc
            public final List getList() {
                return AlipayAntFarmDrawMachineTaskList.getList();
            }
        });
        this.AntFarmDrawMachineTaskList = selectModelField9;
        modelFields.addField(selectModelField9);
        BooleanModelField booleanModelField17 = new BooleanModelField("IPexchangeBenefit", "抽抽乐兑换 | 开启", false);
        this.IPexchangeBenefit = booleanModelField17;
        modelFields.addField(booleanModelField17);
        ChoiceModelField choiceModelField7 = new ChoiceModelField("donationType", "每日捐蛋 | 方式", 0, DonationType.nickNames);
        this.donationType = choiceModelField7;
        modelFields.addField(choiceModelField7);
        IntegerModelField integerModelField3 = new IntegerModelField("donationAmount", "每日捐蛋 | 倍数(每项)", 1);
        this.donationAmount = integerModelField3;
        modelFields.addField(integerModelField3);
        BooleanModelField booleanModelField18 = new BooleanModelField("competition", "排位赛 | 自动捐蛋领奖", false);
        this.competition = booleanModelField18;
        modelFields.addField(booleanModelField18);
        IntegerModelField integerModelField4 = new IntegerModelField("competitionStarNum", "保底模式 | 目标星星数或爱心值", 30, 0, 500);
        this.competitionStarNum = integerModelField4;
        modelFields.addField(integerModelField4);
        IntegerModelField integerModelField5 = new IntegerModelField("competitionDailyLimit", "排位捐蛋 | 捐蛋上限(0不限)", 10, 0, 1000);
        this.competitionDailyLimit = integerModelField5;
        modelFields.addField(integerModelField5);
        IntegerModelField integerModelField6 = new IntegerModelField("competitionLeadEggs", "激进模式 | 捐至榜首领先蛋数", 1, 0, 1000);
        this.competitionLeadEggs = integerModelField6;
        modelFields.addField(integerModelField6);
        IntegerModelField integerModelField7 = new IntegerModelField("competitionStealMinutes", "激进模式 | 霸榜提前分钟数(0不霸榜，1200为整天)", 0, 0, 1200);
        this.competitionStealMinutes = integerModelField7;
        modelFields.addField(integerModelField7);
        IntegerModelField integerModelField8 = new IntegerModelField("stealRankMinutes", "激进模式 | 偷榜提前分钟数(0不偷榜)", 0, 0, 1200);
        this.stealRankMinutes = integerModelField8;
        modelFields.addField(integerModelField8);
        BooleanModelField booleanModelField19 = new BooleanModelField("family", "亲密家庭 | 开启", false);
        this.family = booleanModelField19;
        modelFields.addField(booleanModelField19);
        SelectModelField selectModelField10 = new SelectModelField("familyOptions", "亲密家庭 | 选项", new LinkedHashSet(), new SelectModelField.SelectListFunc() { // from class: io.github.lazyimmortal.sesame.model.task.antFarm.AntFarm$$ExternalSyntheticLambda12
            @Override // io.github.lazyimmortal.sesame.data.modelFieldExt.SelectModelField.SelectListFunc
            public final List getList() {
                return CustomOption.getAntFarmFamilyOptions();
            }
        });
        this.familyOptions = selectModelField10;
        modelFields.addField(selectModelField10);
        SelectModelField selectModelField11 = new SelectModelField("notInviteList", "亲密家庭 | 不邀请列表", new LinkedHashSet(), new AntDodo$$ExternalSyntheticLambda3());
        this.notInviteList = selectModelField11;
        modelFields.addField(selectModelField11);
        BooleanModelField booleanModelField20 = new BooleanModelField("enableSleep", "小鸡睡觉 | 允许睡觉", false);
        this.enableSleep = booleanModelField20;
        modelFields.addField(booleanModelField20);
        StringModelField stringModelField = new StringModelField("sleepTime", "小鸡睡觉 | 时间", "2001");
        this.sleepTime = stringModelField;
        modelFields.addField(stringModelField);
        IntegerModelField integerModelField9 = new IntegerModelField("sleepMinutes", "小鸡睡觉 | 时长(分钟)", 590, 1, 600);
        this.sleepMinutes = integerModelField9;
        modelFields.addField(integerModelField9);
        BooleanModelField booleanModelField21 = new BooleanModelField("recordFarmGame", "小鸡乐园 | 游戏改分(星星球、登山赛、飞行赛、揍小鸡)", false);
        this.recordFarmGame = booleanModelField21;
        modelFields.addField(booleanModelField21);
        ArrayList arrayList = new ArrayList();
        arrayList.add("2200-2400");
        ListModelField.ListJoinCommaToStringModelField listJoinCommaToStringModelField = new ListModelField.ListJoinCommaToStringModelField("farmGameTime", "小鸡乐园 | 游戏时间(范围)", arrayList);
        this.farmGameTime = listJoinCommaToStringModelField;
        modelFields.addField(listJoinCommaToStringModelField);
        BooleanModelField booleanModelField22 = new BooleanModelField("drawGameCenterAward", "小鸡乐园 | 游戏宝箱", false);
        this.drawGameCenterAward = booleanModelField22;
        modelFields.addField(booleanModelField22);
        BooleanModelField booleanModelField23 = new BooleanModelField("gameCenterBuyMallItem", "小鸡乐园 | 乐园集市", false);
        this.gameCenterBuyMallItem = booleanModelField23;
        modelFields.addField(booleanModelField23);
        SelectAndCountModelField selectAndCountModelField2 = new SelectAndCountModelField("gameCenterBuyMallItemList", "小鸡乐园 | 兑奖", new LinkedHashMap(), new SelectAndCountModelField.SelectListFunc() { // from class: io.github.lazyimmortal.sesame.model.task.antFarm.AntFarm$$ExternalSyntheticLambda13
            @Override // io.github.lazyimmortal.sesame.data.modelFieldExt.SelectAndCountModelField.SelectListFunc
            public final List getList() {
                return GameCenterMallItem.getList();
            }
        }, "请填写兑奖次数(每日)");
        this.gameCenterBuyMallItemList = selectAndCountModelField2;
        modelFields.addField(selectAndCountModelField2);
        BooleanModelField booleanModelField24 = new BooleanModelField("chickenDiary", "小鸡日记", false);
        this.chickenDiary = booleanModelField24;
        modelFields.addField(booleanModelField24);
        BooleanModelField booleanModelField25 = new BooleanModelField("harvestProduce", "收取爱心鸡蛋", false);
        this.harvestProduce = booleanModelField25;
        modelFields.addField(booleanModelField25);
        BooleanModelField booleanModelField26 = new BooleanModelField("receiveFarmToolReward", "收取道具奖励", false);
        this.receiveFarmToolReward = booleanModelField26;
        modelFields.addField(booleanModelField26);
        BooleanModelField booleanModelField27 = new BooleanModelField("acceptGift", "收麦子", false);
        this.acceptGift = booleanModelField27;
        modelFields.addField(booleanModelField27);
        SelectAndCountModelField selectAndCountModelField3 = new SelectAndCountModelField("visitFriendList", "送麦子 | 好友列表", new LinkedHashMap(), new AntFarm$$ExternalSyntheticLambda14(), "请填写赠送次数(每日)");
        this.visitFriendList = selectAndCountModelField3;
        modelFields.addField(selectAndCountModelField3);
        return modelFields;
    }

    @Override // io.github.lazyimmortal.sesame.data.Model
    public void boot(ClassLoader classLoader) {
        super.boot(classLoader);
        RpcIntervalLimit.addIntervalLimit("com.alipay.antfarm.enterFarm", Integer.valueOf(DeserializerCache.DEFAULT_MAX_CACHE_SIZE));
    }

    @Override // io.github.lazyimmortal.sesame.data.task.ModelTask
    public Boolean check() {
        if (TaskCommon.IS_ENERGY_TIME.booleanValue()) {
            Log.farm("任务暂停⏸️蚂蚁庄园:当前为仅收能量时间");
            return false;
        }
        return true;
    }

    @Override // io.github.lazyimmortal.sesame.data.task.ModelTask
    public void run() {
        boolean z;
        boolean z2;
        try {
            JSONObject jSONObjectEnterFarm = enterFarm();
            if (jSONObjectEnterFarm == null) {
                return;
            }
            boolean z3 = false;
            if (!Status.hasFlagToday("BlackList::initAntFarm").booleanValue()) {
                initAntFarmTaskListMap(this.AutoAntFarmDoFarmTaskList.getValue().booleanValue(), this.AutoAntFarmDrawMachineTaskList.getValue().booleanValue(), this.drawMachine.getValue().booleanValue(), this.AutoAntFarmChickenChefTaskList.getValue().booleanValue(), this.chickenChef.getValue().booleanValue() && this.kitchen.getValue().booleanValue());
                Status.flagToday("BlackList::initAntFarm");
            }
            if (this.rewardFriend.getValue().booleanValue()) {
                rewardFriend();
            }
            if (this.sendBackAnimalType.getValue().intValue() != 0) {
                sendBackAnimal();
            }
            if (!AnimalInteractStatus.HOME.name().equals(this.ownerAnimal.animalInteractStatus)) {
                if ("ORCHARD".equals(this.ownerAnimal.locationType)) {
                    Log.farm("庄园通知📣[你家的小鸡给拉去除草了！]");
                    Log.farm("召回小鸡📣收获[" + new JSONObject(AntFarmRpcCall.orchardRecallAnimal(this.ownerAnimal.animalId, this.ownerAnimal.currentFarmMasterUserId)).getInt("manureCount") + "g肥料]");
                } else {
                    syncAnimalStatusAtOtherFarm(this.ownerAnimal.currentFarmId);
                    int i = AnonymousClass3.$SwitchMap$io$github$lazyimmortal$sesame$model$task$antFarm$AntFarm$SubAnimalType[SubAnimalType.valueOf(this.ownerAnimal.subAnimalType).ordinal()];
                    if (i != 1) {
                        if (i == 2) {
                            Log.record("小鸡太饿，离家出走了");
                        } else if (i == 3) {
                            Log.record("小鸡外出探险了");
                        } else if (i != 4) {
                            Log.record("小鸡不在庄园 " + this.ownerAnimal.subAnimalType);
                        } else {
                            Log.record("小鸡出去工作啦");
                        }
                        z = false;
                    } else {
                        Log.record("小鸡到好友家去做客了");
                        z = true;
                    }
                    String maskName = UserIdMap.getMaskName(AntFarmRpcCall.farmId2UserId(this.ownerAnimal.currentFarmId));
                    int i2 = AnonymousClass3.$SwitchMap$io$github$lazyimmortal$sesame$model$task$antFarm$AntFarm$AnimalFeedStatus[AnimalFeedStatus.valueOf(this.ownerAnimal.animalFeedStatus).ordinal()];
                    if (i2 != 1) {
                        if (i2 == 2) {
                            Log.record("小鸡在[" + maskName + "]的庄园里吃得津津有味");
                        }
                        z2 = false;
                    } else {
                        Log.record("小鸡在[" + maskName + "]的庄园里挨饿");
                        z2 = true;
                    }
                    int iIntValue = this.recallAnimalType.getValue().intValue();
                    if (iIntValue == 0) {
                        z3 = true;
                    } else if (iIntValue == 1) {
                        z3 = !z;
                    } else if (iIntValue == 2) {
                        z3 = z2;
                    }
                    if (z3) {
                        recallAnimal(this.ownerAnimal.animalId, this.ownerAnimal.currentFarmId, this.ownerFarmId, maskName);
                        syncAnimalStatus(this.ownerFarmId);
                    }
                }
            }
            if (this.receiveFarmToolReward.getValue().booleanValue()) {
                listFarmTool();
                receiveToolTaskReward();
            }
            if (this.recordFarmGame.getValue().booleanValue()) {
                long jCurrentTimeMillis = System.currentTimeMillis();
                Iterator<String> it = this.farmGameTime.getValue().iterator();
                while (it.hasNext()) {
                    if (TimeUtil.checkInTimeRange(Long.valueOf(jCurrentTimeMillis), it.next()).booleanValue()) {
                        recordFarmGame(GameType.starGame);
                        recordFarmGame(GameType.jumpGame);
                        recordFarmGame(GameType.flyGame);
                        recordFarmGame(GameType.hitGame);
                        break;
                    }
                }
            }
            if (this.gameCenterBuyMallItem.getValue().booleanValue()) {
                gameCenterBuyMallItem();
            }
            if (this.useSpecialFood.getValue().booleanValue() && jSONObjectEnterFarm.has("cuisineList") && AnimalInteractStatus.HOME.name().equals(this.ownerAnimal.animalInteractStatus) && !AnimalFeedStatus.SLEEPY.name().equals(this.ownerAnimal.animalFeedStatus) && Status.canUseSpecialFoodToday().booleanValue()) {
                ChickenKitchen.useFarmFood(jSONObjectEnterFarm.getJSONArray("cuisineList"));
            }
            if (this.kitchen.getValue().booleanValue()) {
                ChickenKitchen.collectDailyFoodMaterial(this.ownerUserId);
                ChickenKitchen.collectDailyLimitedFoodMaterial();
                if (AnimalFeedStatus.SLEEPY.name().equals(this.ownerAnimal.animalFeedStatus)) {
                    Log.record("小鸡正在睡觉🛌，跳过小鸡厨房👨🏻\u200d🍳制作");
                } else {
                    ChickenKitchen.cook(this.ownerUserId);
                }
                if (this.autoChickenChefCook.getValue().booleanValue()) {
                    if (AnimalFeedStatus.SLEEPY.name().equals(this.ownerAnimal.animalFeedStatus)) {
                        Log.record("小鸡正在睡觉🛌，跳过小鸡大厨👨🏻\u200d🍳制作");
                    } else {
                        ChickenKitchen.chickenChefCook(this.chickenChefCookStrategy.getValue().intValue());
                    }
                }
                if (this.chickenChef.getValue().booleanValue()) {
                    ChickenKitchen.chickenChefTask(this.ownerUserId, this.AntFarmChickenChefTaskList.getValue(), this.giftAiKitchenIngredientFriendList);
                }
                ChickenKitchen.chickenChefCookbookInfo();
            }
            if (this.chickenDiary.getValue().booleanValue()) {
                queryChickenDiary("");
                queryChickenDiaryList();
            }
            if (this.useNewEggTool.getValue().booleanValue()) {
                useFarmTool(this.ownerFarmId, ToolType.NEWEGGTOOL);
                syncAnimalStatus(this.ownerFarmId);
            }
            if (this.harvestProduce.getValue().booleanValue() && this.benevolenceScore >= 1.0d) {
                Log.record("有可收取的爱心鸡蛋");
                harvestProduce(this.ownerFarmId);
            }
            if (this.donationType.getValue().intValue() != 0) {
                donation();
            }
            if (this.competition.getValue().booleanValue()) {
                competition();
            }
            if (this.receiveFarmTaskAward.getValue().booleanValue()) {
                listFarmTask();
            }
            if (AnimalInteractStatus.HOME.name().equals(this.ownerAnimal.animalInteractStatus)) {
                if (AnimalFeedStatus.HUNGRY.name().equals(this.ownerAnimal.animalFeedStatus)) {
                    Log.record("小鸡在挨饿");
                    if (this.feedAnimal.getValue().booleanValue()) {
                        feedAnimal(this.ownerFarmId);
                    }
                } else if (AnimalFeedStatus.EATING.name().equals(this.ownerAnimal.animalFeedStatus)) {
                    if (this.useAccelerateTool.getValue().booleanValue()) {
                        useAccelerateTool();
                        TimeUtil.sleep(1000L);
                    }
                    if (this.useBigEaterTool.getValue().booleanValue()) {
                        useFarmTool(this.ownerFarmId, ToolType.BIG_EATER_TOOL);
                    }
                    if (this.feedAnimal.getValue().booleanValue()) {
                        autoFeedAnimal();
                        TimeUtil.sleep(1000L);
                    }
                }
            }
            if (this.ornamentsDressUp.getValue().booleanValue()) {
                ornamentsDressUp();
            }
            visitAnimal();
            visitFriend();
            if (this.feedFriendAnimal.getValue().booleanValue()) {
                feedFriend();
            }
            if (this.notifyFriendType.getValue().intValue() != 0) {
                notifyFriend();
            }
            if (this.drawMachine.getValue().booleanValue()) {
                drawMachineGroups();
            }
            if (this.hireAnimalType.getValue().intValue() != 0) {
                hireAnimal();
            }
            if (this.family.getValue().booleanValue()) {
                family();
            }
            if (this.drawGameCenterAward.getValue().booleanValue()) {
                drawGameCenterAward();
            }
            animalSleepAndWake();
            farmInfo(jSONObjectEnterFarm, farmExtraInfo());
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "AntFarm.start.run err:");
            Log.printStackTrace(str, th);
        }
    }

    /* JADX INFO: renamed from: io.github.lazyimmortal.sesame.model.task.antFarm.AntFarm$3, reason: invalid class name */
    static /* synthetic */ class AnonymousClass3 {
        static final /* synthetic */ int[] $SwitchMap$io$github$lazyimmortal$sesame$model$task$antFarm$AntFarm$AnimalFeedStatus;
        static final /* synthetic */ int[] $SwitchMap$io$github$lazyimmortal$sesame$model$task$antFarm$AntFarm$SubAnimalType;

        static {
            int[] iArr = new int[AnimalFeedStatus.values().length];
            $SwitchMap$io$github$lazyimmortal$sesame$model$task$antFarm$AntFarm$AnimalFeedStatus = iArr;
            try {
                iArr[AnimalFeedStatus.HUNGRY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$io$github$lazyimmortal$sesame$model$task$antFarm$AntFarm$AnimalFeedStatus[AnimalFeedStatus.EATING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            int[] iArr2 = new int[SubAnimalType.values().length];
            $SwitchMap$io$github$lazyimmortal$sesame$model$task$antFarm$AntFarm$SubAnimalType = iArr2;
            try {
                iArr2[SubAnimalType.GUEST.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$io$github$lazyimmortal$sesame$model$task$antFarm$AntFarm$SubAnimalType[SubAnimalType.NORMAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$io$github$lazyimmortal$sesame$model$task$antFarm$AntFarm$SubAnimalType[SubAnimalType.PIRATE.ordinal()] = 3;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$io$github$lazyimmortal$sesame$model$task$antFarm$AntFarm$SubAnimalType[SubAnimalType.WORK.ordinal()] = 4;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:104:0x020c  */
    /* JADX WARN: Code duplicated, block: B:105:0x020f  */
    /* JADX WARN: Code duplicated, block: B:41:0x00a2 A[Catch: all -> 0x01fb, TryCatch #3 {all -> 0x01fb, blocks: (B:39:0x008d, B:41:0x00a2, B:43:0x00aa), top: B:114:0x008d }] */
    /* JADX WARN: Code duplicated, block: B:99:0x01f6  */
    private String farmExtraInfo() {
        String strOptString;
        String strOptString2;
        Double dValueOf;
        Integer num;
        Integer num2;
        String strTrimDouble;
        JSONObject jSONObject;
        JSONArray jSONArrayOptJSONArray;
        JSONArray jSONArray;
        String str;
        Integer numValueOf;
        JSONObject jSONObjectOptJSONObject;
        String str2 = "";
        Double d = null;
        try {
            JSONObject jSONObject2 = new JSONObject(AntFarmRpcCall.queryAnimalShowInfo(UserIdMap.getCurrentUid()));
            try {
                if (MessageUtil.checkMemo(TAG, jSONObject2).booleanValue()) {
                    JSONObject jSONObjectOptJSONObject2 = jSONObject2.optJSONObject("ownAnimalShowInfo");
                    strOptString = jSONObjectOptJSONObject2 != null ? jSONObjectOptJSONObject2.optString(NotificationCompat.CATEGORY_STATUS, "") : "";
                    try {
                        strOptString2 = jSONObject2.optString("farmShowStatus", "");
                        try {
                            JSONArray jSONArrayOptJSONArray2 = jSONObject2.optJSONArray("manurePotList");
                            if (jSONArrayOptJSONArray2 != null && jSONArrayOptJSONArray2.length() > 0 && (jSONObjectOptJSONObject = jSONArrayOptJSONArray2.optJSONObject(0)) != null) {
                                dValueOf = jSONObjectOptJSONObject.has("manurePotNum") ? Double.valueOf(jSONObjectOptJSONObject.optDouble("manurePotNum")) : null;
                                try {
                                    numValueOf = jSONObjectOptJSONObject.has("manurePotLimit") ? Integer.valueOf(jSONObjectOptJSONObject.optInt("manurePotLimit")) : null;
                                    d = dValueOf;
                                } catch (Throwable th) {
                                    th = th;
                                    String str3 = TAG;
                                    Log.i(str3, "farmExtraInfo queryAnimalShowInfo err:");
                                    Log.printStackTrace(str3, th);
                                    d = dValueOf;
                                    num = null;
                                }
                            }
                            num = numValueOf;
                        } catch (Throwable th2) {
                            th = th2;
                            dValueOf = null;
                            String str4 = TAG;
                            Log.i(str4, "farmExtraInfo queryAnimalShowInfo err:");
                            Log.printStackTrace(str4, th);
                            d = dValueOf;
                            num = null;
                            jSONObject = new JSONObject(AntFarmRpcCall.rankingList(0));
                            if (MessageUtil.checkMemo(TAG, jSONObject).booleanValue()) {
                                num2 = num;
                                strOptString2 = strOptString2;
                            } else {
                                num2 = num;
                                strOptString2 = strOptString2;
                            }
                            if (d == null) {
                                strTrimDouble = " ";
                            } else {
                                strTrimDouble = trimDouble(d.doubleValue());
                            }
                            return "小鸡舞台[" + strOptString + "/" + strOptString2 + "]肥料盆" + strTrimDouble + "/" + Log.n(num2) + ";" + str2;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        strOptString2 = "";
                    }
                    jSONObject = new JSONObject(AntFarmRpcCall.rankingList(0));
                    if (MessageUtil.checkMemo(TAG, jSONObject).booleanValue() || (jSONArrayOptJSONArray = jSONObject.optJSONArray("rankingList")) == null) {
                        num2 = num;
                        strOptString2 = strOptString2;
                    } else {
                        String currentUid = UserIdMap.getCurrentUid();
                        StringBuilder sb = new StringBuilder();
                        JSONObject[] jSONObjectArr = new JSONObject[3];
                        String string = "";
                        int i = 0;
                        while (i < jSONArrayOptJSONArray.length()) {
                            try {
                                JSONObject jSONObjectOptJSONObject3 = jSONArrayOptJSONArray.optJSONObject(i);
                                try {
                                    if (jSONObjectOptJSONObject3 == null) {
                                        jSONArray = jSONArrayOptJSONArray;
                                        num2 = num;
                                        str = currentUid;
                                        strOptString2 = strOptString2;
                                    } else {
                                        jSONArray = jSONArrayOptJSONArray;
                                        int iOptInt = jSONObjectOptJSONObject3.optInt("rank");
                                        String strOptString3 = jSONObjectOptJSONObject3.optString("userId", "");
                                        str = currentUid;
                                        if (strOptString3.equals(currentUid)) {
                                            num2 = num;
                                            try {
                                                StringBuilder sb2 = new StringBuilder();
                                                sb2.append("我的排名");
                                                sb2.append(iOptInt);
                                                sb2.append("荣耀分");
                                                sb2.append(jSONObjectOptJSONObject3.optInt("gloryScore"));
                                                sb2.append("爱心分");
                                                sb2.append(jSONObjectOptJSONObject3.optInt("beneScore"));
                                                sb2.append(";");
                                                string = sb2.toString();
                                            } catch (Throwable th4) {
                                                th = th4;
                                                strOptString2 = strOptString2;
                                                str2 = string;
                                                String str5 = TAG;
                                                Log.i(str5, "farmExtraInfo rankingList err:");
                                                Log.printStackTrace(str5, th);
                                                if (d == null) {
                                                    strTrimDouble = " ";
                                                } else {
                                                    strTrimDouble = trimDouble(d.doubleValue());
                                                }
                                                return "小鸡舞台[" + strOptString + "/" + strOptString2 + "]肥料盆" + strTrimDouble + "/" + Log.n(num2) + ";" + str2;
                                            }
                                        } else {
                                            num2 = num;
                                        }
                                        if (sb.length() < 100 && iOptInt <= 3) {
                                            sb.append("第");
                                            sb.append(iOptInt);
                                            sb.append("[");
                                            sb.append(UserIdMap.getShowName(strOptString3));
                                            sb.append("]荣耀");
                                            sb.append(jSONObjectOptJSONObject3.optInt("gloryScore"));
                                            sb.append(";");
                                        }
                                        int iOptInt2 = jSONObjectOptJSONObject3.optInt("beneScore");
                                        JSONObject jSONObject3 = jSONObjectArr[0];
                                        if (jSONObject3 == null || iOptInt2 > jSONObject3.optInt("beneScore")) {
                                            jSONObjectArr[2] = jSONObjectArr[1];
                                            jSONObjectArr[1] = jSONObjectArr[0];
                                            jSONObjectArr[0] = jSONObjectOptJSONObject3;
                                        } else {
                                            JSONObject jSONObject4 = jSONObjectArr[1];
                                            if (jSONObject4 == null || iOptInt2 > jSONObject4.optInt("beneScore")) {
                                                jSONObjectArr[2] = jSONObjectArr[1];
                                                jSONObjectArr[1] = jSONObjectOptJSONObject3;
                                            } else {
                                                JSONObject jSONObject5 = jSONObjectArr[2];
                                                if (jSONObject5 == null || iOptInt2 > jSONObject5.optInt("beneScore")) {
                                                    jSONObjectArr[2] = jSONObjectOptJSONObject3;
                                                }
                                            }
                                        }
                                        i++;
                                        jSONArrayOptJSONArray = jSONArray;
                                        num = num2;
                                        currentUid = str;
                                        strOptString2 = strOptString2;
                                    }
                                    i++;
                                    jSONArrayOptJSONArray = jSONArray;
                                    num = num2;
                                    currentUid = str;
                                    strOptString2 = strOptString2;
                                } catch (Throwable th5) {
                                    th = th5;
                                    str2 = string;
                                    String str6 = TAG;
                                    Log.i(str6, "farmExtraInfo rankingList err:");
                                    Log.printStackTrace(str6, th);
                                    if (d == null) {
                                        strTrimDouble = " ";
                                    } else {
                                        strTrimDouble = trimDouble(d.doubleValue());
                                    }
                                    return "小鸡舞台[" + strOptString + "/" + strOptString2 + "]肥料盆" + strTrimDouble + "/" + Log.n(num2) + ";" + str2;
                                }
                            } catch (Throwable th6) {
                                th = th6;
                                num2 = num;
                            }
                        }
                        num2 = num;
                        strOptString2 = strOptString2;
                        StringBuilder sb3 = new StringBuilder();
                        for (int i2 = 0; i2 < 3; i2++) {
                            if (jSONObjectArr[i2] != null) {
                                sb3.append("捐蛋第");
                                sb3.append(i2 + 1);
                                sb3.append("[");
                                sb3.append(UserIdMap.getShowName(jSONObjectArr[i2].optString("userId", "")));
                                sb3.append("]爱心");
                                sb3.append(jSONObjectArr[i2].optInt("beneScore"));
                                sb3.append(";");
                            }
                        }
                        str2 = string + ((Object) sb) + ((Object) sb3);
                    }
                    if (d == null) {
                        strTrimDouble = " ";
                    } else {
                        strTrimDouble = trimDouble(d.doubleValue());
                    }
                    return "小鸡舞台[" + strOptString + "/" + strOptString2 + "]肥料盆" + strTrimDouble + "/" + Log.n(num2) + ";" + str2;
                }
                strOptString = "";
                strOptString2 = strOptString;
                jSONObject = new JSONObject(AntFarmRpcCall.rankingList(0));
                if (MessageUtil.checkMemo(TAG, jSONObject).booleanValue()) {
                    num2 = num;
                    strOptString2 = strOptString2;
                } else {
                    num2 = num;
                    strOptString2 = strOptString2;
                }
            } catch (Throwable th7) {
                th = th7;
                num2 = num;
                strOptString2 = strOptString2;
            }
            numValueOf = null;
            num = numValueOf;
        } catch (Throwable th8) {
            th = th8;
            strOptString = "";
            strOptString2 = strOptString;
        }
        if (d == null) {
            strTrimDouble = " ";
        } else {
            strTrimDouble = trimDouble(d.doubleValue());
        }
        return "小鸡舞台[" + strOptString + "/" + strOptString2 + "]肥料盆" + strTrimDouble + "/" + Log.n(num2) + ";" + str2;
    }

    /* JADX WARN: Code duplicated, block: B:156:0x0307  */
    /* JADX WARN: Code duplicated, block: B:164:0x032d A[Catch: all -> 0x0346, TRY_LEAVE, TryCatch #20 {all -> 0x0346, blocks: (B:162:0x0325, B:164:0x032d, B:181:0x0376, B:186:0x0390, B:188:0x0396, B:190:0x03a3, B:192:0x03ab), top: B:415:0x0325 }] */
    /* JADX WARN: Code duplicated, block: B:166:0x0342  */
    /* JADX WARN: Code duplicated, block: B:176:0x035c  */
    /* JADX WARN: Code duplicated, block: B:181:0x0376 A[Catch: all -> 0x0346, TRY_ENTER, TRY_LEAVE, TryCatch #20 {all -> 0x0346, blocks: (B:162:0x0325, B:164:0x032d, B:181:0x0376, B:186:0x0390, B:188:0x0396, B:190:0x03a3, B:192:0x03ab), top: B:415:0x0325 }] */
    /* JADX WARN: Code duplicated, block: B:183:0x037f  */
    /* JADX WARN: Code duplicated, block: B:186:0x0390 A[Catch: all -> 0x0346, TRY_ENTER, TryCatch #20 {all -> 0x0346, blocks: (B:162:0x0325, B:164:0x032d, B:181:0x0376, B:186:0x0390, B:188:0x0396, B:190:0x03a3, B:192:0x03ab), top: B:415:0x0325 }] */
    /* JADX WARN: Code duplicated, block: B:188:0x0396 A[Catch: all -> 0x0346, TryCatch #20 {all -> 0x0346, blocks: (B:162:0x0325, B:164:0x032d, B:181:0x0376, B:186:0x0390, B:188:0x0396, B:190:0x03a3, B:192:0x03ab), top: B:415:0x0325 }] */
    /* JADX WARN: Code duplicated, block: B:189:0x03a1  */
    /* JADX WARN: Code duplicated, block: B:192:0x03ab A[Catch: all -> 0x0346, TRY_LEAVE, TryCatch #20 {all -> 0x0346, blocks: (B:162:0x0325, B:164:0x032d, B:181:0x0376, B:186:0x0390, B:188:0x0396, B:190:0x03a3, B:192:0x03ab), top: B:415:0x0325 }] */
    /* JADX WARN: Code duplicated, block: B:194:0x03b7  */
    /* JADX WARN: Code duplicated, block: B:196:0x03be  */
    /* JADX WARN: Code duplicated, block: B:201:0x03db A[Catch: all -> 0x0404, TryCatch #19 {all -> 0x0404, blocks: (B:199:0x03cb, B:201:0x03db, B:203:0x03ea, B:205:0x03f2), top: B:413:0x03cb }] */
    /* JADX WARN: Code duplicated, block: B:202:0x03e8  */
    /* JADX WARN: Code duplicated, block: B:205:0x03f2 A[Catch: all -> 0x0404, TRY_LEAVE, TryCatch #19 {all -> 0x0404, blocks: (B:199:0x03cb, B:201:0x03db, B:203:0x03ea, B:205:0x03f2), top: B:413:0x03cb }] */
    /* JADX WARN: Code duplicated, block: B:207:0x03fd  */
    /* JADX WARN: Code duplicated, block: B:211:0x040b  */
    /* JADX WARN: Code duplicated, block: B:216:0x0458  */
    /* JADX WARN: Code duplicated, block: B:217:0x045b  */
    /* JADX WARN: Code duplicated, block: B:233:0x04a5  */
    /* JADX WARN: Code duplicated, block: B:236:0x04b3 A[Catch: all -> 0x069f, TryCatch #36 {all -> 0x069f, blocks: (B:234:0x04ad, B:236:0x04b3, B:238:0x04bd, B:243:0x04d0, B:255:0x04fc, B:265:0x0528, B:259:0x050f, B:264:0x0524, B:249:0x04e3, B:254:0x04f8, B:241:0x04c8), top: B:446:0x04ad }] */
    /* JADX WARN: Code duplicated, block: B:337:0x068f  */
    /* JADX WARN: Code duplicated, block: B:345:0x06c4  */
    /* JADX WARN: Code duplicated, block: B:354:0x0725  */
    /* JADX WARN: Code duplicated, block: B:356:0x073f  */
    /* JADX WARN: Code duplicated, block: B:357:0x0742  */
    /* JADX WARN: Code duplicated, block: B:359:0x074c  */
    /* JADX WARN: Code duplicated, block: B:360:0x074f  */
    /* JADX WARN: Code duplicated, block: B:362:0x0759  */
    /* JADX WARN: Code duplicated, block: B:363:0x075c  */
    /* JADX WARN: Code duplicated, block: B:366:0x0767  */
    /* JADX WARN: Code duplicated, block: B:369:0x0822  */
    /* JADX WARN: Code duplicated, block: B:370:0x0825  */
    /* JADX WARN: Code duplicated, block: B:373:0x0837  */
    /* JADX WARN: Code duplicated, block: B:391:0x02f0 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:413:0x03cb A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:419:0x0315 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:439:0x0370 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:454:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Instruction removed from duplicated block: B:373:0x0837, please report this as an issue */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Unreachable blocks removed: 2, instructions: 2 */
    private void farmInfo(JSONObject jSONObject, String str) {
        String str2;
        String strOptString;
        String str3;
        Double dValueOf;
        Double dValueOf2;
        Double dValueOf3;
        Integer numValueOf;
        Integer numValueOf2;
        Integer numValueOf3;
        Integer numValueOf4;
        Integer numValueOf5;
        Integer numValueOf6;
        Integer numValueOf7;
        Integer num;
        Object obj;
        Integer num2;
        Double d;
        String str4;
        Integer num3;
        String str5;
        Integer num4;
        Integer num5;
        Integer num6;
        Integer num7;
        Integer num8;
        Double d2;
        Double d3;
        Double d4;
        String str6;
        String str7;
        String str8;
        String str9;
        String string;
        String string2;
        String str10;
        JSONObject jSONObject2;
        String str11;
        JSONObject jSONObjectOptJSONObject;
        long jOptLong;
        String str12;
        String str13;
        String strOptString2;
        JSONObject jSONObjectOptJSONObject2;
        Integer numValueOf8;
        boolean zOptBoolean;
        JSONObject jSONObjectOptJSONObject3;
        Integer num9;
        Integer numValueOf9;
        JSONObject jSONObjectOptJSONObject4;
        Integer numValueOf10;
        String strTrimDouble;
        String str14;
        String str15;
        Integer numValueOf11;
        JSONObject jSONObjectEnterDonationCompetitionRank;
        int iIntValue;
        int iIntValue2;
        String str16;
        String str17;
        String str18;
        String str19;
        JSONArray jSONArray;
        String strTrimDouble2;
        String strTrimDouble3;
        String strTrimDouble4;
        String str20;
        Object obj2;
        JSONObject jSONObjectOptJSONObject5;
        Object obj3;
        String strOptString3;
        String strOptString4;
        Double d5;
        JSONObject jSONObjectOptJSONObject6;
        String str21 = "";
        if (jSONObject != null) {
            str2 = "[";
            try {
                JSONObject jSONObjectOptJSONObject7 = jSONObject.optJSONObject("farmVO");
                if (jSONObjectOptJSONObject7 != null) {
                    Integer numValueOf12 = jSONObjectOptJSONObject7.has("foodStock") ? Integer.valueOf(jSONObjectOptJSONObject7.optInt("foodStock")) : null;
                    try {
                        numValueOf7 = jSONObjectOptJSONObject7.has("foodStockLimit") ? Integer.valueOf(jSONObjectOptJSONObject7.optInt("foodStockLimit")) : null;
                        try {
                            JSONObject jSONObjectOptJSONObject8 = jSONObjectOptJSONObject7.optJSONObject("charityAccountVO");
                            if (jSONObjectOptJSONObject8 != null) {
                                numValueOf5 = jSONObjectOptJSONObject8.has("gloryScore") ? Integer.valueOf(jSONObjectOptJSONObject8.optInt("gloryScore")) : null;
                                try {
                                    numValueOf3 = jSONObjectOptJSONObject8.has("achievementNum") ? Integer.valueOf(jSONObjectOptJSONObject8.optInt("achievementNum")) : null;
                                } catch (Throwable th) {
                                    th = th;
                                    dValueOf = null;
                                    dValueOf2 = null;
                                    dValueOf3 = null;
                                    numValueOf = null;
                                    numValueOf2 = null;
                                    numValueOf3 = null;
                                    numValueOf4 = null;
                                    numValueOf6 = numValueOf4;
                                    obj2 = numValueOf6;
                                    numValueOf7 = numValueOf7;
                                    num = numValueOf12;
                                    str3 = str21;
                                    String str22 = TAG;
                                    Log.i(str22, "farmInfo 解析失败:");
                                    Log.printStackTrace(str22, th);
                                    num3 = numValueOf7;
                                    str5 = str21;
                                    str4 = "";
                                    Double d6 = dValueOf2;
                                    d4 = dValueOf;
                                    num2 = numValueOf6;
                                    num4 = numValueOf5;
                                    num5 = numValueOf4;
                                    num6 = numValueOf3;
                                    num7 = numValueOf2;
                                    num8 = numValueOf;
                                    d2 = dValueOf3;
                                    d3 = d6;
                                    d = obj2;
                                    String str23 = ";";
                                    if (this.competition.getValue().booleanValue()) {
                                        try {
                                            str6 = str5;
                                            try {
                                                jSONObject2 = new JSONObject(AntFarmRpcCall.queryCompetitionEntranceInfo());
                                                str11 = TAG;
                                                if (MessageUtil.checkMemo(str11, jSONObject2).booleanValue()) {
                                                    str7 = str3;
                                                    try {
                                                        jSONObjectOptJSONObject = jSONObject2.optJSONObject("donationCompetitionActivityConf");
                                                        num6 = num6;
                                                        num5 = num5;
                                                        if (jSONObjectOptJSONObject != null) {
                                                            try {
                                                                String strOptString5 = jSONObjectOptJSONObject.optString("name", "");
                                                                num8 = num8;
                                                                num7 = num7;
                                                                try {
                                                                    jOptLong = jSONObjectOptJSONObject.optLong("endTime", 0L);
                                                                    if (jOptLong > 0) {
                                                                        str12 = new SimpleDateFormat("MM-dd", Locale.getDefault()).format(new Date(jOptLong));
                                                                    } else {
                                                                        str12 = "";
                                                                    }
                                                                    str13 = strOptString5;
                                                                } catch (Throwable th2) {
                                                                    th = th2;
                                                                    num4 = num4;
                                                                    num3 = num3;
                                                                    str9 = "";
                                                                    string = str9;
                                                                    string2 = string;
                                                                    str8 = string2;
                                                                    String str24 = TAG;
                                                                    Log.i(str24, "farmInfo 排位赛查询失败:");
                                                                    Log.printStackTrace(str24, th);
                                                                    str10 = string2 + string + str9;
                                                                    if (d4 == null) {
                                                                        strTrimDouble2 = " ";
                                                                    } else {
                                                                        strTrimDouble2 = trimDouble(d4.doubleValue());
                                                                    }
                                                                    if (d2 == null) {
                                                                        strTrimDouble3 = " ";
                                                                    } else {
                                                                        strTrimDouble3 = trimDouble(d2.doubleValue());
                                                                    }
                                                                    if (d == 0) {
                                                                        strTrimDouble4 = " ";
                                                                    } else {
                                                                        strTrimDouble4 = trimDouble(d.doubleValue());
                                                                    }
                                                                    String strTrimDouble5 = d3 != null ? trimDouble(d3.doubleValue()) : " ";
                                                                    StringBuilder sb = new StringBuilder("蚂蚁庄园🐔[");
                                                                    sb.append(UserIdMap.getShowName(UserIdMap.getCurrentUid()));
                                                                    sb.append("]饲料");
                                                                    sb.append(Log.n(num));
                                                                    sb.append("/");
                                                                    sb.append(Log.n(num3));
                                                                    sb.append("槽内");
                                                                    sb.append(Log.n(num7));
                                                                    sb.append("/");
                                                                    sb.append(Log.n(num8));
                                                                    sb.append(";爱心蛋");
                                                                    sb.append(Log.n(num5));
                                                                    sb.append(";光荣分");
                                                                    sb.append(Log.n(num4));
                                                                    sb.append("成就");
                                                                    sb.append(Log.n(num6));
                                                                    sb.append(";心情");
                                                                    sb.append(strTrimDouble2);
                                                                    sb.append(";小鸡[");
                                                                    sb.append(str7);
                                                                    sb.append("/");
                                                                    sb.append(str6);
                                                                    sb.append("]已吃");
                                                                    sb.append(strTrimDouble3);
                                                                    sb.append("被偷");
                                                                    sb.append(strTrimDouble4);
                                                                    sb.append(";肥料");
                                                                    sb.append(strTrimDouble5);
                                                                    sb.append(";芭芭农场[");
                                                                    sb.append(str4);
                                                                    sb.append("]");
                                                                    sb.append(Log.n(num2));
                                                                    sb.append(str23);
                                                                    if (str == null) {
                                                                        str20 = str8;
                                                                    } else {
                                                                        str20 = str;
                                                                    }
                                                                    sb.append(str20);
                                                                    Log.info(sb.toString());
                                                                    if (str10.isEmpty()) {
                                                                    }
                                                                    Log.info("庄园排位🏆[" + UserIdMap.getShowName(UserIdMap.getCurrentUid()) + "]" + str10);
                                                                }
                                                            } catch (Throwable th3) {
                                                                th = th3;
                                                                num8 = num8;
                                                                num7 = num7;
                                                                num4 = num4;
                                                                num3 = num3;
                                                                str9 = "";
                                                                string = str9;
                                                                string2 = string;
                                                                str8 = string2;
                                                                String str25 = TAG;
                                                                Log.i(str25, "farmInfo 排位赛查询失败:");
                                                                Log.printStackTrace(str25, th);
                                                                str10 = string2 + string + str9;
                                                                if (d4 == null) {
                                                                    strTrimDouble2 = " ";
                                                                } else {
                                                                    strTrimDouble2 = trimDouble(d4.doubleValue());
                                                                }
                                                                if (d2 == null) {
                                                                    strTrimDouble3 = " ";
                                                                } else {
                                                                    strTrimDouble3 = trimDouble(d2.doubleValue());
                                                                }
                                                                if (d == 0) {
                                                                    strTrimDouble4 = " ";
                                                                } else {
                                                                    strTrimDouble4 = trimDouble(d.doubleValue());
                                                                }
                                                                if (d3 != null) {
                                                                }
                                                                StringBuilder sb2 = new StringBuilder("蚂蚁庄园🐔[");
                                                                sb2.append(UserIdMap.getShowName(UserIdMap.getCurrentUid()));
                                                                sb2.append("]饲料");
                                                                sb2.append(Log.n(num));
                                                                sb2.append("/");
                                                                sb2.append(Log.n(num3));
                                                                sb2.append("槽内");
                                                                sb2.append(Log.n(num7));
                                                                sb2.append("/");
                                                                sb2.append(Log.n(num8));
                                                                sb2.append(";爱心蛋");
                                                                sb2.append(Log.n(num5));
                                                                sb2.append(";光荣分");
                                                                sb2.append(Log.n(num4));
                                                                sb2.append("成就");
                                                                sb2.append(Log.n(num6));
                                                                sb2.append(";心情");
                                                                sb2.append(strTrimDouble2);
                                                                sb2.append(";小鸡[");
                                                                sb2.append(str7);
                                                                sb2.append("/");
                                                                sb2.append(str6);
                                                                sb2.append("]已吃");
                                                                sb2.append(strTrimDouble3);
                                                                sb2.append("被偷");
                                                                sb2.append(strTrimDouble4);
                                                                sb2.append(";肥料");
                                                                sb2.append(strTrimDouble5);
                                                                sb2.append(";芭芭农场[");
                                                                sb2.append(str4);
                                                                sb2.append("]");
                                                                sb2.append(Log.n(num2));
                                                                sb2.append(str23);
                                                                if (str == null) {
                                                                    str20 = str8;
                                                                } else {
                                                                    str20 = str;
                                                                }
                                                                sb2.append(str20);
                                                                Log.info(sb2.toString());
                                                                if (str10.isEmpty()) {
                                                                    Log.info("庄园排位🏆[" + UserIdMap.getShowName(UserIdMap.getCurrentUid()) + "]" + str10);
                                                                }
                                                            }
                                                        } else {
                                                            num8 = num8;
                                                            num7 = num7;
                                                            str12 = "";
                                                            str13 = str12;
                                                        }
                                                        try {
                                                            strOptString2 = jSONObject2.optString("rankRoundId", "");
                                                            jSONObjectOptJSONObject2 = jSONObject2.optJSONObject("animationInfo");
                                                            if (jSONObjectOptJSONObject2 != null) {
                                                                try {
                                                                    if (jSONObjectOptJSONObject2.has("todayDonationNum")) {
                                                                        numValueOf8 = Integer.valueOf(jSONObjectOptJSONObject2.optInt("todayDonationNum"));
                                                                    } else {
                                                                        numValueOf8 = null;
                                                                    }
                                                                    zOptBoolean = jSONObjectOptJSONObject2.optBoolean("hasUnReceivedAward", false);
                                                                    jSONObjectOptJSONObject3 = jSONObjectOptJSONObject2.optJSONObject("previousUserRankInfo");
                                                                    if (jSONObjectOptJSONObject3 != null) {
                                                                        if (jSONObjectOptJSONObject3.has("rankOrder")) {
                                                                            numValueOf11 = Integer.valueOf(jSONObjectOptJSONObject3.optInt("rankOrder"));
                                                                        } else {
                                                                            numValueOf11 = null;
                                                                        }
                                                                        if (jSONObjectOptJSONObject3.has("rewardContributionNum")) {
                                                                            numValueOf9 = Integer.valueOf(jSONObjectOptJSONObject3.optInt("rewardContributionNum"));
                                                                        } else {
                                                                            numValueOf9 = null;
                                                                        }
                                                                        num9 = numValueOf11;
                                                                    } else {
                                                                        num9 = null;
                                                                        numValueOf9 = null;
                                                                    }
                                                                    try {
                                                                        jSONObjectOptJSONObject4 = jSONObjectOptJSONObject2.optJSONObject("competitionProjectInfo");
                                                                        if (jSONObjectOptJSONObject4 != null) {
                                                                            try {
                                                                                String strOptString6 = jSONObjectOptJSONObject4.optString("projectName", "");
                                                                                if (jSONObjectOptJSONObject4.has("roomNumber")) {
                                                                                    numValueOf10 = Integer.valueOf(jSONObjectOptJSONObject4.optInt("roomNumber"));
                                                                                } else {
                                                                                    numValueOf10 = null;
                                                                                }
                                                                                if (jSONObjectOptJSONObject4.has("roomDonationProgress")) {
                                                                                    strTrimDouble = trimDouble(jSONObjectOptJSONObject4.optDouble("roomDonationProgress"));
                                                                                } else {
                                                                                    strTrimDouble = " ";
                                                                                }
                                                                                str14 = strOptString6;
                                                                            } catch (Throwable th4) {
                                                                                th = th4;
                                                                                num3 = num3;
                                                                                str9 = "";
                                                                                string = str9;
                                                                                string2 = string;
                                                                                str8 = string2;
                                                                                String str26 = TAG;
                                                                                Log.i(str26, "farmInfo 排位赛查询失败:");
                                                                                Log.printStackTrace(str26, th);
                                                                                str10 = string2 + string + str9;
                                                                                if (d4 == null) {
                                                                                    strTrimDouble2 = " ";
                                                                                } else {
                                                                                    strTrimDouble2 = trimDouble(d4.doubleValue());
                                                                                }
                                                                                if (d2 == null) {
                                                                                    strTrimDouble3 = " ";
                                                                                } else {
                                                                                    strTrimDouble3 = trimDouble(d2.doubleValue());
                                                                                }
                                                                                if (d == 0) {
                                                                                    strTrimDouble4 = " ";
                                                                                } else {
                                                                                    strTrimDouble4 = trimDouble(d.doubleValue());
                                                                                }
                                                                                if (d3 != null) {
                                                                                }
                                                                                StringBuilder sb3 = new StringBuilder("蚂蚁庄园🐔[");
                                                                                sb3.append(UserIdMap.getShowName(UserIdMap.getCurrentUid()));
                                                                                sb3.append("]饲料");
                                                                                sb3.append(Log.n(num));
                                                                                sb3.append("/");
                                                                                sb3.append(Log.n(num3));
                                                                                sb3.append("槽内");
                                                                                sb3.append(Log.n(num7));
                                                                                sb3.append("/");
                                                                                sb3.append(Log.n(num8));
                                                                                sb3.append(";爱心蛋");
                                                                                sb3.append(Log.n(num5));
                                                                                sb3.append(";光荣分");
                                                                                sb3.append(Log.n(num4));
                                                                                sb3.append("成就");
                                                                                sb3.append(Log.n(num6));
                                                                                sb3.append(";心情");
                                                                                sb3.append(strTrimDouble2);
                                                                                sb3.append(";小鸡[");
                                                                                sb3.append(str7);
                                                                                sb3.append("/");
                                                                                sb3.append(str6);
                                                                                sb3.append("]已吃");
                                                                                sb3.append(strTrimDouble3);
                                                                                sb3.append("被偷");
                                                                                sb3.append(strTrimDouble4);
                                                                                sb3.append(";肥料");
                                                                                sb3.append(strTrimDouble5);
                                                                                sb3.append(";芭芭农场[");
                                                                                sb3.append(str4);
                                                                                sb3.append("]");
                                                                                sb3.append(Log.n(num2));
                                                                                sb3.append(str23);
                                                                                if (str == null) {
                                                                                    str20 = str8;
                                                                                } else {
                                                                                    str20 = str;
                                                                                }
                                                                                sb3.append(str20);
                                                                                Log.info(sb3.toString());
                                                                                if (str10.isEmpty()) {
                                                                                    Log.info("庄园排位🏆[" + UserIdMap.getShowName(UserIdMap.getCurrentUid()) + "]" + str10);
                                                                                }
                                                                            }
                                                                        } else {
                                                                            str14 = "";
                                                                            numValueOf10 = null;
                                                                            strTrimDouble = " ";
                                                                        }
                                                                        try {
                                                                            d3 = d3;
                                                                            try {
                                                                                StringBuilder sb4 = new StringBuilder(str2);
                                                                                sb4.append(str13);
                                                                                sb4.append("]今日捐蛋");
                                                                                sb4.append(Log.n(numValueOf8));
                                                                                sb4.append(";项目[");
                                                                                sb4.append(str14);
                                                                                sb4.append("]第");
                                                                                sb4.append(Log.n(numValueOf10));
                                                                                sb4.append("间进度");
                                                                                sb4.append(strTrimDouble);
                                                                                sb4.append("%;轮次");
                                                                                sb4.append(strOptString2);
                                                                                sb4.append("截止");
                                                                                sb4.append(str12);
                                                                                if (zOptBoolean) {
                                                                                    str15 = "有待领奖";
                                                                                } else {
                                                                                    str15 = "";
                                                                                }
                                                                                sb4.append(str15);
                                                                                sb4.append(";");
                                                                                string = sb4.toString();
                                                                                try {
                                                                                    str9 = "上期第" + Log.n(num9) + "名贡献" + Log.n(numValueOf9) + ";";
                                                                                } catch (Throwable th5) {
                                                                                    th = th5;
                                                                                    d2 = d2;
                                                                                    str9 = "";
                                                                                    string2 = str9;
                                                                                    str8 = string2;
                                                                                    String str27 = TAG;
                                                                                    Log.i(str27, "farmInfo 排位赛查询失败:");
                                                                                    Log.printStackTrace(str27, th);
                                                                                    str10 = string2 + string + str9;
                                                                                    if (d4 == null) {
                                                                                        strTrimDouble2 = " ";
                                                                                    } else {
                                                                                        strTrimDouble2 = trimDouble(d4.doubleValue());
                                                                                    }
                                                                                    if (d2 == null) {
                                                                                        strTrimDouble3 = " ";
                                                                                    } else {
                                                                                        strTrimDouble3 = trimDouble(d2.doubleValue());
                                                                                    }
                                                                                    if (d == 0) {
                                                                                        strTrimDouble4 = " ";
                                                                                    } else {
                                                                                        strTrimDouble4 = trimDouble(d.doubleValue());
                                                                                    }
                                                                                    if (d3 != null) {
                                                                                    }
                                                                                    StringBuilder sb5 = new StringBuilder("蚂蚁庄园🐔[");
                                                                                    sb5.append(UserIdMap.getShowName(UserIdMap.getCurrentUid()));
                                                                                    sb5.append("]饲料");
                                                                                    sb5.append(Log.n(num));
                                                                                    sb5.append("/");
                                                                                    sb5.append(Log.n(num3));
                                                                                    sb5.append("槽内");
                                                                                    sb5.append(Log.n(num7));
                                                                                    sb5.append("/");
                                                                                    sb5.append(Log.n(num8));
                                                                                    sb5.append(";爱心蛋");
                                                                                    sb5.append(Log.n(num5));
                                                                                    sb5.append(";光荣分");
                                                                                    sb5.append(Log.n(num4));
                                                                                    sb5.append("成就");
                                                                                    sb5.append(Log.n(num6));
                                                                                    sb5.append(";心情");
                                                                                    sb5.append(strTrimDouble2);
                                                                                    sb5.append(";小鸡[");
                                                                                    sb5.append(str7);
                                                                                    sb5.append("/");
                                                                                    sb5.append(str6);
                                                                                    sb5.append("]已吃");
                                                                                    sb5.append(strTrimDouble3);
                                                                                    sb5.append("被偷");
                                                                                    sb5.append(strTrimDouble4);
                                                                                    sb5.append(";肥料");
                                                                                    sb5.append(strTrimDouble5);
                                                                                    sb5.append(";芭芭农场[");
                                                                                    sb5.append(str4);
                                                                                    sb5.append("]");
                                                                                    sb5.append(Log.n(num2));
                                                                                    sb5.append(str23);
                                                                                    if (str == null) {
                                                                                        str20 = str8;
                                                                                    } else {
                                                                                        str20 = str;
                                                                                    }
                                                                                    sb5.append(str20);
                                                                                    Log.info(sb5.toString());
                                                                                    if (str10.isEmpty()) {
                                                                                        Log.info("庄园排位🏆[" + UserIdMap.getShowName(UserIdMap.getCurrentUid()) + "]" + str10);
                                                                                    }
                                                                                }
                                                                            } catch (Throwable th6) {
                                                                                th = th6;
                                                                                d2 = d2;
                                                                                str9 = "";
                                                                                string = str9;
                                                                                string2 = string;
                                                                                str8 = string2;
                                                                                String str28 = TAG;
                                                                                Log.i(str28, "farmInfo 排位赛查询失败:");
                                                                                Log.printStackTrace(str28, th);
                                                                                str10 = string2 + string + str9;
                                                                                if (d4 == null) {
                                                                                    strTrimDouble2 = " ";
                                                                                } else {
                                                                                    strTrimDouble2 = trimDouble(d4.doubleValue());
                                                                                }
                                                                                if (d2 == null) {
                                                                                    strTrimDouble3 = " ";
                                                                                } else {
                                                                                    strTrimDouble3 = trimDouble(d2.doubleValue());
                                                                                }
                                                                                if (d == 0) {
                                                                                    strTrimDouble4 = " ";
                                                                                } else {
                                                                                    strTrimDouble4 = trimDouble(d.doubleValue());
                                                                                }
                                                                                if (d3 != null) {
                                                                                }
                                                                                StringBuilder sb6 = new StringBuilder("蚂蚁庄园🐔[");
                                                                                sb6.append(UserIdMap.getShowName(UserIdMap.getCurrentUid()));
                                                                                sb6.append("]饲料");
                                                                                sb6.append(Log.n(num));
                                                                                sb6.append("/");
                                                                                sb6.append(Log.n(num3));
                                                                                sb6.append("槽内");
                                                                                sb6.append(Log.n(num7));
                                                                                sb6.append("/");
                                                                                sb6.append(Log.n(num8));
                                                                                sb6.append(";爱心蛋");
                                                                                sb6.append(Log.n(num5));
                                                                                sb6.append(";光荣分");
                                                                                sb6.append(Log.n(num4));
                                                                                sb6.append("成就");
                                                                                sb6.append(Log.n(num6));
                                                                                sb6.append(";心情");
                                                                                sb6.append(strTrimDouble2);
                                                                                sb6.append(";小鸡[");
                                                                                sb6.append(str7);
                                                                                sb6.append("/");
                                                                                sb6.append(str6);
                                                                                sb6.append("]已吃");
                                                                                sb6.append(strTrimDouble3);
                                                                                sb6.append("被偷");
                                                                                sb6.append(strTrimDouble4);
                                                                                sb6.append(";肥料");
                                                                                sb6.append(strTrimDouble5);
                                                                                sb6.append(";芭芭农场[");
                                                                                sb6.append(str4);
                                                                                sb6.append("]");
                                                                                sb6.append(Log.n(num2));
                                                                                sb6.append(str23);
                                                                                if (str == null) {
                                                                                    str20 = str8;
                                                                                } else {
                                                                                    str20 = str;
                                                                                }
                                                                                sb6.append(str20);
                                                                                Log.info(sb6.toString());
                                                                                if (str10.isEmpty()) {
                                                                                    Log.info("庄园排位🏆[" + UserIdMap.getShowName(UserIdMap.getCurrentUid()) + "]" + str10);
                                                                                }
                                                                            }
                                                                        } catch (Throwable th7) {
                                                                            th = th7;
                                                                            d3 = d3;
                                                                        }
                                                                    } catch (Throwable th8) {
                                                                        th = th8;
                                                                        num3 = num3;
                                                                        d2 = d2;
                                                                        str9 = "";
                                                                        string = str9;
                                                                        string2 = string;
                                                                        str8 = string2;
                                                                        String str29 = TAG;
                                                                        Log.i(str29, "farmInfo 排位赛查询失败:");
                                                                        Log.printStackTrace(str29, th);
                                                                        str10 = string2 + string + str9;
                                                                        if (d4 == null) {
                                                                            strTrimDouble2 = " ";
                                                                        } else {
                                                                            strTrimDouble2 = trimDouble(d4.doubleValue());
                                                                        }
                                                                        if (d2 == null) {
                                                                            strTrimDouble3 = " ";
                                                                        } else {
                                                                            strTrimDouble3 = trimDouble(d2.doubleValue());
                                                                        }
                                                                        if (d == 0) {
                                                                            strTrimDouble4 = " ";
                                                                        } else {
                                                                            strTrimDouble4 = trimDouble(d.doubleValue());
                                                                        }
                                                                        if (d3 != null) {
                                                                        }
                                                                        StringBuilder sb7 = new StringBuilder("蚂蚁庄园🐔[");
                                                                        sb7.append(UserIdMap.getShowName(UserIdMap.getCurrentUid()));
                                                                        sb7.append("]饲料");
                                                                        sb7.append(Log.n(num));
                                                                        sb7.append("/");
                                                                        sb7.append(Log.n(num3));
                                                                        sb7.append("槽内");
                                                                        sb7.append(Log.n(num7));
                                                                        sb7.append("/");
                                                                        sb7.append(Log.n(num8));
                                                                        sb7.append(";爱心蛋");
                                                                        sb7.append(Log.n(num5));
                                                                        sb7.append(";光荣分");
                                                                        sb7.append(Log.n(num4));
                                                                        sb7.append("成就");
                                                                        sb7.append(Log.n(num6));
                                                                        sb7.append(";心情");
                                                                        sb7.append(strTrimDouble2);
                                                                        sb7.append(";小鸡[");
                                                                        sb7.append(str7);
                                                                        sb7.append("/");
                                                                        sb7.append(str6);
                                                                        sb7.append("]已吃");
                                                                        sb7.append(strTrimDouble3);
                                                                        sb7.append("被偷");
                                                                        sb7.append(strTrimDouble4);
                                                                        sb7.append(";肥料");
                                                                        sb7.append(strTrimDouble5);
                                                                        sb7.append(";芭芭农场[");
                                                                        sb7.append(str4);
                                                                        sb7.append("]");
                                                                        sb7.append(Log.n(num2));
                                                                        sb7.append(str23);
                                                                        if (str == null) {
                                                                            str20 = str8;
                                                                        } else {
                                                                            str20 = str;
                                                                        }
                                                                        sb7.append(str20);
                                                                        Log.info(sb7.toString());
                                                                        if (str10.isEmpty()) {
                                                                            Log.info("庄园排位🏆[" + UserIdMap.getShowName(UserIdMap.getCurrentUid()) + "]" + str10);
                                                                        }
                                                                    }
                                                                } catch (Throwable th9) {
                                                                    th = th9;
                                                                    num4 = num4;
                                                                }
                                                            } else {
                                                                d3 = d3;
                                                                num4 = num4;
                                                                num3 = num3;
                                                                str9 = "";
                                                                string = str9;
                                                            }
                                                            try {
                                                                jSONObjectEnterDonationCompetitionRank = enterDonationCompetitionRank();
                                                                if (jSONObjectEnterDonationCompetitionRank == null) {
                                                                    d2 = d2;
                                                                    str8 = "";
                                                                    str9 = str9;
                                                                    string = string;
                                                                    string2 = str8;
                                                                } else {
                                                                    d2 = d2;
                                                                    str8 = "";
                                                                    str9 = str9;
                                                                    string = string;
                                                                    string2 = str8;
                                                                }
                                                            } catch (Throwable th10) {
                                                                th = th10;
                                                                d2 = d2;
                                                                str8 = "";
                                                                string2 = str8;
                                                            }
                                                        } catch (Throwable th11) {
                                                            th = th11;
                                                            num4 = num4;
                                                            str8 = "";
                                                            str9 = str8;
                                                            string = str9;
                                                            string2 = string;
                                                            String str210 = TAG;
                                                            Log.i(str210, "farmInfo 排位赛查询失败:");
                                                            Log.printStackTrace(str210, th);
                                                            str10 = string2 + string + str9;
                                                            if (d4 == null) {
                                                                strTrimDouble2 = " ";
                                                            } else {
                                                                strTrimDouble2 = trimDouble(d4.doubleValue());
                                                            }
                                                            if (d2 == null) {
                                                                strTrimDouble3 = " ";
                                                            } else {
                                                                strTrimDouble3 = trimDouble(d2.doubleValue());
                                                            }
                                                            if (d == 0) {
                                                                strTrimDouble4 = " ";
                                                            } else {
                                                                strTrimDouble4 = trimDouble(d.doubleValue());
                                                            }
                                                            if (d3 != null) {
                                                            }
                                                            StringBuilder sb8 = new StringBuilder("蚂蚁庄园🐔[");
                                                            sb8.append(UserIdMap.getShowName(UserIdMap.getCurrentUid()));
                                                            sb8.append("]饲料");
                                                            sb8.append(Log.n(num));
                                                            sb8.append("/");
                                                            sb8.append(Log.n(num3));
                                                            sb8.append("槽内");
                                                            sb8.append(Log.n(num7));
                                                            sb8.append("/");
                                                            sb8.append(Log.n(num8));
                                                            sb8.append(";爱心蛋");
                                                            sb8.append(Log.n(num5));
                                                            sb8.append(";光荣分");
                                                            sb8.append(Log.n(num4));
                                                            sb8.append("成就");
                                                            sb8.append(Log.n(num6));
                                                            sb8.append(";心情");
                                                            sb8.append(strTrimDouble2);
                                                            sb8.append(";小鸡[");
                                                            sb8.append(str7);
                                                            sb8.append("/");
                                                            sb8.append(str6);
                                                            sb8.append("]已吃");
                                                            sb8.append(strTrimDouble3);
                                                            sb8.append("被偷");
                                                            sb8.append(strTrimDouble4);
                                                            sb8.append(";肥料");
                                                            sb8.append(strTrimDouble5);
                                                            sb8.append(";芭芭农场[");
                                                            sb8.append(str4);
                                                            sb8.append("]");
                                                            sb8.append(Log.n(num2));
                                                            sb8.append(str23);
                                                            if (str == null) {
                                                                str20 = str8;
                                                            } else {
                                                                str20 = str;
                                                            }
                                                            sb8.append(str20);
                                                            Log.info(sb8.toString());
                                                            if (str10.isEmpty()) {
                                                                Log.info("庄园排位🏆[" + UserIdMap.getShowName(UserIdMap.getCurrentUid()) + "]" + str10);
                                                            }
                                                        }
                                                    } catch (Throwable th12) {
                                                        th = th12;
                                                        num8 = num8;
                                                        num7 = num7;
                                                        num6 = num6;
                                                        num5 = num5;
                                                    }
                                                } else {
                                                    d3 = d3;
                                                    d2 = d2;
                                                    num8 = num8;
                                                    num7 = num7;
                                                    num6 = num6;
                                                    num5 = num5;
                                                    num4 = num4;
                                                    num3 = num3;
                                                    str7 = str3;
                                                    str8 = "";
                                                    str9 = str8;
                                                    string = str9;
                                                    string2 = string;
                                                }
                                            } catch (Throwable th13) {
                                                th = th13;
                                                str7 = str3;
                                                str8 = "";
                                                str9 = str8;
                                                string = str9;
                                                string2 = string;
                                                String str211 = TAG;
                                                Log.i(str211, "farmInfo 排位赛查询失败:");
                                                Log.printStackTrace(str211, th);
                                                str10 = string2 + string + str9;
                                                if (d4 == null) {
                                                    strTrimDouble2 = " ";
                                                } else {
                                                    strTrimDouble2 = trimDouble(d4.doubleValue());
                                                }
                                                if (d2 == null) {
                                                    strTrimDouble3 = " ";
                                                } else {
                                                    strTrimDouble3 = trimDouble(d2.doubleValue());
                                                }
                                                if (d == 0) {
                                                    strTrimDouble4 = " ";
                                                } else {
                                                    strTrimDouble4 = trimDouble(d.doubleValue());
                                                }
                                                if (d3 != null) {
                                                }
                                                StringBuilder sb9 = new StringBuilder("蚂蚁庄园🐔[");
                                                sb9.append(UserIdMap.getShowName(UserIdMap.getCurrentUid()));
                                                sb9.append("]饲料");
                                                sb9.append(Log.n(num));
                                                sb9.append("/");
                                                sb9.append(Log.n(num3));
                                                sb9.append("槽内");
                                                sb9.append(Log.n(num7));
                                                sb9.append("/");
                                                sb9.append(Log.n(num8));
                                                sb9.append(";爱心蛋");
                                                sb9.append(Log.n(num5));
                                                sb9.append(";光荣分");
                                                sb9.append(Log.n(num4));
                                                sb9.append("成就");
                                                sb9.append(Log.n(num6));
                                                sb9.append(";心情");
                                                sb9.append(strTrimDouble2);
                                                sb9.append(";小鸡[");
                                                sb9.append(str7);
                                                sb9.append("/");
                                                sb9.append(str6);
                                                sb9.append("]已吃");
                                                sb9.append(strTrimDouble3);
                                                sb9.append("被偷");
                                                sb9.append(strTrimDouble4);
                                                sb9.append(";肥料");
                                                sb9.append(strTrimDouble5);
                                                sb9.append(";芭芭农场[");
                                                sb9.append(str4);
                                                sb9.append("]");
                                                sb9.append(Log.n(num2));
                                                sb9.append(str23);
                                                if (str == null) {
                                                    str20 = str8;
                                                } else {
                                                    str20 = str;
                                                }
                                                sb9.append(str20);
                                                Log.info(sb9.toString());
                                                if (str10.isEmpty()) {
                                                    Log.info("庄园排位🏆[" + UserIdMap.getShowName(UserIdMap.getCurrentUid()) + "]" + str10);
                                                }
                                            }
                                        } catch (Throwable th14) {
                                            th = th14;
                                            str6 = str5;
                                        }
                                        str10 = string2 + string + str9;
                                    } else {
                                        d3 = d3;
                                        d2 = d2;
                                        num8 = num8;
                                        num7 = num7;
                                        num6 = num6;
                                        num5 = num5;
                                        num4 = num4;
                                        str6 = str5;
                                        num3 = num3;
                                        str7 = str3;
                                        str8 = "";
                                        str10 = str8;
                                    }
                                    if (d4 == null) {
                                        strTrimDouble2 = " ";
                                    } else {
                                        strTrimDouble2 = trimDouble(d4.doubleValue());
                                    }
                                    if (d2 == null) {
                                        strTrimDouble3 = " ";
                                    } else {
                                        strTrimDouble3 = trimDouble(d2.doubleValue());
                                    }
                                    if (d == 0) {
                                        strTrimDouble4 = " ";
                                    } else {
                                        strTrimDouble4 = trimDouble(d.doubleValue());
                                    }
                                    if (d3 != null) {
                                    }
                                    StringBuilder sb10 = new StringBuilder("蚂蚁庄园🐔[");
                                    sb10.append(UserIdMap.getShowName(UserIdMap.getCurrentUid()));
                                    sb10.append("]饲料");
                                    sb10.append(Log.n(num));
                                    sb10.append("/");
                                    sb10.append(Log.n(num3));
                                    sb10.append("槽内");
                                    sb10.append(Log.n(num7));
                                    sb10.append("/");
                                    sb10.append(Log.n(num8));
                                    sb10.append(";爱心蛋");
                                    sb10.append(Log.n(num5));
                                    sb10.append(";光荣分");
                                    sb10.append(Log.n(num4));
                                    sb10.append("成就");
                                    sb10.append(Log.n(num6));
                                    sb10.append(";心情");
                                    sb10.append(strTrimDouble2);
                                    sb10.append(";小鸡[");
                                    sb10.append(str7);
                                    sb10.append("/");
                                    sb10.append(str6);
                                    sb10.append("]已吃");
                                    sb10.append(strTrimDouble3);
                                    sb10.append("被偷");
                                    sb10.append(strTrimDouble4);
                                    sb10.append(";肥料");
                                    sb10.append(strTrimDouble5);
                                    sb10.append(";芭芭农场[");
                                    sb10.append(str4);
                                    sb10.append("]");
                                    sb10.append(Log.n(num2));
                                    sb10.append(str23);
                                    if (str == null) {
                                        str20 = str8;
                                    } else {
                                        str20 = str;
                                    }
                                    sb10.append(str20);
                                    Log.info(sb10.toString());
                                    if (str10.isEmpty()) {
                                        Log.info("庄园排位🏆[" + UserIdMap.getShowName(UserIdMap.getCurrentUid()) + "]" + str10);
                                    }
                                }
                            } else {
                                numValueOf3 = null;
                                numValueOf5 = null;
                            }
                            try {
                                JSONObject jSONObjectOptJSONObject9 = jSONObjectOptJSONObject7.optJSONObject("subFarmVO");
                                if (jSONObjectOptJSONObject9 != null) {
                                    numValueOf4 = jSONObjectOptJSONObject9.has("donationEggAmount") ? Integer.valueOf(jSONObjectOptJSONObject9.optInt("donationEggAmount")) : null;
                                    try {
                                        numValueOf2 = jSONObjectOptJSONObject9.has("foodInTrough") ? Integer.valueOf(jSONObjectOptJSONObject9.optInt("foodInTrough")) : null;
                                        try {
                                            numValueOf = jSONObjectOptJSONObject9.has("foodInTroughLimit") ? Integer.valueOf(jSONObjectOptJSONObject9.optInt("foodInTroughLimit")) : null;
                                            try {
                                                JSONArray jSONArrayOptJSONArray = jSONObjectOptJSONObject9.optJSONArray("animals");
                                                if (jSONArrayOptJSONArray == null || jSONArrayOptJSONArray.length() <= 0) {
                                                    numValueOf = numValueOf;
                                                    jSONObjectOptJSONObject5 = null;
                                                } else {
                                                    numValueOf = numValueOf;
                                                    try {
                                                        jSONObjectOptJSONObject5 = jSONArrayOptJSONArray.optJSONObject(0);
                                                    } catch (Throwable th15) {
                                                        th = th15;
                                                        dValueOf = null;
                                                        dValueOf2 = null;
                                                        dValueOf3 = null;
                                                        numValueOf6 = null;
                                                        obj3 = numValueOf6;
                                                        numValueOf = numValueOf;
                                                        obj2 = obj3;
                                                        num = numValueOf12;
                                                        str3 = "";
                                                        str21 = str3;
                                                        String str212 = TAG;
                                                        Log.i(str212, "farmInfo 解析失败:");
                                                        Log.printStackTrace(str212, th);
                                                        num3 = numValueOf7;
                                                        str5 = str21;
                                                        str4 = "";
                                                        Double d7 = dValueOf2;
                                                        d4 = dValueOf;
                                                        num2 = numValueOf6;
                                                        num4 = numValueOf5;
                                                        num5 = numValueOf4;
                                                        num6 = numValueOf3;
                                                        num7 = numValueOf2;
                                                        num8 = numValueOf;
                                                        d2 = dValueOf3;
                                                        d3 = d7;
                                                        d = obj2;
                                                        String str213 = ";";
                                                        if (this.competition.getValue().booleanValue()) {
                                                            str6 = str5;
                                                            jSONObject2 = new JSONObject(AntFarmRpcCall.queryCompetitionEntranceInfo());
                                                            str11 = TAG;
                                                            if (MessageUtil.checkMemo(str11, jSONObject2).booleanValue()) {
                                                                str7 = str3;
                                                                jSONObjectOptJSONObject = jSONObject2.optJSONObject("donationCompetitionActivityConf");
                                                                num6 = num6;
                                                                num5 = num5;
                                                                if (jSONObjectOptJSONObject != null) {
                                                                    String strOptString7 = jSONObjectOptJSONObject.optString("name", "");
                                                                    num8 = num8;
                                                                    num7 = num7;
                                                                    jOptLong = jSONObjectOptJSONObject.optLong("endTime", 0L);
                                                                    if (jOptLong > 0) {
                                                                        str12 = new SimpleDateFormat("MM-dd", Locale.getDefault()).format(new Date(jOptLong));
                                                                    } else {
                                                                        str12 = "";
                                                                    }
                                                                    str13 = strOptString7;
                                                                } else {
                                                                    num8 = num8;
                                                                    num7 = num7;
                                                                    str12 = "";
                                                                    str13 = str12;
                                                                }
                                                                strOptString2 = jSONObject2.optString("rankRoundId", "");
                                                                jSONObjectOptJSONObject2 = jSONObject2.optJSONObject("animationInfo");
                                                                if (jSONObjectOptJSONObject2 != null) {
                                                                    if (jSONObjectOptJSONObject2.has("todayDonationNum")) {
                                                                        numValueOf8 = Integer.valueOf(jSONObjectOptJSONObject2.optInt("todayDonationNum"));
                                                                    } else {
                                                                        numValueOf8 = null;
                                                                    }
                                                                    zOptBoolean = jSONObjectOptJSONObject2.optBoolean("hasUnReceivedAward", false);
                                                                    jSONObjectOptJSONObject3 = jSONObjectOptJSONObject2.optJSONObject("previousUserRankInfo");
                                                                    if (jSONObjectOptJSONObject3 != null) {
                                                                        if (jSONObjectOptJSONObject3.has("rankOrder")) {
                                                                            numValueOf11 = Integer.valueOf(jSONObjectOptJSONObject3.optInt("rankOrder"));
                                                                        } else {
                                                                            numValueOf11 = null;
                                                                        }
                                                                        if (jSONObjectOptJSONObject3.has("rewardContributionNum")) {
                                                                            numValueOf9 = Integer.valueOf(jSONObjectOptJSONObject3.optInt("rewardContributionNum"));
                                                                        } else {
                                                                            numValueOf9 = null;
                                                                        }
                                                                        num9 = numValueOf11;
                                                                    } else {
                                                                        num9 = null;
                                                                        numValueOf9 = null;
                                                                    }
                                                                    jSONObjectOptJSONObject4 = jSONObjectOptJSONObject2.optJSONObject("competitionProjectInfo");
                                                                    if (jSONObjectOptJSONObject4 != null) {
                                                                        String strOptString8 = jSONObjectOptJSONObject4.optString("projectName", "");
                                                                        if (jSONObjectOptJSONObject4.has("roomNumber")) {
                                                                            numValueOf10 = Integer.valueOf(jSONObjectOptJSONObject4.optInt("roomNumber"));
                                                                        } else {
                                                                            numValueOf10 = null;
                                                                        }
                                                                        if (jSONObjectOptJSONObject4.has("roomDonationProgress")) {
                                                                            strTrimDouble = trimDouble(jSONObjectOptJSONObject4.optDouble("roomDonationProgress"));
                                                                        } else {
                                                                            strTrimDouble = " ";
                                                                        }
                                                                        str14 = strOptString8;
                                                                    } else {
                                                                        str14 = "";
                                                                        numValueOf10 = null;
                                                                        strTrimDouble = " ";
                                                                    }
                                                                    d3 = d3;
                                                                    StringBuilder sb11 = new StringBuilder(str2);
                                                                    sb11.append(str13);
                                                                    sb11.append("]今日捐蛋");
                                                                    sb11.append(Log.n(numValueOf8));
                                                                    sb11.append(";项目[");
                                                                    sb11.append(str14);
                                                                    sb11.append("]第");
                                                                    sb11.append(Log.n(numValueOf10));
                                                                    sb11.append("间进度");
                                                                    sb11.append(strTrimDouble);
                                                                    sb11.append("%;轮次");
                                                                    sb11.append(strOptString2);
                                                                    sb11.append("截止");
                                                                    sb11.append(str12);
                                                                    if (zOptBoolean) {
                                                                        str15 = "有待领奖";
                                                                    } else {
                                                                        str15 = "";
                                                                    }
                                                                    sb11.append(str15);
                                                                    sb11.append(";");
                                                                    string = sb11.toString();
                                                                    str9 = "上期第" + Log.n(num9) + "名贡献" + Log.n(numValueOf9) + ";";
                                                                } else {
                                                                    d3 = d3;
                                                                    num4 = num4;
                                                                    num3 = num3;
                                                                    str9 = "";
                                                                    string = str9;
                                                                }
                                                                jSONObjectEnterDonationCompetitionRank = enterDonationCompetitionRank();
                                                                if (jSONObjectEnterDonationCompetitionRank == null) {
                                                                    d2 = d2;
                                                                    str8 = "";
                                                                    str9 = str9;
                                                                    string = string;
                                                                    string2 = str8;
                                                                } else {
                                                                    d2 = d2;
                                                                    str8 = "";
                                                                    str9 = str9;
                                                                    string = string;
                                                                    string2 = str8;
                                                                }
                                                            } else {
                                                                d3 = d3;
                                                                d2 = d2;
                                                                num8 = num8;
                                                                num7 = num7;
                                                                num6 = num6;
                                                                num5 = num5;
                                                                num4 = num4;
                                                                num3 = num3;
                                                                str7 = str3;
                                                                str8 = "";
                                                                str9 = str8;
                                                                string = str9;
                                                                string2 = string;
                                                            }
                                                            str10 = string2 + string + str9;
                                                        } else {
                                                            d3 = d3;
                                                            d2 = d2;
                                                            num8 = num8;
                                                            num7 = num7;
                                                            num6 = num6;
                                                            num5 = num5;
                                                            num4 = num4;
                                                            str6 = str5;
                                                            num3 = num3;
                                                            str7 = str3;
                                                            str8 = "";
                                                            str10 = str8;
                                                        }
                                                        if (d4 == null) {
                                                            strTrimDouble2 = " ";
                                                        } else {
                                                            strTrimDouble2 = trimDouble(d4.doubleValue());
                                                        }
                                                        if (d2 == null) {
                                                            strTrimDouble3 = " ";
                                                        } else {
                                                            strTrimDouble3 = trimDouble(d2.doubleValue());
                                                        }
                                                        if (d == 0) {
                                                            strTrimDouble4 = " ";
                                                        } else {
                                                            strTrimDouble4 = trimDouble(d.doubleValue());
                                                        }
                                                        if (d3 != null) {
                                                        }
                                                        StringBuilder sb12 = new StringBuilder("蚂蚁庄园🐔[");
                                                        sb12.append(UserIdMap.getShowName(UserIdMap.getCurrentUid()));
                                                        sb12.append("]饲料");
                                                        sb12.append(Log.n(num));
                                                        sb12.append("/");
                                                        sb12.append(Log.n(num3));
                                                        sb12.append("槽内");
                                                        sb12.append(Log.n(num7));
                                                        sb12.append("/");
                                                        sb12.append(Log.n(num8));
                                                        sb12.append(";爱心蛋");
                                                        sb12.append(Log.n(num5));
                                                        sb12.append(";光荣分");
                                                        sb12.append(Log.n(num4));
                                                        sb12.append("成就");
                                                        sb12.append(Log.n(num6));
                                                        sb12.append(";心情");
                                                        sb12.append(strTrimDouble2);
                                                        sb12.append(";小鸡[");
                                                        sb12.append(str7);
                                                        sb12.append("/");
                                                        sb12.append(str6);
                                                        sb12.append("]已吃");
                                                        sb12.append(strTrimDouble3);
                                                        sb12.append("被偷");
                                                        sb12.append(strTrimDouble4);
                                                        sb12.append(";肥料");
                                                        sb12.append(strTrimDouble5);
                                                        sb12.append(";芭芭农场[");
                                                        sb12.append(str4);
                                                        sb12.append("]");
                                                        sb12.append(Log.n(num2));
                                                        sb12.append(str213);
                                                        if (str == null) {
                                                            str20 = str8;
                                                        } else {
                                                            str20 = str;
                                                        }
                                                        sb12.append(str20);
                                                        Log.info(sb12.toString());
                                                        if (str10.isEmpty()) {
                                                            Log.info("庄园排位🏆[" + UserIdMap.getShowName(UserIdMap.getCurrentUid()) + "]" + str10);
                                                        }
                                                    }
                                                }
                                                if (jSONObjectOptJSONObject5 != null) {
                                                    dValueOf3 = jSONObjectOptJSONObject5.has("foodHaveEatten") ? Double.valueOf(jSONObjectOptJSONObject5.optDouble("foodHaveEatten")) : null;
                                                    try {
                                                        Double dValueOf4 = jSONObjectOptJSONObject5.has("foodHaveStolen") ? Double.valueOf(jSONObjectOptJSONObject5.optDouble("foodHaveStolen")) : null;
                                                        try {
                                                            JSONObject jSONObjectOptJSONObject10 = jSONObjectOptJSONObject5.optJSONObject("animalStatusVO");
                                                            if (jSONObjectOptJSONObject10 != null) {
                                                                strOptString4 = jSONObjectOptJSONObject10.optString("animalFeedStatus", "");
                                                                Double d8 = dValueOf4;
                                                                try {
                                                                    strOptString3 = jSONObjectOptJSONObject10.optString("animalInteractStatus", "");
                                                                    d5 = d8;
                                                                } catch (Throwable th16) {
                                                                    th = th16;
                                                                    dValueOf = null;
                                                                    dValueOf2 = null;
                                                                    numValueOf6 = null;
                                                                    str21 = "";
                                                                    obj2 = d8;
                                                                    Integer num10 = numValueOf12;
                                                                    str3 = strOptString4;
                                                                    numValueOf7 = numValueOf7;
                                                                    num = num10;
                                                                    String str214 = TAG;
                                                                    Log.i(str214, "farmInfo 解析失败:");
                                                                    Log.printStackTrace(str214, th);
                                                                    num3 = numValueOf7;
                                                                    str5 = str21;
                                                                    str4 = "";
                                                                    Double d9 = dValueOf2;
                                                                    d4 = dValueOf;
                                                                    num2 = numValueOf6;
                                                                    num4 = numValueOf5;
                                                                    num5 = numValueOf4;
                                                                    num6 = numValueOf3;
                                                                    num7 = numValueOf2;
                                                                    num8 = numValueOf;
                                                                    d2 = dValueOf3;
                                                                    d3 = d9;
                                                                    d = obj2;
                                                                    String str215 = ";";
                                                                    if (this.competition.getValue().booleanValue()) {
                                                                        str6 = str5;
                                                                        jSONObject2 = new JSONObject(AntFarmRpcCall.queryCompetitionEntranceInfo());
                                                                        str11 = TAG;
                                                                        if (MessageUtil.checkMemo(str11, jSONObject2).booleanValue()) {
                                                                            str7 = str3;
                                                                            jSONObjectOptJSONObject = jSONObject2.optJSONObject("donationCompetitionActivityConf");
                                                                            num6 = num6;
                                                                            num5 = num5;
                                                                            if (jSONObjectOptJSONObject != null) {
                                                                                String strOptString9 = jSONObjectOptJSONObject.optString("name", "");
                                                                                num8 = num8;
                                                                                num7 = num7;
                                                                                jOptLong = jSONObjectOptJSONObject.optLong("endTime", 0L);
                                                                                if (jOptLong > 0) {
                                                                                    str12 = new SimpleDateFormat("MM-dd", Locale.getDefault()).format(new Date(jOptLong));
                                                                                } else {
                                                                                    str12 = "";
                                                                                }
                                                                                str13 = strOptString9;
                                                                            } else {
                                                                                num8 = num8;
                                                                                num7 = num7;
                                                                                str12 = "";
                                                                                str13 = str12;
                                                                            }
                                                                            strOptString2 = jSONObject2.optString("rankRoundId", "");
                                                                            jSONObjectOptJSONObject2 = jSONObject2.optJSONObject("animationInfo");
                                                                            if (jSONObjectOptJSONObject2 != null) {
                                                                                if (jSONObjectOptJSONObject2.has("todayDonationNum")) {
                                                                                    numValueOf8 = Integer.valueOf(jSONObjectOptJSONObject2.optInt("todayDonationNum"));
                                                                                } else {
                                                                                    numValueOf8 = null;
                                                                                }
                                                                                zOptBoolean = jSONObjectOptJSONObject2.optBoolean("hasUnReceivedAward", false);
                                                                                jSONObjectOptJSONObject3 = jSONObjectOptJSONObject2.optJSONObject("previousUserRankInfo");
                                                                                if (jSONObjectOptJSONObject3 != null) {
                                                                                    if (jSONObjectOptJSONObject3.has("rankOrder")) {
                                                                                        numValueOf11 = Integer.valueOf(jSONObjectOptJSONObject3.optInt("rankOrder"));
                                                                                    } else {
                                                                                        numValueOf11 = null;
                                                                                    }
                                                                                    if (jSONObjectOptJSONObject3.has("rewardContributionNum")) {
                                                                                        numValueOf9 = Integer.valueOf(jSONObjectOptJSONObject3.optInt("rewardContributionNum"));
                                                                                    } else {
                                                                                        numValueOf9 = null;
                                                                                    }
                                                                                    num9 = numValueOf11;
                                                                                } else {
                                                                                    num9 = null;
                                                                                    numValueOf9 = null;
                                                                                }
                                                                                jSONObjectOptJSONObject4 = jSONObjectOptJSONObject2.optJSONObject("competitionProjectInfo");
                                                                                if (jSONObjectOptJSONObject4 != null) {
                                                                                    String strOptString10 = jSONObjectOptJSONObject4.optString("projectName", "");
                                                                                    if (jSONObjectOptJSONObject4.has("roomNumber")) {
                                                                                        numValueOf10 = Integer.valueOf(jSONObjectOptJSONObject4.optInt("roomNumber"));
                                                                                    } else {
                                                                                        numValueOf10 = null;
                                                                                    }
                                                                                    if (jSONObjectOptJSONObject4.has("roomDonationProgress")) {
                                                                                        strTrimDouble = trimDouble(jSONObjectOptJSONObject4.optDouble("roomDonationProgress"));
                                                                                    } else {
                                                                                        strTrimDouble = " ";
                                                                                    }
                                                                                    str14 = strOptString10;
                                                                                } else {
                                                                                    str14 = "";
                                                                                    numValueOf10 = null;
                                                                                    strTrimDouble = " ";
                                                                                }
                                                                                d3 = d3;
                                                                                StringBuilder sb13 = new StringBuilder(str2);
                                                                                sb13.append(str13);
                                                                                sb13.append("]今日捐蛋");
                                                                                sb13.append(Log.n(numValueOf8));
                                                                                sb13.append(";项目[");
                                                                                sb13.append(str14);
                                                                                sb13.append("]第");
                                                                                sb13.append(Log.n(numValueOf10));
                                                                                sb13.append("间进度");
                                                                                sb13.append(strTrimDouble);
                                                                                sb13.append("%;轮次");
                                                                                sb13.append(strOptString2);
                                                                                sb13.append("截止");
                                                                                sb13.append(str12);
                                                                                if (zOptBoolean) {
                                                                                    str15 = "有待领奖";
                                                                                } else {
                                                                                    str15 = "";
                                                                                }
                                                                                sb13.append(str15);
                                                                                sb13.append(";");
                                                                                string = sb13.toString();
                                                                                str9 = "上期第" + Log.n(num9) + "名贡献" + Log.n(numValueOf9) + ";";
                                                                            } else {
                                                                                d3 = d3;
                                                                                num4 = num4;
                                                                                num3 = num3;
                                                                                str9 = "";
                                                                                string = str9;
                                                                            }
                                                                            jSONObjectEnterDonationCompetitionRank = enterDonationCompetitionRank();
                                                                            if (jSONObjectEnterDonationCompetitionRank == null) {
                                                                                d2 = d2;
                                                                                str8 = "";
                                                                                str9 = str9;
                                                                                string = string;
                                                                                string2 = str8;
                                                                            } else {
                                                                                d2 = d2;
                                                                                str8 = "";
                                                                                str9 = str9;
                                                                                string = string;
                                                                                string2 = str8;
                                                                            }
                                                                        } else {
                                                                            d3 = d3;
                                                                            d2 = d2;
                                                                            num8 = num8;
                                                                            num7 = num7;
                                                                            num6 = num6;
                                                                            num5 = num5;
                                                                            num4 = num4;
                                                                            num3 = num3;
                                                                            str7 = str3;
                                                                            str8 = "";
                                                                            str9 = str8;
                                                                            string = str9;
                                                                            string2 = string;
                                                                        }
                                                                        str10 = string2 + string + str9;
                                                                    } else {
                                                                        d3 = d3;
                                                                        d2 = d2;
                                                                        num8 = num8;
                                                                        num7 = num7;
                                                                        num6 = num6;
                                                                        num5 = num5;
                                                                        num4 = num4;
                                                                        str6 = str5;
                                                                        num3 = num3;
                                                                        str7 = str3;
                                                                        str8 = "";
                                                                        str10 = str8;
                                                                    }
                                                                    if (d4 == null) {
                                                                        strTrimDouble2 = " ";
                                                                    } else {
                                                                        strTrimDouble2 = trimDouble(d4.doubleValue());
                                                                    }
                                                                    if (d2 == null) {
                                                                        strTrimDouble3 = " ";
                                                                    } else {
                                                                        strTrimDouble3 = trimDouble(d2.doubleValue());
                                                                    }
                                                                    if (d == 0) {
                                                                        strTrimDouble4 = " ";
                                                                    } else {
                                                                        strTrimDouble4 = trimDouble(d.doubleValue());
                                                                    }
                                                                    if (d3 != null) {
                                                                    }
                                                                    StringBuilder sb14 = new StringBuilder("蚂蚁庄园🐔[");
                                                                    sb14.append(UserIdMap.getShowName(UserIdMap.getCurrentUid()));
                                                                    sb14.append("]饲料");
                                                                    sb14.append(Log.n(num));
                                                                    sb14.append("/");
                                                                    sb14.append(Log.n(num3));
                                                                    sb14.append("槽内");
                                                                    sb14.append(Log.n(num7));
                                                                    sb14.append("/");
                                                                    sb14.append(Log.n(num8));
                                                                    sb14.append(";爱心蛋");
                                                                    sb14.append(Log.n(num5));
                                                                    sb14.append(";光荣分");
                                                                    sb14.append(Log.n(num4));
                                                                    sb14.append("成就");
                                                                    sb14.append(Log.n(num6));
                                                                    sb14.append(";心情");
                                                                    sb14.append(strTrimDouble2);
                                                                    sb14.append(";小鸡[");
                                                                    sb14.append(str7);
                                                                    sb14.append("/");
                                                                    sb14.append(str6);
                                                                    sb14.append("]已吃");
                                                                    sb14.append(strTrimDouble3);
                                                                    sb14.append("被偷");
                                                                    sb14.append(strTrimDouble4);
                                                                    sb14.append(";肥料");
                                                                    sb14.append(strTrimDouble5);
                                                                    sb14.append(";芭芭农场[");
                                                                    sb14.append(str4);
                                                                    sb14.append("]");
                                                                    sb14.append(Log.n(num2));
                                                                    sb14.append(str215);
                                                                    if (str == null) {
                                                                        str20 = str8;
                                                                    } else {
                                                                        str20 = str;
                                                                    }
                                                                    sb14.append(str20);
                                                                    Log.info(sb14.toString());
                                                                    if (str10.isEmpty()) {
                                                                        Log.info("庄园排位🏆[" + UserIdMap.getShowName(UserIdMap.getCurrentUid()) + "]" + str10);
                                                                    }
                                                                }
                                                            } else {
                                                                d5 = dValueOf4;
                                                                strOptString3 = "";
                                                                strOptString4 = strOptString3;
                                                            }
                                                        } catch (Throwable th17) {
                                                            th = th17;
                                                            obj3 = dValueOf4;
                                                            dValueOf = null;
                                                            dValueOf2 = null;
                                                            numValueOf6 = null;
                                                            numValueOf = numValueOf;
                                                            obj2 = obj3;
                                                            num = numValueOf12;
                                                            str3 = "";
                                                            str21 = str3;
                                                            String str216 = TAG;
                                                            Log.i(str216, "farmInfo 解析失败:");
                                                            Log.printStackTrace(str216, th);
                                                            num3 = numValueOf7;
                                                            str5 = str21;
                                                            str4 = "";
                                                            Double d10 = dValueOf2;
                                                            d4 = dValueOf;
                                                            num2 = numValueOf6;
                                                            num4 = numValueOf5;
                                                            num5 = numValueOf4;
                                                            num6 = numValueOf3;
                                                            num7 = numValueOf2;
                                                            num8 = numValueOf;
                                                            d2 = dValueOf3;
                                                            d3 = d10;
                                                            d = obj2;
                                                            String str217 = ";";
                                                            if (this.competition.getValue().booleanValue()) {
                                                                str6 = str5;
                                                                jSONObject2 = new JSONObject(AntFarmRpcCall.queryCompetitionEntranceInfo());
                                                                str11 = TAG;
                                                                if (MessageUtil.checkMemo(str11, jSONObject2).booleanValue()) {
                                                                    str7 = str3;
                                                                    jSONObjectOptJSONObject = jSONObject2.optJSONObject("donationCompetitionActivityConf");
                                                                    num6 = num6;
                                                                    num5 = num5;
                                                                    if (jSONObjectOptJSONObject != null) {
                                                                        String strOptString11 = jSONObjectOptJSONObject.optString("name", "");
                                                                        num8 = num8;
                                                                        num7 = num7;
                                                                        jOptLong = jSONObjectOptJSONObject.optLong("endTime", 0L);
                                                                        if (jOptLong > 0) {
                                                                            str12 = new SimpleDateFormat("MM-dd", Locale.getDefault()).format(new Date(jOptLong));
                                                                        } else {
                                                                            str12 = "";
                                                                        }
                                                                        str13 = strOptString11;
                                                                    } else {
                                                                        num8 = num8;
                                                                        num7 = num7;
                                                                        str12 = "";
                                                                        str13 = str12;
                                                                    }
                                                                    strOptString2 = jSONObject2.optString("rankRoundId", "");
                                                                    jSONObjectOptJSONObject2 = jSONObject2.optJSONObject("animationInfo");
                                                                    if (jSONObjectOptJSONObject2 != null) {
                                                                        if (jSONObjectOptJSONObject2.has("todayDonationNum")) {
                                                                            numValueOf8 = Integer.valueOf(jSONObjectOptJSONObject2.optInt("todayDonationNum"));
                                                                        } else {
                                                                            numValueOf8 = null;
                                                                        }
                                                                        zOptBoolean = jSONObjectOptJSONObject2.optBoolean("hasUnReceivedAward", false);
                                                                        jSONObjectOptJSONObject3 = jSONObjectOptJSONObject2.optJSONObject("previousUserRankInfo");
                                                                        if (jSONObjectOptJSONObject3 != null) {
                                                                            if (jSONObjectOptJSONObject3.has("rankOrder")) {
                                                                                numValueOf11 = Integer.valueOf(jSONObjectOptJSONObject3.optInt("rankOrder"));
                                                                            } else {
                                                                                numValueOf11 = null;
                                                                            }
                                                                            if (jSONObjectOptJSONObject3.has("rewardContributionNum")) {
                                                                                numValueOf9 = Integer.valueOf(jSONObjectOptJSONObject3.optInt("rewardContributionNum"));
                                                                            } else {
                                                                                numValueOf9 = null;
                                                                            }
                                                                            num9 = numValueOf11;
                                                                        } else {
                                                                            num9 = null;
                                                                            numValueOf9 = null;
                                                                        }
                                                                        jSONObjectOptJSONObject4 = jSONObjectOptJSONObject2.optJSONObject("competitionProjectInfo");
                                                                        if (jSONObjectOptJSONObject4 != null) {
                                                                            String strOptString12 = jSONObjectOptJSONObject4.optString("projectName", "");
                                                                            if (jSONObjectOptJSONObject4.has("roomNumber")) {
                                                                                numValueOf10 = Integer.valueOf(jSONObjectOptJSONObject4.optInt("roomNumber"));
                                                                            } else {
                                                                                numValueOf10 = null;
                                                                            }
                                                                            if (jSONObjectOptJSONObject4.has("roomDonationProgress")) {
                                                                                strTrimDouble = trimDouble(jSONObjectOptJSONObject4.optDouble("roomDonationProgress"));
                                                                            } else {
                                                                                strTrimDouble = " ";
                                                                            }
                                                                            str14 = strOptString12;
                                                                        } else {
                                                                            str14 = "";
                                                                            numValueOf10 = null;
                                                                            strTrimDouble = " ";
                                                                        }
                                                                        d3 = d3;
                                                                        StringBuilder sb15 = new StringBuilder(str2);
                                                                        sb15.append(str13);
                                                                        sb15.append("]今日捐蛋");
                                                                        sb15.append(Log.n(numValueOf8));
                                                                        sb15.append(";项目[");
                                                                        sb15.append(str14);
                                                                        sb15.append("]第");
                                                                        sb15.append(Log.n(numValueOf10));
                                                                        sb15.append("间进度");
                                                                        sb15.append(strTrimDouble);
                                                                        sb15.append("%;轮次");
                                                                        sb15.append(strOptString2);
                                                                        sb15.append("截止");
                                                                        sb15.append(str12);
                                                                        if (zOptBoolean) {
                                                                            str15 = "有待领奖";
                                                                        } else {
                                                                            str15 = "";
                                                                        }
                                                                        sb15.append(str15);
                                                                        sb15.append(";");
                                                                        string = sb15.toString();
                                                                        str9 = "上期第" + Log.n(num9) + "名贡献" + Log.n(numValueOf9) + ";";
                                                                    } else {
                                                                        d3 = d3;
                                                                        num4 = num4;
                                                                        num3 = num3;
                                                                        str9 = "";
                                                                        string = str9;
                                                                    }
                                                                    jSONObjectEnterDonationCompetitionRank = enterDonationCompetitionRank();
                                                                    if (jSONObjectEnterDonationCompetitionRank == null) {
                                                                        d2 = d2;
                                                                        str8 = "";
                                                                        str9 = str9;
                                                                        string = string;
                                                                        string2 = str8;
                                                                    } else {
                                                                        d2 = d2;
                                                                        str8 = "";
                                                                        str9 = str9;
                                                                        string = string;
                                                                        string2 = str8;
                                                                    }
                                                                } else {
                                                                    d3 = d3;
                                                                    d2 = d2;
                                                                    num8 = num8;
                                                                    num7 = num7;
                                                                    num6 = num6;
                                                                    num5 = num5;
                                                                    num4 = num4;
                                                                    num3 = num3;
                                                                    str7 = str3;
                                                                    str8 = "";
                                                                    str9 = str8;
                                                                    string = str9;
                                                                    string2 = string;
                                                                }
                                                                str10 = string2 + string + str9;
                                                            } else {
                                                                d3 = d3;
                                                                d2 = d2;
                                                                num8 = num8;
                                                                num7 = num7;
                                                                num6 = num6;
                                                                num5 = num5;
                                                                num4 = num4;
                                                                str6 = str5;
                                                                num3 = num3;
                                                                str7 = str3;
                                                                str8 = "";
                                                                str10 = str8;
                                                            }
                                                            if (d4 == null) {
                                                                strTrimDouble2 = " ";
                                                            } else {
                                                                strTrimDouble2 = trimDouble(d4.doubleValue());
                                                            }
                                                            if (d2 == null) {
                                                                strTrimDouble3 = " ";
                                                            } else {
                                                                strTrimDouble3 = trimDouble(d2.doubleValue());
                                                            }
                                                            if (d == 0) {
                                                                strTrimDouble4 = " ";
                                                            } else {
                                                                strTrimDouble4 = trimDouble(d.doubleValue());
                                                            }
                                                            if (d3 != null) {
                                                            }
                                                            StringBuilder sb16 = new StringBuilder("蚂蚁庄园🐔[");
                                                            sb16.append(UserIdMap.getShowName(UserIdMap.getCurrentUid()));
                                                            sb16.append("]饲料");
                                                            sb16.append(Log.n(num));
                                                            sb16.append("/");
                                                            sb16.append(Log.n(num3));
                                                            sb16.append("槽内");
                                                            sb16.append(Log.n(num7));
                                                            sb16.append("/");
                                                            sb16.append(Log.n(num8));
                                                            sb16.append(";爱心蛋");
                                                            sb16.append(Log.n(num5));
                                                            sb16.append(";光荣分");
                                                            sb16.append(Log.n(num4));
                                                            sb16.append("成就");
                                                            sb16.append(Log.n(num6));
                                                            sb16.append(";心情");
                                                            sb16.append(strTrimDouble2);
                                                            sb16.append(";小鸡[");
                                                            sb16.append(str7);
                                                            sb16.append("/");
                                                            sb16.append(str6);
                                                            sb16.append("]已吃");
                                                            sb16.append(strTrimDouble3);
                                                            sb16.append("被偷");
                                                            sb16.append(strTrimDouble4);
                                                            sb16.append(";肥料");
                                                            sb16.append(strTrimDouble5);
                                                            sb16.append(";芭芭农场[");
                                                            sb16.append(str4);
                                                            sb16.append("]");
                                                            sb16.append(Log.n(num2));
                                                            sb16.append(str217);
                                                            if (str == null) {
                                                                str20 = str8;
                                                            } else {
                                                                str20 = str;
                                                            }
                                                            sb16.append(str20);
                                                            Log.info(sb16.toString());
                                                            if (str10.isEmpty()) {
                                                                Log.info("庄园排位🏆[" + UserIdMap.getShowName(UserIdMap.getCurrentUid()) + "]" + str10);
                                                            }
                                                        }
                                                    } catch (Throwable th18) {
                                                        th = th18;
                                                        dValueOf = null;
                                                        dValueOf2 = null;
                                                        numValueOf6 = null;
                                                        obj3 = numValueOf6;
                                                        numValueOf = numValueOf;
                                                        obj2 = obj3;
                                                        num = numValueOf12;
                                                        str3 = "";
                                                        str21 = str3;
                                                        String str218 = TAG;
                                                        Log.i(str218, "farmInfo 解析失败:");
                                                        Log.printStackTrace(str218, th);
                                                        num3 = numValueOf7;
                                                        str5 = str21;
                                                        str4 = "";
                                                        Double d11 = dValueOf2;
                                                        d4 = dValueOf;
                                                        num2 = numValueOf6;
                                                        num4 = numValueOf5;
                                                        num5 = numValueOf4;
                                                        num6 = numValueOf3;
                                                        num7 = numValueOf2;
                                                        num8 = numValueOf;
                                                        d2 = dValueOf3;
                                                        d3 = d11;
                                                        d = obj2;
                                                        String str219 = ";";
                                                        if (this.competition.getValue().booleanValue()) {
                                                            str6 = str5;
                                                            jSONObject2 = new JSONObject(AntFarmRpcCall.queryCompetitionEntranceInfo());
                                                            str11 = TAG;
                                                            if (MessageUtil.checkMemo(str11, jSONObject2).booleanValue()) {
                                                                str7 = str3;
                                                                jSONObjectOptJSONObject = jSONObject2.optJSONObject("donationCompetitionActivityConf");
                                                                num6 = num6;
                                                                num5 = num5;
                                                                if (jSONObjectOptJSONObject != null) {
                                                                    String strOptString13 = jSONObjectOptJSONObject.optString("name", "");
                                                                    num8 = num8;
                                                                    num7 = num7;
                                                                    jOptLong = jSONObjectOptJSONObject.optLong("endTime", 0L);
                                                                    if (jOptLong > 0) {
                                                                        str12 = new SimpleDateFormat("MM-dd", Locale.getDefault()).format(new Date(jOptLong));
                                                                    } else {
                                                                        str12 = "";
                                                                    }
                                                                    str13 = strOptString13;
                                                                } else {
                                                                    num8 = num8;
                                                                    num7 = num7;
                                                                    str12 = "";
                                                                    str13 = str12;
                                                                }
                                                                strOptString2 = jSONObject2.optString("rankRoundId", "");
                                                                jSONObjectOptJSONObject2 = jSONObject2.optJSONObject("animationInfo");
                                                                if (jSONObjectOptJSONObject2 != null) {
                                                                    if (jSONObjectOptJSONObject2.has("todayDonationNum")) {
                                                                        numValueOf8 = Integer.valueOf(jSONObjectOptJSONObject2.optInt("todayDonationNum"));
                                                                    } else {
                                                                        numValueOf8 = null;
                                                                    }
                                                                    zOptBoolean = jSONObjectOptJSONObject2.optBoolean("hasUnReceivedAward", false);
                                                                    jSONObjectOptJSONObject3 = jSONObjectOptJSONObject2.optJSONObject("previousUserRankInfo");
                                                                    if (jSONObjectOptJSONObject3 != null) {
                                                                        if (jSONObjectOptJSONObject3.has("rankOrder")) {
                                                                            numValueOf11 = Integer.valueOf(jSONObjectOptJSONObject3.optInt("rankOrder"));
                                                                        } else {
                                                                            numValueOf11 = null;
                                                                        }
                                                                        if (jSONObjectOptJSONObject3.has("rewardContributionNum")) {
                                                                            numValueOf9 = Integer.valueOf(jSONObjectOptJSONObject3.optInt("rewardContributionNum"));
                                                                        } else {
                                                                            numValueOf9 = null;
                                                                        }
                                                                        num9 = numValueOf11;
                                                                    } else {
                                                                        num9 = null;
                                                                        numValueOf9 = null;
                                                                    }
                                                                    jSONObjectOptJSONObject4 = jSONObjectOptJSONObject2.optJSONObject("competitionProjectInfo");
                                                                    if (jSONObjectOptJSONObject4 != null) {
                                                                        String strOptString14 = jSONObjectOptJSONObject4.optString("projectName", "");
                                                                        if (jSONObjectOptJSONObject4.has("roomNumber")) {
                                                                            numValueOf10 = Integer.valueOf(jSONObjectOptJSONObject4.optInt("roomNumber"));
                                                                        } else {
                                                                            numValueOf10 = null;
                                                                        }
                                                                        if (jSONObjectOptJSONObject4.has("roomDonationProgress")) {
                                                                            strTrimDouble = trimDouble(jSONObjectOptJSONObject4.optDouble("roomDonationProgress"));
                                                                        } else {
                                                                            strTrimDouble = " ";
                                                                        }
                                                                        str14 = strOptString14;
                                                                    } else {
                                                                        str14 = "";
                                                                        numValueOf10 = null;
                                                                        strTrimDouble = " ";
                                                                    }
                                                                    d3 = d3;
                                                                    StringBuilder sb17 = new StringBuilder(str2);
                                                                    sb17.append(str13);
                                                                    sb17.append("]今日捐蛋");
                                                                    sb17.append(Log.n(numValueOf8));
                                                                    sb17.append(";项目[");
                                                                    sb17.append(str14);
                                                                    sb17.append("]第");
                                                                    sb17.append(Log.n(numValueOf10));
                                                                    sb17.append("间进度");
                                                                    sb17.append(strTrimDouble);
                                                                    sb17.append("%;轮次");
                                                                    sb17.append(strOptString2);
                                                                    sb17.append("截止");
                                                                    sb17.append(str12);
                                                                    if (zOptBoolean) {
                                                                        str15 = "有待领奖";
                                                                    } else {
                                                                        str15 = "";
                                                                    }
                                                                    sb17.append(str15);
                                                                    sb17.append(";");
                                                                    string = sb17.toString();
                                                                    str9 = "上期第" + Log.n(num9) + "名贡献" + Log.n(numValueOf9) + ";";
                                                                } else {
                                                                    d3 = d3;
                                                                    num4 = num4;
                                                                    num3 = num3;
                                                                    str9 = "";
                                                                    string = str9;
                                                                }
                                                                jSONObjectEnterDonationCompetitionRank = enterDonationCompetitionRank();
                                                                if (jSONObjectEnterDonationCompetitionRank == null) {
                                                                    d2 = d2;
                                                                    str8 = "";
                                                                    str9 = str9;
                                                                    string = string;
                                                                    string2 = str8;
                                                                } else {
                                                                    d2 = d2;
                                                                    str8 = "";
                                                                    str9 = str9;
                                                                    string = string;
                                                                    string2 = str8;
                                                                }
                                                            } else {
                                                                d3 = d3;
                                                                d2 = d2;
                                                                num8 = num8;
                                                                num7 = num7;
                                                                num6 = num6;
                                                                num5 = num5;
                                                                num4 = num4;
                                                                num3 = num3;
                                                                str7 = str3;
                                                                str8 = "";
                                                                str9 = str8;
                                                                string = str9;
                                                                string2 = string;
                                                            }
                                                            str10 = string2 + string + str9;
                                                        } else {
                                                            d3 = d3;
                                                            d2 = d2;
                                                            num8 = num8;
                                                            num7 = num7;
                                                            num6 = num6;
                                                            num5 = num5;
                                                            num4 = num4;
                                                            str6 = str5;
                                                            num3 = num3;
                                                            str7 = str3;
                                                            str8 = "";
                                                            str10 = str8;
                                                        }
                                                        if (d4 == null) {
                                                            strTrimDouble2 = " ";
                                                        } else {
                                                            strTrimDouble2 = trimDouble(d4.doubleValue());
                                                        }
                                                        if (d2 == null) {
                                                            strTrimDouble3 = " ";
                                                        } else {
                                                            strTrimDouble3 = trimDouble(d2.doubleValue());
                                                        }
                                                        if (d == 0) {
                                                            strTrimDouble4 = " ";
                                                        } else {
                                                            strTrimDouble4 = trimDouble(d.doubleValue());
                                                        }
                                                        if (d3 != null) {
                                                        }
                                                        StringBuilder sb18 = new StringBuilder("蚂蚁庄园🐔[");
                                                        sb18.append(UserIdMap.getShowName(UserIdMap.getCurrentUid()));
                                                        sb18.append("]饲料");
                                                        sb18.append(Log.n(num));
                                                        sb18.append("/");
                                                        sb18.append(Log.n(num3));
                                                        sb18.append("槽内");
                                                        sb18.append(Log.n(num7));
                                                        sb18.append("/");
                                                        sb18.append(Log.n(num8));
                                                        sb18.append(";爱心蛋");
                                                        sb18.append(Log.n(num5));
                                                        sb18.append(";光荣分");
                                                        sb18.append(Log.n(num4));
                                                        sb18.append("成就");
                                                        sb18.append(Log.n(num6));
                                                        sb18.append(";心情");
                                                        sb18.append(strTrimDouble2);
                                                        sb18.append(";小鸡[");
                                                        sb18.append(str7);
                                                        sb18.append("/");
                                                        sb18.append(str6);
                                                        sb18.append("]已吃");
                                                        sb18.append(strTrimDouble3);
                                                        sb18.append("被偷");
                                                        sb18.append(strTrimDouble4);
                                                        sb18.append(";肥料");
                                                        sb18.append(strTrimDouble5);
                                                        sb18.append(";芭芭农场[");
                                                        sb18.append(str4);
                                                        sb18.append("]");
                                                        sb18.append(Log.n(num2));
                                                        sb18.append(str219);
                                                        if (str == null) {
                                                            str20 = str8;
                                                        } else {
                                                            str20 = str;
                                                        }
                                                        sb18.append(str20);
                                                        Log.info(sb18.toString());
                                                        if (str10.isEmpty()) {
                                                            Log.info("庄园排位🏆[" + UserIdMap.getShowName(UserIdMap.getCurrentUid()) + "]" + str10);
                                                        }
                                                    }
                                                } else {
                                                    strOptString3 = "";
                                                    strOptString4 = strOptString3;
                                                    dValueOf3 = null;
                                                    d5 = null;
                                                }
                                                try {
                                                    JSONObject jSONObjectOptJSONObject11 = jSONObjectOptJSONObject9.optJSONObject("manureVO");
                                                    JSONArray jSONArrayOptJSONArray2 = jSONObjectOptJSONObject11 != null ? jSONObjectOptJSONObject11.optJSONArray("manurePotList") : null;
                                                    dValueOf2 = (jSONArrayOptJSONArray2 == null || jSONArrayOptJSONArray2.length() <= 0 || (jSONObjectOptJSONObject6 = jSONArrayOptJSONArray2.optJSONObject(0)) == null || !jSONObjectOptJSONObject6.has("manurePotNum")) ? null : Double.valueOf(jSONObjectOptJSONObject6.optDouble("manurePotNum"));
                                                    numValueOf = numValueOf;
                                                    str21 = strOptString3;
                                                    Integer num11 = numValueOf12;
                                                    str3 = strOptString4;
                                                    numValueOf7 = numValueOf7;
                                                    num = num11;
                                                    obj2 = d5;
                                                } catch (Throwable th19) {
                                                    th = th19;
                                                    dValueOf2 = null;
                                                    numValueOf6 = null;
                                                    str21 = strOptString3;
                                                    dValueOf = null;
                                                    obj2 = d5;
                                                    Integer num12 = numValueOf12;
                                                    str3 = strOptString4;
                                                    numValueOf7 = numValueOf7;
                                                    num = num12;
                                                    String str2110 = TAG;
                                                    Log.i(str2110, "farmInfo 解析失败:");
                                                    Log.printStackTrace(str2110, th);
                                                    num3 = numValueOf7;
                                                    str5 = str21;
                                                    str4 = "";
                                                    Double d12 = dValueOf2;
                                                    d4 = dValueOf;
                                                    num2 = numValueOf6;
                                                    num4 = numValueOf5;
                                                    num5 = numValueOf4;
                                                    num6 = numValueOf3;
                                                    num7 = numValueOf2;
                                                    num8 = numValueOf;
                                                    d2 = dValueOf3;
                                                    d3 = d12;
                                                    d = obj2;
                                                    String str2111 = ";";
                                                    if (this.competition.getValue().booleanValue()) {
                                                        str6 = str5;
                                                        jSONObject2 = new JSONObject(AntFarmRpcCall.queryCompetitionEntranceInfo());
                                                        str11 = TAG;
                                                        if (MessageUtil.checkMemo(str11, jSONObject2).booleanValue()) {
                                                            str7 = str3;
                                                            jSONObjectOptJSONObject = jSONObject2.optJSONObject("donationCompetitionActivityConf");
                                                            num6 = num6;
                                                            num5 = num5;
                                                            if (jSONObjectOptJSONObject != null) {
                                                                String strOptString15 = jSONObjectOptJSONObject.optString("name", "");
                                                                num8 = num8;
                                                                num7 = num7;
                                                                jOptLong = jSONObjectOptJSONObject.optLong("endTime", 0L);
                                                                if (jOptLong > 0) {
                                                                    str12 = new SimpleDateFormat("MM-dd", Locale.getDefault()).format(new Date(jOptLong));
                                                                } else {
                                                                    str12 = "";
                                                                }
                                                                str13 = strOptString15;
                                                            } else {
                                                                num8 = num8;
                                                                num7 = num7;
                                                                str12 = "";
                                                                str13 = str12;
                                                            }
                                                            strOptString2 = jSONObject2.optString("rankRoundId", "");
                                                            jSONObjectOptJSONObject2 = jSONObject2.optJSONObject("animationInfo");
                                                            if (jSONObjectOptJSONObject2 != null) {
                                                                if (jSONObjectOptJSONObject2.has("todayDonationNum")) {
                                                                    numValueOf8 = Integer.valueOf(jSONObjectOptJSONObject2.optInt("todayDonationNum"));
                                                                } else {
                                                                    numValueOf8 = null;
                                                                }
                                                                zOptBoolean = jSONObjectOptJSONObject2.optBoolean("hasUnReceivedAward", false);
                                                                jSONObjectOptJSONObject3 = jSONObjectOptJSONObject2.optJSONObject("previousUserRankInfo");
                                                                if (jSONObjectOptJSONObject3 != null) {
                                                                    if (jSONObjectOptJSONObject3.has("rankOrder")) {
                                                                        numValueOf11 = Integer.valueOf(jSONObjectOptJSONObject3.optInt("rankOrder"));
                                                                    } else {
                                                                        numValueOf11 = null;
                                                                    }
                                                                    if (jSONObjectOptJSONObject3.has("rewardContributionNum")) {
                                                                        numValueOf9 = Integer.valueOf(jSONObjectOptJSONObject3.optInt("rewardContributionNum"));
                                                                    } else {
                                                                        numValueOf9 = null;
                                                                    }
                                                                    num9 = numValueOf11;
                                                                } else {
                                                                    num9 = null;
                                                                    numValueOf9 = null;
                                                                }
                                                                jSONObjectOptJSONObject4 = jSONObjectOptJSONObject2.optJSONObject("competitionProjectInfo");
                                                                if (jSONObjectOptJSONObject4 != null) {
                                                                    String strOptString16 = jSONObjectOptJSONObject4.optString("projectName", "");
                                                                    if (jSONObjectOptJSONObject4.has("roomNumber")) {
                                                                        numValueOf10 = Integer.valueOf(jSONObjectOptJSONObject4.optInt("roomNumber"));
                                                                    } else {
                                                                        numValueOf10 = null;
                                                                    }
                                                                    if (jSONObjectOptJSONObject4.has("roomDonationProgress")) {
                                                                        strTrimDouble = trimDouble(jSONObjectOptJSONObject4.optDouble("roomDonationProgress"));
                                                                    } else {
                                                                        strTrimDouble = " ";
                                                                    }
                                                                    str14 = strOptString16;
                                                                } else {
                                                                    str14 = "";
                                                                    numValueOf10 = null;
                                                                    strTrimDouble = " ";
                                                                }
                                                                d3 = d3;
                                                                StringBuilder sb19 = new StringBuilder(str2);
                                                                sb19.append(str13);
                                                                sb19.append("]今日捐蛋");
                                                                sb19.append(Log.n(numValueOf8));
                                                                sb19.append(";项目[");
                                                                sb19.append(str14);
                                                                sb19.append("]第");
                                                                sb19.append(Log.n(numValueOf10));
                                                                sb19.append("间进度");
                                                                sb19.append(strTrimDouble);
                                                                sb19.append("%;轮次");
                                                                sb19.append(strOptString2);
                                                                sb19.append("截止");
                                                                sb19.append(str12);
                                                                if (zOptBoolean) {
                                                                    str15 = "有待领奖";
                                                                } else {
                                                                    str15 = "";
                                                                }
                                                                sb19.append(str15);
                                                                sb19.append(";");
                                                                string = sb19.toString();
                                                                str9 = "上期第" + Log.n(num9) + "名贡献" + Log.n(numValueOf9) + ";";
                                                            } else {
                                                                d3 = d3;
                                                                num4 = num4;
                                                                num3 = num3;
                                                                str9 = "";
                                                                string = str9;
                                                            }
                                                            jSONObjectEnterDonationCompetitionRank = enterDonationCompetitionRank();
                                                            if (jSONObjectEnterDonationCompetitionRank == null) {
                                                                d2 = d2;
                                                                str8 = "";
                                                                str9 = str9;
                                                                string = string;
                                                                string2 = str8;
                                                            } else {
                                                                d2 = d2;
                                                                str8 = "";
                                                                str9 = str9;
                                                                string = string;
                                                                string2 = str8;
                                                            }
                                                        } else {
                                                            d3 = d3;
                                                            d2 = d2;
                                                            num8 = num8;
                                                            num7 = num7;
                                                            num6 = num6;
                                                            num5 = num5;
                                                            num4 = num4;
                                                            num3 = num3;
                                                            str7 = str3;
                                                            str8 = "";
                                                            str9 = str8;
                                                            string = str9;
                                                            string2 = string;
                                                        }
                                                        str10 = string2 + string + str9;
                                                    } else {
                                                        d3 = d3;
                                                        d2 = d2;
                                                        num8 = num8;
                                                        num7 = num7;
                                                        num6 = num6;
                                                        num5 = num5;
                                                        num4 = num4;
                                                        str6 = str5;
                                                        num3 = num3;
                                                        str7 = str3;
                                                        str8 = "";
                                                        str10 = str8;
                                                    }
                                                    if (d4 == null) {
                                                        strTrimDouble2 = " ";
                                                    } else {
                                                        strTrimDouble2 = trimDouble(d4.doubleValue());
                                                    }
                                                    if (d2 == null) {
                                                        strTrimDouble3 = " ";
                                                    } else {
                                                        strTrimDouble3 = trimDouble(d2.doubleValue());
                                                    }
                                                    if (d == 0) {
                                                        strTrimDouble4 = " ";
                                                    } else {
                                                        strTrimDouble4 = trimDouble(d.doubleValue());
                                                    }
                                                    if (d3 != null) {
                                                    }
                                                    StringBuilder sb110 = new StringBuilder("蚂蚁庄园🐔[");
                                                    sb110.append(UserIdMap.getShowName(UserIdMap.getCurrentUid()));
                                                    sb110.append("]饲料");
                                                    sb110.append(Log.n(num));
                                                    sb110.append("/");
                                                    sb110.append(Log.n(num3));
                                                    sb110.append("槽内");
                                                    sb110.append(Log.n(num7));
                                                    sb110.append("/");
                                                    sb110.append(Log.n(num8));
                                                    sb110.append(";爱心蛋");
                                                    sb110.append(Log.n(num5));
                                                    sb110.append(";光荣分");
                                                    sb110.append(Log.n(num4));
                                                    sb110.append("成就");
                                                    sb110.append(Log.n(num6));
                                                    sb110.append(";心情");
                                                    sb110.append(strTrimDouble2);
                                                    sb110.append(";小鸡[");
                                                    sb110.append(str7);
                                                    sb110.append("/");
                                                    sb110.append(str6);
                                                    sb110.append("]已吃");
                                                    sb110.append(strTrimDouble3);
                                                    sb110.append("被偷");
                                                    sb110.append(strTrimDouble4);
                                                    sb110.append(";肥料");
                                                    sb110.append(strTrimDouble5);
                                                    sb110.append(";芭芭农场[");
                                                    sb110.append(str4);
                                                    sb110.append("]");
                                                    sb110.append(Log.n(num2));
                                                    sb110.append(str2111);
                                                    if (str == null) {
                                                        str20 = str8;
                                                    } else {
                                                        str20 = str;
                                                    }
                                                    sb110.append(str20);
                                                    Log.info(sb110.toString());
                                                    if (str10.isEmpty()) {
                                                        Log.info("庄园排位🏆[" + UserIdMap.getShowName(UserIdMap.getCurrentUid()) + "]" + str10);
                                                    }
                                                }
                                            } catch (Throwable th20) {
                                                th = th20;
                                                dValueOf = null;
                                                dValueOf2 = null;
                                                dValueOf3 = null;
                                                numValueOf6 = null;
                                                obj2 = null;
                                            }
                                        } catch (Throwable th21) {
                                            th = th21;
                                            str21 = "";
                                            dValueOf = null;
                                            dValueOf2 = null;
                                            dValueOf3 = null;
                                            numValueOf = null;
                                            numValueOf6 = null;
                                            obj2 = numValueOf6;
                                            numValueOf7 = numValueOf7;
                                            num = numValueOf12;
                                            str3 = str21;
                                            String str2112 = TAG;
                                            Log.i(str2112, "farmInfo 解析失败:");
                                            Log.printStackTrace(str2112, th);
                                            num3 = numValueOf7;
                                            str5 = str21;
                                            str4 = "";
                                            Double d13 = dValueOf2;
                                            d4 = dValueOf;
                                            num2 = numValueOf6;
                                            num4 = numValueOf5;
                                            num5 = numValueOf4;
                                            num6 = numValueOf3;
                                            num7 = numValueOf2;
                                            num8 = numValueOf;
                                            d2 = dValueOf3;
                                            d3 = d13;
                                            d = obj2;
                                            String str2113 = ";";
                                            if (this.competition.getValue().booleanValue()) {
                                                str6 = str5;
                                                jSONObject2 = new JSONObject(AntFarmRpcCall.queryCompetitionEntranceInfo());
                                                str11 = TAG;
                                                if (MessageUtil.checkMemo(str11, jSONObject2).booleanValue()) {
                                                    str7 = str3;
                                                    jSONObjectOptJSONObject = jSONObject2.optJSONObject("donationCompetitionActivityConf");
                                                    num6 = num6;
                                                    num5 = num5;
                                                    if (jSONObjectOptJSONObject != null) {
                                                        String strOptString17 = jSONObjectOptJSONObject.optString("name", "");
                                                        num8 = num8;
                                                        num7 = num7;
                                                        jOptLong = jSONObjectOptJSONObject.optLong("endTime", 0L);
                                                        if (jOptLong > 0) {
                                                            str12 = new SimpleDateFormat("MM-dd", Locale.getDefault()).format(new Date(jOptLong));
                                                        } else {
                                                            str12 = "";
                                                        }
                                                        str13 = strOptString17;
                                                    } else {
                                                        num8 = num8;
                                                        num7 = num7;
                                                        str12 = "";
                                                        str13 = str12;
                                                    }
                                                    strOptString2 = jSONObject2.optString("rankRoundId", "");
                                                    jSONObjectOptJSONObject2 = jSONObject2.optJSONObject("animationInfo");
                                                    if (jSONObjectOptJSONObject2 != null) {
                                                        if (jSONObjectOptJSONObject2.has("todayDonationNum")) {
                                                            numValueOf8 = Integer.valueOf(jSONObjectOptJSONObject2.optInt("todayDonationNum"));
                                                        } else {
                                                            numValueOf8 = null;
                                                        }
                                                        zOptBoolean = jSONObjectOptJSONObject2.optBoolean("hasUnReceivedAward", false);
                                                        jSONObjectOptJSONObject3 = jSONObjectOptJSONObject2.optJSONObject("previousUserRankInfo");
                                                        if (jSONObjectOptJSONObject3 != null) {
                                                            if (jSONObjectOptJSONObject3.has("rankOrder")) {
                                                                numValueOf11 = Integer.valueOf(jSONObjectOptJSONObject3.optInt("rankOrder"));
                                                            } else {
                                                                numValueOf11 = null;
                                                            }
                                                            if (jSONObjectOptJSONObject3.has("rewardContributionNum")) {
                                                                numValueOf9 = Integer.valueOf(jSONObjectOptJSONObject3.optInt("rewardContributionNum"));
                                                            } else {
                                                                numValueOf9 = null;
                                                            }
                                                            num9 = numValueOf11;
                                                        } else {
                                                            num9 = null;
                                                            numValueOf9 = null;
                                                        }
                                                        jSONObjectOptJSONObject4 = jSONObjectOptJSONObject2.optJSONObject("competitionProjectInfo");
                                                        if (jSONObjectOptJSONObject4 != null) {
                                                            String strOptString18 = jSONObjectOptJSONObject4.optString("projectName", "");
                                                            if (jSONObjectOptJSONObject4.has("roomNumber")) {
                                                                numValueOf10 = Integer.valueOf(jSONObjectOptJSONObject4.optInt("roomNumber"));
                                                            } else {
                                                                numValueOf10 = null;
                                                            }
                                                            if (jSONObjectOptJSONObject4.has("roomDonationProgress")) {
                                                                strTrimDouble = trimDouble(jSONObjectOptJSONObject4.optDouble("roomDonationProgress"));
                                                            } else {
                                                                strTrimDouble = " ";
                                                            }
                                                            str14 = strOptString18;
                                                        } else {
                                                            str14 = "";
                                                            numValueOf10 = null;
                                                            strTrimDouble = " ";
                                                        }
                                                        d3 = d3;
                                                        StringBuilder sb111 = new StringBuilder(str2);
                                                        sb111.append(str13);
                                                        sb111.append("]今日捐蛋");
                                                        sb111.append(Log.n(numValueOf8));
                                                        sb111.append(";项目[");
                                                        sb111.append(str14);
                                                        sb111.append("]第");
                                                        sb111.append(Log.n(numValueOf10));
                                                        sb111.append("间进度");
                                                        sb111.append(strTrimDouble);
                                                        sb111.append("%;轮次");
                                                        sb111.append(strOptString2);
                                                        sb111.append("截止");
                                                        sb111.append(str12);
                                                        if (zOptBoolean) {
                                                            str15 = "有待领奖";
                                                        } else {
                                                            str15 = "";
                                                        }
                                                        sb111.append(str15);
                                                        sb111.append(";");
                                                        string = sb111.toString();
                                                        str9 = "上期第" + Log.n(num9) + "名贡献" + Log.n(numValueOf9) + ";";
                                                    } else {
                                                        d3 = d3;
                                                        num4 = num4;
                                                        num3 = num3;
                                                        str9 = "";
                                                        string = str9;
                                                    }
                                                    jSONObjectEnterDonationCompetitionRank = enterDonationCompetitionRank();
                                                    if (jSONObjectEnterDonationCompetitionRank == null) {
                                                        d2 = d2;
                                                        str8 = "";
                                                        str9 = str9;
                                                        string = string;
                                                        string2 = str8;
                                                    } else {
                                                        d2 = d2;
                                                        str8 = "";
                                                        str9 = str9;
                                                        string = string;
                                                        string2 = str8;
                                                    }
                                                } else {
                                                    d3 = d3;
                                                    d2 = d2;
                                                    num8 = num8;
                                                    num7 = num7;
                                                    num6 = num6;
                                                    num5 = num5;
                                                    num4 = num4;
                                                    num3 = num3;
                                                    str7 = str3;
                                                    str8 = "";
                                                    str9 = str8;
                                                    string = str9;
                                                    string2 = string;
                                                }
                                                str10 = string2 + string + str9;
                                            } else {
                                                d3 = d3;
                                                d2 = d2;
                                                num8 = num8;
                                                num7 = num7;
                                                num6 = num6;
                                                num5 = num5;
                                                num4 = num4;
                                                str6 = str5;
                                                num3 = num3;
                                                str7 = str3;
                                                str8 = "";
                                                str10 = str8;
                                            }
                                            if (d4 == null) {
                                                strTrimDouble2 = " ";
                                            } else {
                                                strTrimDouble2 = trimDouble(d4.doubleValue());
                                            }
                                            if (d2 == null) {
                                                strTrimDouble3 = " ";
                                            } else {
                                                strTrimDouble3 = trimDouble(d2.doubleValue());
                                            }
                                            if (d == 0) {
                                                strTrimDouble4 = " ";
                                            } else {
                                                strTrimDouble4 = trimDouble(d.doubleValue());
                                            }
                                            if (d3 != null) {
                                            }
                                            StringBuilder sb112 = new StringBuilder("蚂蚁庄园🐔[");
                                            sb112.append(UserIdMap.getShowName(UserIdMap.getCurrentUid()));
                                            sb112.append("]饲料");
                                            sb112.append(Log.n(num));
                                            sb112.append("/");
                                            sb112.append(Log.n(num3));
                                            sb112.append("槽内");
                                            sb112.append(Log.n(num7));
                                            sb112.append("/");
                                            sb112.append(Log.n(num8));
                                            sb112.append(";爱心蛋");
                                            sb112.append(Log.n(num5));
                                            sb112.append(";光荣分");
                                            sb112.append(Log.n(num4));
                                            sb112.append("成就");
                                            sb112.append(Log.n(num6));
                                            sb112.append(";心情");
                                            sb112.append(strTrimDouble2);
                                            sb112.append(";小鸡[");
                                            sb112.append(str7);
                                            sb112.append("/");
                                            sb112.append(str6);
                                            sb112.append("]已吃");
                                            sb112.append(strTrimDouble3);
                                            sb112.append("被偷");
                                            sb112.append(strTrimDouble4);
                                            sb112.append(";肥料");
                                            sb112.append(strTrimDouble5);
                                            sb112.append(";芭芭农场[");
                                            sb112.append(str4);
                                            sb112.append("]");
                                            sb112.append(Log.n(num2));
                                            sb112.append(str2113);
                                            if (str == null) {
                                                str20 = str8;
                                            } else {
                                                str20 = str;
                                            }
                                            sb112.append(str20);
                                            Log.info(sb112.toString());
                                            if (str10.isEmpty()) {
                                                Log.info("庄园排位🏆[" + UserIdMap.getShowName(UserIdMap.getCurrentUid()) + "]" + str10);
                                            }
                                        }
                                    } catch (Throwable th22) {
                                        th = th22;
                                        str21 = "";
                                        dValueOf = null;
                                        dValueOf2 = null;
                                        dValueOf3 = null;
                                        numValueOf = null;
                                        numValueOf2 = null;
                                        numValueOf6 = null;
                                    }
                                } else {
                                    str21 = "";
                                    dValueOf2 = null;
                                    dValueOf3 = null;
                                    numValueOf = null;
                                    numValueOf2 = null;
                                    numValueOf4 = null;
                                    obj2 = null;
                                    numValueOf7 = numValueOf7;
                                    num = numValueOf12;
                                    str3 = str21;
                                }
                            } catch (Throwable th23) {
                                th = th23;
                                dValueOf = null;
                                dValueOf2 = null;
                                dValueOf3 = null;
                                numValueOf = null;
                                numValueOf2 = null;
                                numValueOf4 = null;
                                numValueOf6 = numValueOf4;
                                obj2 = numValueOf6;
                                numValueOf7 = numValueOf7;
                                num = numValueOf12;
                                str3 = str21;
                                String str2114 = TAG;
                                Log.i(str2114, "farmInfo 解析失败:");
                                Log.printStackTrace(str2114, th);
                                num3 = numValueOf7;
                                str5 = str21;
                                str4 = "";
                                Double d14 = dValueOf2;
                                d4 = dValueOf;
                                num2 = numValueOf6;
                                num4 = numValueOf5;
                                num5 = numValueOf4;
                                num6 = numValueOf3;
                                num7 = numValueOf2;
                                num8 = numValueOf;
                                d2 = dValueOf3;
                                d3 = d14;
                                d = obj2;
                                String str2115 = ";";
                                if (this.competition.getValue().booleanValue()) {
                                    str6 = str5;
                                    jSONObject2 = new JSONObject(AntFarmRpcCall.queryCompetitionEntranceInfo());
                                    str11 = TAG;
                                    if (MessageUtil.checkMemo(str11, jSONObject2).booleanValue()) {
                                        str7 = str3;
                                        jSONObjectOptJSONObject = jSONObject2.optJSONObject("donationCompetitionActivityConf");
                                        num6 = num6;
                                        num5 = num5;
                                        if (jSONObjectOptJSONObject != null) {
                                            String strOptString19 = jSONObjectOptJSONObject.optString("name", "");
                                            num8 = num8;
                                            num7 = num7;
                                            jOptLong = jSONObjectOptJSONObject.optLong("endTime", 0L);
                                            if (jOptLong > 0) {
                                                str12 = new SimpleDateFormat("MM-dd", Locale.getDefault()).format(new Date(jOptLong));
                                            } else {
                                                str12 = "";
                                            }
                                            str13 = strOptString19;
                                        } else {
                                            num8 = num8;
                                            num7 = num7;
                                            str12 = "";
                                            str13 = str12;
                                        }
                                        strOptString2 = jSONObject2.optString("rankRoundId", "");
                                        jSONObjectOptJSONObject2 = jSONObject2.optJSONObject("animationInfo");
                                        if (jSONObjectOptJSONObject2 != null) {
                                            if (jSONObjectOptJSONObject2.has("todayDonationNum")) {
                                                numValueOf8 = Integer.valueOf(jSONObjectOptJSONObject2.optInt("todayDonationNum"));
                                            } else {
                                                numValueOf8 = null;
                                            }
                                            zOptBoolean = jSONObjectOptJSONObject2.optBoolean("hasUnReceivedAward", false);
                                            jSONObjectOptJSONObject3 = jSONObjectOptJSONObject2.optJSONObject("previousUserRankInfo");
                                            if (jSONObjectOptJSONObject3 != null) {
                                                if (jSONObjectOptJSONObject3.has("rankOrder")) {
                                                    numValueOf11 = Integer.valueOf(jSONObjectOptJSONObject3.optInt("rankOrder"));
                                                } else {
                                                    numValueOf11 = null;
                                                }
                                                if (jSONObjectOptJSONObject3.has("rewardContributionNum")) {
                                                    numValueOf9 = Integer.valueOf(jSONObjectOptJSONObject3.optInt("rewardContributionNum"));
                                                } else {
                                                    numValueOf9 = null;
                                                }
                                                num9 = numValueOf11;
                                            } else {
                                                num9 = null;
                                                numValueOf9 = null;
                                            }
                                            jSONObjectOptJSONObject4 = jSONObjectOptJSONObject2.optJSONObject("competitionProjectInfo");
                                            if (jSONObjectOptJSONObject4 != null) {
                                                String strOptString110 = jSONObjectOptJSONObject4.optString("projectName", "");
                                                if (jSONObjectOptJSONObject4.has("roomNumber")) {
                                                    numValueOf10 = Integer.valueOf(jSONObjectOptJSONObject4.optInt("roomNumber"));
                                                } else {
                                                    numValueOf10 = null;
                                                }
                                                if (jSONObjectOptJSONObject4.has("roomDonationProgress")) {
                                                    strTrimDouble = trimDouble(jSONObjectOptJSONObject4.optDouble("roomDonationProgress"));
                                                } else {
                                                    strTrimDouble = " ";
                                                }
                                                str14 = strOptString110;
                                            } else {
                                                str14 = "";
                                                numValueOf10 = null;
                                                strTrimDouble = " ";
                                            }
                                            d3 = d3;
                                            StringBuilder sb113 = new StringBuilder(str2);
                                            sb113.append(str13);
                                            sb113.append("]今日捐蛋");
                                            sb113.append(Log.n(numValueOf8));
                                            sb113.append(";项目[");
                                            sb113.append(str14);
                                            sb113.append("]第");
                                            sb113.append(Log.n(numValueOf10));
                                            sb113.append("间进度");
                                            sb113.append(strTrimDouble);
                                            sb113.append("%;轮次");
                                            sb113.append(strOptString2);
                                            sb113.append("截止");
                                            sb113.append(str12);
                                            if (zOptBoolean) {
                                                str15 = "有待领奖";
                                            } else {
                                                str15 = "";
                                            }
                                            sb113.append(str15);
                                            sb113.append(";");
                                            string = sb113.toString();
                                            str9 = "上期第" + Log.n(num9) + "名贡献" + Log.n(numValueOf9) + ";";
                                        } else {
                                            d3 = d3;
                                            num4 = num4;
                                            num3 = num3;
                                            str9 = "";
                                            string = str9;
                                        }
                                        jSONObjectEnterDonationCompetitionRank = enterDonationCompetitionRank();
                                        if (jSONObjectEnterDonationCompetitionRank == null) {
                                            d2 = d2;
                                            str8 = "";
                                            str9 = str9;
                                            string = string;
                                            string2 = str8;
                                        } else {
                                            d2 = d2;
                                            str8 = "";
                                            str9 = str9;
                                            string = string;
                                            string2 = str8;
                                        }
                                    } else {
                                        d3 = d3;
                                        d2 = d2;
                                        num8 = num8;
                                        num7 = num7;
                                        num6 = num6;
                                        num5 = num5;
                                        num4 = num4;
                                        num3 = num3;
                                        str7 = str3;
                                        str8 = "";
                                        str9 = str8;
                                        string = str9;
                                        string2 = string;
                                    }
                                    str10 = string2 + string + str9;
                                } else {
                                    d3 = d3;
                                    d2 = d2;
                                    num8 = num8;
                                    num7 = num7;
                                    num6 = num6;
                                    num5 = num5;
                                    num4 = num4;
                                    str6 = str5;
                                    num3 = num3;
                                    str7 = str3;
                                    str8 = "";
                                    str10 = str8;
                                }
                                if (d4 == null) {
                                    strTrimDouble2 = " ";
                                } else {
                                    strTrimDouble2 = trimDouble(d4.doubleValue());
                                }
                                if (d2 == null) {
                                    strTrimDouble3 = " ";
                                } else {
                                    strTrimDouble3 = trimDouble(d2.doubleValue());
                                }
                                if (d == 0) {
                                    strTrimDouble4 = " ";
                                } else {
                                    strTrimDouble4 = trimDouble(d.doubleValue());
                                }
                                if (d3 != null) {
                                }
                                StringBuilder sb114 = new StringBuilder("蚂蚁庄园🐔[");
                                sb114.append(UserIdMap.getShowName(UserIdMap.getCurrentUid()));
                                sb114.append("]饲料");
                                sb114.append(Log.n(num));
                                sb114.append("/");
                                sb114.append(Log.n(num3));
                                sb114.append("槽内");
                                sb114.append(Log.n(num7));
                                sb114.append("/");
                                sb114.append(Log.n(num8));
                                sb114.append(";爱心蛋");
                                sb114.append(Log.n(num5));
                                sb114.append(";光荣分");
                                sb114.append(Log.n(num4));
                                sb114.append("成就");
                                sb114.append(Log.n(num6));
                                sb114.append(";心情");
                                sb114.append(strTrimDouble2);
                                sb114.append(";小鸡[");
                                sb114.append(str7);
                                sb114.append("/");
                                sb114.append(str6);
                                sb114.append("]已吃");
                                sb114.append(strTrimDouble3);
                                sb114.append("被偷");
                                sb114.append(strTrimDouble4);
                                sb114.append(";肥料");
                                sb114.append(strTrimDouble5);
                                sb114.append(";芭芭农场[");
                                sb114.append(str4);
                                sb114.append("]");
                                sb114.append(Log.n(num2));
                                sb114.append(str2115);
                                if (str == null) {
                                    str20 = str8;
                                } else {
                                    str20 = str;
                                }
                                sb114.append(str20);
                                Log.info(sb114.toString());
                                if (str10.isEmpty()) {
                                    Log.info("庄园排位🏆[" + UserIdMap.getShowName(UserIdMap.getCurrentUid()) + "]" + str10);
                                }
                            }
                        } catch (Throwable th24) {
                            th = th24;
                            str21 = "";
                            dValueOf = null;
                            dValueOf2 = null;
                            dValueOf3 = null;
                            numValueOf = null;
                            numValueOf2 = null;
                            numValueOf3 = null;
                            numValueOf4 = null;
                            numValueOf5 = null;
                            numValueOf6 = null;
                        }
                    } catch (Throwable th25) {
                        th = th25;
                        num = numValueOf12;
                        str3 = "";
                        str21 = str3;
                        dValueOf = null;
                        dValueOf2 = null;
                        dValueOf3 = null;
                        numValueOf = null;
                        numValueOf2 = null;
                        numValueOf3 = null;
                        numValueOf4 = null;
                        numValueOf5 = null;
                        numValueOf6 = null;
                        numValueOf7 = null;
                        obj2 = null;
                    }
                } else {
                    str3 = "";
                    str21 = str3;
                    dValueOf2 = null;
                    dValueOf3 = null;
                    numValueOf = null;
                    numValueOf2 = null;
                    numValueOf3 = null;
                    numValueOf4 = null;
                    numValueOf5 = null;
                    numValueOf7 = null;
                    num = null;
                    obj2 = null;
                }
                try {
                    JSONObject jSONObjectOptJSONObject12 = jSONObject.optJSONObject("emotionInfo");
                    dValueOf = (jSONObjectOptJSONObject12 == null || !jSONObjectOptJSONObject12.has("finalScore")) ? null : Double.valueOf(jSONObjectOptJSONObject12.optDouble("finalScore"));
                    try {
                        JSONObject jSONObjectOptJSONObject13 = jSONObject.optJSONObject("orchardInfo");
                        if (jSONObjectOptJSONObject13 != null) {
                            JSONObject jSONObjectOptJSONObject14 = jSONObjectOptJSONObject13.optJSONObject("accountInfo");
                            numValueOf6 = (jSONObjectOptJSONObject14 == null || !jSONObjectOptJSONObject14.has("happyPoint")) ? null : Integer.valueOf(jSONObjectOptJSONObject14.optInt("happyPoint"));
                            try {
                                strOptString = jSONObjectOptJSONObject13.optString("treeStage", "");
                                obj = obj2;
                            } catch (Throwable th26) {
                                th = th26;
                                String str2116 = TAG;
                                Log.i(str2116, "farmInfo 解析失败:");
                                Log.printStackTrace(str2116, th);
                                num3 = numValueOf7;
                                str5 = str21;
                                str4 = "";
                                Double d15 = dValueOf2;
                                d4 = dValueOf;
                                num2 = numValueOf6;
                                num4 = numValueOf5;
                                num5 = numValueOf4;
                                num6 = numValueOf3;
                                num7 = numValueOf2;
                                num8 = numValueOf;
                                d2 = dValueOf3;
                                d3 = d15;
                                d = obj2;
                            }
                        } else {
                            strOptString = "";
                            numValueOf6 = null;
                            obj = obj2;
                        }
                    } catch (Throwable th27) {
                        th = th27;
                        numValueOf6 = null;
                    }
                } catch (Throwable th28) {
                    th = th28;
                    dValueOf = null;
                    numValueOf6 = null;
                }
            } catch (Throwable th29) {
                th = th29;
                str3 = "";
                str21 = str3;
                dValueOf = null;
                dValueOf2 = null;
                dValueOf3 = null;
                numValueOf = null;
                numValueOf2 = null;
                numValueOf3 = null;
                numValueOf4 = null;
                numValueOf5 = null;
                numValueOf6 = null;
                numValueOf7 = null;
                num = null;
                obj2 = null;
            }
        } else {
            str2 = "[";
            strOptString = "";
            str3 = strOptString;
            str21 = str3;
            dValueOf = null;
            dValueOf2 = null;
            dValueOf3 = null;
            numValueOf = null;
            numValueOf2 = null;
            numValueOf3 = null;
            numValueOf4 = null;
            numValueOf5 = null;
            numValueOf6 = null;
            numValueOf7 = null;
            num = null;
            obj = null;
        }
        num2 = numValueOf6;
        num3 = numValueOf7;
        str5 = str21;
        str4 = strOptString;
        num4 = numValueOf5;
        num5 = numValueOf4;
        num6 = numValueOf3;
        num7 = numValueOf2;
        num8 = numValueOf;
        d2 = dValueOf3;
        d3 = dValueOf2;
        d4 = dValueOf;
        d = obj;
        String str2117 = ";";
        if (this.competition.getValue().booleanValue()) {
            str6 = str5;
            jSONObject2 = new JSONObject(AntFarmRpcCall.queryCompetitionEntranceInfo());
            str11 = TAG;
            if (MessageUtil.checkMemo(str11, jSONObject2).booleanValue()) {
                str7 = str3;
                jSONObjectOptJSONObject = jSONObject2.optJSONObject("donationCompetitionActivityConf");
                num6 = num6;
                num5 = num5;
                if (jSONObjectOptJSONObject != null) {
                    String strOptString111 = jSONObjectOptJSONObject.optString("name", "");
                    num8 = num8;
                    num7 = num7;
                    jOptLong = jSONObjectOptJSONObject.optLong("endTime", 0L);
                    if (jOptLong > 0) {
                        str12 = new SimpleDateFormat("MM-dd", Locale.getDefault()).format(new Date(jOptLong));
                    } else {
                        str12 = "";
                    }
                    str13 = strOptString111;
                } else {
                    num8 = num8;
                    num7 = num7;
                    str12 = "";
                    str13 = str12;
                }
                strOptString2 = jSONObject2.optString("rankRoundId", "");
                jSONObjectOptJSONObject2 = jSONObject2.optJSONObject("animationInfo");
                if (jSONObjectOptJSONObject2 != null) {
                    if (jSONObjectOptJSONObject2.has("todayDonationNum")) {
                        numValueOf8 = Integer.valueOf(jSONObjectOptJSONObject2.optInt("todayDonationNum"));
                    } else {
                        numValueOf8 = null;
                    }
                    zOptBoolean = jSONObjectOptJSONObject2.optBoolean("hasUnReceivedAward", false);
                    jSONObjectOptJSONObject3 = jSONObjectOptJSONObject2.optJSONObject("previousUserRankInfo");
                    if (jSONObjectOptJSONObject3 != null) {
                        if (jSONObjectOptJSONObject3.has("rankOrder")) {
                            numValueOf11 = Integer.valueOf(jSONObjectOptJSONObject3.optInt("rankOrder"));
                        } else {
                            numValueOf11 = null;
                        }
                        if (jSONObjectOptJSONObject3.has("rewardContributionNum")) {
                            numValueOf9 = Integer.valueOf(jSONObjectOptJSONObject3.optInt("rewardContributionNum"));
                        } else {
                            numValueOf9 = null;
                        }
                        num9 = numValueOf11;
                    } else {
                        num9 = null;
                        numValueOf9 = null;
                    }
                    jSONObjectOptJSONObject4 = jSONObjectOptJSONObject2.optJSONObject("competitionProjectInfo");
                    if (jSONObjectOptJSONObject4 != null) {
                        String strOptString112 = jSONObjectOptJSONObject4.optString("projectName", "");
                        if (jSONObjectOptJSONObject4.has("roomNumber")) {
                            numValueOf10 = Integer.valueOf(jSONObjectOptJSONObject4.optInt("roomNumber"));
                        } else {
                            numValueOf10 = null;
                        }
                        if (jSONObjectOptJSONObject4.has("roomDonationProgress")) {
                            strTrimDouble = trimDouble(jSONObjectOptJSONObject4.optDouble("roomDonationProgress"));
                        } else {
                            strTrimDouble = " ";
                        }
                        str14 = strOptString112;
                    } else {
                        str14 = "";
                        numValueOf10 = null;
                        strTrimDouble = " ";
                    }
                    d3 = d3;
                    StringBuilder sb115 = new StringBuilder(str2);
                    sb115.append(str13);
                    sb115.append("]今日捐蛋");
                    sb115.append(Log.n(numValueOf8));
                    sb115.append(";项目[");
                    sb115.append(str14);
                    sb115.append("]第");
                    sb115.append(Log.n(numValueOf10));
                    sb115.append("间进度");
                    sb115.append(strTrimDouble);
                    sb115.append("%;轮次");
                    sb115.append(strOptString2);
                    sb115.append("截止");
                    sb115.append(str12);
                    if (zOptBoolean) {
                        str15 = "有待领奖";
                    } else {
                        str15 = "";
                    }
                    sb115.append(str15);
                    sb115.append(";");
                    string = sb115.toString();
                    str9 = "上期第" + Log.n(num9) + "名贡献" + Log.n(numValueOf9) + ";";
                } else {
                    d3 = d3;
                    num4 = num4;
                    num3 = num3;
                    str9 = "";
                    string = str9;
                }
                jSONObjectEnterDonationCompetitionRank = enterDonationCompetitionRank();
                if (jSONObjectEnterDonationCompetitionRank == null && MessageUtil.checkMemo(str11, jSONObjectEnterDonationCompetitionRank).booleanValue()) {
                    JSONObject jSONObjectOptJSONObject15 = jSONObjectEnterDonationCompetitionRank.optJSONObject("donationRankHomeInfo");
                    JSONObject jSONObjectOptJSONObject16 = jSONObjectOptJSONObject15 == null ? null : jSONObjectOptJSONObject15.optJSONObject("selfDonationRank");
                    if (jSONObjectOptJSONObject16 != null) {
                        try {
                            if (jSONObjectOptJSONObject16.has("totalStarNum")) {
                                iIntValue = jSONObjectOptJSONObject16.optInt("totalStarNum");
                            } else {
                                iIntValue = (jSONObjectOptJSONObject16.has("totalContributionNum") ? Integer.valueOf(jSONObjectOptJSONObject16.optInt("totalContributionNum")) : null).intValue();
                            }
                            Integer numValueOf13 = Integer.valueOf(iIntValue);
                            if (jSONObjectOptJSONObject16.has("donationTotal")) {
                                iIntValue2 = jSONObjectOptJSONObject16.optInt("donationTotal");
                            } else {
                                iIntValue2 = (jSONObjectOptJSONObject16.has("donationNum") ? Integer.valueOf(jSONObjectOptJSONObject16.optInt("donationNum")) : null).intValue();
                            }
                            Integer numValueOf14 = Integer.valueOf(iIntValue2);
                            string2 = "我的排位等级[" + jSONObjectOptJSONObject16.optString("levelName", "") + "]星星或爱心值" + Log.n(numValueOf13) + "累计捐蛋" + Log.n(numValueOf14) + ";";
                            try {
                                JSONObject jSONObjectOptJSONObject17 = jSONObjectEnterDonationCompetitionRank.optJSONObject("globalRankAwardInfo");
                                JSONArray jSONArrayOptJSONArray3 = jSONObjectOptJSONObject17 != null ? jSONObjectOptJSONObject17.optJSONArray("contributionRankInfoList") : null;
                                if (jSONArrayOptJSONArray3 == null || jSONArrayOptJSONArray3.length() <= 0) {
                                    str16 = str9;
                                    str17 = string;
                                    d2 = d2;
                                    str8 = "";
                                } else {
                                    StringBuilder sb20 = new StringBuilder();
                                    long j = -1;
                                    long j2 = -1;
                                    str16 = str9;
                                    str17 = string;
                                    int i = 0;
                                    int i2 = 0;
                                    while (i2 < jSONArrayOptJSONArray3.length()) {
                                        try {
                                            try {
                                                JSONObject jSONObjectOptJSONObject18 = jSONArrayOptJSONArray3.optJSONObject(i2);
                                                if (jSONObjectOptJSONObject18 != null) {
                                                    jSONArray = jSONArrayOptJSONArray3;
                                                    if (jSONObjectOptJSONObject18.has("awardRankOrder") && jSONObjectOptJSONObject18.has("awardContributionNum")) {
                                                        str18 = str2117;
                                                        try {
                                                            long jOptLong2 = jSONObjectOptJSONObject18.optLong("awardRankOrder");
                                                            str8 = str21;
                                                            d2 = d2;
                                                            try {
                                                                long jOptLong3 = jSONObjectOptJSONObject18.optLong("awardContributionNum");
                                                                if (sb20.length() > 0) {
                                                                    sb20.append(",");
                                                                }
                                                                sb20.append(jOptLong2);
                                                                sb20.append("万(星星或爱心值");
                                                                sb20.append(jOptLong3);
                                                                sb20.append(")");
                                                                i++;
                                                                if (numValueOf13 != null) {
                                                                    numValueOf13.getClass();
                                                                    if (iIntValue >= jOptLong3 && jOptLong3 > j2) {
                                                                        j2 = jOptLong3;
                                                                        j = jOptLong2;
                                                                    }
                                                                }
                                                            } catch (Throwable th30) {
                                                                th = th30;
                                                                str9 = str16;
                                                                string = str17;
                                                                str2117 = str18;
                                                                String str2118 = TAG;
                                                                Log.i(str2118, "farmInfo 排位赛查询失败:");
                                                                Log.printStackTrace(str2118, th);
                                                                str10 = string2 + string + str9;
                                                                if (d4 == null) {
                                                                    strTrimDouble2 = " ";
                                                                } else {
                                                                    strTrimDouble2 = trimDouble(d4.doubleValue());
                                                                }
                                                                if (d2 == null) {
                                                                    strTrimDouble3 = " ";
                                                                } else {
                                                                    strTrimDouble3 = trimDouble(d2.doubleValue());
                                                                }
                                                                if (d == 0) {
                                                                    strTrimDouble4 = " ";
                                                                } else {
                                                                    strTrimDouble4 = trimDouble(d.doubleValue());
                                                                }
                                                                if (d3 != null) {
                                                                }
                                                                StringBuilder sb116 = new StringBuilder("蚂蚁庄园🐔[");
                                                                sb116.append(UserIdMap.getShowName(UserIdMap.getCurrentUid()));
                                                                sb116.append("]饲料");
                                                                sb116.append(Log.n(num));
                                                                sb116.append("/");
                                                                sb116.append(Log.n(num3));
                                                                sb116.append("槽内");
                                                                sb116.append(Log.n(num7));
                                                                sb116.append("/");
                                                                sb116.append(Log.n(num8));
                                                                sb116.append(";爱心蛋");
                                                                sb116.append(Log.n(num5));
                                                                sb116.append(";光荣分");
                                                                sb116.append(Log.n(num4));
                                                                sb116.append("成就");
                                                                sb116.append(Log.n(num6));
                                                                sb116.append(";心情");
                                                                sb116.append(strTrimDouble2);
                                                                sb116.append(";小鸡[");
                                                                sb116.append(str7);
                                                                sb116.append("/");
                                                                sb116.append(str6);
                                                                sb116.append("]已吃");
                                                                sb116.append(strTrimDouble3);
                                                                sb116.append("被偷");
                                                                sb116.append(strTrimDouble4);
                                                                sb116.append(";肥料");
                                                                sb116.append(strTrimDouble5);
                                                                sb116.append(";芭芭农场[");
                                                                sb116.append(str4);
                                                                sb116.append("]");
                                                                sb116.append(Log.n(num2));
                                                                sb116.append(str2117);
                                                                if (str == null) {
                                                                    str20 = str8;
                                                                } else {
                                                                    str20 = str;
                                                                }
                                                                sb116.append(str20);
                                                                Log.info(sb116.toString());
                                                                if (str10.isEmpty()) {
                                                                    Log.info("庄园排位🏆[" + UserIdMap.getShowName(UserIdMap.getCurrentUid()) + "]" + str10);
                                                                }
                                                            }
                                                        } catch (Throwable th31) {
                                                            th = th31;
                                                            d2 = d2;
                                                            str8 = str21;
                                                            str9 = str16;
                                                            string = str17;
                                                            str2117 = str18;
                                                            String str2119 = TAG;
                                                            Log.i(str2119, "farmInfo 排位赛查询失败:");
                                                            Log.printStackTrace(str2119, th);
                                                            str10 = string2 + string + str9;
                                                            if (d4 == null) {
                                                                strTrimDouble2 = " ";
                                                            } else {
                                                                strTrimDouble2 = trimDouble(d4.doubleValue());
                                                            }
                                                            if (d2 == null) {
                                                                strTrimDouble3 = " ";
                                                            } else {
                                                                strTrimDouble3 = trimDouble(d2.doubleValue());
                                                            }
                                                            if (d == 0) {
                                                                strTrimDouble4 = " ";
                                                            } else {
                                                                strTrimDouble4 = trimDouble(d.doubleValue());
                                                            }
                                                            if (d3 != null) {
                                                            }
                                                            StringBuilder sb117 = new StringBuilder("蚂蚁庄园🐔[");
                                                            sb117.append(UserIdMap.getShowName(UserIdMap.getCurrentUid()));
                                                            sb117.append("]饲料");
                                                            sb117.append(Log.n(num));
                                                            sb117.append("/");
                                                            sb117.append(Log.n(num3));
                                                            sb117.append("槽内");
                                                            sb117.append(Log.n(num7));
                                                            sb117.append("/");
                                                            sb117.append(Log.n(num8));
                                                            sb117.append(";爱心蛋");
                                                            sb117.append(Log.n(num5));
                                                            sb117.append(";光荣分");
                                                            sb117.append(Log.n(num4));
                                                            sb117.append("成就");
                                                            sb117.append(Log.n(num6));
                                                            sb117.append(";心情");
                                                            sb117.append(strTrimDouble2);
                                                            sb117.append(";小鸡[");
                                                            sb117.append(str7);
                                                            sb117.append("/");
                                                            sb117.append(str6);
                                                            sb117.append("]已吃");
                                                            sb117.append(strTrimDouble3);
                                                            sb117.append("被偷");
                                                            sb117.append(strTrimDouble4);
                                                            sb117.append(";肥料");
                                                            sb117.append(strTrimDouble5);
                                                            sb117.append(";芭芭农场[");
                                                            sb117.append(str4);
                                                            sb117.append("]");
                                                            sb117.append(Log.n(num2));
                                                            sb117.append(str2117);
                                                            if (str == null) {
                                                                str20 = str8;
                                                            } else {
                                                                str20 = str;
                                                            }
                                                            sb117.append(str20);
                                                            Log.info(sb117.toString());
                                                            if (str10.isEmpty()) {
                                                                Log.info("庄园排位🏆[" + UserIdMap.getShowName(UserIdMap.getCurrentUid()) + "]" + str10);
                                                            }
                                                        }
                                                    }
                                                    i2++;
                                                    jSONArrayOptJSONArray3 = jSONArray;
                                                    str2117 = str18;
                                                    str21 = str8;
                                                    d2 = d2;
                                                } else {
                                                    jSONArray = jSONArrayOptJSONArray3;
                                                }
                                                str18 = str2117;
                                                d2 = d2;
                                                str8 = str21;
                                                i2++;
                                                jSONArrayOptJSONArray3 = jSONArray;
                                                str2117 = str18;
                                                str21 = str8;
                                                d2 = d2;
                                            } catch (Throwable th32) {
                                                th = th32;
                                                d2 = d2;
                                                str8 = str21;
                                                str9 = str16;
                                                string = str17;
                                                String str21110 = TAG;
                                                Log.i(str21110, "farmInfo 排位赛查询失败:");
                                                Log.printStackTrace(str21110, th);
                                                str10 = string2 + string + str9;
                                                if (d4 == null) {
                                                    strTrimDouble2 = " ";
                                                } else {
                                                    strTrimDouble2 = trimDouble(d4.doubleValue());
                                                }
                                                if (d2 == null) {
                                                    strTrimDouble3 = " ";
                                                } else {
                                                    strTrimDouble3 = trimDouble(d2.doubleValue());
                                                }
                                                if (d == 0) {
                                                    strTrimDouble4 = " ";
                                                } else {
                                                    strTrimDouble4 = trimDouble(d.doubleValue());
                                                }
                                                if (d3 != null) {
                                                }
                                                StringBuilder sb118 = new StringBuilder("蚂蚁庄园🐔[");
                                                sb118.append(UserIdMap.getShowName(UserIdMap.getCurrentUid()));
                                                sb118.append("]饲料");
                                                sb118.append(Log.n(num));
                                                sb118.append("/");
                                                sb118.append(Log.n(num3));
                                                sb118.append("槽内");
                                                sb118.append(Log.n(num7));
                                                sb118.append("/");
                                                sb118.append(Log.n(num8));
                                                sb118.append(";爱心蛋");
                                                sb118.append(Log.n(num5));
                                                sb118.append(";光荣分");
                                                sb118.append(Log.n(num4));
                                                sb118.append("成就");
                                                sb118.append(Log.n(num6));
                                                sb118.append(";心情");
                                                sb118.append(strTrimDouble2);
                                                sb118.append(";小鸡[");
                                                sb118.append(str7);
                                                sb118.append("/");
                                                sb118.append(str6);
                                                sb118.append("]已吃");
                                                sb118.append(strTrimDouble3);
                                                sb118.append("被偷");
                                                sb118.append(strTrimDouble4);
                                                sb118.append(";肥料");
                                                sb118.append(strTrimDouble5);
                                                sb118.append(";芭芭农场[");
                                                sb118.append(str4);
                                                sb118.append("]");
                                                sb118.append(Log.n(num2));
                                                sb118.append(str2117);
                                                if (str == null) {
                                                    str20 = str8;
                                                } else {
                                                    str20 = str;
                                                }
                                                sb118.append(str20);
                                                Log.info(sb118.toString());
                                                if (str10.isEmpty()) {
                                                    Log.info("庄园排位🏆[" + UserIdMap.getShowName(UserIdMap.getCurrentUid()) + "]" + str10);
                                                }
                                            }
                                        } catch (Throwable th33) {
                                            th = th33;
                                        }
                                    }
                                    str18 = str2117;
                                    d2 = d2;
                                    str8 = str21;
                                    if (i > 0) {
                                        try {
                                            StringBuilder sb21 = new StringBuilder();
                                            sb21.append(string2);
                                            sb21.append("星星或爱心值排名共");
                                            sb21.append(i);
                                            sb21.append("档[");
                                            sb21.append((Object) sb20);
                                            sb21.append("]已达档位");
                                            if (j >= 0) {
                                                str19 = "前" + j + "万名";
                                            } else {
                                                str19 = "无";
                                            }
                                            sb21.append(str19);
                                            str2117 = str18;
                                            try {
                                                sb21.append(str2117);
                                                string2 = sb21.toString();
                                            } catch (Throwable th34) {
                                                th = th34;
                                                str9 = str16;
                                                string = str17;
                                                String str21111 = TAG;
                                                Log.i(str21111, "farmInfo 排位赛查询失败:");
                                                Log.printStackTrace(str21111, th);
                                            }
                                        } catch (Throwable th35) {
                                            th = th35;
                                            str2117 = str18;
                                        }
                                    } else {
                                        str2117 = str18;
                                    }
                                }
                                str9 = str16;
                                string = str17;
                            } catch (Throwable th36) {
                                th = th36;
                                d2 = d2;
                                str8 = "";
                            }
                        } catch (Throwable th37) {
                            th = th37;
                            d2 = d2;
                            string2 = "";
                            str8 = string2;
                            String str21112 = TAG;
                            Log.i(str21112, "farmInfo 排位赛查询失败:");
                            Log.printStackTrace(str21112, th);
                            str10 = string2 + string + str9;
                            if (d4 == null) {
                                strTrimDouble2 = " ";
                            } else {
                                strTrimDouble2 = trimDouble(d4.doubleValue());
                            }
                            if (d2 == null) {
                                strTrimDouble3 = " ";
                            } else {
                                strTrimDouble3 = trimDouble(d2.doubleValue());
                            }
                            if (d == 0) {
                                strTrimDouble4 = " ";
                            } else {
                                strTrimDouble4 = trimDouble(d.doubleValue());
                            }
                            if (d3 != null) {
                            }
                            StringBuilder sb119 = new StringBuilder("蚂蚁庄园🐔[");
                            sb119.append(UserIdMap.getShowName(UserIdMap.getCurrentUid()));
                            sb119.append("]饲料");
                            sb119.append(Log.n(num));
                            sb119.append("/");
                            sb119.append(Log.n(num3));
                            sb119.append("槽内");
                            sb119.append(Log.n(num7));
                            sb119.append("/");
                            sb119.append(Log.n(num8));
                            sb119.append(";爱心蛋");
                            sb119.append(Log.n(num5));
                            sb119.append(";光荣分");
                            sb119.append(Log.n(num4));
                            sb119.append("成就");
                            sb119.append(Log.n(num6));
                            sb119.append(";心情");
                            sb119.append(strTrimDouble2);
                            sb119.append(";小鸡[");
                            sb119.append(str7);
                            sb119.append("/");
                            sb119.append(str6);
                            sb119.append("]已吃");
                            sb119.append(strTrimDouble3);
                            sb119.append("被偷");
                            sb119.append(strTrimDouble4);
                            sb119.append(";肥料");
                            sb119.append(strTrimDouble5);
                            sb119.append(";芭芭农场[");
                            sb119.append(str4);
                            sb119.append("]");
                            sb119.append(Log.n(num2));
                            sb119.append(str2117);
                            if (str == null) {
                                str20 = str8;
                            } else {
                                str20 = str;
                            }
                            sb119.append(str20);
                            Log.info(sb119.toString());
                            if (str10.isEmpty()) {
                                Log.info("庄园排位🏆[" + UserIdMap.getShowName(UserIdMap.getCurrentUid()) + "]" + str10);
                            }
                        }
                    } else {
                        d2 = d2;
                        str8 = "";
                        str9 = str9;
                        string = string;
                        string2 = str8;
                    }
                } else {
                    d2 = d2;
                    str8 = "";
                    str9 = str9;
                    string = string;
                    string2 = str8;
                }
            } else {
                d3 = d3;
                d2 = d2;
                num8 = num8;
                num7 = num7;
                num6 = num6;
                num5 = num5;
                num4 = num4;
                num3 = num3;
                str7 = str3;
                str8 = "";
                str9 = str8;
                string = str9;
                string2 = string;
            }
            str10 = string2 + string + str9;
        } else {
            d3 = d3;
            d2 = d2;
            num8 = num8;
            num7 = num7;
            num6 = num6;
            num5 = num5;
            num4 = num4;
            str6 = str5;
            num3 = num3;
            str7 = str3;
            str8 = "";
            str10 = str8;
        }
        if (d4 == null) {
            strTrimDouble2 = " ";
        } else {
            strTrimDouble2 = trimDouble(d4.doubleValue());
        }
        if (d2 == null) {
            strTrimDouble3 = " ";
        } else {
            strTrimDouble3 = trimDouble(d2.doubleValue());
        }
        if (d == 0) {
            strTrimDouble4 = " ";
        } else {
            strTrimDouble4 = trimDouble(d.doubleValue());
        }
        if (d3 != null) {
        }
        StringBuilder sb1110 = new StringBuilder("蚂蚁庄园🐔[");
        sb1110.append(UserIdMap.getShowName(UserIdMap.getCurrentUid()));
        sb1110.append("]饲料");
        sb1110.append(Log.n(num));
        sb1110.append("/");
        sb1110.append(Log.n(num3));
        sb1110.append("槽内");
        sb1110.append(Log.n(num7));
        sb1110.append("/");
        sb1110.append(Log.n(num8));
        sb1110.append(";爱心蛋");
        sb1110.append(Log.n(num5));
        sb1110.append(";光荣分");
        sb1110.append(Log.n(num4));
        sb1110.append("成就");
        sb1110.append(Log.n(num6));
        sb1110.append(";心情");
        sb1110.append(strTrimDouble2);
        sb1110.append(";小鸡[");
        sb1110.append(str7);
        sb1110.append("/");
        sb1110.append(str6);
        sb1110.append("]已吃");
        sb1110.append(strTrimDouble3);
        sb1110.append("被偷");
        sb1110.append(strTrimDouble4);
        sb1110.append(";肥料");
        sb1110.append(strTrimDouble5);
        sb1110.append(";芭芭农场[");
        sb1110.append(str4);
        sb1110.append("]");
        sb1110.append(Log.n(num2));
        sb1110.append(str2117);
        if (str == null) {
            str20 = str8;
        } else {
            str20 = str;
        }
        sb1110.append(str20);
        Log.info(sb1110.toString());
        if (str10.isEmpty()) {
            Log.info("庄园排位🏆[" + UserIdMap.getShowName(UserIdMap.getCurrentUid()) + "]" + str10);
        }
    }

    private static String trimDouble(double d) {
        if (d == Math.rint(d) && !Double.isInfinite(d)) {
            return Long.toString((long) d);
        }
        return Double.toString(d);
    }

    public static void initAntFarmTaskListMap(boolean z, boolean z2, boolean z3, boolean z4, boolean z5) {
        try {
            AntFarmDoFarmTaskListMap.load();
            HashSet<String> hashSet = new HashSet();
            hashSet.add("到店付款");
            hashSet.add("线上支付");
            hashSet.add("逛闪购外卖1元起吃");
            hashSet.add("用花呗完成一笔支付");
            hashSet.add("完成1笔旧衣回收");
            HashSet<String> hashSet2 = new HashSet();
            for (String str : hashSet) {
                AntFarmDoFarmTaskListMap.add(str, str);
            }
            JSONObject jSONObject = new JSONObject(AntFarmRpcCall.listFarmTask());
            if (MessageUtil.checkMemo(TAG, jSONObject).booleanValue()) {
                JSONArray jSONArray = jSONObject.getJSONArray("farmTaskList");
                for (int i = 0; i < jSONArray.length(); i++) {
                    String string = jSONArray.getJSONObject(i).getString("title");
                    AntFarmDoFarmTaskListMap.add(string, string);
                }
            }
            AntFarmDoFarmTaskListMap.save();
            Log.record("同步任务🉑庄园饲料任务列表");
            if (z) {
                SelectModelField selectModelField = (SelectModelField) ConfigV2.INSTANCE.getModelFieldsMap().get("AntFarm").get("AntFarmDoFarmTaskList");
                if (selectModelField == null) {
                    return;
                }
                Set<String> value = selectModelField.getValue();
                if (value != null) {
                    for (String str2 : hashSet) {
                        if (!value.contains(str2)) {
                            selectModelField.add(str2, 0);
                        }
                    }
                }
                Set<String> value2 = selectModelField.getValue();
                if (value2 != null) {
                    for (String str3 : hashSet2) {
                        if (value2.contains(str3)) {
                            value2.remove(str3);
                        }
                    }
                }
                if (ConfigV2.save(UserIdMap.getCurrentUid(), false).booleanValue()) {
                    Log.record("黑白名单🈲庄园饲料任务自动设置: " + selectModelField.getValue());
                } else {
                    Log.record("庄园饲料任务黑白名单设置失败");
                }
            }
            AntFarmDrawMachineTaskListMap.load();
            HashSet<String> hashSet3 = new HashSet();
            hashSet3.add("【限时】玩游戏得新机会");
            hashSet3.add("【限时】玩游戏得3次机会");
            hashSet3.add("伸出援手，点亮希望");
            hashSet3.add("伸出援手 点亮希望");
            hashSet3.add("限时玩游戏得新机会");
            hashSet3.add("【限时】开宝箱得2次机会");
            hashSet3.add("【限时】开宝箱得3次机会");
            HashSet<String> hashSet4 = new HashSet();
            hashSet4.add("消耗饲料换机会");
            hashSet4.add("看看金豆夺宝攻略");
            for (String str4 : hashSet3) {
                AntFarmDrawMachineTaskListMap.add(str4, str4);
            }
            if (z3) {
                JSONObject jSONObject2 = new JSONObject(AntFarmRpcCall.queryLoveCabin(UserIdMap.getCurrentUid()));
                String str5 = TAG;
                if (MessageUtil.checkMemo(str5, jSONObject2).booleanValue()) {
                    JSONObject jSONObject3 = new JSONObject(AntFarmRpcCall.listFarmDrawTask("ANTFARM_DAILY_DRAW_TASK"));
                    if (MessageUtil.checkMemo(str5, jSONObject3).booleanValue()) {
                        JSONArray jSONArray2 = jSONObject3.getJSONArray("farmTaskList");
                        for (int i2 = 0; i2 < jSONArray2.length(); i2++) {
                            String string2 = jSONArray2.getJSONObject(i2).getString("title");
                            AntFarmDrawMachineTaskListMap.add(string2, string2);
                        }
                        JSONObject jSONObject4 = new JSONObject(AntFarmRpcCall.queryDrawMachineActivity("ipDrawMachine", "dailyDrawMachine"));
                        String str6 = TAG;
                        if (MessageUtil.checkMemo(str6, jSONObject4).booleanValue() && jSONObject4.has("otherDrawMachineActivityIds") && jSONObject4.getJSONArray("otherDrawMachineActivityIds").length() > 0) {
                            JSONObject jSONObject5 = new JSONObject(AntFarmRpcCall.listFarmDrawTask("ANTFARM_IP_DRAW_TASK"));
                            if (MessageUtil.checkMemo(str6, jSONObject5).booleanValue()) {
                                JSONArray jSONArray3 = jSONObject5.getJSONArray("farmTaskList");
                                for (int i3 = 0; i3 < jSONArray3.length(); i3++) {
                                    String string3 = jSONArray3.getJSONObject(i3).getString("title");
                                    AntFarmDrawMachineTaskListMap.add(string3, string3);
                                }
                            }
                        }
                    }
                }
                AntFarmDrawMachineTaskListMap.save();
                Log.record("同步任务🉑庄园装扮抽抽乐任务列表");
                if (z2) {
                    SelectModelField selectModelField2 = (SelectModelField) ConfigV2.INSTANCE.getModelFieldsMap().get("AntFarm").get("AntFarmDrawMachineTaskList");
                    if (selectModelField2 == null) {
                        return;
                    }
                    Set<String> value3 = selectModelField2.getValue();
                    if (value3 != null) {
                        for (String str7 : hashSet3) {
                            if (!value3.contains(str7)) {
                                selectModelField2.add(str7, 0);
                            }
                        }
                        for (String str8 : hashSet4) {
                            if (value3.contains(str8)) {
                                value3.remove(str8);
                            }
                        }
                    }
                    if (ConfigV2.save(UserIdMap.getCurrentUid(), false).booleanValue()) {
                        Log.record("黑白名单🈲庄园装扮抽抽乐任务自动设置: " + selectModelField2.getValue());
                    } else {
                        Log.record("庄园装扮抽抽乐任务黑白名单设置失败");
                    }
                }
            }
            ChickenKitchen.initChickenChefTaskListMap(z4, z5, "AntFarm", "AntFarmChickenChefTaskList");
        } catch (Throwable th) {
            String str9 = TAG;
            Log.i(str9, "initAntFarmTaskListMap err:");
            Log.printStackTrace(str9, th);
        }
    }

    private void animalSleepAndWake() {
        if (!this.enableSleep.getValue().booleanValue()) {
            Log.record("小鸡睡觉开关已关闭，跳过睡觉逻辑");
            return;
        }
        String value = this.sleepTime.getValue();
        if ("-1".equals(value)) {
            return;
        }
        animalWakeUpNow();
        Calendar todayCalendarByTimeStr = TimeUtil.getTodayCalendarByTimeStr(value);
        if (todayCalendarByTimeStr == null) {
            return;
        }
        Integer value2 = this.sleepMinutes.getValue();
        Calendar calendar = (Calendar) todayCalendarByTimeStr.clone();
        calendar.add(12, value2.intValue());
        long timeInMillis = todayCalendarByTimeStr.getTimeInMillis();
        long timeInMillis2 = calendar.getTimeInMillis();
        if (timeInMillis > timeInMillis2) {
            Log.record("小鸡睡觉设置有误，请重新设置");
            return;
        }
        Calendar now = TimeUtil.getNow();
        boolean z = now.compareTo(todayCalendarByTimeStr) > 0;
        boolean z2 = now.compareTo(calendar) > 0;
        if (z && z2) {
            if (hasSleepToday().booleanValue()) {
                return;
            }
            Log.record("已错过小鸡今日睡觉时间");
        } else if (z) {
            if (!hasSleepToday().booleanValue()) {
                animalSleepNow();
            }
            animalWakeUpTime(timeInMillis2);
        } else {
            calendar.add(11, -24);
            if (now.compareTo(calendar) <= 0) {
                animalWakeUpTime(calendar.getTimeInMillis());
            }
            animalSleepTime(timeInMillis);
            animalWakeUpTime(timeInMillis2);
        }
    }

    private JSONObject enterFarm() {
        JSONArray jSONArrayOptJSONArray;
        try {
            JSONObject jSONObject = new JSONObject(AntFarmRpcCall.enterFarm("", UserIdMap.getCurrentUid()));
            if (!MessageUtil.checkMemo(TAG, jSONObject).booleanValue()) {
                return null;
            }
            this.rewardProductNum = jSONObject.getJSONObject("dynamicGlobalConfig").getString("rewardProductNum");
            JSONObject jSONObject2 = jSONObject.getJSONObject("farmVO");
            this.foodStock = jSONObject2.getInt("foodStock");
            this.foodStockLimit = jSONObject2.getInt("foodStockLimit");
            this.harvestBenevolenceScore = jSONObject2.getDouble("harvestBenevolenceScore");
            parseSyncAnimalStatusResponse(jSONObject2.toString());
            String string = jSONObject2.getJSONObject("masterUserInfoVO").getString("userId");
            this.ownerUserId = string;
            this.ownerGroupId = getFamilyGroupId(string);
            if (jSONObject.has("activityData")) {
                JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("activityData");
                if (jSONObjectOptJSONObject.has("springGifts") && (jSONArrayOptJSONArray = jSONObjectOptJSONObject.optJSONArray("springGifts")) != null) {
                    for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                        JSONObject jSONObject3 = jSONArrayOptJSONArray.getJSONObject(i);
                        String strOptString = jSONObject3.optString("foodType");
                        int iOptInt = jSONObject3.optInt("giftIndex");
                        String strOptString2 = jSONObject3.optString("foodSubType");
                        int iOptInt2 = jSONObject3.optInt("foodCount");
                        AntFarmRpcCall.clickForGiftV2(strOptString, iOptInt);
                        if (MessageUtil.checkMemo(TAG, jSONObject).booleanValue()) {
                            Log.farm("惊喜礼包🎁[" + strOptString2 + "*" + iOptInt2 + "]");
                        }
                    }
                }
            }
            if (jSONObject.has("lotteryPlusInfo")) {
                drawLotteryPlus(jSONObject.getJSONObject("lotteryPlusInfo"));
            }
            if (this.acceptGift.getValue().booleanValue() && jSONObject2.getJSONObject("subFarmVO").has("giftRecord") && this.foodStockLimit - this.foodStock >= 10) {
                acceptGift();
            }
            return jSONObject;
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "enterFarm err:");
            Log.printStackTrace(str, th);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void autoFeedAnimal() {
        syncAnimalStatus(this.ownerFarmId);
        if (AnimalFeedStatus.EATING.name().equals(this.ownerAnimal.animalFeedStatus)) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            double dLongValue = 0.0d;
            double dDoubleValue = 0.0d;
            for (Animal animal : this.animals) {
                dLongValue += ((jCurrentTimeMillis - animal.startEatTime.longValue()) / 1000) * animal.consumeSpeed.doubleValue();
                dDoubleValue += animal.consumeSpeed.doubleValue();
            }
            long j = jCurrentTimeMillis + (((long) ((((double) this.foodInTrough) - dLongValue) / dDoubleValue)) * 1000);
            String str = "FA|" + this.ownerFarmId;
            if (hasChildTask(str).booleanValue()) {
                removeChildTask(str);
            }
            addChildTask(new ModelTask.ChildModelTask(str, "FA", new Runnable() { // from class: io.github.lazyimmortal.sesame.model.task.antFarm.AntFarm$$ExternalSyntheticLambda7
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m119xcc4fb4cd();
                }
            }, Long.valueOf(j)));
            Log.record("添加蹲点投喂🥣[" + UserIdMap.getCurrentMaskName() + "]在[" + TimeUtil.getCommonDate(Long.valueOf(j)) + "]执行");
        }
    }

    /* JADX INFO: renamed from: lambda$autoFeedAnimal$0$io-github-lazyimmortal-sesame-model-task-antFarm-AntFarm, reason: not valid java name */
    /* synthetic */ void m119xcc4fb4cd() {
        feedAnimal(this.ownerFarmId);
    }

    private void animalSleepTime(long j) {
        String str = "AS|" + j;
        if (hasChildTask(str).booleanValue()) {
            return;
        }
        addChildTask(new ModelTask.ChildModelTask(str, "AS", new Runnable() { // from class: io.github.lazyimmortal.sesame.model.task.antFarm.AntFarm$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.animalSleepNow();
            }
        }, Long.valueOf(j)));
        Log.record("添加定时睡觉🛌[" + UserIdMap.getCurrentMaskName() + "]在[" + TimeUtil.getCommonDate(Long.valueOf(j)) + "]执行");
    }

    private void animalWakeUpTime(long j) {
        String str = "AW|" + j;
        if (hasChildTask(str).booleanValue()) {
            return;
        }
        addChildTask(new ModelTask.ChildModelTask(str, "AW", new Runnable() { // from class: io.github.lazyimmortal.sesame.model.task.antFarm.AntFarm$$ExternalSyntheticLambda10
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.animalWakeUpNow();
            }
        }, Long.valueOf(j)));
        Log.record("添加定时起床🔆[" + UserIdMap.getCurrentMaskName() + "]在[" + TimeUtil.getCommonDate(Long.valueOf(j)) + "]执行");
    }

    private Boolean hasSleepToday() {
        try {
            JSONObject jSONObject = new JSONObject(AntFarmRpcCall.queryLoveCabin(this.ownerUserId));
            if (!MessageUtil.checkMemo(TAG, jSONObject).booleanValue()) {
                return false;
            }
            return Boolean.valueOf(jSONObject.getJSONObject("sleepNotifyInfo").optBoolean("hasSleepToday", false));
        } catch (Throwable th) {
            Log.i(TAG, "hasSleepToday err:");
            Log.printStackTrace(th);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Boolean animalSleepNow() {
        try {
            JSONObject jSONObject = new JSONObject(AntFarmRpcCall.queryLoveCabin(UserIdMap.getCurrentUid()));
            if (!MessageUtil.checkMemo(TAG, jSONObject).booleanValue()) {
                return false;
            }
            if (!jSONObject.getJSONObject("sleepNotifyInfo").optBoolean("canSleep", false)) {
                Log.record("小鸡无需睡觉🛌");
                return false;
            }
            if (this.family.getValue().booleanValue() && !StringUtil.isEmpty(this.ownerGroupId)) {
                return familySleep(this.ownerGroupId);
            }
            return animalSleep();
        } catch (Throwable th) {
            Log.i(TAG, "animalSleepNow err:");
            Log.printStackTrace(th);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Boolean animalWakeUpNow() {
        try {
            JSONObject jSONObject = new JSONObject(AntFarmRpcCall.queryLoveCabin(UserIdMap.getCurrentUid()));
            if (!MessageUtil.checkMemo(TAG, jSONObject).booleanValue()) {
                return false;
            }
            JSONObject jSONObject2 = jSONObject.getJSONObject("ownAnimal").getJSONObject("sleepInfo");
            if (jSONObject2.getInt("countDown") == 0) {
                return false;
            }
            if (jSONObject2.getLong("sleepBeginTime") + TimeUnit.MINUTES.toMillis(this.sleepMinutes.getValue().intValue()) <= System.currentTimeMillis()) {
                if (jSONObject.has("spaceType")) {
                    return familyWakeUp();
                }
                return animalWakeUp();
            }
            Log.record("小鸡无需起床🔆");
            return false;
        } catch (Throwable th) {
            Log.i(TAG, "animalWakeUpNow err:");
            Log.printStackTrace(th);
        }
    }

    private Boolean animalSleep() {
        try {
            if (MessageUtil.checkMemo(TAG, new JSONObject(AntFarmRpcCall.sleep())).booleanValue()) {
                Log.farm("小鸡睡觉🛌");
                return true;
            }
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "animalSleep err:");
            Log.printStackTrace(str, th);
        }
        return false;
    }

    private Boolean animalWakeUp() {
        try {
            if (MessageUtil.checkMemo(TAG, new JSONObject(AntFarmRpcCall.wakeUp())).booleanValue()) {
                Log.farm("小鸡起床🔆");
                return true;
            }
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "animalWakeUp err:");
            Log.printStackTrace(str, th);
        }
        return false;
    }

    private void syncAnimalStatus(String str) {
        try {
            parseSyncAnimalStatusResponse(AntFarmRpcCall.syncAnimalStatus(str));
        } catch (Throwable th) {
            String str2 = TAG;
            Log.i(str2, "syncAnimalStatus err:");
            Log.printStackTrace(str2, th);
        }
    }

    private void syncAnimalStatusAtOtherFarm(String str) {
        try {
            JSONObject jSONObject = new JSONObject(AntFarmRpcCall.enterFarm(str, ""));
            if (MessageUtil.checkMemo(TAG, jSONObject).booleanValue()) {
                JSONArray jSONArray = jSONObject.getJSONObject("farmVO").getJSONObject("subFarmVO").getJSONArray("animals");
                for (int i = 0; i < jSONArray.length(); i++) {
                    if (jSONArray.getJSONObject(i).getString("masterFarmId").equals(this.ownerFarmId)) {
                        Animal animal = new Animal();
                        JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                        animal.animalId = jSONObject2.getString("animalId");
                        animal.currentFarmId = jSONObject2.getString("currentFarmId");
                        animal.currentFarmMasterUserId = jSONObject2.getString("currentFarmMasterUserId");
                        animal.masterFarmId = this.ownerFarmId;
                        animal.animalBuff = jSONObject2.getString("animalBuff");
                        animal.locationType = jSONObject2.optString("locationType", "");
                        animal.subAnimalType = jSONObject2.getString("subAnimalType");
                        JSONObject jSONObject3 = jSONObject2.getJSONObject("animalStatusVO");
                        animal.animalFeedStatus = jSONObject3.getString("animalFeedStatus");
                        animal.animalInteractStatus = jSONObject3.getString("animalInteractStatus");
                        this.ownerAnimal = animal;
                        return;
                    }
                }
            }
        } catch (Throwable th) {
            String str2 = TAG;
            Log.i(str2, "syncAnimalStatusAtOtherFarm err:");
            Log.printStackTrace(str2, th);
        }
    }

    private void rewardFriend() {
        try {
            RewardFriend[] rewardFriendArr = this.rewardList;
            if (rewardFriendArr != null) {
                for (RewardFriend rewardFriend : rewardFriendArr) {
                    JSONObject jSONObject = new JSONObject(AntFarmRpcCall.rewardFriend(rewardFriend.consistencyKey, rewardFriend.friendId, this.rewardProductNum, rewardFriend.time));
                    if (MessageUtil.checkMemo(TAG, jSONObject).booleanValue()) {
                        double d = this.benevolenceScore - jSONObject.getDouble("farmProduct");
                        this.benevolenceScore -= d;
                        Log.farm("打赏好友💰[" + UserIdMap.getMaskName(rewardFriend.friendId) + "]#得" + d + "颗爱心鸡蛋");
                    }
                }
                this.rewardList = null;
            }
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "rewardFriend err:");
            Log.printStackTrace(str, th);
        }
    }

    private void recallAnimal(String str, String str2, String str3, String str4) {
        try {
            JSONObject jSONObject = new JSONObject(AntFarmRpcCall.recallAnimal(str, str2, str3));
            if (MessageUtil.checkMemo(TAG, jSONObject).booleanValue()) {
                Log.farm("召回小鸡📣偷吃[" + str4 + "]饲料" + jSONObject.getDouble("foodHaveStolen") + "g");
            }
        } catch (Throwable th) {
            String str5 = TAG;
            Log.i(str5, "recallAnimal err:");
            Log.printStackTrace(str5, th);
        }
    }

    private void sendBackAnimal() {
        String str;
        Animal[] animalArr = this.animals;
        if (animalArr == null) {
            return;
        }
        try {
            for (Animal animal : animalArr) {
                if (AnimalInteractStatus.STEALING.name().equals(animal.animalInteractStatus) && !SubAnimalType.GUEST.name().equals(animal.subAnimalType) && !SubAnimalType.WORK.name().equals(animal.subAnimalType)) {
                    String strFarmId2UserId = AntFarmRpcCall.farmId2UserId(animal.masterFarmId);
                    boolean zContains = this.sendBackAnimalList.getValue().contains(strFarmId2UserId);
                    if (this.sendBackAnimalType.getValue().intValue() != 1) {
                        zContains = !zContains;
                    }
                    if (zContains) {
                        int iIntValue = this.sendBackAnimalWay.getValue().intValue();
                        String maskName = UserIdMap.getMaskName(strFarmId2UserId);
                        JSONObject jSONObject = new JSONObject(AntFarmRpcCall.sendBackAnimal(SendBackAnimalWay.nickNames[iIntValue], animal.animalId, animal.currentFarmId, animal.masterFarmId));
                        if (MessageUtil.checkMemo(TAG, jSONObject).booleanValue()) {
                            if (iIntValue != 0) {
                                str = "驱赶小鸡🧶[" + maskName + "]";
                            } else if (jSONObject.has("hitLossFood")) {
                                str = "胖揍小鸡🤺[" + maskName + "]，掉落[" + jSONObject.getInt("hitLossFood") + "g]";
                                if (jSONObject.has("finalFoodStorage")) {
                                    this.foodStock = jSONObject.getInt("finalFoodStorage");
                                }
                            } else {
                                str = "[" + maskName + "]的小鸡躲开了攻击";
                            }
                            Log.farm(str);
                        }
                    }
                }
            }
        } catch (Throwable th) {
            String str2 = TAG;
            Log.i(str2, "sendBackAnimal err:");
            Log.printStackTrace(str2, th);
        }
    }

    private void receiveToolTaskReward() {
        try {
            JSONObject jSONObject = new JSONObject(AntFarmRpcCall.listToolTaskDetails());
            if (MessageUtil.checkMemo(TAG, jSONObject).booleanValue()) {
                JSONArray jSONArray = jSONObject.getJSONArray("list");
                for (int i = 0; i < jSONArray.length(); i++) {
                    JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                    if (TaskStatus.FINISHED.name().equals(jSONObject2.optString("taskStatus"))) {
                        JSONObject jSONObject3 = new JSONObject(jSONObject2.getString("bizInfo"));
                        String strOptString = jSONObject3.optString("awardType");
                        ToolType toolTypeValueOf = ToolType.valueOf(strOptString);
                        FarmTool[] farmToolArr = this.farmTools;
                        int length = farmToolArr.length;
                        int i2 = 0;
                        while (true) {
                            if (i2 < length) {
                                FarmTool farmTool = farmToolArr[i2];
                                if (farmTool.toolType != toolTypeValueOf) {
                                    i2++;
                                } else if (farmTool.toolCount == farmTool.toolHoldLimit) {
                                    if (toolTypeValueOf.equals(ToolType.NEWEGGTOOL)) {
                                        useFarmTool(this.ownerFarmId, ToolType.NEWEGGTOOL);
                                    } else {
                                        Log.record("领取道具[" + ((Object) toolTypeValueOf.nickName()) + "]#已满，暂不领取");
                                    }
                                }
                            }
                            int i3 = jSONObject3.getInt("awardCount");
                            String string = jSONObject2.getString("taskType");
                            String string2 = jSONObject3.getString("taskTitle");
                            if (MessageUtil.checkMemo(TAG, new JSONObject(AntFarmRpcCall.receiveToolTaskReward(strOptString, i3, string))).booleanValue()) {
                                Log.farm("领取道具🎖️[" + string2 + "-" + ((Object) toolTypeValueOf.nickName()) + "]#" + i3 + "张");
                            }
                        }
                    }
                }
            }
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "receiveToolTaskReward err:");
            Log.printStackTrace(str, th);
        }
    }

    private void harvestProduce(String str) {
        try {
            JSONObject jSONObject = new JSONObject(AntFarmRpcCall.harvestProduce(str));
            if (MessageUtil.checkMemo(TAG, jSONObject).booleanValue()) {
                double d = jSONObject.getDouble("harvestBenevolenceScore");
                this.harvestBenevolenceScore = jSONObject.getDouble("finalBenevolenceScore");
                Log.farm("收取鸡蛋🥚[" + d + "颗]#剩余" + this.harvestBenevolenceScore + "颗");
            }
        } catch (Throwable th) {
            String str2 = TAG;
            Log.i(str2, "harvestProduce err:");
            Log.printStackTrace(str2, th);
        }
    }

    private void donation() {
        boolean zBooleanValue;
        if (canDonationToday().booleanValue()) {
            try {
                JSONObject jSONObject = new JSONObject(AntFarmRpcCall.listActivityInfo());
                if (MessageUtil.checkMemo(TAG, jSONObject).booleanValue()) {
                    JSONArray jSONArray = jSONObject.getJSONArray("activityInfos");
                    for (int i = 0; i < jSONArray.length(); i++) {
                        JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                        int i2 = jSONObject2.getInt("donationTotal");
                        int iMin = Math.min(this.donationAmount.getValue().intValue(), jSONObject2.getInt("donationLimit") - i2);
                        if (iMin != 0) {
                            String string = jSONObject2.getString("activityId");
                            String string2 = jSONObject2.getString("projectName");
                            int iMin2 = Math.min(iMin, this.donationAmount.getValue().intValue() - (getProjectDonationNum(jSONObject2.getString("projectId")) % this.donationAmount.getValue().intValue()));
                            if (iMin2 == this.donationAmount.getValue().intValue()) {
                                zBooleanValue = donation(string, string2, iMin2, 1).booleanValue();
                            } else {
                                zBooleanValue = donation(string, string2, 1, iMin2).booleanValue();
                            }
                            if (zBooleanValue && this.donationType.getValue().intValue() != 2) {
                                return;
                            }
                        }
                    }
                }
            } catch (Throwable th) {
                String str = TAG;
                Log.i(str, "donation err:");
                Log.printStackTrace(str, th);
            }
        }
    }

    private void donation(int i) {
        int i2;
        try {
            JSONObject jSONObject = new JSONObject(AntFarmRpcCall.listActivityInfo());
            if (MessageUtil.checkMemo(TAG, jSONObject).booleanValue() && jSONObject.has("activityInfos")) {
                JSONArray jSONArray = jSONObject.getJSONArray("activityInfos");
                ArrayList arrayList = new ArrayList();
                for (int i3 = 0; i3 < jSONArray.length(); i3++) {
                    JSONObject jSONObject2 = jSONArray.getJSONObject(i3);
                    if (!"SOLDBY".equals(jSONObject2.optString("projectType")) && jSONObject2.getInt("donationLimit") - jSONObject2.getInt("donationTotal") > 0) {
                        arrayList.add(jSONObject2);
                    }
                }
                if (arrayList.isEmpty()) {
                    return;
                }
                int size = arrayList.size();
                int i4 = i;
                for (int i5 = 0; i5 < size && i4 > 0; i5++) {
                    JSONObject jSONObject3 = (JSONObject) arrayList.get(i5);
                    int i6 = jSONObject3.getInt("donationLimit") - jSONObject3.getInt("donationTotal");
                    if (i5 == size - 1) {
                        i2 = i4;
                    } else {
                        i2 = i / size;
                        if (i5 < i % size) {
                            i2++;
                        }
                    }
                    int iMin = Math.min(Math.min(i2, i6), i4);
                    if (iMin > 0) {
                        donation(jSONObject3.getString("activityId"), jSONObject3.getString("projectName"), iMin);
                        i4 -= iMin;
                    }
                }
            }
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "donation err:");
            Log.printStackTrace(str, th);
        }
    }

    private Boolean donation(String str, String str2, int i, int i2) {
        int i3 = 0;
        boolean z = false;
        while (i3 < i2 && donation(str, str2, i).booleanValue()) {
            TimeUtil.sleep(1000L);
            i3++;
            z = true;
        }
        return Boolean.valueOf(z);
    }

    private Boolean donation(String str, String str2, int i) {
        if (this.harvestBenevolenceScore < i) {
            return false;
        }
        try {
            JSONObject jSONObject = new JSONObject(AntFarmRpcCall.donation(str, i));
            String strOptString = jSONObject.optString("memo");
            if ((!"SUCCESS".equals(strOptString) && !"成功".equals(strOptString) && strOptString.contains("没有指定标的物")) || !MessageUtil.checkMemo(TAG, jSONObject).booleanValue()) {
                return false;
            }
            JSONObject jSONObject2 = jSONObject.getJSONObject("donation");
            this.harvestBenevolenceScore = jSONObject2.getDouble("harvestBenevolenceScore");
            Log.farm("公益捐赠❤️[捐爱心蛋:" + str2 + "]捐赠" + i + "颗爱心蛋#累计捐赠" + jSONObject2.getInt("donationTimesStat") + "次");
            return true;
        } catch (Throwable th) {
            String str3 = TAG;
            Log.i(str3, "donation err:");
            Log.printStackTrace(str3, th);
            return false;
        }
    }

    private static JSONObject enterDonationCompetitionRank() throws Exception {
        String str = donationCompetitionDisabledUid;
        if (str != null && str.equals(UserIdMap.getCurrentUid())) {
            return null;
        }
        JSONObject jSONObject = new JSONObject(AntFarmRpcCall.enterDonationCompetitionRank());
        if (!"功能未开启".equals(jSONObject.optString("memo"))) {
            return jSONObject;
        }
        donationCompetitionDisabledUid = UserIdMap.getCurrentUid();
        Log.record("捐蛋排位🥚功能未开启，本次运行跳过相关查询");
        return null;
    }

    private void competition() {
        String str;
        String str2;
        String str3;
        int i;
        int i2;
        final AntFarm antFarm;
        int i3;
        String str4;
        String str5;
        int i4;
        int i5;
        String str6;
        String str7;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        JSONArray jSONArrayOptJSONArray;
        String str8 = "rewardStarNum";
        String str9 = "donationRankHomeInfo";
        try {
            JSONObject jSONObjectEnterDonationCompetitionRank = enterDonationCompetitionRank();
            if (jSONObjectEnterDonationCompetitionRank != null) {
                String str10 = TAG;
                if (MessageUtil.checkMemo(str10, jSONObjectEnterDonationCompetitionRank).booleanValue()) {
                    if (jSONObjectEnterDonationCompetitionRank.has("exitDonationCompetition") && jSONObjectEnterDonationCompetitionRank.optBoolean("exitDonationCompetition")) {
                        JSONObject jSONObject = new JSONObject(AntFarmRpcCall.setDonationCompetitionConf("OPEN"));
                        if (MessageUtil.checkMemo(str10, jSONObject).booleanValue()) {
                            Log.farm("捐蛋排位🥚开启(S1捐蛋排位赛)：" + jSONObject.optString("memo"));
                        }
                    }
                    if (jSONObjectEnterDonationCompetitionRank.has("isParticipateCompetition") && !jSONObjectEnterDonationCompetitionRank.optBoolean("isParticipateCompetition")) {
                        JSONObject jSONObject2 = new JSONObject(AntFarmRpcCall.participateCompetition());
                        if (MessageUtil.checkMemo(str10, jSONObject2).booleanValue()) {
                            Log.farm("捐蛋排位🥚开启(S2爱心集结号)：" + jSONObject2.optString("memo"));
                        }
                    }
                    receiveReward();
                    receiveCompetitionTask();
                    int[] iArr = new int[20];
                    int[] iArr2 = new int[20];
                    String[] strArr = new String[20];
                    int iIntValue = this.competitionStarNum.getValue().intValue();
                    int iIntValue2 = this.competitionDailyLimit.getValue().intValue();
                    String currentUid = UserIdMap.getCurrentUid();
                    JSONObject jSONObject3 = new JSONObject(AntFarmRpcCall.queryAllMemberRankInfo());
                    if (MessageUtil.checkMemo(str10, jSONObject3).booleanValue()) {
                        jSONObjectEnterDonationCompetitionRank = jSONObject3;
                    }
                    String str11 = "捐蛋排位🥚未查询到捐赠排行信息";
                    if (!jSONObjectEnterDonationCompetitionRank.has("donationRankHomeInfo")) {
                        Log.record("捐蛋排位🥚未查询到捐赠排行信息");
                        return;
                    }
                    JSONObject jSONObject4 = jSONObjectEnterDonationCompetitionRank.getJSONObject("donationRankHomeInfo");
                    if (!jSONObject4.has("userDonationRankList")) {
                        Log.record("捐蛋排位🥚未查询到捐赠排行信息");
                        return;
                    }
                    JSONArray jSONArrayOptJSONArray2 = jSONObject4.optJSONArray("userDonationRankList");
                    try {
                        if (jSONArrayOptJSONArray2 != null && jSONArrayOptJSONArray2.length() != 0) {
                            if (iIntValue == 0) {
                                Log.record("捐蛋排位🥚目标星级为0跳过保底捐蛋逻辑");
                                str = "seasonDonationProgress";
                                antFarm = this;
                                str2 = "donationRankHomeInfo";
                                str3 = "捐蛋排位🥚未查询到捐赠排行信息";
                            } else {
                                str = "seasonDonationProgress";
                                String str12 = null;
                                String str13 = null;
                                int i11 = 0;
                                int i12 = 0;
                                int i13 = 0;
                                int i14 = 0;
                                int i15 = 0;
                                int i16 = 0;
                                int i17 = 0;
                                int i18 = 0;
                                while (i12 < jSONArrayOptJSONArray2.length()) {
                                    try {
                                        JSONObject jSONObject5 = jSONArrayOptJSONArray2.getJSONObject(i12);
                                        JSONArray jSONArray = jSONArrayOptJSONArray2;
                                        String strOptString = jSONObject5.optString("userId");
                                        String str14 = str11;
                                        String strOptString2 = jSONObject5.optString("nickName");
                                        int iOptInt = jSONObject5.optInt(str8) != 0 ? jSONObject5.optInt(str8) : jSONObject5.optInt("rewardContributionNum");
                                        int iOptInt2 = jSONObject5.optInt("donationNum");
                                        int iOptInt3 = jSONObject5.optInt("rankOrder");
                                        if (currentUid.equals(strOptString)) {
                                            Log.record("捐蛋排位🥚当前排名" + iOptInt3 + "已捐蛋" + iOptInt2 + "预计星星或爱心值" + iOptInt);
                                            i17 = iOptInt3;
                                            i18 = iOptInt;
                                            i16 = iOptInt2;
                                        }
                                        if (i12 == 0) {
                                            i15 = iOptInt3;
                                            i10 = iOptInt;
                                            i14 = iOptInt2;
                                            str12 = strOptString2;
                                            str13 = strOptString;
                                        } else {
                                            i10 = i13;
                                        }
                                        if (iOptInt > iIntValue) {
                                            i15 = iOptInt3;
                                            i13 = iOptInt;
                                            i14 = iOptInt2;
                                            str12 = strOptString2;
                                            str13 = strOptString;
                                        } else {
                                            if (iOptInt <= i10 && i11 < 20) {
                                                iArr[i11] = iOptInt2;
                                                strArr[i11] = strOptString2;
                                                iArr2[i11] = iOptInt;
                                                i11++;
                                            }
                                            i13 = i10;
                                        }
                                        i12++;
                                        jSONArrayOptJSONArray2 = jSONArray;
                                        str11 = str14;
                                        str8 = str8;
                                        str9 = str9;
                                    } catch (Throwable th) {
                                        th = th;
                                        String str15 = TAG;
                                        Log.i(str15, "competition err:");
                                        Log.printStackTrace(str15, th);
                                        return;
                                    }
                                }
                                str2 = str9;
                                str3 = str11;
                                if (currentUid.equals(str13)) {
                                    i = i13;
                                    i2 = i14;
                                } else {
                                    StringBuilder sb = new StringBuilder();
                                    sb.append("捐蛋排位🥚保底模式目标星星或爱心值");
                                    i = i13;
                                    sb.append(i);
                                    sb.append("[");
                                    sb.append(str12);
                                    sb.append("]已捐蛋");
                                    i2 = i14;
                                    sb.append(i2);
                                    Log.record(sb.toString());
                                }
                                Calendar calendar = Calendar.getInstance();
                                int i19 = calendar.get(11);
                                int i20 = calendar.get(12);
                                if (i19 > 20 || (i19 == 20 && i20 >= 1)) {
                                    Log.record("捐蛋排位🥚每日20:01后不执行捐蛋操作");
                                    return;
                                }
                                String str16 = "捐蛋";
                                String str17 = "捐蛋排位🥚目标星星或爱心值";
                                if (i17 <= i15 || i2 <= 0) {
                                    antFarm = this;
                                    i3 = i2;
                                    str4 = "捐蛋";
                                    str5 = "捐蛋排位🥚目标星星或爱心值";
                                    i4 = i16;
                                } else {
                                    i4 = i16;
                                    int i21 = (i2 - i4) + 1;
                                    if (i2 >= iIntValue2) {
                                        antFarm = this;
                                        if (iIntValue2 == 0) {
                                            if (i21 > 0) {
                                                Log.farm("捐蛋排位🥚目标星星或爱心值" + i + "捐蛋" + i2 + "当前捐蛋" + i4 + "(无捐蛋上限)尝试再捐蛋" + i21);
                                                antFarm.competitionDonation("养老保底模式", i21);
                                            }
                                        } else if (iIntValue2 > i4) {
                                            Log.record("捐蛋排位🥚目标星星或爱心值" + i + "捐蛋" + i2 + "当前捐蛋限制" + iIntValue2 + "尝试减少目标星星或爱心值捐蛋");
                                            int i22 = 0;
                                            while (true) {
                                                if (i22 >= i11) {
                                                    i5 = i2;
                                                    str6 = str16;
                                                    str7 = str17;
                                                    i6 = i18;
                                                    break;
                                                }
                                                i5 = i2;
                                                int i23 = iArr[i22];
                                                if (i23 <= 0 || i23 >= iIntValue2) {
                                                    str6 = str16;
                                                    str7 = str17;
                                                    i8 = i18;
                                                } else {
                                                    str6 = str16;
                                                    str7 = str17;
                                                    int i24 = i18;
                                                    if (iArr2[i22] > i24 && (i9 = (i23 - i4) + 1) >= 1) {
                                                        StringBuilder sb2 = new StringBuilder();
                                                        i6 = i24;
                                                        sb2.append("捐蛋排位🥚[在捐蛋上限");
                                                        sb2.append(iIntValue2);
                                                        sb2.append("范围内]比目标星星或爱心值");
                                                        sb2.append(i);
                                                        sb2.append("少");
                                                        sb2.append(i - iArr2[i22]);
                                                        sb2.append("的[");
                                                        sb2.append(strArr[i22]);
                                                        sb2.append("]捐了");
                                                        sb2.append(iArr[i22]);
                                                        sb2.append("当前捐蛋");
                                                        sb2.append(i4);
                                                        sb2.append("尝试再捐蛋");
                                                        sb2.append(i9);
                                                        Log.farm(sb2.toString());
                                                        antFarm.competitionDonation("养老保底模式", i9);
                                                        break;
                                                    }
                                                    i8 = i24;
                                                }
                                                i22++;
                                                i2 = i5;
                                                str16 = str6;
                                                str17 = str7;
                                                i18 = i8;
                                            }
                                            int i25 = iArr[i11];
                                            if (i25 > 0 && i25 > iIntValue2 && iArr2[i11] > i6 && (i7 = iIntValue2 - i4) > 1) {
                                                Log.farm("捐蛋排位🥚降低" + i11 + "档还是无法[在捐蛋上限" + iIntValue2 + "范围内]超过目标星星或爱心值为" + iArr2[i11] + "个的[" + strArr[i11] + "]捐了" + iArr[i11] + "当前捐蛋" + i4 + "尝试达到上限再捐蛋" + i7);
                                                antFarm.competitionDonation("养老保底模式", i7);
                                            }
                                            i3 = i5;
                                            str4 = str6;
                                            str5 = str7;
                                        } else {
                                            int i26 = i2;
                                            StringBuilder sb3 = new StringBuilder();
                                            str5 = "捐蛋排位🥚目标星星或爱心值";
                                            sb3.append(str5);
                                            sb3.append(i);
                                            str4 = "捐蛋";
                                            sb3.append(str4);
                                            i3 = i26;
                                            sb3.append(i3);
                                            sb3.append("您的账号已捐蛋");
                                            sb3.append(i4);
                                            sb3.append("捐蛋限制");
                                            sb3.append(iIntValue2);
                                            sb3.append("(停止捐蛋)");
                                            Log.record(sb3.toString());
                                        }
                                    } else if (i21 > 0) {
                                        Log.farm("捐蛋排位🥚目标星星或爱心值" + i + "捐蛋" + i2 + "当前捐蛋" + i4 + "尝试再捐蛋" + i21);
                                        antFarm = this;
                                        antFarm.competitionDonation("养老保底模式", i21);
                                    } else {
                                        antFarm = this;
                                    }
                                    i3 = i2;
                                    str4 = "捐蛋";
                                    str5 = "捐蛋排位🥚目标星星或爱心值";
                                }
                                if (i4 == 0 && i3 == 0) {
                                    Log.farm(str5 + i + str4 + i3 + "当前捐蛋" + i4 + "尝试首次捐蛋1");
                                    antFarm.competitionDonation("养老保底模式", 1);
                                }
                            }
                            int iIntValue3 = antFarm.competitionStealMinutes.getValue().intValue();
                            if (antFarm.isStealRankTime(iIntValue3)) {
                                antFarm.stealRank(iIntValue3, "霸榜");
                            }
                            final int iIntValue4 = antFarm.stealRankMinutes.getValue().intValue();
                            if (iIntValue4 > 0) {
                                Calendar calendar2 = Calendar.getInstance();
                                calendar2.set(11, 20);
                                calendar2.set(12, 0);
                                calendar2.set(13, 0);
                                calendar2.set(14, 0);
                                long j = ((long) (iIntValue4 * 60)) * 1000;
                                long timeInMillis = calendar2.getTimeInMillis() - j;
                                if (timeInMillis <= System.currentTimeMillis()) {
                                    calendar2.add(5, 1);
                                    timeInMillis = calendar2.getTimeInMillis() - j;
                                }
                                String str18 = "stealRank_" + iIntValue4;
                                if (!antFarm.hasChildTask(str18).booleanValue()) {
                                    antFarm.addChildTask(new ModelTask.ChildModelTask(str18, "STEALRANK", new Runnable() { // from class: io.github.lazyimmortal.sesame.model.task.antFarm.AntFarm$$ExternalSyntheticLambda9
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            this.f$0.m120xbdd9f8d0(iIntValue4);
                                        }
                                    }, Long.valueOf(timeInMillis)));
                                    Log.record("捐蛋排位🥚已设置偷榜[定时任务]将在 " + new SimpleDateFormat("HH:mm", Locale.getDefault()).format(Long.valueOf(timeInMillis)) + " 执行");
                                }
                            }
                            JSONObject jSONObjectEnterDonationCompetitionRank2 = enterDonationCompetitionRank();
                            if (jSONObjectEnterDonationCompetitionRank2 != null && MessageUtil.checkMemo(TAG, jSONObjectEnterDonationCompetitionRank2).booleanValue()) {
                                String str19 = str2;
                                if (!jSONObjectEnterDonationCompetitionRank2.has(str19)) {
                                    Log.record(str3);
                                    return;
                                }
                                if (!jSONObjectEnterDonationCompetitionRank2.optJSONObject(str19).has("selfDonationRank")) {
                                    Log.record("捐蛋排位🥚未查询到当前用户捐赠排行信息");
                                    return;
                                }
                                String str20 = str;
                                if (!jSONObjectEnterDonationCompetitionRank2.has(str20) || (jSONArrayOptJSONArray = jSONObjectEnterDonationCompetitionRank2.getJSONObject(str20).optJSONArray("nodes")) == null) {
                                    return;
                                }
                                for (int i27 = 0; i27 < jSONArrayOptJSONArray.length(); i27++) {
                                    JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i27);
                                    if (jSONObjectOptJSONObject != null && "UNRECEIVED".equals(jSONObjectOptJSONObject.optString(NotificationCompat.CATEGORY_STATUS))) {
                                        receiveDonationCompetitionProgressAward();
                                        return;
                                    }
                                }
                                return;
                            }
                            return;
                        }
                        Log.record("捐蛋排位🥚奖励列表为空");
                    } catch (Throwable th2) {
                        th = th2;
                    }
                }
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    /* JADX INFO: renamed from: lambda$competition$1$io-github-lazyimmortal-sesame-model-task-antFarm-AntFarm, reason: not valid java name */
    /* synthetic */ void m120xbdd9f8d0(int i) {
        stealRank(i, "偷榜");
    }

    private void stealRank(int i, String str) {
        try {
            JSONObject jSONObjectEnterDonationCompetitionRank = enterDonationCompetitionRank();
            if (jSONObjectEnterDonationCompetitionRank != null) {
                String str2 = TAG;
                if (MessageUtil.checkMemo(str2, jSONObjectEnterDonationCompetitionRank).booleanValue()) {
                    if (jSONObjectEnterDonationCompetitionRank.has("exitDonationCompetition") && jSONObjectEnterDonationCompetitionRank.optBoolean("exitDonationCompetition")) {
                        JSONObject jSONObject = new JSONObject(AntFarmRpcCall.setDonationCompetitionConf("OPEN"));
                        if (MessageUtil.checkMemo(str2, jSONObject).booleanValue()) {
                            Log.farm("捐蛋排位🥚开启(S1捐蛋排位赛)：" + jSONObject.optString("memo"));
                        }
                    }
                    if (jSONObjectEnterDonationCompetitionRank.has("isParticipateCompetition") && !jSONObjectEnterDonationCompetitionRank.optBoolean("isParticipateCompetition")) {
                        JSONObject jSONObject2 = new JSONObject(AntFarmRpcCall.participateCompetition());
                        if (MessageUtil.checkMemo(str2, jSONObject2).booleanValue()) {
                            Log.farm("捐蛋排位🥚开启(S2爱心集结号)：" + jSONObject2.optString("memo"));
                        }
                    }
                    int iIntValue = this.competitionDailyLimit.getValue().intValue();
                    String currentUid = UserIdMap.getCurrentUid();
                    JSONObject jSONObjectEnterDonationCompetitionRank2 = enterDonationCompetitionRank();
                    if (jSONObjectEnterDonationCompetitionRank2 != null && MessageUtil.checkMemo(str2, jSONObjectEnterDonationCompetitionRank2).booleanValue()) {
                        if (!jSONObjectEnterDonationCompetitionRank2.has("donationRankHomeInfo")) {
                            Log.record("捐蛋排位🥚未查询到捐赠排行信息");
                            return;
                        }
                        JSONObject jSONObject3 = jSONObjectEnterDonationCompetitionRank2.getJSONObject("donationRankHomeInfo");
                        if (!jSONObject3.has("userDonationRankList")) {
                            Log.record("捐蛋排位🥚未查询到捐赠排行信息");
                            return;
                        }
                        JSONArray jSONArrayOptJSONArray = jSONObject3.optJSONArray("userDonationRankList");
                        if (jSONArrayOptJSONArray != null && jSONArrayOptJSONArray.length() != 0) {
                            int i2 = 0;
                            int i3 = 0;
                            int i4 = 0;
                            int i5 = 0;
                            for (int i6 = 0; i6 < jSONArrayOptJSONArray.length(); i6++) {
                                JSONObject jSONObject4 = jSONArrayOptJSONArray.getJSONObject(i6);
                                String strOptString = jSONObject4.optString("userId");
                                jSONObject4.optInt("rewardStarNum");
                                int iOptInt = jSONObject4.optInt("donationNum");
                                int iOptInt2 = jSONObject4.optInt("rankOrder");
                                if (iOptInt2 == 1) {
                                    i3 = iOptInt;
                                }
                                if (iOptInt2 == 2) {
                                    i5 = iOptInt;
                                }
                                if (currentUid.equals(strOptString)) {
                                    i2 = iOptInt2;
                                    i4 = iOptInt;
                                }
                            }
                            int iIntValue2 = this.competitionLeadEggs.getValue().intValue();
                            int i7 = i3;
                            try {
                                if (i2 != 1) {
                                    int i8 = (i7 + iIntValue2) - i4;
                                    if (iIntValue == 0) {
                                        Log.record("捐蛋排位🥚" + str + "时间段(提前" + i + "分钟)目前排名" + i2 + "捐蛋" + i4 + ",第1名捐蛋" + i7 + ",满足领先" + iIntValue2 + "条件且无捐蛋上限尝试再捐蛋" + i8);
                                        competitionDonation("激进模式", i8);
                                        return;
                                    }
                                    if (i8 + i4 <= iIntValue) {
                                        Log.record("捐蛋排位🥚" + str + "时间段(提前" + i + "分钟)目前排名" + i2 + "捐蛋" + i4 + ",第1名捐蛋" + i7 + ",满足领先" + iIntValue2 + "条件还需尝试捐蛋" + i8);
                                        competitionDonation("激进模式", i8);
                                        return;
                                    }
                                    Log.record("捐蛋排位🥚" + str + "时间段(提前" + i + "分钟)目前排名" + i2 + "捐蛋" + i4 + ",第1名捐蛋" + i7 + ",满足领先" + iIntValue2 + "需再捐蛋" + i8 + "捐蛋限制" + iIntValue + "(停止捐蛋)");
                                } else if (i4 - i5 >= iIntValue2) {
                                    Log.record("捐蛋排位🥚" + str + "时间段(提前" + i + "分钟)目前排名" + i2 + "捐蛋" + i4 + ",第2名捐蛋" + i5 + ",满足领先" + iIntValue2 + "条件,不用捐蛋");
                                } else {
                                    int i9 = (i5 + iIntValue2) - i4;
                                    if (iIntValue == 0) {
                                        Log.record("捐蛋排位🥚" + str + "时间段(提前" + i + "分钟)目前排名" + i2 + "捐蛋" + i4 + ",第2名捐蛋" + i5 + ",满足领先" + iIntValue2 + "条件且无捐蛋上限尝试再捐蛋" + i9);
                                        competitionDonation("激进模式", i9);
                                        return;
                                    }
                                    if (i9 + i4 <= iIntValue) {
                                        Log.record("捐蛋排位🥚" + str + "时间段(提前" + i + "分钟)目前排名" + i2 + "捐蛋" + i4 + ",第2名捐蛋" + i5 + ",满足领先" + iIntValue2 + "条件尝试再捐蛋" + i9);
                                        competitionDonation("激进模式", i9);
                                        return;
                                    }
                                    Log.record("捐蛋排位🥚" + str + "时间段(提前" + i + "分钟)目前排名" + i2 + "捐蛋" + i4 + ",第2名捐蛋" + i5 + ",满足领先" + iIntValue2 + "需再捐蛋" + i9 + "捐蛋限制" + iIntValue + "(停止捐蛋)");
                                }
                                return;
                            } catch (Throwable th) {
                                th = th;
                                String str3 = TAG;
                                Log.i(str3, "stealRank err:");
                                Log.printStackTrace(str3, th);
                                return;
                            }
                        }
                        Log.record("捐蛋排位🥚奖励列表为空");
                    }
                }
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    private boolean isStealRankTime(int i) {
        if (i <= 0) {
            return false;
        }
        Calendar calendar = Calendar.getInstance();
        int i2 = (calendar.get(11) * 60) + calendar.get(12);
        return i2 >= 1200 - i && i2 < 1200;
    }

    private void competitionDonation(String str, int i) {
        try {
            JSONObject jSONObjectEnterDonationCompetitionRank = enterDonationCompetitionRank();
            if (jSONObjectEnterDonationCompetitionRank != null) {
                String str2 = TAG;
                if (MessageUtil.checkMemo(str2, jSONObjectEnterDonationCompetitionRank).booleanValue()) {
                    String strOptString = jSONObjectEnterDonationCompetitionRank.has("donationCompetitionActivityConf") ? jSONObjectEnterDonationCompetitionRank.optJSONObject("donationCompetitionActivityConf").optString("name") : null;
                    if (i > 0) {
                        double d = this.harvestBenevolenceScore;
                        if (((int) d) <= 0) {
                            Log.record("捐蛋排位🥚当前无蛋可捐");
                            return;
                        }
                        if (i > d) {
                            Log.record("捐蛋排位🥚满足" + str + "需捐蛋" + i + "当前可捐" + this.harvestBenevolenceScore + "放弃捐蛋");
                            return;
                        }
                        Log.farm("捐蛋排位🥚" + str + "开始捐蛋" + i + "枚");
                        if (strOptString == null || !strOptString.equals("S2赛季")) {
                            donation(i);
                            return;
                        }
                        JSONObject jSONObject = new JSONObject(AntFarmRpcCall.listActivityInfo());
                        if (MessageUtil.checkMemo(str2, jSONObject).booleanValue() && jSONObject.has("activityInfos")) {
                            JSONObject jSONObject2 = jSONObject.getJSONArray("activityInfos").getJSONObject(0);
                            if (jSONObject2.getInt("donationLimit") - jSONObject2.getInt("donationTotal") >= i) {
                                donation(jSONObject2.getString("activityId"), jSONObject2.getString("projectName"), i);
                            }
                        }
                    }
                }
            }
        } catch (Throwable th) {
            String str3 = TAG;
            Log.i(str3, "receiveReward err:");
            Log.printStackTrace(str3, th);
        }
    }

    /* JADX WARN: Code duplicated, block: B:29:0x00b7 A[Catch: all -> 0x00c6, TryCatch #0 {all -> 0x00c6, blocks: (B:2:0x0000, B:5:0x0016, B:7:0x001e, B:11:0x0028, B:13:0x002e, B:15:0x0040, B:29:0x00b7, B:30:0x00bc, B:17:0x0048, B:19:0x0063, B:21:0x006b, B:24:0x0072, B:25:0x0079, B:27:0x007f, B:28:0x00b1, B:31:0x00c0), top: B:36:0x0000 }] */
    private void receiveReward() {
        try {
            JSONObject jSONObject = new JSONObject(AntFarmRpcCall.enterCompetitionAwardPage());
            if (MessageUtil.checkMemo(TAG, jSONObject).booleanValue()) {
                JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("levelAwardInfoList");
                if (jSONArrayOptJSONArray != null && jSONArrayOptJSONArray.length() != 0) {
                    for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                        JSONObject jSONObject2 = jSONArrayOptJSONArray.getJSONObject(i);
                        String strOptString = jSONObject2.optString(NotificationCompat.CATEGORY_STATUS);
                        if (strOptString.equals("unreceived") || strOptString.equals("unclaimed")) {
                            JSONObject jSONObject3 = new JSONObject(AntFarmRpcCall.receiveDonationLevelReward(jSONObject2.optString("rightsId")));
                            if (MessageUtil.checkMemo(TAG, jSONObject3).booleanValue()) {
                                JSONArray jSONArrayOptJSONArray2 = jSONObject3.optJSONArray("levelAwardList");
                                if (jSONArrayOptJSONArray2 == null || jSONArrayOptJSONArray2.length() == 0) {
                                    Log.record("捐蛋排位🥚奖励为空");
                                } else {
                                    String strOptString2 = jSONObject3.optString("levelName");
                                    for (int i2 = 0; i2 < jSONArrayOptJSONArray2.length(); i2++) {
                                        JSONObject jSONObject4 = jSONArrayOptJSONArray2.getJSONObject(i2);
                                        String strOptString3 = jSONObject4.optString("awardName");
                                        Log.farm("捐蛋排位🥚领取[" + strOptString2 + "]段位奖励" + jSONObject4.optInt("awardNum") + strOptString3);
                                    }
                                    TimeUtil.sleep(500L);
                                }
                            } else {
                                TimeUtil.sleep(500L);
                            }
                        } else {
                            TimeUtil.sleep(500L);
                        }
                    }
                    return;
                }
                Log.record("捐蛋排位🥚奖励列表为空");
            }
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "receiveReward err:");
            Log.printStackTrace(str, th);
        }
    }

    private void receiveCompetitionTask() {
        try {
            JSONObject jSONObject = new JSONObject(AntFarmRpcCall.listCompetitionTask());
            if (MessageUtil.checkMemo(TAG, jSONObject).booleanValue()) {
                JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("taskList");
                String strOptString = jSONObject.optString("taskSceneCode");
                if (jSONArrayOptJSONArray != null && jSONArrayOptJSONArray.length() != 0) {
                    for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                        JSONObject jSONObject2 = jSONArrayOptJSONArray.getJSONObject(i);
                        String strOptString2 = jSONObject2.optString("taskStatus");
                        String strOptString3 = jSONObject2.optString("title");
                        int iOptInt = jSONObject2.optInt("alreadyReceiveStageAwardCount");
                        int iOptInt2 = jSONObject2.optInt("awardCount");
                        if (strOptString2.equals("FINISHED") && iOptInt2 > iOptInt) {
                            JSONObject jSONObject3 = new JSONObject(AntFarmRpcCall.receiveTaskAwardantfarm(1, strOptString, jSONObject2.optString("taskType")));
                            if (MessageUtil.checkSuccess(TAG, jSONObject3).booleanValue()) {
                                jSONObject3.optInt("incAwardCount");
                                Log.farm("捐蛋排位🥚领取[" + strOptString3 + "]任务奖励");
                            }
                        }
                        TimeUtil.sleep(500L);
                    }
                    return;
                }
                Log.record("捐蛋排位🥚任务列表为空");
            }
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "listCompetitionTask err:");
            Log.printStackTrace(str, th);
        }
    }

    private void receiveDonationCompetitionProgressAward() {
        try {
            JSONObject jSONObject = new JSONObject(AntFarmRpcCall.receiveDonationCompetitionProgressAward());
            if (MessageUtil.checkMemo(TAG, jSONObject).booleanValue()) {
                if (jSONObject.has("totalAddStarNum")) {
                    Log.farm("捐蛋排位🥚累计领取进度奖励星星或爱心值" + jSONObject.optInt("totalAddStarNum"));
                }
                JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("beforeLevelInfo");
                JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject("afterLevelInfo");
                if (jSONObjectOptJSONObject == null || jSONObjectOptJSONObject2 == null) {
                    return;
                }
                int iOptInt = jSONObjectOptJSONObject.optInt("userStarNum");
                int iOptInt2 = jSONObjectOptJSONObject2.optInt("userStarNum");
                Log.farm("捐蛋排位🥚排位情况[" + jSONObjectOptJSONObject.optString("levelName") + "](" + iOptInt + ")→[" + jSONObjectOptJSONObject2.optString("levelName") + "](" + iOptInt2 + ")(+" + (iOptInt2 - iOptInt) + ")");
            }
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "receiveDonationCompetitionProgressAward err:");
            Log.printStackTrace(str, th);
        }
    }

    private int getProjectDonationNum(String str) {
        try {
            JSONObject jSONObject = new JSONObject(AntFarmRpcCall.getProjectInfo(str));
            if (MessageUtil.checkMemo(TAG, jSONObject).booleanValue()) {
                return jSONObject.optInt("userProjectDonationNum");
            }
            return 0;
        } catch (Throwable th) {
            String str2 = TAG;
            Log.i(str2, "getProjectDonationNum err:");
            Log.printStackTrace(str2, th);
            return 0;
        }
    }

    private Boolean canDonationToday() {
        if (Status.hasFlagToday("farm::donation").booleanValue()) {
            return false;
        }
        try {
            JSONObject jSONObject = new JSONObject(AntFarmRpcCall.getCharityAccount(this.ownerUserId));
            if (!MessageUtil.checkMemo(TAG, jSONObject).booleanValue()) {
                return false;
            }
            JSONArray jSONArray = jSONObject.getJSONArray("charityRecords");
            if (jSONArray.length() != 0 && !TimeUtil.isLessThanNowOfDays(Long.valueOf(jSONArray.getJSONObject(0).optLong("charityTime", System.currentTimeMillis()))).booleanValue()) {
                Status.flagToday("farm::donation");
                return false;
            }
            return true;
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "canDonationToday err:");
            Log.printStackTrace(str, th);
        }
    }

    private static boolean isFeedScoreError(JSONObject jSONObject) {
        if (jSONObject == null || jSONObject.optBoolean("success", false)) {
            return false;
        }
        return jSONObject.optString("memo", "").contains("饲料积分") || jSONObject.optString("resultDesc", "").contains("饲料积分") || jSONObject.optString("resultMessage", "").contains("饲料积分");
    }

    private void recordFarmGame(GameType gameType) {
        while (true) {
            try {
                JSONObject jSONObject = new JSONObject(AntFarmRpcCall.initFarmGame(gameType.name()));
                String str = TAG;
                if (!MessageUtil.checkMemo(str, jSONObject).booleanValue()) {
                    TimeUtil.sleep(2000L);
                    return;
                }
                if (jSONObject.getJSONObject("gameAward").getBoolean("level3Get")) {
                    TimeUtil.sleep(2000L);
                    return;
                }
                if (jSONObject.optInt("remainingGameCount", 1) == 0) {
                    TimeUtil.sleep(2000L);
                    return;
                }
                JSONObject jSONObject2 = new JSONObject(AntFarmRpcCall.recordFarmGame(gameType.name()));
                if (gameType == GameType.flyGame && isFeedScoreError(jSONObject2)) {
                    Log.i(str, "飞行赛饲料积分异常，改用 score/100 重新上报");
                    TimeUtil.sleep(1000L);
                    jSONObject2 = new JSONObject(AntFarmRpcCall.recordFarmGame(gameType.name(), 100));
                }
                if (!MessageUtil.checkMemo(str, jSONObject2).booleanValue()) {
                    TimeUtil.sleep(2000L);
                    return;
                }
                JSONArray jSONArray = jSONObject2.getJSONArray("awardInfos");
                StringBuilder sb = new StringBuilder();
                for (int i = 0; i < jSONArray.length(); i++) {
                    JSONObject jSONObject3 = jSONArray.getJSONObject(i);
                    sb.append(jSONObject3.getString("awardName"));
                    sb.append("*");
                    sb.append(jSONObject3.getInt("awardCount"));
                }
                if (jSONObject2.has("receiveFoodCount")) {
                    sb.append(";肥料*");
                    sb.append(jSONObject2.getString("receiveFoodCount"));
                }
                Log.farm("小鸡乐园🎮游玩[" + ((Object) gameType.gameName()) + "]#获得[" + ((Object) sb) + "]");
                if (jSONObject2.optInt("remainingGameCount", 0) <= 0) {
                    TimeUtil.sleep(2000L);
                    return;
                }
                try {
                    TimeUtil.sleep(2000L);
                } catch (Throwable th) {
                    String str2 = TAG;
                    Log.i(str2, "recordFarmGame err:");
                    Log.printStackTrace(str2, th);
                    return;
                }
            } catch (Throwable th2) {
                TimeUtil.sleep(2000L);
                throw th2;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:18:0x006d A[Catch: all -> 0x0122, TryCatch #0 {all -> 0x0122, blocks: (B:3:0x0006, B:6:0x001c, B:8:0x002e, B:9:0x0031, B:10:0x0039, B:12:0x003f, B:14:0x0063, B:18:0x006d, B:20:0x007b, B:21:0x00f2, B:25:0x00fc, B:27:0x0103, B:30:0x0112), top: B:36:0x0006 }] */
    /* JADX WARN: Code duplicated, block: B:20:0x007b A[Catch: all -> 0x0122, TryCatch #0 {all -> 0x0122, blocks: (B:3:0x0006, B:6:0x001c, B:8:0x002e, B:9:0x0031, B:10:0x0039, B:12:0x003f, B:14:0x0063, B:18:0x006d, B:20:0x007b, B:21:0x00f2, B:25:0x00fc, B:27:0x0103, B:30:0x0112), top: B:36:0x0006 }] */
    /* JADX WARN: Code duplicated, block: B:21:0x00f2 A[Catch: all -> 0x0122, TryCatch #0 {all -> 0x0122, blocks: (B:3:0x0006, B:6:0x001c, B:8:0x002e, B:9:0x0031, B:10:0x0039, B:12:0x003f, B:14:0x0063, B:18:0x006d, B:20:0x007b, B:21:0x00f2, B:25:0x00fc, B:27:0x0103, B:30:0x0112), top: B:36:0x0006 }] */
    /* JADX WARN: Code duplicated, block: B:25:0x00fc A[Catch: all -> 0x0122, TryCatch #0 {all -> 0x0122, blocks: (B:3:0x0006, B:6:0x001c, B:8:0x002e, B:9:0x0031, B:10:0x0039, B:12:0x003f, B:14:0x0063, B:18:0x006d, B:20:0x007b, B:21:0x00f2, B:25:0x00fc, B:27:0x0103, B:30:0x0112), top: B:36:0x0006 }] */
    /* JADX WARN: Code duplicated, block: B:27:0x0103 A[Catch: all -> 0x0122, TryCatch #0 {all -> 0x0122, blocks: (B:3:0x0006, B:6:0x001c, B:8:0x002e, B:9:0x0031, B:10:0x0039, B:12:0x003f, B:14:0x0063, B:18:0x006d, B:20:0x007b, B:21:0x00f2, B:25:0x00fc, B:27:0x0103, B:30:0x0112), top: B:36:0x0006 }] */
    private void listFarmTask() {
        int iRightsTimesToDo;
        int i;
        long j;
        try {
            JSONObject jSONObject = new JSONObject(AntFarmRpcCall.listFarmTask());
            if (MessageUtil.checkMemo(TAG, jSONObject).booleanValue()) {
                long j2 = 1000;
                if (sign(jSONObject.getJSONObject("signList")).booleanValue()) {
                    TimeUtil.sleep(1000L);
                }
                JSONArray jSONArray = jSONObject.getJSONArray("farmTaskList");
                int i2 = 0;
                while (i2 < jSONArray.length()) {
                    JSONObject jSONObject2 = jSONArray.getJSONObject(i2);
                    TaskStatus taskStatusValueOf = TaskStatus.valueOf(jSONObject2.getString("taskStatus"));
                    String string = jSONObject2.getString("title");
                    int iOptInt = jSONObject2.optInt("rightsTimesLimit");
                    int iOptInt2 = jSONObject2.optInt("rightsTimes");
                    if (taskStatusValueOf == TaskStatus.FINISHED) {
                        receiveFarmTaskAward(jSONObject2);
                        if (iOptInt <= 0 || iOptInt <= iOptInt2) {
                            j = j2;
                        } else {
                            if (this.AntFarmDoFarmTaskList.getValue().contains(string)) {
                                TaskAlternative.handleGameTask(new TaskAlternative.GameTask("AntFarmDoFarmTaskList", string, jSONObject2.optString("desc", ""), jSONObject2.optString("targetUrl", ""), taskStatusValueOf.name()).bizKey(jSONObject2.optString("bizKey", jSONObject2.optString("taskId"))).rights(iOptInt2, iOptInt).taskRemain(Math.max(0, jSONObject2.optInt("taskRequire", 0) - jSONObject2.optInt("taskProgress", 0))).taskPlayType(jSONObject2.optString("taskPlayType", jSONObject2.optString("taskProdPlayType"))).taskMode(jSONObject2.optString("taskMode")).taskSceneCode(jSONObject2.optString("sceneCode", "ANTFARM")).scene("ANTFARM", "H5"));
                            } else if (taskStatusValueOf != TaskStatus.TODO || iOptInt > iOptInt2) {
                                iRightsTimesToDo = TaskAlternative.rightsTimesToDo(iOptInt2, iOptInt);
                                for (i = 0; i < iRightsTimesToDo && doFarmTask(jSONObject2, TaskAlternative.rightsProgressText(iOptInt2, iOptInt, i)).booleanValue(); i++) {
                                    TimeUtil.sleep(1000L);
                                    receiveFarmTaskAward(jSONObject2);
                                }
                            }
                            j = 1000;
                        }
                    } else {
                        if (this.AntFarmDoFarmTaskList.getValue().contains(string)) {
                            TaskAlternative.handleGameTask(new TaskAlternative.GameTask("AntFarmDoFarmTaskList", string, jSONObject2.optString("desc", ""), jSONObject2.optString("targetUrl", ""), taskStatusValueOf.name()).bizKey(jSONObject2.optString("bizKey", jSONObject2.optString("taskId"))).rights(iOptInt2, iOptInt).taskRemain(Math.max(0, jSONObject2.optInt("taskRequire", 0) - jSONObject2.optInt("taskProgress", 0))).taskPlayType(jSONObject2.optString("taskPlayType", jSONObject2.optString("taskProdPlayType"))).taskMode(jSONObject2.optString("taskMode")).taskSceneCode(jSONObject2.optString("sceneCode", "ANTFARM")).scene("ANTFARM", "H5"));
                        } else if (taskStatusValueOf != TaskStatus.TODO) {
                            iRightsTimesToDo = TaskAlternative.rightsTimesToDo(iOptInt2, iOptInt);
                            while (i < iRightsTimesToDo) {
                                TimeUtil.sleep(1000L);
                                receiveFarmTaskAward(jSONObject2);
                            }
                        } else {
                            iRightsTimesToDo = TaskAlternative.rightsTimesToDo(iOptInt2, iOptInt);
                            while (i < iRightsTimesToDo) {
                                TimeUtil.sleep(1000L);
                                receiveFarmTaskAward(jSONObject2);
                            }
                        }
                        j = 1000;
                    }
                    i2++;
                    j2 = j;
                }
            }
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "listFarmTask err:");
            Log.printStackTrace(str, th);
        }
    }

    private Boolean sign(JSONObject jSONObject) {
        boolean z = false;
        if (Status.hasFlagToday("farm::sign").booleanValue()) {
            return false;
        }
        try {
            String string = jSONObject.getString("currentSignKey");
            JSONArray jSONArray = jSONObject.getJSONArray("signList");
            for (int i = 0; i < jSONArray.length(); i++) {
                JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                if (string.equals(jSONObject2.getString("signKey"))) {
                    if (jSONObject2.optBoolean("signed")) {
                        Log.record("庄园今日已签到");
                        Status.flagToday("farm::sign");
                        return false;
                    }
                    int i2 = jSONObject2.getInt("awardCount");
                    if (this.foodStock + i2 > this.foodStockLimit) {
                        return false;
                    }
                    int i3 = jSONObject2.getInt("currentContinuousCount");
                    JSONObject jSONObject3 = new JSONObject(AntFarmRpcCall.sign());
                    if (!MessageUtil.checkMemo(TAG, jSONObject3).booleanValue()) {
                        return false;
                    }
                    this.foodStock = jSONObject3.getInt("foodStock");
                    Log.farm("饲料任务📅签到[坚持" + i3 + "天]#获得[" + i2 + "g饲料]");
                    try {
                        Status.flagToday("farm::sign");
                        return true;
                    } catch (Throwable th) {
                        th = th;
                        z = true;
                        try {
                            String str = TAG;
                            Log.i(str, "sign err:");
                            Log.printStackTrace(str, th);
                            return false;
                        } finally {
                            if (z) {
                                Status.flagToday("farm::sign");
                            }
                        }
                    }
                }
            }
        } catch (Throwable th2) {
            th = th2;
        }
        return false;
    }

    private Boolean doVideoTask() {
        try {
            JSONObject jSONObject = new JSONObject(AntFarmRpcCall.queryTabVideoUrl());
            if (!MessageUtil.checkMemo(TAG, jSONObject).booleanValue()) {
                return false;
            }
            String string = jSONObject.getString("videoUrl");
            String strSubstring = string.substring(string.indexOf("&contentId=") + 1, string.indexOf("&refer"));
            JSONObject jSONObject2 = new JSONObject(AntFarmRpcCall.videoDeliverModule(strSubstring));
            if (jSONObject2.optBoolean("success")) {
                TimeUtil.sleep(15100L);
                JSONObject jSONObject3 = new JSONObject(AntFarmRpcCall.videoTrigger(strSubstring));
                if (jSONObject3.optBoolean("success")) {
                    return true;
                }
                Log.record(jSONObject3.getString("resultMsg"));
                Log.i(jSONObject3.toString());
            } else {
                Log.record(jSONObject2.getString("resultMsg"));
                Log.i(jSONObject2.toString());
            }
            return false;
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "doVideoTask err:");
            Log.printStackTrace(str, th);
        }
    }

    private Boolean doAnswerTask() {
        try {
            JSONObject jSONObject = new JSONObject(AntFarmRpcCall.dadaDailyHome("100"));
            String str = TAG;
            if (!MessageUtil.checkResultCode(str, jSONObject).booleanValue()) {
                return false;
            }
            JSONObject jSONObject2 = jSONObject.getJSONObject("question");
            long j = jSONObject2.getLong("questionId");
            JSONArray jSONArray = jSONObject2.getJSONArray("label");
            String answer = AnswerAI.getAnswer(jSONObject2.getString("title"), JsonUtil.jsonArrayToList(jSONArray));
            if (answer == null || answer.isEmpty()) {
                answer = jSONArray.getString(0);
            }
            JSONObject jSONObject3 = new JSONObject(AntFarmRpcCall.dadaDailySubmit("100", answer, Long.valueOf(j)));
            if (!MessageUtil.checkResultCode(str, jSONObject3).booleanValue()) {
                return false;
            }
            JSONObject jSONObject4 = jSONObject3.getJSONObject("extInfo");
            boolean z = jSONObject3.getBoolean("correct");
            String string = jSONObject4.getString("award");
            StringBuilder sb = new StringBuilder("庄园答题📝回答");
            sb.append(z ? "正确" : "错误");
            sb.append("#获得[");
            sb.append(string);
            sb.append("g饲料]");
            Log.record(sb.toString());
            if (jSONObject3.has("operationConfigList")) {
                savePreviewQuestion(jSONObject3.getJSONArray("operationConfigList"));
                return true;
            }
            return false;
        } catch (Throwable th) {
            String str2 = TAG;
            Log.i(str2, "doAnswerTask err:");
            Log.printStackTrace(str2, th);
        }
    }

    private void savePreviewQuestion(JSONArray jSONArray) {
        for (int i = 0; i < jSONArray.length(); i++) {
            try {
                JSONObject jSONObject = jSONArray.getJSONObject(i);
                if (Objects.equals(jSONObject.getString("type"), "PREVIEW_QUESTION")) {
                    String string = jSONObject.getString("title");
                    JSONArray jSONArray2 = new JSONArray(jSONObject.getString("actionTitle"));
                    for (int i2 = 0; i2 < jSONArray2.length(); i2++) {
                        JSONObject jSONObject2 = jSONArray2.getJSONObject(i2);
                        if (jSONObject2.getBoolean("correct")) {
                            TokenConfig.saveAnswer(string, jSONObject2.getString("title"));
                        }
                    }
                }
            } catch (Throwable th) {
                String str = TAG;
                Log.i(str, "saveAnswerList err:");
                Log.printStackTrace(str, th);
                return;
            }
        }
    }

    private Boolean doFarmTask(JSONObject jSONObject, String str) {
        boolean zBooleanValue = false;
        try {
            String string = jSONObject.getString("title");
            String string2 = jSONObject.getString("bizKey");
            if (!string2.contains("HEART_DONAT") && !string2.equals("BAIDUJS_202512") && !string2.equals("BABAFARM_TB") && !string2.equals("monthlyCard")) {
                if (Objects.equals(string, "庄园小视频")) {
                    zBooleanValue = doVideoTask().booleanValue();
                } else if (Objects.equals(string, "庄园小课堂")) {
                    zBooleanValue = doAnswerTask().booleanValue();
                } else {
                    JSONObject jSONObject2 = new JSONObject(AntFarmRpcCall.doFarmTask(string2));
                    MessageUtil.checkResultCodeAndMarkTaskBlackList("AntFarmDoFarmTaskList", string, jSONObject2);
                    if (MessageUtil.checkResultCode(TAG, jSONObject2).booleanValue()) {
                        zBooleanValue = true;
                    }
                }
                if (zBooleanValue) {
                    Log.farm("饲料任务🧾完成[" + string + "]" + str);
                }
                return Boolean.valueOf(zBooleanValue);
            }
            return false;
        } catch (Throwable th) {
            String str2 = TAG;
            Log.i(str2, "doFarmTask err:");
            Log.printStackTrace(str2, th);
        }
    }

    private Boolean receiveFarmTaskAward(JSONObject jSONObject) {
        int i;
        int i2;
        try {
            String strOptString = jSONObject.optString("taskId");
            String strOptString2 = jSONObject.optString("title");
            String strOptString3 = jSONObject.optString("awardType", "");
            int iOptInt = jSONObject.optInt("awardCount", 0);
            if (Objects.equals(strOptString3, "ALLPURPOSE") && ((i = this.foodStock) >= (i2 = this.foodStockLimit) || i + iOptInt > i2)) {
                return false;
            }
            JSONObject jSONObject2 = new JSONObject(AntFarmRpcCall.receiveFarmTaskAward(strOptString));
            MessageUtil.checkResultCodeAndMarkTaskBlackList("AntFarmDoFarmTaskList", strOptString2, jSONObject2);
            if (!"饲料槽已满".equals(jSONObject2.optString("memo")) && MessageUtil.checkMemo(TAG, jSONObject2).booleanValue()) {
                if (strOptString3.equals("ALLPURPOSE")) {
                    add2FoodStock(iOptInt);
                    Log.farm("饲料领取🎖️任务[" + strOptString2 + "]奖励#获得[" + iOptInt + "g]");
                    return true;
                }
                return false;
            }
            return false;
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "receiveFarmTaskAward err:");
            Log.printStackTrace(str, th);
        }
    }

    private void feedAnimal(String str) {
        ModelTask.ChildModelTask childModelTask;
        try {
            syncAnimalStatus(this.ownerFarmId);
            if (this.foodStock < 180) {
                Log.record("剩余饲料不足以投喂小鸡");
                addChildTask(new ModelTask.ChildModelTask("UPDATE|FA|" + str, "UPDATE", new Runnable() { // from class: io.github.lazyimmortal.sesame.model.task.antFarm.AntFarm$$ExternalSyntheticLambda5
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.autoFeedAnimal();
                    }
                }, Long.valueOf(System.currentTimeMillis() + TimeUnit.SECONDS.toMillis(10L))));
                return;
            }
            JSONObject jSONObject = new JSONObject(AntFarmRpcCall.feedAnimal(str));
            if (MessageUtil.checkMemo(TAG, jSONObject).booleanValue()) {
                int i = this.foodStock - jSONObject.getInt("foodStock");
                add2FoodStock(-i);
                Log.farm("投喂小鸡🥣消耗[" + i + "g]#剩余[" + this.foodStock + "g饲料]");
                if (this.useAccelerateTool.getValue().booleanValue()) {
                    TimeUtil.sleep(1000L);
                    useAccelerateTool();
                }
            }
            childModelTask = new ModelTask.ChildModelTask("UPDATE|FA|" + str, "UPDATE", new Runnable() { // from class: io.github.lazyimmortal.sesame.model.task.antFarm.AntFarm$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.autoFeedAnimal();
                }
            }, Long.valueOf(System.currentTimeMillis() + TimeUnit.SECONDS.toMillis(10L)));
            addChildTask(childModelTask);
        } catch (Throwable th) {
            try {
                String str2 = TAG;
                Log.i(str2, "feedAnimal err:");
                Log.printStackTrace(str2, th);
                childModelTask = new ModelTask.ChildModelTask("UPDATE|FA|" + str, "UPDATE", new Runnable() { // from class: io.github.lazyimmortal.sesame.model.task.antFarm.AntFarm$$ExternalSyntheticLambda5
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.autoFeedAnimal();
                    }
                }, Long.valueOf(System.currentTimeMillis() + TimeUnit.SECONDS.toMillis(10L)));
            } catch (Throwable th2) {
                addChildTask(new ModelTask.ChildModelTask("UPDATE|FA|" + str, "UPDATE", new Runnable() { // from class: io.github.lazyimmortal.sesame.model.task.antFarm.AntFarm$$ExternalSyntheticLambda5
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.autoFeedAnimal();
                    }
                }, Long.valueOf(System.currentTimeMillis() + TimeUnit.SECONDS.toMillis(10L))));
                throw th2;
            }
        }
    }

    private void listFarmTool() {
        try {
            JSONObject jSONObject = new JSONObject(AntFarmRpcCall.listFarmTool());
            if (MessageUtil.checkMemo(TAG, jSONObject).booleanValue()) {
                JSONArray jSONArray = jSONObject.getJSONArray("toolList");
                this.farmTools = new FarmTool[jSONArray.length()];
                for (int i = 0; i < jSONArray.length(); i++) {
                    JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                    this.farmTools[i] = new FarmTool();
                    this.farmTools[i].toolId = jSONObject2.optString("toolId", "");
                    this.farmTools[i].toolType = ToolType.valueOf(jSONObject2.getString("toolType"));
                    this.farmTools[i].toolCount = jSONObject2.getInt("toolCount");
                    this.farmTools[i].toolHoldLimit = jSONObject2.optInt("toolHoldLimit", 20);
                }
            }
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "listFarmTool err:");
            Log.printStackTrace(str, th);
        }
    }

    private void useAccelerateTool() {
        if (Status.canUseAccelerateToolToday().booleanValue()) {
            syncAnimalStatus(this.ownerFarmId);
            if (this.useAccelerateToolOptions.getValue().contains("useAccelerateToolContinue") || !AnimalBuff.ACCELERATING.name().equals(this.ownerAnimal.animalBuff)) {
                if (!this.useAccelerateToolOptions.getValue().contains("useAccelerateToolWhenMaxEmotion") || this.finalScore == 100.0d) {
                    long j = 1000;
                    long jCurrentTimeMillis = System.currentTimeMillis() / 1000;
                    Animal[] animalArr = this.animals;
                    int length = animalArr.length;
                    double dDoubleValue = 0.0d;
                    double dDoubleValue2 = 0.0d;
                    int i = 0;
                    while (i < length) {
                        Animal animal = animalArr[i];
                        if (animal.masterFarmId.equals(this.ownerFarmId)) {
                            dDoubleValue2 = animal.consumeSpeed.doubleValue();
                        }
                        dDoubleValue += animal.consumeSpeed.doubleValue() * (jCurrentTimeMillis - (animal.startEatTime.longValue() / j));
                        i++;
                        j = 1000;
                    }
                    do {
                        double d = 3600.0d * dDoubleValue2;
                        if (((double) this.foodInTrough) - dDoubleValue < d || !useFarmTool(this.ownerFarmId, ToolType.ACCELERATETOOL).booleanValue()) {
                            return;
                        }
                        TimeUtil.sleep(1000L);
                        dDoubleValue += d;
                        Status.useAccelerateToolToday();
                        if (!Status.canUseAccelerateToolToday().booleanValue()) {
                            return;
                        }
                    } while (this.useAccelerateToolOptions.getValue().contains("useAccelerateToolContinue"));
                }
            }
        }
    }

    private Boolean useFarmTool(String str, ToolType toolType) {
        try {
            JSONObject jSONObject = new JSONObject(AntFarmRpcCall.listFarmTool());
            if (!MessageUtil.checkMemo(TAG, jSONObject).booleanValue()) {
                return false;
            }
            JSONArray jSONArray = jSONObject.getJSONArray("toolList");
            for (int i = 0; i < jSONArray.length(); i++) {
                JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                if (toolType.name().equals(jSONObject2.getString("toolType"))) {
                    int iOptInt = jSONObject2.optInt("toolCount");
                    if (iOptInt == 0) {
                        return false;
                    }
                    JSONObject jSONObject3 = new JSONObject(AntFarmRpcCall.useFarmTool(str, jSONObject2.optString("toolId"), toolType.name()));
                    if (MessageUtil.checkMemo(TAG, jSONObject3).booleanValue()) {
                        Log.farm("使用道具🎭[" + ((Object) toolType.nickName()) + "]#剩余" + (iOptInt - 1) + "张");
                        return true;
                    }
                    if (!"3D16".equals(jSONObject3.getString("resultCode"))) {
                        break;
                    }
                    Status.flagToday("farm::useFarmToolLimit::" + toolType);
                    break;
                }
            }
            return false;
        } catch (Throwable th) {
            String str2 = TAG;
            Log.i(str2, "useFarmTool err:");
            Log.printStackTrace(str2, th);
        }
    }

    private void feedFriend() {
        try {
            for (Map.Entry<String, Integer> entry : this.feedFriendAnimalList.getValue().entrySet()) {
                String key = entry.getKey();
                if (!key.equals(UserIdMap.getCurrentUid()) && Status.canFeedFriendToday(key, entry.getValue().intValue()).booleanValue()) {
                    JSONObject jSONObject = new JSONObject(AntFarmRpcCall.enterFarm("", key));
                    if (MessageUtil.checkMemo(TAG, jSONObject).booleanValue()) {
                        JSONObject jSONObject2 = jSONObject.getJSONObject("farmVO").getJSONObject("subFarmVO");
                        String string = jSONObject2.getString("farmId");
                        if (jSONObject2.optInt("foodInTrough", 0) == 0) {
                            JSONArray jSONArray = jSONObject2.getJSONArray("animals");
                            for (int i = 0; i < jSONArray.length(); i++) {
                                JSONObject jSONObject3 = jSONArray.getJSONObject(i);
                                if (jSONObject3.getString("masterFarmId").equals(string)) {
                                    if (jSONObject3.optBoolean("littleChick", false)) {
                                        Log.record("跳过帮喂：好友的小鸡太小");
                                        break;
                                    }
                                    JSONObject jSONObject4 = jSONObject3.getJSONObject("animalStatusVO");
                                    String string2 = jSONObject4.getString("animalInteractStatus");
                                    String string3 = jSONObject4.getString("animalFeedStatus");
                                    if (!AnimalInteractStatus.HOME.name().equals(string2) || !AnimalFeedStatus.HUNGRY.name().equals(string3)) {
                                        break;
                                    }
                                    feedFriendAnimal(string);
                                    break;
                                }
                            }
                        }
                    }
                }
            }
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "feedFriend err:");
            Log.printStackTrace(str, th);
        }
    }

    private void feedFriendAnimal(String str) {
        try {
            String strFarmId2UserId = AntFarmRpcCall.farmId2UserId(str);
            String maskName = UserIdMap.getMaskName(strFarmId2UserId);
            Log.record("[" + maskName + "]的小鸡在挨饿");
            if (this.foodStock < 180) {
                Log.record("喂鸡饲料不足");
                return;
            }
            String str2 = null;
            if (this.family.getValue().booleanValue()) {
                String familyGroupId = getFamilyGroupId(strFarmId2UserId);
                if (!StringUtil.isEmpty(familyGroupId) && Objects.equals(this.ownerGroupId, familyGroupId)) {
                    str2 = familyGroupId;
                }
            }
            if (feedFriendAnimal(str, str2).booleanValue()) {
                Log.farm((StringUtil.isEmpty(str2) ? "帮喂小鸡🥣帮喂好友" : "亲密家庭🏠帮喂成员") + "[" + maskName + "]的小鸡#剩余[" + this.foodStock + "g饲料]");
                Status.feedFriendToday(AntFarmRpcCall.farmId2UserId(str));
            }
        } catch (Throwable th) {
            String str3 = TAG;
            Log.i(str3, "feedFriendAnimal err:");
            Log.printStackTrace(str3, th);
        }
    }

    private Boolean feedFriendAnimal(String str, String str2) {
        try {
            JSONObject jSONObject = new JSONObject(AntFarmRpcCall.feedFriendAnimal(str, str2));
            if (!MessageUtil.checkMemo(TAG, jSONObject).booleanValue()) {
                if ("391".equals(jSONObject.optString("resultCode"))) {
                    Status.flagToday("farm::feedFriendAnimalLimit");
                }
                return false;
            }
            int i = this.foodStock - jSONObject.getInt("foodStock");
            if (i > 0) {
                add2FoodStock(-i);
                return true;
            }
            return false;
        } catch (Throwable th) {
            String str3 = TAG;
            Log.i(str3, "feedFriendAnimal err:");
            Log.printStackTrace(str3, th);
        }
    }

    private void notifyFriend() {
        boolean z;
        if (this.foodStock >= this.foodStockLimit) {
            return;
        }
        int length = 0;
        do {
            try {
                JSONObject jSONObject = new JSONObject(AntFarmRpcCall.rankingList(length));
                if (!MessageUtil.checkMemo(TAG, jSONObject).booleanValue()) {
                    break;
                }
                z = jSONObject.getBoolean("hasNext");
                JSONArray jSONArray = jSONObject.getJSONArray("rankingList");
                length += jSONArray.length();
                for (int i = 0; i < jSONArray.length(); i++) {
                    JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                    String string = jSONObject2.getString("userId");
                    String maskName = UserIdMap.getMaskName(string);
                    boolean zContains = this.notifyFriendList.getValue().contains(string);
                    boolean z2 = true;
                    if (this.notifyFriendType.getValue().intValue() != 1) {
                        zContains = !zContains;
                    }
                    if (zContains && !string.equals(UserIdMap.getCurrentUid())) {
                        if (!jSONObject2.has("actionType") || !"starve_action".equals(jSONObject2.getString("actionType"))) {
                            z2 = false;
                        }
                        if (jSONObject2.getBoolean("stealingAnimal") && !z2) {
                            JSONObject jSONObject3 = new JSONObject(AntFarmRpcCall.enterFarm("", string));
                            if (MessageUtil.checkMemo(TAG, jSONObject3).booleanValue()) {
                                JSONObject jSONObject4 = jSONObject3.getJSONObject("farmVO").getJSONObject("subFarmVO");
                                String string2 = jSONObject4.getString("farmId");
                                JSONArray jSONArray2 = jSONObject4.getJSONArray("animals");
                                for (int i2 = 0; i2 < jSONArray2.length(); i2++) {
                                    JSONObject jSONObject5 = jSONArray2.getJSONObject(i2);
                                    String string3 = jSONObject5.getString("animalId");
                                    String string4 = jSONObject5.getString("masterFarmId");
                                    if (!string4.equals(string2) && !string4.equals(this.ownerFarmId) && notifyFriend(jSONObject5.getJSONObject("animalStatusVO"), string2, string3, maskName).booleanValue()) {
                                        break;
                                    }
                                }
                            }
                        }
                    }
                }
            } catch (Throwable th) {
                String str = TAG;
                Log.i(str, "notifyFriend err:");
                Log.printStackTrace(str, th);
                return;
            }
        } while (z);
        Log.record("饲料剩余[" + this.foodStock + "g]");
    }

    private Boolean notifyFriend(JSONObject jSONObject, String str, String str2, String str3) {
        try {
            if (AnimalInteractStatus.STEALING.name().equals(jSONObject.getString("animalInteractStatus")) && AnimalFeedStatus.EATING.name().equals(jSONObject.getString("animalFeedStatus"))) {
                JSONObject jSONObject2 = new JSONObject(AntFarmRpcCall.notifyFriend(str2, str));
                if (!MessageUtil.checkMemo(TAG, jSONObject2).booleanValue()) {
                    return false;
                }
                int i = (int) jSONObject2.getDouble("rewardCount");
                if (jSONObject2.getBoolean("refreshFoodStock")) {
                    this.foodStock = (int) jSONObject2.getDouble("finalFoodStock");
                } else {
                    add2FoodStock(i);
                }
                Log.farm("通知赶鸡📧提醒[" + str3 + "]被偷吃#获得[" + i + "g饲料]");
                return true;
            }
        } catch (Throwable th) {
            String str4 = TAG;
            Log.i(str4, "notifyFriend err:");
            Log.printStackTrace(str4, th);
        }
        return false;
    }

    private void parseSyncAnimalStatusResponse(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (jSONObject.has("subFarmVO")) {
                if (jSONObject.has("emotionInfo")) {
                    this.finalScore = jSONObject.getJSONObject("emotionInfo").getDouble("finalScore");
                }
                JSONObject jSONObject2 = jSONObject.getJSONObject("subFarmVO");
                if (jSONObject2.has("foodStock")) {
                    this.foodStock = jSONObject2.getInt("foodStock");
                }
                if (jSONObject2.has("foodInTrough")) {
                    this.foodInTrough = jSONObject2.getInt("foodInTrough");
                }
                if (jSONObject2.has("manureVO")) {
                    JSONArray jSONArray = jSONObject2.getJSONObject("manureVO").getJSONArray("manurePotList");
                    for (int i = 0; i < jSONArray.length(); i++) {
                        JSONObject jSONObject3 = jSONArray.getJSONObject(i);
                        if (jSONObject3.getInt("manurePotNum") >= 100) {
                            JSONObject jSONObject4 = new JSONObject(AntFarmRpcCall.collectManurePot(jSONObject3.getString("manurePotNO")));
                            if (jSONObject4.optBoolean("success")) {
                                Log.farm("打扫鸡屎🧹获得[" + jSONObject4.getInt("collectManurePotNum") + "g肥料]");
                            }
                        }
                    }
                }
                this.ownerFarmId = jSONObject2.getString("farmId");
                this.benevolenceScore = jSONObject2.getJSONObject("farmProduce").getDouble("benevolenceScore");
                if (jSONObject2.has("rewardList")) {
                    JSONArray jSONArray2 = jSONObject2.getJSONArray("rewardList");
                    if (jSONArray2.length() > 0) {
                        this.rewardList = new RewardFriend[jSONArray2.length()];
                        for (int i2 = 0; i2 < this.rewardList.length; i2++) {
                            JSONObject jSONObject5 = jSONArray2.getJSONObject(i2);
                            RewardFriend[] rewardFriendArr = this.rewardList;
                            if (rewardFriendArr[i2] == null) {
                                rewardFriendArr[i2] = new RewardFriend();
                            }
                            this.rewardList[i2].consistencyKey = jSONObject5.getString("consistencyKey");
                            this.rewardList[i2].friendId = jSONObject5.getString("friendId");
                            this.rewardList[i2].time = jSONObject5.getString("time");
                        }
                    }
                }
                JSONArray jSONArray3 = jSONObject2.getJSONArray("animals");
                this.animals = new Animal[jSONArray3.length()];
                for (int i3 = 0; i3 < this.animals.length; i3++) {
                    Animal animal = new Animal();
                    JSONObject jSONObject6 = jSONArray3.getJSONObject(i3);
                    animal.animalId = jSONObject6.getString("animalId");
                    animal.currentFarmId = jSONObject6.getString("currentFarmId");
                    animal.masterFarmId = jSONObject6.getString("masterFarmId");
                    animal.animalBuff = jSONObject6.getString("animalBuff");
                    animal.subAnimalType = jSONObject6.getString("subAnimalType");
                    animal.currentFarmMasterUserId = jSONObject6.getString("currentFarmMasterUserId");
                    animal.locationType = jSONObject6.optString("locationType", "");
                    JSONObject jSONObject7 = jSONObject6.getJSONObject("animalStatusVO");
                    animal.animalFeedStatus = jSONObject7.getString("animalFeedStatus");
                    animal.animalInteractStatus = jSONObject7.getString("animalInteractStatus");
                    animal.animalInteractStatus = jSONObject7.getString("animalInteractStatus");
                    animal.startEatTime = Long.valueOf(jSONObject6.optLong("startEatTime"));
                    animal.beHiredEndTime = Long.valueOf(jSONObject6.optLong("beHiredEndTime"));
                    animal.consumeSpeed = Double.valueOf(jSONObject6.optDouble("consumeSpeed"));
                    animal.foodHaveEatten = Double.valueOf(jSONObject6.optDouble("foodHaveEatten"));
                    if (animal.masterFarmId.equals(this.ownerFarmId)) {
                        this.ownerAnimal = animal;
                    }
                    this.animals[i3] = animal;
                }
            }
        } catch (Throwable th) {
            String str2 = TAG;
            Log.i(str2, "parseSyncAnimalStatusResponse err:");
            Log.printStackTrace(str2, th);
        }
    }

    private void add2FoodStock(int i) {
        int i2 = this.foodStock + i;
        this.foodStock = i2;
        int i3 = this.foodStockLimit;
        if (i2 > i3) {
            this.foodStock = i3;
        }
        if (this.foodStock < 0) {
            this.foodStock = 0;
        }
    }

    private void drawLotteryPlus(JSONObject jSONObject) {
        try {
            if (jSONObject.has("userSevenDaysGiftsItem")) {
                String string = jSONObject.getString("itemId");
                JSONArray jSONArray = jSONObject.getJSONObject("userSevenDaysGiftsItem").getJSONArray("userEverydayGiftItems");
                for (int i = 0; i < jSONArray.length(); i++) {
                    JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                    if (jSONObject2.getString("itemId").equals(string)) {
                        if (!jSONObject2.getBoolean("received")) {
                            String string2 = jSONObject2.getString("singleDesc");
                            int i2 = jSONObject2.getInt("awardCount");
                            if (string2.contains("饲料") && this.foodStock + i2 > this.foodStockLimit) {
                                Log.record("暂停领取[" + i2 + "]克饲料，上限为[" + this.foodStockLimit + "]克");
                                break;
                            }
                            if (!MessageUtil.checkMemo(TAG, new JSONObject(AntFarmRpcCall.drawLotteryPlus())).booleanValue()) {
                                break;
                            }
                            Log.farm("惊喜礼包🎁[" + string2 + "*" + i2 + "]");
                            break;
                        }
                        Log.record("当日奖励已领取");
                        break;
                    }
                }
            }
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "drawLotteryPlus err:");
            Log.printStackTrace(str, th);
        }
    }

    private void visitFriend() {
        for (Map.Entry<String, Integer> entry : this.visitFriendList.getValue().entrySet()) {
            String key = entry.getKey();
            Integer value = entry.getValue();
            if (!key.equals(UserIdMap.getCurrentUid()) && Status.canVisitFriendToday(key, value.intValue()).booleanValue()) {
                visitFriend(key, value.intValue());
            }
        }
    }

    private void visitFriend(String str, int i) {
        try {
            JSONObject jSONObject = new JSONObject(AntFarmRpcCall.enterFarm(str));
            if (MessageUtil.checkMemo(TAG, jSONObject).booleanValue()) {
                JSONObject jSONObject2 = jSONObject.getJSONObject("farmVO");
                this.foodStock = jSONObject2.getInt("foodStock");
                JSONObject jSONObject3 = jSONObject2.getJSONObject("subFarmVO");
                if (jSONObject3.optBoolean("visitedToday", true)) {
                    Status.flagToday("farm::visitFriendLimit::" + str);
                    return;
                }
                String string = jSONObject3.getString("farmId");
                while (Status.canVisitFriendToday(str, i).booleanValue() && this.foodStock >= 10) {
                    JSONObject jSONObject4 = new JSONObject(AntFarmRpcCall.visitFriend(string));
                    if (!MessageUtil.checkMemo(TAG, jSONObject4).booleanValue()) {
                        return;
                    }
                    TimeUtil.sleep(1000L);
                    Status.visitFriendToday(str);
                    this.foodStock = jSONObject4.getInt("foodStock");
                    Log.farm("赠送麦子🌾赠送[" + UserIdMap.getMaskName(str) + "]麦子#消耗[" + jSONObject4.getInt("giveFoodNum") + "g饲料]");
                    if (jSONObject4.optBoolean("isReachLimit")) {
                        Log.record("今日给[" + UserIdMap.getMaskName(str) + "]送麦子已达上限");
                        StringBuilder sb = new StringBuilder();
                        sb.append("farm::visitFriendLimit::");
                        sb.append(str);
                        Status.flagToday(sb.toString());
                        return;
                    }
                }
            }
        } catch (Throwable th) {
            String str2 = TAG;
            Log.i(str2, "visitFriend err:");
            Log.printStackTrace(str2, th);
        }
    }

    private void acceptGift() {
        try {
            JSONObject jSONObject = new JSONObject(AntFarmRpcCall.acceptGift());
            if (MessageUtil.checkMemo(TAG, jSONObject).booleanValue()) {
                Log.farm("收取麦子🌾[" + jSONObject.getInt("receiveFoodNum") + "g]");
            }
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "acceptGift err:");
            Log.printStackTrace(str, th);
        }
    }

    private void queryChickenDiary(String str) {
        try {
            JSONObject jSONObject = new JSONObject(AntFarmRpcCall.queryChickenDiary(str));
            String str2 = TAG;
            if (MessageUtil.checkResultCode(str2, jSONObject).booleanValue()) {
                JSONObject jSONObject2 = jSONObject.getJSONObject("data");
                JSONObject jSONObject3 = jSONObject2.getJSONObject("chickenDiary");
                String string = jSONObject3.getString("diaryDateStr");
                if (!jSONObject2.has("hasTietie") || jSONObject2.optBoolean("hasTietie", true)) {
                    return;
                }
                JSONObject jSONObject4 = new JSONObject(AntFarmRpcCall.diaryTietie(string, "NEW"));
                if (MessageUtil.checkMemo(str2, jSONObject4).booleanValue()) {
                    Log.farm("贴贴小鸡💞奖励[" + jSONObject4.getString("prizeType") + "*" + jSONObject4.optInt("prizeNum", 0) + "]");
                }
                if (jSONObject3.has("statisticsList")) {
                    JSONArray jSONArray = jSONObject3.getJSONArray("statisticsList");
                    if (jSONArray.length() > 0) {
                        for (int i = 0; i < jSONArray.length(); i++) {
                            JSONObject jSONObject5 = new JSONObject(AntFarmRpcCall.diaryTietie(string, jSONArray.getJSONObject(i).getString("tietieRoleId")));
                            if (MessageUtil.checkMemo(TAG, jSONObject5).booleanValue()) {
                                Log.farm("贴贴小鸡💞奖励[" + jSONObject5.getString("prizeType") + "*" + jSONObject5.optInt("prizeNum", 0) + "]");
                            }
                        }
                    }
                }
            }
        } catch (Throwable th) {
            String str3 = TAG;
            Log.i(str3, "queryChickenDiary err:");
            Log.printStackTrace(str3, th);
        }
    }

    private void queryChickenDiaryList() {
        JSONArray jSONArrayOptJSONArray;
        try {
            JSONObject jSONObject = new JSONObject(AntFarmRpcCall.queryChickenDiaryList());
            if (MessageUtil.checkResultCode(TAG, jSONObject).booleanValue() && (jSONArrayOptJSONArray = jSONObject.getJSONObject("data").optJSONArray("chickenDiaryBriefList")) != null && jSONArrayOptJSONArray.length() > 0) {
                for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                    JSONObject jSONObject2 = jSONArrayOptJSONArray.getJSONObject(i);
                    if (!jSONObject2.optBoolean("read", true)) {
                        queryChickenDiary(jSONObject2.getString("dateStr"));
                        TimeUtil.sleep(300L);
                    }
                }
            }
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "queryChickenDiaryList err:");
            Log.printStackTrace(str, th);
        }
    }

    private void visitAnimal() {
        JSONArray jSONArray;
        try {
            JSONObject jSONObject = new JSONObject(AntFarmRpcCall.visitAnimal());
            String str = TAG;
            if (MessageUtil.checkMemo(str, jSONObject).booleanValue() && jSONObject.has("talkConfigs")) {
                JSONArray jSONArray2 = jSONObject.getJSONArray("talkNodes");
                JSONArray jSONArray3 = jSONObject.getJSONArray("talkConfigs");
                String string = jSONArray3.getJSONObject(0).getString("farmId");
                if (MessageUtil.checkMemo(str, new JSONObject(AntFarmRpcCall.feedFriendAnimalVisit(string))).booleanValue()) {
                    int i = 0;
                    while (true) {
                        if (i >= jSONArray2.length()) {
                            jSONArray = null;
                            break;
                        }
                        JSONObject jSONObject2 = jSONArray2.getJSONObject(i);
                        if (jSONObject2.has("actionNodes")) {
                            jSONArray = jSONObject2.getJSONArray("actionNodes");
                            break;
                        }
                        i++;
                    }
                    if (jSONArray == null) {
                        return;
                    }
                    for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                        JSONObject jSONObject3 = jSONArray.getJSONObject(i2);
                        if ("FEED".equals(jSONObject3.getString("type"))) {
                            JSONObject jSONObject4 = new JSONObject(AntFarmRpcCall.visitAnimalSendPrize(jSONObject3.getString("consistencyKey")));
                            if (MessageUtil.checkMemo(TAG, jSONObject4).booleanValue()) {
                                String string2 = jSONObject4.getString("prizeName");
                                Log.farm("小鸡到访💞投喂[" + UserIdMap.getMaskName(AntFarmRpcCall.farmId2UserId(string)) + "]#获得[" + string2 + "]");
                            }
                        }
                    }
                }
            }
        } catch (Throwable th) {
            String str2 = TAG;
            Log.i(str2, "visitAnimal err:");
            Log.printStackTrace(str2, th);
        }
    }

    private void queryOptionalPlay() {
        try {
            JSONObject jSONObject = new JSONObject(AntFarmRpcCall.queryOptionalPlay());
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
                            JSONObject jSONObject3 = new JSONObject(AntFarmRpcCall.receiveTaskAwardantfarm(iOptInt, string3, string));
                            if (MessageUtil.checkSuccess(TAG, jSONObject3).booleanValue()) {
                                int iOptInt2 = jSONObject3.optInt("incAwardCount");
                                Log.farm("小鸡乐园🎖️领取[" + string4 + "]奖励[" + jSONObject3.optJSONObject("taskConfigResultVO").optString("awardType") + "*" + iOptInt2 + "]");
                            } else {
                                continue;
                            }
                        }
                    }
                }
            }
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "queryOptionalPlay err:");
            Log.printStackTrace(str, th);
        }
    }

    private void gameCenterBuyMallItem() {
        try {
            getAllSkuInfo();
            for (Map.Entry<String, Integer> entry : this.gameCenterBuyMallItemList.getValue().entrySet()) {
                String key = entry.getKey();
                Integer value = entry.getValue();
                if (value != null && value.intValue() >= 0) {
                    while (Status.canGameCenterBuyMallItemToday(key, value.intValue()).booleanValue() && BuyMallItem(key).booleanValue()) {
                        TimeUtil.sleep(3000L);
                    }
                }
            }
            queryOptionalPlay();
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "gameCenterBuyMallItem err:");
            Log.printStackTrace(str, th);
        }
    }

    private JSONArray getGameCenterMallItemList(String str) {
        try {
            JSONObject jSONObject = new JSONObject(AntFarmRpcCall.getMallHome(str));
            if (MessageUtil.checkSuccess(TAG, jSONObject).booleanValue()) {
                return jSONObject.optJSONArray("mallItemSimpleList");
            }
            return null;
        } catch (Throwable th) {
            String str2 = TAG;
            Log.i(str2, "getGameCenterMallItemList err:");
            Log.printStackTrace(str2, th);
            return null;
        }
    }

    private void getAllSkuInfo() {
        try {
            JSONArray gameCenterMallItemList = getGameCenterMallItemList("ANTFARM_GAME_CENTER");
            if (gameCenterMallItemList == null) {
                return;
            }
            for (int i = 0; i < gameCenterMallItemList.length(); i++) {
                getSkuInfoByItemInfoVO(gameCenterMallItemList.getJSONObject(i));
            }
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "getAllSkuInfo err:");
            Log.printStackTrace(str, th);
        }
    }

    private void getSkuInfoBySpuId(String str) {
        try {
            JSONObject jSONObject = new JSONObject(AntFarmRpcCall.getMallItemDetail(str));
            if (MessageUtil.checkSuccess(TAG, jSONObject).booleanValue() && jSONObject.has("spuItemInfoVo")) {
                getSkuInfoByItemInfoVO(jSONObject.optJSONObject("spuItemInfoVO"));
            }
        } catch (Throwable th) {
            String str2 = TAG;
            Log.i(str2, "getSkuInfoBySpuId err:");
            Log.printStackTrace(str2, th);
        }
    }

    private void getSkuInfoByItemInfoVO(JSONObject jSONObject) {
        try {
            String string = jSONObject.getString("spuId");
            JSONObject jSONObject2 = new JSONObject(AntFarmRpcCall.getMallItemDetail(string));
            if (MessageUtil.checkSuccess(TAG, jSONObject2).booleanValue()) {
                JSONObject jSONObjectOptJSONObject = jSONObject2.optJSONObject("mallItemDetail");
                if (jSONObjectOptJSONObject.has("mallSubItemDetailList")) {
                    JSONArray jSONArray = jSONObjectOptJSONObject.getJSONArray("mallSubItemDetailList");
                    for (int i = 0; i < jSONArray.length(); i++) {
                        JSONObject jSONObject3 = jSONArray.getJSONObject(i);
                        String string2 = jSONObject3.getString("skuId");
                        String string3 = jSONObject3.getString("skuName");
                        if (!jSONObject3.has("spuId")) {
                            jSONObject3.put("spuId", string);
                        }
                        this.skuInfo.put(string2, jSONObject3);
                        GameCenterMallItemMap.add(string2, string3);
                    }
                    GameCenterMallItemMap.save(UserIdMap.getCurrentUid());
                }
            }
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "getSkuInfoByItemInfoVO err:");
            Log.printStackTrace(str, th);
        }
    }

    private Boolean BuyMallItem(String str) {
        int i;
        if (this.skuInfo.isEmpty()) {
            getAllSkuInfo();
        }
        JSONObject jSONObject = this.skuInfo.get(str);
        if (jSONObject == null) {
            Log.record("小鸡乐园🎐找不到要兑奖的权益！");
            return false;
        }
        try {
            String string = jSONObject.getString("skuName");
            JSONArray jSONArray = jSONObject.getJSONArray("itemStatusList");
            while (i < jSONArray.length()) {
                String string2 = jSONArray.getString(i);
                i = (ItemStatus.REACH_LIMIT.name().equals(string2) || ItemStatus.REACH_USER_HOLD_LIMIT.name().equals(string2) || ItemStatus.NO_ENOUGH_POINT.name().equals(string2)) ? 0 : i + 1;
                Log.record("乐币兑奖🎐[" + string + "]停止:" + ItemStatus.valueOf(string2).nickName());
                if (ItemStatus.REACH_LIMIT.name().equals(string2)) {
                    Status.flagToday("farm::buyLimit::" + str);
                }
                return false;
            }
            String string3 = jSONObject.getString("spuId");
            if (BuyMallItem(string3, str, string).booleanValue()) {
                return true;
            }
            getSkuInfoBySpuId(string3);
            return false;
        } catch (Throwable th) {
            String str2 = TAG;
            Log.i(str2, "BuyMallItem err:");
            Log.printStackTrace(str2, th);
        }
    }

    public static Boolean BuyMallItem(String str, String str2, String str3) {
        try {
            if (BuyMallItem(str, str2).booleanValue()) {
                Status.gameCenterBuyMallItemToday(str2);
                Log.farm("乐币兑奖🎐[" + str3 + "]#第" + Status.getGameCenterBuyMallItemCountToday(str2) + "次");
                return true;
            }
            Status.gameCenterBuyMallItemToday(str2);
            return false;
        } catch (Throwable th) {
            String str4 = TAG;
            Log.i(str4, "BuyMallItem err:");
            Log.printStackTrace(str4, th);
            return false;
        }
    }

    private static Boolean BuyMallItem(String str, String str2) {
        try {
            JSONObject jSONObject = new JSONObject(AntFarmRpcCall.buyMallItem(str, str2));
            if (jSONObject.has("errorMessage") && jSONObject.optString("errorMessage").equals("系统繁忙，请稍后再试。")) {
                Status.flagToday("farm::buyLimit::" + str2);
            }
            return MessageUtil.checkResultCode(TAG, jSONObject);
        } catch (Throwable th) {
            String str3 = TAG;
            Log.i(str3, "BuyMallItem err:");
            Log.printStackTrace(str3, th);
            return false;
        }
    }

    private void drawMachineGroups() {
        JSONObject jSONObjectOptJSONObject;
        try {
            JSONObject jSONObject = new JSONObject(AntFarmRpcCall.queryLoveCabin(UserIdMap.getCurrentUid()));
            String str = TAG;
            if (MessageUtil.checkMemo(str, jSONObject).booleanValue()) {
                drawMachine("ANTFARM_DAILY_DRAW_TASK", "dailyDrawMachine", "ipDrawMachine");
                JSONObject jSONObject2 = new JSONObject(AntFarmRpcCall.queryDrawMachineActivity("ipDrawMachine", "dailyDrawMachine"));
                if (MessageUtil.checkMemo(str, jSONObject2).booleanValue() && jSONObject2.has("otherDrawMachineActivityIds") && jSONObject2.getJSONArray("otherDrawMachineActivityIds").length() > 0) {
                    drawMachine("ANTFARM_IP_DRAW_TASK", "ipDrawMachine", "dailyDrawMachine");
                    if (this.IPexchangeBenefit.getValue().booleanValue()) {
                        try {
                            JSONObject jSONObject3 = new JSONObject(AntFarmRpcCall.queryDrawMachineActivity("dailyDrawMachine", "ipDrawMachine"));
                            if (MessageUtil.checkResultCode(str, jSONObject3).booleanValue() && (jSONObjectOptJSONObject = jSONObject3.optJSONObject("drawMachineActivity")) != null) {
                                String strOptString = jSONObjectOptJSONObject.optString("activityId");
                                if (!strOptString.isEmpty() && IPexchangeBenefit(strOptString, "DRESS") && IPexchangeBenefit(strOptString, "REISSUE_CARD") && IPexchangeBenefit(strOptString, "DELICIOUS_FOOD")) {
                                    IPexchangeBenefit(strOptString, "ANTFARM_IP_DRAW_MALL");
                                    return;
                                }
                                return;
                            }
                            return;
                        } catch (Throwable th) {
                            String str2 = TAG;
                            Log.i(str2, "drawMachine err:");
                            Log.printStackTrace(str2, th);
                            return;
                        }
                        Log.i(TAG, "queryLoveCabin err:");
                        Log.printStackTrace(th);
                    }
                }
            }
        } catch (Throwable th2) {
            Log.i(TAG, "queryLoveCabin err:");
            Log.printStackTrace(th2);
        }
    }

    private void drawMachine(String str, String str2, String str3) {
        doFarmDrawTask(str);
        try {
            int iOptInt = new JSONObject(AntFarmRpcCall.queryDrawMachineActivity(str3, str2)).optInt("drawTimes", 0);
            for (int i = 0; i < iOptInt && drawMachine(str2).booleanValue(); i++) {
                TimeUtil.sleep(5000L);
            }
        } catch (Throwable th) {
            String str4 = TAG;
            Log.i(str4, "drawMachine err:");
            Log.printStackTrace(str4, th);
        }
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0053  */
    private void doFarmDrawTask(final String str) {
        JSONArray jSONArray;
        int i;
        String str2;
        String str3;
        String str4 = "玩";
        String str5 = "";
        try {
            JSONObject jSONObject = new JSONObject(AntFarmRpcCall.listFarmDrawTask(str));
            if (MessageUtil.checkMemo(TAG, jSONObject).booleanValue()) {
                JSONArray jSONArray2 = jSONObject.getJSONArray("farmTaskList");
                int i2 = 0;
                while (i2 < jSONArray2.length()) {
                    final JSONObject jSONObject2 = jSONArray2.getJSONObject(i2);
                    String string = jSONObject2.getString("taskStatus");
                    final String string2 = jSONObject2.getString("title");
                    final int iOptInt = jSONObject2.optInt("rightsTimesLimit");
                    final int iOptInt2 = jSONObject2.optInt("rightsTimes");
                    if (TaskStatus.RECEIVED.name().equals(string)) {
                        str2 = str4;
                        str3 = str5;
                        jSONArray = jSONArray2;
                        i = i2;
                    } else {
                        if (TaskStatus.FINISHED.name().equals(string)) {
                            receiveFarmDrawTaskAward(jSONObject2.getString("taskId"), string2, jSONObject2.optString("awardType"), str);
                            if (iOptInt <= 0 || iOptInt <= iOptInt2) {
                                str2 = str4;
                                str3 = str5;
                                jSONArray = jSONArray2;
                                i = i2;
                            }
                        }
                        jSONArray = jSONArray2;
                        i = i2;
                        if (this.AntFarmDrawMachineTaskList.getValue().contains(string2)) {
                            if (!jSONObject2.optString("taskId").contains("SHANGYEHUA")) {
                                TaskAlternative.handleGameTask(new TaskAlternative.GameTask("AntFarmDrawMachineTaskList", string2, jSONObject2.optString("desc", str5), jSONObject2.optString("targetUrl", str5), string).bizKey(jSONObject2.optString("bizKey", jSONObject2.optString("taskId"))).rights(iOptInt2, iOptInt).taskRemain(Math.max(0, jSONObject2.optInt("taskRequire", 0) - jSONObject2.optInt("taskProgress", 0))).taskSceneCode(str).scene("ANTFARM", "H5").beforeGameLink(new Runnable() { // from class: io.github.lazyimmortal.sesame.model.task.antFarm.AntFarm$$ExternalSyntheticLambda8
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        AntFarm.lambda$doFarmDrawTask$2(iOptInt2, iOptInt, jSONObject2, str, string2);
                                    }
                                }));
                            }
                            str2 = str4;
                            str3 = str5;
                        } else {
                            if (TaskStatus.TODO.name().equals(string)) {
                                str3 = str5;
                                if (jSONObject2.optString("taskId").contains("SHANGYEHUA")) {
                                    int iRightsTimesToDo = TaskAlternative.rightsTimesToDo(iOptInt2, iOptInt);
                                    for (int i3 = 0; i3 < iRightsTimesToDo; i3++) {
                                        MessageUtil.checkResultCodeAndMarkTaskBlackList("AntFarmDrawMachineTaskList", string2, new JSONObject(AntFarmRpcCall.finishTask(jSONObject2.optString("taskId"), str)));
                                        Log.farm("装扮抽奖🧾完成[" + string2 + "]" + TaskAlternative.rightsProgressText(iOptInt2, iOptInt, i3));
                                    }
                                    TimeUtil.sleep(1000L);
                                } else if (jSONObject2.optString("title").contains(str4) && jSONObject2.optString("desc").contains(str4) && jSONObject2.optString("desc").contains("s")) {
                                    int iRightsTimesToDo2 = TaskAlternative.rightsTimesToDo(iOptInt2, iOptInt);
                                    for (int i4 = 0; i4 < iRightsTimesToDo2; i4++) {
                                        MessageUtil.checkResultCodeAndMarkTaskBlackList("AntFarmDrawMachineTaskList", string2, new JSONObject(AntFarmRpcCall.finishTask(jSONObject2.optString("taskId"), str)));
                                        Log.farm("装扮抽奖🧾完成[" + string2 + "]" + TaskAlternative.rightsProgressText(iOptInt2, iOptInt, i4));
                                    }
                                    TimeUtil.sleep(1000L);
                                } else {
                                    int iRightsTimesToDo3 = TaskAlternative.rightsTimesToDo(iOptInt2, iOptInt);
                                    int i5 = 0;
                                    while (i5 < iRightsTimesToDo3) {
                                        MessageUtil.checkResultCodeAndMarkTaskBlackList("AntFarmDrawMachineTaskList", string2, new JSONObject(AntFarmRpcCall.doFarmTask(jSONObject2.optString("bizKey"), str)));
                                        Log.farm("装扮抽奖🧾完成[" + string2 + "]" + TaskAlternative.rightsProgressText(iOptInt2, iOptInt, i5));
                                        i5++;
                                        iRightsTimesToDo3 = iRightsTimesToDo3;
                                        str4 = str4;
                                    }
                                    str2 = str4;
                                    TimeUtil.sleep(1000L);
                                }
                                str2 = str4;
                            } else {
                                str2 = str4;
                                str3 = str5;
                            }
                            TimeUtil.sleep(2000L);
                            receiveFarmDrawTaskAward(jSONObject2.getString("taskId"), string2, jSONObject2.optString("awardType"), str);
                        }
                    }
                    i2 = i + 1;
                    str5 = str3;
                    jSONArray2 = jSONArray;
                    str4 = str2;
                }
            }
        } catch (Throwable th) {
            String str6 = TAG;
            Log.i(str6, "doFarmDrawActivityTimeTask err:");
            Log.printStackTrace(str6, th);
        }
    }

    static /* synthetic */ void lambda$doFarmDrawTask$2(int i, int i2, JSONObject jSONObject, String str, String str2) {
        try {
            int iRightsTimesToDo = TaskAlternative.rightsTimesToDo(i, i2);
            for (int i3 = 0; i3 < iRightsTimesToDo; i3++) {
                MessageUtil.checkResultCodeAndMarkTaskBlackList("AntFarmDrawMachineTaskList", str2, new JSONObject(AntFarmRpcCall.doFarmTask(jSONObject.optString("bizKey"), str)));
                Log.farm("装扮抽奖🧾申报[" + str2 + "]" + TaskAlternative.rightsProgressText(i, i2, i3));
            }
            TimeUtil.sleep(1000L);
        } catch (Throwable th) {
            String str3 = TAG;
            Log.i(str3, "doFarmDrawTaskPseudo err:");
            Log.printStackTrace(str3, th);
        }
    }

    private void receiveFarmDrawTaskAward(String str, String str2, String str3, String str4) {
        try {
            JSONObject jSONObject = new JSONObject(AntFarmRpcCall.receiveFarmDrawTimesTaskAward(str, str3, str4));
            MessageUtil.checkResultCodeAndMarkTaskBlackList("AntFarmDrawMachineTaskList", str2, jSONObject);
            if (MessageUtil.checkMemo(TAG, jSONObject).booleanValue()) {
                Log.farm("装扮抽奖🎖️领取[" + str2 + "]奖励");
            }
        } catch (Throwable th) {
            String str5 = TAG;
            Log.i(str5, "receiveFarmDrawTimesTaskAward err:");
            Log.printStackTrace(str5, th);
        }
    }

    private Boolean drawMachine(String str) {
        try {
            JSONObject jSONObject = new JSONObject(AntFarmRpcCall.drawMachine(str));
            if (MessageUtil.checkMemo(TAG, jSONObject).booleanValue()) {
                if (!jSONObject.has("title")) {
                    jSONObject = jSONObject.optJSONObject("drawMachinePrize");
                }
                Log.farm("装扮抽奖🎁抽中[" + jSONObject.optString("title") + "]");
                return true;
            }
        } catch (Throwable th) {
            String str2 = TAG;
            Log.i(str2, "drawMachine err:");
            Log.printStackTrace(str2, th);
        }
        return false;
    }

    public boolean IPexchangeBenefit(String str, String str2) {
        Iterator it;
        JSONArray jSONArrayOptJSONArray;
        JSONObject jSONObjectOptJSONObject;
        AntFarm antFarm = this;
        int i = 0;
        try {
            JSONObject jSONObject = new JSONObject(AntFarmRpcCall.getItemList(str, 10, 0));
            if (!jSONObject.optBoolean("success", false) && !"100000000".equals(jSONObject.optString("code"))) {
                return false;
            }
            JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject("mallAccountInfoVO");
            String str3 = "cent";
            int iOptInt = (jSONObjectOptJSONObject2 == null || (jSONObjectOptJSONObject = jSONObjectOptJSONObject2.optJSONObject("holdingCount")) == null) ? 0 : jSONObjectOptJSONObject.optInt("cent", 0);
            JSONArray jSONArrayOptJSONArray2 = jSONObject.optJSONArray("itemInfoVOList");
            if (jSONArrayOptJSONArray2 == null) {
                return true;
            }
            ArrayList<JSONObject> arrayList = new ArrayList();
            int i2 = 0;
            while (i2 < jSONArrayOptJSONArray2.length()) {
                JSONObject jSONObjectOptJSONObject3 = jSONArrayOptJSONArray2.optJSONObject(i2);
                if (jSONObjectOptJSONObject3 != null && (jSONArrayOptJSONArray = jSONObjectOptJSONObject3.optJSONArray("labelTypeList")) != null) {
                    boolean z = false;
                    for (int i3 = 0; i3 < jSONArrayOptJSONArray.length(); i3++) {
                        if (jSONArrayOptJSONArray.optString(i3).contains(str2)) {
                            z = true;
                        }
                    }
                    if (z) {
                        boolean zIsReachedLimit = antFarm.isReachedLimit(jSONObjectOptJSONObject3);
                        JSONObject jSONObjectOptJSONObject4 = jSONObjectOptJSONObject3.optJSONObject("minPrice");
                        int iOptInt2 = jSONObjectOptJSONObject4 != null ? jSONObjectOptJSONObject4.optInt(str3, i) : 0;
                        JSONArray jSONArrayOptJSONArray3 = jSONObjectOptJSONObject3.optJSONArray("skuModelList");
                        if (jSONArrayOptJSONArray3 != null) {
                            while (i < jSONArrayOptJSONArray3.length()) {
                                JSONObject jSONObjectOptJSONObject5 = jSONArrayOptJSONArray3.optJSONObject(i);
                                if (jSONObjectOptJSONObject5 != null) {
                                    jSONObjectOptJSONObject5.put("_spuId", jSONObjectOptJSONObject3.optString("spuId"));
                                    jSONObjectOptJSONObject5.put("_spuName", jSONObjectOptJSONObject3.optString("spuName"));
                                    jSONObjectOptJSONObject5.put("_isReachLimit", zIsReachedLimit || antFarm.isReachedLimit(jSONObjectOptJSONObject5));
                                    jSONObjectOptJSONObject5.put("_cent", iOptInt2);
                                    arrayList.add(jSONObjectOptJSONObject5);
                                }
                                i++;
                                str3 = str3;
                                jSONArrayOptJSONArray3 = jSONArrayOptJSONArray3;
                            }
                        }
                    }
                }
                i2++;
                jSONArrayOptJSONArray2 = jSONArrayOptJSONArray2;
                str3 = str3;
                i = 0;
            }
            if (Build.VERSION.SDK_INT >= 24) {
                arrayList.sort(new Comparator() { // from class: io.github.lazyimmortal.sesame.model.task.antFarm.AntFarm$$ExternalSyntheticLambda2
                    @Override // java.util.Comparator
                    public final int compare(Object obj, Object obj2) {
                        return Integer.compare(((JSONObject) obj2).optInt("_cent", 0), ((JSONObject) obj).optInt("_cent", 0));
                    }
                });
            } else {
                Collections.sort(arrayList, new Comparator<JSONObject>() { // from class: io.github.lazyimmortal.sesame.model.task.antFarm.AntFarm.1
                    @Override // java.util.Comparator
                    public int compare(JSONObject jSONObject2, JSONObject jSONObject3) {
                        return Integer.compare(jSONObject3.optInt("_cent", 0), jSONObject2.optInt("_cent", 0));
                    }
                });
            }
            for (JSONObject jSONObject2 : arrayList) {
                if (!jSONObject2.optBoolean("_isReachLimit")) {
                    int iOptInt3 = jSONObject2.optInt("_cent", 0);
                    String strOptString = jSONObject2.optString("skuName");
                    if (!antFarm.isNoEnoughPoint(jSONObject2) && (iOptInt3 <= 0 || iOptInt >= iOptInt3)) {
                        break;
                        break;
                    }
                    Log.record("兑换[" + str2 + "]类最高价值[" + strOptString + "]碎片不足(持有" + (iOptInt / 100) + "需" + (iOptInt3 / 100) + ")");
                    return false;
                }
            }
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                JSONObject jSONObject3 = (JSONObject) it2.next();
                if (!jSONObject3.optBoolean("_isReachLimit")) {
                    String strOptString2 = jSONObject3.optString("skuName");
                    int iOptInt4 = jSONObject3.optInt("_cent", 0);
                    String strOptString3 = jSONObject3.optString("skuExtendInfo");
                    int i4 = strOptString3.contains("20次") ? 20 : strOptString3.contains("5次") ? 5 : 1;
                    if (!antFarm.isNoEnoughPoint(jSONObject3) && (iOptInt4 <= 0 || iOptInt >= iOptInt4)) {
                        int i5 = 0;
                        while (true) {
                            if (i5 >= i4 || (iOptInt4 > 0 && iOptInt < iOptInt4)) {
                                it = it2;
                                break;
                            }
                            it = it2;
                            String strOptString4 = new JSONObject(AntFarmRpcCall.exchangeBenefit(jSONObject3.optString("_spuId"), jSONObject3.optString("skuId"), str, "ANTFARM_IP_DRAW_MALL", "antfarm_villa")).optString("resultCode");
                            if ("SUCCESS".equals(strOptString4)) {
                                i5++;
                                iOptInt -= iOptInt4;
                                Log.farm("兑换装扮👔[" + str2 + "]类[" + strOptString2 + "]#剩余碎片" + (iOptInt / 100));
                                TimeUtil.sleep(800L);
                                it2 = it;
                            } else {
                                if (!"NO_ENOUGH_POINT".equals(strOptString4)) {
                                    if (!strOptString4.contains("LIMIT")) {
                                        strOptString4.contains("MAX");
                                        break;
                                    }
                                    break;
                                }
                                return false;
                            }
                        }
                        antFarm = this;
                        it2 = it;
                    }
                    Log.record("剩余碎片不足以兑换[" + str2 + "]类优先级项 [" + strOptString2 + "] (需 " + (iOptInt4 / 100) + ")，停止后续兑换任务");
                    return false;
                }
            }
            return true;
        } catch (Exception e) {
            Log.printStackTrace("自动兑换异常", e);
            return false;
        }
    }

    private boolean isReachedLimit(JSONObject jSONObject) {
        if (jSONObject == null) {
            return false;
        }
        if ("REACH_LIMIT".equals(jSONObject.optString("itemStatus"))) {
            return true;
        }
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("itemStatusList");
        if (jSONArrayOptJSONArray != null) {
            for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                String strOptString = jSONArrayOptJSONArray.optString(i);
                if ("REACH_LIMIT".equals(strOptString) || strOptString.contains("LIMIT")) {
                    return true;
                }
            }
        }
        return false;
    }

    private boolean isNoEnoughPoint(JSONObject jSONObject) {
        if (jSONObject == null) {
            return false;
        }
        if ("NO_ENOUGH_POINT".equals(jSONObject.optString("itemStatus"))) {
            return true;
        }
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("itemStatusList");
        if (jSONArrayOptJSONArray != null) {
            for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                if ("NO_ENOUGH_POINT".equals(jSONArrayOptJSONArray.optString(i))) {
                    return true;
                }
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hireAnimal() {
        ModelTask.ChildModelTask childModelTask;
        ModelTask.ChildModelTask childModelTask2;
        try {
            syncAnimalStatus(this.ownerFarmId);
            if (AnimalFeedStatus.EATING.name().equals(this.ownerAnimal.animalFeedStatus)) {
                int length = 3 - this.animals.length;
                if (length <= 0) {
                    childModelTask2 = new ModelTask.ChildModelTask("UPDATE|HIRE|" + this.ownerFarmId, "UPDATE", new Runnable() { // from class: io.github.lazyimmortal.sesame.model.task.antFarm.AntFarm$$ExternalSyntheticLambda3
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.autoHireAnimal();
                        }
                    }, Long.valueOf(System.currentTimeMillis() + TimeUnit.SECONDS.toMillis(10L)));
                } else {
                    Log.farm("雇佣小鸡👷[当前可雇佣小鸡数量:" + length + "只]");
                    if (this.foodStock >= 50) {
                        Set<String> value = this.hireAnimalList.getValue();
                        int length2 = 0;
                        do {
                            JSONObject jSONObject = new JSONObject(AntFarmRpcCall.rankingList(length2));
                            if (MessageUtil.checkMemo(TAG, jSONObject).booleanValue()) {
                                JSONArray jSONArray = jSONObject.getJSONArray("rankingList");
                                boolean z = jSONObject.getBoolean("hasNext");
                                length2 += jSONArray.length();
                                for (int i = 0; i < jSONArray.length() && length > 0; i++) {
                                    JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                                    String string = jSONObject2.getString("userId");
                                    boolean zContains = value.contains(string);
                                    if (this.hireAnimalType.getValue().intValue() != 1) {
                                        zContains = !zContains;
                                    }
                                    if (zContains && !string.equals(UserIdMap.getCurrentUid()) && jSONObject2.getJSONArray("actionTypeList").toString().contains("can_hire_action") && hireAnimalAction(string).booleanValue()) {
                                        length--;
                                        autoFeedAnimal();
                                    }
                                }
                                if (!z) {
                                    break;
                                }
                            } else {
                                childModelTask2 = new ModelTask.ChildModelTask("UPDATE|HIRE|" + this.ownerFarmId, "UPDATE", new Runnable() { // from class: io.github.lazyimmortal.sesame.model.task.antFarm.AntFarm$$ExternalSyntheticLambda3
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        this.f$0.autoHireAnimal();
                                    }
                                }, Long.valueOf(System.currentTimeMillis() + TimeUnit.SECONDS.toMillis(10L)));
                            }
                        } while (length > 0);
                        if (length > 0) {
                            Log.farm("没有足够的小鸡可以雇佣");
                        }
                        childModelTask = new ModelTask.ChildModelTask("UPDATE|HIRE|" + this.ownerFarmId, "UPDATE", new Runnable() { // from class: io.github.lazyimmortal.sesame.model.task.antFarm.AntFarm$$ExternalSyntheticLambda3
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f$0.autoHireAnimal();
                            }
                        }, Long.valueOf(System.currentTimeMillis() + TimeUnit.SECONDS.toMillis(10L)));
                        addChildTask(childModelTask);
                        return;
                    }
                    Log.record("饲料不足，暂不雇佣");
                    childModelTask2 = new ModelTask.ChildModelTask("UPDATE|HIRE|" + this.ownerFarmId, "UPDATE", new Runnable() { // from class: io.github.lazyimmortal.sesame.model.task.antFarm.AntFarm$$ExternalSyntheticLambda3
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.autoHireAnimal();
                        }
                    }, Long.valueOf(System.currentTimeMillis() + TimeUnit.SECONDS.toMillis(10L)));
                }
            } else {
                childModelTask2 = new ModelTask.ChildModelTask("UPDATE|HIRE|" + this.ownerFarmId, "UPDATE", new Runnable() { // from class: io.github.lazyimmortal.sesame.model.task.antFarm.AntFarm$$ExternalSyntheticLambda3
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.autoHireAnimal();
                    }
                }, Long.valueOf(System.currentTimeMillis() + TimeUnit.SECONDS.toMillis(10L)));
            }
            addChildTask(childModelTask2);
        } catch (Throwable th) {
            try {
                String str = TAG;
                Log.i(str, "hireAnimal err:");
                Log.printStackTrace(str, th);
                childModelTask = new ModelTask.ChildModelTask("UPDATE|HIRE|" + this.ownerFarmId, "UPDATE", new Runnable() { // from class: io.github.lazyimmortal.sesame.model.task.antFarm.AntFarm$$ExternalSyntheticLambda3
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.autoHireAnimal();
                    }
                }, Long.valueOf(System.currentTimeMillis() + TimeUnit.SECONDS.toMillis(10L)));
            } catch (Throwable th2) {
                addChildTask(new ModelTask.ChildModelTask("UPDATE|HIRE|" + this.ownerFarmId, "UPDATE", new Runnable() { // from class: io.github.lazyimmortal.sesame.model.task.antFarm.AntFarm$$ExternalSyntheticLambda3
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.autoHireAnimal();
                    }
                }, Long.valueOf(System.currentTimeMillis() + TimeUnit.SECONDS.toMillis(10L))));
                throw th2;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void autoHireAnimal() {
        try {
            syncAnimalStatus(this.ownerFarmId);
            for (Animal animal : this.animals) {
                if (SubAnimalType.WORK.name().equals(animal.subAnimalType)) {
                    String str = "HIRE|" + animal.animalId;
                    if (hasChildTask(str).booleanValue()) {
                        continue;
                    } else {
                        Long l = animal.beHiredEndTime;
                        l.longValue();
                        addChildTask(new ModelTask.ChildModelTask(str, "HIRE", new Runnable() { // from class: io.github.lazyimmortal.sesame.model.task.antFarm.AntFarm$$ExternalSyntheticLambda4
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f$0.hireAnimal();
                            }
                        }, l));
                        Log.record("添加蹲点雇佣👷在[" + TimeUtil.getCommonDate(l) + "]执行");
                    }
                }
            }
        } catch (Throwable th) {
            String str2 = TAG;
            Log.i(str2, "autoHireAnimal err:");
            Log.printStackTrace(str2, th);
        }
    }

    private Boolean hireAnimalAction(String str) {
        try {
            JSONObject jSONObject = new JSONObject(AntFarmRpcCall.enterFarm("", str));
            if (!MessageUtil.checkMemo(TAG, jSONObject).booleanValue()) {
                return false;
            }
            JSONObject jSONObject2 = jSONObject.getJSONObject("farmVO").getJSONObject("subFarmVO");
            String string = jSONObject2.getString("farmId");
            JSONArray jSONArray = jSONObject2.getJSONArray("animals");
            int length = jSONArray.length();
            for (int i = 0; i < length; i++) {
                JSONObject jSONObject3 = jSONArray.getJSONObject(i);
                if (Objects.equals(jSONObject3.getJSONObject("masterUserInfoVO").getString("userId"), str)) {
                    JSONObject jSONObject4 = new JSONObject(AntFarmRpcCall.hireAnimal(string, jSONObject3.getString("animalId")));
                    if (MessageUtil.checkMemo(TAG, jSONObject4).booleanValue()) {
                        this.foodStock = jSONObject4.getInt("foodStock");
                        Log.farm("雇佣小鸡👷雇佣[" + UserIdMap.getMaskName(str) + "]#消耗[" + jSONObject4.getInt("reduceFoodNum") + "g饲料]");
                        return true;
                    }
                }
            }
            return false;
        } catch (Throwable th) {
            String str2 = TAG;
            Log.i(str2, "hireAnimalAction err:");
            Log.printStackTrace(str2, th);
        }
    }

    private void drawGameCenterAward() {
        try {
            JSONObject jSONObject = new JSONObject(AntFarmRpcCall.queryGameList());
            if (!jSONObject.optBoolean("success")) {
                Log.i(TAG, "queryGameList falsed result: " + jSONObject.toString());
                return;
            }
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("gameCenterDrawRights");
            if (jSONObjectOptJSONObject != null) {
                int iOptInt = jSONObjectOptJSONObject.optInt("quotaCanUse");
                if (iOptInt > 0) {
                    Log.record("当前有 " + iOptInt + " 个宝箱待开启...");
                    while (iOptInt > 0) {
                        JSONObject jSONObject2 = new JSONObject(AntFarmRpcCall.drawGameCenterAward(1));
                        if (!jSONObject2.optBoolean("success")) {
                            Log.record("小鸡乐园开启宝箱失败: " + jSONObject2.optString("desc"));
                            break;
                        }
                        JSONObject jSONObjectOptJSONObject2 = jSONObject2.optJSONObject("gameCenterDrawRights");
                        iOptInt = jSONObjectOptJSONObject2 != null ? jSONObjectOptJSONObject2.optInt("quotaCanUse") : iOptInt - 1;
                        JSONArray jSONArrayOptJSONArray = jSONObject2.optJSONArray("gameCenterDrawAwardList");
                        ArrayList arrayList = new ArrayList();
                        if (jSONArrayOptJSONArray != null) {
                            for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                                JSONObject jSONObject3 = jSONArrayOptJSONArray.getJSONObject(i);
                                arrayList.add(jSONObject3.optString("awardName") + "*" + jSONObject3.optInt("awardCount"));
                            }
                        }
                        Log.farm("小鸡乐园🎁开宝箱得[" + SimplePageManager$$ExternalSyntheticBackport0.m(",", arrayList) + "]#[" + UserIdMap.getShowName(UserIdMap.getCurrentUid()) + "]");
                        TimeUtil.sleep(3000L);
                    }
                }
                int iOptInt2 = jSONObjectOptJSONObject.optInt("quotaLimit");
                int iOptInt3 = iOptInt2 - jSONObjectOptJSONObject.optInt("usedQuota");
                if (iOptInt3 > 0 && iOptInt == 0) {
                    GameTask.Farm_ddply.report("庄园", iOptInt3);
                } else if (iOptInt3 <= 0) {
                    Log.record("今日 " + iOptInt2 + " 个金蛋任务已全部满额");
                }
            }
            TimeUtil.sleep(3000L);
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "drawGameCenterAward err:");
            Log.printStackTrace(str, th);
        }
    }

    private void ornamentsDressUp() {
        try {
            JSONObject jSONObject = new JSONObject(AntFarmRpcCall.listOrnaments());
            if (MessageUtil.checkMemo(TAG, jSONObject).booleanValue()) {
                ArrayList arrayList = new ArrayList();
                JSONArray jSONArray = jSONObject.getJSONArray("achievementOrnaments");
                long jCurrentTimeMillis = System.currentTimeMillis();
                for (int i = 0; i < jSONArray.length(); i++) {
                    JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                    if (jSONObject2.optBoolean("acquired")) {
                        if (jSONObject2.has("takeOffTime")) {
                            jCurrentTimeMillis = jSONObject2.getLong("takeOffTime");
                        }
                        String string = jSONObject2.getString("resourceKey");
                        String string2 = jSONObject2.getString("name");
                        if (this.ornamentsDressUpList.getValue().contains(string)) {
                            arrayList.add(jSONObject2);
                        }
                        FarmOrnamentsIdMap.add(string, string2);
                    }
                }
                FarmOrnamentsIdMap.save(UserIdMap.getCurrentUid());
                if (!arrayList.isEmpty() && jCurrentTimeMillis + TimeUnit.DAYS.toMillis(this.ornamentsDressUpDays.getValue().intValue() - 15) <= System.currentTimeMillis()) {
                    JSONObject jSONObject3 = (JSONObject) arrayList.get(RandomUtil.nextInt(0, arrayList.size() - 1));
                    if (saveOrnaments(jSONObject3).booleanValue()) {
                        Log.farm("装扮焕新✨[" + jSONObject3.getString("name") + "]");
                    }
                }
            }
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "ornamentsDressUp err:");
            Log.printStackTrace(str, th);
        }
    }

    private Boolean saveOrnaments(JSONObject jSONObject) {
        try {
            return MessageUtil.checkMemo(TAG, new JSONObject(AntFarmRpcCall.saveOrnaments(this.ownerAnimal.animalId, this.ownerFarmId, getOrnamentsSets(jSONObject.getJSONArray("sets")))));
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "saveOrnaments err:");
            Log.printStackTrace(str, th);
            return false;
        }
    }

    private String getOrnamentsSets(JSONArray jSONArray) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < jSONArray.length(); i++) {
            try {
                JSONObject jSONObject = jSONArray.getJSONObject(i);
                if (i > 0) {
                    sb.append(",");
                }
                sb.append(jSONObject.getString("id"));
            } catch (Throwable th) {
                String str = TAG;
                Log.i(str, "getOrnamentsSets err:");
                Log.printStackTrace(str, th);
            }
        }
        return sb.toString();
    }

    /* JADX WARN: Code duplicated, block: B:103:0x02fa A[Catch: all -> 0x032c, TryCatch #2 {all -> 0x032c, blocks: (B:72:0x0219, B:74:0x022e, B:76:0x0236, B:78:0x023c, B:79:0x0248, B:81:0x024e, B:98:0x02ba, B:84:0x0255, B:86:0x0265, B:87:0x0269, B:89:0x0283, B:94:0x028d, B:96:0x029a, B:97:0x029f, B:99:0x02bd, B:101:0x02c3, B:102:0x02e4, B:103:0x02fa, B:105:0x0300, B:106:0x0313, B:108:0x0319), top: B:188:0x0219, outer: #0 }] */
    /* JADX WARN: Code duplicated, block: B:105:0x0300 A[Catch: all -> 0x032c, TryCatch #2 {all -> 0x032c, blocks: (B:72:0x0219, B:74:0x022e, B:76:0x0236, B:78:0x023c, B:79:0x0248, B:81:0x024e, B:98:0x02ba, B:84:0x0255, B:86:0x0265, B:87:0x0269, B:89:0x0283, B:94:0x028d, B:96:0x029a, B:97:0x029f, B:99:0x02bd, B:101:0x02c3, B:102:0x02e4, B:103:0x02fa, B:105:0x0300, B:106:0x0313, B:108:0x0319), top: B:188:0x0219, outer: #0 }] */
    /* JADX WARN: Code duplicated, block: B:106:0x0313 A[Catch: all -> 0x032c, TryCatch #2 {all -> 0x032c, blocks: (B:72:0x0219, B:74:0x022e, B:76:0x0236, B:78:0x023c, B:79:0x0248, B:81:0x024e, B:98:0x02ba, B:84:0x0255, B:86:0x0265, B:87:0x0269, B:89:0x0283, B:94:0x028d, B:96:0x029a, B:97:0x029f, B:99:0x02bd, B:101:0x02c3, B:102:0x02e4, B:103:0x02fa, B:105:0x0300, B:106:0x0313, B:108:0x0319), top: B:188:0x0219, outer: #0 }] */
    /* JADX WARN: Code duplicated, block: B:108:0x0319 A[Catch: all -> 0x032c, TRY_LEAVE, TryCatch #2 {all -> 0x032c, blocks: (B:72:0x0219, B:74:0x022e, B:76:0x0236, B:78:0x023c, B:79:0x0248, B:81:0x024e, B:98:0x02ba, B:84:0x0255, B:86:0x0265, B:87:0x0269, B:89:0x0283, B:94:0x028d, B:96:0x029a, B:97:0x029f, B:99:0x02bd, B:101:0x02c3, B:102:0x02e4, B:103:0x02fa, B:105:0x0300, B:106:0x0313, B:108:0x0319), top: B:188:0x0219, outer: #0 }] */
    /* JADX WARN: Code duplicated, block: B:118:0x0360 A[Catch: all -> 0x0202, TRY_LEAVE, TryCatch #0 {all -> 0x0202, blocks: (B:46:0x012b, B:48:0x0131, B:49:0x0145, B:51:0x014b, B:62:0x0194, B:54:0x0158, B:56:0x0170, B:57:0x0175, B:63:0x019f, B:65:0x01e0, B:67:0x01f9, B:115:0x034f, B:116:0x035a, B:118:0x0360, B:111:0x032d, B:113:0x0333, B:114:0x0345, B:72:0x0219, B:74:0x022e, B:76:0x0236, B:78:0x023c, B:79:0x0248, B:81:0x024e, B:98:0x02ba, B:84:0x0255, B:86:0x0265, B:87:0x0269, B:89:0x0283, B:94:0x028d, B:96:0x029a, B:97:0x029f, B:99:0x02bd, B:101:0x02c3, B:102:0x02e4, B:103:0x02fa, B:105:0x0300, B:106:0x0313, B:108:0x0319), top: B:184:0x012b, inners: #2 }] */
    /* JADX WARN: Code duplicated, block: B:122:0x0382  */
    /* JADX WARN: Code duplicated, block: B:123:0x0383 A[Catch: all -> 0x03f3, TryCatch #1 {all -> 0x03f3, blocks: (B:120:0x0378, B:133:0x03d4, B:123:0x0383, B:125:0x03a7, B:127:0x03b3, B:130:0x03c5, B:132:0x03d1, B:136:0x03df, B:138:0x03ef, B:142:0x03f8, B:144:0x0408, B:146:0x041c, B:148:0x0430, B:149:0x0433, B:152:0x0445, B:153:0x0448, B:156:0x045a, B:157:0x045d, B:160:0x0470, B:162:0x0476, B:165:0x048a, B:168:0x0491, B:170:0x04a1, B:172:0x04a9, B:173:0x04b0, B:175:0x04c0, B:176:0x04c5, B:178:0x04d5), top: B:186:0x0378 }] */
    /* JADX WARN: Code duplicated, block: B:125:0x03a7 A[Catch: all -> 0x03f3, TryCatch #1 {all -> 0x03f3, blocks: (B:120:0x0378, B:133:0x03d4, B:123:0x0383, B:125:0x03a7, B:127:0x03b3, B:130:0x03c5, B:132:0x03d1, B:136:0x03df, B:138:0x03ef, B:142:0x03f8, B:144:0x0408, B:146:0x041c, B:148:0x0430, B:149:0x0433, B:152:0x0445, B:153:0x0448, B:156:0x045a, B:157:0x045d, B:160:0x0470, B:162:0x0476, B:165:0x048a, B:168:0x0491, B:170:0x04a1, B:172:0x04a9, B:173:0x04b0, B:175:0x04c0, B:176:0x04c5, B:178:0x04d5), top: B:186:0x0378 }] */
    /* JADX WARN: Code duplicated, block: B:136:0x03df A[Catch: all -> 0x03f3, TryCatch #1 {all -> 0x03f3, blocks: (B:120:0x0378, B:133:0x03d4, B:123:0x0383, B:125:0x03a7, B:127:0x03b3, B:130:0x03c5, B:132:0x03d1, B:136:0x03df, B:138:0x03ef, B:142:0x03f8, B:144:0x0408, B:146:0x041c, B:148:0x0430, B:149:0x0433, B:152:0x0445, B:153:0x0448, B:156:0x045a, B:157:0x045d, B:160:0x0470, B:162:0x0476, B:165:0x048a, B:168:0x0491, B:170:0x04a1, B:172:0x04a9, B:173:0x04b0, B:175:0x04c0, B:176:0x04c5, B:178:0x04d5), top: B:186:0x0378 }] */
    /* JADX WARN: Code duplicated, block: B:142:0x03f8 A[Catch: all -> 0x03f3, TryCatch #1 {all -> 0x03f3, blocks: (B:120:0x0378, B:133:0x03d4, B:123:0x0383, B:125:0x03a7, B:127:0x03b3, B:130:0x03c5, B:132:0x03d1, B:136:0x03df, B:138:0x03ef, B:142:0x03f8, B:144:0x0408, B:146:0x041c, B:148:0x0430, B:149:0x0433, B:152:0x0445, B:153:0x0448, B:156:0x045a, B:157:0x045d, B:160:0x0470, B:162:0x0476, B:165:0x048a, B:168:0x0491, B:170:0x04a1, B:172:0x04a9, B:173:0x04b0, B:175:0x04c0, B:176:0x04c5, B:178:0x04d5), top: B:186:0x0378 }] */
    /* JADX WARN: Code duplicated, block: B:151:0x0443 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:155:0x0458 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:159:0x046d  */
    /* JADX WARN: Code duplicated, block: B:162:0x0476 A[Catch: all -> 0x03f3, TryCatch #1 {all -> 0x03f3, blocks: (B:120:0x0378, B:133:0x03d4, B:123:0x0383, B:125:0x03a7, B:127:0x03b3, B:130:0x03c5, B:132:0x03d1, B:136:0x03df, B:138:0x03ef, B:142:0x03f8, B:144:0x0408, B:146:0x041c, B:148:0x0430, B:149:0x0433, B:152:0x0445, B:153:0x0448, B:156:0x045a, B:157:0x045d, B:160:0x0470, B:162:0x0476, B:165:0x048a, B:168:0x0491, B:170:0x04a1, B:172:0x04a9, B:173:0x04b0, B:175:0x04c0, B:176:0x04c5, B:178:0x04d5), top: B:186:0x0378 }] */
    /* JADX WARN: Code duplicated, block: B:164:0x0488  */
    /* JADX WARN: Code duplicated, block: B:166:0x048d  */
    /* JADX WARN: Code duplicated, block: B:168:0x0491 A[Catch: all -> 0x03f3, TryCatch #1 {all -> 0x03f3, blocks: (B:120:0x0378, B:133:0x03d4, B:123:0x0383, B:125:0x03a7, B:127:0x03b3, B:130:0x03c5, B:132:0x03d1, B:136:0x03df, B:138:0x03ef, B:142:0x03f8, B:144:0x0408, B:146:0x041c, B:148:0x0430, B:149:0x0433, B:152:0x0445, B:153:0x0448, B:156:0x045a, B:157:0x045d, B:160:0x0470, B:162:0x0476, B:165:0x048a, B:168:0x0491, B:170:0x04a1, B:172:0x04a9, B:173:0x04b0, B:175:0x04c0, B:176:0x04c5, B:178:0x04d5), top: B:186:0x0378 }] */
    /* JADX WARN: Code duplicated, block: B:175:0x04c0 A[Catch: all -> 0x03f3, TryCatch #1 {all -> 0x03f3, blocks: (B:120:0x0378, B:133:0x03d4, B:123:0x0383, B:125:0x03a7, B:127:0x03b3, B:130:0x03c5, B:132:0x03d1, B:136:0x03df, B:138:0x03ef, B:142:0x03f8, B:144:0x0408, B:146:0x041c, B:148:0x0430, B:149:0x0433, B:152:0x0445, B:153:0x0448, B:156:0x045a, B:157:0x045d, B:160:0x0470, B:162:0x0476, B:165:0x048a, B:168:0x0491, B:170:0x04a1, B:172:0x04a9, B:173:0x04b0, B:175:0x04c0, B:176:0x04c5, B:178:0x04d5), top: B:186:0x0378 }] */
    /* JADX WARN: Code duplicated, block: B:178:0x04d5 A[Catch: all -> 0x03f3, TRY_LEAVE, TryCatch #1 {all -> 0x03f3, blocks: (B:120:0x0378, B:133:0x03d4, B:123:0x0383, B:125:0x03a7, B:127:0x03b3, B:130:0x03c5, B:132:0x03d1, B:136:0x03df, B:138:0x03ef, B:142:0x03f8, B:144:0x0408, B:146:0x041c, B:148:0x0430, B:149:0x0433, B:152:0x0445, B:153:0x0448, B:156:0x045a, B:157:0x045d, B:160:0x0470, B:162:0x0476, B:165:0x048a, B:168:0x0491, B:170:0x04a1, B:172:0x04a9, B:173:0x04b0, B:175:0x04c0, B:176:0x04c5, B:178:0x04d5), top: B:186:0x0378 }] */
    /* JADX WARN: Code duplicated, block: B:184:0x012b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:201:0x03d4 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:208:0x048a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:214:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:48:0x0131 A[Catch: all -> 0x0202, TryCatch #0 {all -> 0x0202, blocks: (B:46:0x012b, B:48:0x0131, B:49:0x0145, B:51:0x014b, B:62:0x0194, B:54:0x0158, B:56:0x0170, B:57:0x0175, B:63:0x019f, B:65:0x01e0, B:67:0x01f9, B:115:0x034f, B:116:0x035a, B:118:0x0360, B:111:0x032d, B:113:0x0333, B:114:0x0345, B:72:0x0219, B:74:0x022e, B:76:0x0236, B:78:0x023c, B:79:0x0248, B:81:0x024e, B:98:0x02ba, B:84:0x0255, B:86:0x0265, B:87:0x0269, B:89:0x0283, B:94:0x028d, B:96:0x029a, B:97:0x029f, B:99:0x02bd, B:101:0x02c3, B:102:0x02e4, B:103:0x02fa, B:105:0x0300, B:106:0x0313, B:108:0x0319), top: B:184:0x012b, inners: #2 }] */
    /* JADX WARN: Code duplicated, block: B:51:0x014b A[Catch: all -> 0x0202, TryCatch #0 {all -> 0x0202, blocks: (B:46:0x012b, B:48:0x0131, B:49:0x0145, B:51:0x014b, B:62:0x0194, B:54:0x0158, B:56:0x0170, B:57:0x0175, B:63:0x019f, B:65:0x01e0, B:67:0x01f9, B:115:0x034f, B:116:0x035a, B:118:0x0360, B:111:0x032d, B:113:0x0333, B:114:0x0345, B:72:0x0219, B:74:0x022e, B:76:0x0236, B:78:0x023c, B:79:0x0248, B:81:0x024e, B:98:0x02ba, B:84:0x0255, B:86:0x0265, B:87:0x0269, B:89:0x0283, B:94:0x028d, B:96:0x029a, B:97:0x029f, B:99:0x02bd, B:101:0x02c3, B:102:0x02e4, B:103:0x02fa, B:105:0x0300, B:106:0x0313, B:108:0x0319), top: B:184:0x012b, inners: #2 }] */
    /* JADX WARN: Code duplicated, block: B:53:0x0151  */
    /* JADX WARN: Code duplicated, block: B:54:0x0158 A[Catch: all -> 0x0202, TryCatch #0 {all -> 0x0202, blocks: (B:46:0x012b, B:48:0x0131, B:49:0x0145, B:51:0x014b, B:62:0x0194, B:54:0x0158, B:56:0x0170, B:57:0x0175, B:63:0x019f, B:65:0x01e0, B:67:0x01f9, B:115:0x034f, B:116:0x035a, B:118:0x0360, B:111:0x032d, B:113:0x0333, B:114:0x0345, B:72:0x0219, B:74:0x022e, B:76:0x0236, B:78:0x023c, B:79:0x0248, B:81:0x024e, B:98:0x02ba, B:84:0x0255, B:86:0x0265, B:87:0x0269, B:89:0x0283, B:94:0x028d, B:96:0x029a, B:97:0x029f, B:99:0x02bd, B:101:0x02c3, B:102:0x02e4, B:103:0x02fa, B:105:0x0300, B:106:0x0313, B:108:0x0319), top: B:184:0x012b, inners: #2 }] */
    /* JADX WARN: Code duplicated, block: B:56:0x0170 A[Catch: all -> 0x0202, TryCatch #0 {all -> 0x0202, blocks: (B:46:0x012b, B:48:0x0131, B:49:0x0145, B:51:0x014b, B:62:0x0194, B:54:0x0158, B:56:0x0170, B:57:0x0175, B:63:0x019f, B:65:0x01e0, B:67:0x01f9, B:115:0x034f, B:116:0x035a, B:118:0x0360, B:111:0x032d, B:113:0x0333, B:114:0x0345, B:72:0x0219, B:74:0x022e, B:76:0x0236, B:78:0x023c, B:79:0x0248, B:81:0x024e, B:98:0x02ba, B:84:0x0255, B:86:0x0265, B:87:0x0269, B:89:0x0283, B:94:0x028d, B:96:0x029a, B:97:0x029f, B:99:0x02bd, B:101:0x02c3, B:102:0x02e4, B:103:0x02fa, B:105:0x0300, B:106:0x0313, B:108:0x0319), top: B:184:0x012b, inners: #2 }] */
    /* JADX WARN: Code duplicated, block: B:65:0x01e0 A[Catch: all -> 0x0202, TryCatch #0 {all -> 0x0202, blocks: (B:46:0x012b, B:48:0x0131, B:49:0x0145, B:51:0x014b, B:62:0x0194, B:54:0x0158, B:56:0x0170, B:57:0x0175, B:63:0x019f, B:65:0x01e0, B:67:0x01f9, B:115:0x034f, B:116:0x035a, B:118:0x0360, B:111:0x032d, B:113:0x0333, B:114:0x0345, B:72:0x0219, B:74:0x022e, B:76:0x0236, B:78:0x023c, B:79:0x0248, B:81:0x024e, B:98:0x02ba, B:84:0x0255, B:86:0x0265, B:87:0x0269, B:89:0x0283, B:94:0x028d, B:96:0x029a, B:97:0x029f, B:99:0x02bd, B:101:0x02c3, B:102:0x02e4, B:103:0x02fa, B:105:0x0300, B:106:0x0313, B:108:0x0319), top: B:184:0x012b, inners: #2 }] */
    /* JADX WARN: Code duplicated, block: B:66:0x01f7  */
    /* JADX WARN: Code duplicated, block: B:71:0x0207  */
    /* JADX WARN: Code duplicated, block: B:74:0x022e A[Catch: all -> 0x032c, TryCatch #2 {all -> 0x032c, blocks: (B:72:0x0219, B:74:0x022e, B:76:0x0236, B:78:0x023c, B:79:0x0248, B:81:0x024e, B:98:0x02ba, B:84:0x0255, B:86:0x0265, B:87:0x0269, B:89:0x0283, B:94:0x028d, B:96:0x029a, B:97:0x029f, B:99:0x02bd, B:101:0x02c3, B:102:0x02e4, B:103:0x02fa, B:105:0x0300, B:106:0x0313, B:108:0x0319), top: B:188:0x0219, outer: #0 }] */
    /* JADX WARN: Code duplicated, block: B:76:0x0236 A[Catch: all -> 0x032c, TryCatch #2 {all -> 0x032c, blocks: (B:72:0x0219, B:74:0x022e, B:76:0x0236, B:78:0x023c, B:79:0x0248, B:81:0x024e, B:98:0x02ba, B:84:0x0255, B:86:0x0265, B:87:0x0269, B:89:0x0283, B:94:0x028d, B:96:0x029a, B:97:0x029f, B:99:0x02bd, B:101:0x02c3, B:102:0x02e4, B:103:0x02fa, B:105:0x0300, B:106:0x0313, B:108:0x0319), top: B:188:0x0219, outer: #0 }] */
    /* JADX WARN: Instruction removed from duplicated block: B:105:0x0300, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:108:0x0319, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:65:0x01e0, please report this as an issue */
    private void family() {
        int iOptInt;
        StringBuilder sb;
        long j;
        int i;
        boolean z;
        boolean z2;
        JSONArray jSONArray;
        String str;
        String string;
        JSONObject jSONObjectOptJSONObject;
        boolean z3;
        boolean z4;
        JSONArray jSONArray2;
        long jOptLong;
        ArrayList arrayList;
        JSONArray jSONArray3;
        int i2;
        JSONArray jSONArray4;
        JSONArray jSONArrayOptJSONArray;
        boolean z5;
        int i3;
        JSONObject jSONObject;
        String string2;
        JSONObject jSONObject2;
        JSONObject jSONObject3;
        JSONArray jSONArrayOptJSONArray2;
        String str2 = "";
        if (StringUtil.isEmpty(this.ownerGroupId)) {
            Log.info("亲密家庭🏠[" + UserIdMap.getShowName(UserIdMap.getCurrentUid()) + "]未获取到家庭ID, 未加入亲密家庭或庄园首页无家庭数据;");
            return;
        }
        try {
            Class.forName("io.github.lazyimmortal.sesame.model.extensions.ExtensionsHandle");
            ExtensionsHandle.handleAlphaRequest("antFarm", "doFamilyTask", null);
        } catch (ClassNotFoundException unused) {
            Log.record("ExtensionsHandle 类未找到，跳过扩展处理");
        }
        try {
            JSONObject jSONObjectEnterFamily = enterFamily();
            if (jSONObjectEnterFamily != null) {
                String strOptString = jSONObjectEnterFamily.optString("groupId", "");
                if (!strOptString.isEmpty()) {
                    this.ownerGroupId = strOptString;
                }
                int iOptInt2 = jSONObjectEnterFamily.optInt("familyAwardNum", 0);
                boolean zOptBoolean = jSONObjectEnterFamily.optBoolean("familySignTips", false);
                JSONObject jSONObjectOptJSONObject2 = jSONObjectEnterFamily.optJSONObject("assignFamilyMemberInfo");
                boolean zOptBoolean2 = jSONObjectEnterFamily.optBoolean("feedFriendLimit", false);
                JSONArray jSONArrayOptJSONArray3 = jSONObjectEnterFamily.optJSONArray("animals");
                if (jSONArrayOptJSONArray3 == null) {
                    Log.info("亲密家庭🏠[" + UserIdMap.getShowName(UserIdMap.getCurrentUid()) + "]家庭动物列表为空;");
                    return;
                }
                JSONArray jSONArray5 = new JSONArray();
                JSONArray jSONArray6 = new JSONArray();
                int i4 = 0;
                while (i4 < jSONArrayOptJSONArray3.length()) {
                    JSONObject jSONObject4 = jSONArrayOptJSONArray3.getJSONObject(i4);
                    String string3 = jSONObject4.getString("userId");
                    jSONArray5.put(string3);
                    String str3 = str2;
                    if (!string3.equals(UserIdMap.getCurrentUid())) {
                        jSONArray6.put(jSONObject4);
                    }
                    i4++;
                    str2 = str3;
                }
                String str4 = str2;
                int iOptInt3 = jSONObjectEnterFamily.optInt("familyActivityIntimateNumber");
                JSONObject jSONObjectOptJSONObject3 = jSONObjectEnterFamily.optJSONObject("activityInfo");
                JSONArray jSONArrayOptJSONArray4 = jSONObjectOptJSONObject3 == null ? null : jSONObjectOptJSONObject3.optJSONArray("familyActivityIntimateRankList");
                String str5 = "亲密值";
                if (jSONArrayOptJSONArray4 == null || jSONArrayOptJSONArray4.length() == 0) {
                    JSONObject jSONObjectOptJSONObject4 = jSONObjectEnterFamily.optJSONObject("lastActivityInfoVO");
                    if (jSONObjectOptJSONObject4 != null) {
                        jSONArrayOptJSONArray4 = jSONObjectOptJSONObject4.optJSONArray("lastActivityFamilyIntimateRankList");
                        iOptInt = jSONObjectOptJSONObject4.optInt("lastActivityFamilyIntimate");
                        str5 = "上期亲密值";
                    }
                    if (jSONArrayOptJSONArray4 != null) {
                        try {
                            if (jSONArrayOptJSONArray4.length() > 0) {
                                sb = new StringBuilder();
                                long j2 = -1;
                                j = -1;
                                i = 0;
                                while (i < jSONArrayOptJSONArray4.length()) {
                                    jSONObjectOptJSONObject = jSONArrayOptJSONArray4.optJSONObject(i);
                                    if (jSONObjectOptJSONObject == null) {
                                        z3 = zOptBoolean;
                                        z4 = zOptBoolean2;
                                        jSONArray2 = jSONArrayOptJSONArray3;
                                    } else {
                                        z3 = zOptBoolean;
                                        z4 = zOptBoolean2;
                                        jSONArray2 = jSONArrayOptJSONArray3;
                                        long jOptLong2 = jSONObjectOptJSONObject.optLong("familyActivityRankIntimateGear");
                                        jOptLong = jSONObjectOptJSONObject.optLong("familyActivityRankIntimateGearScore");
                                        if (sb.length() > 0) {
                                            sb.append(",");
                                        }
                                        sb.append(jOptLong2);
                                        sb.append("万(亲密值");
                                        sb.append(jOptLong);
                                        sb.append(")");
                                        if (iOptInt < jOptLong && jOptLong > j2) {
                                            j2 = jOptLong;
                                            j = jOptLong2;
                                        }
                                    }
                                    i++;
                                    zOptBoolean = z3;
                                    zOptBoolean2 = z4;
                                    jSONArrayOptJSONArray3 = jSONArray2;
                                }
                                z = zOptBoolean;
                                z2 = zOptBoolean2;
                                jSONArray = jSONArrayOptJSONArray3;
                                StringBuilder sb2 = new StringBuilder();
                                sb2.append("亲密家庭🏠[");
                                sb2.append(UserIdMap.getShowName(UserIdMap.getCurrentUid()));
                                sb2.append("]");
                                sb2.append(str5);
                                sb2.append(iOptInt);
                                sb2.append("排名共");
                                sb2.append(jSONArrayOptJSONArray4.length());
                                sb2.append("档[");
                                sb2.append((Object) sb);
                                sb2.append("]已达档位");
                                if (j >= 0) {
                                    str = "前" + j + "万名";
                                } else {
                                    str = "无";
                                }
                                sb2.append(str);
                                string = sb2.toString();
                            } else {
                                z = zOptBoolean;
                                z2 = zOptBoolean2;
                                jSONArray = jSONArrayOptJSONArray3;
                                string = str4;
                            }
                            try {
                                jSONObject3 = new JSONObject(AntFarmRpcCall.queryFamilyInfo());
                                if (MessageUtil.checkMemo(TAG, jSONObject3).booleanValue()) {
                                    jSONArrayOptJSONArray2 = jSONObject3.optJSONArray("familyMemberInfoList");
                                    if (jSONArrayOptJSONArray2 == null && jSONArrayOptJSONArray2.length() > 0) {
                                        String currentUid = UserIdMap.getCurrentUid();
                                        StringBuilder sb3 = new StringBuilder("家庭成员");
                                        for (int i5 = 0; i5 < jSONArrayOptJSONArray2.length(); i5++) {
                                            JSONObject jSONObjectOptJSONObject5 = jSONArrayOptJSONArray2.optJSONObject(i5);
                                            if (jSONObjectOptJSONObject5 != null) {
                                                String strOptString2 = jSONObjectOptJSONObject5.optString("userId");
                                                String strOptString3 = jSONObjectOptJSONObject5.optString("userName");
                                                if (StringUtil.isEmpty(strOptString3)) {
                                                    strOptString3 = UserIdMap.getShowName(strOptString2);
                                                }
                                                int iOptInt4 = jSONObjectOptJSONObject5.optInt("todayIntimateNum");
                                                int iOptInt5 = jSONObjectOptJSONObject5.optInt("totalIntimateNum");
                                                int iOptInt6 = jSONObjectOptJSONObject5.optInt("userDonateCount");
                                                boolean z6 = jSONObjectOptJSONObject5.optBoolean("currentUser") || strOptString2.equals(currentUid);
                                                sb3.append("[");
                                                sb3.append(strOptString3);
                                                sb3.append("]");
                                                if (z6) {
                                                    sb3.append("(当前账户)");
                                                }
                                                sb3.append("捐蛋");
                                                sb3.append(iOptInt6);
                                                sb3.append("累计亲密");
                                                sb3.append(iOptInt5);
                                                sb3.append("今日亲密");
                                                sb3.append(iOptInt4);
                                                sb3.append(";");
                                            }
                                        }
                                        if (string.isEmpty()) {
                                            Log.info("亲密家庭🏠[" + UserIdMap.getShowName(UserIdMap.getCurrentUid()) + "]" + ((Object) sb3));
                                        } else {
                                            Log.info(string + ";" + ((Object) sb3));
                                        }
                                    } else if (!string.isEmpty()) {
                                        Log.info(string + ";");
                                    }
                                } else if (!string.isEmpty()) {
                                    Log.info(string + ";");
                                }
                            } catch (Throwable th) {
                                if (!string.isEmpty()) {
                                    Log.info(string + ";");
                                }
                                String str6 = TAG;
                                Log.i(str6, "queryFamilyInfo parse err:");
                                Log.printStackTrace(str6, th);
                            }
                            arrayList = new ArrayList();
                            jSONArray3 = new JSONArray();
                            i2 = 0;
                            while (i2 < jSONArray.length()) {
                                JSONArray jSONArray7 = jSONArray;
                                jSONObject = jSONArray7.getJSONObject(i2);
                                string2 = jSONObject.getString("animalId");
                                String string4 = jSONObject.getString("userId");
                                arrayList.add(string4);
                                jSONArray3.put(string4);
                                try {
                                    if (string2.equals(this.ownerAnimal.animalId)) {
                                        String string5 = jSONObject.getString("farmId");
                                        jSONObject2 = jSONObject.getJSONObject("animalStatusVO");
                                        String string6 = jSONObject2.getString("animalFeedStatus");
                                        if (!AnimalInteractStatus.HOME.name().equals(jSONObject2.getString("animalInteractStatus")) && AnimalFeedStatus.HUNGRY.name().equals(string6) && this.familyOptions.getValue().contains("familyFeed") && !z2 && !Status.hasFlagToday("farm::feedFriendAnimalLimit").booleanValue()) {
                                            feedFriendAnimal(string5);
                                        }
                                    }
                                    i2++;
                                    jSONArray = jSONArray7;
                                } catch (Throwable th2) {
                                    th = th2;
                                }
                            }
                            jSONArray4 = jSONArray;
                            if (z && this.familyOptions.getValue().contains("familySign")) {
                                familySign();
                            }
                            if (jSONObjectOptJSONObject2 != 0 && this.familyOptions.getValue().contains("assignRights") && !"USED".equals(jSONObjectOptJSONObject2.getJSONObject("assignRights").optString(NotificationCompat.CATEGORY_STATUS)) && UserIdMap.getCurrentUid().equals(jSONObjectOptJSONObject2.getJSONObject("assignRights").optString("assignRightsOwner"))) {
                                assignFamilyMember(jSONObjectOptJSONObject2, arrayList);
                            }
                            if (this.familyOptions.getValue().contains("familyClaimReward") && iOptInt2 > 0) {
                                familyAwardList();
                            }
                            if (this.familyOptions.getValue().contains("feedFamilyAnimal") && !z2) {
                                familyFeedFriendAnimal(jSONArray4);
                            }
                            jSONArrayOptJSONArray = jSONObjectEnterFamily.optJSONArray("familyInteractActions");
                            JSONObject jSONObject5 = jSONObjectEnterFamily.getJSONObject("eatTogetherConfig");
                            if (jSONArrayOptJSONArray != null) {
                                z5 = true;
                                for (i3 = 0; i3 < jSONArrayOptJSONArray.length(); i3++) {
                                    if ("EatTogether".equals(jSONArrayOptJSONArray.getJSONObject(i3).optString("familyInteractType"))) {
                                        z5 = false;
                                    }
                                }
                            } else {
                                z5 = true;
                            }
                            if (z5 && this.familyOptions.getValue().contains("familyEatTogether") && jSONObject5.has("periodItemList")) {
                                familyEatTogether(this.ownerGroupId, jSONArray5);
                            }
                            if (this.familyOptions.getValue().contains("deliverMsgSend")) {
                                deliverMsgSend(jSONArray6, arrayList);
                            }
                            if (this.familyOptions.getValue().contains("shareToFriends")) {
                                familyShareToFriends(this.ownerGroupId, arrayList, this.notInviteList);
                                return;
                            }
                            return;
                        } catch (Throwable th3) {
                            th = th3;
                        }
                    } else {
                        z = zOptBoolean;
                        z2 = zOptBoolean2;
                        jSONArray = jSONArrayOptJSONArray3;
                        string = str4;
                        jSONObject3 = new JSONObject(AntFarmRpcCall.queryFamilyInfo());
                        if (MessageUtil.checkMemo(TAG, jSONObject3).booleanValue()) {
                            jSONArrayOptJSONArray2 = jSONObject3.optJSONArray("familyMemberInfoList");
                            if (jSONArrayOptJSONArray2 == null) {
                                if (!string.isEmpty()) {
                                    Log.info(string + ";");
                                }
                            } else if (!string.isEmpty()) {
                                Log.info(string + ";");
                            }
                        } else if (!string.isEmpty()) {
                            Log.info(string + ";");
                        }
                        arrayList = new ArrayList();
                        jSONArray3 = new JSONArray();
                        i2 = 0;
                        while (i2 < jSONArray.length()) {
                            JSONArray jSONArray8 = jSONArray;
                            jSONObject = jSONArray8.getJSONObject(i2);
                            string2 = jSONObject.getString("animalId");
                            String string7 = jSONObject.getString("userId");
                            arrayList.add(string7);
                            jSONArray3.put(string7);
                            if (string2.equals(this.ownerAnimal.animalId)) {
                                String string8 = jSONObject.getString("farmId");
                                jSONObject2 = jSONObject.getJSONObject("animalStatusVO");
                                String string9 = jSONObject2.getString("animalFeedStatus");
                                if (!AnimalInteractStatus.HOME.name().equals(jSONObject2.getString("animalInteractStatus"))) {
                                }
                            }
                            i2++;
                            jSONArray = jSONArray8;
                        }
                        jSONArray4 = jSONArray;
                        if (z) {
                            familySign();
                        }
                        if (jSONObjectOptJSONObject2 != 0) {
                            assignFamilyMember(jSONObjectOptJSONObject2, arrayList);
                        }
                        if (this.familyOptions.getValue().contains("familyClaimReward")) {
                            familyAwardList();
                        }
                        if (this.familyOptions.getValue().contains("feedFamilyAnimal")) {
                            familyFeedFriendAnimal(jSONArray4);
                        }
                        jSONArrayOptJSONArray = jSONObjectEnterFamily.optJSONArray("familyInteractActions");
                        JSONObject jSONObject6 = jSONObjectEnterFamily.getJSONObject("eatTogetherConfig");
                        if (jSONArrayOptJSONArray != null) {
                            z5 = true;
                            while (i3 < jSONArrayOptJSONArray.length()) {
                                if ("EatTogether".equals(jSONArrayOptJSONArray.getJSONObject(i3).optString("familyInteractType"))) {
                                    z5 = false;
                                }
                            }
                        } else {
                            z5 = true;
                        }
                        if (z5) {
                            familyEatTogether(this.ownerGroupId, jSONArray5);
                        }
                        if (this.familyOptions.getValue().contains("deliverMsgSend")) {
                            deliverMsgSend(jSONArray6, arrayList);
                        }
                        if (this.familyOptions.getValue().contains("shareToFriends")) {
                            familyShareToFriends(this.ownerGroupId, arrayList, this.notInviteList);
                            return;
                        }
                        return;
                    }
                    String str7 = TAG;
                    Log.i(str7, "family err:");
                    Log.printStackTrace(str7, th);
                    return;
                }
                iOptInt = iOptInt3;
                if (jSONArrayOptJSONArray4 != null) {
                    if (jSONArrayOptJSONArray4.length() > 0) {
                        sb = new StringBuilder();
                        long j3 = -1;
                        j = -1;
                        i = 0;
                        while (i < jSONArrayOptJSONArray4.length()) {
                            jSONObjectOptJSONObject = jSONArrayOptJSONArray4.optJSONObject(i);
                            if (jSONObjectOptJSONObject == null) {
                                z3 = zOptBoolean;
                                z4 = zOptBoolean2;
                                jSONArray2 = jSONArrayOptJSONArray3;
                            } else {
                                z3 = zOptBoolean;
                                z4 = zOptBoolean2;
                                jSONArray2 = jSONArrayOptJSONArray3;
                                long jOptLong3 = jSONObjectOptJSONObject.optLong("familyActivityRankIntimateGear");
                                jOptLong = jSONObjectOptJSONObject.optLong("familyActivityRankIntimateGearScore");
                                if (sb.length() > 0) {
                                    sb.append(",");
                                }
                                sb.append(jOptLong3);
                                sb.append("万(亲密值");
                                sb.append(jOptLong);
                                sb.append(")");
                                if (iOptInt < jOptLong) {
                                }
                            }
                            i++;
                            zOptBoolean = z3;
                            zOptBoolean2 = z4;
                            jSONArrayOptJSONArray3 = jSONArray2;
                        }
                        z = zOptBoolean;
                        z2 = zOptBoolean2;
                        jSONArray = jSONArrayOptJSONArray3;
                        StringBuilder sb4 = new StringBuilder();
                        sb4.append("亲密家庭🏠[");
                        sb4.append(UserIdMap.getShowName(UserIdMap.getCurrentUid()));
                        sb4.append("]");
                        sb4.append(str5);
                        sb4.append(iOptInt);
                        sb4.append("排名共");
                        sb4.append(jSONArrayOptJSONArray4.length());
                        sb4.append("档[");
                        sb4.append((Object) sb);
                        sb4.append("]已达档位");
                        if (j >= 0) {
                            str = "前" + j + "万名";
                        } else {
                            str = "无";
                        }
                        sb4.append(str);
                        string = sb4.toString();
                    } else {
                        z = zOptBoolean;
                        z2 = zOptBoolean2;
                        jSONArray = jSONArrayOptJSONArray3;
                        string = str4;
                    }
                    jSONObject3 = new JSONObject(AntFarmRpcCall.queryFamilyInfo());
                    if (MessageUtil.checkMemo(TAG, jSONObject3).booleanValue()) {
                        jSONArrayOptJSONArray2 = jSONObject3.optJSONArray("familyMemberInfoList");
                        if (jSONArrayOptJSONArray2 == null) {
                            if (!string.isEmpty()) {
                                Log.info(string + ";");
                            }
                        } else if (!string.isEmpty()) {
                            Log.info(string + ";");
                        }
                    } else if (!string.isEmpty()) {
                        Log.info(string + ";");
                    }
                    arrayList = new ArrayList();
                    jSONArray3 = new JSONArray();
                    i2 = 0;
                    while (i2 < jSONArray.length()) {
                        JSONArray jSONArray9 = jSONArray;
                        jSONObject = jSONArray9.getJSONObject(i2);
                        string2 = jSONObject.getString("animalId");
                        String string10 = jSONObject.getString("userId");
                        arrayList.add(string10);
                        jSONArray3.put(string10);
                        if (string2.equals(this.ownerAnimal.animalId)) {
                            String string11 = jSONObject.getString("farmId");
                            jSONObject2 = jSONObject.getJSONObject("animalStatusVO");
                            String string12 = jSONObject2.getString("animalFeedStatus");
                            if (!AnimalInteractStatus.HOME.name().equals(jSONObject2.getString("animalInteractStatus"))) {
                            }
                        }
                        i2++;
                        jSONArray = jSONArray9;
                    }
                    jSONArray4 = jSONArray;
                    if (z) {
                        familySign();
                    }
                    if (jSONObjectOptJSONObject2 != 0) {
                        assignFamilyMember(jSONObjectOptJSONObject2, arrayList);
                    }
                    if (this.familyOptions.getValue().contains("familyClaimReward")) {
                        familyAwardList();
                    }
                    if (this.familyOptions.getValue().contains("feedFamilyAnimal")) {
                        familyFeedFriendAnimal(jSONArray4);
                    }
                    jSONArrayOptJSONArray = jSONObjectEnterFamily.optJSONArray("familyInteractActions");
                    JSONObject jSONObject7 = jSONObjectEnterFamily.getJSONObject("eatTogetherConfig");
                    if (jSONArrayOptJSONArray != null) {
                        z5 = true;
                        while (i3 < jSONArrayOptJSONArray.length()) {
                            if ("EatTogether".equals(jSONArrayOptJSONArray.getJSONObject(i3).optString("familyInteractType"))) {
                                z5 = false;
                            }
                        }
                    } else {
                        z5 = true;
                    }
                    if (z5) {
                        familyEatTogether(this.ownerGroupId, jSONArray5);
                    }
                    if (this.familyOptions.getValue().contains("deliverMsgSend")) {
                        deliverMsgSend(jSONArray6, arrayList);
                    }
                    if (this.familyOptions.getValue().contains("shareToFriends")) {
                        familyShareToFriends(this.ownerGroupId, arrayList, this.notInviteList);
                        return;
                    }
                    return;
                }
                z = zOptBoolean;
                z2 = zOptBoolean2;
                jSONArray = jSONArrayOptJSONArray3;
                string = str4;
                jSONObject3 = new JSONObject(AntFarmRpcCall.queryFamilyInfo());
                if (MessageUtil.checkMemo(TAG, jSONObject3).booleanValue()) {
                    jSONArrayOptJSONArray2 = jSONObject3.optJSONArray("familyMemberInfoList");
                    if (jSONArrayOptJSONArray2 == null) {
                        if (!string.isEmpty()) {
                            Log.info(string + ";");
                        }
                    } else if (!string.isEmpty()) {
                        Log.info(string + ";");
                    }
                } else if (!string.isEmpty()) {
                    Log.info(string + ";");
                }
                arrayList = new ArrayList();
                jSONArray3 = new JSONArray();
                i2 = 0;
                while (i2 < jSONArray.length()) {
                    JSONArray jSONArray10 = jSONArray;
                    jSONObject = jSONArray10.getJSONObject(i2);
                    string2 = jSONObject.getString("animalId");
                    String string13 = jSONObject.getString("userId");
                    arrayList.add(string13);
                    jSONArray3.put(string13);
                    if (string2.equals(this.ownerAnimal.animalId)) {
                        String string14 = jSONObject.getString("farmId");
                        jSONObject2 = jSONObject.getJSONObject("animalStatusVO");
                        String string15 = jSONObject2.getString("animalFeedStatus");
                        if (!AnimalInteractStatus.HOME.name().equals(jSONObject2.getString("animalInteractStatus"))) {
                        }
                    }
                    i2++;
                    jSONArray = jSONArray10;
                }
                jSONArray4 = jSONArray;
                if (z) {
                    familySign();
                }
                if (jSONObjectOptJSONObject2 != 0) {
                    assignFamilyMember(jSONObjectOptJSONObject2, arrayList);
                }
                if (this.familyOptions.getValue().contains("familyClaimReward")) {
                    familyAwardList();
                }
                if (this.familyOptions.getValue().contains("feedFamilyAnimal")) {
                    familyFeedFriendAnimal(jSONArray4);
                }
                jSONArrayOptJSONArray = jSONObjectEnterFamily.optJSONArray("familyInteractActions");
                JSONObject jSONObject8 = jSONObjectEnterFamily.getJSONObject("eatTogetherConfig");
                if (jSONArrayOptJSONArray != null) {
                    z5 = true;
                    while (i3 < jSONArrayOptJSONArray.length()) {
                        if ("EatTogether".equals(jSONArrayOptJSONArray.getJSONObject(i3).optString("familyInteractType"))) {
                            z5 = false;
                        }
                    }
                } else {
                    z5 = true;
                }
                if (z5) {
                    familyEatTogether(this.ownerGroupId, jSONArray5);
                }
                if (this.familyOptions.getValue().contains("deliverMsgSend")) {
                    deliverMsgSend(jSONArray6, arrayList);
                }
                if (this.familyOptions.getValue().contains("shareToFriends")) {
                    familyShareToFriends(this.ownerGroupId, arrayList, this.notInviteList);
                    return;
                }
                return;
                String str8 = TAG;
                Log.i(str8, "family err:");
                Log.printStackTrace(str8, th);
                return;
            }
            Log.info("亲密家庭🏠[" + UserIdMap.getShowName(UserIdMap.getCurrentUid()) + "]进入家庭失败;");
        } catch (Throwable th4) {
            th = th4;
        }
    }

    private void assignFamilyMember(JSONObject jSONObject, List<String> list) {
        try {
            list.remove(UserIdMap.getCurrentUid());
            if (list.isEmpty()) {
                return;
            }
            String str = list.get(RandomUtil.nextInt(0, list.size() - 1));
            JSONArray jSONArray = jSONObject.getJSONArray("assignConfigList");
            JSONObject jSONObject2 = jSONArray.getJSONObject(RandomUtil.nextInt(0, jSONArray.length() - 1));
            if (MessageUtil.checkMemo(TAG, new JSONObject(AntFarmRpcCall.assignFamilyMember(jSONObject2.getString("assignAction"), str))).booleanValue()) {
                Log.farm("家庭任务🏡[使用顶梁柱特权] " + jSONObject2.getString("assignDesc"));
            }
        } catch (Throwable th) {
            String str2 = TAG;
            Log.i(str2, "assignFamilyMember err:");
            Log.printStackTrace(str2, th);
        }
    }

    private void familyFeedFriendAnimal(JSONArray jSONArray) {
        for (int i = 0; i < jSONArray.length(); i++) {
            try {
                JSONObject jSONObject = jSONArray.getJSONObject(i);
                JSONObject jSONObject2 = jSONObject.getJSONObject("animalStatusVO");
                String string = jSONObject2.getString("animalInteractStatus");
                String string2 = jSONObject2.getString("animalFeedStatus");
                if (AnimalInteractStatus.HOME.name().equals(string) && AnimalFeedStatus.HUNGRY.name().equals(string2)) {
                    String string3 = jSONObject.getString("groupId");
                    String string4 = jSONObject.getString("farmId");
                    String string5 = jSONObject.getString("userId");
                    if (UserIdMap.getUserIdSet().contains(string5)) {
                        String str = "farm::feedFriendLimit::" + string5;
                        if (Status.hasFlagToday(str).booleanValue()) {
                            Log.record("[" + string5 + "] 今日喂鸡次数已达上限（已记录）🥣，跳过");
                        } else {
                            JSONObject jSONObject3 = new JSONObject(AntFarmRpcCall.feedFriendAnimal(string4, string3));
                            if (!jSONObject3.optBoolean("success", false)) {
                                String strOptString = jSONObject3.optString("resultCode");
                                if ("391".equals(strOptString)) {
                                    Status.flagToday(str);
                                    Log.record("[" + string5 + "] 今日帮喂次数已达上限🥣，已记录为当日限制");
                                } else {
                                    Log.record("喂食失败 user=" + string5 + " code=" + strOptString + " msg=" + jSONObject3.optString("memo"));
                                }
                            } else {
                                int iOptInt = jSONObject3.optInt("foodStock");
                                Log.farm("家庭任务🏠帮喂好友🥣[" + UserIdMap.getMaskName(string5) + "]的小鸡180g #剩余" + iOptInt + "g");
                            }
                        }
                    } else {
                        Log.record(string5 + " 不是你的好友！ 跳过家庭喂食");
                    }
                }
            } catch (Throwable th) {
                String str2 = TAG;
                Log.i(str2, "familyFeedFriendAnimal err:");
                Log.printStackTrace(str2, th);
                return;
            }
        }
    }

    private void familyEatTogether(String str, JSONArray jSONArray) {
        String str2;
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (TimeUtil.isAfterTimeStr(Long.valueOf(jCurrentTimeMillis), "0600").booleanValue() && TimeUtil.isBeforeTimeStr(Long.valueOf(jCurrentTimeMillis), "1100").booleanValue()) {
            str2 = "早餐";
        } else if (TimeUtil.isAfterTimeStr(Long.valueOf(jCurrentTimeMillis), "1100").booleanValue() && TimeUtil.isBeforeTimeStr(Long.valueOf(jCurrentTimeMillis), "1600").booleanValue()) {
            str2 = "午餐";
        } else if (!TimeUtil.isAfterTimeStr(Long.valueOf(jCurrentTimeMillis), "1600").booleanValue() || !TimeUtil.isBeforeTimeStr(Long.valueOf(jCurrentTimeMillis), "2000").booleanValue()) {
            return;
        } else {
            str2 = "晚餐";
        }
        try {
            JSONArray jSONArrayQueryRecentFarmFood = queryRecentFarmFood(jSONArray.length());
            if (jSONArrayQueryRecentFarmFood == null) {
                return;
            }
            if (MessageUtil.checkMemo(TAG, new JSONObject(AntFarmRpcCall.familyEatTogether(str, jSONArrayQueryRecentFarmFood, jSONArray))).booleanValue()) {
                Log.farm("亲密家庭🏠" + str2 + "请客#消耗美食" + jSONArray.length() + "份#[" + UserIdMap.getShowName(UserIdMap.getCurrentUid()) + "]");
                syncFamilyStatus(str);
            }
        } catch (Throwable th) {
            String str3 = TAG;
            Log.i(str3, "familyEatTogether err:");
            Log.printStackTrace(str3, th);
        }
    }

    private void deliverMsgSend(JSONArray jSONArray, List<String> list) {
        try {
            Calendar calendar = Calendar.getInstance();
            Calendar calendar2 = Calendar.getInstance();
            calendar2.set(11, 6);
            calendar2.set(12, 0);
            calendar2.set(13, 0);
            calendar2.set(14, 0);
            Calendar calendar3 = Calendar.getInstance();
            calendar3.set(11, 10);
            calendar3.set(12, 0);
            calendar3.set(13, 0);
            calendar3.set(14, 0);
            if (!calendar.before(calendar2) && !calendar.after(calendar3)) {
                if (StringUtil.isEmpty(this.ownerGroupId)) {
                    Log.record("家庭任务🏠道早安#未检测到家庭 groupId，可能尚未加入家庭，跳过");
                    return;
                }
                if (Status.hasFlagToday("antFarm::deliverMsgSend").booleanValue()) {
                    return;
                }
                try {
                    JSONObject jSONObject = new JSONObject(AntFarmRpcCall.familyTaskTips(jSONArray));
                    if (!MessageUtil.checkMemo(TAG, jSONObject).booleanValue()) {
                        Log.record("家庭任务🏠道早安#familyTaskTips 调用失败，跳过");
                        return;
                    }
                    JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("familyTaskTips");
                    if (jSONArrayOptJSONArray != null && jSONArrayOptJSONArray.length() != 0) {
                        for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                            JSONObject jSONObject2 = jSONArrayOptJSONArray.getJSONObject(i);
                            String strOptString = jSONObject2.optString("bizKey");
                            String strOptString2 = jSONObject2.optString("taskStatus");
                            if ("GREETING".equals(strOptString) && "TODO".equals(strOptString2)) {
                                ArrayList arrayList = new ArrayList(list);
                                arrayList.remove(UserIdMap.getCurrentUid());
                                if (arrayList.isEmpty()) {
                                    Log.record("家庭任务🏠道早安#家庭成员仅自己一人，跳过");
                                    return;
                                }
                                JSONArray jSONArray2 = new JSONArray();
                                Iterator it = arrayList.iterator();
                                while (it.hasNext()) {
                                    jSONArray2.put((String) it.next());
                                }
                                JSONObject jSONObject3 = new JSONObject(AntFarmRpcCall.OpenAIPrivatePolicy());
                                String str = TAG;
                                if (!MessageUtil.checkMemo(str, jSONObject3).booleanValue()) {
                                    Log.record("家庭任务🏠道早安#OpenAIPrivatePolicy 调用失败");
                                    return;
                                }
                                JSONObject jSONObject4 = new JSONObject(AntFarmRpcCall.deliverSubjectRecommend(jSONArray2));
                                if (!MessageUtil.checkMemo(str, jSONObject4).booleanValue()) {
                                    Log.record("家庭任务🏠道早安#deliverSubjectRecommend 调用失败");
                                    return;
                                }
                                JSONObject jSONObject5 = new JSONObject(AntFarmRpcCall.deliverContentExpand(jSONObject4.getString("ariverRpcTraceId"), jSONObject4.getString("eventId"), jSONObject4.getString("eventName"), jSONObject4.optString("memo"), jSONObject4.optString("resultCode"), jSONObject4.getString("sceneId"), jSONObject4.getString("sceneName"), jSONObject4.optBoolean("success", true), jSONArray2));
                                if (!MessageUtil.checkMemo(str, jSONObject5).booleanValue()) {
                                    Log.record("家庭任务🏠道早安#DeliverContentExpand 调用失败");
                                    return;
                                }
                                String string = jSONObject5.getString("deliverId");
                                JSONObject jSONObject6 = new JSONObject(AntFarmRpcCall.QueryExpandContent(string));
                                if (!MessageUtil.checkMemo(str, jSONObject6).booleanValue()) {
                                    Log.record("家庭任务🏠道早安#QueryExpandContent 调用失败");
                                    return;
                                }
                                String string2 = jSONObject6.getString("content");
                                if (MessageUtil.checkMemo(str, new JSONObject(AntFarmRpcCall.deliverMsgSend(this.ownerGroupId, jSONArray2, string2, string))).booleanValue()) {
                                    Log.farm("家庭任务🌈[道早安]" + string2);
                                    Status.flagToday("antFarm::deliverMsgSend");
                                    return;
                                }
                                return;
                            }
                        }
                        Log.record("家庭任务🏠道早安#GREETING 任务非 TODO 状态，跳过");
                        Status.flagToday("antFarm::deliverMsgSend");
                        return;
                    }
                    Log.record("家庭任务🏠道早安#远端无 GREETING 任务，可能今日已完成，跳过");
                    Status.flagToday("antFarm::deliverMsgSend");
                } catch (Throwable th) {
                    Log.printStackTrace("familyTaskTips 解析失败，出于安全考虑跳过道早安：", th);
                }
            }
        } catch (Throwable th2) {
            String str2 = TAG;
            Log.i(str2, "deliverMsgSend err:");
            Log.printStackTrace(str2, th2);
        }
    }

    private void familyShareToFriends(String str, List<String> list, SelectModelField selectModelField) {
        try {
            if (Status.hasFlagToday("antFarm::familyShareToFriends").booleanValue()) {
                return;
            }
            Set<String> value = selectModelField.getValue();
            List<AlipayUser> list2 = AlipayUser.getList();
            if (list2.isEmpty()) {
                Log.record("allUser is empty");
                return;
            }
            ArrayList<AlipayUser> arrayList = new ArrayList(list2);
            Collections.shuffle(arrayList);
            JSONArray jSONArray = new JSONArray();
            for (AlipayUser alipayUser : arrayList) {
                if (!list.contains(alipayUser.getId()) && !value.contains(alipayUser.getId()) && alipayUser.getId() != UserIdMap.getCurrentUid()) {
                    jSONArray.put(alipayUser.getId());
                    if (jSONArray.length() >= 2) {
                        break;
                    }
                }
            }
            if (jSONArray.length() == 0) {
                Log.record("没有符合分享条件的好友");
                return;
            }
            Log.record("家庭分享🏠邀请:" + jSONArray);
            for (int i = 0; i < jSONArray.length(); i++) {
                String string = jSONArray.getString(i);
                if (MessageUtil.checkResultCode(TAG, new JSONObject(AntFarmRpcCall.batchInviteP2P(str, string))).booleanValue()) {
                    Log.farm("家庭任务🏠分享给好友[" + UserIdMap.getShowName(string) + "]");
                }
            }
            Status.flagToday("antFarm::familyShareToFriends");
        } catch (Throwable th) {
            String str2 = TAG;
            Log.i(str2, "familyShareToFriends err:");
            Log.printStackTrace(str2, th);
        }
    }

    private String formatDuration(long j) {
        long j2;
        String str;
        long jAbs = Math.abs(j) / 1000;
        if (jAbs < 60) {
            str = "秒";
            j2 = jAbs;
        } else if (jAbs < 3600) {
            j2 = jAbs / 60;
            str = "分钟";
        } else if (jAbs < 86400) {
            j2 = jAbs / 3600;
            str = "小时";
        } else if (jAbs < 2592000) {
            j2 = jAbs / 86400;
            str = "天";
        } else if (jAbs < 31536000) {
            j2 = jAbs / 2592000;
            str = "个月";
        } else {
            j2 = jAbs / 31536000;
            str = "年";
        }
        if (jAbs < 1) {
            return "刚刚";
        }
        if (j > 0) {
            return j2 + str + "后";
        }
        return j2 + str + "前";
    }

    private String getFamilyGroupId(String str) {
        try {
            JSONObject jSONObject = new JSONObject(AntFarmRpcCall.queryLoveCabin(str));
            if (MessageUtil.checkMemo(TAG, jSONObject).booleanValue()) {
                return jSONObject.optString("groupId");
            }
            return null;
        } catch (Throwable th) {
            Log.i(TAG, "getGroupId err:");
            Log.printStackTrace(th);
            return null;
        }
    }

    private JSONObject enterFamily() {
        try {
            JSONObject jSONObject = new JSONObject(AntFarmRpcCall.enterFamily());
            if (MessageUtil.checkMemo(TAG, jSONObject).booleanValue()) {
                return jSONObject;
            }
            return null;
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "enterFamily err:");
            Log.printStackTrace(str, th);
            return null;
        }
    }

    private Boolean familySleep(String str) {
        try {
            if (MessageUtil.checkMemo(TAG, new JSONObject(AntFarmRpcCall.familySleep(str))).booleanValue()) {
                Log.farm("亲密家庭🏠小鸡睡觉");
                syncFamilyStatus(str);
                return true;
            }
        } catch (Throwable th) {
            String str2 = TAG;
            Log.i(str2, "familySleep err:");
            Log.printStackTrace(str2, th);
        }
        return false;
    }

    private Boolean familyWakeUp() {
        try {
            if (MessageUtil.checkMemo(TAG, new JSONObject(AntFarmRpcCall.familyWakeUp())).booleanValue()) {
                Log.farm("亲密家庭🏠小鸡起床");
                return true;
            }
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "familyWakeUp err:");
            Log.printStackTrace(str, th);
        }
        return false;
    }

    private void familyAwardList() {
        try {
            JSONObject jSONObject = new JSONObject(AntFarmRpcCall.familyAwardList());
            if (MessageUtil.checkMemo(TAG, jSONObject).booleanValue()) {
                JSONArray jSONArray = jSONObject.getJSONArray("familyAwardRecordList");
                for (int i = 0; i < jSONArray.length(); i++) {
                    JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                    if (!jSONObject2.optBoolean("expired") && !jSONObject2.optBoolean("received", true) && !jSONObject2.has("linkUrl") && (!jSONObject2.has("operability") || jSONObject2.getBoolean("operability"))) {
                        receiveFamilyAward(jSONObject2.getString("rightId"), jSONObject2.getString("awardName"), jSONObject2.optInt("count", 1));
                    }
                }
            }
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "familyAwardList err:");
            Log.printStackTrace(str, th);
        }
    }

    private void receiveFamilyAward(String str, String str2, int i) {
        try {
            if (MessageUtil.checkMemo(TAG, new JSONObject(AntFarmRpcCall.receiveFamilyAward(str))).booleanValue()) {
                Log.farm("亲密家庭🏠领取奖励[" + str2 + "*" + i + "]");
            }
        } catch (Throwable th) {
            String str3 = TAG;
            Log.i(str3, "familyAwardList err:");
            Log.printStackTrace(str3, th);
        }
    }

    private void familyReceiveFarmTaskAward(String str, String str2) {
        try {
            if (MessageUtil.checkMemo(TAG, new JSONObject(AntFarmRpcCall.familyReceiveFarmTaskAward(str))).booleanValue()) {
                Log.farm("亲密家庭🏠提交任务[" + str2 + "]");
            }
        } catch (Throwable th) {
            String str3 = TAG;
            Log.i(str3, "familyReceiveFarmTaskAward err:");
            Log.printStackTrace(str3, th);
        }
    }

    private List<JSONObject> getSortedCuisineList(JSONArray jSONArray) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < jSONArray.length(); i++) {
            arrayList.add(jSONArray.optJSONObject(i));
        }
        Collections.sort(arrayList, new Comparator<JSONObject>() { // from class: io.github.lazyimmortal.sesame.model.task.antFarm.AntFarm.2
            @Override // java.util.Comparator
            public int compare(JSONObject jSONObject, JSONObject jSONObject2) {
                return jSONObject2.optInt("count") - jSONObject.optInt("count");
            }
        });
        return arrayList;
    }

    private JSONArray queryRecentFarmFood(int i) {
        try {
            JSONObject jSONObject = new JSONObject(AntFarmRpcCall.syncAnimalStatus(this.ownerFarmId));
            if (!MessageUtil.checkMemo(TAG, jSONObject).booleanValue()) {
                return null;
            }
            JSONArray jSONArray = jSONObject.getJSONArray("cuisineList");
            if (jSONArray.length() == 0) {
                return null;
            }
            List<JSONObject> sortedCuisineList = getSortedCuisineList(jSONArray);
            JSONArray jSONArray2 = new JSONArray();
            int i2 = 0;
            for (int i3 = 0; i3 < sortedCuisineList.size() && i2 < i; i3++) {
                JSONObject jSONObject2 = sortedCuisineList.get(i3);
                int i4 = jSONObject2.getInt("count");
                if (i2 + i4 >= i) {
                    i4 = i - i2;
                    jSONObject2.put("count", i4);
                }
                i2 += i4;
                jSONArray2.put(jSONObject2);
            }
            if (i2 == i) {
                return jSONArray2;
            }
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "queryRecentFarmFood err:");
            Log.printStackTrace(str, th);
        }
        return null;
    }

    private void familySign() {
        familyReceiveFarmTaskAward("FAMILY_SIGN_TASK", "每日签到");
    }

    private void syncFamilyStatus(String str) {
        try {
            MessageUtil.checkMemo(TAG, new JSONObject(AntFarmRpcCall.syncFamilyStatus(str, "INTIMACY_VALUE", this.ownerUserId)));
        } catch (Throwable th) {
            String str2 = TAG;
            Log.i(str2, "syncFamilyStatus err:");
            Log.printStackTrace(str2, th);
        }
    }

    public enum ToolType {
        STEALTOOL,
        ACCELERATETOOL,
        SHARETOOL,
        FENCETOOL,
        NEWEGGTOOL,
        DOLLTOOL,
        BIG_EATER_TOOL,
        ADVANCE_ORNAMENT_TOOL,
        ORDINARY_ORNAMENT_TOOL,
        RARE_ORNAMENT_TOOL;

        public static final CharSequence[] nickNames = {"蹭饭卡", "加速卡", "救济卡", "篱笆卡", "新蛋卡", "公仔补签卡", "加饭卡", "高级装扮补签", "普通装扮补签卡", "稀有装扮补签卡"};

        public CharSequence nickName() {
            return nickNames[ordinal()];
        }
    }

    public enum GameType {
        starGame,
        jumpGame,
        flyGame,
        hitGame;

        public static final CharSequence[] gameNames = {"星星球", "登山赛", "飞行赛", "欢乐揍小鸡"};

        public CharSequence gameName() {
            return gameNames[ordinal()];
        }
    }

    private static class Animal {
        public String animalBuff;
        public String animalFeedStatus;
        public String animalId;
        public String animalInteractStatus;
        public Long beHiredEndTime;
        public Double consumeSpeed;
        public String currentFarmId;
        public String currentFarmMasterUserId;
        public Double foodHaveEatten;
        public String locationType;
        public String masterFarmId;
        public Long startEatTime;
        public String subAnimalType;

        private Animal() {
        }
    }

    private static class RewardFriend {
        public String consistencyKey;
        public String friendId;
        public String time;

        private RewardFriend() {
        }
    }

    private static class FarmTool {
        public int toolCount;
        public int toolHoldLimit;
        public String toolId;
        public ToolType toolType;

        private FarmTool() {
        }
    }

    public enum ItemStatus {
        NO_ENOUGH_POINT,
        REACH_LIMIT,
        REACH_USER_HOLD_LIMIT;

        public static final String[] nickNames = {"乐园币不足", "兑换达到上限", "达到用户持有上限"};

        public String nickName() {
            return nickNames[ordinal()];
        }
    }
}
