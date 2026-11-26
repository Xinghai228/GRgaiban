package io.github.lazyimmortal.sesame.model.task.antOcean;

import androidx.core.app.NotificationCompat;
import io.github.lazyimmortal.sesame.data.ConfigV2;
import io.github.lazyimmortal.sesame.data.ModelFields;
import io.github.lazyimmortal.sesame.data.ModelGroup;
import io.github.lazyimmortal.sesame.data.modelFieldExt.BooleanModelField;
import io.github.lazyimmortal.sesame.data.modelFieldExt.ChoiceModelField;
import io.github.lazyimmortal.sesame.data.modelFieldExt.SelectModelField;
import io.github.lazyimmortal.sesame.data.task.ModelTask;
import io.github.lazyimmortal.sesame.entity.AlipayAntOceanAntiepTaskList;
import io.github.lazyimmortal.sesame.entity.AlipayAntOceanFishBlackList;
import io.github.lazyimmortal.sesame.hook.ApplicationHook;
import io.github.lazyimmortal.sesame.hook.Toast;
import io.github.lazyimmortal.sesame.model.base.TaskAlternative;
import io.github.lazyimmortal.sesame.model.base.TaskCommon;
import io.github.lazyimmortal.sesame.model.task.antDodo.AntDodo$$ExternalSyntheticLambda3;
import io.github.lazyimmortal.sesame.model.task.antFarm.AntFarm;
import io.github.lazyimmortal.sesame.model.task.antForest.AntForestRpcCall;
import io.github.lazyimmortal.sesame.util.Log;
import io.github.lazyimmortal.sesame.util.MessageUtil;
import io.github.lazyimmortal.sesame.util.Statistics;
import io.github.lazyimmortal.sesame.util.Status;
import io.github.lazyimmortal.sesame.util.StringUtil;
import io.github.lazyimmortal.sesame.util.TaskIconUtil;
import io.github.lazyimmortal.sesame.util.TimeUtil;
import io.github.lazyimmortal.sesame.util.idMap.AntOceanAntiepTaskListMap;
import io.github.lazyimmortal.sesame.util.idMap.AntOceanFishBlackListMap;
import io.github.lazyimmortal.sesame.util.idMap.UserIdMap;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class AntOcean extends ModelTask {
    private static final String TAG = "AntOcean";
    private SelectModelField AntOceanAntiepTaskList;
    private SelectModelField AntOceanFishBlackList;
    private BooleanModelField AutoAntOceanAntiepTaskList;
    private BooleanModelField AutoAntOceanFishBlackList;
    private BooleanModelField antfishAutoTask;
    private BooleanModelField antfishEnable;
    private SelectModelField cleanOceanList;
    private ChoiceModelField cleanOceanType;
    private BooleanModelField exchangeProject;
    private BooleanModelField exchangeUniversalPiece;
    private BooleanModelField queryTaskList;
    private BooleanModelField replica;
    private BooleanModelField useUniversalPiece;

    public interface CleanOceanType {
        public static final int CLEAN = 1;
        public static final int NONE = 0;
        public static final int NOT_CLEAN = 2;
        public static final String[] nickNames = {"不清理海域", "清理已选好友", "清理未选好友"};
    }

    @Override // io.github.lazyimmortal.sesame.data.task.ModelTask, io.github.lazyimmortal.sesame.data.Model
    public String getName() {
        return "海洋";
    }

    @Override // io.github.lazyimmortal.sesame.data.Model
    public ModelGroup getGroup() {
        return ModelGroup.FOREST;
    }

    @Override // io.github.lazyimmortal.sesame.data.task.ModelTask, io.github.lazyimmortal.sesame.data.Model
    public ModelFields getFields() {
        ModelFields modelFields = new ModelFields();
        BooleanModelField booleanModelField = new BooleanModelField("queryTaskList", "海洋任务", false);
        this.queryTaskList = booleanModelField;
        modelFields.addField(booleanModelField);
        BooleanModelField booleanModelField2 = new BooleanModelField("AutoAntOceanAntiepTaskList", "海洋任务 | 推荐黑白名单", true);
        this.AutoAntOceanAntiepTaskList = booleanModelField2;
        modelFields.addField(booleanModelField2);
        SelectModelField selectModelField = new SelectModelField("AntOceanAntiepTaskList", "海洋任务 | 黑名单列表", new LinkedHashSet(), new SelectModelField.SelectListFunc() { // from class: io.github.lazyimmortal.sesame.model.task.antOcean.AntOcean$$ExternalSyntheticLambda0
            @Override // io.github.lazyimmortal.sesame.data.modelFieldExt.SelectModelField.SelectListFunc
            public final List getList() {
                return AlipayAntOceanAntiepTaskList.getList();
            }
        });
        this.AntOceanAntiepTaskList = selectModelField;
        modelFields.addField(selectModelField);
        ChoiceModelField choiceModelField = new ChoiceModelField("cleanOceanType", "清理海域 | 动作", 0, CleanOceanType.nickNames);
        this.cleanOceanType = choiceModelField;
        modelFields.addField(choiceModelField);
        SelectModelField selectModelField2 = new SelectModelField("cleanOceanList", "清理海域 | 好友列表", new LinkedHashSet(), new AntDodo$$ExternalSyntheticLambda3());
        this.cleanOceanList = selectModelField2;
        modelFields.addField(selectModelField2);
        BooleanModelField booleanModelField3 = new BooleanModelField("exchangeUniversalPiece", "万能拼图 | 制作", false);
        this.exchangeUniversalPiece = booleanModelField3;
        modelFields.addField(booleanModelField3);
        BooleanModelField booleanModelField4 = new BooleanModelField("useUniversalPiece", "万能拼图 | 使用", false);
        this.useUniversalPiece = booleanModelField4;
        modelFields.addField(booleanModelField4);
        BooleanModelField booleanModelField5 = new BooleanModelField("replica", "潘多拉海域", false);
        this.replica = booleanModelField5;
        modelFields.addField(booleanModelField5);
        BooleanModelField booleanModelField6 = new BooleanModelField("antfishEnable", "海洋摸鱼 | 开启摸鱼", false);
        this.antfishEnable = booleanModelField6;
        modelFields.addField(booleanModelField6);
        BooleanModelField booleanModelField7 = new BooleanModelField("antfishAutoTask", "海洋摸鱼 | 摸鱼任务", false);
        this.antfishAutoTask = booleanModelField7;
        modelFields.addField(booleanModelField7);
        BooleanModelField booleanModelField8 = new BooleanModelField("AutoAntOceanFishBlackList", "海洋摸鱼 | 推荐黑白名单", true);
        this.AutoAntOceanFishBlackList = booleanModelField8;
        modelFields.addField(booleanModelField8);
        SelectModelField selectModelField3 = new SelectModelField("AntOceanFishBlackList", "摸鱼任务 | 黑名单列表", new LinkedHashSet(), new SelectModelField.SelectListFunc() { // from class: io.github.lazyimmortal.sesame.model.task.antOcean.AntOcean$$ExternalSyntheticLambda1
            @Override // io.github.lazyimmortal.sesame.data.modelFieldExt.SelectModelField.SelectListFunc
            public final List getList() {
                return AlipayAntOceanFishBlackList.getList();
            }
        });
        this.AntOceanFishBlackList = selectModelField3;
        modelFields.addField(selectModelField3);
        BooleanModelField booleanModelField9 = new BooleanModelField("exchangeProject", "海洋摸鱼 | 兑换科学证书", false);
        this.exchangeProject = booleanModelField9;
        modelFields.addField(booleanModelField9);
        return modelFields;
    }

    @Override // io.github.lazyimmortal.sesame.data.task.ModelTask
    public Boolean check() {
        if (TaskCommon.IS_ENERGY_TIME.booleanValue()) {
            Log.forest("任务暂停⏸️神奇海洋:当前为仅收能量时间");
            return false;
        }
        return true;
    }

    @Override // io.github.lazyimmortal.sesame.data.task.ModelTask
    public void run() {
        try {
            if (queryOceanStatus().booleanValue()) {
                if (!Status.hasFlagToday("BlackList::initAntOceanAntiep").booleanValue()) {
                    initAntOceanAntiepTaskListMap(this.AutoAntOceanAntiepTaskList.getValue().booleanValue(), this.queryTaskList.getValue().booleanValue(), this.AutoAntOceanFishBlackList.getValue().booleanValue(), this.antfishAutoTask.getValue().booleanValue());
                    Status.flagToday("BlackList::initAntOceanAntiep");
                }
                queryHomePage();
                if (this.queryTaskList.getValue().booleanValue()) {
                    queryTaskList();
                }
                if (this.cleanOceanType.getValue().intValue() != 0) {
                    queryUserRanking();
                }
                if (this.exchangeUniversalPiece.getValue().booleanValue()) {
                    exchangeUniversalPiece();
                }
                if (this.useUniversalPiece.getValue().booleanValue()) {
                    useUniversalPiece();
                }
                openWAIT_FOR_UNLOCK();
                if (this.replica.getValue().booleanValue()) {
                    queryReplicaHome();
                }
                autocleanOcean(UserIdMap.getCurrentUid());
                if (this.antfishEnable.getValue().booleanValue()) {
                    antfishRun();
                }
            }
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "AntOcean.start.run err:");
            Log.printStackTrace(str, th);
        }
    }

    private Boolean queryOceanStatus() {
        try {
            JSONObject jSONObject = new JSONObject(AntOceanRpcCall.queryOceanStatus());
            if (MessageUtil.checkResultCode(TAG, jSONObject).booleanValue()) {
                if (!jSONObject.getBoolean("opened")) {
                    getEnableField().setValue(false);
                    Log.record("请先开启神奇海洋，并完成引导教程");
                    return false;
                }
                return true;
            }
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "queryOceanStatus err:");
            Log.printStackTrace(str, th);
        }
        return false;
    }

    public static void initAntOceanAntiepTaskListMap(boolean z, boolean z2, boolean z3, boolean z4) {
        JSONArray jSONArrayOptJSONArray;
        SelectModelField selectModelField;
        JSONObject jSONObjectOptJSONObject;
        try {
            AntOceanAntiepTaskListMap.load();
            HashSet<String> hashSet = new HashSet();
            hashSet.add("随机任务：玩一玩得拼图");
            HashSet<String> hashSet2 = new HashSet();
            Iterator it = hashSet.iterator();
            while (it.hasNext()) {
                AntOceanAntiepTaskListMap.add((String) it.next(), "");
            }
            if (z2) {
                JSONObject jSONObject = new JSONObject(AntOceanRpcCall.queryTaskList());
                if (MessageUtil.checkResultCode(TAG, jSONObject).booleanValue()) {
                    JSONArray jSONArray = jSONObject.getJSONArray("antOceanTaskVOList");
                    for (int i = 0; i < jSONArray.length(); i++) {
                        JSONObject jSONObject2 = new JSONObject(jSONArray.getJSONObject(i).getString("bizInfo"));
                        AntOceanAntiepTaskListMap.add(jSONObject2.optString("taskTitle"), TaskIconUtil.extractIcon(jSONObject2));
                    }
                }
                AntOceanAntiepTaskListMap.save();
                Log.record("同步任务🉑海洋普通任务列表");
                if (z) {
                    SelectModelField selectModelField2 = (SelectModelField) ConfigV2.INSTANCE.getModelFieldsMap().get("AntOcean").get("AntOceanAntiepTaskList");
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
                        Log.record("黑白名单🈲海洋普通任务自动设置: " + selectModelField2.getValue());
                    } else {
                        Log.record("神奇海洋普通任务黑白名单设置失败");
                    }
                }
            }
            AntOceanFishBlackListMap.load();
            HashSet<String> hashSet3 = new HashSet();
            hashSet3.add("玩一玩向僵尸开炮");
            HashSet<String> hashSet4 = new HashSet();
            Iterator it2 = hashSet3.iterator();
            while (it2.hasNext()) {
                AntOceanFishBlackListMap.add((String) it2.next(), "");
            }
            if (z4) {
                JSONObject jSONObject3 = new JSONObject(AntOceanRpcCall.antfishListTask());
                if (MessageUtil.checkResultCode(TAG, jSONObject3).booleanValue() && (jSONArrayOptJSONArray = jSONObject3.optJSONArray("taskInfoList")) != null && jSONArrayOptJSONArray.length() != 0) {
                    for (int i2 = 0; i2 < jSONArrayOptJSONArray.length(); i2++) {
                        JSONObject jSONObjectOptJSONObject2 = jSONArrayOptJSONArray.optJSONObject(i2);
                        if (jSONObjectOptJSONObject2 != null && (jSONObjectOptJSONObject = jSONObjectOptJSONObject2.optJSONObject("taskBaseInfo")) != null) {
                            JSONObject jSONObject4 = new JSONObject(jSONObjectOptJSONObject.optString("bizInfo", "{}"));
                            AntOceanFishBlackListMap.add(jSONObject4.getString("taskTitle"), TaskIconUtil.extractIcon(jSONObject4));
                        }
                    }
                    AntOceanFishBlackListMap.save();
                    Log.record("同步任务🉑海洋去摸鱼任务列表");
                    if (!z3 || (selectModelField = (SelectModelField) ConfigV2.INSTANCE.getModelFieldsMap().get("AntOcean").get("AntOceanFishBlackList")) == null) {
                        return;
                    }
                    Set<String> value2 = selectModelField.getValue();
                    if (value2 != null) {
                        for (String str3 : hashSet3) {
                            if (!value2.contains(str3)) {
                                selectModelField.add(str3, 0);
                            }
                        }
                        for (String str4 : hashSet4) {
                            if (value2.contains(str4)) {
                                value2.remove(str4);
                            }
                        }
                    }
                    if (ConfigV2.save(UserIdMap.getCurrentUid(), false).booleanValue()) {
                        Log.record("黑白名单🈲海洋去摸鱼任务自动设置: " + selectModelField.getValue());
                        return;
                    }
                    Log.record("海洋去摸鱼任务黑白名单设置失败");
                }
            }
        } catch (Throwable th) {
            String str5 = TAG;
            Log.i(str5, "initAntOceanAntiepTaskListMap err:");
            Log.printStackTrace(str5, th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void queryHomePage() {
        try {
            JSONObject jSONObject = new JSONObject(AntOceanRpcCall.queryHomePage());
            if (MessageUtil.checkResultCode(TAG, jSONObject).booleanValue()) {
                if (jSONObject.has("bubbleVOList")) {
                    collectEnergy(jSONObject.getJSONArray("bubbleVOList"));
                }
                JSONObject jSONObject2 = jSONObject.getJSONObject("userInfoVO");
                cleanOcean(jSONObject2.getString("userId"), jSONObject2.optInt("rubbishNumber", 0));
                JSONObject jSONObjectOptJSONObject = jSONObject2.optJSONObject("ipVO");
                if (jSONObjectOptJSONObject != null && jSONObjectOptJSONObject.optInt("surprisePieceNum", 0) > 0) {
                    ipOpenSurprise();
                }
                queryMiscInfo();
            }
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "queryHomePage err:");
            Log.printStackTrace(str, th);
        }
    }

    private static void collectEnergy(JSONArray jSONArray) {
        JSONArray jSONArrayOptJSONArray;
        for (int i = 0; i < jSONArray.length(); i++) {
            try {
                JSONObject jSONObject = jSONArray.getJSONObject(i);
                if ("ocean".equals(jSONObject.getString("channel")) && "AVAILABLE".equals(jSONObject.getString("collectStatus"))) {
                    long j = jSONObject.getLong("id");
                    String string = jSONObject.getString("userId");
                    JSONObject jSONObject2 = new JSONObject(AntForestRpcCall.collectEnergy(null, string, Long.valueOf(j)));
                    if (MessageUtil.checkResultCode(TAG, jSONObject2).booleanValue() && (jSONArrayOptJSONArray = jSONObject2.optJSONArray("bubbles")) != null) {
                        for (int i2 = 0; i2 < jSONArrayOptJSONArray.length(); i2++) {
                            JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i2);
                            if (jSONObjectOptJSONObject != null) {
                                int i3 = jSONObjectOptJSONObject.getInt("collectedEnergy");
                                Log.forest("神奇海洋🐳收取[" + UserIdMap.getMaskName(string) + "]的海洋能量#" + i3 + "g");
                                Statistics.addData(Statistics.DataType.COLLECTED, i3);
                            }
                        }
                        Statistics.save();
                    }
                }
            } catch (Throwable th) {
                String str = TAG;
                Log.i(str, "collectEnergy err:");
                Log.printStackTrace(str, th);
                return;
            }
        }
    }

    private static void cleanOcean(String str, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            try {
                JSONObject jSONObject = new JSONObject(AntOceanRpcCall.cleanOcean(str));
                if (MessageUtil.checkResultCode(TAG, jSONObject).booleanValue()) {
                    checkReward(jSONObject.getJSONArray("cleanRewardVOS"));
                    Log.forest("神奇海洋🐳清理[" + UserIdMap.getMaskName(str) + "]海域");
                }
            } catch (Throwable th) {
                String str2 = TAG;
                Log.i(str2, "cleanOcean err:");
                Log.printStackTrace(str2, th);
                return;
            }
        }
    }

    private void autocleanOcean(String str) {
        try {
            JSONObject jSONObject = new JSONObject(AntOceanRpcCall.queryHomePage());
            if (MessageUtil.checkResultCode(TAG, jSONObject).booleanValue()) {
                Long lValueOf = Long.valueOf(jSONObject.getJSONObject("userInfoVO").getLong("canCleanLaterTime"));
                addChildTask(new ModelTask.ChildModelTask(str, "Ocean", new Runnable() { // from class: io.github.lazyimmortal.sesame.model.task.antOcean.AntOcean$$ExternalSyntheticLambda2
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.queryHomePage();
                    }
                }, Long.valueOf(System.currentTimeMillis() + TimeUnit.SECONDS.toMillis(10L))));
                String str2 = "Ocean|" + str;
                if (hasChildTask(str2).booleanValue()) {
                    return;
                }
                addChildTask(new ModelTask.ChildModelTask(str2, "Ocean", new Runnable() { // from class: io.github.lazyimmortal.sesame.model.task.antOcean.AntOcean$$ExternalSyntheticLambda2
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.queryHomePage();
                    }
                }, lValueOf));
                Log.record("神奇海洋🐳蹲添加蹲点在[" + TimeUtil.getCommonDate(lValueOf) + "]执行清理海洋#[" + UserIdMap.getShowName(UserIdMap.getCurrentUid()) + "]");
            }
        } catch (Throwable th) {
            String str3 = TAG;
            Log.i(str3, "queryHomePage err:");
            Log.printStackTrace(str3, th);
        }
    }

    private static void ipOpenSurprise() {
        try {
            JSONObject jSONObject = new JSONObject(AntOceanRpcCall.ipOpenSurprise());
            if (MessageUtil.checkResultCode(TAG, jSONObject).booleanValue()) {
                checkReward(jSONObject.getJSONArray("surpriseRewardVOS"));
            }
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "ipOpenSurprise err:");
            Log.printStackTrace(str, th);
        }
    }

    private static void combineFish(String str) {
        try {
            JSONObject jSONObject = new JSONObject(AntOceanRpcCall.combineFish(str));
            if (MessageUtil.checkResultCode(TAG, jSONObject).booleanValue()) {
                Log.forest("神奇海洋🐳迎回[" + jSONObject.getJSONObject("fishDetailVO").getString("name") + "]");
            }
            createSeaAreaExtraCollect();
        } catch (Throwable th) {
            String str2 = TAG;
            Log.i(str2, "combineFish err:");
            Log.printStackTrace(str2, th);
        }
    }

    private static void checkReward(JSONArray jSONArray) {
        for (int i = 0; i < jSONArray.length(); i++) {
            try {
                JSONObject jSONObject = jSONArray.getJSONObject(i);
                String string = jSONObject.getString("name");
                JSONArray jSONArray2 = jSONObject.getJSONArray("attachRewardBOList");
                if (jSONArray2.length() > 0) {
                    Log.forest("神奇海洋🐳获得[" + string + "]拼图");
                    int i2 = 0;
                    while (true) {
                        if (i2 < jSONArray2.length()) {
                            if (jSONArray2.getJSONObject(i2).optInt("count", 0) == 0) {
                                break;
                            } else {
                                i2++;
                            }
                        } else {
                            if (!jSONObject.optBoolean("unlock", false)) {
                                break;
                            }
                            combineFish(jSONObject.getString("id"));
                            break;
                        }
                    }
                }
            } catch (Throwable th) {
                String str = TAG;
                Log.i(str, "checkReward err:");
                Log.printStackTrace(str, th);
                return;
            }
        }
    }

    private static void queryReplicaHome() {
        try {
            JSONObject jSONObject = new JSONObject(AntOceanRpcCall.queryReplicaHome());
            if (MessageUtil.checkResultCode(TAG, jSONObject).booleanValue()) {
                if (jSONObject.has("userReplicaAssetVO")) {
                    collectReplicaAsset(jSONObject.getJSONObject("userReplicaAssetVO").getInt("canCollectAssetNum"));
                }
                if (jSONObject.has("userCurrentPhaseVO")) {
                    JSONObject jSONObject2 = jSONObject.getJSONObject("userCurrentPhaseVO");
                    String string = jSONObject2.getString("phaseCode");
                    String string2 = jSONObject.getJSONObject("userReplicaInfoVO").getString("code");
                    if ("COMPLETED".equals(jSONObject2.getString("phaseStatus"))) {
                        unLockReplicaPhase(string2, string);
                    }
                }
                queryReplicaTaskList();
            }
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "queryReplicaHome err:");
            Log.printStackTrace(str, th);
        }
    }

    private static void collectReplicaAsset(int i) {
        for (int i2 = 0; i2 < i; i2++) {
            try {
                if (MessageUtil.checkResultCode(TAG, new JSONObject(AntOceanRpcCall.collectReplicaAsset())).booleanValue()) {
                    Log.forest("神奇海洋🐳[学习海洋科普知识]#获得[潘多拉能量*1]");
                }
            } catch (Throwable th) {
                String str = TAG;
                Log.i(str, "collectReplicaAsset err:");
                Log.printStackTrace(str, th);
                return;
            }
        }
    }

    private static void unLockReplicaPhase(String str, String str2) {
        try {
            JSONObject jSONObject = new JSONObject(AntOceanRpcCall.unLockReplicaPhase(str, str2));
            if (MessageUtil.checkResultCode(TAG, jSONObject).booleanValue()) {
                Log.forest("神奇海洋🐳迎回[" + jSONObject.getJSONObject("currentPhaseInfo").getJSONObject("extInfo").getString("name") + "]");
            }
        } catch (Throwable th) {
            String str3 = TAG;
            Log.i(str3, "unLockReplicaPhase err:");
            Log.printStackTrace(str3, th);
        }
    }

    private static void queryReplicaTaskList() {
        try {
            JSONObject jSONObject = new JSONObject(AntOceanRpcCall.queryReplicaTaskList());
            if (MessageUtil.checkResultCode(TAG, jSONObject).booleanValue()) {
                JSONArray jSONArray = jSONObject.getJSONArray("antOceanTaskVOList");
                for (int i = 0; i < jSONArray.length(); i++) {
                    JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                    if (AntFarm.TaskStatus.FINISHED.name().equals(jSONObject2.getString("taskStatus"))) {
                        receiveReplicaTaskAward(jSONObject2.getString("taskType"), new JSONObject(jSONObject2.getString("bizInfo")).getString("taskTitle"));
                    }
                }
            }
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "queryReplicaTaskList err:");
            Log.printStackTrace(str, th);
        }
    }

    private static void receiveReplicaTaskAward(String str, String str2) {
        try {
            JSONObject jSONObject = new JSONObject(AntOceanRpcCall.receiveReplicaTaskAward(str));
            if (MessageUtil.checkSuccess(TAG, jSONObject).booleanValue()) {
                Log.forest("神奇海洋🐳领取[" + str2 + "]奖励#获得[潘多拉能量*" + jSONObject.getInt("incAwardCount") + "]");
            }
        } catch (Throwable th) {
            String str3 = TAG;
            Log.i(str3, "receiveReplicaTaskAward err:");
            Log.printStackTrace(str3, th);
        }
    }

    private static void queryMiscInfo() {
        try {
            JSONObject jSONObject = new JSONObject(AntOceanRpcCall.queryMiscInfo());
            if (MessageUtil.checkResultCode(TAG, jSONObject).booleanValue()) {
                JSONObject jSONObject2 = jSONObject.getJSONObject("miscHandlerVOMap").getJSONObject("HOME_TIPS_REFRESH");
                if (jSONObject2.optBoolean("fishCanBeCombined") || jSONObject2.optBoolean("canBeRepaired")) {
                    querySeaAreaDetailList();
                }
                switchOceanChapter();
            }
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "queryMiscInfo err:");
            Log.printStackTrace(str, th);
        }
    }

    private static void createSeaAreaExtraCollect() {
        try {
            JSONObject jSONObject = new JSONObject(AntOceanRpcCall.querySeaAreaDetailList());
            String str = TAG;
            if (MessageUtil.checkResultCode(str, jSONObject).booleanValue() && jSONObject.optBoolean("awardSeaAreaCanCreateExtraCollect", false)) {
                JSONObject jSONObject2 = new JSONObject(AntOceanRpcCall.createSeaAreaExtraCollect());
                if (MessageUtil.checkResultCode(str, jSONObject2).booleanValue() && jSONObject2.has("seaAreaExtraCollectVO")) {
                    Log.forest("神奇海洋🐳开启了神秘海域#[" + UserIdMap.getShowName(UserIdMap.getCurrentUid()) + "]");
                }
            }
        } catch (Throwable th) {
            String str2 = TAG;
            Log.i(str2, "createSeaAreaExtraCollect err:");
            Log.printStackTrace(str2, th);
        }
    }

    private static void querySeaAreaDetailList() {
        try {
            JSONObject jSONObject = new JSONObject(AntOceanRpcCall.querySeaAreaDetailList());
            String str = TAG;
            if (MessageUtil.checkResultCode(str, jSONObject).booleanValue()) {
                if (jSONObject.optBoolean("awardSeaAreaCanCreateExtraCollect", false)) {
                    JSONObject jSONObject2 = new JSONObject(AntOceanRpcCall.createSeaAreaExtraCollect());
                    if (MessageUtil.checkResultCode(str, jSONObject2).booleanValue() && jSONObject2.has("seaAreaExtraCollectVO")) {
                        Log.forest("神奇海洋🐳开启了神秘海域#[" + UserIdMap.getShowName(UserIdMap.getCurrentUid()) + "]");
                    }
                }
                int i = jSONObject.getInt("seaAreaNum");
                int i2 = jSONObject.getInt("fixSeaAreaNum");
                if (jSONObject.getInt("currentSeaAreaIndex") < i2 && i > i2) {
                    queryOceanPropList();
                }
                JSONArray jSONArray = jSONObject.getJSONArray("seaAreaVOs");
                for (int i3 = 0; i3 < jSONArray.length(); i3++) {
                    JSONObject jSONObject3 = jSONArray.getJSONObject(i3);
                    JSONArray jSONArray2 = jSONObject3.getJSONArray("fishVO");
                    for (int i4 = 0; i4 < jSONArray2.length(); i4++) {
                        JSONObject jSONObject4 = jSONArray2.getJSONObject(i4);
                        if (!jSONObject4.getBoolean("unlock") && "COMPLETED".equals(jSONObject4.getString(NotificationCompat.CATEGORY_STATUS))) {
                            combineFish(jSONObject4.getString("id"));
                        }
                    }
                    if (jSONObject3.has("seaAreaExtraCollectVO")) {
                        JSONObject jSONObject5 = jSONObject3.getJSONObject("seaAreaExtraCollectVO");
                        if (!jSONObject5.optString(NotificationCompat.CATEGORY_STATUS).equals("FINISHED")) {
                            JSONArray jSONArray3 = jSONObject5.getJSONArray("fishVO");
                            for (int i5 = 0; i5 < jSONArray3.length(); i5++) {
                                JSONObject jSONObject6 = jSONArray3.getJSONObject(i5);
                                if (!jSONObject6.getBoolean("unlock") && "COMPLETED".equals(jSONObject6.getString(NotificationCompat.CATEGORY_STATUS))) {
                                    combineFish(jSONObject6.getString("id"));
                                }
                            }
                        }
                    }
                    if (jSONArray.getJSONObject(jSONArray.length() - 1).optString(NotificationCompat.CATEGORY_STATUS).equals("WAIT_FOR_UNLOCK")) {
                        AntOceanRpcCall.repairSeaArea();
                    }
                }
            }
        } catch (Throwable th) {
            String str2 = TAG;
            Log.i(str2, "querySeaAreaDetailList err:");
            Log.printStackTrace(str2, th);
        }
    }

    private static void openWAIT_FOR_UNLOCK() {
        try {
            JSONObject jSONObject = new JSONObject(AntOceanRpcCall.querySeaAreaDetailList());
            String str = TAG;
            if (MessageUtil.checkResultCode(str, jSONObject).booleanValue()) {
                if (jSONObject.optBoolean("awardSeaAreaCanCreateExtraCollect", false)) {
                    String strRequestString = ApplicationHook.requestString("alipay.antocean.ocean.h5.createSeaAreaExtraCollect", "[{\"source\":\"chInfo_ch_appcenter__chsub_9patch\",\"uniqueId\":\"" + AntOceanRpcCall.getUniqueId() + "\"}]");
                    if (strRequestString == null) {
                        strRequestString = "{}";
                    }
                    JSONObject jSONObject2 = new JSONObject(strRequestString);
                    if (MessageUtil.checkResultCode(str, jSONObject2).booleanValue() && jSONObject2.has("seaAreaExtraCollectVO")) {
                        Log.forest("神奇海洋🐳开启了神秘海域#[" + UserIdMap.getShowName(UserIdMap.getCurrentUid()) + "]");
                    }
                }
                JSONArray jSONArray = jSONObject.getJSONArray("seaAreaVOs");
                if (jSONArray.getJSONObject(jSONArray.length() - 1).optString(NotificationCompat.CATEGORY_STATUS).equals("WAIT_FOR_UNLOCK")) {
                    AntOceanRpcCall.repairSeaArea();
                }
            }
        } catch (Throwable th) {
            String str2 = TAG;
            Log.i(str2, "querySeaAreaDetailList err:");
            Log.printStackTrace(str2, th);
        }
    }

    private static void queryOceanPropList() {
        try {
            if (MessageUtil.checkResultCode(TAG, new JSONObject(AntOceanRpcCall.queryOceanPropList())).booleanValue()) {
                AntOceanRpcCall.repairSeaArea();
            }
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "queryOceanPropList err:");
            Log.printStackTrace(str, th);
        }
    }

    private static void switchOceanChapter() {
        try {
            JSONObject jSONObject = new JSONObject(AntOceanRpcCall.queryOceanChapterList());
            if (MessageUtil.checkResultCode(TAG, jSONObject).booleanValue()) {
                String string = jSONObject.getString("currentChapterCode");
                JSONArray jSONArray = jSONObject.getJSONArray("userChapterDetailVOList");
                String string2 = "";
                String string3 = "";
                boolean z = false;
                for (int i = 0; i < jSONArray.length(); i++) {
                    JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                    int i2 = jSONObject2.getInt("repairedSeaAreaNum");
                    int i3 = jSONObject2.getInt("seaAreaNum");
                    if (jSONObject2.getString("chapterCode").equals(string)) {
                        z = i2 >= i3;
                    } else if (i2 < i3 && jSONObject2.getBoolean("chapterOpen")) {
                        string3 = jSONObject2.getString("chapterName");
                        string2 = jSONObject2.getString("chapterCode");
                    }
                }
                if (!z || StringUtil.isEmpty(string2)) {
                    return;
                }
                if (MessageUtil.checkResultCode(TAG, new JSONObject(AntOceanRpcCall.switchOceanChapter(string2))).booleanValue()) {
                    Log.forest("神奇海洋🐳切换到[" + string3 + "]系列");
                }
            }
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "switchOceanChapter err:");
            Log.printStackTrace(str, th);
        }
    }

    private void queryUserRanking() {
        try {
            JSONObject jSONObject = new JSONObject(AntOceanRpcCall.queryUserRanking());
            if (MessageUtil.checkResultCode(TAG, jSONObject).booleanValue() && !Status.hasFlagToday("Ocean::HELP_CLEAN_ALL_FRIEND_LIMIT").booleanValue()) {
                JSONArray jSONArray = jSONObject.getJSONArray("fillFlagVOList");
                for (int i = 0; i < jSONArray.length(); i++) {
                    JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                    if (this.cleanOceanType.getValue().intValue() != 0) {
                        cleanFriendOcean(jSONObject2);
                    }
                }
                ArrayList arrayList = new ArrayList();
                JSONArray jSONArray2 = jSONObject.getJSONArray("allRankingList");
                int i2 = 20;
                while (i2 < jSONArray2.length()) {
                    String strOptString = jSONArray2.getJSONObject(i2).optString("userId", "");
                    if (strOptString.equals(UserIdMap.getCurrentUid()) || strOptString.isEmpty()) {
                        i2++;
                    } else {
                        arrayList.add(strOptString);
                        i2++;
                        if (i2 % 20 == 0) {
                            JSONObject jSONObject3 = new JSONObject(AntOceanRpcCall.fillUserFlag(new JSONArray((Collection) arrayList).toString()));
                            if (!MessageUtil.checkResultCode(TAG, jSONObject3).booleanValue()) {
                                return;
                            }
                            JSONArray jSONArray3 = jSONObject3.getJSONArray("fillFlagVOList");
                            for (int i3 = 0; i3 < jSONArray3.length(); i3++) {
                                JSONObject jSONObject4 = jSONArray3.getJSONObject(i3);
                                if (this.cleanOceanType.getValue().intValue() != 0) {
                                    cleanFriendOcean(jSONObject4);
                                    if (Status.hasFlagToday("Ocean::HELP_CLEAN_ALL_FRIEND_LIMIT").booleanValue()) {
                                        return;
                                    }
                                }
                            }
                            arrayList.clear();
                        } else {
                            continue;
                        }
                    }
                }
                if (arrayList.isEmpty()) {
                    return;
                }
                JSONObject jSONObject5 = new JSONObject(AntOceanRpcCall.fillUserFlag(new JSONArray((Collection) arrayList).toString()));
                if (MessageUtil.checkResultCode(TAG, jSONObject5).booleanValue()) {
                    JSONArray jSONArray4 = jSONObject5.getJSONArray("fillFlagVOList");
                    for (int i4 = 0; i4 < jSONArray4.length(); i4++) {
                        JSONObject jSONObject6 = jSONArray4.getJSONObject(i4);
                        if (this.cleanOceanType.getValue().intValue() != 0) {
                            cleanFriendOcean(jSONObject6);
                            if (Status.hasFlagToday("Ocean::HELP_CLEAN_ALL_FRIEND_LIMIT").booleanValue()) {
                                return;
                            }
                        }
                    }
                }
            }
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "queryUserRanking err:");
            Log.printStackTrace(str, th);
        }
    }

    private void cleanFriendOcean(JSONObject jSONObject) {
        if (jSONObject.optBoolean("canClean")) {
            try {
                String string = jSONObject.getString("userId");
                boolean zContains = this.cleanOceanList.getValue().contains(string);
                if (this.cleanOceanType.getValue().intValue() != 1) {
                    zContains = !zContains;
                }
                if (zContains && cleanFriendOcean(string).booleanValue()) {
                    TimeUtil.sleep(1000L);
                }
            } catch (Throwable th) {
                String str = TAG;
                Log.i(str, "cleanFriendOcean err:");
                Log.printStackTrace(str, th);
            }
        }
    }

    private Boolean cleanFriendOcean(String str) {
        try {
            JSONObject jSONObject = new JSONObject(AntOceanRpcCall.queryFriendPage(str));
            String str2 = TAG;
            if (MessageUtil.checkResultCode(str2, jSONObject).booleanValue() && !Status.hasFlagToday("Ocean::HELP_CLEAN_ALL_FRIEND_LIMIT").booleanValue()) {
                JSONObject jSONObject2 = new JSONObject(AntOceanRpcCall.cleanFriendOcean(str));
                if (jSONObject2.has("resultDesc")) {
                    if (jSONObject2.getString("resultDesc").contains("上限")) {
                        Log.record("神奇海洋🐳" + jSONObject2.getString("resultDesc"));
                        Status.flagToday("Ocean::HELP_CLEAN_ALL_FRIEND_LIMIT");
                    }
                    return false;
                }
                if (MessageUtil.checkResultCode(str2, jSONObject2).booleanValue()) {
                    Log.forest("神奇海洋🐳帮助[" + UserIdMap.getMaskName(str) + "]清理海域");
                    checkReward(jSONObject2.getJSONArray("cleanRewardVOS"));
                    return true;
                }
                return false;
            }
            return false;
        } catch (Throwable th) {
            String str3 = TAG;
            Log.i(str3, "cleanFriendOcean err:");
            Log.printStackTrace(str3, th);
        }
    }

    private static boolean isTargetTask(String str) {
        return "DAOLIU_TAOJINBI".equals(str) || "DAOLIU_NNYY".equals(str) || "ANTOCEAN_TASK#DAOLIU_GUANGHUABEIBANGHAI".equals(str) || "BUSINESS_LIGHTS01".equals(str) || "DAOLIU_ELEMEGUOYUAN".equals(str) || "ZHUANHUA_NONGCHANGYX".equals(str) || "ZHUANHUA_HUIYUN_OZB".equals(str);
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0076 A[Catch: all -> 0x009a, TryCatch #0 {all -> 0x009a, blocks: (B:2:0x0000, B:5:0x0016, B:6:0x001e, B:8:0x0024, B:11:0x0058, B:13:0x0070, B:16:0x0076, B:18:0x007d, B:21:0x008c), top: B:27:0x0000 }] */
    private void queryTaskList() {
        int iRightsTimesToDo;
        int i;
        try {
            JSONObject jSONObject = new JSONObject(AntOceanRpcCall.queryTaskList());
            if (MessageUtil.checkResultCode(TAG, jSONObject).booleanValue()) {
                JSONArray jSONArray = jSONObject.getJSONArray("antOceanTaskVOList");
                for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                    JSONObject jSONObject2 = jSONArray.getJSONObject(i2);
                    String strOptString = jSONObject2.optString("taskStatus");
                    String string = jSONObject2.getString("sceneCode");
                    String string2 = jSONObject2.getString("taskType");
                    String strOptString2 = new JSONObject(jSONObject2.getString("bizInfo")).optString("taskTitle");
                    if (!AntFarm.TaskStatus.RECEIVED.name().equals(strOptString)) {
                        int iOptInt = jSONObject2.optInt("rightsTimes", 0);
                        int iOptInt2 = jSONObject2.optInt("rightsTimesLimit", 0);
                        if (!AntFarm.TaskStatus.TODO.name().equals(strOptString)) {
                            receiveTaskAward(string, string2, strOptString2);
                            if (iOptInt2 > iOptInt) {
                                iRightsTimesToDo = TaskAlternative.rightsTimesToDo(iOptInt, iOptInt2);
                                for (i = 0; i < iRightsTimesToDo && finishOceanTask(jSONObject2, TaskAlternative.rightsProgressText(iOptInt, iOptInt2, i)).booleanValue(); i++) {
                                    TimeUtil.sleep(500L);
                                    receiveTaskAward(string, string2, strOptString2);
                                }
                            }
                        } else {
                            iRightsTimesToDo = TaskAlternative.rightsTimesToDo(iOptInt, iOptInt2);
                            while (i < iRightsTimesToDo) {
                                TimeUtil.sleep(500L);
                                receiveTaskAward(string, string2, strOptString2);
                            }
                        }
                    }
                }
            }
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "queryTaskList err:");
            Log.printStackTrace(str, th);
        }
    }

    private static void receiveTaskAward(String str, String str2, String str3) {
        try {
            JSONObject jSONObject = new JSONObject(AntOceanRpcCall.receiveTaskAward(str, str2));
            TimeUtil.sleep(500L);
            if (MessageUtil.checkSuccess(TAG, jSONObject).booleanValue()) {
                Log.forest("海洋任务🎖️领取[" + str3 + "]奖励#获得[" + jSONObject.optString("incAwardCount") + "块拼图]");
            }
        } catch (Throwable th) {
            String str4 = TAG;
            Log.i(str4, "receiveTaskAward err:");
            Log.printStackTrace(str4, th);
        }
    }

    private Boolean finishOceanTask(JSONObject jSONObject, String str) {
        try {
            if (jSONObject.has("taskProgress")) {
                return false;
            }
            JSONObject jSONObject2 = new JSONObject(jSONObject.getString("bizInfo"));
            String strOptString = jSONObject2.optString("taskTitle");
            if (this.AntOceanAntiepTaskList.getValue().contains(strOptString)) {
                TaskAlternative.handleGameTask(new TaskAlternative.GameTask("AntOceanAntiepTaskList", strOptString, jSONObject2.optString("desc", jSONObject2.optString("taskDesc")), TaskAlternative.firstNonEmpty(jSONObject2.optString("taskJumpUrl"), jSONObject2.optString("targetUrl")), jSONObject.optString("taskStatus", "TODO")).bizKey(jSONObject.optString("taskType")).rights(jSONObject.optInt("rightsTimes", 0), jSONObject.optInt("rightsTimesLimit", 0)).taskPlayType(jSONObject.optString("taskPlayType", jSONObject.optString("taskProdPlayType"))).taskMode(jSONObject.optString("taskMode")).taskSceneCode(jSONObject.optString("sceneCode")).scene(jSONObject.optString("sceneCode"), "ANTFOCEAN").version("20241203"));
                return false;
            }
            if (strOptString.equals("每日任务：答题学海洋知识")) {
                if (answerQuestion().booleanValue()) {
                    Log.forest("海洋任务🧾完成[" + strOptString + "]" + str);
                    return true;
                }
            } else if (strOptString.startsWith("随机任务：") || strOptString.startsWith("绿色任务：")) {
                JSONObject jSONObject3 = new JSONObject(AntOceanRpcCall.finishTask(jSONObject.getString("sceneCode"), jSONObject.getString("taskType")));
                MessageUtil.checkResultCodeAndMarkTaskBlackList("AntOceanAntiepTaskList", strOptString, jSONObject3);
                if (MessageUtil.checkSuccess(TAG, jSONObject3).booleanValue()) {
                    Log.forest("海洋任务🧾完成[" + strOptString + "]" + str);
                    return true;
                }
            }
            return false;
        } catch (Throwable th) {
            String str2 = TAG;
            Log.i(str2, "finishOceanTask err:");
            Log.printStackTrace(str2, th);
        }
    }

    private static Boolean answerQuestion() {
        try {
            JSONObject jSONObject = new JSONObject(AntOceanRpcCall.getQuestion());
            String str = TAG;
            if (!MessageUtil.checkResultCode(str, jSONObject).booleanValue()) {
                return false;
            }
            if (jSONObject.getBoolean("answered")) {
                Log.record("问题已经被回答过，跳过答题流程");
                return false;
            }
            String string = jSONObject.getString("questionId");
            String string2 = jSONObject.getJSONArray("options").getString(0);
            TimeUtil.sleep(500L);
            if (MessageUtil.checkResultCode(str, new JSONObject(AntOceanRpcCall.submitAnswer(string2, string))).booleanValue()) {
                Log.record("海洋答题成功");
                return true;
            }
            return false;
        } catch (Throwable th) {
            String str2 = TAG;
            Log.i(str2, "answerQuestion err:");
            Log.printStackTrace(str2, th);
        }
    }

    private static void exchangeUniversalPiece() {
        try {
            JSONObject jSONObject = new JSONObject(AntOceanRpcCall.queryOceanPropList());
            if (MessageUtil.checkResultCode(TAG, jSONObject).booleanValue()) {
                int i = jSONObject.getInt("duplicatePieceNum");
                while (i >= 10) {
                    int iMin = Math.min(i / 10, 50);
                    if (!exchangeUniversalPiece(iMin).booleanValue()) {
                        return;
                    }
                    TimeUtil.sleep(1000L);
                    i -= iMin * 10;
                }
            }
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "exchangeUniversalPiece error:");
            Log.printStackTrace(str, th);
        }
    }

    private static Boolean exchangeUniversalPiece(int i) {
        try {
            JSONObject jSONObject = new JSONObject(AntOceanRpcCall.exchangeUniversalPiece(i));
            if (MessageUtil.checkResultCode(TAG, jSONObject).booleanValue()) {
                String string = jSONObject.getString("duplicatePieceNum");
                Log.forest("神奇海洋🐳制作[万能拼图*" + jSONObject.getString("exchangeNum") + "]#剩余[重复拼图*" + string + "]");
                return true;
            }
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "exchangeUniversalPiece error:");
            Log.printStackTrace(str, th);
        }
        return false;
    }

    private static void useUniversalPiece() {
        try {
            JSONObject jSONObject = new JSONObject(AntOceanRpcCall.queryOceanPropList("UNIVERSAL_PIECE"));
            if (MessageUtil.checkResultCode(TAG, jSONObject).booleanValue()) {
                JSONArray jSONArray = jSONObject.getJSONArray("oceanPropVOByTypeList");
                for (int i = 0; i < jSONArray.length(); i++) {
                    int iUseUniversalPiece = jSONArray.getJSONObject(i).getInt("holdsNum");
                    boolean z = true;
                    int i2 = 0;
                    while (iUseUniversalPiece > 0 && z) {
                        i2++;
                        JSONObject jSONObject2 = new JSONObject(AntOceanRpcCall.queryFishList(i2));
                        if (!MessageUtil.checkResultCode(TAG, jSONObject2).booleanValue()) {
                            return;
                        }
                        boolean zOptBoolean = jSONObject2.optBoolean("hasMore");
                        if (!jSONObject2.has("fishVOS")) {
                            return;
                        }
                        iUseUniversalPiece -= useUniversalPiece(jSONObject2.getJSONArray("fishVOS"), iUseUniversalPiece);
                        z = zOptBoolean;
                    }
                }
            }
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "useUniversalPiece error:");
            Log.printStackTrace(str, th);
        }
    }

    private static int useUniversalPiece(JSONArray jSONArray, int i) {
        int iUseUniversalPiece = 0;
        for (int i2 = 0; i2 < jSONArray.length() && iUseUniversalPiece < i; i2++) {
            try {
                JSONObject jSONObject = jSONArray.getJSONObject(i2);
                if (jSONObject.has("pieces")) {
                    iUseUniversalPiece += useUniversalPiece(jSONObject, i - iUseUniversalPiece);
                }
            } catch (Throwable th) {
                String str = TAG;
                Log.i(str, "useUniversalPiece error:");
                Log.printStackTrace(str, th);
            }
        }
        return iUseUniversalPiece;
    }

    private static int useUniversalPiece(JSONObject jSONObject, int i) {
        JSONArray jSONArray = new JSONArray();
        try {
            int i2 = jSONObject.getInt("order");
            String string = jSONObject.getString("name");
            JSONArray jSONArray2 = jSONObject.getJSONArray("pieces");
            for (int i3 = 0; i3 < jSONArray2.length(); i3++) {
                JSONObject jSONObject2 = jSONArray2.getJSONObject(i3);
                if (jSONObject2.getInt("num") <= 1) {
                    JSONObject jSONObject3 = new JSONObject();
                    jSONObject3.put("assets", i2);
                    jSONObject3.put("assetsNum", 1);
                    jSONObject3.put("attachAssets", Integer.parseInt(jSONObject2.getString("id")));
                    jSONObject3.put("propCode", "UNIVERSAL_PIECE");
                    jSONArray.put(jSONObject3);
                    if (jSONArray.length() == i) {
                        break;
                    }
                }
            }
            if (useUniversalPiece(jSONArray, string, i - jSONArray.length()).booleanValue()) {
                TimeUtil.sleep(1000L);
                return jSONArray.length();
            }
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "useUniversalPiece error:");
            Log.printStackTrace(str, th);
        }
        return 0;
    }

    private static Boolean useUniversalPiece(JSONArray jSONArray, String str, int i) {
        try {
            if (jSONArray.length() == 0) {
                return false;
            }
            if (MessageUtil.checkResultCode(TAG, new JSONObject(AntOceanRpcCall.useUniversalPiece(jSONArray))).booleanValue()) {
                Log.forest("神奇海洋🐳使用[万能拼图*" + jSONArray.length() + "]迎回[" + str + "]#剩余[万能拼图*" + i + "]");
                return true;
            }
            return false;
        } catch (Throwable th) {
            String str2 = TAG;
            Log.i(str2, "useUniversalPiece error:");
            Log.printStackTrace(str2, th);
        }
    }

    private void antfishRun() {
        try {
            if (antfishQueryStatus()) {
                antfishQueryHomePage();
                if (this.antfishAutoTask.getValue().booleanValue()) {
                    antfishHandleTasks();
                    antfishLikeFish();
                }
                touchfish();
                if (this.exchangeProject.getValue().booleanValue()) {
                    exchangeProject();
                }
            }
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "antfishRun err:");
            Log.printStackTrace(str, th);
        }
    }

    private boolean antfishQueryStatus() {
        try {
            JSONObject jSONObject = new JSONObject(AntOceanRpcCall.antfishStatus());
            if (MessageUtil.checkResultCode(TAG, jSONObject).booleanValue()) {
                String strOptString = jSONObject.optString("fishStatus", "DEFAULT_AI_FISH");
                jSONObject.optInt("level", 0);
                if (!"DEFAULT_AI_FISH".equals(strOptString)) {
                    return true;
                }
                drawFish();
                return true;
            }
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "antfishQueryStatus err:");
            Log.printStackTrace(str, th);
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:37:0x0172 A[Catch: all -> 0x0176, TRY_LEAVE, TryCatch #0 {all -> 0x0176, blocks: (B:3:0x0006, B:5:0x001b, B:8:0x0025, B:10:0x0033, B:13:0x003e, B:15:0x004e, B:17:0x005d, B:20:0x0068, B:22:0x007a, B:24:0x0082, B:26:0x008a, B:28:0x00ac, B:30:0x00bc, B:35:0x00fa, B:37:0x0172), top: B:42:0x0006 }] */
    /* JADX WARN: Code duplicated, block: B:45:? A[RETURN, SYNTHETIC] */
    private void antfishQueryHomePage() {
        String strOptString;
        String strOptString2;
        String strOptString3;
        String strOptString4;
        int i;
        String str;
        String strOptString5;
        int i2;
        int iOptInt;
        try {
            JSONObject jSONObject = new JSONObject(AntOceanRpcCall.antfishHomepage());
            if (MessageUtil.checkResultCode(TAG, jSONObject).booleanValue()) {
                JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("currentSeasonInfo");
                String str2 = "";
                if (jSONObjectOptJSONObject != null) {
                    strOptString2 = jSONObjectOptJSONObject.optString("seasonId", "");
                    JSONObject jSONObjectOptJSONObject2 = jSONObjectOptJSONObject.optJSONObject("extInfo");
                    strOptString = jSONObjectOptJSONObject2 != null ? jSONObjectOptJSONObject2.optString("seasonTitle", "") : "";
                } else {
                    strOptString = "";
                    strOptString2 = strOptString;
                }
                long jOptLong = jSONObject.optLong("energy", 0L);
                JSONObject jSONObjectOptJSONObject3 = jSONObject.optJSONObject("project");
                if (jSONObjectOptJSONObject3 != null) {
                    strOptString4 = jSONObjectOptJSONObject3.optString("projectName", "");
                    strOptString3 = jSONObjectOptJSONObject3.optString("region", "");
                } else {
                    strOptString3 = "";
                    strOptString4 = strOptString3;
                }
                JSONObject jSONObjectOptJSONObject4 = jSONObject.optJSONObject("myFish");
                if (jSONObjectOptJSONObject4 != null) {
                    String strOptString6 = jSONObjectOptJSONObject4.optString("nickName", "");
                    int iOptInt2 = jSONObjectOptJSONObject4.optInt("touchEnergy", 0);
                    JSONObject jSONObjectOptJSONObject5 = jSONObjectOptJSONObject4.optJSONObject("currentLevel");
                    String strOptString7 = jSONObjectOptJSONObject5 != null ? jSONObjectOptJSONObject5.optString("name", "") : "";
                    JSONObject jSONObjectOptJSONObject6 = jSONObjectOptJSONObject4.optJSONObject("interactVO");
                    if (jSONObjectOptJSONObject6 != null) {
                        String str3 = strOptString7;
                        iOptInt = jSONObjectOptJSONObject6.optInt("touchTotal", 0);
                        strOptString5 = jSONObjectOptJSONObject6.optString("fishInteractStatus", "");
                        int iOptInt3 = jSONObjectOptJSONObject6.optInt("remainTouchChance", 0);
                        JSONObject jSONObjectOptJSONObject7 = jSONObjectOptJSONObject6.optJSONObject("owner");
                        if (jSONObjectOptJSONObject7 != null) {
                            String strOptString8 = jSONObjectOptJSONObject7.optString("nickName", "");
                            String strOptString9 = jSONObjectOptJSONObject7.optString("userId", "");
                            if (!strOptString8.isEmpty()) {
                                Log.record("海洋摸鱼🐟当前鱼状态[" + strOptString5 + "]主人[" + strOptString8 + "](" + strOptString9 + ")");
                            }
                        }
                        i = iOptInt3;
                        str = str3;
                        str2 = strOptString6;
                        i2 = iOptInt2;
                    } else {
                        String str4 = strOptString7;
                        i = 0;
                        strOptString5 = "";
                        str = str4;
                        str2 = strOptString6;
                        i2 = iOptInt2;
                    }
                    Log.info("海洋摸鱼🐟[" + UserIdMap.getShowName(UserIdMap.getCurrentUid()) + "]当前赛季[" + strOptString + "](" + strOptString2 + ")项目[" + strOptString4 + "](" + strOptString3 + ")用户[" + str2 + "]鱼状态[" + strOptString5 + "]等级[" + str + "]可摸鱼" + i + "累计摸" + iOptInt + "累计获得能量" + i2 + "g(总" + jOptLong + "g)");
                    if ("CAPTURED".equals(strOptString5)) {
                        rescueFish();
                    }
                }
                i = 0;
                str = "";
                strOptString5 = str;
                i2 = 0;
                iOptInt = 0;
                Log.info("海洋摸鱼🐟[" + UserIdMap.getShowName(UserIdMap.getCurrentUid()) + "]当前赛季[" + strOptString + "](" + strOptString2 + ")项目[" + strOptString4 + "](" + strOptString3 + ")用户[" + str2 + "]鱼状态[" + strOptString5 + "]等级[" + str + "]可摸鱼" + i + "累计摸" + iOptInt + "累计获得能量" + i2 + "g(总" + jOptLong + "g)");
                if ("CAPTURED".equals(strOptString5)) {
                    rescueFish();
                }
            }
        } catch (Throwable th) {
            String str5 = TAG;
            Log.i(str5, "antfishQueryHomePage err:");
            Log.printStackTrace(str5, th);
        }
    }

    private boolean drawFish() {
        try {
            String str = new String[]{"https://mdn.alipayobjects.com/afts/img/JNVwTJAPzqMAAAAAQOAAAAgA9KBtAQJr/original?bz=ai_fish", "https://mdn.alipayobjects.com/afts/img/ZK3FTK8eQ-IAAAAAQIAAAAgA9KBtAQJr/original?bz=ai_fish", "https://mdn.alipayobjects.com/afts/img/Se_RQ7215tsAAAAAQQAAAAgA9KBtAQJr/original?bz=ai_fish", "https://mdn.alipayobjects.com/afts/img/n8yQSYH-lvgAAAAAQGAAAAgA9KBtAQJr/original?bz=ai_fish", "https://mdn.alipayobjects.com/afts/img/_rKKT6IJRWcAAAAAQKAAAAgA9KBtAQJr/original?bz=ai_fish", "https://mdn.alipayobjects.com/afts/img/_zy6QaSffRMAAAAAQGAAAAgA9KBtAQJr/original?bz=ai_fish", "https://mdn.alipayobjects.com/afts/img/3tFWT43StnAAAAAAQHAAAAgA9KBtAQJr/original?bz=ai_fish"}[(int) (Math.random() * ((double) 7))];
            if (!MessageUtil.checkResultCode(TAG, new JSONObject(AntOceanRpcCall.drawFish(str.substring(str.indexOf("img/") + 4, str.indexOf("/original")), str))).booleanValue()) {
                return false;
            }
            Log.forest("开通摸鱼🐟提交画鱼成功");
            Toast.show("开通摸鱼🐟提交画鱼成功");
            return true;
        } catch (Throwable th) {
            String str2 = TAG;
            Log.i(str2, "antfishFinishTask err:");
            Log.printStackTrace(str2, th);
            return false;
        }
    }

    private boolean rescueFish() {
        try {
            JSONObject jSONObject = new JSONObject(AntOceanRpcCall.rescueFish());
            if (MessageUtil.checkResultCode(TAG, jSONObject).booleanValue()) {
                JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("myFish");
                if (jSONObjectOptJSONObject != null) {
                    JSONObject jSONObjectOptJSONObject2 = jSONObjectOptJSONObject.optJSONObject("interactVO");
                    if (jSONObjectOptJSONObject2 != null) {
                        String strOptString = jSONObjectOptJSONObject2.optString("fishInteractStatus", "");
                        Log.forest("摸鱼解救🐟解救成功[" + strOptString + "]可摸鱼次数" + jSONObjectOptJSONObject2.optInt("remainTouchChance", 0) + "累计摸鱼" + jSONObjectOptJSONObject2.optInt("touchTotal", 0));
                        StringBuilder sb = new StringBuilder("摸鱼解救🐟解救成功[");
                        sb.append(strOptString);
                        sb.append("]");
                        Toast.show(sb.toString());
                        return true;
                    }
                    Log.forest("摸鱼任务🐟解救成功");
                    return true;
                }
                Log.forest("摸鱼任务🐟解救成功");
                return true;
            }
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "rescueFish err:");
            Log.printStackTrace(str, th);
        }
        return false;
    }

    private void antfishLikeFish() {
        JSONObject jSONObjectOptJSONObject;
        if (Status.hasFlagToday("Ocean::ANTFISH_LIKE_LIMIT").booleanValue()) {
            return;
        }
        boolean z = false;
        int i = 0;
        int i2 = 0;
        loop0: while (i < 35) {
            try {
                JSONObject jSONObject = new JSONObject(AntOceanRpcCall.antfishQueryAppraiseList());
                if (!MessageUtil.checkResultCode(TAG, jSONObject).booleanValue()) {
                    break;
                }
                if (jSONObject.optInt("appraiseRewardRemainNum", -1) == 0) {
                    Status.flagToday("Ocean::ANTFISH_LIKE_LIMIT");
                    break;
                }
                JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("fishList");
                if (jSONArrayOptJSONArray == null || jSONArrayOptJSONArray.length() == 0) {
                    break;
                    break;
                }
                int i3 = 0;
                boolean z2 = false;
                while (i3 < jSONArrayOptJSONArray.length() && i < 35) {
                    JSONObject jSONObjectOptJSONObject2 = jSONArrayOptJSONArray.optJSONObject(i3);
                    if (jSONObjectOptJSONObject2 != null && (jSONObjectOptJSONObject = jSONObjectOptJSONObject2.optJSONObject("appraiseVO")) != null && jSONObjectOptJSONObject.optBoolean("canAppraise", z)) {
                        String strOptString = jSONObjectOptJSONObject2.optString("imageId", "");
                        String strOptString2 = jSONObjectOptJSONObject2.optString("seasonId", "");
                        String strOptString3 = jSONObjectOptJSONObject.optString("receiveAppraiseUserId", "");
                        if (strOptString3.isEmpty()) {
                            strOptString3 = jSONObjectOptJSONObject2.optString("userId", "");
                        }
                        if (!strOptString.isEmpty() && !strOptString2.isEmpty() && !strOptString3.isEmpty()) {
                            JSONObject jSONObject2 = new JSONObject(AntOceanRpcCall.antfishAppraise(strOptString, strOptString2, strOptString3));
                            if (!MessageUtil.checkResultCode(TAG, jSONObject2).booleanValue()) {
                                Log.forest("海洋摸鱼🐟点赞失败");
                                break loop0;
                            }
                            JSONArray jSONArrayOptJSONArray2 = jSONObject2.optJSONArray("appraiseRewardList");
                            int i4 = 0;
                            for (int i5 = 0; jSONArrayOptJSONArray2 != null && i5 < jSONArrayOptJSONArray2.length(); i5++) {
                                JSONObject jSONObjectOptJSONObject3 = jSONArrayOptJSONArray2.optJSONObject(i5);
                                if (jSONObjectOptJSONObject3 != null) {
                                    JSONObject jSONObjectOptJSONObject4 = jSONObjectOptJSONObject3.optJSONObject("extInfo");
                                    JSONObject jSONObjectOptJSONObject5 = jSONObjectOptJSONObject4 == null ? null : jSONObjectOptJSONObject4.optJSONObject("popup");
                                    if (jSONObjectOptJSONObject5 != null) {
                                        try {
                                            i4 += Integer.parseInt(jSONObjectOptJSONObject5.optString("rightsNums", "0"));
                                        } catch (NumberFormatException unused) {
                                        }
                                    }
                                }
                            }
                            i2 += i4;
                            i++;
                            if (i4 == 0) {
                                Status.flagToday("Ocean::ANTFISH_LIKE_LIMIT");
                                break loop0;
                            } else if (jSONObject2.optInt("appraiseRewardRemainNum", -1) == 0) {
                                Status.flagToday("Ocean::ANTFISH_LIKE_LIMIT");
                                break loop0;
                            } else {
                                TimeUtil.sleep(1000L);
                                z2 = true;
                            }
                        }
                    }
                    i3++;
                    z = false;
                }
                if (!z2) {
                    break;
                } else {
                    z = false;
                }
            } catch (Throwable th) {
                String str = TAG;
                Log.i(str, "antfishLikeFish err:");
                Log.printStackTrace(str, th);
                return;
            }
        }
        if (i > 0 && i2 == 0) {
            Status.flagToday("Ocean::ANTFISH_LIKE_LIMIT");
            Log.record("海洋摸鱼🐟今日点赞已达上限，本轮点赞" + i + "次无奖励");
            return;
        }
        if (i > 0) {
            Log.forest("海洋摸鱼🐟点赞[" + i + "]次共获得" + i2 + "g能量#[" + UserIdMap.getShowName(UserIdMap.getCurrentUid()) + "]");
            return;
        }
        Log.record("海洋摸鱼🐟今日无可点赞次数");
    }

    private void antfishHandleTasks() {
        JSONObject jSONObjectOptJSONObject;
        try {
            JSONObject jSONObject = new JSONObject(AntOceanRpcCall.antfishListTask());
            if (MessageUtil.checkResultCode(TAG, jSONObject).booleanValue()) {
                JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("taskInfoList");
                if (jSONArrayOptJSONArray != null && jSONArrayOptJSONArray.length() != 0) {
                    int i = 0;
                    int i2 = 0;
                    while (i2 < jSONArrayOptJSONArray.length()) {
                        JSONObject jSONObjectOptJSONObject2 = jSONArrayOptJSONArray.optJSONObject(i2);
                        if (jSONObjectOptJSONObject2 != null && (jSONObjectOptJSONObject = jSONObjectOptJSONObject2.optJSONObject("taskBaseInfo")) != null) {
                            String strOptString = jSONObjectOptJSONObject.optString("taskType", "");
                            String strOptString2 = jSONObjectOptJSONObject.optString("taskStatus", "");
                            jSONObjectOptJSONObject.optString("taskMode", "");
                            JSONObject jSONObject2 = new JSONObject(jSONObjectOptJSONObject.optString("bizInfo", "{}"));
                            String strOptString3 = jSONObject2.optString("taskTitle", "未知任务");
                            JSONObject jSONObjectOptJSONObject3 = jSONObjectOptJSONObject2.optJSONObject("taskRights");
                            int iOptInt = jSONObjectOptJSONObject3 != null ? jSONObjectOptJSONObject3.optInt("awardCount", i) : 0;
                            if ("FINISHED".equals(strOptString2)) {
                                if (antfishReceiveTaskAward(strOptString)) {
                                    Log.forest("摸鱼任务🎖️领取[" + strOptString3 + "]获得摸鱼次数*" + iOptInt);
                                }
                            } else if (this.AntOceanFishBlackList.getValue().contains(strOptString3)) {
                                TaskAlternative.handleGameTask(new TaskAlternative.GameTask("AntOceanFishBlackList", strOptString3, jSONObject2.optString("desc", jSONObject2.optString("taskDesc")), TaskAlternative.firstNonEmpty(jSONObject2.optString("taskJumpUrl"), jSONObject2.optString("targetUrl")), strOptString2).bizKey(strOptString).taskPlayType(jSONObjectOptJSONObject.optString("taskPlayType", jSONObjectOptJSONObject.optString("taskProdPlayType"))).taskMode(jSONObjectOptJSONObject.optString("taskMode")).taskSceneCode("ANTAIFISH").scene("ANTAIFISH", "ANTAIFISH").version("20241203"));
                            } else if ("TODO".equals(strOptString2) && antfishFinishTask(strOptString3, strOptString) && antfishReceiveTaskAward(strOptString)) {
                                Log.forest("摸鱼任务🎖️领取[" + strOptString3 + "]获得摸鱼次数*" + iOptInt);
                            }
                        }
                        i2++;
                        i = 0;
                    }
                    return;
                }
                Log.forest("海洋摸鱼🐟暂无任务");
            }
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "antfishHandleTasks err:");
            Log.printStackTrace(str, th);
        }
    }

    private boolean antfishFinishTask(String str, String str2) {
        try {
            JSONObject jSONObject = new JSONObject(AntOceanRpcCall.antfishFinishTask(str2));
            MessageUtil.checkResultCodeAndMarkTaskBlackList("AntOceanFishBlackList", str, jSONObject);
            if (!MessageUtil.checkResultCode(TAG, jSONObject).booleanValue()) {
                return false;
            }
            Log.forest("摸鱼任务🧾完成[" + str + "]");
            return true;
        } catch (Throwable th) {
            String str3 = TAG;
            Log.i(str3, "antfishFinishTask err:");
            Log.printStackTrace(str3, th);
            return false;
        }
    }

    private boolean antfishReceiveTaskAward(String str) {
        try {
            if (Status.hasFlagToday("Ocean::ANTAIFISH_TaskAward").booleanValue()) {
                return false;
            }
            JSONObject jSONObject = new JSONObject(AntOceanRpcCall.antfishReceiveTaskAward(str));
            if (!jSONObject.optBoolean("success", false)) {
                Log.record("领取海洋摸鱼[" + jSONObject.optString("desc", "无返回结果") + "]今天不再执行");
                Status.flagToday("Ocean::ANTAIFISH_TaskAward_Limitid");
            }
            if (MessageUtil.checkResultCode(TAG, jSONObject).booleanValue()) {
                return true;
            }
        } catch (Throwable th) {
            String str2 = TAG;
            Log.i(str2, "antfishReceiveTaskAward err:");
            Log.printStackTrace(str2, th);
        }
        return false;
    }

    private void touchfish() {
        JSONObject jSONObjectOptJSONObject;
        int i;
        int i2;
        try {
            JSONObject jSONObject = new JSONObject(AntOceanRpcCall.antfishHomepage());
            if (MessageUtil.checkResultCode(TAG, jSONObject).booleanValue()) {
                JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject("myFish");
                if (jSONObjectOptJSONObject2 == null) {
                    Log.record("海洋摸鱼未获取到[我的鱼信息]");
                    return;
                }
                JSONObject jSONObjectOptJSONObject3 = jSONObjectOptJSONObject2.optJSONObject("interactVO");
                if (jSONObjectOptJSONObject3 == null) {
                    Log.forest("海洋摸鱼🐟未获取到交互状态信息");
                    return;
                }
                int iOptInt = jSONObjectOptJSONObject3.optInt("remainTouchChance", 0);
                if (iOptInt <= 0) {
                    return;
                }
                int i3 = 0;
                int i4 = 0;
                while (iOptInt > 0) {
                    JSONObject jSONObject2 = new JSONObject(AntOceanRpcCall.antfishTouchfish());
                    if (!MessageUtil.checkResultCode(TAG, jSONObject2).booleanValue()) {
                        Log.record("海洋摸鱼🐟摸鱼失败");
                        break;
                    }
                    int i5 = i3 + 1;
                    String strOptString = jSONObject2.optString("touchType", "");
                    JSONArray jSONArrayOptJSONArray = jSONObject2.optJSONArray("touchRewardList");
                    String strOptString2 = "";
                    String strOptString3 = strOptString2;
                    int i6 = 0;
                    int iOptInt2 = 0;
                    while (jSONArrayOptJSONArray != null && i6 < jSONArrayOptJSONArray.length()) {
                        JSONObject jSONObjectOptJSONObject4 = jSONArrayOptJSONArray.optJSONObject(i6);
                        if (jSONObjectOptJSONObject4 == null) {
                            i = iOptInt;
                        } else {
                            i = iOptInt;
                            JSONObject jSONObjectOptJSONObject5 = jSONObjectOptJSONObject4.optJSONObject("extInfo");
                            if (jSONObjectOptJSONObject5 != null) {
                                i2 = i5;
                                JSONObject jSONObjectOptJSONObject6 = jSONObjectOptJSONObject5.optJSONObject("popup");
                                if (jSONObjectOptJSONObject6 == null) {
                                    strOptString = strOptString;
                                } else {
                                    iOptInt2 += jSONObjectOptJSONObject6.optInt("rightsNums", 0);
                                    if (strOptString2.isEmpty()) {
                                        strOptString2 = jSONObjectOptJSONObject6.optString("name", "");
                                    }
                                    if (strOptString3.isEmpty()) {
                                        strOptString3 = jSONObjectOptJSONObject4.optString("rewardType", "");
                                    }
                                    JSONObject jSONObjectOptJSONObject7 = jSONObject2.optJSONObject("captureInfoVO");
                                    if (jSONObjectOptJSONObject7 != null && "touchFish".equals(strOptString)) {
                                        String strOptString4 = jSONObjectOptJSONObject7.optString("nickName", "");
                                        String strOptString5 = jSONObjectOptJSONObject7.optString("userId", "未知ID");
                                        if (strOptString4.isEmpty()) {
                                            strOptString4 = strOptString5;
                                        }
                                        Log.forest("海洋摸鱼🐟摸到了[" + strOptString4 + "]的鱼获得" + jSONObjectOptJSONObject6.optInt("rightsNums", 0) + "g能量");
                                        StringBuilder sb = new StringBuilder();
                                        sb.append("海洋摸鱼🐟获得");
                                        sb.append(jSONObjectOptJSONObject6.optInt("rightsNums", 0));
                                        sb.append("g能量");
                                        Toast.show(sb.toString());
                                    } else {
                                        Log.forest("海洋摸鱼🐟[" + jSONObjectOptJSONObject6.optString("name", "") + "]" + jSONObjectOptJSONObject6.optInt("rightsNums", 0) + "g");
                                        StringBuilder sb2 = new StringBuilder();
                                        sb2.append("海洋摸鱼🐟获得");
                                        sb2.append(jSONObjectOptJSONObject6.optInt("rightsNums", 0));
                                        sb2.append("g能量");
                                        Toast.show(sb2.toString());
                                    }
                                    i4 += iOptInt2;
                                    Statistics.addData(Statistics.DataType.COLLECTED, iOptInt2);
                                }
                            }
                            i6++;
                            iOptInt = i;
                            i5 = i2;
                            jSONArrayOptJSONArray = jSONArrayOptJSONArray;
                            strOptString = strOptString;
                        }
                        i2 = i5;
                        strOptString = strOptString;
                        i6++;
                        iOptInt = i;
                        i5 = i2;
                        jSONArrayOptJSONArray = jSONArrayOptJSONArray;
                        strOptString = strOptString;
                    }
                    int i7 = iOptInt;
                    int i8 = i5;
                    JSONObject jSONObjectOptJSONObject8 = jSONObject2.optJSONObject("myFish");
                    iOptInt = (jSONObjectOptJSONObject8 == null || (jSONObjectOptJSONObject = jSONObjectOptJSONObject8.optJSONObject("interactVO")) == null) ? i7 : jSONObjectOptJSONObject.optInt("remainTouchChance", 0);
                    i3 = i8;
                }
                if (i3 > 0) {
                    Log.forest("海洋摸鱼🐟本次共摸鱼" + i3 + "次获得" + i4 + "g能量");
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append("海洋摸鱼🐟获得");
                    sb3.append(i4);
                    sb3.append("g能量");
                    Toast.show(sb3.toString());
                }
            }
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "antfishDrawFish err:");
            Log.printStackTrace(str, th);
        }
    }

    private void exchangeProject() {
        JSONArray jSONArrayOptJSONArray;
        try {
            JSONObject jSONObject = new JSONObject(AntOceanRpcCall.queryProjectDetail());
            if (!MessageUtil.checkResultCode(TAG, jSONObject).booleanValue()) {
                Log.record("海洋摸鱼查询证书状态失败");
            }
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("project");
            if (jSONObjectOptJSONObject == null || (jSONArrayOptJSONArray = jSONObjectOptJSONObject.optJSONArray("phaseList")) == null) {
                return;
            }
            for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                String strOptString = jSONArrayOptJSONArray.optJSONObject(i).optString("exchangeStatus");
                if (!strOptString.equals("levelNotEnough") && strOptString.equals("canExchange")) {
                    JSONObject jSONObject2 = new JSONObject(AntOceanRpcCall.exchangeProject());
                    if (!MessageUtil.checkResultCode(TAG, jSONObject2).booleanValue()) {
                        Log.record("海洋摸鱼证书兑换失败");
                    }
                    JSONObject jSONObjectOptJSONObject2 = jSONObject2.optJSONObject("properties");
                    String strOptString2 = jSONObjectOptJSONObject2.optString("protectContent");
                    String strOptString3 = jSONObjectOptJSONObject2.optString("releasePoint");
                    String strOptString4 = jSONObjectOptJSONObject2.optString("certificateName");
                    Log.forest("海洋摸鱼🐟兑换证书#" + jSONObjectOptJSONObject2.optString("region") + strOptString3 + strOptString2 + "(" + strOptString4 + ")");
                }
            }
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "exchangeProject err:");
            Log.printStackTrace(str, th);
        }
    }
}
