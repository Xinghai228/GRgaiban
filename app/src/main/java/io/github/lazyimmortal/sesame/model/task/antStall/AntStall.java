package io.github.lazyimmortal.sesame.model.task.antStall;

import androidx.core.app.NotificationCompat;
import io.github.lazyimmortal.sesame.data.ConfigV2;
import io.github.lazyimmortal.sesame.data.ModelFields;
import io.github.lazyimmortal.sesame.data.ModelGroup;
import io.github.lazyimmortal.sesame.data.modelFieldExt.BooleanModelField;
import io.github.lazyimmortal.sesame.data.modelFieldExt.ChoiceModelField;
import io.github.lazyimmortal.sesame.data.modelFieldExt.IntegerModelField;
import io.github.lazyimmortal.sesame.data.modelFieldExt.SelectModelField;
import io.github.lazyimmortal.sesame.data.task.ModelTask;
import io.github.lazyimmortal.sesame.entity.AlipayAntStallTaskList;
import io.github.lazyimmortal.sesame.model.base.TaskAlternative;
import io.github.lazyimmortal.sesame.model.base.TaskCommon;
import io.github.lazyimmortal.sesame.model.task.antDodo.AntDodo$$ExternalSyntheticLambda3;
import io.github.lazyimmortal.sesame.model.task.antFarm.AntFarm;
import io.github.lazyimmortal.sesame.model.task.readingDada.ReadingDada;
import io.github.lazyimmortal.sesame.util.JsonUtil;
import io.github.lazyimmortal.sesame.util.Log;
import io.github.lazyimmortal.sesame.util.MessageUtil;
import io.github.lazyimmortal.sesame.util.Status;
import io.github.lazyimmortal.sesame.util.StringUtil;
import io.github.lazyimmortal.sesame.util.TaskIconUtil;
import io.github.lazyimmortal.sesame.util.TimeUtil;
import io.github.lazyimmortal.sesame.util.idMap.AntStallTaskListMap;
import io.github.lazyimmortal.sesame.util.idMap.UserIdMap;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Objects;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class AntStall extends ModelTask {
    private static final String TAG = "AntStall";
    private static final List<String> taskTypeList;
    private SelectModelField AntStallTaskList;
    private BooleanModelField AutoAntStallTaskList;
    private BooleanModelField assistFriend;
    private SelectModelField assistFriendList;
    private BooleanModelField closeShop;
    private IntegerModelField closeShopTime;
    private BooleanModelField doTaskOnce;
    private BooleanModelField donate;
    private SelectModelField inviteOpenShopList;
    private ChoiceModelField inviteOpenShopType;
    private BooleanModelField inviteRegister;
    private SelectModelField inviteRegisterList;
    private BooleanModelField manualCollectManure;
    private BooleanModelField nextVillage;
    private SelectModelField openShopList;
    private ChoiceModelField openShopType;
    private SelectModelField pasteTicketList;
    private ChoiceModelField pasteTicketType;
    private BooleanModelField sendBackShop;
    private SelectModelField sendBackShopBlackList;
    private IntegerModelField sendBackShopTime;
    private SelectModelField sendBackShopWhiteList;
    private BooleanModelField taskList;
    private SelectModelField throwManureList;
    private ChoiceModelField throwManureType;

    public interface InviteOpenShopType {
        public static final int INVITE = 1;
        public static final int NONE = 0;
        public static final int NOT_INVITE = 2;
        public static final String[] nickNames = {"不邀请摆摊", "邀请已选好友", "邀请未选好友"};
    }

    public interface OpenShopType {
        public static final int NONE = 0;
        public static final int NOT_OPEN = 2;
        public static final int OPEN = 1;
        public static final String[] nickNames = {"不摆摊", "摆摊已选好友", "摆摊未选好友"};
    }

    public interface PasteTicketType {
        public static final int NONE = 0;
        public static final int NOT_TICKET = 2;
        public static final int TICKET = 1;
        public static final String[] nickNames = {"不贴罚单", "贴已选好友", "贴未选好友"};
    }

    public interface ThrowManureType {
        public static final int NONE = 0;
        public static final int NOT_THROW = 2;
        public static final int THROW = 1;
        public static final String[] nickNames = {"不丢肥料", "丢已选好友", "丢未选好友"};
    }

    /* JADX INFO: Access modifiers changed from: private */
    static class Seat {
        public int hot;
        public String userId;

        public Seat(String str, int i) {
            this.userId = str;
            this.hot = i;
        }
    }

    static {
        ArrayList arrayList = new ArrayList();
        taskTypeList = arrayList;
        arrayList.add("ANTSTALL_NORMAL_OPEN_NOTICE");
        arrayList.add("tianjiashouye");
        arrayList.add("ANTSTALL_ELEME_VISIT");
        arrayList.add("ANTSTALL_TASK_diantao202311");
        arrayList.add("ANTSTALL_TASK_nongchangleyuan");
    }

    @Override // io.github.lazyimmortal.sesame.data.task.ModelTask, io.github.lazyimmortal.sesame.data.Model
    public String getName() {
        return "新村";
    }

    @Override // io.github.lazyimmortal.sesame.data.Model
    public ModelGroup getGroup() {
        return ModelGroup.STALL;
    }

    @Override // io.github.lazyimmortal.sesame.data.task.ModelTask, io.github.lazyimmortal.sesame.data.Model
    public ModelFields getFields() {
        ModelFields modelFields = new ModelFields();
        ChoiceModelField choiceModelField = new ChoiceModelField("openShopType", "摆摊 | 动作", 0, OpenShopType.nickNames);
        this.openShopType = choiceModelField;
        modelFields.addField(choiceModelField);
        SelectModelField selectModelField = new SelectModelField("openShopList", "摆摊 | 好友列表", new LinkedHashSet(), new AntDodo$$ExternalSyntheticLambda3());
        this.openShopList = selectModelField;
        modelFields.addField(selectModelField);
        BooleanModelField booleanModelField = new BooleanModelField("closeShop", "收摊 | 开启", false);
        this.closeShop = booleanModelField;
        modelFields.addField(booleanModelField);
        IntegerModelField integerModelField = new IntegerModelField("closeShopTime", "收摊 | 摆摊时长(分钟)", 120);
        this.closeShopTime = integerModelField;
        modelFields.addField(integerModelField);
        ChoiceModelField choiceModelField2 = new ChoiceModelField("pasteTicketType", "贴罚单 | 动作", 0, PasteTicketType.nickNames);
        this.pasteTicketType = choiceModelField2;
        modelFields.addField(choiceModelField2);
        SelectModelField selectModelField2 = new SelectModelField("pasteTicketList", "贴罚单 | 好友列表", new LinkedHashSet(), new AntDodo$$ExternalSyntheticLambda3());
        this.pasteTicketList = selectModelField2;
        modelFields.addField(selectModelField2);
        ChoiceModelField choiceModelField3 = new ChoiceModelField("throwManureType", "丢肥料 | 动作", 0, ThrowManureType.nickNames);
        this.throwManureType = choiceModelField3;
        modelFields.addField(choiceModelField3);
        SelectModelField selectModelField3 = new SelectModelField("throwManureList", "丢肥料 | 好友列表", new LinkedHashSet(), new AntDodo$$ExternalSyntheticLambda3());
        this.throwManureList = selectModelField3;
        modelFields.addField(selectModelField3);
        BooleanModelField booleanModelField2 = new BooleanModelField("manualCollectManure", "收肥料 | 手动收取", false);
        this.manualCollectManure = booleanModelField2;
        modelFields.addField(booleanModelField2);
        BooleanModelField booleanModelField3 = new BooleanModelField("sendBackShop", "请走小摊 | 开启", false);
        this.sendBackShop = booleanModelField3;
        modelFields.addField(booleanModelField3);
        IntegerModelField integerModelField2 = new IntegerModelField("sendBackShopTime", "请走小摊 | 允许摆摊时长(分钟)", 121);
        this.sendBackShopTime = integerModelField2;
        modelFields.addField(integerModelField2);
        SelectModelField selectModelField4 = new SelectModelField("sendBackShopWhiteList", "请走小摊 | 白名单(超时也不赶)", new LinkedHashSet(), new AntDodo$$ExternalSyntheticLambda3());
        this.sendBackShopWhiteList = selectModelField4;
        modelFields.addField(selectModelField4);
        SelectModelField selectModelField5 = new SelectModelField("sendBackShopBlackList", "请走小摊 | 黑名单(不超时也赶)", new LinkedHashSet(), new AntDodo$$ExternalSyntheticLambda3());
        this.sendBackShopBlackList = selectModelField5;
        modelFields.addField(selectModelField5);
        ChoiceModelField choiceModelField4 = new ChoiceModelField("inviteOpenShopType", "邀请摆摊 | 动作", 0, InviteOpenShopType.nickNames);
        this.inviteOpenShopType = choiceModelField4;
        modelFields.addField(choiceModelField4);
        SelectModelField selectModelField6 = new SelectModelField("inviteOpenShopList", "邀请摆摊 | 好友列表", new LinkedHashSet(), new AntDodo$$ExternalSyntheticLambda3());
        this.inviteOpenShopList = selectModelField6;
        modelFields.addField(selectModelField6);
        BooleanModelField booleanModelField4 = new BooleanModelField("taskList", "新村任务 | 加速产币", false);
        this.taskList = booleanModelField4;
        modelFields.addField(booleanModelField4);
        BooleanModelField booleanModelField5 = new BooleanModelField("AutoAntStallTaskList", "新村任务 | 推荐黑白名单", true);
        this.AutoAntStallTaskList = booleanModelField5;
        modelFields.addField(booleanModelField5);
        SelectModelField selectModelField7 = new SelectModelField("AntStallTaskList", "新村任务 | 黑名单列表", new LinkedHashSet(), new SelectModelField.SelectListFunc() { // from class: io.github.lazyimmortal.sesame.model.task.antStall.AntStall$$ExternalSyntheticLambda1
            @Override // io.github.lazyimmortal.sesame.data.modelFieldExt.SelectModelField.SelectListFunc
            public final List getList() {
                return AlipayAntStallTaskList.getList();
            }
        });
        this.AntStallTaskList = selectModelField7;
        modelFields.addField(selectModelField7);
        BooleanModelField booleanModelField6 = new BooleanModelField("doTaskOnce", "新村任务仅执行一次", false);
        this.doTaskOnce = booleanModelField6;
        modelFields.addField(booleanModelField6);
        BooleanModelField booleanModelField7 = new BooleanModelField("donate", "助力就业岗位", false);
        this.donate = booleanModelField7;
        modelFields.addField(booleanModelField7);
        BooleanModelField booleanModelField8 = new BooleanModelField("nextVillage", "解锁新村新店", false);
        this.nextVillage = booleanModelField8;
        modelFields.addField(booleanModelField8);
        BooleanModelField booleanModelField9 = new BooleanModelField("inviteRegister", "邀请开通 | 开启", false);
        this.inviteRegister = booleanModelField9;
        modelFields.addField(booleanModelField9);
        SelectModelField selectModelField8 = new SelectModelField("inviteRegisterList", "邀请开通 | 好友列表", new LinkedHashSet(), new AntDodo$$ExternalSyntheticLambda3());
        this.inviteRegisterList = selectModelField8;
        modelFields.addField(selectModelField8);
        BooleanModelField booleanModelField10 = new BooleanModelField("assistFriend", "分享助力 | 开启", false);
        this.assistFriend = booleanModelField10;
        modelFields.addField(booleanModelField10);
        SelectModelField selectModelField9 = new SelectModelField("assistFriendList", "分享助力 | 好友列表", new LinkedHashSet(), new AntDodo$$ExternalSyntheticLambda3());
        this.assistFriendList = selectModelField9;
        modelFields.addField(selectModelField9);
        return modelFields;
    }

    @Override // io.github.lazyimmortal.sesame.data.task.ModelTask
    public Boolean check() {
        if (TaskCommon.IS_ENERGY_TIME.booleanValue()) {
            Log.farm("任务暂停⏸️蚂蚁新村:当前为仅收能量时间");
            return false;
        }
        return true;
    }

    @Override // io.github.lazyimmortal.sesame.data.task.ModelTask
    public void run() {
        try {
            JSONObject jSONObjectQuerySelfHome = querySelfHome();
            if (jSONObjectQuerySelfHome == null) {
                return;
            }
            selfHomeHandler(jSONObjectQuerySelfHome);
            if (!Status.hasFlagToday("BlackList::initAntStall").booleanValue()) {
                initAntStallTaskListMap(this.AutoAntStallTaskList.getValue().booleanValue(), this.taskList.getValue().booleanValue());
                Status.flagToday("BlackList::initAntStall");
            }
            if (this.throwManureType.getValue().intValue() != 0) {
                throwManure();
            }
            if (!this.manualCollectManure.getValue().booleanValue()) {
                collectManure();
            }
            if (this.closeShop.getValue().booleanValue()) {
                closeShop();
            }
            if (this.openShopType.getValue().intValue() != 0) {
                openShop();
            }
            if (this.taskList.getValue().booleanValue()) {
                taskList();
            }
            if (this.assistFriend.getValue().booleanValue()) {
                assistFriend();
            }
            if (this.pasteTicketType.getValue().intValue() != 0) {
                pasteTicket();
            }
            stallInfo(jSONObjectQuerySelfHome);
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "AntStall.start.run err:");
            Log.printStackTrace(str, th);
        }
    }

    /* JADX WARN: Code duplicated, block: B:102:0x0168 A[PHI: r7 r16
      0x0168: PHI (r7v1 java.lang.Integer) = (r7v2 java.lang.Integer), (r7v6 java.lang.Integer), (r7v6 java.lang.Integer), (r7v6 java.lang.Integer) binds: [B:101:0x015e, B:88:0x013a, B:90:0x0142, B:92:0x0148] A[DONT_GENERATE, DONT_INLINE]
      0x0168: PHI (r16v1 java.lang.String) = (r16v2 java.lang.String), (r16v6 java.lang.String), (r16v6 java.lang.String), (r16v6 java.lang.String) binds: [B:101:0x015e, B:88:0x013a, B:90:0x0142, B:92:0x0148] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:129:0x0123 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:69:0x00f4 A[Catch: all -> 0x015a, TryCatch #6 {all -> 0x015a, blocks: (B:67:0x00df, B:69:0x00f4, B:72:0x00fe, B:74:0x0104), top: B:117:0x00df }] */
    /* JADX WARN: Code duplicated, block: B:71:0x00fc  */
    /* JADX WARN: Code duplicated, block: B:74:0x0104 A[Catch: all -> 0x015a, TRY_LEAVE, TryCatch #6 {all -> 0x015a, blocks: (B:67:0x00df, B:69:0x00f4, B:72:0x00fe, B:74:0x0104), top: B:117:0x00df }] */
    /* JADX WARN: Code duplicated, block: B:76:0x010a  */
    /* JADX WARN: Code duplicated, block: B:79:0x011c A[Catch: all -> 0x0131, TryCatch #0 {all -> 0x0131, blocks: (B:77:0x010c, B:79:0x011c, B:81:0x0123, B:82:0x012a), top: B:105:0x010c }] */
    /* JADX WARN: Code duplicated, block: B:80:0x011f  */
    /* JADX WARN: Code duplicated, block: B:86:0x0133  */
    /* JADX WARN: Code duplicated, block: B:89:0x013c A[Catch: all -> 0x0154, TryCatch #2 {all -> 0x0154, blocks: (B:87:0x0136, B:89:0x013c, B:91:0x0144, B:93:0x014a), top: B:109:0x0136 }] */
    /* JADX WARN: Code duplicated, block: B:97:0x0156  */
    private void stallInfo(JSONObject jSONObject) {
        String strOptString;
        String strOptString2;
        Integer numValueOf;
        Integer numValueOf2;
        Integer numValueOf3;
        Integer numValueOf4;
        String str;
        Integer num;
        Integer num2;
        Integer num3;
        Integer num4;
        Integer numValueOf5;
        String str2;
        Integer numValueOf6;
        JSONObject jSONObject2;
        JSONArray jSONArrayOptJSONArray;
        JSONObject jSONObjectOptJSONObject;
        JSONObject jSONObjectOptJSONObject2;
        int i;
        int i2;
        JSONObject jSONObjectOptJSONObject3;
        JSONArray jSONArray;
        String strTrimDouble = "";
        if (jSONObject != null) {
            try {
                JSONObject jSONObjectOptJSONObject4 = jSONObject.optJSONObject("currentVillage");
                if (jSONObjectOptJSONObject4 != null) {
                    strOptString = jSONObjectOptJSONObject4.optString("villageName", "");
                    try {
                        strOptString2 = jSONObjectOptJSONObject4.optString("villageType", "");
                        try {
                            numValueOf2 = jSONObjectOptJSONObject4.has("index") ? Integer.valueOf(jSONObjectOptJSONObject4.optInt("index")) : null;
                            try {
                                numValueOf4 = jSONObjectOptJSONObject4.has("donateCount") ? Integer.valueOf(jSONObjectOptJSONObject4.optInt("donateCount")) : null;
                                try {
                                    numValueOf = jSONObjectOptJSONObject4.has("donateLimit") ? Integer.valueOf(jSONObjectOptJSONObject4.optInt("donateLimit")) : null;
                                } catch (Throwable th) {
                                    th = th;
                                    numValueOf = null;
                                    numValueOf3 = null;
                                    String str3 = TAG;
                                    Log.i(str3, "stallInfo selfHome err:");
                                    Log.printStackTrace(str3, th);
                                    str = strTrimDouble;
                                    num = numValueOf3;
                                    num2 = numValueOf2;
                                    num3 = numValueOf;
                                    num4 = null;
                                    jSONObject2 = new JSONObject(AntStallRpcCall.roadmap());
                                    if (MessageUtil.checkResultCode(TAG, jSONObject2).booleanValue()) {
                                        jSONArrayOptJSONArray = jSONObject2.optJSONArray("roadList");
                                        if (jSONArrayOptJSONArray != null) {
                                            i = 0;
                                            i2 = 0;
                                            while (i < jSONArrayOptJSONArray.length()) {
                                                jSONObjectOptJSONObject3 = jSONArrayOptJSONArray.optJSONObject(i);
                                                if (jSONObjectOptJSONObject3 != null) {
                                                    str2 = strTrimDouble;
                                                    try {
                                                        jSONArray = jSONArrayOptJSONArray;
                                                        if ("FINISH".equals(jSONObjectOptJSONObject3.optString(NotificationCompat.CATEGORY_STATUS))) {
                                                            i2++;
                                                        }
                                                    } catch (Throwable th2) {
                                                        th = th2;
                                                        numValueOf6 = null;
                                                        String str4 = TAG;
                                                        Log.i(str4, "stallInfo roadmap err:");
                                                        Log.printStackTrace(str4, th);
                                                        strTrimDouble = str2;
                                                        Log.info("蚂蚁新村⛪[" + UserIdMap.getShowName(UserIdMap.getCurrentUid()) + "]当前[" + strOptString + "](" + strOptString2 + "第" + Log.n(num2) + "村)等级" + Log.n(num) + ";乡村振兴币" + str + ";本村捐助" + Log.n(numValueOf4) + "/" + Log.n(num3) + ";累计捐助" + Log.n(num4) + "次" + strTrimDouble + "元;已建村庄" + Log.n(numValueOf6) + ";");
                                                    }
                                                } else {
                                                    str2 = strTrimDouble;
                                                    jSONArray = jSONArrayOptJSONArray;
                                                }
                                                i++;
                                                jSONArrayOptJSONArray = jSONArray;
                                                strTrimDouble = str2;
                                            }
                                            str2 = strTrimDouble;
                                            numValueOf6 = Integer.valueOf(i2);
                                        } else {
                                            str2 = "";
                                            numValueOf6 = null;
                                        }
                                        try {
                                            jSONObjectOptJSONObject = jSONObject2.optJSONObject("userInfo");
                                            if (jSONObjectOptJSONObject == null) {
                                                strTrimDouble = str2;
                                            } else {
                                                strTrimDouble = str2;
                                            }
                                        } catch (Throwable th3) {
                                            th = th3;
                                            String str5 = TAG;
                                            Log.i(str5, "stallInfo roadmap err:");
                                            Log.printStackTrace(str5, th);
                                        }
                                    } else {
                                        numValueOf6 = null;
                                    }
                                    Log.info("蚂蚁新村⛪[" + UserIdMap.getShowName(UserIdMap.getCurrentUid()) + "]当前[" + strOptString + "](" + strOptString2 + "第" + Log.n(num2) + "村)等级" + Log.n(num) + ";乡村振兴币" + str + ";本村捐助" + Log.n(numValueOf4) + "/" + Log.n(num3) + ";累计捐助" + Log.n(num4) + "次" + strTrimDouble + "元;已建村庄" + Log.n(numValueOf6) + ";");
                                }
                            } catch (Throwable th4) {
                                th = th4;
                                strTrimDouble = "";
                                numValueOf = null;
                                numValueOf3 = null;
                                numValueOf4 = null;
                                String str6 = TAG;
                                Log.i(str6, "stallInfo selfHome err:");
                                Log.printStackTrace(str6, th);
                                str = strTrimDouble;
                                num = numValueOf3;
                                num2 = numValueOf2;
                                num3 = numValueOf;
                                num4 = null;
                                jSONObject2 = new JSONObject(AntStallRpcCall.roadmap());
                                if (MessageUtil.checkResultCode(TAG, jSONObject2).booleanValue()) {
                                    jSONArrayOptJSONArray = jSONObject2.optJSONArray("roadList");
                                    if (jSONArrayOptJSONArray != null) {
                                        i = 0;
                                        i2 = 0;
                                        while (i < jSONArrayOptJSONArray.length()) {
                                            jSONObjectOptJSONObject3 = jSONArrayOptJSONArray.optJSONObject(i);
                                            if (jSONObjectOptJSONObject3 != null) {
                                                str2 = strTrimDouble;
                                                jSONArray = jSONArrayOptJSONArray;
                                                if ("FINISH".equals(jSONObjectOptJSONObject3.optString(NotificationCompat.CATEGORY_STATUS))) {
                                                    i2++;
                                                }
                                            } else {
                                                str2 = strTrimDouble;
                                                jSONArray = jSONArrayOptJSONArray;
                                            }
                                            i++;
                                            jSONArrayOptJSONArray = jSONArray;
                                            strTrimDouble = str2;
                                        }
                                        str2 = strTrimDouble;
                                        numValueOf6 = Integer.valueOf(i2);
                                    } else {
                                        str2 = "";
                                        numValueOf6 = null;
                                    }
                                    jSONObjectOptJSONObject = jSONObject2.optJSONObject("userInfo");
                                    if (jSONObjectOptJSONObject == null) {
                                        strTrimDouble = str2;
                                    } else {
                                        strTrimDouble = str2;
                                    }
                                } else {
                                    numValueOf6 = null;
                                }
                                Log.info("蚂蚁新村⛪[" + UserIdMap.getShowName(UserIdMap.getCurrentUid()) + "]当前[" + strOptString + "](" + strOptString2 + "第" + Log.n(num2) + "村)等级" + Log.n(num) + ";乡村振兴币" + str + ";本村捐助" + Log.n(numValueOf4) + "/" + Log.n(num3) + ";累计捐助" + Log.n(num4) + "次" + strTrimDouble + "元;已建村庄" + Log.n(numValueOf6) + ";");
                            }
                        } catch (Throwable th5) {
                            th = th5;
                            strTrimDouble = "";
                            numValueOf = null;
                            numValueOf2 = null;
                            numValueOf3 = null;
                            numValueOf4 = null;
                            String str7 = TAG;
                            Log.i(str7, "stallInfo selfHome err:");
                            Log.printStackTrace(str7, th);
                            str = strTrimDouble;
                            num = numValueOf3;
                            num2 = numValueOf2;
                            num3 = numValueOf;
                            num4 = null;
                            jSONObject2 = new JSONObject(AntStallRpcCall.roadmap());
                            if (MessageUtil.checkResultCode(TAG, jSONObject2).booleanValue()) {
                                jSONArrayOptJSONArray = jSONObject2.optJSONArray("roadList");
                                if (jSONArrayOptJSONArray != null) {
                                    i = 0;
                                    i2 = 0;
                                    while (i < jSONArrayOptJSONArray.length()) {
                                        jSONObjectOptJSONObject3 = jSONArrayOptJSONArray.optJSONObject(i);
                                        if (jSONObjectOptJSONObject3 != null) {
                                            str2 = strTrimDouble;
                                            jSONArray = jSONArrayOptJSONArray;
                                            if ("FINISH".equals(jSONObjectOptJSONObject3.optString(NotificationCompat.CATEGORY_STATUS))) {
                                                i2++;
                                            }
                                        } else {
                                            str2 = strTrimDouble;
                                            jSONArray = jSONArrayOptJSONArray;
                                        }
                                        i++;
                                        jSONArrayOptJSONArray = jSONArray;
                                        strTrimDouble = str2;
                                    }
                                    str2 = strTrimDouble;
                                    numValueOf6 = Integer.valueOf(i2);
                                } else {
                                    str2 = "";
                                    numValueOf6 = null;
                                }
                                jSONObjectOptJSONObject = jSONObject2.optJSONObject("userInfo");
                                if (jSONObjectOptJSONObject == null) {
                                    strTrimDouble = str2;
                                } else {
                                    strTrimDouble = str2;
                                }
                            } else {
                                numValueOf6 = null;
                            }
                            Log.info("蚂蚁新村⛪[" + UserIdMap.getShowName(UserIdMap.getCurrentUid()) + "]当前[" + strOptString + "](" + strOptString2 + "第" + Log.n(num2) + "村)等级" + Log.n(num) + ";乡村振兴币" + str + ";本村捐助" + Log.n(numValueOf4) + "/" + Log.n(num3) + ";累计捐助" + Log.n(num4) + "次" + strTrimDouble + "元;已建村庄" + Log.n(numValueOf6) + ";");
                        }
                    } catch (Throwable th6) {
                        th = th6;
                        strTrimDouble = "";
                        strOptString2 = strTrimDouble;
                    }
                } else {
                    strOptString = "";
                    strOptString2 = strOptString;
                    numValueOf = null;
                    numValueOf2 = null;
                    numValueOf4 = null;
                }
                try {
                    JSONObject jSONObjectOptJSONObject5 = jSONObject.optJSONObject("userInfo");
                    if (jSONObjectOptJSONObject5 != null) {
                        numValueOf3 = jSONObjectOptJSONObject5.has("level") ? Integer.valueOf(jSONObjectOptJSONObject5.optInt("level")) : null;
                        try {
                            JSONObject jSONObjectOptJSONObject6 = jSONObjectOptJSONObject5.optJSONObject("currentCoin");
                            strTrimDouble = (jSONObjectOptJSONObject6 == null || !jSONObjectOptJSONObject6.has("amount")) ? "" : trimDouble(jSONObjectOptJSONObject6.optDouble("amount"));
                            try {
                                numValueOf5 = jSONObjectOptJSONObject5.has("donateCount") ? Integer.valueOf(jSONObjectOptJSONObject5.optInt("donateCount")) : null;
                            } catch (Throwable th7) {
                                th = th7;
                                String str8 = TAG;
                                Log.i(str8, "stallInfo selfHome err:");
                                Log.printStackTrace(str8, th);
                                str = strTrimDouble;
                                num = numValueOf3;
                                num2 = numValueOf2;
                                num3 = numValueOf;
                                num4 = null;
                            }
                        } catch (Throwable th8) {
                            th = th8;
                            strTrimDouble = "";
                        }
                    } else {
                        strTrimDouble = "";
                        numValueOf5 = null;
                        numValueOf3 = null;
                    }
                } catch (Throwable th9) {
                    th = th9;
                    numValueOf3 = null;
                    String str9 = TAG;
                    Log.i(str9, "stallInfo selfHome err:");
                    Log.printStackTrace(str9, th);
                    str = strTrimDouble;
                    num = numValueOf3;
                    num2 = numValueOf2;
                    num3 = numValueOf;
                    num4 = null;
                    jSONObject2 = new JSONObject(AntStallRpcCall.roadmap());
                    if (MessageUtil.checkResultCode(TAG, jSONObject2).booleanValue()) {
                        jSONArrayOptJSONArray = jSONObject2.optJSONArray("roadList");
                        if (jSONArrayOptJSONArray != null) {
                            i = 0;
                            i2 = 0;
                            while (i < jSONArrayOptJSONArray.length()) {
                                jSONObjectOptJSONObject3 = jSONArrayOptJSONArray.optJSONObject(i);
                                if (jSONObjectOptJSONObject3 != null) {
                                    str2 = strTrimDouble;
                                    jSONArray = jSONArrayOptJSONArray;
                                    if ("FINISH".equals(jSONObjectOptJSONObject3.optString(NotificationCompat.CATEGORY_STATUS))) {
                                        i2++;
                                    }
                                } else {
                                    str2 = strTrimDouble;
                                    jSONArray = jSONArrayOptJSONArray;
                                }
                                i++;
                                jSONArrayOptJSONArray = jSONArray;
                                strTrimDouble = str2;
                            }
                            str2 = strTrimDouble;
                            numValueOf6 = Integer.valueOf(i2);
                        } else {
                            str2 = "";
                            numValueOf6 = null;
                        }
                        jSONObjectOptJSONObject = jSONObject2.optJSONObject("userInfo");
                        if (jSONObjectOptJSONObject == null) {
                            strTrimDouble = str2;
                        } else {
                            strTrimDouble = str2;
                        }
                    } else {
                        numValueOf6 = null;
                    }
                    Log.info("蚂蚁新村⛪[" + UserIdMap.getShowName(UserIdMap.getCurrentUid()) + "]当前[" + strOptString + "](" + strOptString2 + "第" + Log.n(num2) + "村)等级" + Log.n(num) + ";乡村振兴币" + str + ";本村捐助" + Log.n(numValueOf4) + "/" + Log.n(num3) + ";累计捐助" + Log.n(num4) + "次" + strTrimDouble + "元;已建村庄" + Log.n(numValueOf6) + ";");
                }
            } catch (Throwable th10) {
                th = th10;
                strTrimDouble = "";
                strOptString = strTrimDouble;
                strOptString2 = strOptString;
            }
        } else {
            strTrimDouble = "";
            strOptString = strTrimDouble;
            strOptString2 = strOptString;
            numValueOf5 = null;
            numValueOf = null;
            numValueOf2 = null;
            numValueOf3 = null;
            numValueOf4 = null;
        }
        str = strTrimDouble;
        num = numValueOf3;
        num2 = numValueOf2;
        num3 = numValueOf;
        num4 = numValueOf5;
        try {
            jSONObject2 = new JSONObject(AntStallRpcCall.roadmap());
            if (MessageUtil.checkResultCode(TAG, jSONObject2).booleanValue()) {
                jSONArrayOptJSONArray = jSONObject2.optJSONArray("roadList");
                if (jSONArrayOptJSONArray != null) {
                    i = 0;
                    i2 = 0;
                    while (i < jSONArrayOptJSONArray.length()) {
                        jSONObjectOptJSONObject3 = jSONArrayOptJSONArray.optJSONObject(i);
                        if (jSONObjectOptJSONObject3 != null) {
                            str2 = strTrimDouble;
                            jSONArray = jSONArrayOptJSONArray;
                            if ("FINISH".equals(jSONObjectOptJSONObject3.optString(NotificationCompat.CATEGORY_STATUS))) {
                                i2++;
                            }
                        } else {
                            str2 = strTrimDouble;
                            jSONArray = jSONArrayOptJSONArray;
                        }
                        i++;
                        jSONArrayOptJSONArray = jSONArray;
                        strTrimDouble = str2;
                    }
                    str2 = strTrimDouble;
                    numValueOf6 = Integer.valueOf(i2);
                } else {
                    str2 = "";
                    numValueOf6 = null;
                }
                jSONObjectOptJSONObject = jSONObject2.optJSONObject("userInfo");
                if (jSONObjectOptJSONObject == null && (jSONObjectOptJSONObject2 = jSONObjectOptJSONObject.optJSONObject("donateCoin")) != null && jSONObjectOptJSONObject2.has("amount")) {
                    strTrimDouble = trimDouble(jSONObjectOptJSONObject2.optDouble("amount"));
                } else {
                    strTrimDouble = str2;
                }
            } else {
                numValueOf6 = null;
            }
        } catch (Throwable th11) {
            th = th11;
            str2 = strTrimDouble;
        }
        Log.info("蚂蚁新村⛪[" + UserIdMap.getShowName(UserIdMap.getCurrentUid()) + "]当前[" + strOptString + "](" + strOptString2 + "第" + Log.n(num2) + "村)等级" + Log.n(num) + ";乡村振兴币" + str + ";本村捐助" + Log.n(numValueOf4) + "/" + Log.n(num3) + ";累计捐助" + Log.n(num4) + "次" + strTrimDouble + "元;已建村庄" + Log.n(numValueOf6) + ";");
    }

    private static String trimDouble(double d) {
        if (d == Math.rint(d) && !Double.isInfinite(d)) {
            return Long.toString((long) d);
        }
        return Double.toString(d);
    }

    private static JSONObject querySelfHome() {
        try {
            JSONObject jSONObject = new JSONObject(AntStallRpcCall.selfHome(""));
            String str = TAG;
            if (!MessageUtil.checkSuccess(str, jSONObject).booleanValue()) {
                return null;
            }
            if (jSONObject.getBoolean("hasRegister") && !jSONObject.getBoolean("hasQuit")) {
                String string = jSONObject.getJSONObject("userInfo").getString("currentVillageType");
                if (!Objects.equals(string, jSONObject.getJSONObject("currentVillage").getString("villageType"))) {
                    TimeUtil.sleep(2000L);
                    jSONObject = new JSONObject(AntStallRpcCall.selfHome(string));
                    if (!MessageUtil.checkResultCode(str, jSONObject).booleanValue()) {
                        return null;
                    }
                }
                return jSONObject;
            }
            Log.farm("蚂蚁新村⛪请先开启蚂蚁新村");
            return null;
        } catch (Throwable th) {
            String str2 = TAG;
            Log.i(str2, "querySelfHome err:");
            Log.printStackTrace(str2, th);
            return null;
        }
    }

    private void selfHomeHandler(JSONObject jSONObject) {
        try {
            if (!canUnlockNewVillage(jSONObject.getJSONObject("currentVillage")).booleanValue()) {
                if (this.donate.getValue().booleanValue()) {
                    projectList();
                }
            } else if (this.nextVillage.getValue().booleanValue()) {
                unlockNewVillage();
            }
            settleReceivable(jSONObject.getJSONObject("astReceivableCoinVO"));
            JSONObject jSONObject2 = jSONObject.getJSONObject("seatsMap");
            settle(jSONObject2);
            sendBack(jSONObject2);
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "selfHomeHandler err:");
            Log.printStackTrace(str, th);
        }
    }

    public static void initAntStallTaskListMap(boolean z, boolean z2) {
        String strTaskList;
        SelectModelField selectModelField;
        try {
            AntStallTaskListMap.load();
            HashSet<String> hashSet = new HashSet();
            HashSet<String> hashSet2 = new HashSet();
            Iterator it = hashSet.iterator();
            while (it.hasNext()) {
                AntStallTaskListMap.add((String) it.next(), "");
            }
            if (!z2 || (strTaskList = AntStallRpcCall.taskList()) == null) {
                return;
            }
            JSONObject jSONObject = new JSONObject(strTaskList);
            if (MessageUtil.checkResultCode(TAG, jSONObject).booleanValue()) {
                JSONArray jSONArray = jSONObject.getJSONArray("taskModels");
                for (int i = 0; i < jSONArray.length(); i++) {
                    JSONObject jSONObject2 = new JSONObject(jSONArray.getJSONObject(i).getString("bizInfo"));
                    AntStallTaskListMap.add(jSONObject2.getString("title"), TaskIconUtil.extractIcon(jSONObject2));
                }
            }
            AntStallTaskListMap.save();
            Log.record("同步任务🉑新村任务列表");
            if (!z || (selectModelField = (SelectModelField) ConfigV2.INSTANCE.getModelFieldsMap().get("AntStall").get("AntStallTaskList")) == null) {
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
                Log.record("黑白名单🈲新村任务自动设置: " + selectModelField.getValue());
                return;
            }
            Log.record("新村任务黑白名单设置失败");
        } catch (Throwable th) {
            String str3 = TAG;
            Log.i(str3, "initAntStallTaskListMap err:");
            Log.printStackTrace(str3, th);
        }
    }

    private void settleReceivable(JSONObject jSONObject) {
        try {
            if (jSONObject.getBoolean("hasCoin")) {
                double d = jSONObject.getJSONObject("receivableCoin").getDouble("amount");
                if (MessageUtil.checkResultCode(TAG, new JSONObject(AntStallRpcCall.settleReceivable())).booleanValue()) {
                    Log.farm("蚂蚁新村⛪收取小摊结余#获得[" + d + "木兰币]");
                }
            }
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "settleReceivable err:");
            Log.printStackTrace(str, th);
        }
    }

    private void sendBack(String str, String str2, String str3, String str4) {
        String str5;
        try {
            JSONObject jSONObject = new JSONObject(AntStallRpcCall.shopSendBackPre(str, str2, str3, str4));
            String str6 = TAG;
            if (MessageUtil.checkResultCode(str6, jSONObject).booleanValue()) {
                double d = jSONObject.getJSONObject("astPreviewShopSettleVO").getJSONObject("income").getDouble("amount");
                if (MessageUtil.checkResultCode(str6, new JSONObject(AntStallRpcCall.shopSendBack(str2))).booleanValue()) {
                    StringBuilder sb = new StringBuilder("蚂蚁新村⛪请走[");
                    sb.append(UserIdMap.getMaskName(str4));
                    sb.append("]的小摊");
                    if (d > 0.0d) {
                        str5 = "#获得[" + d + "木兰币]";
                    } else {
                        str5 = "";
                    }
                    sb.append(str5);
                    Log.farm(sb.toString());
                }
                inviteOpenShop(str2);
            }
        } catch (Throwable th) {
            String str7 = TAG;
            Log.i(str7, "sendBack err:");
            Log.printStackTrace(str7, th);
        }
    }

    private synchronized void inviteOpenShop(String str) {
        try {
            if (this.inviteOpenShopType.getValue().intValue() == 0) {
                return;
            }
            try {
                JSONObject jSONObject = new JSONObject(AntStallRpcCall.rankInviteOpen());
                if (!MessageUtil.checkResultCode(TAG, jSONObject).booleanValue()) {
                    return;
                }
                JSONArray jSONArray = jSONObject.getJSONArray("friendRankList");
                for (int i = 0; i < jSONArray.length(); i++) {
                    JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                    String string = jSONObject2.getString("userId");
                    boolean zContains = this.inviteOpenShopList.getValue().contains(string);
                    if (this.inviteOpenShopType.getValue().intValue() != 1) {
                        zContains = !zContains;
                    }
                    if (zContains && jSONObject2.getBoolean("canOneKeyInviteOpenShop")) {
                        if (MessageUtil.checkResultCode(TAG, new JSONObject(AntStallRpcCall.oneKeyInviteOpenShop(string, str))).booleanValue()) {
                            Log.farm("蚂蚁新村⛪邀请[" + UserIdMap.getMaskName(string) + "]来新村摆摊");
                            return;
                        }
                    }
                }
            } catch (Throwable th) {
                String str2 = TAG;
                Log.i(str2, "inviteOpenShop err:");
                Log.printStackTrace(str2, th);
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    private void sendBack(JSONObject jSONObject) {
        for (int i = 1; i <= 2; i++) {
            try {
                JSONObject jSONObject2 = jSONObject.getJSONObject("GUEST_0" + i);
                final String string = jSONObject2.getString("seatId");
                if ("FREE".equals(jSONObject2.getString(NotificationCompat.CATEGORY_STATUS))) {
                    inviteOpenShop(string);
                } else if (this.sendBackShop.getValue().booleanValue()) {
                    final String strOptString = jSONObject2.optString("rentLastUser");
                    if (!StringUtil.isEmpty(strOptString) && !this.sendBackShopWhiteList.getValue().contains(strOptString)) {
                        final String string2 = jSONObject2.getString("rentLastBill");
                        final String string3 = jSONObject2.getString("rentLastShop");
                        if (this.sendBackShopBlackList.getValue().contains(strOptString)) {
                            sendBack(string2, string, string3, strOptString);
                        } else {
                            long j = jSONObject2.getLong("bizStartTime") + TimeUnit.MINUTES.toMillis(this.sendBackShopTime.getValue().intValue());
                            if (System.currentTimeMillis() > j) {
                                sendBack(string2, string, string3, strOptString);
                            } else {
                                String str = "SB|" + string;
                                if (!hasChildTask(str).booleanValue()) {
                                    addChildTask(new ModelTask.ChildModelTask(str, "SB", new Runnable() { // from class: io.github.lazyimmortal.sesame.model.task.antStall.AntStall$$ExternalSyntheticLambda0
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            this.f$0.m130xd7e7a467(string2, string, string3, strOptString);
                                        }
                                    }, Long.valueOf(j)));
                                    Log.record("添加蹲点请走⛪在[" + TimeUtil.getCommonDate(Long.valueOf(j)) + "]执行");
                                }
                            }
                        }
                    }
                }
            } catch (Throwable th) {
                String str2 = TAG;
                Log.i(str2, "sendBack err:");
                Log.printStackTrace(str2, th);
                return;
            }
        }
    }

    /* JADX INFO: renamed from: lambda$sendBack$0$io-github-lazyimmortal-sesame-model-task-antStall-AntStall, reason: not valid java name */
    /* synthetic */ void m130xd7e7a467(String str, String str2, String str3, String str4) {
        if (this.sendBackShop.getValue().booleanValue()) {
            sendBack(str, str2, str3, str4);
        }
    }

    private void settle(JSONObject jSONObject) {
        try {
            JSONObject jSONObject2 = jSONObject.getJSONObject("MASTER");
            if (jSONObject2.has("coinsMap")) {
                JSONObject jSONObject3 = jSONObject2.getJSONObject("coinsMap").getJSONObject("MASTER");
                String string = jSONObject3.getString("assetId");
                double d = jSONObject3.getJSONObject("money").getDouble("amount");
                if (jSONObject3.getBoolean("fullShow") || d > 100.0d) {
                    if (MessageUtil.checkResultCode(TAG, new JSONObject(AntStallRpcCall.settle(string, d))).booleanValue()) {
                        Log.farm("蚂蚁新村⛪收取经营所得#获得[" + d + "木兰币]");
                    }
                }
            }
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "settle err:");
            Log.printStackTrace(str, th);
        }
    }

    private void closeShop() {
        try {
            JSONObject jSONObject = new JSONObject(AntStallRpcCall.shopList());
            if (MessageUtil.checkResultCode(TAG, jSONObject).booleanValue()) {
                JSONArray jSONArray = jSONObject.getJSONArray("astUserShopList");
                for (int i = 0; i < jSONArray.length(); i++) {
                    JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                    if ("OPEN".equals(jSONObject2.getString(NotificationCompat.CATEGORY_STATUS))) {
                        long j = jSONObject2.getJSONObject("rentLastEnv").getLong("gmtLastRent") + TimeUnit.MINUTES.toMillis(this.closeShopTime.getValue().intValue());
                        final String string = jSONObject2.getString("shopId");
                        final String string2 = jSONObject2.getString("rentLastBill");
                        final String string3 = jSONObject2.getString("rentLastUser");
                        if (System.currentTimeMillis() > j) {
                            closeShop(string, string2, string3);
                        } else {
                            String str = "SH|" + string;
                            if (!hasChildTask(str).booleanValue()) {
                                addChildTask(new ModelTask.ChildModelTask(str, "SH", new Runnable() { // from class: io.github.lazyimmortal.sesame.model.task.antStall.AntStall$$ExternalSyntheticLambda2
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        this.f$0.m129xb2b73e41(string, string2, string3);
                                    }
                                }, Long.valueOf(j)));
                                Log.record("添加蹲点收摊⛪在[" + TimeUtil.getCommonDate(Long.valueOf(j)) + "]执行");
                            }
                        }
                    }
                }
            }
        } catch (Throwable th) {
            String str2 = TAG;
            Log.i(str2, "closeShop err:");
            Log.printStackTrace(str2, th);
        }
    }

    /* JADX INFO: renamed from: lambda$closeShop$1$io-github-lazyimmortal-sesame-model-task-antStall-AntStall, reason: not valid java name */
    /* synthetic */ void m129xb2b73e41(String str, String str2, String str3) {
        closeShop(str, str2, str3);
        TimeUtil.sleep(300L);
        if (this.openShopType.getValue().intValue() != 0) {
            openShop();
        }
    }

    private synchronized void openShop() {
        try {
            JSONObject jSONObject = new JSONObject(AntStallRpcCall.shopList());
            if (!MessageUtil.checkResultCode(TAG, jSONObject).booleanValue()) {
                return;
            }
            JSONArray jSONArray = jSONObject.getJSONArray("astUserShopList");
            LinkedList linkedList = new LinkedList();
            for (int i = 0; i < jSONArray.length(); i++) {
                JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                if ("FREE".equals(jSONObject2.getString(NotificationCompat.CATEGORY_STATUS))) {
                    linkedList.add(jSONObject2.getString("shopId"));
                }
            }
            rankCoinDonate(linkedList);
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "openShop err:");
            Log.printStackTrace(str, th);
        }
    }

    private void rankCoinDonate(Queue<String> queue) {
        try {
            JSONObject jSONObject = new JSONObject(AntStallRpcCall.rankCoinDonate());
            if (MessageUtil.checkResultCode(TAG, jSONObject).booleanValue()) {
                JSONArray jSONArray = jSONObject.getJSONArray("friendRankList");
                ArrayList arrayList = new ArrayList();
                for (int i = 0; i < jSONArray.length(); i++) {
                    JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                    if (jSONObject2.getBoolean("canOpenShop")) {
                        String string = jSONObject2.getString("userId");
                        boolean zContains = this.openShopList.getValue().contains(string);
                        if (this.openShopType.getValue().intValue() != 1) {
                            zContains = !zContains;
                        }
                        if (zContains) {
                            arrayList.add(new Seat(string, jSONObject2.getInt("hot")));
                        }
                    }
                }
                friendHomeOpenShop(arrayList, queue);
            }
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "rankCoinDonate err:");
            Log.printStackTrace(str, th);
        }
    }

    private Boolean openShop(String str, String str2, String str3) {
        try {
            if (MessageUtil.checkResultCode(TAG, new JSONObject(AntStallRpcCall.shopOpen(str, str2, str3))).booleanValue()) {
                Log.farm("蚂蚁新村⛪在[" + UserIdMap.getMaskName(str2) + "]的新村摆摊");
                return true;
            }
        } catch (Throwable th) {
            String str4 = TAG;
            Log.i(str4, "openShop err:");
            Log.printStackTrace(str4, th);
        }
        return false;
    }

    private void friendHomeOpenShop(List<Seat> list, Queue<String> queue) {
        String string;
        Collections.sort(list, new Comparator() { // from class: io.github.lazyimmortal.sesame.model.task.antStall.AntStall$$ExternalSyntheticLambda3
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return AntStall.lambda$friendHomeOpenShop$2((AntStall.Seat) obj, (AntStall.Seat) obj2);
            }
        });
        String currentUid = UserIdMap.getCurrentUid();
        while (true) {
            String strPoll = null;
            for (Seat seat : list) {
                if (strPoll == null && (strPoll = queue.poll()) == null) {
                    return;
                }
                String str = seat.userId;
                try {
                    JSONObject jSONObject = new JSONObject(AntStallRpcCall.friendHome(str));
                    if (!MessageUtil.checkResultCode(TAG, jSONObject).booleanValue()) {
                        return;
                    }
                    JSONObject jSONObject2 = jSONObject.getJSONObject("seatsMap");
                    JSONObject jSONObject3 = jSONObject2.getJSONObject("GUEST_02");
                    boolean z = false;
                    boolean z2 = true;
                    if (jSONObject3.getBoolean("canOpenShop")) {
                        string = jSONObject3.getString("seatId");
                    } else if (Objects.equals(currentUid, jSONObject3.getString("rentLastUser"))) {
                        string = null;
                        z2 = false;
                    } else {
                        string = null;
                    }
                    JSONObject jSONObject4 = jSONObject2.getJSONObject("GUEST_01");
                    if (jSONObject4.getBoolean("canOpenShop")) {
                        string = jSONObject4.getString("seatId");
                    } else {
                        if (!Objects.equals(currentUid, jSONObject4.getString("rentLastUser"))) {
                        }
                        if (!z || string == null || !openShop(string, str, strPoll).booleanValue()) {
                        }
                    }
                    z = z2;
                    if (!z) {
                        continue;
                    }
                } catch (Throwable th) {
                    String str2 = TAG;
                    Log.i(str2, "friendHomeOpenShop err:");
                    Log.printStackTrace(str2, th);
                }
            }
            return;
        }
    }

    static /* synthetic */ int lambda$friendHomeOpenShop$2(Seat seat, Seat seat2) {
        return seat2.hot - seat.hot;
    }

    private void closeShop(String str, String str2, String str3) {
        try {
            JSONObject jSONObject = new JSONObject(AntStallRpcCall.shopClosePre(str, str2));
            String str4 = TAG;
            if (MessageUtil.checkResultCode(str4, jSONObject).booleanValue()) {
                JSONObject jSONObject2 = jSONObject.getJSONObject("astPreviewShopSettleVO").getJSONObject("income");
                if (MessageUtil.checkResultCode(str4, new JSONObject(AntStallRpcCall.shopClose(str))).booleanValue()) {
                    Log.farm("蚂蚁新村⛪在[" + UserIdMap.getMaskName(str3) + "]的新村收摊#获得[" + jSONObject2.getDouble("amount") + "木兰币]");
                }
            }
        } catch (Throwable th) {
            String str5 = TAG;
            Log.i(str5, "closeShop err:");
            Log.printStackTrace(str5, th);
        }
    }

    private void taskList() {
        JSONArray jSONArray;
        try {
            String strTaskList = AntStallRpcCall.taskList();
            if (strTaskList == null) {
                return;
            }
            JSONObject jSONObject = new JSONObject(strTaskList);
            if (!MessageUtil.checkResultCode(TAG, jSONObject).booleanValue()) {
                if (jSONObject.has("errorMessage") && jSONObject.optString("errorMessage").equals("系统繁忙，请稍后再试。")) {
                    Status.flagToday("antstall::blockTask");
                    return;
                }
                return;
            }
            if (!jSONObject.getJSONObject("signListModel").getBoolean("currentKeySigned")) {
                signToday();
            }
            JSONArray jSONArray2 = jSONObject.getJSONArray("taskModels");
            int i = 0;
            int i2 = 0;
            while (i2 < jSONArray2.length()) {
                JSONObject jSONObject2 = jSONArray2.getJSONObject(i2);
                String string = jSONObject2.getString("taskStatus");
                if (Objects.equals(AntFarm.TaskStatus.RECEIVED.name(), string)) {
                    jSONArray = jSONArray2;
                } else {
                    String string2 = jSONObject2.getString("taskType");
                    JSONObject jSONObject3 = new JSONObject(jSONObject2.getString("bizInfo"));
                    String string3 = jSONObject3.getString("title");
                    int iOptInt = jSONObject2.optInt("rightsTimes", i);
                    int iOptInt2 = jSONObject2.optInt("rightsTimesLimit", i);
                    if (!Objects.equals(AntFarm.TaskStatus.TODO.name(), string)) {
                        receiveTaskAward(string2, string3);
                        if (iOptInt2 <= iOptInt) {
                            jSONArray = jSONArray2;
                        }
                    }
                    if (this.AntStallTaskList.getValue().contains(string3)) {
                        jSONArray = jSONArray2;
                        TaskAlternative.handleGameTask(new TaskAlternative.GameTask("AntStallTaskList", string3, jSONObject3.optString("desc", jSONObject3.optString("taskDesc")), jSONObject3.optString("targetUrl"), string).bizKey(string2).rights(iOptInt, iOptInt2).taskRemain(Math.max(0, jSONObject2.optInt("taskRequire", 0) - jSONObject2.optInt("taskProgress", 0))).taskPlayType(jSONObject2.optString("taskPlayType", jSONObject2.optString("taskProdPlayType"))).taskMode(jSONObject2.optString("taskMode")).taskSceneCode("ANTSTALL_TASK").scene("ANTSTALL_TASK", "AST").version(AntStallRpcCall.VERSION));
                    } else {
                        jSONArray = jSONArray2;
                        int iRightsTimesToDo = TaskAlternative.rightsTimesToDo(iOptInt, iOptInt2);
                        for (int i3 = 0; i3 < iRightsTimesToDo && doStallTask(jSONObject2, string3).booleanValue(); i3++) {
                            Log.farm("新村任务🧾完成[" + string3 + "]" + TaskAlternative.rightsProgressText(iOptInt, iOptInt2, i3));
                            TimeUtil.sleep(1000L);
                            receiveTaskAward(string2, string3);
                        }
                    }
                }
                i2++;
                jSONArray2 = jSONArray;
                i = 0;
            }
            if (this.doTaskOnce.getValue().booleanValue()) {
                Status.flagToday("antstall::blockTask");
            }
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "taskList err:");
            Log.printStackTrace(str, th);
        }
    }

    /* JADX WARN: Code duplicated, block: B:26:0x006c  */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    private Boolean doStallTask(JSONObject jSONObject, String str) {
        byte b;
        try {
            String string = jSONObject.getString("taskType");
            JSONObject jSONObject2 = new JSONObject(jSONObject.getString("bizInfo"));
            if (!"VISIT_AUTO_FINISH".equals(jSONObject2.getString("actionType")) && !taskTypeList.contains(string)) {
                switch (string.hashCode()) {
                    case -1830378288:
                        if (string.equals("ANTSTALL_P2P_DAILY_SHARER")) {
                            b = 2;
                        } else {
                            b = -1;
                        }
                        break;
                    case -1201896376:
                        if (string.equals("ANTSTALL_NORMAL_DAILY_QA")) {
                            b = 0;
                        } else {
                            b = -1;
                        }
                        break;
                    case -416583552:
                        if (string.equals("ANTSTALL_TASK_taojinbihuanduan")) {
                            b = 3;
                        } else {
                            b = -1;
                        }
                        break;
                    case -199544875:
                        if (string.equals("ANTSTALL_XLIGHT_VARIABLE_AWARD")) {
                            b = 4;
                        } else {
                            b = -1;
                        }
                        break;
                    case 48308391:
                        if (string.equals("ANTSTALL_NORMAL_INVITE_REGISTER")) {
                            b = 1;
                        } else {
                            b = -1;
                        }
                        break;
                    default:
                        b = -1;
                        break;
                }
                if (b == 0) {
                    return Boolean.valueOf(ReadingDada.answerQuestion(jSONObject2));
                }
                if (b == 1) {
                    inviteRegister();
                    return false;
                }
                if (b == 2) {
                    return false;
                }
                if (b == 3) {
                    String strReplaceAll = JsonUtil.getValueByPath(jSONObject, "bizInfo.targetUrl").replaceAll(".*sceneCode%3D([^&]+).*", "$1");
                    if (strReplaceAll.isEmpty()) {
                        return false;
                    }
                    if (!MessageUtil.checkResultCode(TAG, new JSONObject(AntStallRpcCall.queryCallAppSchema(strReplaceAll))).booleanValue()) {
                        return false;
                    }
                    TimeUtil.sleep(5000L);
                    querySelfHome();
                    AntStallRpcCall.taskList();
                    TimeUtil.sleep(5000L);
                    return false;
                }
                if (b == 4) {
                    JSONObject jSONObject3 = new JSONObject(AntStallRpcCall.xlightPlugin());
                    if (!jSONObject3.has("playingResult")) {
                        Log.i(TAG, "taskList.xlightPlugin err:" + jSONObject3.optString("resultDesc"));
                        return false;
                    }
                    JSONObject jSONObject4 = jSONObject3.getJSONObject("playingResult");
                    String string2 = jSONObject4.getString("playingBizId");
                    JSONArray jSONArray = (JSONArray) JsonUtil.getValueByPathObject(jSONObject4, "eventRewardDetail.eventRewardInfoList");
                    if (jSONArray != null && jSONArray.length() != 0) {
                        TimeUtil.sleep(5000L);
                        for (int i = 0; i < jSONArray.length(); i++) {
                            try {
                                JSONObject jSONObject5 = jSONArray.getJSONObject(i);
                                TimeUtil.sleep(5000L);
                                JSONObject jSONObject6 = new JSONObject(AntStallRpcCall.finish(string2, jSONObject5));
                                if (!jSONObject6.optBoolean("success")) {
                                    Log.i(TAG, "taskList.finish err:" + jSONObject6.optString("resultDesc"));
                                }
                            } catch (Throwable th) {
                                String str2 = TAG;
                                Log.i(str2, "taskList for err:");
                                Log.printStackTrace(str2, th);
                            }
                        }
                        return true;
                    }
                    return false;
                }
                return false;
            }
            return finishTask(string, str, jSONObject2.optString("taskDesc", ""));
        } catch (Throwable th2) {
            String str3 = TAG;
            Log.i(str3, "doStallTask err:");
            Log.printStackTrace(str3, th2);
        }
    }

    private void signToday() {
        try {
            JSONObject jSONObject = new JSONObject(AntStallRpcCall.signToday());
            if (MessageUtil.checkResultCode(TAG, jSONObject).booleanValue()) {
                StringBuilder sb = new StringBuilder();
                JSONArray jSONArray = jSONObject.getJSONArray("signRewardModelList");
                for (int i = 0; i < jSONArray.length(); i++) {
                    JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                    if (i > 0) {
                        sb.append(";");
                    }
                    int i2 = jSONObject2.getInt("count");
                    String string = jSONObject2.getString("type");
                    if ("ANTSTALL_HOT".equals(string)) {
                        sb.append("产速增加");
                        sb.append(i2);
                        sb.append("/小时");
                    } else {
                        sb.append(string);
                        sb.append("*");
                        sb.append(i2);
                    }
                }
                Log.farm("新村任务📅签到#获得[" + ((Object) sb) + "]");
            }
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "signToday err:");
            Log.printStackTrace(str, th);
        }
    }

    private static void receiveTaskAward(String str, String str2) {
        try {
            JSONObject jSONObject = new JSONObject(AntStallRpcCall.receiveTaskAward(str));
            if (MessageUtil.checkSuccess(TAG, jSONObject).booleanValue()) {
                Log.farm("新村任务🎖️领取[" + str2 + "]奖励#获得[产速增加" + jSONObject.getInt("incAwardCount") + "/小时]");
            }
        } catch (Throwable th) {
            String str3 = TAG;
            Log.i(str3, "receiveTaskAward err:");
            Log.printStackTrace(str3, th);
        }
    }

    private static Boolean finishTask(String str, String str2, String str3) {
        try {
            JSONObject jSONObject = new JSONObject(AntStallRpcCall.finishTask(str));
            MessageUtil.checkResultCodeAndMarkTaskBlackList("AntStallTaskList", str2, jSONObject);
            return MessageUtil.checkSuccess(TAG, jSONObject);
        } catch (Throwable th) {
            String str4 = TAG;
            Log.i(str4, "finishTask err:");
            Log.printStackTrace(str4, th);
            return false;
        }
    }

    private void inviteRegister() {
        JSONArray jSONArrayOptJSONArray;
        if (this.inviteRegister.getValue().booleanValue()) {
            try {
                JSONObject jSONObject = new JSONObject(AntStallRpcCall.rankInviteRegister());
                if (MessageUtil.checkResultCode(TAG, jSONObject).booleanValue() && (jSONArrayOptJSONArray = jSONObject.optJSONArray("friendRankList")) != null && jSONArrayOptJSONArray.length() > 0) {
                    for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                        JSONObject jSONObject2 = jSONArrayOptJSONArray.getJSONObject(i);
                        if (jSONObject2.optBoolean("canInviteRegister", false) && "UNREGISTER".equals(jSONObject2.getString("userStatus"))) {
                            String string = jSONObject2.getString("userId");
                            if (this.inviteRegisterList.getValue().contains(string)) {
                                if (MessageUtil.checkResultCode(TAG, new JSONObject(AntStallRpcCall.friendInviteRegister(string))).booleanValue()) {
                                    Log.farm("蚂蚁新村⛪邀请[" + UserIdMap.getMaskName(string) + "]开通新村");
                                    return;
                                }
                            }
                        }
                    }
                }
            } catch (Throwable th) {
                String str = TAG;
                Log.i(str, "inviteRegister err:");
                Log.printStackTrace(str, th);
            }
        }
    }

    private String shareP2P() {
        try {
            String strShareP2P = AntStallRpcCall.shareP2P();
            JSONObject jSONObject = new JSONObject(strShareP2P);
            if (jSONObject.optBoolean("success")) {
                String string = jSONObject.getString("shareId");
                Log.record("蚂蚁新村⛪[分享助力]");
                return string;
            }
            Log.record("shareP2P err: " + strShareP2P);
            return null;
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "shareP2P err:");
            Log.printStackTrace(str, th);
            return null;
        }
    }

    private void assistFriend() {
        try {
            if (Status.hasFlagToday("stall::shareP2PLimit").booleanValue()) {
                return;
            }
            for (String str : this.assistFriendList.getValue()) {
                if (Status.canStallShareP2PToday(str).booleanValue()) {
                    JSONObject jSONObject = new JSONObject(AntStallRpcCall.achieveBeShareP2P(str));
                    TimeUtil.sleep(5000L);
                    if ("600000026".equals(jSONObject.optString("code"))) {
                        Status.flagToday("stall::shareP2PLimit::" + str);
                    } else if (MessageUtil.checkSuccess(TAG, jSONObject).booleanValue()) {
                        Log.farm("新村助力🎉助力[" + UserIdMap.getMaskName(str) + "]成功");
                        Status.stallShareP2PToday(str);
                    } else {
                        if ("600000027".equals(jSONObject.getString("code"))) {
                            Status.flagToday("stall::shareP2PLimit");
                            return;
                        }
                        Status.flagToday("stall::shareP2PLimit::" + str);
                    }
                }
            }
        } catch (Throwable th) {
            String str2 = TAG;
            Log.i(str2, "assistFriend err:");
            Log.printStackTrace(str2, th);
        }
    }

    private void projectList() {
        if (canDonateToday().booleanValue()) {
            try {
                JSONObject jSONObject = new JSONObject(AntStallRpcCall.projectList());
                if (MessageUtil.checkResultCode(TAG, jSONObject).booleanValue()) {
                    JSONArray jSONArray = jSONObject.getJSONArray("astProjectVOS");
                    for (int i = 0; i < jSONArray.length(); i++) {
                        JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                        if (!"ONLINE".equals(jSONObject2.getString(NotificationCompat.CATEGORY_STATUS)) || !projectDetail(jSONObject2.getString("projectId")).booleanValue()) {
                            return;
                        }
                    }
                }
            } catch (Throwable th) {
                String str = TAG;
                Log.i(str, "projectList err:");
                Log.printStackTrace(str, th);
            }
        }
    }

    private Boolean projectDetail(String str) {
        try {
            JSONObject jSONObject = new JSONObject(AntStallRpcCall.projectDetail(str));
            if (MessageUtil.checkResultCode(TAG, jSONObject).booleanValue() && jSONObject.getJSONObject("astUserInfoVO").getJSONObject("currentCoin").getInt("cent") >= jSONObject.getJSONObject("astProjectVO").getJSONObject("jobModel").getJSONObject("donateAmount").getInt("cent")) {
                return projectDonate(str);
            }
            return false;
        } catch (Throwable th) {
            String str2 = TAG;
            Log.i(str2, "projectDetail err:");
            Log.printStackTrace(str2, th);
            return false;
        }
    }

    private Boolean projectDonate(String str) {
        try {
            JSONObject jSONObject = new JSONObject(AntStallRpcCall.projectDonate(str));
            if (MessageUtil.checkResultCode(TAG, jSONObject).booleanValue()) {
                JSONObject jSONObject2 = jSONObject.getJSONObject("donateBillVO");
                Log.farm("公益捐赠❤️[捐木兰币:" + jSONObject2.getString("projectTitle") + "]#捐赠[" + (jSONObject2.getInt("donateAmount") / 100) + "木兰币]");
                if (canUnlockNewVillage(jSONObject.getJSONObject("astUserVillageVO")).booleanValue()) {
                    if (this.nextVillage.getValue().booleanValue()) {
                        return unlockNewVillage();
                    }
                    return false;
                }
                return true;
            }
        } catch (Throwable th) {
            String str2 = TAG;
            Log.i(str2, "projectDonate err:");
            Log.printStackTrace(str2, th);
        }
        return false;
    }

    private Boolean canDonateToday() {
        if (Status.hasFlagToday("stall::donate").booleanValue()) {
            return false;
        }
        try {
            JSONObject jSONObject = new JSONObject(AntStallRpcCall.letterList());
            if (!MessageUtil.checkResultCode(TAG, jSONObject).booleanValue()) {
                return false;
            }
            JSONArray jSONArray = jSONObject.getJSONArray("letterList");
            if (jSONArray.length() != 0 && !TimeUtil.isLessThanNowOfDays(Long.valueOf(jSONArray.getJSONObject(0).getLong("gmtBiz"))).booleanValue()) {
                Status.flagToday("stall::donate");
                return false;
            }
            return true;
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "canDonateToday err:");
            Log.printStackTrace(str, th);
        }
    }

    private Boolean unlockNewVillage() {
        JSONObject jSONObjectQuerySelfHome;
        try {
            if (nextVillage().booleanValue() && (jSONObjectQuerySelfHome = querySelfHome()) != null) {
                JSONObject jSONObject = jSONObjectQuerySelfHome.getJSONObject("currentVillage");
                Log.farm("蚂蚁新村⛪解锁[" + jSONObject.getString("villageName") + "]#" + jSONObject.getJSONObject("properties").getString("villageDesc"));
                return true;
            }
            return false;
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "unlockNewVillage err:");
            Log.printStackTrace(str, th);
            return false;
        }
    }

    private Boolean canUnlockNewVillage(JSONObject jSONObject) {
        try {
            return Boolean.valueOf(jSONObject.getInt("donateCount") >= jSONObject.getInt("donateLimit"));
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "canUnlockNewVillage err:");
            Log.printStackTrace(str, th);
            return false;
        }
    }

    private static Boolean nextVillage() {
        try {
            return MessageUtil.checkResultCode(TAG, new JSONObject(AntStallRpcCall.nextVillage()));
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "nextVillage err:");
            Log.printStackTrace(str, th);
            return false;
        }
    }

    private void collectManure() {
        try {
            if (Status.hasFlagToday("stall::queryManureInfo").booleanValue()) {
                return;
            }
            JSONObject jSONObject = new JSONObject(AntStallRpcCall.queryManureInfo());
            if (jSONObject.optString("errorMessage").equals("系统繁忙，请稍后再试。")) {
                Log.record("新村queryManureInfo有点黑了，今天不再尝试");
                Status.flagToday("stall::queryManureInfo");
            }
            String str = TAG;
            if (MessageUtil.checkResultCode(str, jSONObject).booleanValue()) {
                JSONObject jSONObject2 = jSONObject.getJSONObject("astManureInfoVO");
                if (jSONObject2.optBoolean("hasManure")) {
                    int i = jSONObject2.getInt("manure");
                    if (MessageUtil.checkResultCode(str, new JSONObject(AntStallRpcCall.collectManure())).booleanValue()) {
                        Log.farm("蚂蚁新村⛪收取[" + i + "g肥料]");
                    }
                }
            }
        } catch (Throwable th) {
            String str2 = TAG;
            Log.i(str2, "collectManure err:");
            Log.printStackTrace(str2, th);
        }
    }

    private Boolean throwManure(JSONArray jSONArray) {
        try {
            JSONObject jSONObject = new JSONObject(AntStallRpcCall.throwManure(jSONArray));
            if (MessageUtil.checkResultCode(TAG, jSONObject).booleanValue()) {
                Log.farm("蚂蚁新村⛪一键丢肥料#讨回[" + jSONObject.getInt("income") + "木兰币]");
                TimeUtil.sleep(1000L);
                return true;
            }
            if ("B_OVER_LIMIT_COUNT_OF_THROW_FROM".equals(jSONObject.optString("resultCode"))) {
                Status.flagToday("stall::throwManureLimit");
            }
            return false;
        } catch (Throwable th) {
            try {
                String str = TAG;
                Log.i(str, "throwManure err:");
                Log.printStackTrace(str, th);
            } finally {
                TimeUtil.sleep(1000L);
            }
        }
    }

    private void throwManure() {
        if (Status.hasFlagToday("stall::throwManureLimit").booleanValue()) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(AntStallRpcCall.dynamicLoss());
            if (MessageUtil.checkResultCode(TAG, jSONObject).booleanValue()) {
                JSONArray jSONArray = jSONObject.getJSONArray("astLossDynamicVOS");
                JSONArray jSONArray2 = new JSONArray();
                for (int i = 0; i < jSONArray.length(); i++) {
                    JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                    if (!jSONObject2.has("specialEmojiVO")) {
                        boolean zContains = this.throwManureList.getValue().contains(jSONObject2.getString("objectId"));
                        if (this.throwManureType.getValue().intValue() != 1) {
                            zContains = !zContains;
                        }
                        if (zContains) {
                            JSONObject jSONObject3 = new JSONObject();
                            jSONObject3.put("bizId", jSONObject2.getString("bizId"));
                            jSONObject3.put("bizType", jSONObject2.getString("bizType"));
                            jSONArray2.put(jSONObject3);
                            if (jSONArray2.length() != 5) {
                                continue;
                            } else if (!throwManure(jSONArray2).booleanValue()) {
                                return;
                            } else {
                                jSONArray2 = new JSONArray();
                            }
                        }
                    }
                }
                if (jSONArray2.length() > 0) {
                    throwManure(jSONArray2);
                }
            }
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "throwManure err:");
            Log.printStackTrace(str, th);
        }
    }

    private void pasteTicket() {
        if (Status.hasFlagToday("stall::pasteTicketLimit").booleanValue()) {
            return;
        }
        while (true) {
            try {
                JSONObject jSONObject = new JSONObject(AntStallRpcCall.nextTicketFriend());
                if (!MessageUtil.checkResultCode(TAG, jSONObject).booleanValue()) {
                    return;
                }
                if (jSONObject.getInt("canPasteTicketCount") == 0) {
                    Log.record("蚂蚁新村👍今日罚单已贴完");
                    Status.flagToday("stall::pasteTicketLimit");
                    return;
                } else if (!jSONObject.has("friendUserId")) {
                    return;
                } else {
                    pasteTicket(jSONObject.getString("friendUserId"));
                }
            } catch (Throwable th) {
                String str = TAG;
                Log.i(str, "pasteTicket err:");
                Log.printStackTrace(str, th);
                return;
            }
        }
    }

    private void pasteTicket(String str) {
        boolean zContains = this.pasteTicketList.getValue().contains(str);
        if (this.pasteTicketType.getValue().intValue() != 1) {
            zContains = !zContains;
        }
        if (zContains) {
            try {
                JSONObject jSONObject = new JSONObject(AntStallRpcCall.friendHome(str));
                if (MessageUtil.checkResultCode(TAG, jSONObject).booleanValue()) {
                    JSONObject jSONObject2 = jSONObject.getJSONObject("seatsMap");
                    for (int i = 1; i <= 2; i++) {
                        JSONObject jSONObject3 = jSONObject2.getJSONObject("GUEST_0" + i);
                        if (!jSONObject3.getBoolean("canOpenShop") && jSONObject3.getBoolean("overTicketProtection")) {
                            JSONObject jSONObject4 = new JSONObject(AntStallRpcCall.pasteTicket(jSONObject3.getString("rentLastBill"), jSONObject3.getString("seatId"), jSONObject3.getString("rentLastShop"), jSONObject3.getString("rentLastUser"), jSONObject3.getString("userId")));
                            if (MessageUtil.checkResultCode(TAG, jSONObject4).booleanValue()) {
                                Log.farm("蚂蚁新村🚫在[" + UserIdMap.getMaskName(str) + "]的新村贴罚单#获得[" + jSONObject4.getJSONObject("pasteIncome").getDouble("amount") + "木兰币]");
                            }
                            TimeUtil.sleep(1000L);
                        }
                    }
                }
            } catch (Throwable th) {
                String str2 = TAG;
                Log.i(str2, "pasteTicket err:");
                Log.printStackTrace(str2, th);
            }
        }
    }
}
