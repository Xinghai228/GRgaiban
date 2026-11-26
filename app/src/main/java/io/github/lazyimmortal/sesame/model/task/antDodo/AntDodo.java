package io.github.lazyimmortal.sesame.model.task.antDodo;

import io.github.lazyimmortal.sesame.data.ConfigV2;
import io.github.lazyimmortal.sesame.data.ModelFields;
import io.github.lazyimmortal.sesame.data.ModelGroup;
import io.github.lazyimmortal.sesame.data.modelFieldExt.BooleanModelField;
import io.github.lazyimmortal.sesame.data.modelFieldExt.ChoiceModelField;
import io.github.lazyimmortal.sesame.data.modelFieldExt.SelectModelField;
import io.github.lazyimmortal.sesame.data.task.ModelTask;
import io.github.lazyimmortal.sesame.entity.AlipayAntDodoTaskList;
import io.github.lazyimmortal.sesame.entity.CustomOption;
import io.github.lazyimmortal.sesame.model.base.TaskAlternative;
import io.github.lazyimmortal.sesame.model.base.TaskCommon;
import io.github.lazyimmortal.sesame.model.task.antFarm.AntFarm;
import io.github.lazyimmortal.sesame.util.IconRegistry;
import io.github.lazyimmortal.sesame.util.Log;
import io.github.lazyimmortal.sesame.util.MessageUtil;
import io.github.lazyimmortal.sesame.util.Statistics;
import io.github.lazyimmortal.sesame.util.Status;
import io.github.lazyimmortal.sesame.util.TaskIconUtil;
import io.github.lazyimmortal.sesame.util.TimeUtil;
import io.github.lazyimmortal.sesame.util.idMap.AntDodoTaskListMap;
import io.github.lazyimmortal.sesame.util.idMap.UserIdMap;
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
public class AntDodo extends ModelTask {
    private static final String TAG = "AntDodo";
    private SelectModelField AntDodoTaskList;
    private BooleanModelField AutoAntDodoTaskList;
    private BooleanModelField bookMedal;
    private SelectModelField bookMedalOptions;
    private SelectModelField collectToFriendList;
    private ChoiceModelField collectToFriendType;
    private BooleanModelField dodoTaskList;
    private BooleanModelField giftToFriend;
    private ChoiceModelField giftToFriendBookCollectedStatusType;
    private ChoiceModelField giftToFriendBookStatusType;
    private ChoiceModelField giftToFriendFantasticLevelType;
    private SelectModelField giftToFriendList;
    private ChoiceModelField giftToFriendMedalGenerationStatusType;
    private BooleanModelField scratchCard;
    private ChoiceModelField useCollectTimingType;
    private BooleanModelField useMaxExchangeFriendCard;
    private BooleanModelField useProp;
    private SelectModelField usePropList;
    private ChoiceModelField useUniversalCardBookCollectedStatusType;
    private BooleanModelField useUniversalCardBookCollectedhasCollected;
    private ChoiceModelField useUniversalCardBookStatusType;
    private ChoiceModelField useUniversalCardFantasticLevelType;
    private ChoiceModelField useUniversalCardMedalGenerationStatusType;

    public interface BookCollectedStatusType {
        public static final int ALL = 0;
        public static final int COMPLETED = 2;
        public static final int NOT_COMPLETED = 1;
        public static final String[] nickNames = {"全部状态", "未完成收集", "已完成收集"};
        public static final String[] types = {"ALL", "NOT_COMPLETED", "COMPLETED"};
    }

    public interface BookStatusType {
        public static final int ALL = 0;
        public static final int DOING = 2;
        public static final int END = 1;
        public static final String[] nickNames = {"全部图鉴", "往期图鉴", "本期图鉴"};
        public static final String[] types = {"ALL", "END", "DOING"};
    }

    public interface CollectToFriendType {
        public static final int COLLECT = 1;
        public static final int NONE = 0;
        public static final int NOT_COLLECT = 2;
        public static final String[] nickNames = {"不帮抽", "帮抽已选好友", "帮抽未选好友"};
    }

    public interface FantasticLevelType {
        public static final int COMMON = 0;
        public static final int MAGIC = 2;
        public static final int RARE = 1;
        public static final String[] nickNames = {"普通", "稀有", "神奇"};
        public static final int[] stars = {1, 2, 3};
    }

    public interface MedalGenerationStatusType {
        public static final int ALL = 0;
        public static final int CAN_GENERATE = 2;
        public static final int CAN_NOT_GENERATE = 1;
        public static final int GENERATED = 3;
        public static final String[] nickNames = {"全部类型", "未能合成", "可以合成", "已经合成"};
        public static final String[] types = {"ALL", "CAN_NOT_GENERATE", "CAN_GENERATE", "GENERATED"};
    }

    public interface TimingType {
        public static final int EVERY_DAY = 0;
        public static final int LAST_DAY = 1;
        public static final String[] nickNames = {"每天使用", "专辑最后一天"};
    }

    @Override // io.github.lazyimmortal.sesame.data.task.ModelTask, io.github.lazyimmortal.sesame.data.Model
    public String getName() {
        return "物种";
    }

    @Override // io.github.lazyimmortal.sesame.data.Model
    public ModelGroup getGroup() {
        return ModelGroup.FOREST;
    }

    @Override // io.github.lazyimmortal.sesame.data.task.ModelTask, io.github.lazyimmortal.sesame.data.Model
    public ModelFields getFields() {
        ModelFields modelFields = new ModelFields();
        BooleanModelField booleanModelField = new BooleanModelField("dodoTaskList", "物种任务", false);
        this.dodoTaskList = booleanModelField;
        modelFields.addField(booleanModelField);
        BooleanModelField booleanModelField2 = new BooleanModelField("AutoAntDodoTaskList", "物种任务 | 自动黑白名单", true);
        this.AutoAntDodoTaskList = booleanModelField2;
        modelFields.addField(booleanModelField2);
        SelectModelField selectModelField = new SelectModelField("AntDodoTaskList", "物种任务 | 黑名单列表", new LinkedHashSet(), new SelectModelField.SelectListFunc() { // from class: io.github.lazyimmortal.sesame.model.task.antDodo.AntDodo$$ExternalSyntheticLambda0
            @Override // io.github.lazyimmortal.sesame.data.modelFieldExt.SelectModelField.SelectListFunc
            public final List getList() {
                return AlipayAntDodoTaskList.getList();
            }
        });
        this.AntDodoTaskList = selectModelField;
        modelFields.addField(selectModelField);
        BooleanModelField booleanModelField3 = new BooleanModelField("scratchCard", "自动刮卡 | 开启", false);
        this.scratchCard = booleanModelField3;
        modelFields.addField(booleanModelField3);
        BooleanModelField booleanModelField4 = new BooleanModelField("useProp", "使用道具 | 开启", false);
        this.useProp = booleanModelField4;
        modelFields.addField(booleanModelField4);
        SelectModelField selectModelField2 = new SelectModelField("usePropList", "使用道具 | 道具列表", new LinkedHashSet(), new SelectModelField.SelectListFunc() { // from class: io.github.lazyimmortal.sesame.model.task.antDodo.AntDodo$$ExternalSyntheticLambda1
            @Override // io.github.lazyimmortal.sesame.data.modelFieldExt.SelectModelField.SelectListFunc
            public final List getList() {
                return CustomOption.getAntDodoPropList();
            }
        });
        this.usePropList = selectModelField2;
        modelFields.addField(selectModelField2);
        ChoiceModelField choiceModelField = new ChoiceModelField("useCollectTimingType", "抽卡道具 | 使用时机", 0, TimingType.nickNames);
        this.useCollectTimingType = choiceModelField;
        modelFields.addField(choiceModelField);
        ChoiceModelField choiceModelField2 = new ChoiceModelField("useUniversalCardBookStatusType", "万能卡片 | 图鉴状态类型", 1, BookStatusType.nickNames);
        this.useUniversalCardBookStatusType = choiceModelField2;
        modelFields.addField(choiceModelField2);
        ChoiceModelField choiceModelField3 = new ChoiceModelField("useUniversalCardBookCollectedStatusType", "万能卡片 | 图鉴收集状态", 0, BookCollectedStatusType.nickNames);
        this.useUniversalCardBookCollectedStatusType = choiceModelField3;
        modelFields.addField(choiceModelField3);
        BooleanModelField booleanModelField5 = new BooleanModelField("useUniversalCardBookCollectedhasCollected", "万能卡片 | 优先兑换未获得状态卡片", false);
        this.useUniversalCardBookCollectedhasCollected = booleanModelField5;
        modelFields.addField(booleanModelField5);
        ChoiceModelField choiceModelField4 = new ChoiceModelField("useUniversalCardMedalGenerationStatusType", "万能卡片 | 勋章合成状态", 0, MedalGenerationStatusType.nickNames);
        this.useUniversalCardMedalGenerationStatusType = choiceModelField4;
        modelFields.addField(choiceModelField4);
        ChoiceModelField choiceModelField5 = new ChoiceModelField("useUniversalCardFantasticLevelType", "万能卡片 | 最低等级", 2, FantasticLevelType.nickNames);
        this.useUniversalCardFantasticLevelType = choiceModelField5;
        modelFields.addField(choiceModelField5);
        BooleanModelField booleanModelField6 = new BooleanModelField("bookMedal", "图鉴勋章 | 开启", false);
        this.bookMedal = booleanModelField6;
        modelFields.addField(booleanModelField6);
        SelectModelField selectModelField3 = new SelectModelField("bookMedalOptions", "图鉴勋章 | 选项", new LinkedHashSet(), new SelectModelField.SelectListFunc() { // from class: io.github.lazyimmortal.sesame.model.task.antDodo.AntDodo$$ExternalSyntheticLambda2
            @Override // io.github.lazyimmortal.sesame.data.modelFieldExt.SelectModelField.SelectListFunc
            public final List getList() {
                return CustomOption.getAntDodoBookMedalOptions();
            }
        });
        this.bookMedalOptions = selectModelField3;
        modelFields.addField(selectModelField3);
        ChoiceModelField choiceModelField6 = new ChoiceModelField("collectToFriendType", "帮抽卡片 | 动作", 0, CollectToFriendType.nickNames);
        this.collectToFriendType = choiceModelField6;
        modelFields.addField(choiceModelField6);
        SelectModelField selectModelField4 = new SelectModelField("collectToFriendList", "帮抽卡片 | 好友列表", new LinkedHashSet(), new AntDodo$$ExternalSyntheticLambda3());
        this.collectToFriendList = selectModelField4;
        modelFields.addField(selectModelField4);
        BooleanModelField booleanModelField7 = new BooleanModelField("useMaxExchangeFriendCard", "帮抽交换 | 用历史最多卡片", false);
        this.useMaxExchangeFriendCard = booleanModelField7;
        modelFields.addField(booleanModelField7);
        BooleanModelField booleanModelField8 = new BooleanModelField("giftToFriend", "赠送卡片 | 开启", false);
        this.giftToFriend = booleanModelField8;
        modelFields.addField(booleanModelField8);
        ChoiceModelField choiceModelField7 = new ChoiceModelField("giftToFriendBookStatusType", "赠送卡片 | 图鉴状态类型", 0, BookStatusType.nickNames);
        this.giftToFriendBookStatusType = choiceModelField7;
        modelFields.addField(choiceModelField7);
        ChoiceModelField choiceModelField8 = new ChoiceModelField("giftToFriendBookCollectedStatusType", "赠送卡片 | 图鉴收集状态", 0, BookCollectedStatusType.nickNames);
        this.giftToFriendBookCollectedStatusType = choiceModelField8;
        modelFields.addField(choiceModelField8);
        ChoiceModelField choiceModelField9 = new ChoiceModelField("giftToFriendMedalGenerationStatusType", "赠送卡片 | 勋章合成状态", 0, MedalGenerationStatusType.nickNames);
        this.giftToFriendMedalGenerationStatusType = choiceModelField9;
        modelFields.addField(choiceModelField9);
        ChoiceModelField choiceModelField10 = new ChoiceModelField("giftToFriendFantasticLevelType", "赠送卡片 | 最低等级", 0, FantasticLevelType.nickNames);
        this.giftToFriendFantasticLevelType = choiceModelField10;
        modelFields.addField(choiceModelField10);
        SelectModelField selectModelField5 = new SelectModelField("giftToFriendList", "赠送卡片 | 好友列表", new LinkedHashSet(), new AntDodo$$ExternalSyntheticLambda3(), "会赠送所有满足条件的卡片给已选择的好友");
        this.giftToFriendList = selectModelField5;
        modelFields.addField(selectModelField5);
        return modelFields;
    }

    @Override // io.github.lazyimmortal.sesame.data.task.ModelTask
    public Boolean check() {
        if (TaskCommon.IS_ENERGY_TIME.booleanValue()) {
            Log.forest("任务暂停⏸️神奇物种:当前为仅收能量时间");
            return false;
        }
        return true;
    }

    @Override // io.github.lazyimmortal.sesame.data.task.ModelTask
    public void run() {
        try {
            if (!Status.hasFlagToday("BlackList::initAntDodo").booleanValue()) {
                initAntDodoTaskListMap(this.AutoAntDodoTaskList.getValue().booleanValue(), this.dodoTaskList.getValue().booleanValue());
                Status.flagToday("BlackList::initAntDodo");
            }
            collect();
            if (this.dodoTaskList.getValue().booleanValue()) {
                taskList();
            }
            if (this.useProp.getValue().booleanValue()) {
                propList();
            }
            if (this.collectToFriendType.getValue().intValue() != 0) {
                collectToFriend();
            }
            if (this.scratchCard.getValue().booleanValue()) {
                scratchAnimalCard();
            }
            if (this.bookMedal.getValue().booleanValue()) {
                generateBookMedal();
            }
            if (this.giftToFriend.getValue().booleanValue()) {
                giftToFriend();
            }
            dodoInfo();
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "AntoDodo.start.run err:");
            Log.printStackTrace(str, th);
        }
    }

    /* JADX WARN: Code duplicated, block: B:109:0x01ad A[Catch: all -> 0x01e9, TryCatch #6 {all -> 0x01e9, blocks: (B:107:0x0198, B:109:0x01ad, B:111:0x01b9), top: B:231:0x0198 }] */
    /* JADX WARN: Code duplicated, block: B:111:0x01b9 A[Catch: all -> 0x01e9, TRY_LEAVE, TryCatch #6 {all -> 0x01e9, blocks: (B:107:0x0198, B:109:0x01ad, B:111:0x01b9), top: B:231:0x0198 }] */
    /* JADX WARN: Code duplicated, block: B:114:0x01c3 A[Catch: all -> 0x01cc, TRY_LEAVE, TryCatch #8 {all -> 0x01cc, blocks: (B:112:0x01bd, B:114:0x01c3), top: B:235:0x01bd }] */
    /* JADX WARN: Code duplicated, block: B:118:0x01ce  */
    /* JADX WARN: Code duplicated, block: B:122:0x01d6 A[Catch: all -> 0x01e1, TRY_LEAVE, TryCatch #2 {all -> 0x01e1, blocks: (B:120:0x01d0, B:122:0x01d6), top: B:223:0x01d0 }] */
    /* JADX WARN: Code duplicated, block: B:124:0x01df  */
    /* JADX WARN: Code duplicated, block: B:127:0x01e3  */
    /* JADX WARN: Code duplicated, block: B:135:0x0207 A[Catch: all -> 0x0273, TryCatch #12 {all -> 0x0273, blocks: (B:133:0x01f8, B:135:0x0207, B:137:0x0213, B:140:0x021b), top: B:243:0x01f8 }] */
    /* JADX WARN: Code duplicated, block: B:167:0x026c  */
    /* JADX WARN: Code duplicated, block: B:177:0x029f A[Catch: all -> 0x0321, TryCatch #1 {all -> 0x0321, blocks: (B:174:0x0287, B:177:0x029f, B:180:0x02a9, B:183:0x02b6, B:185:0x02bc, B:188:0x02c6), top: B:221:0x0287 }] */
    /* JADX WARN: Code duplicated, block: B:182:0x02b1  */
    /* JADX WARN: Code duplicated, block: B:185:0x02bc A[Catch: all -> 0x0321, TryCatch #1 {all -> 0x0321, blocks: (B:174:0x0287, B:177:0x029f, B:180:0x02a9, B:183:0x02b6, B:185:0x02bc, B:188:0x02c6), top: B:221:0x0287 }] */
    /* JADX WARN: Code duplicated, block: B:187:0x02c2  */
    /* JADX WARN: Code duplicated, block: B:188:0x02c6 A[Catch: all -> 0x0321, TryCatch #1 {all -> 0x0321, blocks: (B:174:0x0287, B:177:0x029f, B:180:0x02a9, B:183:0x02b6, B:185:0x02bc, B:188:0x02c6), top: B:221:0x0287 }] */
    /* JADX WARN: Code duplicated, block: B:190:0x02d0  */
    /* JADX WARN: Code duplicated, block: B:193:0x02db  */
    /* JADX WARN: Code duplicated, block: B:196:0x02e7  */
    /* JADX WARN: Code duplicated, block: B:203:0x0309  */
    /* JADX WARN: Code duplicated, block: B:216:0x038d  */
    /* JADX WARN: Code duplicated, block: B:219:0x02f6 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:271:0x0318 A[ADDED_TO_REGION, EDGE_INSN: B:271:0x0318->B:207:0x0318 BREAK  A[LOOP:2: B:221:0x0287->B:206:0x0310], REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:273:0x029e A[ADDED_TO_REGION, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:79:0x0146 A[Catch: all -> 0x0185, TryCatch #3 {all -> 0x0185, blocks: (B:77:0x0133, B:79:0x0146, B:81:0x0150), top: B:225:0x0133 }] */
    /* JADX WARN: Code duplicated, block: B:81:0x0150 A[Catch: all -> 0x0185, TRY_LEAVE, TryCatch #3 {all -> 0x0185, blocks: (B:77:0x0133, B:79:0x0146, B:81:0x0150), top: B:225:0x0133 }] */
    /* JADX WARN: Code duplicated, block: B:83:0x0159  */
    /* JADX WARN: Code duplicated, block: B:86:0x0160 A[Catch: all -> 0x017d, TRY_LEAVE, TryCatch #18 {all -> 0x017d, blocks: (B:84:0x015a, B:86:0x0160), top: B:255:0x015a }] */
    /* JADX WARN: Code duplicated, block: B:88:0x0169  */
    /* JADX WARN: Code duplicated, block: B:91:0x0170 A[Catch: all -> 0x017b, TRY_LEAVE, TryCatch #15 {all -> 0x017b, blocks: (B:89:0x016a, B:91:0x0170), top: B:249:0x016a }] */
    /* JADX WARN: Code duplicated, block: B:93:0x0179  */
    /* JADX WARN: Code duplicated, block: B:98:0x017f  */
    /* JADX WARN: Unreachable blocks removed: 2, instructions: 2 */
    private void dodoInfo() {
        String strOptString;
        String strOptString2;
        Integer numValueOf;
        Integer numValueOf2;
        Integer numValueOf3;
        Integer num;
        String str;
        String str2;
        Integer num2;
        Integer num3;
        Integer num4;
        Integer num5;
        Integer num6;
        Integer num7;
        Integer numValueOf4;
        Integer numValueOf5;
        Integer num8;
        Integer num9;
        String strOptString3;
        Integer numValueOf6;
        Integer num10;
        Integer num11;
        Integer num12;
        Integer num13;
        String str3;
        int iOptInt;
        int i;
        int i2;
        Integer num14;
        Integer numValueOf7;
        JSONObject jSONObject;
        JSONObject jSONObjectOptJSONObject;
        JSONArray jSONArrayOptJSONArray;
        boolean zOptBoolean;
        int i3;
        JSONObject jSONObjectOptJSONObject2;
        JSONObject jSONObjectOptJSONObject3;
        JSONObject jSONObject2;
        JSONObject jSONObjectOptJSONObject4;
        JSONObject jSONObject3;
        Integer numValueOf8;
        JSONObject jSONObject4;
        JSONObject jSONObjectOptJSONObject5;
        JSONObject jSONObject5;
        Integer numValueOf9;
        JSONObject jSONObject6;
        Integer numValueOf10;
        Integer num15;
        Integer num16;
        Integer num17;
        String str4 = "data";
        String strOptString4 = "";
        try {
            try {
                try {
                    try {
                        try {
                            JSONObject jSONObject7 = new JSONObject(AntDodoRpcCall.homePage());
                            if (MessageUtil.checkResultCode(TAG, jSONObject7).booleanValue()) {
                                JSONObject jSONObject8 = jSONObject7.getJSONObject("data");
                                JSONObject jSONObjectOptJSONObject6 = jSONObject8.optJSONObject("animalBook");
                                if (jSONObjectOptJSONObject6 != null) {
                                    strOptString2 = jSONObjectOptJSONObject6.optString("name", "");
                                    try {
                                        strOptString = jSONObjectOptJSONObject6.optString("endDate", "");
                                        try {
                                            numValueOf3 = jSONObjectOptJSONObject6.has("totalCount") ? Integer.valueOf(jSONObjectOptJSONObject6.optInt("totalCount")) : null;
                                            try {
                                                numValueOf2 = jSONObjectOptJSONObject6.has("magicCount") ? Integer.valueOf(jSONObjectOptJSONObject6.optInt("magicCount")) : null;
                                                try {
                                                    numValueOf = jSONObjectOptJSONObject6.has("rareCount") ? Integer.valueOf(jSONObjectOptJSONObject6.optInt("rareCount")) : null;
                                                    try {
                                                        if (jSONObjectOptJSONObject6.has("commonCount")) {
                                                            Integer numValueOf11 = Integer.valueOf(jSONObjectOptJSONObject6.optInt("commonCount"));
                                                            str = strOptString;
                                                            num3 = numValueOf3;
                                                            num4 = numValueOf2;
                                                            num16 = numValueOf;
                                                            num15 = numValueOf11;
                                                        } else {
                                                            str = strOptString;
                                                            num3 = numValueOf3;
                                                            num4 = numValueOf2;
                                                            num16 = numValueOf;
                                                            num15 = null;
                                                        }
                                                    } catch (Throwable th) {
                                                        th = th;
                                                        num = null;
                                                        String str5 = TAG;
                                                        Log.i(str5, "dodoInfo homePage err:");
                                                        Log.printStackTrace(str5, th);
                                                        str = strOptString;
                                                        str2 = strOptString2;
                                                        num2 = null;
                                                        num3 = numValueOf3;
                                                        num4 = numValueOf2;
                                                        num5 = numValueOf;
                                                        num6 = num;
                                                        num7 = num2;
                                                        jSONObject5 = new JSONObject(AntDodoRpcCall.queryMyAchievement());
                                                        if (MessageUtil.checkResultCode(TAG, jSONObject5).booleanValue()) {
                                                            jSONObject6 = jSONObject5.getJSONObject("data");
                                                            if (jSONObject6.has("collectedDisAnimalCount")) {
                                                                numValueOf4 = Integer.valueOf(jSONObject6.optInt("collectedDisAnimalCount"));
                                                            } else {
                                                                numValueOf4 = null;
                                                            }
                                                            try {
                                                                if (jSONObject6.has("allMedalCount")) {
                                                                    numValueOf5 = Integer.valueOf(jSONObject6.optInt("allMedalCount"));
                                                                } else {
                                                                    numValueOf5 = null;
                                                                }
                                                                try {
                                                                    if (jSONObject6.has("bookMedalCount")) {
                                                                        numValueOf9 = Integer.valueOf(jSONObject6.optInt("bookMedalCount"));
                                                                    } else {
                                                                        numValueOf9 = null;
                                                                    }
                                                                } catch (Throwable th2) {
                                                                    th = th2;
                                                                    String str6 = TAG;
                                                                    Log.i(str6, "dodoInfo queryMyAchievement err:");
                                                                    Log.printStackTrace(str6, th);
                                                                    num8 = numValueOf4;
                                                                    num9 = null;
                                                                }
                                                            } catch (Throwable th3) {
                                                                th = th3;
                                                                numValueOf5 = null;
                                                                String str7 = TAG;
                                                                Log.i(str7, "dodoInfo queryMyAchievement err:");
                                                                Log.printStackTrace(str7, th);
                                                                num8 = numValueOf4;
                                                                num9 = null;
                                                                jSONObject3 = new JSONObject(AntDodoRpcCall.queryMedalAndConfig());
                                                                if (MessageUtil.checkResultCode(TAG, jSONObject3).booleanValue()) {
                                                                    jSONObject4 = jSONObject3.getJSONObject("data");
                                                                    jSONObjectOptJSONObject5 = jSONObject4.optJSONObject("medal");
                                                                    try {
                                                                        if (jSONObjectOptJSONObject5 != null) {
                                                                            strOptString3 = jSONObjectOptJSONObject5.optString("name", "");
                                                                            try {
                                                                                numValueOf6 = jSONObjectOptJSONObject5.has("expPoint") ? Integer.valueOf(jSONObjectOptJSONObject5.optInt("expPoint")) : null;
                                                                                if (jSONObject4.has("totalExp")) {
                                                                                    numValueOf8 = Integer.valueOf(jSONObject4.optInt("totalExp"));
                                                                                } else {
                                                                                    numValueOf8 = null;
                                                                                }
                                                                            } catch (Throwable th4) {
                                                                                th = th4;
                                                                                numValueOf6 = null;
                                                                                String str8 = TAG;
                                                                                Log.i(str8, "dodoInfo queryMedalAndConfig err:");
                                                                                Log.printStackTrace(str8, th);
                                                                                num10 = numValueOf6;
                                                                                num11 = null;
                                                                                jSONObject2 = new JSONObject(AntDodoRpcCall.queryBookList());
                                                                                if (isTransientSystemError(jSONObject2)) {
                                                                                    num12 = num11;
                                                                                    num13 = num10;
                                                                                    str3 = strOptString3;
                                                                                } else {
                                                                                    num12 = num11;
                                                                                    num13 = num10;
                                                                                    str3 = strOptString3;
                                                                                }
                                                                                iOptInt = 0;
                                                                                i = 0;
                                                                                i2 = 0;
                                                                                while (true) {
                                                                                    try {
                                                                                        jSONObject = new JSONObject(AntDodoRpcCall.queryBookAnimalList(18, i2));
                                                                                        if (!MessageUtil.checkResultCode(TAG, jSONObject).booleanValue()) {
                                                                                            jSONArrayOptJSONArray = jSONObjectOptJSONObject.optJSONArray("animalForUserList");
                                                                                            if (jSONArrayOptJSONArray != null) {
                                                                                                i3 = 0;
                                                                                                while (i3 < jSONArrayOptJSONArray.length()) {
                                                                                                    jSONObjectOptJSONObject2 = jSONArrayOptJSONArray.optJSONObject(i3);
                                                                                                    if (jSONObjectOptJSONObject2 == null) {
                                                                                                        jSONObjectOptJSONObject3 = null;
                                                                                                    } else {
                                                                                                        jSONObjectOptJSONObject3 = jSONObjectOptJSONObject2.optJSONObject("collectDetail");
                                                                                                    }
                                                                                                    if (jSONObjectOptJSONObject3 != null) {
                                                                                                        num14 = num9;
                                                                                                        try {
                                                                                                            iOptInt += jSONObjectOptJSONObject3.optInt("count", 0);
                                                                                                        } catch (Throwable th5) {
                                                                                                            th = th5;
                                                                                                            String str9 = TAG;
                                                                                                            Log.i(str9, "dodoInfo queryBookAnimalList err:");
                                                                                                            Log.printStackTrace(str9, th);
                                                                                                            numValueOf7 = null;
                                                                                                            StringBuilder sb = new StringBuilder("神奇物种🦕[");
                                                                                                            sb.append(UserIdMap.getShowName(UserIdMap.getCurrentUid()));
                                                                                                            sb.append("]图鉴[");
                                                                                                            sb.append(str2);
                                                                                                            sb.append("](");
                                                                                                            sb.append(str);
                                                                                                            sb.append("止)卡片");
                                                                                                            sb.append(Log.n(num3));
                                                                                                            sb.append("(神奇");
                                                                                                            sb.append(Log.n(num4));
                                                                                                            sb.append("/稀有");
                                                                                                            sb.append(Log.n(num5));
                                                                                                            sb.append("/普通");
                                                                                                            sb.append(Log.n(num6));
                                                                                                            sb.append(")已集");
                                                                                                            if (strOptString4.isEmpty()) {
                                                                                                                strOptString4 = " ";
                                                                                                            }
                                                                                                            sb.append(strOptString4);
                                                                                                            sb.append("持卡共");
                                                                                                            sb.append(Log.n(numValueOf7));
                                                                                                            sb.append("张今日剩余抽卡");
                                                                                                            sb.append(Log.n(num7));
                                                                                                            sb.append(";累计收集");
                                                                                                            sb.append(Log.n(num8));
                                                                                                            sb.append("勋章");
                                                                                                            sb.append(Log.n(numValueOf5));
                                                                                                            sb.append("(图鉴");
                                                                                                            sb.append(Log.n(num14));
                                                                                                            sb.append(");[");
                                                                                                            sb.append(str3);
                                                                                                            sb.append("]经验");
                                                                                                            sb.append(Log.n(num13));
                                                                                                            sb.append("/");
                                                                                                            sb.append(Log.n(num12));
                                                                                                            sb.append(";");
                                                                                                            Log.info(sb.toString());
                                                                                                        }
                                                                                                    } else {
                                                                                                        num14 = num9;
                                                                                                    }
                                                                                                    i3++;
                                                                                                    jSONArrayOptJSONArray = jSONArrayOptJSONArray;
                                                                                                    num9 = num14;
                                                                                                }
                                                                                                num14 = num9;
                                                                                            } else {
                                                                                                num14 = num9;
                                                                                            }
                                                                                            zOptBoolean = jSONObjectOptJSONObject.optBoolean("hasMore", false);
                                                                                            if (zOptBoolean) {
                                                                                                try {
                                                                                                    i2 = Integer.parseInt(jSONObjectOptJSONObject.optString("nextPageStart", "0"));
                                                                                                } catch (NumberFormatException unused) {
                                                                                                    zOptBoolean = false;
                                                                                                }
                                                                                            }
                                                                                            if (!zOptBoolean) {
                                                                                                break;
                                                                                            } else {
                                                                                                break;
                                                                                            }
                                                                                        }
                                                                                        num14 = num9;
                                                                                        i2 = i2;
                                                                                        str4 = str4;
                                                                                        num9 = num14;
                                                                                    } catch (Throwable th6) {
                                                                                        th = th6;
                                                                                        num14 = num9;
                                                                                    }
                                                                                }
                                                                                numValueOf7 = Integer.valueOf(iOptInt);
                                                                                StringBuilder sb2 = new StringBuilder("神奇物种🦕[");
                                                                                sb2.append(UserIdMap.getShowName(UserIdMap.getCurrentUid()));
                                                                                sb2.append("]图鉴[");
                                                                                sb2.append(str2);
                                                                                sb2.append("](");
                                                                                sb2.append(str);
                                                                                sb2.append("止)卡片");
                                                                                sb2.append(Log.n(num3));
                                                                                sb2.append("(神奇");
                                                                                sb2.append(Log.n(num4));
                                                                                sb2.append("/稀有");
                                                                                sb2.append(Log.n(num5));
                                                                                sb2.append("/普通");
                                                                                sb2.append(Log.n(num6));
                                                                                sb2.append(")已集");
                                                                                if (strOptString4.isEmpty()) {
                                                                                    strOptString4 = " ";
                                                                                }
                                                                                sb2.append(strOptString4);
                                                                                sb2.append("持卡共");
                                                                                sb2.append(Log.n(numValueOf7));
                                                                                sb2.append("张今日剩余抽卡");
                                                                                sb2.append(Log.n(num7));
                                                                                sb2.append(";累计收集");
                                                                                sb2.append(Log.n(num8));
                                                                                sb2.append("勋章");
                                                                                sb2.append(Log.n(numValueOf5));
                                                                                sb2.append("(图鉴");
                                                                                sb2.append(Log.n(num14));
                                                                                sb2.append(");[");
                                                                                sb2.append(str3);
                                                                                sb2.append("]经验");
                                                                                sb2.append(Log.n(num13));
                                                                                sb2.append("/");
                                                                                sb2.append(Log.n(num12));
                                                                                sb2.append(";");
                                                                                Log.info(sb2.toString());
                                                                            }
                                                                        } else {
                                                                            strOptString3 = "";
                                                                        }
                                                                        if (jSONObject4.has("totalExp")) {
                                                                            numValueOf8 = Integer.valueOf(jSONObject4.optInt("totalExp"));
                                                                        } else {
                                                                            numValueOf8 = null;
                                                                        }
                                                                    } catch (Throwable th7) {
                                                                        th = th7;
                                                                        String str10 = TAG;
                                                                        Log.i(str10, "dodoInfo queryMedalAndConfig err:");
                                                                        Log.printStackTrace(str10, th);
                                                                        num10 = numValueOf6;
                                                                        num11 = null;
                                                                    }
                                                                } else {
                                                                    strOptString3 = "";
                                                                    numValueOf8 = null;
                                                                    numValueOf6 = null;
                                                                }
                                                                num10 = numValueOf6;
                                                                num11 = numValueOf8;
                                                                jSONObject2 = new JSONObject(AntDodoRpcCall.queryBookList());
                                                                if (isTransientSystemError(jSONObject2)) {
                                                                    num12 = num11;
                                                                    num13 = num10;
                                                                    str3 = strOptString3;
                                                                } else {
                                                                    num12 = num11;
                                                                    num13 = num10;
                                                                    str3 = strOptString3;
                                                                }
                                                                iOptInt = 0;
                                                                i = 0;
                                                                i2 = 0;
                                                                while (true) {
                                                                    jSONObject = new JSONObject(AntDodoRpcCall.queryBookAnimalList(18, i2));
                                                                    if (!MessageUtil.checkResultCode(TAG, jSONObject).booleanValue()) {
                                                                        jSONArrayOptJSONArray = jSONObjectOptJSONObject.optJSONArray("animalForUserList");
                                                                        if (jSONArrayOptJSONArray != null) {
                                                                            i3 = 0;
                                                                            while (i3 < jSONArrayOptJSONArray.length()) {
                                                                                jSONObjectOptJSONObject2 = jSONArrayOptJSONArray.optJSONObject(i3);
                                                                                if (jSONObjectOptJSONObject2 == null) {
                                                                                    jSONObjectOptJSONObject3 = null;
                                                                                } else {
                                                                                    jSONObjectOptJSONObject3 = jSONObjectOptJSONObject2.optJSONObject("collectDetail");
                                                                                }
                                                                                if (jSONObjectOptJSONObject3 != null) {
                                                                                    num14 = num9;
                                                                                    iOptInt += jSONObjectOptJSONObject3.optInt("count", 0);
                                                                                } else {
                                                                                    num14 = num9;
                                                                                }
                                                                                i3++;
                                                                                jSONArrayOptJSONArray = jSONArrayOptJSONArray;
                                                                                num9 = num14;
                                                                            }
                                                                            num14 = num9;
                                                                        } else {
                                                                            num14 = num9;
                                                                        }
                                                                        zOptBoolean = jSONObjectOptJSONObject.optBoolean("hasMore", false);
                                                                        if (zOptBoolean) {
                                                                            i2 = Integer.parseInt(jSONObjectOptJSONObject.optString("nextPageStart", "0"));
                                                                        }
                                                                        if (!zOptBoolean) {
                                                                            break;
                                                                            break;
                                                                        } else {
                                                                            break;
                                                                            break;
                                                                        }
                                                                    }
                                                                    num14 = num9;
                                                                    i2 = i2;
                                                                    str4 = str4;
                                                                    num9 = num14;
                                                                }
                                                                numValueOf7 = Integer.valueOf(iOptInt);
                                                                StringBuilder sb3 = new StringBuilder("神奇物种🦕[");
                                                                sb3.append(UserIdMap.getShowName(UserIdMap.getCurrentUid()));
                                                                sb3.append("]图鉴[");
                                                                sb3.append(str2);
                                                                sb3.append("](");
                                                                sb3.append(str);
                                                                sb3.append("止)卡片");
                                                                sb3.append(Log.n(num3));
                                                                sb3.append("(神奇");
                                                                sb3.append(Log.n(num4));
                                                                sb3.append("/稀有");
                                                                sb3.append(Log.n(num5));
                                                                sb3.append("/普通");
                                                                sb3.append(Log.n(num6));
                                                                sb3.append(")已集");
                                                                if (strOptString4.isEmpty()) {
                                                                    strOptString4 = " ";
                                                                }
                                                                sb3.append(strOptString4);
                                                                sb3.append("持卡共");
                                                                sb3.append(Log.n(numValueOf7));
                                                                sb3.append("张今日剩余抽卡");
                                                                sb3.append(Log.n(num7));
                                                                sb3.append(";累计收集");
                                                                sb3.append(Log.n(num8));
                                                                sb3.append("勋章");
                                                                sb3.append(Log.n(numValueOf5));
                                                                sb3.append("(图鉴");
                                                                sb3.append(Log.n(num14));
                                                                sb3.append(");[");
                                                                sb3.append(str3);
                                                                sb3.append("]经验");
                                                                sb3.append(Log.n(num13));
                                                                sb3.append("/");
                                                                sb3.append(Log.n(num12));
                                                                sb3.append(";");
                                                                Log.info(sb3.toString());
                                                            }
                                                        } else {
                                                            numValueOf9 = null;
                                                            numValueOf4 = null;
                                                            numValueOf5 = null;
                                                        }
                                                        num8 = numValueOf4;
                                                        num9 = numValueOf9;
                                                        jSONObject3 = new JSONObject(AntDodoRpcCall.queryMedalAndConfig());
                                                        if (MessageUtil.checkResultCode(TAG, jSONObject3).booleanValue()) {
                                                            jSONObject4 = jSONObject3.getJSONObject("data");
                                                            jSONObjectOptJSONObject5 = jSONObject4.optJSONObject("medal");
                                                            if (jSONObjectOptJSONObject5 != null) {
                                                                strOptString3 = jSONObjectOptJSONObject5.optString("name", "");
                                                                if (jSONObjectOptJSONObject5.has("expPoint")) {
                                                                }
                                                                if (jSONObject4.has("totalExp")) {
                                                                    numValueOf8 = Integer.valueOf(jSONObject4.optInt("totalExp"));
                                                                } else {
                                                                    numValueOf8 = null;
                                                                }
                                                            } else {
                                                                strOptString3 = "";
                                                            }
                                                            if (jSONObject4.has("totalExp")) {
                                                                numValueOf8 = Integer.valueOf(jSONObject4.optInt("totalExp"));
                                                            } else {
                                                                numValueOf8 = null;
                                                            }
                                                        } else {
                                                            strOptString3 = "";
                                                            numValueOf8 = null;
                                                            numValueOf6 = null;
                                                        }
                                                        num10 = numValueOf6;
                                                        num11 = numValueOf8;
                                                        jSONObject2 = new JSONObject(AntDodoRpcCall.queryBookList());
                                                        if (isTransientSystemError(jSONObject2)) {
                                                            num12 = num11;
                                                            num13 = num10;
                                                            str3 = strOptString3;
                                                        } else {
                                                            num12 = num11;
                                                            num13 = num10;
                                                            str3 = strOptString3;
                                                        }
                                                        iOptInt = 0;
                                                        i = 0;
                                                        i2 = 0;
                                                        while (true) {
                                                            jSONObject = new JSONObject(AntDodoRpcCall.queryBookAnimalList(18, i2));
                                                            if (!MessageUtil.checkResultCode(TAG, jSONObject).booleanValue()) {
                                                                jSONArrayOptJSONArray = jSONObjectOptJSONObject.optJSONArray("animalForUserList");
                                                                if (jSONArrayOptJSONArray != null) {
                                                                    i3 = 0;
                                                                    while (i3 < jSONArrayOptJSONArray.length()) {
                                                                        jSONObjectOptJSONObject2 = jSONArrayOptJSONArray.optJSONObject(i3);
                                                                        if (jSONObjectOptJSONObject2 == null) {
                                                                            jSONObjectOptJSONObject3 = null;
                                                                        } else {
                                                                            jSONObjectOptJSONObject3 = jSONObjectOptJSONObject2.optJSONObject("collectDetail");
                                                                        }
                                                                        if (jSONObjectOptJSONObject3 != null) {
                                                                            num14 = num9;
                                                                            iOptInt += jSONObjectOptJSONObject3.optInt("count", 0);
                                                                        } else {
                                                                            num14 = num9;
                                                                        }
                                                                        i3++;
                                                                        jSONArrayOptJSONArray = jSONArrayOptJSONArray;
                                                                        num9 = num14;
                                                                    }
                                                                    num14 = num9;
                                                                } else {
                                                                    num14 = num9;
                                                                }
                                                                zOptBoolean = jSONObjectOptJSONObject.optBoolean("hasMore", false);
                                                                if (zOptBoolean) {
                                                                    i2 = Integer.parseInt(jSONObjectOptJSONObject.optString("nextPageStart", "0"));
                                                                }
                                                                if (!zOptBoolean) {
                                                                    break;
                                                                    break;
                                                                } else {
                                                                    break;
                                                                    break;
                                                                }
                                                            }
                                                            num14 = num9;
                                                            i2 = i2;
                                                            str4 = str4;
                                                            num9 = num14;
                                                        }
                                                        numValueOf7 = Integer.valueOf(iOptInt);
                                                        StringBuilder sb4 = new StringBuilder("神奇物种🦕[");
                                                        sb4.append(UserIdMap.getShowName(UserIdMap.getCurrentUid()));
                                                        sb4.append("]图鉴[");
                                                        sb4.append(str2);
                                                        sb4.append("](");
                                                        sb4.append(str);
                                                        sb4.append("止)卡片");
                                                        sb4.append(Log.n(num3));
                                                        sb4.append("(神奇");
                                                        sb4.append(Log.n(num4));
                                                        sb4.append("/稀有");
                                                        sb4.append(Log.n(num5));
                                                        sb4.append("/普通");
                                                        sb4.append(Log.n(num6));
                                                        sb4.append(")已集");
                                                        if (strOptString4.isEmpty()) {
                                                            strOptString4 = " ";
                                                        }
                                                        sb4.append(strOptString4);
                                                        sb4.append("持卡共");
                                                        sb4.append(Log.n(numValueOf7));
                                                        sb4.append("张今日剩余抽卡");
                                                        sb4.append(Log.n(num7));
                                                        sb4.append(";累计收集");
                                                        sb4.append(Log.n(num8));
                                                        sb4.append("勋章");
                                                        sb4.append(Log.n(numValueOf5));
                                                        sb4.append("(图鉴");
                                                        sb4.append(Log.n(num14));
                                                        sb4.append(");[");
                                                        sb4.append(str3);
                                                        sb4.append("]经验");
                                                        sb4.append(Log.n(num13));
                                                        sb4.append("/");
                                                        sb4.append(Log.n(num12));
                                                        sb4.append(";");
                                                        Log.info(sb4.toString());
                                                    }
                                                } catch (Throwable th8) {
                                                    th = th8;
                                                    numValueOf = null;
                                                }
                                            } catch (Throwable th9) {
                                                th = th9;
                                                numValueOf = null;
                                                numValueOf2 = null;
                                            }
                                        } catch (Throwable th10) {
                                            th = th10;
                                            numValueOf = null;
                                            numValueOf2 = null;
                                            numValueOf3 = null;
                                            num = null;
                                            String str11 = TAG;
                                            Log.i(str11, "dodoInfo homePage err:");
                                            Log.printStackTrace(str11, th);
                                            str = strOptString;
                                            str2 = strOptString2;
                                            num2 = null;
                                            num3 = numValueOf3;
                                            num4 = numValueOf2;
                                            num5 = numValueOf;
                                            num6 = num;
                                            num7 = num2;
                                            jSONObject5 = new JSONObject(AntDodoRpcCall.queryMyAchievement());
                                            if (MessageUtil.checkResultCode(TAG, jSONObject5).booleanValue()) {
                                                jSONObject6 = jSONObject5.getJSONObject("data");
                                                if (jSONObject6.has("collectedDisAnimalCount")) {
                                                    numValueOf4 = Integer.valueOf(jSONObject6.optInt("collectedDisAnimalCount"));
                                                } else {
                                                    numValueOf4 = null;
                                                }
                                                if (jSONObject6.has("allMedalCount")) {
                                                    numValueOf5 = Integer.valueOf(jSONObject6.optInt("allMedalCount"));
                                                } else {
                                                    numValueOf5 = null;
                                                }
                                                if (jSONObject6.has("bookMedalCount")) {
                                                    numValueOf9 = Integer.valueOf(jSONObject6.optInt("bookMedalCount"));
                                                } else {
                                                    numValueOf9 = null;
                                                }
                                            } else {
                                                numValueOf9 = null;
                                                numValueOf4 = null;
                                                numValueOf5 = null;
                                            }
                                            num8 = numValueOf4;
                                            num9 = numValueOf9;
                                            jSONObject3 = new JSONObject(AntDodoRpcCall.queryMedalAndConfig());
                                            if (MessageUtil.checkResultCode(TAG, jSONObject3).booleanValue()) {
                                                jSONObject4 = jSONObject3.getJSONObject("data");
                                                jSONObjectOptJSONObject5 = jSONObject4.optJSONObject("medal");
                                                if (jSONObjectOptJSONObject5 != null) {
                                                    strOptString3 = jSONObjectOptJSONObject5.optString("name", "");
                                                    if (jSONObjectOptJSONObject5.has("expPoint")) {
                                                    }
                                                    if (jSONObject4.has("totalExp")) {
                                                        numValueOf8 = Integer.valueOf(jSONObject4.optInt("totalExp"));
                                                    } else {
                                                        numValueOf8 = null;
                                                    }
                                                } else {
                                                    strOptString3 = "";
                                                }
                                                if (jSONObject4.has("totalExp")) {
                                                    numValueOf8 = Integer.valueOf(jSONObject4.optInt("totalExp"));
                                                } else {
                                                    numValueOf8 = null;
                                                }
                                            } else {
                                                strOptString3 = "";
                                                numValueOf8 = null;
                                                numValueOf6 = null;
                                            }
                                            num10 = numValueOf6;
                                            num11 = numValueOf8;
                                            jSONObject2 = new JSONObject(AntDodoRpcCall.queryBookList());
                                            if (isTransientSystemError(jSONObject2)) {
                                                num12 = num11;
                                                num13 = num10;
                                                str3 = strOptString3;
                                            } else {
                                                num12 = num11;
                                                num13 = num10;
                                                str3 = strOptString3;
                                            }
                                            iOptInt = 0;
                                            i = 0;
                                            i2 = 0;
                                            while (true) {
                                                jSONObject = new JSONObject(AntDodoRpcCall.queryBookAnimalList(18, i2));
                                                if (!MessageUtil.checkResultCode(TAG, jSONObject).booleanValue()) {
                                                    jSONArrayOptJSONArray = jSONObjectOptJSONObject.optJSONArray("animalForUserList");
                                                    if (jSONArrayOptJSONArray != null) {
                                                        i3 = 0;
                                                        while (i3 < jSONArrayOptJSONArray.length()) {
                                                            jSONObjectOptJSONObject2 = jSONArrayOptJSONArray.optJSONObject(i3);
                                                            if (jSONObjectOptJSONObject2 == null) {
                                                                jSONObjectOptJSONObject3 = null;
                                                            } else {
                                                                jSONObjectOptJSONObject3 = jSONObjectOptJSONObject2.optJSONObject("collectDetail");
                                                            }
                                                            if (jSONObjectOptJSONObject3 != null) {
                                                                num14 = num9;
                                                                iOptInt += jSONObjectOptJSONObject3.optInt("count", 0);
                                                            } else {
                                                                num14 = num9;
                                                            }
                                                            i3++;
                                                            jSONArrayOptJSONArray = jSONArrayOptJSONArray;
                                                            num9 = num14;
                                                        }
                                                        num14 = num9;
                                                    } else {
                                                        num14 = num9;
                                                    }
                                                    zOptBoolean = jSONObjectOptJSONObject.optBoolean("hasMore", false);
                                                    if (zOptBoolean) {
                                                        i2 = Integer.parseInt(jSONObjectOptJSONObject.optString("nextPageStart", "0"));
                                                    }
                                                    if (!zOptBoolean) {
                                                        break;
                                                        break;
                                                    } else {
                                                        break;
                                                        break;
                                                    }
                                                }
                                                num14 = num9;
                                                i2 = i2;
                                                str4 = str4;
                                                num9 = num14;
                                            }
                                            numValueOf7 = Integer.valueOf(iOptInt);
                                            StringBuilder sb5 = new StringBuilder("神奇物种🦕[");
                                            sb5.append(UserIdMap.getShowName(UserIdMap.getCurrentUid()));
                                            sb5.append("]图鉴[");
                                            sb5.append(str2);
                                            sb5.append("](");
                                            sb5.append(str);
                                            sb5.append("止)卡片");
                                            sb5.append(Log.n(num3));
                                            sb5.append("(神奇");
                                            sb5.append(Log.n(num4));
                                            sb5.append("/稀有");
                                            sb5.append(Log.n(num5));
                                            sb5.append("/普通");
                                            sb5.append(Log.n(num6));
                                            sb5.append(")已集");
                                            if (strOptString4.isEmpty()) {
                                                strOptString4 = " ";
                                            }
                                            sb5.append(strOptString4);
                                            sb5.append("持卡共");
                                            sb5.append(Log.n(numValueOf7));
                                            sb5.append("张今日剩余抽卡");
                                            sb5.append(Log.n(num7));
                                            sb5.append(";累计收集");
                                            sb5.append(Log.n(num8));
                                            sb5.append("勋章");
                                            sb5.append(Log.n(numValueOf5));
                                            sb5.append("(图鉴");
                                            sb5.append(Log.n(num14));
                                            sb5.append(");[");
                                            sb5.append(str3);
                                            sb5.append("]经验");
                                            sb5.append(Log.n(num13));
                                            sb5.append("/");
                                            sb5.append(Log.n(num12));
                                            sb5.append(";");
                                            Log.info(sb5.toString());
                                        }
                                    } catch (Throwable th11) {
                                        th = th11;
                                        strOptString = "";
                                    }
                                } else {
                                    str = "";
                                    strOptString2 = str;
                                    num15 = null;
                                    num16 = null;
                                    num4 = null;
                                    num3 = null;
                                }
                                try {
                                    JSONArray jSONArrayOptJSONArray2 = jSONObject8.optJSONArray("limit");
                                    num = num15;
                                    if (jSONArrayOptJSONArray2 != null) {
                                        int i4 = 0;
                                        while (true) {
                                            try {
                                                if (i4 < jSONArrayOptJSONArray2.length()) {
                                                    JSONObject jSONObjectOptJSONObject7 = jSONArrayOptJSONArray2.optJSONObject(i4);
                                                    if (jSONObjectOptJSONObject7 != null) {
                                                        num17 = num16;
                                                        try {
                                                            if ("DAILY_COLLECT".equals(jSONObjectOptJSONObject7.optString("actionCode"))) {
                                                                if (jSONObjectOptJSONObject7.has("leftFreeQuota")) {
                                                                    numValueOf10 = Integer.valueOf(jSONObjectOptJSONObject7.optInt("leftFreeQuota"));
                                                                    num6 = num;
                                                                    num5 = num17;
                                                                } else {
                                                                    num6 = num;
                                                                    num5 = num17;
                                                                    numValueOf10 = null;
                                                                }
                                                            }
                                                        } catch (Throwable th12) {
                                                            th = th12;
                                                            numValueOf2 = num4;
                                                            numValueOf3 = num3;
                                                            strOptString = str;
                                                            numValueOf = num17;
                                                            String str12 = TAG;
                                                            Log.i(str12, "dodoInfo homePage err:");
                                                            Log.printStackTrace(str12, th);
                                                            str = strOptString;
                                                            str2 = strOptString2;
                                                            num2 = null;
                                                            num3 = numValueOf3;
                                                            num4 = numValueOf2;
                                                            num5 = numValueOf;
                                                            num6 = num;
                                                        }
                                                    } else {
                                                        num17 = num16;
                                                    }
                                                    i4++;
                                                    jSONArrayOptJSONArray2 = jSONArrayOptJSONArray2;
                                                    num16 = num17;
                                                } else {
                                                    num17 = num16;
                                                    num6 = num;
                                                    num5 = num17;
                                                    numValueOf10 = null;
                                                }
                                            } catch (Throwable th13) {
                                                th = th13;
                                                num17 = num16;
                                                numValueOf2 = num4;
                                                numValueOf3 = num3;
                                                strOptString = str;
                                                numValueOf = num17;
                                                String str13 = TAG;
                                                Log.i(str13, "dodoInfo homePage err:");
                                                Log.printStackTrace(str13, th);
                                                str = strOptString;
                                                str2 = strOptString2;
                                                num2 = null;
                                                num3 = numValueOf3;
                                                num4 = numValueOf2;
                                                num5 = numValueOf;
                                                num6 = num;
                                                num7 = num2;
                                                jSONObject5 = new JSONObject(AntDodoRpcCall.queryMyAchievement());
                                                if (MessageUtil.checkResultCode(TAG, jSONObject5).booleanValue()) {
                                                    jSONObject6 = jSONObject5.getJSONObject("data");
                                                    if (jSONObject6.has("collectedDisAnimalCount")) {
                                                        numValueOf4 = Integer.valueOf(jSONObject6.optInt("collectedDisAnimalCount"));
                                                    } else {
                                                        numValueOf4 = null;
                                                    }
                                                    if (jSONObject6.has("allMedalCount")) {
                                                        numValueOf5 = Integer.valueOf(jSONObject6.optInt("allMedalCount"));
                                                    } else {
                                                        numValueOf5 = null;
                                                    }
                                                    if (jSONObject6.has("bookMedalCount")) {
                                                        numValueOf9 = Integer.valueOf(jSONObject6.optInt("bookMedalCount"));
                                                    } else {
                                                        numValueOf9 = null;
                                                    }
                                                } else {
                                                    numValueOf9 = null;
                                                    numValueOf4 = null;
                                                    numValueOf5 = null;
                                                }
                                                num8 = numValueOf4;
                                                num9 = numValueOf9;
                                                jSONObject3 = new JSONObject(AntDodoRpcCall.queryMedalAndConfig());
                                                if (MessageUtil.checkResultCode(TAG, jSONObject3).booleanValue()) {
                                                    jSONObject4 = jSONObject3.getJSONObject("data");
                                                    jSONObjectOptJSONObject5 = jSONObject4.optJSONObject("medal");
                                                    if (jSONObjectOptJSONObject5 != null) {
                                                        strOptString3 = jSONObjectOptJSONObject5.optString("name", "");
                                                        if (jSONObjectOptJSONObject5.has("expPoint")) {
                                                        }
                                                        if (jSONObject4.has("totalExp")) {
                                                            numValueOf8 = Integer.valueOf(jSONObject4.optInt("totalExp"));
                                                        } else {
                                                            numValueOf8 = null;
                                                        }
                                                    } else {
                                                        strOptString3 = "";
                                                    }
                                                    if (jSONObject4.has("totalExp")) {
                                                        numValueOf8 = Integer.valueOf(jSONObject4.optInt("totalExp"));
                                                    } else {
                                                        numValueOf8 = null;
                                                    }
                                                } else {
                                                    strOptString3 = "";
                                                    numValueOf8 = null;
                                                    numValueOf6 = null;
                                                }
                                                num10 = numValueOf6;
                                                num11 = numValueOf8;
                                                jSONObject2 = new JSONObject(AntDodoRpcCall.queryBookList());
                                                if (isTransientSystemError(jSONObject2)) {
                                                    num12 = num11;
                                                    num13 = num10;
                                                    str3 = strOptString3;
                                                } else {
                                                    num12 = num11;
                                                    num13 = num10;
                                                    str3 = strOptString3;
                                                }
                                                iOptInt = 0;
                                                i = 0;
                                                i2 = 0;
                                                while (true) {
                                                    jSONObject = new JSONObject(AntDodoRpcCall.queryBookAnimalList(18, i2));
                                                    if (!MessageUtil.checkResultCode(TAG, jSONObject).booleanValue()) {
                                                        jSONArrayOptJSONArray = jSONObjectOptJSONObject.optJSONArray("animalForUserList");
                                                        if (jSONArrayOptJSONArray != null) {
                                                            i3 = 0;
                                                            while (i3 < jSONArrayOptJSONArray.length()) {
                                                                jSONObjectOptJSONObject2 = jSONArrayOptJSONArray.optJSONObject(i3);
                                                                if (jSONObjectOptJSONObject2 == null) {
                                                                    jSONObjectOptJSONObject3 = null;
                                                                } else {
                                                                    jSONObjectOptJSONObject3 = jSONObjectOptJSONObject2.optJSONObject("collectDetail");
                                                                }
                                                                if (jSONObjectOptJSONObject3 != null) {
                                                                    num14 = num9;
                                                                    iOptInt += jSONObjectOptJSONObject3.optInt("count", 0);
                                                                } else {
                                                                    num14 = num9;
                                                                }
                                                                i3++;
                                                                jSONArrayOptJSONArray = jSONArrayOptJSONArray;
                                                                num9 = num14;
                                                            }
                                                            num14 = num9;
                                                        } else {
                                                            num14 = num9;
                                                        }
                                                        zOptBoolean = jSONObjectOptJSONObject.optBoolean("hasMore", false);
                                                        if (zOptBoolean) {
                                                            i2 = Integer.parseInt(jSONObjectOptJSONObject.optString("nextPageStart", "0"));
                                                        }
                                                        if (!zOptBoolean) {
                                                            break;
                                                            break;
                                                        } else {
                                                            break;
                                                            break;
                                                        }
                                                    }
                                                    num14 = num9;
                                                    i2 = i2;
                                                    str4 = str4;
                                                    num9 = num14;
                                                }
                                                numValueOf7 = Integer.valueOf(iOptInt);
                                                StringBuilder sb6 = new StringBuilder("神奇物种🦕[");
                                                sb6.append(UserIdMap.getShowName(UserIdMap.getCurrentUid()));
                                                sb6.append("]图鉴[");
                                                sb6.append(str2);
                                                sb6.append("](");
                                                sb6.append(str);
                                                sb6.append("止)卡片");
                                                sb6.append(Log.n(num3));
                                                sb6.append("(神奇");
                                                sb6.append(Log.n(num4));
                                                sb6.append("/稀有");
                                                sb6.append(Log.n(num5));
                                                sb6.append("/普通");
                                                sb6.append(Log.n(num6));
                                                sb6.append(")已集");
                                                if (strOptString4.isEmpty()) {
                                                    strOptString4 = " ";
                                                }
                                                sb6.append(strOptString4);
                                                sb6.append("持卡共");
                                                sb6.append(Log.n(numValueOf7));
                                                sb6.append("张今日剩余抽卡");
                                                sb6.append(Log.n(num7));
                                                sb6.append(";累计收集");
                                                sb6.append(Log.n(num8));
                                                sb6.append("勋章");
                                                sb6.append(Log.n(numValueOf5));
                                                sb6.append("(图鉴");
                                                sb6.append(Log.n(num14));
                                                sb6.append(");[");
                                                sb6.append(str3);
                                                sb6.append("]经验");
                                                sb6.append(Log.n(num13));
                                                sb6.append("/");
                                                sb6.append(Log.n(num12));
                                                sb6.append(";");
                                                Log.info(sb6.toString());
                                            }
                                        }
                                    } else {
                                        num17 = num16;
                                        num6 = num;
                                        num5 = num17;
                                        numValueOf10 = null;
                                    }
                                } catch (Throwable th14) {
                                    th = th14;
                                    num = num15;
                                }
                            } else {
                                str = "";
                                strOptString2 = str;
                                numValueOf10 = null;
                                num6 = null;
                                num5 = null;
                                num4 = null;
                                num3 = null;
                            }
                            num2 = numValueOf10;
                            str2 = strOptString2;
                            while (true) {
                                jSONObject = new JSONObject(AntDodoRpcCall.queryBookAnimalList(18, i2));
                                if (!MessageUtil.checkResultCode(TAG, jSONObject).booleanValue() || (jSONObjectOptJSONObject = jSONObject.optJSONObject(str4)) == null) {
                                    num14 = num9;
                                    break;
                                }
                                jSONArrayOptJSONArray = jSONObjectOptJSONObject.optJSONArray("animalForUserList");
                                if (jSONArrayOptJSONArray != null) {
                                    i3 = 0;
                                    while (i3 < jSONArrayOptJSONArray.length()) {
                                        jSONObjectOptJSONObject2 = jSONArrayOptJSONArray.optJSONObject(i3);
                                        if (jSONObjectOptJSONObject2 == null) {
                                            jSONObjectOptJSONObject3 = null;
                                        } else {
                                            jSONObjectOptJSONObject3 = jSONObjectOptJSONObject2.optJSONObject("collectDetail");
                                        }
                                        if (jSONObjectOptJSONObject3 != null) {
                                            num14 = num9;
                                            iOptInt += jSONObjectOptJSONObject3.optInt("count", 0);
                                        } else {
                                            num14 = num9;
                                        }
                                        i3++;
                                        jSONArrayOptJSONArray = jSONArrayOptJSONArray;
                                        num9 = num14;
                                    }
                                    num14 = num9;
                                } else {
                                    num14 = num9;
                                }
                                zOptBoolean = jSONObjectOptJSONObject.optBoolean("hasMore", false);
                                if (zOptBoolean) {
                                    i2 = Integer.parseInt(jSONObjectOptJSONObject.optString("nextPageStart", "0"));
                                }
                                if (!zOptBoolean || (i = i + 1) >= 20) {
                                    break;
                                    break;
                                } else {
                                    i2 = i2;
                                    str4 = str4;
                                    num9 = num14;
                                }
                            }
                        } catch (Throwable th15) {
                            th = th15;
                            strOptString = "";
                            strOptString2 = strOptString;
                        }
                        jSONObject2 = new JSONObject(AntDodoRpcCall.queryBookList());
                        if (isTransientSystemError(jSONObject2) || !MessageUtil.checkResultCode(TAG, jSONObject2).booleanValue()) {
                            num12 = num11;
                            num13 = num10;
                            str3 = strOptString3;
                        } else {
                            JSONObject jSONObjectOptJSONObject8 = jSONObject2.optJSONObject("data");
                            JSONArray jSONArrayOptJSONArray3 = jSONObjectOptJSONObject8 == null ? null : jSONObjectOptJSONObject8.optJSONArray("bookForUserList");
                            if (jSONArrayOptJSONArray3 != null) {
                                num12 = num11;
                                int i5 = 0;
                                while (true) {
                                    try {
                                        if (i5 >= jSONArrayOptJSONArray3.length()) {
                                            num13 = num10;
                                            str3 = strOptString3;
                                            jSONObjectOptJSONObject4 = null;
                                            break;
                                        }
                                        jSONObjectOptJSONObject4 = jSONArrayOptJSONArray3.optJSONObject(i5);
                                        if (jSONObjectOptJSONObject4 != null) {
                                            num13 = num10;
                                            str3 = strOptString3;
                                            try {
                                                if ("DOING".equals(jSONObjectOptJSONObject4.optString("bookStatus"))) {
                                                    break;
                                                }
                                            } catch (Throwable th16) {
                                                th = th16;
                                                String str14 = TAG;
                                                Log.i(str14, "dodoInfo queryBookList err:");
                                                Log.printStackTrace(str14, th);
                                            }
                                        } else {
                                            num13 = num10;
                                            str3 = strOptString3;
                                        }
                                        i5++;
                                        num10 = num13;
                                        strOptString3 = str3;
                                    } catch (Throwable th17) {
                                        th = th17;
                                        num13 = num10;
                                        str3 = strOptString3;
                                        String str15 = TAG;
                                        Log.i(str15, "dodoInfo queryBookList err:");
                                        Log.printStackTrace(str15, th);
                                        iOptInt = 0;
                                        i = 0;
                                        i2 = 0;
                                        while (true) {
                                            jSONObject = new JSONObject(AntDodoRpcCall.queryBookAnimalList(18, i2));
                                            if (!MessageUtil.checkResultCode(TAG, jSONObject).booleanValue()) {
                                                jSONArrayOptJSONArray = jSONObjectOptJSONObject.optJSONArray("animalForUserList");
                                                if (jSONArrayOptJSONArray != null) {
                                                    i3 = 0;
                                                    while (i3 < jSONArrayOptJSONArray.length()) {
                                                        jSONObjectOptJSONObject2 = jSONArrayOptJSONArray.optJSONObject(i3);
                                                        if (jSONObjectOptJSONObject2 == null) {
                                                            jSONObjectOptJSONObject3 = null;
                                                        } else {
                                                            jSONObjectOptJSONObject3 = jSONObjectOptJSONObject2.optJSONObject("collectDetail");
                                                        }
                                                        if (jSONObjectOptJSONObject3 != null) {
                                                            num14 = num9;
                                                            iOptInt += jSONObjectOptJSONObject3.optInt("count", 0);
                                                        } else {
                                                            num14 = num9;
                                                        }
                                                        i3++;
                                                        jSONArrayOptJSONArray = jSONArrayOptJSONArray;
                                                        num9 = num14;
                                                    }
                                                    num14 = num9;
                                                } else {
                                                    num14 = num9;
                                                }
                                                zOptBoolean = jSONObjectOptJSONObject.optBoolean("hasMore", false);
                                                if (zOptBoolean) {
                                                    i2 = Integer.parseInt(jSONObjectOptJSONObject.optString("nextPageStart", "0"));
                                                }
                                                if (!zOptBoolean) {
                                                    break;
                                                    break;
                                                } else {
                                                    break;
                                                    break;
                                                }
                                            }
                                            num14 = num9;
                                            i2 = i2;
                                            str4 = str4;
                                            num9 = num14;
                                        }
                                        numValueOf7 = Integer.valueOf(iOptInt);
                                        StringBuilder sb7 = new StringBuilder("神奇物种🦕[");
                                        sb7.append(UserIdMap.getShowName(UserIdMap.getCurrentUid()));
                                        sb7.append("]图鉴[");
                                        sb7.append(str2);
                                        sb7.append("](");
                                        sb7.append(str);
                                        sb7.append("止)卡片");
                                        sb7.append(Log.n(num3));
                                        sb7.append("(神奇");
                                        sb7.append(Log.n(num4));
                                        sb7.append("/稀有");
                                        sb7.append(Log.n(num5));
                                        sb7.append("/普通");
                                        sb7.append(Log.n(num6));
                                        sb7.append(")已集");
                                        if (strOptString4.isEmpty()) {
                                            strOptString4 = " ";
                                        }
                                        sb7.append(strOptString4);
                                        sb7.append("持卡共");
                                        sb7.append(Log.n(numValueOf7));
                                        sb7.append("张今日剩余抽卡");
                                        sb7.append(Log.n(num7));
                                        sb7.append(";累计收集");
                                        sb7.append(Log.n(num8));
                                        sb7.append("勋章");
                                        sb7.append(Log.n(numValueOf5));
                                        sb7.append("(图鉴");
                                        sb7.append(Log.n(num14));
                                        sb7.append(");[");
                                        sb7.append(str3);
                                        sb7.append("]经验");
                                        sb7.append(Log.n(num13));
                                        sb7.append("/");
                                        sb7.append(Log.n(num12));
                                        sb7.append(";");
                                        Log.info(sb7.toString());
                                    }
                                }
                                if (jSONObjectOptJSONObject4 == null) {
                                    jSONObjectOptJSONObject4 = jSONArrayOptJSONArray3.optJSONObject(0);
                                }
                                if (jSONObjectOptJSONObject4 != null) {
                                    strOptString4 = jSONObjectOptJSONObject4.optString("collectProgress", "");
                                }
                            } else {
                                num12 = num11;
                                num13 = num10;
                                str3 = strOptString3;
                            }
                        }
                    } catch (Throwable th18) {
                        th = th18;
                        num12 = num11;
                    }
                    jSONObject3 = new JSONObject(AntDodoRpcCall.queryMedalAndConfig());
                    if (MessageUtil.checkResultCode(TAG, jSONObject3).booleanValue()) {
                        jSONObject4 = jSONObject3.getJSONObject("data");
                        jSONObjectOptJSONObject5 = jSONObject4.optJSONObject("medal");
                        if (jSONObjectOptJSONObject5 != null) {
                            strOptString3 = jSONObjectOptJSONObject5.optString("name", "");
                            if (jSONObjectOptJSONObject5.has("expPoint")) {
                            }
                            if (jSONObject4.has("totalExp")) {
                                numValueOf8 = Integer.valueOf(jSONObject4.optInt("totalExp"));
                            } else {
                                numValueOf8 = null;
                            }
                        } else {
                            strOptString3 = "";
                        }
                        if (jSONObject4.has("totalExp")) {
                            numValueOf8 = Integer.valueOf(jSONObject4.optInt("totalExp"));
                        } else {
                            numValueOf8 = null;
                        }
                    } else {
                        strOptString3 = "";
                        numValueOf8 = null;
                        numValueOf6 = null;
                    }
                    num10 = numValueOf6;
                    num11 = numValueOf8;
                } catch (Throwable th19) {
                    th = th19;
                    strOptString3 = "";
                }
                jSONObject5 = new JSONObject(AntDodoRpcCall.queryMyAchievement());
                if (MessageUtil.checkResultCode(TAG, jSONObject5).booleanValue()) {
                    jSONObject6 = jSONObject5.getJSONObject("data");
                    if (jSONObject6.has("collectedDisAnimalCount")) {
                        numValueOf4 = Integer.valueOf(jSONObject6.optInt("collectedDisAnimalCount"));
                    } else {
                        numValueOf4 = null;
                    }
                    if (jSONObject6.has("allMedalCount")) {
                        numValueOf5 = Integer.valueOf(jSONObject6.optInt("allMedalCount"));
                    } else {
                        numValueOf5 = null;
                    }
                    if (jSONObject6.has("bookMedalCount")) {
                        numValueOf9 = Integer.valueOf(jSONObject6.optInt("bookMedalCount"));
                    } else {
                        numValueOf9 = null;
                    }
                } else {
                    numValueOf9 = null;
                    numValueOf4 = null;
                    numValueOf5 = null;
                }
                num8 = numValueOf4;
                num9 = numValueOf9;
            } catch (Throwable th20) {
                th = th20;
                numValueOf4 = null;
                numValueOf5 = null;
                String str16 = TAG;
                Log.i(str16, "dodoInfo queryMyAchievement err:");
                Log.printStackTrace(str16, th);
                num8 = numValueOf4;
                num9 = null;
                jSONObject3 = new JSONObject(AntDodoRpcCall.queryMedalAndConfig());
                if (MessageUtil.checkResultCode(TAG, jSONObject3).booleanValue()) {
                    jSONObject4 = jSONObject3.getJSONObject("data");
                    jSONObjectOptJSONObject5 = jSONObject4.optJSONObject("medal");
                    if (jSONObjectOptJSONObject5 != null) {
                        strOptString3 = jSONObjectOptJSONObject5.optString("name", "");
                        if (jSONObjectOptJSONObject5.has("expPoint")) {
                        }
                        if (jSONObject4.has("totalExp")) {
                            numValueOf8 = Integer.valueOf(jSONObject4.optInt("totalExp"));
                        } else {
                            numValueOf8 = null;
                        }
                    } else {
                        strOptString3 = "";
                    }
                    if (jSONObject4.has("totalExp")) {
                        numValueOf8 = Integer.valueOf(jSONObject4.optInt("totalExp"));
                    } else {
                        numValueOf8 = null;
                    }
                } else {
                    strOptString3 = "";
                    numValueOf8 = null;
                    numValueOf6 = null;
                }
                num10 = numValueOf6;
                num11 = numValueOf8;
                jSONObject2 = new JSONObject(AntDodoRpcCall.queryBookList());
                if (isTransientSystemError(jSONObject2)) {
                    num12 = num11;
                    num13 = num10;
                    str3 = strOptString3;
                } else {
                    num12 = num11;
                    num13 = num10;
                    str3 = strOptString3;
                }
                iOptInt = 0;
                i = 0;
                i2 = 0;
                while (true) {
                    jSONObject = new JSONObject(AntDodoRpcCall.queryBookAnimalList(18, i2));
                    if (!MessageUtil.checkResultCode(TAG, jSONObject).booleanValue()) {
                        jSONArrayOptJSONArray = jSONObjectOptJSONObject.optJSONArray("animalForUserList");
                        if (jSONArrayOptJSONArray != null) {
                            i3 = 0;
                            while (i3 < jSONArrayOptJSONArray.length()) {
                                jSONObjectOptJSONObject2 = jSONArrayOptJSONArray.optJSONObject(i3);
                                if (jSONObjectOptJSONObject2 == null) {
                                    jSONObjectOptJSONObject3 = null;
                                } else {
                                    jSONObjectOptJSONObject3 = jSONObjectOptJSONObject2.optJSONObject("collectDetail");
                                }
                                if (jSONObjectOptJSONObject3 != null) {
                                    num14 = num9;
                                    iOptInt += jSONObjectOptJSONObject3.optInt("count", 0);
                                } else {
                                    num14 = num9;
                                }
                                i3++;
                                jSONArrayOptJSONArray = jSONArrayOptJSONArray;
                                num9 = num14;
                            }
                            num14 = num9;
                        } else {
                            num14 = num9;
                        }
                        zOptBoolean = jSONObjectOptJSONObject.optBoolean("hasMore", false);
                        if (zOptBoolean) {
                            i2 = Integer.parseInt(jSONObjectOptJSONObject.optString("nextPageStart", "0"));
                        }
                        if (!zOptBoolean) {
                            break;
                            break;
                        } else {
                            break;
                            break;
                        }
                    }
                    num14 = num9;
                    i2 = i2;
                    str4 = str4;
                    num9 = num14;
                }
                numValueOf7 = Integer.valueOf(iOptInt);
                StringBuilder sb8 = new StringBuilder("神奇物种🦕[");
                sb8.append(UserIdMap.getShowName(UserIdMap.getCurrentUid()));
                sb8.append("]图鉴[");
                sb8.append(str2);
                sb8.append("](");
                sb8.append(str);
                sb8.append("止)卡片");
                sb8.append(Log.n(num3));
                sb8.append("(神奇");
                sb8.append(Log.n(num4));
                sb8.append("/稀有");
                sb8.append(Log.n(num5));
                sb8.append("/普通");
                sb8.append(Log.n(num6));
                sb8.append(")已集");
                if (strOptString4.isEmpty()) {
                    strOptString4 = " ";
                }
                sb8.append(strOptString4);
                sb8.append("持卡共");
                sb8.append(Log.n(numValueOf7));
                sb8.append("张今日剩余抽卡");
                sb8.append(Log.n(num7));
                sb8.append(";累计收集");
                sb8.append(Log.n(num8));
                sb8.append("勋章");
                sb8.append(Log.n(numValueOf5));
                sb8.append("(图鉴");
                sb8.append(Log.n(num14));
                sb8.append(");[");
                sb8.append(str3);
                sb8.append("]经验");
                sb8.append(Log.n(num13));
                sb8.append("/");
                sb8.append(Log.n(num12));
                sb8.append(";");
                Log.info(sb8.toString());
            }
            num7 = num2;
        } catch (Throwable th21) {
            th = th21;
            num7 = num2;
        }
        iOptInt = 0;
        i = 0;
        i2 = 0;
        numValueOf7 = Integer.valueOf(iOptInt);
        StringBuilder sb9 = new StringBuilder("神奇物种🦕[");
        sb9.append(UserIdMap.getShowName(UserIdMap.getCurrentUid()));
        sb9.append("]图鉴[");
        sb9.append(str2);
        sb9.append("](");
        sb9.append(str);
        sb9.append("止)卡片");
        sb9.append(Log.n(num3));
        sb9.append("(神奇");
        sb9.append(Log.n(num4));
        sb9.append("/稀有");
        sb9.append(Log.n(num5));
        sb9.append("/普通");
        sb9.append(Log.n(num6));
        sb9.append(")已集");
        if (strOptString4.isEmpty()) {
            strOptString4 = " ";
        }
        sb9.append(strOptString4);
        sb9.append("持卡共");
        sb9.append(Log.n(numValueOf7));
        sb9.append("张今日剩余抽卡");
        sb9.append(Log.n(num7));
        sb9.append(";累计收集");
        sb9.append(Log.n(num8));
        sb9.append("勋章");
        sb9.append(Log.n(numValueOf5));
        sb9.append("(图鉴");
        sb9.append(Log.n(num14));
        sb9.append(");[");
        sb9.append(str3);
        sb9.append("]经验");
        sb9.append(Log.n(num13));
        sb9.append("/");
        sb9.append(Log.n(num12));
        sb9.append(";");
        Log.info(sb9.toString());
    }

    public void initAntDodoTaskListMap(boolean z, boolean z2) {
        SelectModelField selectModelField;
        JSONArray jSONArrayOptJSONArray;
        try {
            AntDodoTaskListMap.load();
            HashSet<String> hashSet = new HashSet();
            hashSet.add("惊喜任务：添加森林组件");
            hashSet.add("连续访问并主动抽卡7天");
            hashSet.add("每日任务：帮好友抽卡");
            HashSet<String> hashSet2 = new HashSet();
            Iterator it = hashSet.iterator();
            while (it.hasNext()) {
                AntDodoTaskListMap.add((String) it.next(), "");
            }
            if (z2) {
                JSONObject jSONObject = new JSONObject(AntDodoRpcCall.taskList());
                if (MessageUtil.checkResultCode(TAG, jSONObject).booleanValue() && (jSONArrayOptJSONArray = jSONObject.getJSONObject("data").optJSONArray("taskGroupInfoList")) != null) {
                    for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                        JSONArray jSONArray = jSONArrayOptJSONArray.getJSONObject(i).getJSONArray("taskInfoList");
                        for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                            JSONObject jSONObject2 = new JSONObject(jSONArray.getJSONObject(i2).getJSONObject("taskBaseInfo").getString("bizInfo"));
                            AntDodoTaskListMap.add(jSONObject2.getString("taskTitle"), TaskIconUtil.extractIcon(jSONObject2));
                        }
                    }
                }
                AntDodoTaskListMap.save();
                Log.record("同步任务🉑神奇物种任务列表");
                if (!z || (selectModelField = (SelectModelField) ConfigV2.INSTANCE.getModelFieldsMap().get("AntDodo").get("AntDodoTaskList")) == null) {
                    return;
                }
                Set<String> value = selectModelField.getValue();
                if (value != null) {
                    for (String str : hashSet) {
                        if (!value.contains(str)) {
                            selectModelField.add(str, 0);
                        }
                    }
                    for (String str2 : hashSet2) {
                        if (value.contains(str2)) {
                            value.remove(str2);
                        }
                    }
                }
                if (ConfigV2.save(UserIdMap.getCurrentUid(), false).booleanValue()) {
                    Log.record("黑白名单🈲神奇物种任务自动设置: " + selectModelField.getValue());
                    return;
                }
                Log.record("神奇物种任务黑白名单设置失败");
            }
        } catch (Throwable th) {
            String str3 = TAG;
            Log.i(str3, "initAntDodoTaskListMap err:");
            Log.printStackTrace(str3, th);
        }
    }

    private long getEndDateTime() {
        try {
            JSONObject jSONObject = new JSONObject(AntDodoRpcCall.homePage());
            if (!MessageUtil.checkResultCode(TAG, jSONObject).booleanValue()) {
                return 0L;
            }
            return Log.timeToStamp(jSONObject.getJSONObject("data").getJSONObject("animalBook").getString("endDate") + " 23:59:59");
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "getEndDateTime err:");
            Log.printStackTrace(str, th);
            return 0L;
        }
    }

    private boolean isLastDay() {
        return getEndDateTime() - TimeUnit.DAYS.toMillis(1L) < System.currentTimeMillis();
    }

    private void collect() {
        if (Status.hasFlagToday("dodo::collect").booleanValue()) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(AntDodoRpcCall.queryAnimalStatus());
            if (MessageUtil.checkResultCode(TAG, jSONObject).booleanValue()) {
                if (jSONObject.getJSONObject("data").getBoolean("collect")) {
                    Log.record("神奇物种卡片今日收集完成！");
                } else {
                    collectAnimalCard();
                }
                Status.flagToday("dodo::collect");
            }
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "collect err:");
            Log.printStackTrace(str, th);
        }
    }

    private void collectAnimalCard() {
        try {
            JSONObject jSONObject = new JSONObject(AntDodoRpcCall.homePage());
            if (MessageUtil.checkResultCode(TAG, jSONObject).booleanValue()) {
                JSONArray jSONArray = jSONObject.getJSONObject("data").getJSONArray("limit");
                int i = 0;
                while (true) {
                    if (i >= jSONArray.length()) {
                        i = -1;
                        break;
                    }
                    jSONObject = jSONArray.getJSONObject(i);
                    if ("DAILY_COLLECT".equals(jSONObject.getString("actionCode"))) {
                        break;
                    } else {
                        i++;
                    }
                }
                if (i >= 0) {
                    int i2 = jSONObject.getInt("leftFreeQuota");
                    for (int i3 = 0; i3 < i2; i3++) {
                        JSONObject jSONObject2 = new JSONObject(AntDodoRpcCall.collect());
                        if (MessageUtil.checkResultCode(TAG, jSONObject2).booleanValue()) {
                            JSONObject jSONObject3 = jSONObject2.getJSONObject("data");
                            JSONObject jSONObject4 = jSONObject3.getJSONObject(IconRegistry.SCOPE_ANIMAL);
                            Log.forest("神奇物种🦕每日抽卡" + getAnimalInfo(jSONObject4));
                            if (this.scratchCard.getValue().booleanValue()) {
                                scratchNewCard(jSONObject3);
                            }
                            checkAnimalAndGiftToFriend(jSONObject4);
                        }
                    }
                }
            }
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "collectAnimalCard err:");
            Log.printStackTrace(str, th);
        }
    }

    private void scratchAnimalCard() {
        try {
            JSONObject jSONObject = new JSONObject(AntDodoRpcCall.homePage());
            if (MessageUtil.checkResultCode(TAG, jSONObject).booleanValue()) {
                JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("data");
                if (jSONObjectOptJSONObject == null || !jSONObjectOptJSONObject.optBoolean("showSpeciesV2", false)) {
                    Log.record("神奇物种🦕您的账户未推送刮刮卡操作-尝试刮卡");
                }
                JSONArray jSONArrayOptJSONArray = jSONObjectOptJSONObject.optJSONArray("curCollection");
                if (jSONArrayOptJSONArray == null) {
                    return;
                }
                for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                    JSONObject jSONObjectOptJSONObject2 = jSONArrayOptJSONArray.optJSONObject(i);
                    if (jSONObjectOptJSONObject2 != null) {
                        scratchNewCard(jSONObjectOptJSONObject2);
                    }
                }
            }
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "scratchAnimalCard err:");
            Log.printStackTrace(str, th);
        }
    }

    private void scratchNewCard(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        try {
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(IconRegistry.SCOPE_ANIMAL);
            JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject("collectDetail");
            JSONArray jSONArrayOptJSONArray = jSONObjectOptJSONObject2 == null ? null : jSONObjectOptJSONObject2.optJSONArray("cardList");
            if (jSONObjectOptJSONObject != null && jSONArrayOptJSONArray != null) {
                String strOptString = jSONObjectOptJSONObject.optString("animalId");
                String strOptString2 = jSONObjectOptJSONObject.optString("bookId");
                for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                    JSONObject jSONObjectOptJSONObject3 = jSONArrayOptJSONArray.optJSONObject(i);
                    if (jSONObjectOptJSONObject3 != null && jSONObjectOptJSONObject3.optBoolean("scratchable", false) && !jSONObjectOptJSONObject3.optBoolean("scratched", false)) {
                        String strOptString3 = jSONObjectOptJSONObject3.optString("cardInstanceId");
                        if (!strOptString3.isEmpty()) {
                            JSONObject jSONObject2 = new JSONObject(AntDodoRpcCall.scratchCard(strOptString, strOptString2, strOptString3));
                            if (MessageUtil.checkResultCode(TAG, jSONObject2).booleanValue()) {
                                JSONObject jSONObjectOptJSONObject4 = jSONObject2.optJSONObject("data");
                                int iOptInt = jSONObjectOptJSONObject4 == null ? 0 : jSONObjectOptJSONObject4.optInt("energyGram");
                                Log.forest("神奇物种🦕刮刮卡" + getAnimalInfo(jSONObjectOptJSONObject) + "获得" + iOptInt + "g能量");
                                Statistics.addData(Statistics.DataType.COLLECTED, iOptInt);
                                TimeUtil.sleep(500L);
                            }
                        }
                    }
                }
            }
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "scratchNewCard err:");
            Log.printStackTrace(str, th);
        }
    }

    /* JADX WARN: Code duplicated, block: B:34:0x00c2 A[Catch: all -> 0x015e, TryCatch #0 {all -> 0x015e, blocks: (B:3:0x0002, B:6:0x0018, B:10:0x0029, B:12:0x002f, B:13:0x003f, B:15:0x0045, B:18:0x0069, B:26:0x0086, B:28:0x00af, B:34:0x00c2, B:36:0x00f4, B:39:0x0136, B:31:0x00b5, B:25:0x007f, B:21:0x0073), top: B:46:0x0002 }] */
    /* JADX WARN: Code duplicated, block: B:36:0x00f4 A[Catch: all -> 0x015e, TryCatch #0 {all -> 0x015e, blocks: (B:3:0x0002, B:6:0x0018, B:10:0x0029, B:12:0x002f, B:13:0x003f, B:15:0x0045, B:18:0x0069, B:26:0x0086, B:28:0x00af, B:34:0x00c2, B:36:0x00f4, B:39:0x0136, B:31:0x00b5, B:25:0x007f, B:21:0x0073), top: B:46:0x0002 }] */
    /* JADX WARN: Code duplicated, block: B:39:0x0136 A[Catch: all -> 0x015e, TRY_LEAVE, TryCatch #0 {all -> 0x015e, blocks: (B:3:0x0002, B:6:0x0018, B:10:0x0029, B:12:0x002f, B:13:0x003f, B:15:0x0045, B:18:0x0069, B:26:0x0086, B:28:0x00af, B:34:0x00c2, B:36:0x00f4, B:39:0x0136, B:31:0x00b5, B:25:0x007f, B:21:0x0073), top: B:46:0x0002 }] */
    /* JADX WARN: Code duplicated, block: B:52:0x0061 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:53:0x0135 A[SYNTHETIC] */
    private void taskList() {
        JSONArray jSONArrayOptJSONArray;
        String strFirstNonEmpty;
        int iRightsTimesToDo;
        int iMax;
        int i;
        int i2;
        int i3;
        String str;
        JSONArray jSONArray;
        String str2;
        JSONArray jSONArray2;
        String str3;
        int i4;
        int i5;
        JSONObject jSONObject;
        int i6;
        try {
            JSONObject jSONObject2 = new JSONObject(AntDodoRpcCall.taskList());
            if (MessageUtil.checkResultCode(TAG, jSONObject2).booleanValue() && (jSONArrayOptJSONArray = jSONObject2.getJSONObject("data").optJSONArray("taskGroupInfoList")) != null) {
                int i7 = 0;
                int i8 = 0;
                while (i8 < jSONArrayOptJSONArray.length()) {
                    JSONObject jSONObject3 = jSONArrayOptJSONArray.getJSONObject(i8);
                    jSONObject3.getString("taskGroupName");
                    JSONArray jSONArray3 = jSONObject3.getJSONArray("taskInfoList");
                    int i9 = 0;
                    while (i9 < jSONArray3.length()) {
                        JSONObject jSONObject4 = jSONArray3.getJSONObject(i9);
                        JSONObject jSONObject5 = jSONObject4.getJSONObject("taskBaseInfo");
                        String string = jSONObject5.getString("taskStatus");
                        if (!AntFarm.TaskStatus.RECEIVED.name().equals(string)) {
                            JSONObject jSONObjectOptJSONObject = jSONObject4.optJSONObject("taskRights");
                            int iOptInt = jSONObjectOptJSONObject == null ? 0 : jSONObjectOptJSONObject.optInt("rightsTimes", i7);
                            int iOptInt2 = jSONObjectOptJSONObject == null ? 1 : jSONObjectOptJSONObject.optInt("rightsTimesLimit", 1);
                            String string2 = jSONObject5.getString("sceneCode");
                            String string3 = jSONObject5.getString("taskType");
                            JSONObject jSONObject6 = new JSONObject(jSONObject5.getString("bizInfo"));
                            String string4 = jSONObject6.getString("taskTitle");
                            if (AntFarm.TaskStatus.FINISHED.name().equals(string)) {
                                receiveTaskAward(string2, string3, string4);
                                if (iOptInt2 > iOptInt) {
                                    strFirstNonEmpty = TaskAlternative.firstNonEmpty(jSONObject6.optString("targetUrl"), jSONObject6.optString("taskJumpUrl"), jSONObject6.optString("link"));
                                    iRightsTimesToDo = TaskAlternative.rightsTimesToDo(iOptInt, iOptInt2);
                                    iMax = Math.max(i7, jSONObject5.optInt("taskRequire", i7) - jSONObject5.optInt("taskProgress", i7));
                                    i = 0;
                                    while (true) {
                                        if (i < iRightsTimesToDo) {
                                            i2 = i;
                                            i3 = iRightsTimesToDo;
                                            str = string4;
                                            jSONArray = jSONArrayOptJSONArray;
                                            str2 = string3;
                                            jSONArray2 = jSONArray3;
                                            str3 = string2;
                                            i4 = iOptInt2;
                                            i5 = iOptInt;
                                            jSONObject = jSONObject5;
                                            i6 = i9;
                                            if (!finishTask(string2, string3, string4, strFirstNonEmpty, jSONObject5.optString("taskMode"), jSONObject5.optString("taskPlayType", jSONObject5.optString("taskProdPlayType")), iOptInt, i4, i2, iMax).booleanValue()) {
                                                break;
                                            }
                                            receiveTaskAward(str3, str2, str);
                                            i = i2 + 1;
                                            string3 = str2;
                                            string4 = str;
                                            string2 = str3;
                                            jSONArray3 = jSONArray2;
                                            iOptInt2 = i4;
                                            iRightsTimesToDo = i3;
                                            jSONArrayOptJSONArray = jSONArray;
                                            iOptInt = i5;
                                            jSONObject5 = jSONObject;
                                            i9 = i6;
                                        }
                                    }
                                }
                            } else if (AntFarm.TaskStatus.TODO.name().equals(string)) {
                                strFirstNonEmpty = TaskAlternative.firstNonEmpty(jSONObject6.optString("targetUrl"), jSONObject6.optString("taskJumpUrl"), jSONObject6.optString("link"));
                                iRightsTimesToDo = TaskAlternative.rightsTimesToDo(iOptInt, iOptInt2);
                                iMax = Math.max(i7, jSONObject5.optInt("taskRequire", i7) - jSONObject5.optInt("taskProgress", i7));
                                i = 0;
                                while (true) {
                                    if (i < iRightsTimesToDo) {
                                        i2 = i;
                                        i3 = iRightsTimesToDo;
                                        str = string4;
                                        jSONArray = jSONArrayOptJSONArray;
                                        str2 = string3;
                                        jSONArray2 = jSONArray3;
                                        str3 = string2;
                                        i4 = iOptInt2;
                                        i5 = iOptInt;
                                        jSONObject = jSONObject5;
                                        i6 = i9;
                                        if (!finishTask(string2, string3, string4, strFirstNonEmpty, jSONObject5.optString("taskMode"), jSONObject5.optString("taskPlayType", jSONObject5.optString("taskProdPlayType")), iOptInt, i4, i2, iMax).booleanValue()) {
                                            break;
                                            break;
                                        }
                                        receiveTaskAward(str3, str2, str);
                                        i = i2 + 1;
                                        string3 = str2;
                                        string4 = str;
                                        string2 = str3;
                                        jSONArray3 = jSONArray2;
                                        iOptInt2 = i4;
                                        iRightsTimesToDo = i3;
                                        jSONArrayOptJSONArray = jSONArray;
                                        iOptInt = i5;
                                        jSONObject5 = jSONObject;
                                        i9 = i6;
                                    }
                                }
                            }
                            jSONArray = jSONArrayOptJSONArray;
                            i6 = i9;
                            jSONArray2 = jSONArray3;
                            break;
                        } else {
                            jSONArray = jSONArrayOptJSONArray;
                            i6 = i9;
                            jSONArray2 = jSONArray3;
                            break;
                            break;
                        }
                        i9 = i6 + 1;
                        jSONArray3 = jSONArray2;
                        jSONArrayOptJSONArray = jSONArray;
                        i7 = 0;
                    }
                    i8++;
                    i7 = 0;
                }
            }
        } catch (Throwable th) {
            String str4 = TAG;
            Log.i(str4, "taskList err:");
            Log.printStackTrace(str4, th);
        }
    }

    private Boolean finishTask(String str, String str2, String str3, String str4, String str5, String str6, int i, int i2, int i3, int i4) {
        try {
            if (this.AntDodoTaskList.getValue().contains(str3)) {
                TaskAlternative.handleGameTask(new TaskAlternative.GameTask("AntDodoTaskList", str3, "", str4, "TODO").bizKey(str2).rights(i, i2).taskRemain(i4).taskPlayType(str6).taskMode(str5).taskSceneCode(str).scene(str, "af-biodiversity").version("20241203"));
                return false;
            }
            JSONObject jSONObject = new JSONObject(AntDodoRpcCall.finishTask(str, str2));
            MessageUtil.checkResultCodeAndMarkTaskBlackList("AntDodoTaskList", str3, jSONObject);
            if (MessageUtil.CODE_UNSUPPORTED_RPC.equals(jSONObject.optString("code"))) {
                return false;
            }
            if (MessageUtil.checkSuccess(TAG, jSONObject).booleanValue()) {
                Log.forest("神奇物种🦕完成[" + str3 + "]" + TaskAlternative.rightsProgressText(i, i2, i3));
                return true;
            }
            return false;
        } catch (Throwable th) {
            String str7 = TAG;
            Log.i(str7, "finishTask err:");
            Log.printStackTrace(str7, th);
        }
    }

    private void receiveTaskAward(String str, String str2, String str3) {
        try {
            JSONObject jSONObject = new JSONObject(AntDodoRpcCall.receiveTaskAward(str, str2));
            MessageUtil.checkResultCodeAndMarkTaskBlackList("AntDodoTaskList", str3, jSONObject);
            if (MessageUtil.checkSuccess(TAG, jSONObject).booleanValue()) {
                Log.forest("神奇物种🦕领取[" + str3 + "]奖励");
            }
        } catch (Throwable th) {
            String str4 = TAG;
            Log.i(str4, "receiveTaskAward err:");
            Log.printStackTrace(str4, th);
        }
    }

    /* JADX WARN: Code duplicated, block: B:32:0x00bc A[Catch: all -> 0x00ca, TRY_LEAVE, TryCatch #0 {all -> 0x00ca, blocks: (B:2:0x0000, B:5:0x0017, B:6:0x0025, B:8:0x002b, B:12:0x0066, B:16:0x0077, B:18:0x0083, B:32:0x00bc, B:21:0x008e, B:24:0x009c, B:26:0x00aa, B:29:0x00b1), top: B:39:0x0000 }] */
    /* JADX WARN: Code duplicated, block: B:43:? A[LOOP:0: B:39:0x0000->B:43:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:48:0x00c6 A[SYNTHETIC] */
    private void propList() {
        while (true) {
            try {
                JSONObject jSONObject = new JSONObject(AntDodoRpcCall.propList());
                if (MessageUtil.checkResultCode(TAG, jSONObject).booleanValue()) {
                    JSONArray jSONArray = jSONObject.getJSONObject("data").getJSONArray("propList");
                    for (int i = 0; i < jSONArray.length(); i++) {
                        JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                        String string = jSONObject2.getString("propType");
                        String string2 = jSONObject2.getJSONObject("propConfig").getString("propGroup");
                        String string3 = jSONObject2.getJSONArray("propIdList").getString(0);
                        boolean z = jSONObject2.getLong("recentExpireTime") - TimeUnit.DAYS.toMillis(1L) < System.currentTimeMillis();
                        if (this.usePropList.getValue().contains(string) || z) {
                            if (PropGroup.UNIVERSAL_CARD.name().equals(string2)) {
                                if (usePropUniversalCard(string3, string).booleanValue()) {
                                    if (jSONObject2.optInt("holdsNum", 1) > 1) {
                                    }
                                }
                            } else if ((!PropGroup.COLLECT_ANIMAL.name().equals(string2) || z || this.useCollectTimingType.getValue().intValue() != 1 || isLastDay()) && consumeProp(string3, string).booleanValue()) {
                                if (jSONObject2.optInt("holdsNum", 1) > 1) {
                                }
                            }
                        }
                    }
                    return;
                }
                return;
            } catch (Throwable th) {
                String str = TAG;
                Log.i(str, "propList err:");
                Log.printStackTrace(str, th);
                return;
            }
        }
    }

    private static String queryBookListWithRetry(int i, int i2) {
        String strQueryBookList = AntDodoRpcCall.queryBookList(i, i2);
        for (int i3 = 1; i3 <= 3; i3++) {
            try {
                JSONObject jSONObject = new JSONObject(strQueryBookList);
                if (jSONObject.optBoolean("success", false) || !jSONObject.optBoolean("retryable", false)) {
                    break;
                }
                Log.i(TAG, "图鉴分页查询[" + i2 + "]系统异常，第" + i3 + "次重试");
                TimeUtil.sleep(((long) i3) * 1500);
                strQueryBookList = AntDodoRpcCall.queryBookList(i, i2);
            } catch (Throwable unused) {
            }
        }
        return strQueryBookList;
    }

    private static boolean isTransientSystemError(JSONObject jSONObject) {
        return !jSONObject.optBoolean("success", false) && "SYSTEM_ERROR".equals(jSONObject.optString("resultCode")) && jSONObject.optBoolean("retryable", false);
    }

    private Boolean usePropUniversalCard(String str, String str2) {
        boolean z;
        JSONObject jSONObjectQueryUniversalAnimal = null;
        int i = 0;
        do {
            try {
                JSONObject jSONObject = new JSONObject(queryBookListWithRetry(9, i));
                if (isTransientSystemError(jSONObject) || !MessageUtil.checkResultCode(TAG, jSONObject).booleanValue()) {
                    break;
                    break;
                }
                JSONObject jSONObject2 = jSONObject.getJSONObject("data");
                z = jSONObject2.getBoolean("hasMore");
                i += 9;
                JSONArray jSONArray = jSONObject2.getJSONArray("bookForUserList");
                for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                    JSONObject jSONObject3 = jSONArray.getJSONObject(i2);
                    if (isQueryBookInfo(jSONObject3, 0).booleanValue()) {
                        jSONObjectQueryUniversalAnimal = queryUniversalAnimal(jSONObject3.getJSONObject("animalBookResult").getString("bookId"), jSONObjectQueryUniversalAnimal);
                    }
                }
            } catch (Throwable th) {
                String str3 = TAG;
                Log.i(str3, "usePropUniversalCard err:");
                Log.printStackTrace(str3, th);
            }
        } while (z);
        if (jSONObjectQueryUniversalAnimal != null && consumeProp(str, str2, jSONObjectQueryUniversalAnimal.getString("animalId")).booleanValue()) {
            return true;
        }
        return false;
    }

    private Boolean isQueryBookInfo(JSONObject jSONObject, int i) {
        if (!BookStatus.valueOf(jSONObject.optString("bookStatus")).match(BookStatusType.types[(i == 0 ? this.useUniversalCardBookStatusType : this.giftToFriendBookStatusType).getValue().intValue()]).booleanValue()) {
            return false;
        }
        if (!BookCollectedStatus.valueOf(jSONObject.optString("bookCollectedStatus")).match(BookCollectedStatusType.types[(i == 0 ? this.useUniversalCardBookCollectedStatusType : this.giftToFriendBookCollectedStatusType).getValue().intValue()]).booleanValue()) {
            return false;
        }
        return MedalGenerationStatus.valueOf(jSONObject.optString("medalGenerationStatus")).match(MedalGenerationStatusType.types[(i == 0 ? this.useUniversalCardMedalGenerationStatusType : this.giftToFriendMedalGenerationStatusType).getValue().intValue()]);
    }

    private JSONObject queryUniversalAnimal(String str, JSONObject jSONObject) {
        JSONObject jSONObject2;
        int i;
        try {
            JSONObject jSONObject3 = new JSONObject(AntDodoRpcCall.queryBookInfo(str));
            if (!MessageUtil.checkResultCode(TAG, jSONObject3).booleanValue()) {
                return jSONObject;
            }
            JSONArray jSONArray = jSONObject3.getJSONObject("data").getJSONArray("animalForUserList");
            for (int i2 = 0; i2 < jSONArray.length() && (i = (jSONObject2 = jSONArray.getJSONObject(i2)).getInt("star")) >= FantasticLevelType.stars[this.useUniversalCardFantasticLevelType.getValue().intValue()]; i2++) {
                JSONObject jSONObject4 = jSONObject2.getJSONObject("collectDetail");
                int iOptInt = jSONObject4.optInt("count", 1073741824);
                boolean zOptBoolean = jSONObject4.optBoolean("hasCollected", false);
                boolean z = true;
                if (jSONObject != null) {
                    if (this.useUniversalCardBookCollectedhasCollected.getValue().booleanValue()) {
                        boolean z2 = jSONObject.optBoolean("hasCollected", true) && !zOptBoolean;
                        if (jSONObject.optBoolean("hasCollected", true) != zOptBoolean || (iOptInt >= jSONObject.getInt("count") && (iOptInt != jSONObject.getInt("count") || i <= jSONObject.getInt("star")))) {
                            z = z2;
                        }
                    } else if (iOptInt >= jSONObject.getInt("count") && (iOptInt != jSONObject.getInt("count") || i <= jSONObject.getInt("star"))) {
                        z = false;
                    }
                }
                if (z) {
                    jSONObject = jSONObject2.getJSONObject(IconRegistry.SCOPE_ANIMAL);
                    jSONObject.put("star", i);
                    jSONObject.put("count", iOptInt);
                    jSONObject.put("hasCollected", zOptBoolean);
                }
            }
        } catch (Throwable th) {
            String str2 = TAG;
            Log.i(str2, "queryUniversalAnimal err:");
            Log.printStackTrace(str2, th);
        }
        return jSONObject;
    }

    private Boolean consumeProp(String str, String str2) {
        try {
            JSONObject jSONObject = new JSONObject(AntDodoRpcCall.consumeProp(str, str2));
            if (!MessageUtil.checkResultCode(TAG, jSONObject).booleanValue()) {
                return false;
            }
            JSONObject jSONObject2 = jSONObject.getJSONObject("data");
            String string = jSONObject2.getJSONObject("propConfig").getString("propName");
            JSONObject jSONObject3 = jSONObject2.getJSONObject("useResult");
            JSONObject jSONObjectOptJSONObject = jSONObject3.optJSONObject(IconRegistry.SCOPE_ANIMAL);
            Log.forest("使用道具🎭[" + string + "]" + getAnimalInfo(jSONObjectOptJSONObject));
            if (this.scratchCard.getValue().booleanValue()) {
                scratchNewCard(jSONObject3);
            }
            checkAnimalAndGiftToFriend(jSONObjectOptJSONObject);
            return true;
        } catch (Throwable th) {
            String str3 = TAG;
            Log.i(str3, "consumeProp err:");
            Log.printStackTrace(str3, th);
            return false;
        }
    }

    private Boolean consumeProp(String str, String str2, String str3) {
        try {
            JSONObject jSONObject = new JSONObject(AntDodoRpcCall.consumeProp(str, str2, str3));
            if (!MessageUtil.checkResultCode(TAG, jSONObject).booleanValue()) {
                return false;
            }
            JSONObject jSONObject2 = jSONObject.getJSONObject("data");
            String string = jSONObject2.getJSONObject("propConfig").getString("propName");
            JSONObject jSONObject3 = jSONObject2.getJSONObject("useResult");
            JSONObject jSONObjectOptJSONObject = jSONObject3.optJSONObject(IconRegistry.SCOPE_ANIMAL);
            Log.forest("使用道具🎭[" + string + "]" + getAnimalInfo(jSONObjectOptJSONObject));
            if (this.scratchCard.getValue().booleanValue()) {
                scratchNewCard(jSONObject3);
            }
            checkAnimalAndGiftToFriend(jSONObjectOptJSONObject);
            return true;
        } catch (Throwable th) {
            String str4 = TAG;
            Log.i(str4, "consumeProp err:");
            Log.printStackTrace(str4, th);
            return false;
        }
    }

    /* JADX WARN: Code duplicated, block: B:52:0x01e6  */
    private void collectToFriend() {
        int i;
        String str;
        String str2;
        String str3;
        int i2;
        int i3;
        AntDodo antDodo = this;
        String str4 = "name";
        String str5 = "animalId";
        String str6 = IconRegistry.SCOPE_ANIMAL;
        try {
            JSONObject jSONObject = new JSONObject(AntDodoRpcCall.queryFriend());
            if (MessageUtil.checkResultCode(TAG, jSONObject).booleanValue()) {
                JSONArray jSONArray = jSONObject.getJSONObject("data").getJSONObject("extend").getJSONArray("limit");
                int i4 = 0;
                while (true) {
                    if (i4 >= jSONArray.length()) {
                        i = 0;
                        break;
                    }
                    JSONObject jSONObject2 = jSONArray.getJSONObject(i4);
                    if (jSONObject2.getString("actionCode").equals("COLLECT_TO_FRIEND")) {
                        if (jSONObject2.getLong("startTime") <= System.currentTimeMillis()) {
                            i = jSONObject2.getInt("leftLimit");
                            break;
                        }
                        return;
                    }
                    i4++;
                }
                JSONArray jSONArray2 = jSONObject.getJSONObject("data").getJSONArray("friends");
                int i5 = 0;
                while (i5 < jSONArray2.length() && i > 0) {
                    JSONObject jSONObject3 = jSONArray2.getJSONObject(i5);
                    if (jSONObject3.getBoolean("dailyCollect")) {
                        str = str4;
                        str2 = str5;
                        str3 = str6;
                        i3 = i5;
                        i = i;
                    } else {
                        String string = jSONObject3.getString("userId");
                        boolean zContains = antDodo.collectToFriendList.getValue().contains(string);
                        if (antDodo.collectToFriendType.getValue().intValue() != 1) {
                            zContains = !zContains;
                        }
                        if (zContains) {
                            JSONObject jSONObject4 = new JSONObject(AntDodoRpcCall.collect(string));
                            String str7 = TAG;
                            if (MessageUtil.checkResultCode(str7, jSONObject4).booleanValue()) {
                                String maskName = UserIdMap.getMaskName(string);
                                JSONObject jSONObjectOptJSONObject = jSONObject4.getJSONObject("data").optJSONObject(str6);
                                JSONObject jSONObjectOptJSONObject2 = jSONObject4.getJSONObject("data").optJSONObject("collectDetail");
                                if (antDodo.useMaxExchangeFriendCard.getValue().booleanValue()) {
                                    String strOptString = jSONObjectOptJSONObject.optString(str5);
                                    String strOptString2 = jSONObjectOptJSONObject.optString(str4);
                                    i3 = i5;
                                    String strOptString3 = jSONObjectOptJSONObject2.optString("cardInstanceId");
                                    i2 = i;
                                    JSONObject jSONObject5 = new JSONObject(AntDodoRpcCall.queryMyCollection(strOptString));
                                    if (MessageUtil.checkResultCode(str7, jSONObject5).booleanValue()) {
                                        JSONObject jSONObject6 = jSONObject5.getJSONObject("data").optJSONArray("animalCollectionInfoList").getJSONObject(0);
                                        String strOptString4 = jSONObject6.optJSONObject(str6).optString(str5);
                                        str2 = str5;
                                        try {
                                            String strOptString5 = jSONObject6.optJSONObject(str6).optString("ecosystem");
                                            String strOptString6 = jSONObject6.optJSONObject(str6).optString(str4);
                                            str = str4;
                                            str3 = str6;
                                            String strOptString7 = jSONObject6.optJSONObject(str6).optString("fantasticLevel");
                                            int iOptInt = jSONObject6.optJSONObject("collectDetail").optInt("count");
                                            if (iOptInt > 0) {
                                                JSONObject jSONObject7 = new JSONObject(AntDodoRpcCall.exchange(strOptString4, strOptString, strOptString3, string));
                                                if (MessageUtil.checkResultCode(str7, jSONObject7).booleanValue()) {
                                                    JSONObject jSONObjectOptJSONObject3 = jSONObject7.optJSONObject("data");
                                                    JSONObject jSONObjectOptJSONObject4 = jSONObjectOptJSONObject3 == null ? null : jSONObjectOptJSONObject3.optJSONObject("collectDetail");
                                                    Log.forest("帮抽卡换🦕用[" + strOptString5 + "]" + strOptString6 + "(" + iOptInt + ")[" + FantasticLevel.valueOf(strOptString7).nickName() + "]与[" + maskName + "]交换#获得[" + strOptString2 + "](" + (jSONObjectOptJSONObject4 == null ? 0 : jSONObjectOptJSONObject4.optInt("count")) + ")");
                                                    antDodo = this;
                                                    if (antDodo.scratchCard.getValue().booleanValue()) {
                                                        antDodo.scratchNewCard(jSONObjectOptJSONObject3);
                                                    }
                                                } else {
                                                    antDodo = this;
                                                }
                                            } else {
                                                antDodo = this;
                                            }
                                        } catch (Throwable th) {
                                            th = th;
                                        }
                                    } else {
                                        str = str4;
                                        str2 = str5;
                                        str3 = str6;
                                    }
                                } else {
                                    str = str4;
                                    str2 = str5;
                                    str3 = str6;
                                    i2 = i;
                                    i3 = i5;
                                    Log.forest("帮抽卡片🦕[" + maskName + "]" + getAnimalInfo(jSONObjectOptJSONObject));
                                }
                                i = i2 - 1;
                            }
                        }
                        str = str4;
                        str2 = str5;
                        str3 = str6;
                        i3 = i5;
                        i = i;
                    }
                    i5 = i3 + 1;
                    jSONArray2 = jSONArray2;
                    str5 = str2;
                    str4 = str;
                    str6 = str3;
                }
                return;
            }
            return;
        } catch (Throwable th2) {
            th = th2;
        }
        String str8 = TAG;
        Log.i(str8, "collectHelpFriend err:");
        Log.printStackTrace(str8, th);
    }

    private void generateBookMedal() {
        boolean z;
        int i = 0;
        do {
            try {
                JSONObject jSONObject = new JSONObject(queryBookListWithRetry(9, i));
                if (!isTransientSystemError(jSONObject) && MessageUtil.checkResultCode(TAG, jSONObject).booleanValue()) {
                    JSONObject jSONObject2 = jSONObject.getJSONObject("data");
                    z = jSONObject2.getBoolean("hasMore");
                    i += 9;
                    JSONArray jSONArray = jSONObject2.getJSONArray("bookForUserList");
                    for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                        JSONObject jSONObject3 = jSONArray.getJSONObject(i2);
                        MedalGenerationStatus medalGenerationStatusValueOf = MedalGenerationStatus.valueOf(jSONObject3.optString("medalGenerationStatus"));
                        if (medalGenerationStatusValueOf == MedalGenerationStatus.CAN_GENERATE) {
                            if (this.bookMedalOptions.getValue().contains("generateBookMedal")) {
                                JSONObject jSONObject4 = jSONObject3.getJSONObject("animalBookResult");
                                String string = jSONObject4.getString("bookId");
                                String string2 = jSONObject4.getString("ecosystem");
                                if (!MessageUtil.checkResultCode(TAG, new JSONObject(AntDodoRpcCall.generateBookMedal(string))).booleanValue()) {
                                    break;
                                }
                                Log.forest("神奇物种🦕合成勋章[" + string2 + "]");
                            } else {
                                continue;
                            }
                        } else if (medalGenerationStatusValueOf == MedalGenerationStatus.CAN_NOT_GENERATE && this.bookMedalOptions.getValue().contains("collectHistoryAnimal") && "END".equals(jSONObject3.optString("bookStatus")) && this.usePropList.getValue().contains("COLLECT_HISTORY_ANIMAL_7_DAYS")) {
                            this.useProp.getValue().booleanValue();
                        }
                    }
                }
                return;
            } catch (Throwable th) {
                String str = TAG;
                Log.i(str, "generateBookMedal err:");
                Log.printStackTrace(str, th);
                return;
            }
        } while (z);
    }

    private static String getAnimalInfo(JSONObject jSONObject) {
        if (jSONObject == null) {
            return "";
        }
        return "#[" + jSONObject.optString("ecosystem", "未知专辑") + "]" + jSONObject.optString("name", "未知动物") + "[" + FantasticLevel.valueOf(jSONObject.optString("fantasticLevel", "Unknown")).nickName() + "]";
    }

    private void checkAnimalAndGiftToFriend(JSONObject jSONObject) {
        String giftToFriendTargetUserId;
        if (jSONObject == null || !this.giftToFriend.getValue().booleanValue() || this.useCollectTimingType.getValue().intValue() != 1 || (giftToFriendTargetUserId = getGiftToFriendTargetUserId()) == null) {
            return;
        }
        try {
            if (FantasticLevel.MAGIC.name().equals(jSONObject.getString("fantasticLevel"))) {
                String string = jSONObject.getString("bookId");
                JSONObject jSONObject2 = new JSONObject(AntDodoRpcCall.homePage());
                if (MessageUtil.checkResultCode(TAG, jSONObject2).booleanValue() && string.equals(jSONObject2.getJSONObject("data").getJSONObject("animalBook").getString("bookId"))) {
                    giftToFriend(jSONObject, giftToFriendTargetUserId);
                }
            }
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "checkAnimalAndGiftToFriend err:");
            Log.printStackTrace(str, th);
        }
    }

    private String getGiftToFriendTargetUserId() {
        Set<String> value = this.giftToFriendList.getValue();
        if (value.isEmpty()) {
            return null;
        }
        for (String str : value) {
            if (UserIdMap.getCurrentUid() != null && !Objects.equals(UserIdMap.getCurrentUid(), str)) {
                return str;
            }
        }
        return null;
    }

    private void giftToFriend() {
        String giftToFriendTargetUserId = getGiftToFriendTargetUserId();
        if (giftToFriendTargetUserId == null) {
            return;
        }
        giftToFriend(giftToFriendTargetUserId);
    }

    private void giftToFriend(String str) {
        boolean z;
        int i = 0;
        do {
            try {
                JSONObject jSONObject = new JSONObject(queryBookListWithRetry(9, i));
                if (!isTransientSystemError(jSONObject) && MessageUtil.checkResultCode(TAG, jSONObject).booleanValue()) {
                    JSONObject jSONObject2 = jSONObject.getJSONObject("data");
                    z = jSONObject2.getBoolean("hasMore");
                    i += 9;
                    JSONArray jSONArray = jSONObject2.getJSONArray("bookForUserList");
                    for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                        JSONObject jSONObject3 = jSONArray.getJSONObject(i2);
                        if (!jSONObject3.getString("collectProgress").startsWith("0/") && isQueryBookInfo(jSONObject3, 1).booleanValue()) {
                            giftToFriend(jSONObject3.getJSONObject("animalBookResult").getString("bookId"), str);
                        }
                    }
                }
                return;
            } catch (Throwable th) {
                String str2 = TAG;
                Log.i(str2, "giftToFriend err:");
                Log.printStackTrace(str2, th);
                return;
            }
        } while (z);
    }

    private void giftToFriend(String str, String str2) {
        JSONArray jSONArrayOptJSONArray;
        int iOptInt;
        try {
            JSONObject jSONObject = new JSONObject(AntDodoRpcCall.queryBookInfo(str));
            if (MessageUtil.checkResultCode(TAG, jSONObject).booleanValue() && (jSONArrayOptJSONArray = jSONObject.getJSONObject("data").optJSONArray("animalForUserList")) != null) {
                int i = FantasticLevelType.stars[this.giftToFriendFantasticLevelType.getValue().intValue()];
                for (int i2 = 0; i2 < jSONArrayOptJSONArray.length(); i2++) {
                    JSONObject jSONObject2 = jSONArrayOptJSONArray.getJSONObject(i2);
                    if (jSONObject2.optInt("star") >= i && (iOptInt = jSONObject2.getJSONObject("collectDetail").optInt("count")) > 0) {
                        JSONObject jSONObject3 = jSONObject2.getJSONObject(IconRegistry.SCOPE_ANIMAL);
                        for (int i3 = 0; i3 < iOptInt; i3++) {
                            if (!giftToFriend(jSONObject3, str2).booleanValue()) {
                                return;
                            }
                            TimeUtil.sleep(500L);
                        }
                    }
                }
            }
        } catch (Throwable th) {
            String str3 = TAG;
            Log.i(str3, "giftToFriend err:");
            Log.printStackTrace(str3, th);
        }
    }

    private Boolean giftToFriend(JSONObject jSONObject, String str) {
        try {
            String string = jSONObject.getString("animalId");
            if (str.equals(UserIdMap.getCurrentUid())) {
                return false;
            }
            if (MessageUtil.checkResultCode(TAG, new JSONObject(AntDodoRpcCall.social(string, str))).booleanValue()) {
                Log.forest("赠送卡片🦕[" + UserIdMap.getMaskName(str) + "]" + getAnimalInfo(jSONObject));
                return true;
            }
            return false;
        } catch (Throwable th) {
            String str2 = TAG;
            Log.i(str2, "giftToFriend err:");
            Log.printStackTrace(str2, th);
        }
    }

    public enum PropGroup {
        COLLECT_ANIMAL,
        COLLECT_HISTORY_ANIMAL,
        ADD_COLLECT_TO_FRIEND_LIMIT,
        UNIVERSAL_CARD;

        public final String[] nickNames = {"抽卡道具", "历史图鉴随机卡道具", "抽好友卡道具", "万能卡道具"};

        PropGroup() {
        }

        public String nickName() {
            return this.nickNames[ordinal()];
        }
    }

    public enum BookStatus {
        NOT_START,
        DOING,
        END;

        public final String[] nickNames = {"未开启", "进行中", "已结束"};

        BookStatus() {
        }

        public String nickName() {
            return this.nickNames[ordinal()];
        }

        public Boolean match(String str) {
            if (name().equals(NOT_START.name())) {
                return false;
            }
            return Boolean.valueOf(name().equals(str) || "ALL".equals(str));
        }
    }

    public enum BookCollectedStatus {
        NOT_COMPLETED,
        COMPLETED;

        public Boolean match(String str) {
            return Boolean.valueOf(name().equals(str) || "ALL".equals(str));
        }
    }

    public enum MedalGenerationStatus {
        CAN_NOT_GENERATE,
        CAN_GENERATE,
        GENERATED;

        public final String[] nickNames = {"收集中", "已集齐", "已合成"};

        MedalGenerationStatus() {
        }

        public String nickName() {
            return this.nickNames[ordinal()];
        }

        public Boolean match(String str) {
            return Boolean.valueOf(name().equals(str) || "ALL".equals(str));
        }
    }

    public enum FantasticLevel {
        COMMON,
        RARE,
        MAGIC;

        public final String[] nickNames = {"普通", "稀有", "神奇"};

        FantasticLevel() {
        }

        public String nickName() {
            return this.nickNames[ordinal()];
        }
    }
}
