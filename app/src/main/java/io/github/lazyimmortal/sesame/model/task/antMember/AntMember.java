package io.github.lazyimmortal.sesame.model.task.antMember;

import androidx.core.app.NotificationCompat;
import io.github.lazyimmortal.sesame.data.ConfigV2;
import io.github.lazyimmortal.sesame.data.ModelFields;
import io.github.lazyimmortal.sesame.data.ModelGroup;
import io.github.lazyimmortal.sesame.data.modelFieldExt.BooleanModelField;
import io.github.lazyimmortal.sesame.data.modelFieldExt.IntegerModelField;
import io.github.lazyimmortal.sesame.data.modelFieldExt.SelectModelField;
import io.github.lazyimmortal.sesame.data.task.ModelTask;
import io.github.lazyimmortal.sesame.entity.AlipayAntMemberTaskList;
import io.github.lazyimmortal.sesame.entity.AlipayMemberCreditSesameTaskList;
import io.github.lazyimmortal.sesame.entity.MemberBenefit;
import io.github.lazyimmortal.sesame.entity.PromiseSimpleTemplate;
import io.github.lazyimmortal.sesame.hook.ApplicationHook;
import io.github.lazyimmortal.sesame.model.base.TaskAlternative;
import io.github.lazyimmortal.sesame.model.base.TaskCommon;
import io.github.lazyimmortal.sesame.model.extensions.ExtensionsHandle;
import io.github.lazyimmortal.sesame.model.task.antOrchard.AntOrchardRpcCall;
import io.github.lazyimmortal.sesame.util.JsonUtil;
import io.github.lazyimmortal.sesame.util.Log;
import io.github.lazyimmortal.sesame.util.MessageUtil;
import io.github.lazyimmortal.sesame.util.Status;
import io.github.lazyimmortal.sesame.util.TaskIconUtil;
import io.github.lazyimmortal.sesame.util.TimeUtil;
import io.github.lazyimmortal.sesame.util.idMap.AntMemberTaskListMap;
import io.github.lazyimmortal.sesame.util.idMap.MemberBenefitIdMap;
import io.github.lazyimmortal.sesame.util.idMap.MemberCreditSesameTaskListMap;
import io.github.lazyimmortal.sesame.util.idMap.PromiseSimpleTemplateIdMap;
import io.github.lazyimmortal.sesame.util.idMap.UserIdMap;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class AntMember extends ModelTask {
    private static final String TAG = "AntMember";
    private BooleanModelField AntMemberTask;
    private SelectModelField AntMemberTaskList;
    private BooleanModelField AutoAntMemberTaskList;
    private BooleanModelField AutoMemberCreditSesameTaskList;
    private BooleanModelField KuaiDiFuLiJia;
    private SelectModelField MemberCreditSesameTaskList;
    private BooleanModelField SesameGrowthBehavior;
    private BooleanModelField antInsurance;
    private SelectModelField antInsuranceOptions;
    private BooleanModelField collectSesame;
    private BooleanModelField enableGameCenter;
    private BooleanModelField enableGoldTicket;
    private BooleanModelField memberPointExchangeBenefit;
    private SelectModelField memberPointExchangeBenefitList;
    private BooleanModelField memberSign;
    private BooleanModelField merchantKMDK;
    private BooleanModelField merchantSignIn;
    private BooleanModelField pointTreasureBox;
    private BooleanModelField promise;
    private SelectModelField promiseList;
    private BooleanModelField sesameAlchemy;
    private BooleanModelField sesameAlchemyBeanExchange;
    private IntegerModelField sesameAlchemyBeanLimit;
    private BooleanModelField sesameAlchemyGoldenBean;
    private BooleanModelField sesameAlchemyGrainTask;
    private IntegerModelField sesameAlchemyReserveZml;
    private BooleanModelField sesameAlchemySign;
    private BooleanModelField signinCalendar;

    private void goldTicket() {
    }

    @Override // io.github.lazyimmortal.sesame.data.task.ModelTask, io.github.lazyimmortal.sesame.data.Model
    public String getName() {
        return "会员";
    }

    @Override // io.github.lazyimmortal.sesame.data.Model
    public ModelGroup getGroup() {
        return ModelGroup.MEMBER;
    }

    @Override // io.github.lazyimmortal.sesame.data.task.ModelTask, io.github.lazyimmortal.sesame.data.Model
    public ModelFields getFields() {
        ModelFields modelFields = new ModelFields();
        BooleanModelField booleanModelField = new BooleanModelField("AntMemberTask", "会员任务", false);
        this.AntMemberTask = booleanModelField;
        modelFields.addField(booleanModelField);
        BooleanModelField booleanModelField2 = new BooleanModelField("AutoAntMemberTaskList", "会员任务 | 推荐黑白名单", true);
        this.AutoAntMemberTaskList = booleanModelField2;
        modelFields.addField(booleanModelField2);
        SelectModelField selectModelField = new SelectModelField("AntMemberTaskList", "会员任务 | 黑名单列表", new LinkedHashSet(), new SelectModelField.SelectListFunc() { // from class: io.github.lazyimmortal.sesame.model.task.antMember.AntMember$$ExternalSyntheticLambda0
            @Override // io.github.lazyimmortal.sesame.data.modelFieldExt.SelectModelField.SelectListFunc
            public final List getList() {
                return AlipayAntMemberTaskList.getList();
            }
        });
        this.AntMemberTaskList = selectModelField;
        modelFields.addField(selectModelField);
        BooleanModelField booleanModelField3 = new BooleanModelField("memberSign", "会员签到", false);
        this.memberSign = booleanModelField3;
        modelFields.addField(booleanModelField3);
        BooleanModelField booleanModelField4 = new BooleanModelField("memberPointExchangeBenefit", "会员积分 | 兑换权益", false);
        this.memberPointExchangeBenefit = booleanModelField4;
        modelFields.addField(booleanModelField4);
        SelectModelField selectModelField2 = new SelectModelField("memberPointExchangeBenefitList", "会员积分 | 权益列表", new LinkedHashSet(), new SelectModelField.SelectListFunc() { // from class: io.github.lazyimmortal.sesame.model.task.antMember.AntMember$$ExternalSyntheticLambda1
            @Override // io.github.lazyimmortal.sesame.data.modelFieldExt.SelectModelField.SelectListFunc
            public final List getList() {
                return MemberBenefit.getList();
            }
        });
        this.memberPointExchangeBenefitList = selectModelField2;
        modelFields.addField(selectModelField2);
        BooleanModelField booleanModelField5 = new BooleanModelField("collectSesame", "芝麻粒 | 芝麻粒任务", false);
        this.collectSesame = booleanModelField5;
        modelFields.addField(booleanModelField5);
        BooleanModelField booleanModelField6 = new BooleanModelField("sesameAlchemyGrainTask", "芝麻粒 | 芝麻炼金任务", false);
        this.sesameAlchemyGrainTask = booleanModelField6;
        modelFields.addField(booleanModelField6);
        BooleanModelField booleanModelField7 = new BooleanModelField("AutoMemberCreditSesameTaskList", "芝麻粒任务 | 推荐黑白名单", true);
        this.AutoMemberCreditSesameTaskList = booleanModelField7;
        modelFields.addField(booleanModelField7);
        SelectModelField selectModelField3 = new SelectModelField("MemberCreditSesameTaskList", "芝麻粒任务 | 黑名单列表", new LinkedHashSet(), new SelectModelField.SelectListFunc() { // from class: io.github.lazyimmortal.sesame.model.task.antMember.AntMember$$ExternalSyntheticLambda2
            @Override // io.github.lazyimmortal.sesame.data.modelFieldExt.SelectModelField.SelectListFunc
            public final List getList() {
                return AlipayMemberCreditSesameTaskList.getList();
            }
        });
        this.MemberCreditSesameTaskList = selectModelField3;
        modelFields.addField(selectModelField3);
        BooleanModelField booleanModelField8 = new BooleanModelField("SesameGrowthBehavior", "攒芝麻分进度", false);
        this.SesameGrowthBehavior = booleanModelField8;
        modelFields.addField(booleanModelField8);
        BooleanModelField booleanModelField9 = new BooleanModelField("sesameAlchemy", "芝麻炼金 | 消耗芝麻粒炼金", false);
        this.sesameAlchemy = booleanModelField9;
        modelFields.addField(booleanModelField9);
        BooleanModelField booleanModelField10 = new BooleanModelField("sesameAlchemySign", "芝麻炼金 | 签到", false);
        this.sesameAlchemySign = booleanModelField10;
        modelFields.addField(booleanModelField10);
        BooleanModelField booleanModelField11 = new BooleanModelField("sesameAlchemyGoldenBean", "炼金金豆 | 任务签到领奖", false);
        this.sesameAlchemyGoldenBean = booleanModelField11;
        modelFields.addField(booleanModelField11);
        BooleanModelField booleanModelField12 = new BooleanModelField("sesameAlchemyBeanExchange", "炼金金豆 | 芝麻粒换金豆", false);
        this.sesameAlchemyBeanExchange = booleanModelField12;
        modelFields.addField(booleanModelField12);
        IntegerModelField integerModelField = new IntegerModelField("sesameAlchemyBeanLimit", "炼金金豆 | 当日兑换芝麻粒上限(0不限制)", 0, 0, null);
        this.sesameAlchemyBeanLimit = integerModelField;
        modelFields.addField(integerModelField);
        IntegerModelField integerModelField2 = new IntegerModelField("sesameAlchemyReserveZml", "炼金金豆 | 剩余芝麻粒下限(0不限制)", 0, 0, null);
        this.sesameAlchemyReserveZml = integerModelField2;
        modelFields.addField(integerModelField2);
        BooleanModelField booleanModelField13 = new BooleanModelField("pointTreasureBox", "芝麻积分 | 宝箱", false);
        this.pointTreasureBox = booleanModelField13;
        modelFields.addField(booleanModelField13);
        BooleanModelField booleanModelField14 = new BooleanModelField("promise", "生活记录 | 坚持做", false);
        this.promise = booleanModelField14;
        modelFields.addField(booleanModelField14);
        SelectModelField selectModelField4 = new SelectModelField("promiseList", "生活记录 | 坚持做列表", new LinkedHashSet(), new SelectModelField.SelectListFunc() { // from class: io.github.lazyimmortal.sesame.model.task.antMember.AntMember$$ExternalSyntheticLambda3
            @Override // io.github.lazyimmortal.sesame.data.modelFieldExt.SelectModelField.SelectListFunc
            public final List getList() {
                return PromiseSimpleTemplate.getList();
            }
        });
        this.promiseList = selectModelField4;
        modelFields.addField(selectModelField4);
        BooleanModelField booleanModelField15 = new BooleanModelField("enableGameCenter", "游戏中心 | 得乐园豆", false);
        this.enableGameCenter = booleanModelField15;
        modelFields.addField(booleanModelField15);
        BooleanModelField booleanModelField16 = new BooleanModelField("KuaiDiFuLiJia", "我的快递 | 福利加", false);
        this.KuaiDiFuLiJia = booleanModelField16;
        modelFields.addField(booleanModelField16);
        BooleanModelField booleanModelField17 = new BooleanModelField("signinCalendar", "消费金 | 签到", false);
        this.signinCalendar = booleanModelField17;
        modelFields.addField(booleanModelField17);
        BooleanModelField booleanModelField18 = new BooleanModelField("enableGoldTicket", "黄金票 | 签到", false);
        this.enableGoldTicket = booleanModelField18;
        modelFields.addField(booleanModelField18);
        BooleanModelField booleanModelField19 = new BooleanModelField("merchantSignIn", "商家服务 | 签到", false);
        this.merchantSignIn = booleanModelField19;
        modelFields.addField(booleanModelField19);
        BooleanModelField booleanModelField20 = new BooleanModelField("merchantKMDK", "商家服务 | 开门打卡", false);
        this.merchantKMDK = booleanModelField20;
        modelFields.addField(booleanModelField20);
        return modelFields;
    }

    @Override // io.github.lazyimmortal.sesame.data.task.ModelTask
    public Boolean check() {
        if (TaskCommon.IS_ENERGY_TIME.booleanValue()) {
            Log.other("任务暂停⏸️蚂蚁会员:当前为仅收能量时间");
            return false;
        }
        return true;
    }

    @Override // io.github.lazyimmortal.sesame.data.task.ModelTask
    public void run() {
        try {
            if (!Status.hasFlagToday("BlackList::initMember").booleanValue()) {
                initMemberTaskListMap(this.AutoAntMemberTaskList.getValue().booleanValue(), this.AutoMemberCreditSesameTaskList.getValue().booleanValue(), this.AntMemberTask.getValue().booleanValue(), this.sesameAlchemyGrainTask.getValue().booleanValue());
                Status.flagToday("BlackList::initMember");
            }
            if (this.memberSign.getValue().booleanValue()) {
                memberSign();
            }
            if (this.AntMemberTask.getValue().booleanValue()) {
                queryPointCert(1, 8);
                queryAllStatusTaskList();
            }
            if (this.memberPointExchangeBenefit.getValue().booleanValue()) {
                memberPointExchangeBenefit();
            }
            if (this.collectSesame.getValue().booleanValue()) {
                CheckInTaskRpcManager();
                collectSesame();
            }
            if (this.collectSesame.getValue().booleanValue() || this.sesameAlchemy.getValue().booleanValue() || this.sesameAlchemySign.getValue().booleanValue() || this.sesameAlchemyGoldenBean.getValue().booleanValue() || this.sesameAlchemyBeanExchange.getValue().booleanValue() || this.pointTreasureBox.getValue().booleanValue()) {
                sesameInfo();
            }
            if (this.sesameAlchemyGrainTask.getValue().booleanValue()) {
                alchemySesameTasks();
            }
            if (this.SesameGrowthBehavior.getValue().booleanValue()) {
                handleGrowthGuideTasks();
                queryAndCollect();
                collectCreditFeedback();
            }
            if (this.promise.getValue().booleanValue()) {
                promise();
            }
            if (this.KuaiDiFuLiJia.getValue().booleanValue()) {
                RecommendTask();
                OrdinaryTask();
            }
            if (this.enableGoldTicket.getValue().booleanValue()) {
                goldTicket();
            }
            if (this.signinCalendar.getValue().booleanValue()) {
                signinCalendar();
            }
            if (this.enableGameCenter.getValue().booleanValue()) {
                checkAndDoSignIn();
                queryAndProcessTaskList();
                queryPointBallList();
            }
            if ((this.merchantSignIn.getValue().booleanValue() || this.merchantKMDK.getValue().booleanValue()) && MerchantService.transcodeCheck().booleanValue()) {
                if (this.merchantSignIn.getValue().booleanValue()) {
                    MerchantService.taskListQueryV2();
                }
                if (this.merchantKMDK.getValue().booleanValue()) {
                    MerchantService.merchantKMDK();
                }
            }
            if (this.sesameAlchemy.getValue().booleanValue() || this.sesameAlchemySign.getValue().booleanValue() || this.sesameAlchemyGoldenBean.getValue().booleanValue() || this.sesameAlchemyBeanExchange.getValue().booleanValue() || this.pointTreasureBox.getValue().booleanValue()) {
                ModelFields modelFields = ConfigV2.INSTANCE.getModelFieldsMap().get("AntOrchard");
                SelectModelField selectModelField = modelFields == null ? null : (SelectModelField) modelFields.get("GoldenBeansTaskList");
                SesameAlchemy.run(this.sesameAlchemy.getValue().booleanValue(), this.sesameAlchemySign.getValue().booleanValue(), this.sesameAlchemyGoldenBean.getValue().booleanValue(), selectModelField != null ? selectModelField.getValue() : null, this.sesameAlchemyBeanExchange.getValue().booleanValue(), this.sesameAlchemyBeanLimit.getValue().intValue(), this.sesameAlchemyReserveZml.getValue().intValue(), this.pointTreasureBox.getValue().booleanValue());
            }
        } catch (Throwable th) {
            Log.printStackTrace(TAG, th);
        }
    }

    public static void initMemberTaskListMap(boolean z, boolean z2, boolean z3, boolean z4) {
        SelectModelField selectModelField;
        boolean zOptBoolean;
        try {
            AntMemberTaskListMap.load();
            HashSet<String> hashSet = new HashSet();
            HashSet<String> hashSet2 = new HashSet();
            Iterator it = hashSet.iterator();
            while (it.hasNext()) {
                AntMemberTaskListMap.add((String) it.next(), "");
            }
            if (z3) {
                int i = 1;
                do {
                    JSONObject jSONObject = new JSONObject(AntMemberRpcCall.queryPointCert(i, 8));
                    TimeUtil.sleep(500L);
                    if (!MessageUtil.checkResultCode(TAG, jSONObject).booleanValue()) {
                        break;
                    }
                    zOptBoolean = jSONObject.optBoolean("hasNextPage");
                    i++;
                    JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("certList");
                    if (jSONArrayOptJSONArray == null) {
                        break;
                    }
                    for (int i2 = 0; i2 < jSONArrayOptJSONArray.length(); i2++) {
                        JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i2);
                        if (jSONObjectOptJSONObject != null) {
                            String strOptString = jSONObjectOptJSONObject.optString("bizTitle");
                            if (!strOptString.isEmpty()) {
                                AntMemberTaskListMap.add(strOptString, TaskIconUtil.extractIcon(jSONObjectOptJSONObject));
                            }
                        }
                    }
                } while (zOptBoolean);
                JSONObject jSONObject2 = new JSONObject(AntMemberRpcCall.queryAllStatusTaskList());
                if (MessageUtil.checkResultCode(TAG, jSONObject2).booleanValue()) {
                    JSONArray jSONArrayOptJSONArray2 = jSONObject2.optJSONArray("availableTaskList");
                    if (jSONArrayOptJSONArray2 != null) {
                        for (int i3 = 0; i3 < jSONArrayOptJSONArray2.length(); i3++) {
                            JSONObject jSONObjectOptJSONObject2 = jSONArrayOptJSONArray2.optJSONObject(i3);
                            JSONObject jSONObjectOptJSONObject3 = jSONObjectOptJSONObject2 == null ? null : jSONObjectOptJSONObject2.optJSONObject("taskConfigInfo");
                            String strOptString2 = jSONObjectOptJSONObject3 == null ? "" : jSONObjectOptJSONObject3.optString("name");
                            if (!strOptString2.isEmpty()) {
                                AntMemberTaskListMap.add(strOptString2, TaskIconUtil.extractIcon(jSONObjectOptJSONObject3));
                            }
                        }
                    }
                    JSONArray jSONArrayOptJSONArray3 = jSONObject2.optJSONArray("taskHistoryList");
                    if (jSONArrayOptJSONArray3 != null) {
                        for (int i4 = 0; i4 < jSONArrayOptJSONArray3.length(); i4++) {
                            JSONObject jSONObjectOptJSONObject4 = jSONArrayOptJSONArray3.optJSONObject(i4);
                            JSONObject jSONObjectOptJSONObject5 = jSONObjectOptJSONObject4 == null ? null : jSONObjectOptJSONObject4.optJSONObject("taskConfigInfo");
                            String strOptString3 = jSONObjectOptJSONObject5 == null ? "" : jSONObjectOptJSONObject5.optString("name");
                            if (!strOptString3.isEmpty()) {
                                AntMemberTaskListMap.add(strOptString3, TaskIconUtil.extractIcon(jSONObjectOptJSONObject5));
                            }
                        }
                    }
                }
                AntMemberTaskListMap.save();
                Log.record("同步任务🉑会员任务列表");
                if (z) {
                    SelectModelField selectModelField2 = (SelectModelField) ConfigV2.INSTANCE.getModelFieldsMap().get("AntMember").get("AntMemberTaskList");
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
                        Log.record("黑白名单🈲会员任务自动设置: " + selectModelField2.getValue());
                    } else {
                        Log.record("会员任务黑白名单设置失败");
                    }
                }
            }
            MemberCreditSesameTaskListMap.load();
            HashSet<String> hashSet3 = new HashSet();
            hashSet3.add("去淘金币逛一逛");
            hashSet3.add("坚持逛裹酱领福利");
            hashSet3.add("坚持签到领奖励");
            hashSet3.add("坚持看直播领福利");
            hashSet3.add("去雇佣芝麻大表鸽");
            hashSet3.add("完成旧衣回收得现金");
            hashSet3.add("0.1元起租会员攒粒");
            hashSet3.add("每日施肥领水果");
            hashSet3.add("去玩小游戏");
            HashSet<String> hashSet4 = new HashSet();
            hashSet4.add("逛一逛芝麻树");
            hashSet4.add("浏览15秒视频广告");
            hashSet4.add("逛15秒商品橱窗");
            hashSet4.add("逛一逛集汗滴找现金");
            hashSet4.add("去体验先用后付");
            hashSet4.add("去抛竿钓鱼");
            hashSet4.add("去参与花呗活动");
            hashSet4.add("坚持攒保障金");
            hashSet4.add("去领支付宝积分");
            hashSet4.add("去浏览租赁大促会场");
            Iterator it2 = hashSet3.iterator();
            while (it2.hasNext()) {
                MemberCreditSesameTaskListMap.add((String) it2.next(), "");
            }
            if (z2) {
                JSONObject jSONObject3 = new JSONObject(AntMemberRpcCall.queryHome());
                String str3 = TAG;
                if (MessageUtil.checkResultCode(str3, jSONObject3).booleanValue() && jSONObject3.getJSONObject("entrance").optBoolean("openApp")) {
                    JSONObject jSONObject4 = new JSONObject(AntMemberRpcCall.CreditAccumulateStrategyRpcManager());
                    TimeUtil.sleep(300L);
                    if (MessageUtil.checkResultCode(str3, jSONObject4).booleanValue() && jSONObject4.has("data")) {
                        JSONObject jSONObject5 = jSONObject4.getJSONObject("data");
                        if (jSONObject5.has("completeVOS")) {
                            JSONArray jSONArray = jSONObject5.getJSONArray("completeVOS");
                            for (int i5 = 0; i5 < jSONArray.length(); i5++) {
                                JSONObject jSONObject6 = jSONArray.getJSONObject(i5);
                                String strOptString4 = jSONObject6.optString("title");
                                if (!strOptString4.isEmpty()) {
                                    MemberCreditSesameTaskListMap.add(strOptString4, TaskIconUtil.extractIcon(jSONObject6));
                                }
                            }
                        }
                        if (jSONObject5.has("toCompleteVOS")) {
                            JSONArray jSONArray2 = jSONObject5.getJSONArray("toCompleteVOS");
                            for (int i6 = 0; i6 < jSONArray2.length(); i6++) {
                                JSONObject jSONObject7 = jSONArray2.getJSONObject(i6);
                                String strOptString5 = jSONObject7.optString("title");
                                if (!strOptString5.isEmpty()) {
                                    MemberCreditSesameTaskListMap.add(strOptString5, TaskIconUtil.extractIcon(jSONObject7));
                                }
                            }
                        }
                    }
                }
            }
            if (z4) {
                JSONObject jSONObject8 = new JSONObject(AntMemberRpcCall.alchemyQueryTasks());
                TimeUtil.sleep(300L);
                if (MessageUtil.checkResultCode(TAG, jSONObject8).booleanValue() && jSONObject8.has("data")) {
                    JSONObject jSONObject9 = jSONObject8.getJSONObject("data");
                    if (jSONObject9.has("toCompleteVOS")) {
                        JSONArray jSONArray3 = jSONObject9.getJSONArray("toCompleteVOS");
                        for (int i7 = 0; i7 < jSONArray3.length(); i7++) {
                            String strOptString6 = jSONArray3.getJSONObject(i7).optString("title");
                            if (!strOptString6.isEmpty()) {
                                MemberCreditSesameTaskListMap.add(strOptString6, TaskIconUtil.extractIcon(jSONArray3.getJSONObject(i7)));
                            }
                        }
                    }
                }
            }
            MemberCreditSesameTaskListMap.save();
            Log.record("同步任务🉑会员芝麻信用任务芝麻粒列表");
            if (!z2 || (selectModelField = (SelectModelField) ConfigV2.INSTANCE.getModelFieldsMap().get("AntMember").get("MemberCreditSesameTaskList")) == null) {
                return;
            }
            Set<String> value2 = selectModelField.getValue();
            if (value2 != null) {
                for (String str4 : hashSet3) {
                    if (!value2.contains(str4)) {
                        selectModelField.add(str4, 0);
                    }
                }
                for (String str5 : hashSet4) {
                    if (value2.contains(str5)) {
                        value2.remove(str5);
                    }
                }
            }
            if (ConfigV2.save(UserIdMap.getCurrentUid(), false).booleanValue()) {
                Log.record("黑白名单🈲会员芝麻信用任务芝麻粒自动设置: " + selectModelField.getValue());
                return;
            }
            Log.record("会员芝麻信用任务芝麻粒黑白名单设置失败");
        } catch (Throwable th) {
            String str6 = TAG;
            Log.i(str6, "initMemberTaskListMap err:");
            Log.printStackTrace(str6, th);
        }
    }

    private void memberSign() {
        try {
            if (Status.hasFlagToday("member::sign").booleanValue()) {
                return;
            }
            JSONObject jSONObject = new JSONObject(AntMemberRpcCall.queryMemberSigninCalendar());
            TimeUtil.sleep(500L);
            if (MessageUtil.checkResultCode(TAG, jSONObject).booleanValue()) {
                if (jSONObject.getBoolean("autoSignInSuccess")) {
                    Log.other("会员任务📅签到[坚持" + jSONObject.getString("signinSumDay") + "天]#获得[" + jSONObject.getString("signinPoint") + "积分]");
                }
                Status.flagToday("member::sign");
            }
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "memberSign err:");
            Log.printStackTrace(str, th);
        }
    }

    private void queryPointCert(int i, int i2) {
        try {
            JSONObject jSONObject = new JSONObject(AntMemberRpcCall.queryPointCert(i, i2));
            TimeUtil.sleep(500L);
            if (MessageUtil.checkResultCode(TAG, jSONObject).booleanValue()) {
                boolean z = jSONObject.getBoolean("hasNextPage");
                JSONArray jSONArray = jSONObject.getJSONArray("certList");
                for (int i3 = 0; i3 < jSONArray.length(); i3++) {
                    JSONObject jSONObject2 = jSONArray.getJSONObject(i3);
                    String string = jSONObject2.getString("bizTitle");
                    if (!this.AntMemberTaskList.getValue().contains(string)) {
                        String string2 = jSONObject2.getString("id");
                        int i4 = jSONObject2.getInt("pointAmount");
                        if (MessageUtil.checkResultCode(TAG, new JSONObject(AntMemberRpcCall.receivePointByUser(string2))).booleanValue()) {
                            Log.other("会员任务🎖️领取[" + string + "]奖励#获得[" + i4 + "积分]");
                        }
                    }
                }
                if (z) {
                    queryPointCert(i + 1, i2);
                }
            }
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "queryPointCert err:");
            Log.printStackTrace(str, th);
        }
    }

    private void signPageTaskList() {
        boolean zBooleanValue;
        do {
            try {
                JSONObject jSONObject = new JSONObject(AntMemberRpcCall.signPageTaskList());
                TimeUtil.sleep(500L);
                if (!MessageUtil.checkResultCode(TAG + " signPageTaskList", jSONObject).booleanValue() || !jSONObject.has("categoryTaskList")) {
                    return;
                }
                JSONArray jSONArray = jSONObject.getJSONArray("categoryTaskList");
                zBooleanValue = false;
                for (int i = 0; i < jSONArray.length(); i++) {
                    JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                    JSONArray jSONArray2 = jSONObject2.getJSONArray("taskList");
                    if ("BROWSE".equals(jSONObject2.getString("type"))) {
                        zBooleanValue = doBrowseTask(jSONArray2).booleanValue();
                    } else {
                        ExtensionsHandle.handleAlphaRequest("antMember", "doMoreTask", jSONObject2);
                    }
                }
            } catch (Throwable th) {
                String str = TAG;
                Log.i(str, "signPageTaskList err:");
                Log.printStackTrace(str, th);
                return;
            }
        } while (zBooleanValue);
    }

    private void queryAllStatusTaskList() {
        try {
            JSONObject jSONObject = new JSONObject(AntMemberRpcCall.queryAllStatusTaskList());
            TimeUtil.sleep(500L);
            if (MessageUtil.checkResultCode(TAG, jSONObject).booleanValue() && doBrowseTask(jSONObject.getJSONArray("availableTaskList")).booleanValue()) {
                queryAllStatusTaskList();
            }
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "queryAllStatusTaskList err:");
            Log.printStackTrace(str, th);
        }
    }

    private void promise() {
        try {
            JSONObject jSONObject = new JSONObject(AntMemberRpcCall.promiseQueryHome());
            if (MessageUtil.checkResultCode(TAG, jSONObject).booleanValue()) {
                JSONArray jSONArray = jSONObject.getJSONObject("data").getJSONArray("promiseSimpleTemplates");
                PromiseSimpleTemplateIdMap.load(UserIdMap.getCurrentUid());
                for (int i = 0; i < jSONArray.length(); i++) {
                    JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                    String string = jSONObject2.getString("templateId");
                    String string2 = jSONObject2.getString("promiseName");
                    if ("un_join".equals(jSONObject2.getString(NotificationCompat.CATEGORY_STATUS)) && this.promiseList.getValue().contains(string)) {
                        promiseJoin(querySingleTemplate(string));
                    }
                    PromiseSimpleTemplateIdMap.add(string, string2);
                }
                PromiseSimpleTemplateIdMap.save(UserIdMap.getCurrentUid());
            }
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "promise err:");
            Log.printStackTrace(str, th);
        }
    }

    private JSONObject querySingleTemplate(String str) {
        try {
            JSONObject jSONObject = new JSONObject(AntMemberRpcCall.querySingleTemplate(str));
            if (!MessageUtil.checkResultCode(TAG, jSONObject).booleanValue()) {
                return null;
            }
            JSONObject jSONObject2 = jSONObject.getJSONObject("data");
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put("joinFromOuter", false);
            jSONObject3.put("templateId", jSONObject2.getString("templateId"));
            jSONObject3.put("autoRenewStatus", Boolean.valueOf(jSONObject2.getString("autoRenewStatus")));
            JSONObject jSONObject4 = jSONObject2.getJSONObject("joinGuarantyRule");
            jSONObject4.put("selectValue", jSONObject4.getJSONArray("canSelectValues").getString(0));
            jSONObject4.remove("canSelectValues");
            jSONObject3.put("joinGuarantyRule", jSONObject4);
            JSONObject jSONObject5 = jSONObject2.getJSONObject("joinRule");
            jSONObject5.put("selectValue", jSONObject5.getJSONArray("canSelectValues").getString(0));
            jSONObject5.remove("joinRule");
            jSONObject3.put("joinRule", jSONObject5);
            JSONObject jSONObject6 = jSONObject2.getJSONObject("periodTargetRule");
            jSONObject6.put("selectValue", jSONObject6.getJSONArray("canSelectValues").getString(0));
            jSONObject6.remove("canSelectValues");
            jSONObject3.put("periodTargetRule", jSONObject6);
            JSONObject jSONObject7 = jSONObject2.getJSONObject("dataSourceRule");
            jSONObject7.put("selectValue", jSONObject7.getJSONArray("canSelectValues").getJSONObject(0).getString("merchantId"));
            jSONObject7.remove("canSelectValues");
            jSONObject3.put("dataSourceRule", jSONObject7);
            return jSONObject3;
        } catch (Throwable th) {
            String str2 = TAG;
            Log.i(str2, "querySingleTemplate err:");
            Log.printStackTrace(str2, th);
            return null;
        }
    }

    private void promiseJoin(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        try {
            JSONObject jSONObject2 = new JSONObject(AntMemberRpcCall.promiseJoin(jSONObject));
            String str = TAG;
            if (MessageUtil.checkResultCode(str, jSONObject2).booleanValue()) {
                JSONObject jSONObject3 = jSONObject2.getJSONObject("data");
                String string = jSONObject3.getString("promiseName");
                Log.other("生活记录📝加入[" + string + "]");
                String strOptString = jSONObject3.optString("recordId");
                if (strOptString.isEmpty() || !MessageUtil.checkResultCode(str, new JSONObject(AntMemberRpcCall.promisePushActivity(strOptString))).booleanValue()) {
                    return;
                }
                Log.other("生活记录✅打卡[" + string + "]");
            }
        } catch (Throwable th) {
            String str2 = TAG;
            Log.i(str2, "promiseJoin err:");
            Log.printStackTrace(str2, th);
        }
    }

    private JSONObject promiseQueryDetail(String str) throws JSONException {
        JSONObject jSONObject = new JSONObject(AntMemberRpcCall.promiseQueryDetail(str));
        if (jSONObject.optBoolean("success")) {
            return jSONObject;
        }
        return null;
    }

    private Boolean doBrowseTask(JSONArray jSONArray) {
        boolean z = false;
        for (int i = 0; i < jSONArray.length(); i++) {
            try {
                try {
                    JSONObject jSONObject = jSONArray.getJSONObject(i);
                    boolean z2 = true;
                    if (jSONObject.getBoolean("hybrid")) {
                        int i2 = Integer.parseInt(jSONObject.getJSONObject("extInfo").getString("PERIOD_CURRENT_COUNT"));
                        int i3 = Integer.parseInt(jSONObject.getJSONObject("extInfo").getString("PERIOD_TARGET_COUNT"));
                        if ((i3 > i2 ? i3 - i2 : 0) > 0) {
                            z = z || doBrowseTask(jSONObject, i3, i3).booleanValue();
                        }
                    } else {
                        if (!z && !doBrowseTask(jSONObject, 1, 1).booleanValue()) {
                            z2 = false;
                        }
                        z = z2;
                    }
                } catch (Throwable th) {
                    String str = TAG;
                    Log.i(str, "doBrowseTask item err:");
                    Log.printStackTrace(str, th);
                }
            } catch (Throwable th2) {
                String str2 = TAG;
                Log.i(str2, "doBrowseTask err:");
                Log.printStackTrace(str2, th2);
            }
        }
        return Boolean.valueOf(z);
    }

    private Boolean doBrowseTask(JSONObject jSONObject, int i, int i2) {
        String str;
        String str2;
        boolean z = false;
        try {
            JSONObject jSONObject2 = jSONObject.getJSONObject("taskConfigInfo");
            String string = jSONObject2.getString("name");
            try {
                if (this.AntMemberTaskList.getValue().contains(string)) {
                    return false;
                }
                Long lValueOf = Long.valueOf(jSONObject2.getLong("id"));
                String string2 = jSONObject2.getJSONObject("awardParam").getString("awardParamPoint");
                String string3 = jSONObject2.getJSONArray("targetBusiness").getString(0);
                boolean z2 = false;
                for (int i3 = i; i3 <= i2; i3++) {
                    try {
                        JSONObject jSONObject3 = new JSONObject(AntMemberRpcCall.applyTask(string, lValueOf));
                        TimeUtil.sleep(300L);
                        String str3 = TAG;
                        if (MessageUtil.checkResultCode(str3, jSONObject3).booleanValue()) {
                            String[] strArrSplit = string3.split("#");
                            if (strArrSplit.length > 2) {
                                str = strArrSplit[2];
                                str2 = strArrSplit[1];
                            } else {
                                str = strArrSplit[1];
                                str2 = strArrSplit[0];
                            }
                            JSONObject jSONObject4 = new JSONObject(AntMemberRpcCall.executeTask(str, str2));
                            TimeUtil.sleep(300L);
                            if (MessageUtil.checkResultCode(str3, jSONObject4).booleanValue()) {
                                Log.other("会员任务🎖️完成[" + string + ((i == i2 && i == 1) ? "" : "(" + (i3 + 1) + "/" + i2 + ")") + "]#获得[" + string2 + "积分]");
                                z2 = true;
                            }
                        }
                    } catch (Throwable th) {
                        th = th;
                        z = z2;
                        String str4 = TAG;
                        Log.i(str4, "doBrowseTask err:");
                        Log.printStackTrace(str4, th);
                        z2 = z;
                        return Boolean.valueOf(z2);
                    }
                }
                return Boolean.valueOf(z2);
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    private void handleGrowthGuideTasks() {
        JSONArray jSONArray;
        int i;
        String str;
        JSONObject jSONObjectOptJSONObject;
        JSONObject jSONObjectOptJSONObject2;
        JSONObject jSONObjectOptJSONObject3;
        String str2;
        try {
            JSONObject jSONObject = new JSONObject(AntMemberRpcCall.queryHome());
            String str3 = TAG;
            if (MessageUtil.checkResultCode(str3, jSONObject).booleanValue()) {
                JSONObject jSONObject2 = new JSONObject(AntMemberRpcCall.queryGrowthBehaviorToDoList());
                if (MessageUtil.checkResultCode(str3, jSONObject2).booleanValue()) {
                    JSONArray jSONArrayOptJSONArray = jSONObject2.optJSONArray("toDoList");
                    int length = jSONArrayOptJSONArray == null ? 0 : jSONArrayOptJSONArray.length();
                    if (jSONArrayOptJSONArray != null && length != 0) {
                        int i2 = 0;
                        while (i2 < jSONArrayOptJSONArray.length()) {
                            JSONObject jSONObjectOptJSONObject4 = jSONArrayOptJSONArray.optJSONObject(i2);
                            if (jSONObjectOptJSONObject4 == null) {
                                jSONArray = jSONArrayOptJSONArray;
                                i = i2;
                            } else {
                                String strOptString = jSONObjectOptJSONObject4.optString("behaviorId", "");
                                String strOptString2 = jSONObjectOptJSONObject4.optString("title", "");
                                String strOptString3 = jSONObjectOptJSONObject4.optString(NotificationCompat.CATEGORY_STATUS, "");
                                String strOptString4 = jSONObjectOptJSONObject4.optString("subTitle", "");
                                if ("wait_receive".equals(strOptString3)) {
                                    if (MessageUtil.checkResultCode(TAG, new JSONObject(AntMemberRpcCall.openBehaviorCollect(strOptString))).booleanValue()) {
                                        Log.other("攒芝麻分🧾任务领取：" + strOptString2);
                                    }
                                } else {
                                    if (!"meiriwenda".equals(strOptString) || !"wait_doing".equals(strOptString3)) {
                                        jSONArray = jSONArrayOptJSONArray;
                                        i = i2;
                                        str = strOptString2;
                                    } else if (strOptString4.contains("今日已参与")) {
                                        Log.other("攒芝麻分🧾[每日问答] " + strOptString4 + "（跳过答题）");
                                    } else {
                                        JSONObject jSONObject3 = new JSONObject(AntMemberRpcCall.queryDailyQuiz(strOptString));
                                        String str4 = TAG;
                                        if (MessageUtil.checkSuccess(str4, jSONObject3).booleanValue() && (jSONObjectOptJSONObject = jSONObject3.optJSONObject("data")) != null && (jSONObjectOptJSONObject2 = jSONObjectOptJSONObject.optJSONObject("questionVo")) != null && (jSONObjectOptJSONObject3 = jSONObjectOptJSONObject2.optJSONObject("rightAnswer")) != null) {
                                            long jOptLong = jSONObjectOptJSONObject.optLong("bizDate", 0L);
                                            String strOptString5 = jSONObjectOptJSONObject2.optString("questionId", "");
                                            String strOptString6 = jSONObjectOptJSONObject2.optString("questionContent", "");
                                            String strOptString7 = jSONObjectOptJSONObject3.optString("answerId", "");
                                            String strOptString8 = jSONObjectOptJSONObject3.optString("answerContent", "");
                                            if (jOptLong > 0 && !strOptString5.isEmpty() && !strOptString7.isEmpty()) {
                                                jSONArray = jSONArrayOptJSONArray;
                                                i = i2;
                                                str = strOptString2;
                                                if (MessageUtil.checkResultCode(str4, new JSONObject(AntMemberRpcCall.pushDailyQuizAnswer(strOptString, jOptLong, strOptString7, strOptString5, "RIGHT"))).booleanValue()) {
                                                    StringBuilder sb = new StringBuilder();
                                                    sb.append("攒芝麻分🎖️[每日答题成功] ");
                                                    sb.append(strOptString6);
                                                    sb.append(" | 答案=");
                                                    sb.append(strOptString8);
                                                    sb.append("(");
                                                    sb.append(strOptString7);
                                                    sb.append(")");
                                                    if (strOptString4.isEmpty()) {
                                                        str2 = "";
                                                    } else {
                                                        str2 = " | " + strOptString4;
                                                    }
                                                    sb.append(str2);
                                                    Log.other(sb.toString());
                                                }
                                            }
                                        }
                                    }
                                    if ("shipingwenda".equals(strOptString) && "wait_doing".equals(strOptString3)) {
                                        if (MessageUtil.checkResultCode(TAG, new JSONObject(AntMemberRpcCall.pushDailyQuizAnswer(strOptString, System.currentTimeMillis(), "A", "question3", "RIGHT"))).booleanValue()) {
                                            Log.other("攒芝麻分🎖️[视频问答提交成功]");
                                        }
                                    }
                                    if ("babanongchang_7d".equals(strOptString) && "wait_doing".equals(strOptString3)) {
                                        JSONObject jSONObject4 = new JSONObject(AntOrchardRpcCall.orchardSpreadManure(false, getWuaByReflection()));
                                        if ("100".equals(jSONObject4.optString("resultCode"))) {
                                            String strOptString9 = jSONObject4.optString("taobaoData", "");
                                            if (!strOptString9.isEmpty()) {
                                                JSONObject jSONObject5 = new JSONObject(strOptString9);
                                                JSONObject jSONObjectOptJSONObject5 = jSONObject5.optJSONObject("currentStage");
                                                if (jSONObjectOptJSONObject5 != null) {
                                                    String strOptString10 = jSONObjectOptJSONObject5.optString("stageText", "");
                                                    JSONObject jSONObjectOptJSONObject6 = jSONObject5.optJSONObject("statistics");
                                                    int iOptInt = jSONObjectOptJSONObject6 == null ? 0 : jSONObjectOptJSONObject6.optInt("dailyAppWateringCount", 0);
                                                    Log.farm("芭芭农场🌳施肥" + iOptInt + "次[" + strOptString10 + "]");
                                                    Log.other("攒芝麻分🎖️芭芭农场施肥[" + str + "]已施肥" + iOptInt + "次");
                                                } else {
                                                    Log.error(TAG + "GrowthGuideTasks芭芭农场[缺少currentStage]");
                                                }
                                            }
                                        }
                                    }
                                }
                                jSONArray = jSONArrayOptJSONArray;
                                i = i2;
                            }
                            i2 = i + 1;
                            jSONArrayOptJSONArray = jSONArray;
                        }
                    }
                }
            }
        } catch (Throwable th) {
            Log.printStackTrace(TAG + ".handleGrowthGuideTasks", th);
        }
    }

    private String getWuaByReflection() {
        try {
            Class<?> cls = Class.forName("io.github.lazyimmortal.sesame.model.task.antOrchard.AntOrchard");
            Object objNewInstance = cls.getDeclaredConstructor(null).newInstance(null);
            Method declaredMethod = cls.getDeclaredMethod("getWua", null);
            declaredMethod.setAccessible(true);
            return (String) declaredMethod.invoke(objNewInstance, null);
        } catch (ClassNotFoundException e) {
            Log.error("未找到AntOrchard类" + e);
            return "";
        } catch (IllegalAccessException e2) {
            e = e2;
            Log.error("调用getWua方法失败" + e);
            return "";
        } catch (InstantiationException e3) {
            e = e3;
            Log.error("调用getWua方法失败" + e);
            return "";
        } catch (NoSuchMethodException e4) {
            Log.error("未找到getWua方法" + e4);
            return "";
        } catch (InvocationTargetException e5) {
            e = e5;
            Log.error("调用getWua方法失败" + e);
            return "";
        }
    }

    /* JADX WARN: Code duplicated, block: B:126:0x0224  */
    /* JADX WARN: Code duplicated, block: B:141:0x02df  */
    /* JADX WARN: Code duplicated, block: B:144:0x02f5  */
    /* JADX WARN: Code duplicated, block: B:147:0x0301  */
    /* JADX WARN: Code duplicated, block: B:149:0x030b  */
    /* JADX WARN: Code duplicated, block: B:150:0x0318  */
    /* JADX WARN: Code duplicated, block: B:154:0x0327  */
    /* JADX WARN: Code duplicated, block: B:156:0x0334  */
    /* JADX WARN: Code duplicated, block: B:158:0x033a  */
    /* JADX WARN: Code duplicated, block: B:159:0x033d  */
    /* JADX WARN: Code duplicated, block: B:163:0x0355  */
    /* JADX WARN: Code duplicated, block: B:165:0x0364  */
    /* JADX WARN: Code duplicated, block: B:168:0x0374  */
    /* JADX WARN: Code duplicated, block: B:34:0x009a A[Catch: all -> 0x0108, TRY_LEAVE, TryCatch #4 {all -> 0x0108, blocks: (B:32:0x0092, B:34:0x009a), top: B:179:0x0092 }] */
    /* JADX WARN: Code duplicated, block: B:37:0x00a4 A[Catch: all -> 0x00cb, TRY_LEAVE, TryCatch #6 {all -> 0x00cb, blocks: (B:35:0x009e, B:37:0x00a4), top: B:183:0x009e }] */
    /* JADX WARN: Code duplicated, block: B:39:0x00ad  */
    /* JADX WARN: Code duplicated, block: B:42:0x00b4 A[Catch: all -> 0x00bd, TRY_LEAVE, TryCatch #16 {all -> 0x00bd, blocks: (B:40:0x00ae, B:42:0x00b4), top: B:203:0x00ae }] */
    /* JADX WARN: Code duplicated, block: B:48:0x00cd  */
    /* JADX WARN: Code duplicated, block: B:52:0x00d8 A[Catch: all -> 0x00f8, TryCatch #12 {all -> 0x00f8, blocks: (B:50:0x00d0, B:52:0x00d8, B:54:0x00de), top: B:195:0x00d0 }] */
    /* JADX WARN: Code duplicated, block: B:56:0x00ef  */
    /* JADX WARN: Instruction removed from duplicated block: B:149:0x030b, please report this as an issue */
    private void sesameInfo() {
        String strOptString;
        String strOptString2;
        Integer numValueOf;
        Integer numValueOf2;
        Integer numValueOf3;
        Integer numValueOf4;
        Integer numValueOf5;
        Integer numValueOf6;
        Integer num;
        Integer numValueOf7;
        Integer num2;
        Integer num3;
        Integer numValueOf8;
        Integer numValueOf9;
        String str;
        Integer num4;
        StringBuilder sb;
        Integer num5;
        StringBuilder sb2;
        StringBuilder sb3;
        String str2;
        String str3;
        Integer num6;
        JSONObject jSONObject;
        JSONObject jSONObjectOptJSONObject;
        JSONObject jSONObjectOptJSONObject2;
        JSONObject jSONObjectOptJSONObject3;
        Integer numValueOf10;
        Integer numValueOf11;
        JSONObject jSONObjectOptJSONObject4;
        try {
            JSONObject jSONObject2 = new JSONObject(AntMemberRpcCall.queryScoreProgress());
            String str4 = TAG;
            if (!MessageUtil.checkSuccess(str4, jSONObject2).booleanValue()) {
                strOptString = "";
                strOptString2 = strOptString;
                numValueOf7 = null;
                num2 = null;
                num3 = null;
                numValueOf8 = null;
                num = null;
                numValueOf9 = null;
            } else {
                numValueOf7 = jSONObject2.has("score") ? Integer.valueOf(jSONObject2.optInt("score")) : null;
                try {
                    JSONObject jSONObjectOptJSONObject5 = jSONObject2.optJSONObject("socialDimension");
                    numValueOf7 = numValueOf7;
                    try {
                        try {
                            if (jSONObjectOptJSONObject5 == null) {
                                strOptString2 = "";
                                numValueOf9 = null;
                            } else {
                                try {
                                    strOptString2 = jSONObjectOptJSONObject5.optString("dimensionName", "");
                                    try {
                                        numValueOf9 = jSONObjectOptJSONObject5.has("currentProgress") ? Integer.valueOf(jSONObjectOptJSONObject5.optInt("currentProgress")) : null;
                                        try {
                                            numValueOf8 = jSONObjectOptJSONObject5.has("targetProgress") ? Integer.valueOf(jSONObjectOptJSONObject5.optInt("targetProgress")) : null;
                                            jSONObjectOptJSONObject3 = jSONObject2.optJSONObject("economicDimension");
                                            if (jSONObjectOptJSONObject3 != null) {
                                                strOptString = "";
                                                numValueOf10 = null;
                                            } else {
                                                strOptString = jSONObjectOptJSONObject3.optString("dimensionName", "");
                                                try {
                                                    if (jSONObjectOptJSONObject3.has("currentProgress")) {
                                                        numValueOf10 = Integer.valueOf(jSONObjectOptJSONObject3.optInt("currentProgress"));
                                                    } else {
                                                        numValueOf10 = null;
                                                    }
                                                    try {
                                                        numValueOf11 = jSONObjectOptJSONObject3.has("targetProgress") ? Integer.valueOf(jSONObjectOptJSONObject3.optInt("targetProgress")) : null;
                                                        jSONObjectOptJSONObject4 = jSONObject2.optJSONObject("newZmScoreGuideInfo");
                                                        if (jSONObjectOptJSONObject4 == null && jSONObjectOptJSONObject4.has("totalCollectProcess")) {
                                                            Integer numValueOf12 = Integer.valueOf(jSONObjectOptJSONObject4.optInt("totalCollectProcess"));
                                                            num3 = numValueOf11;
                                                            numValueOf8 = numValueOf8;
                                                            num2 = numValueOf10;
                                                            numValueOf7 = numValueOf7;
                                                            num = numValueOf12;
                                                        } else {
                                                            num3 = numValueOf11;
                                                            numValueOf8 = numValueOf8;
                                                            num2 = numValueOf10;
                                                            numValueOf7 = numValueOf7;
                                                            num = null;
                                                        }
                                                    } catch (Throwable th) {
                                                        th = th;
                                                        num2 = numValueOf10;
                                                        numValueOf = null;
                                                        numValueOf2 = null;
                                                        numValueOf3 = null;
                                                        numValueOf4 = null;
                                                        numValueOf5 = null;
                                                        numValueOf6 = null;
                                                        num = null;
                                                        num3 = null;
                                                        String str5 = TAG;
                                                        Log.i(str5, "sesameInfo 查询失败:");
                                                        Log.printStackTrace(str5, th);
                                                        numValueOf = numValueOf;
                                                        str = strOptString2;
                                                        num4 = null;
                                                        num5 = num4;
                                                        sb = new StringBuilder("芝麻信用💯[");
                                                        sb.append(UserIdMap.getShowName(UserIdMap.getCurrentUid()));
                                                        sb.append("]芝麻分");
                                                        sb.append(Log.n(numValueOf7));
                                                        sb.append(";");
                                                        sb.append(str);
                                                        sb.append(Log.n(numValueOf9));
                                                        sb.append("/");
                                                        sb.append(Log.n(numValueOf8));
                                                        sb.append(";");
                                                        sb.append(strOptString);
                                                        sb.append(Log.n(num2));
                                                        sb.append("/");
                                                        sb.append(Log.n(num3));
                                                        sb.append(";待攒进度");
                                                        sb.append(Log.n(num));
                                                        sb.append(";");
                                                        if (this.collectSesame.getValue().booleanValue()) {
                                                            sb.append("芝麻粒余额");
                                                            sb.append(Log.n(numValueOf5));
                                                            sb.append(";");
                                                        }
                                                        sb2 = new StringBuilder();
                                                        if (numValueOf6 != null) {
                                                            sb2.append("等级");
                                                            sb2.append(numValueOf6);
                                                        }
                                                        if (numValueOf4 != null) {
                                                            sb2.append("今日累计");
                                                            sb2.append(numValueOf4);
                                                            if (numValueOf3 != null) {
                                                                str3 = "";
                                                            } else {
                                                                str3 = "/" + numValueOf3;
                                                            }
                                                            sb2.append(str3);
                                                            sb2.append("次");
                                                        }
                                                        sb3 = new StringBuilder();
                                                        if (numValueOf2 != null) {
                                                            sb3.append("剩");
                                                            sb3.append(numValueOf2);
                                                            sb3.append("次");
                                                        }
                                                        if (numValueOf != null) {
                                                            if (sb3.length() > 0) {
                                                                str2 = ",";
                                                            } else {
                                                                str2 = r10;
                                                            }
                                                            sb3.append(str2);
                                                            sb3.append("每次");
                                                            sb3.append(numValueOf);
                                                            sb3.append("粒");
                                                        }
                                                        if (sb3.length() > 0) {
                                                            sb2.append("(");
                                                            sb2.append((CharSequence) sb3);
                                                            sb2.append(")");
                                                        }
                                                        if (num5 != null) {
                                                            sb2.append("金币");
                                                            sb2.append(num5);
                                                        }
                                                        if (sb2.length() > 0) {
                                                            sb.append("芝麻炼金");
                                                            sb.append((CharSequence) sb2);
                                                            sb.append(";");
                                                        }
                                                        Log.info(sb.toString());
                                                    }
                                                } catch (Throwable th2) {
                                                    th = th2;
                                                    numValueOf = null;
                                                    numValueOf2 = null;
                                                    numValueOf3 = null;
                                                    numValueOf4 = null;
                                                    numValueOf5 = null;
                                                    numValueOf6 = null;
                                                    num = null;
                                                    num2 = null;
                                                    num3 = null;
                                                    String str6 = TAG;
                                                    Log.i(str6, "sesameInfo 查询失败:");
                                                    Log.printStackTrace(str6, th);
                                                    numValueOf = numValueOf;
                                                    str = strOptString2;
                                                    num4 = null;
                                                    num5 = num4;
                                                    sb = new StringBuilder("芝麻信用💯[");
                                                    sb.append(UserIdMap.getShowName(UserIdMap.getCurrentUid()));
                                                    sb.append("]芝麻分");
                                                    sb.append(Log.n(numValueOf7));
                                                    sb.append(";");
                                                    sb.append(str);
                                                    sb.append(Log.n(numValueOf9));
                                                    sb.append("/");
                                                    sb.append(Log.n(numValueOf8));
                                                    sb.append(";");
                                                    sb.append(strOptString);
                                                    sb.append(Log.n(num2));
                                                    sb.append("/");
                                                    sb.append(Log.n(num3));
                                                    sb.append(";待攒进度");
                                                    sb.append(Log.n(num));
                                                    sb.append(";");
                                                    if (this.collectSesame.getValue().booleanValue()) {
                                                        sb.append("芝麻粒余额");
                                                        sb.append(Log.n(numValueOf5));
                                                        sb.append(";");
                                                    }
                                                    sb2 = new StringBuilder();
                                                    if (numValueOf6 != null) {
                                                        sb2.append("等级");
                                                        sb2.append(numValueOf6);
                                                    }
                                                    if (numValueOf4 != null) {
                                                        sb2.append("今日累计");
                                                        sb2.append(numValueOf4);
                                                        if (numValueOf3 != null) {
                                                            str3 = "";
                                                        } else {
                                                            str3 = "/" + numValueOf3;
                                                        }
                                                        sb2.append(str3);
                                                        sb2.append("次");
                                                    }
                                                    sb3 = new StringBuilder();
                                                    if (numValueOf2 != null) {
                                                        sb3.append("剩");
                                                        sb3.append(numValueOf2);
                                                        sb3.append("次");
                                                    }
                                                    if (numValueOf != null) {
                                                        if (sb3.length() > 0) {
                                                            str2 = ",";
                                                        } else {
                                                            str2 = r10;
                                                        }
                                                        sb3.append(str2);
                                                        sb3.append("每次");
                                                        sb3.append(numValueOf);
                                                        sb3.append("粒");
                                                    }
                                                    if (sb3.length() > 0) {
                                                        sb2.append("(");
                                                        sb2.append((CharSequence) sb3);
                                                        sb2.append(")");
                                                    }
                                                    if (num5 != null) {
                                                        sb2.append("金币");
                                                        sb2.append(num5);
                                                    }
                                                    if (sb2.length() > 0) {
                                                        sb.append("芝麻炼金");
                                                        sb.append((CharSequence) sb2);
                                                        sb.append(";");
                                                    }
                                                    Log.info(sb.toString());
                                                }
                                            }
                                            jSONObjectOptJSONObject4 = jSONObject2.optJSONObject("newZmScoreGuideInfo");
                                            if (jSONObjectOptJSONObject4 == null) {
                                                num3 = numValueOf11;
                                                numValueOf8 = numValueOf8;
                                                num2 = numValueOf10;
                                                numValueOf7 = numValueOf7;
                                                num = null;
                                            } else {
                                                num3 = numValueOf11;
                                                numValueOf8 = numValueOf8;
                                                num2 = numValueOf10;
                                                numValueOf7 = numValueOf7;
                                                num = null;
                                            }
                                        } catch (Throwable th3) {
                                            th = th3;
                                            strOptString = "";
                                            numValueOf7 = numValueOf7;
                                            numValueOf = null;
                                            numValueOf2 = null;
                                            numValueOf3 = null;
                                            numValueOf4 = null;
                                            numValueOf5 = null;
                                            numValueOf6 = null;
                                            num = null;
                                            num2 = null;
                                            num3 = null;
                                            numValueOf8 = null;
                                            String str7 = TAG;
                                            Log.i(str7, "sesameInfo 查询失败:");
                                            Log.printStackTrace(str7, th);
                                            numValueOf = numValueOf;
                                            str = strOptString2;
                                            num4 = null;
                                            num5 = num4;
                                            sb = new StringBuilder("芝麻信用💯[");
                                            sb.append(UserIdMap.getShowName(UserIdMap.getCurrentUid()));
                                            sb.append("]芝麻分");
                                            sb.append(Log.n(numValueOf7));
                                            sb.append(";");
                                            sb.append(str);
                                            sb.append(Log.n(numValueOf9));
                                            sb.append("/");
                                            sb.append(Log.n(numValueOf8));
                                            sb.append(";");
                                            sb.append(strOptString);
                                            sb.append(Log.n(num2));
                                            sb.append("/");
                                            sb.append(Log.n(num3));
                                            sb.append(";待攒进度");
                                            sb.append(Log.n(num));
                                            sb.append(";");
                                            if (this.collectSesame.getValue().booleanValue()) {
                                                sb.append("芝麻粒余额");
                                                sb.append(Log.n(numValueOf5));
                                                sb.append(";");
                                            }
                                            sb2 = new StringBuilder();
                                            if (numValueOf6 != null) {
                                                sb2.append("等级");
                                                sb2.append(numValueOf6);
                                            }
                                            if (numValueOf4 != null) {
                                                sb2.append("今日累计");
                                                sb2.append(numValueOf4);
                                                if (numValueOf3 != null) {
                                                    str3 = "";
                                                } else {
                                                    str3 = "/" + numValueOf3;
                                                }
                                                sb2.append(str3);
                                                sb2.append("次");
                                            }
                                            sb3 = new StringBuilder();
                                            if (numValueOf2 != null) {
                                                sb3.append("剩");
                                                sb3.append(numValueOf2);
                                                sb3.append("次");
                                            }
                                            if (numValueOf != null) {
                                                if (sb3.length() > 0) {
                                                    str2 = ",";
                                                } else {
                                                    str2 = r10;
                                                }
                                                sb3.append(str2);
                                                sb3.append("每次");
                                                sb3.append(numValueOf);
                                                sb3.append("粒");
                                            }
                                            if (sb3.length() > 0) {
                                                sb2.append("(");
                                                sb2.append((CharSequence) sb3);
                                                sb2.append(")");
                                            }
                                            if (num5 != null) {
                                                sb2.append("金币");
                                                sb2.append(num5);
                                            }
                                            if (sb2.length() > 0) {
                                                sb.append("芝麻炼金");
                                                sb.append((CharSequence) sb2);
                                                sb.append(";");
                                            }
                                            Log.info(sb.toString());
                                        }
                                    } catch (Throwable th4) {
                                        th = th4;
                                        strOptString = "";
                                        numValueOf7 = numValueOf7;
                                        numValueOf = null;
                                        numValueOf2 = null;
                                        numValueOf3 = null;
                                        numValueOf4 = null;
                                        numValueOf5 = null;
                                        numValueOf6 = null;
                                        num = null;
                                        num2 = null;
                                        num3 = null;
                                        numValueOf8 = null;
                                        numValueOf9 = null;
                                        String str8 = TAG;
                                        Log.i(str8, "sesameInfo 查询失败:");
                                        Log.printStackTrace(str8, th);
                                        numValueOf = numValueOf;
                                        str = strOptString2;
                                        num4 = null;
                                        num5 = num4;
                                        sb = new StringBuilder("芝麻信用💯[");
                                        sb.append(UserIdMap.getShowName(UserIdMap.getCurrentUid()));
                                        sb.append("]芝麻分");
                                        sb.append(Log.n(numValueOf7));
                                        sb.append(";");
                                        sb.append(str);
                                        sb.append(Log.n(numValueOf9));
                                        sb.append("/");
                                        sb.append(Log.n(numValueOf8));
                                        sb.append(";");
                                        sb.append(strOptString);
                                        sb.append(Log.n(num2));
                                        sb.append("/");
                                        sb.append(Log.n(num3));
                                        sb.append(";待攒进度");
                                        sb.append(Log.n(num));
                                        sb.append(";");
                                        if (this.collectSesame.getValue().booleanValue()) {
                                            sb.append("芝麻粒余额");
                                            sb.append(Log.n(numValueOf5));
                                            sb.append(";");
                                        }
                                        sb2 = new StringBuilder();
                                        if (numValueOf6 != null) {
                                            sb2.append("等级");
                                            sb2.append(numValueOf6);
                                        }
                                        if (numValueOf4 != null) {
                                            sb2.append("今日累计");
                                            sb2.append(numValueOf4);
                                            if (numValueOf3 != null) {
                                                str3 = "";
                                            } else {
                                                str3 = "/" + numValueOf3;
                                            }
                                            sb2.append(str3);
                                            sb2.append("次");
                                        }
                                        sb3 = new StringBuilder();
                                        if (numValueOf2 != null) {
                                            sb3.append("剩");
                                            sb3.append(numValueOf2);
                                            sb3.append("次");
                                        }
                                        if (numValueOf != null) {
                                            if (sb3.length() > 0) {
                                                str2 = ",";
                                            } else {
                                                str2 = r10;
                                            }
                                            sb3.append(str2);
                                            sb3.append("每次");
                                            sb3.append(numValueOf);
                                            sb3.append("粒");
                                        }
                                        if (sb3.length() > 0) {
                                            sb2.append("(");
                                            sb2.append((CharSequence) sb3);
                                            sb2.append(")");
                                        }
                                        if (num5 != null) {
                                            sb2.append("金币");
                                            sb2.append(num5);
                                        }
                                        if (sb2.length() > 0) {
                                            sb.append("芝麻炼金");
                                            sb.append((CharSequence) sb2);
                                            sb.append(";");
                                        }
                                        Log.info(sb.toString());
                                    }
                                } catch (Throwable th5) {
                                    th = th5;
                                    strOptString = "";
                                    strOptString2 = strOptString;
                                }
                            }
                            if (jSONObjectOptJSONObject3 != null) {
                                strOptString = "";
                                numValueOf10 = null;
                            } else {
                                strOptString = jSONObjectOptJSONObject3.optString("dimensionName", "");
                                if (jSONObjectOptJSONObject3.has("currentProgress")) {
                                    numValueOf10 = Integer.valueOf(jSONObjectOptJSONObject3.optInt("currentProgress"));
                                } else {
                                    numValueOf10 = null;
                                }
                                if (jSONObjectOptJSONObject3.has("targetProgress")) {
                                }
                                jSONObjectOptJSONObject4 = jSONObject2.optJSONObject("newZmScoreGuideInfo");
                                if (jSONObjectOptJSONObject4 == null) {
                                    num3 = numValueOf11;
                                    numValueOf8 = numValueOf8;
                                    num2 = numValueOf10;
                                    numValueOf7 = numValueOf7;
                                    num = null;
                                } else {
                                    num3 = numValueOf11;
                                    numValueOf8 = numValueOf8;
                                    num2 = numValueOf10;
                                    numValueOf7 = numValueOf7;
                                    num = null;
                                }
                            }
                            jSONObjectOptJSONObject4 = jSONObject2.optJSONObject("newZmScoreGuideInfo");
                            if (jSONObjectOptJSONObject4 == null) {
                                num3 = numValueOf11;
                                numValueOf8 = numValueOf8;
                                num2 = numValueOf10;
                                numValueOf7 = numValueOf7;
                                num = null;
                            } else {
                                num3 = numValueOf11;
                                numValueOf8 = numValueOf8;
                                num2 = numValueOf10;
                                numValueOf7 = numValueOf7;
                                num = null;
                            }
                        } catch (Throwable th6) {
                            th = th6;
                            num3 = numValueOf11;
                            numValueOf8 = numValueOf8;
                            numValueOf = null;
                            numValueOf2 = null;
                            numValueOf3 = null;
                            numValueOf4 = null;
                            numValueOf5 = null;
                            numValueOf6 = null;
                            num = null;
                            num2 = numValueOf10;
                            numValueOf7 = numValueOf7;
                            String str9 = TAG;
                            Log.i(str9, "sesameInfo 查询失败:");
                            Log.printStackTrace(str9, th);
                            numValueOf = numValueOf;
                            str = strOptString2;
                            num4 = null;
                            num5 = num4;
                            sb = new StringBuilder("芝麻信用💯[");
                            sb.append(UserIdMap.getShowName(UserIdMap.getCurrentUid()));
                            sb.append("]芝麻分");
                            sb.append(Log.n(numValueOf7));
                            sb.append(";");
                            sb.append(str);
                            sb.append(Log.n(numValueOf9));
                            sb.append("/");
                            sb.append(Log.n(numValueOf8));
                            sb.append(";");
                            sb.append(strOptString);
                            sb.append(Log.n(num2));
                            sb.append("/");
                            sb.append(Log.n(num3));
                            sb.append(";待攒进度");
                            sb.append(Log.n(num));
                            sb.append(";");
                            if (this.collectSesame.getValue().booleanValue()) {
                                sb.append("芝麻粒余额");
                                sb.append(Log.n(numValueOf5));
                                sb.append(";");
                            }
                            sb2 = new StringBuilder();
                            if (numValueOf6 != null) {
                                sb2.append("等级");
                                sb2.append(numValueOf6);
                            }
                            if (numValueOf4 != null) {
                                sb2.append("今日累计");
                                sb2.append(numValueOf4);
                                if (numValueOf3 != null) {
                                    str3 = "";
                                } else {
                                    str3 = "/" + numValueOf3;
                                }
                                sb2.append(str3);
                                sb2.append("次");
                            }
                            sb3 = new StringBuilder();
                            if (numValueOf2 != null) {
                                sb3.append("剩");
                                sb3.append(numValueOf2);
                                sb3.append("次");
                            }
                            if (numValueOf != null) {
                                if (sb3.length() > 0) {
                                    str2 = ",";
                                } else {
                                    str2 = r10;
                                }
                                sb3.append(str2);
                                sb3.append("每次");
                                sb3.append(numValueOf);
                                sb3.append("粒");
                            }
                            if (sb3.length() > 0) {
                                sb2.append("(");
                                sb2.append((CharSequence) sb3);
                                sb2.append(")");
                            }
                            if (num5 != null) {
                                sb2.append("金币");
                                sb2.append(num5);
                            }
                            if (sb2.length() > 0) {
                                sb.append("芝麻炼金");
                                sb.append((CharSequence) sb2);
                                sb.append(";");
                            }
                            Log.info(sb.toString());
                        }
                        jSONObjectOptJSONObject3 = jSONObject2.optJSONObject("economicDimension");
                    } catch (Throwable th7) {
                        th = th7;
                        strOptString = "";
                    }
                } catch (Throwable th8) {
                    th = th8;
                    strOptString = "";
                    strOptString2 = strOptString;
                }
            }
            try {
                try {
                    if (this.collectSesame.getValue().booleanValue()) {
                        num6 = numValueOf7;
                        try {
                            JSONObject jSONObject3 = new JSONObject(AntMemberRpcCall.queryHome());
                            TimeUtil.sleep(300L);
                            if (MessageUtil.checkResultCode(str4, jSONObject3).booleanValue() && (jSONObjectOptJSONObject2 = jSONObject3.optJSONObject("pointEntryVO")) != null && jSONObjectOptJSONObject2.has("pointAmount")) {
                                numValueOf5 = Integer.valueOf(jSONObjectOptJSONObject2.optInt("pointAmount"));
                            }
                            jSONObject = new JSONObject(AlchemyRpcCall.queryHome());
                            TimeUtil.sleep(300L);
                            if (!MessageUtil.checkResultCode(str4, jSONObject).booleanValue() && (jSONObjectOptJSONObject = jSONObject.optJSONObject("data")) != null) {
                                numValueOf6 = jSONObjectOptJSONObject.has("currentLevel") ? Integer.valueOf(jSONObjectOptJSONObject.optInt("currentLevel")) : null;
                                try {
                                    numValueOf4 = jSONObjectOptJSONObject.has("finishAlchemyCount") ? Integer.valueOf(jSONObjectOptJSONObject.optInt("finishAlchemyCount")) : null;
                                    try {
                                        numValueOf3 = jSONObjectOptJSONObject.has("alchemyDailyCap") ? Integer.valueOf(jSONObjectOptJSONObject.optInt("alchemyDailyCap")) : null;
                                        try {
                                            numValueOf2 = jSONObjectOptJSONObject.has("alchemyNum") ? Integer.valueOf(jSONObjectOptJSONObject.optInt("alchemyNum")) : null;
                                            try {
                                                numValueOf = jSONObjectOptJSONObject.has("alchemyCostZml") ? Integer.valueOf(jSONObjectOptJSONObject.optInt("alchemyCostZml")) : null;
                                                try {
                                                    Integer numValueOf13 = jSONObjectOptJSONObject.has("goldBalance") ? Integer.valueOf(jSONObjectOptJSONObject.optInt("goldBalance")) : null;
                                                    num4 = numValueOf13;
                                                    num = num;
                                                    str = strOptString2;
                                                    numValueOf7 = num6;
                                                } catch (Throwable th9) {
                                                    th = th9;
                                                    num = num;
                                                    numValueOf7 = num6;
                                                    String str10 = TAG;
                                                    Log.i(str10, "sesameInfo 查询失败:");
                                                    Log.printStackTrace(str10, th);
                                                    numValueOf = numValueOf;
                                                    str = strOptString2;
                                                    num4 = null;
                                                }
                                            } catch (Throwable th10) {
                                                th = th10;
                                                num = num;
                                                numValueOf7 = num6;
                                                numValueOf = null;
                                            }
                                        } catch (Throwable th11) {
                                            th = th11;
                                            num = num;
                                            numValueOf7 = num6;
                                            numValueOf = null;
                                            numValueOf2 = null;
                                        }
                                    } catch (Throwable th12) {
                                        th = th12;
                                        num = num;
                                        numValueOf7 = num6;
                                        numValueOf = null;
                                        numValueOf2 = null;
                                        numValueOf3 = null;
                                    }
                                } catch (Throwable th13) {
                                    th = th13;
                                    num = num;
                                    numValueOf7 = num6;
                                    numValueOf = null;
                                    numValueOf2 = null;
                                    numValueOf3 = null;
                                    numValueOf4 = null;
                                }
                                num5 = num4;
                                sb = new StringBuilder("芝麻信用💯[");
                                sb.append(UserIdMap.getShowName(UserIdMap.getCurrentUid()));
                                sb.append("]芝麻分");
                                sb.append(Log.n(numValueOf7));
                                sb.append(";");
                                sb.append(str);
                                sb.append(Log.n(numValueOf9));
                                sb.append("/");
                                sb.append(Log.n(numValueOf8));
                                sb.append(";");
                                sb.append(strOptString);
                                sb.append(Log.n(num2));
                                sb.append("/");
                                sb.append(Log.n(num3));
                                sb.append(";待攒进度");
                                sb.append(Log.n(num));
                                sb.append(";");
                                if (this.collectSesame.getValue().booleanValue()) {
                                    sb.append("芝麻粒余额");
                                    sb.append(Log.n(numValueOf5));
                                    sb.append(";");
                                }
                                sb2 = new StringBuilder();
                                if (numValueOf6 != null) {
                                    sb2.append("等级");
                                    sb2.append(numValueOf6);
                                }
                                if (numValueOf4 != null) {
                                    sb2.append("今日累计");
                                    sb2.append(numValueOf4);
                                    if (numValueOf3 != null) {
                                        str3 = "";
                                    } else {
                                        str3 = "/" + numValueOf3;
                                    }
                                    sb2.append(str3);
                                    sb2.append("次");
                                }
                                sb3 = new StringBuilder();
                                if (numValueOf2 != null) {
                                    sb3.append("剩");
                                    sb3.append(numValueOf2);
                                    sb3.append("次");
                                }
                                if (numValueOf != null) {
                                    if (sb3.length() > 0) {
                                        str2 = ",";
                                    } else {
                                        str2 = r10;
                                    }
                                    sb3.append(str2);
                                    sb3.append("每次");
                                    sb3.append(numValueOf);
                                    sb3.append("粒");
                                }
                                if (sb3.length() > 0) {
                                    sb2.append("(");
                                    sb2.append((CharSequence) sb3);
                                    sb2.append(")");
                                }
                                if (num5 != null) {
                                    sb2.append("金币");
                                    sb2.append(num5);
                                }
                                if (sb2.length() > 0) {
                                    sb.append("芝麻炼金");
                                    sb.append((CharSequence) sb2);
                                    sb.append(";");
                                }
                                Log.info(sb.toString());
                            }
                            numValueOf = null;
                            numValueOf2 = null;
                            numValueOf3 = null;
                            numValueOf4 = null;
                            numValueOf6 = null;
                            num4 = numValueOf13;
                            num = num;
                            str = strOptString2;
                            numValueOf7 = num6;
                        } catch (Throwable th14) {
                            th = th14;
                            numValueOf7 = num6;
                            numValueOf = null;
                            numValueOf2 = null;
                            numValueOf3 = null;
                            numValueOf4 = null;
                            numValueOf5 = null;
                            numValueOf6 = null;
                            String str11 = TAG;
                            Log.i(str11, "sesameInfo 查询失败:");
                            Log.printStackTrace(str11, th);
                            numValueOf = numValueOf;
                            str = strOptString2;
                            num4 = null;
                            num5 = num4;
                            sb = new StringBuilder("芝麻信用💯[");
                            sb.append(UserIdMap.getShowName(UserIdMap.getCurrentUid()));
                            sb.append("]芝麻分");
                            sb.append(Log.n(numValueOf7));
                            sb.append(";");
                            sb.append(str);
                            sb.append(Log.n(numValueOf9));
                            sb.append("/");
                            sb.append(Log.n(numValueOf8));
                            sb.append(";");
                            sb.append(strOptString);
                            sb.append(Log.n(num2));
                            sb.append("/");
                            sb.append(Log.n(num3));
                            sb.append(";待攒进度");
                            sb.append(Log.n(num));
                            sb.append(";");
                            if (this.collectSesame.getValue().booleanValue()) {
                                sb.append("芝麻粒余额");
                                sb.append(Log.n(numValueOf5));
                                sb.append(";");
                            }
                            sb2 = new StringBuilder();
                            if (numValueOf6 != null) {
                                sb2.append("等级");
                                sb2.append(numValueOf6);
                            }
                            if (numValueOf4 != null) {
                                sb2.append("今日累计");
                                sb2.append(numValueOf4);
                                if (numValueOf3 != null) {
                                    str3 = "";
                                } else {
                                    str3 = "/" + numValueOf3;
                                }
                                sb2.append(str3);
                                sb2.append("次");
                            }
                            sb3 = new StringBuilder();
                            if (numValueOf2 != null) {
                                sb3.append("剩");
                                sb3.append(numValueOf2);
                                sb3.append("次");
                            }
                            if (numValueOf != null) {
                                if (sb3.length() > 0) {
                                    str2 = ",";
                                } else {
                                    str2 = r10;
                                }
                                sb3.append(str2);
                                sb3.append("每次");
                                sb3.append(numValueOf);
                                sb3.append("粒");
                            }
                            if (sb3.length() > 0) {
                                sb2.append("(");
                                sb2.append((CharSequence) sb3);
                                sb2.append(")");
                            }
                            if (num5 != null) {
                                sb2.append("金币");
                                sb2.append(num5);
                            }
                            if (sb2.length() > 0) {
                                sb.append("芝麻炼金");
                                sb.append((CharSequence) sb2);
                                sb.append(";");
                            }
                            Log.info(sb.toString());
                        }
                        num5 = num4;
                        sb = new StringBuilder("芝麻信用💯[");
                        sb.append(UserIdMap.getShowName(UserIdMap.getCurrentUid()));
                        sb.append("]芝麻分");
                        sb.append(Log.n(numValueOf7));
                        sb.append(";");
                        sb.append(str);
                        sb.append(Log.n(numValueOf9));
                        sb.append("/");
                        sb.append(Log.n(numValueOf8));
                        sb.append(";");
                        sb.append(strOptString);
                        sb.append(Log.n(num2));
                        sb.append("/");
                        sb.append(Log.n(num3));
                        sb.append(";待攒进度");
                        sb.append(Log.n(num));
                        sb.append(";");
                        if (this.collectSesame.getValue().booleanValue()) {
                            sb.append("芝麻粒余额");
                            sb.append(Log.n(numValueOf5));
                            sb.append(";");
                        }
                        sb2 = new StringBuilder();
                        if (numValueOf6 != null) {
                            sb2.append("等级");
                            sb2.append(numValueOf6);
                        }
                        if (numValueOf4 != null) {
                            sb2.append("今日累计");
                            sb2.append(numValueOf4);
                            if (numValueOf3 != null) {
                                str3 = "";
                            } else {
                                str3 = "/" + numValueOf3;
                            }
                            sb2.append(str3);
                            sb2.append("次");
                        }
                        sb3 = new StringBuilder();
                        if (numValueOf2 != null) {
                            sb3.append("剩");
                            sb3.append(numValueOf2);
                            sb3.append("次");
                        }
                        if (numValueOf != null) {
                            if (sb3.length() > 0) {
                                str2 = ",";
                            } else {
                                str2 = r10;
                            }
                            sb3.append(str2);
                            sb3.append("每次");
                            sb3.append(numValueOf);
                            sb3.append("粒");
                        }
                        if (sb3.length() > 0) {
                            sb2.append("(");
                            sb2.append((CharSequence) sb3);
                            sb2.append(")");
                        }
                        if (num5 != null) {
                            sb2.append("金币");
                            sb2.append(num5);
                        }
                        if (sb2.length() > 0) {
                            sb.append("芝麻炼金");
                            sb.append((CharSequence) sb2);
                            sb.append(";");
                        }
                        Log.info(sb.toString());
                    }
                    num6 = numValueOf7;
                    jSONObject = new JSONObject(AlchemyRpcCall.queryHome());
                    TimeUtil.sleep(300L);
                    if (!MessageUtil.checkResultCode(str4, jSONObject).booleanValue()) {
                        numValueOf = null;
                        numValueOf2 = null;
                        numValueOf3 = null;
                        numValueOf4 = null;
                        numValueOf6 = null;
                    } else {
                        numValueOf = null;
                        numValueOf2 = null;
                        numValueOf3 = null;
                        numValueOf4 = null;
                        numValueOf6 = null;
                    }
                    num4 = numValueOf13;
                    num = num;
                    str = strOptString2;
                    numValueOf7 = num6;
                } catch (Throwable th15) {
                    th = th15;
                    num = num;
                    numValueOf7 = num6;
                    numValueOf = null;
                    numValueOf2 = null;
                    numValueOf3 = null;
                    numValueOf4 = null;
                    numValueOf6 = null;
                    String str12 = TAG;
                    Log.i(str12, "sesameInfo 查询失败:");
                    Log.printStackTrace(str12, th);
                    numValueOf = numValueOf;
                    str = strOptString2;
                    num4 = null;
                    num5 = num4;
                    sb = new StringBuilder("芝麻信用💯[");
                    sb.append(UserIdMap.getShowName(UserIdMap.getCurrentUid()));
                    sb.append("]芝麻分");
                    sb.append(Log.n(numValueOf7));
                    sb.append(";");
                    sb.append(str);
                    sb.append(Log.n(numValueOf9));
                    sb.append("/");
                    sb.append(Log.n(numValueOf8));
                    sb.append(";");
                    sb.append(strOptString);
                    sb.append(Log.n(num2));
                    sb.append("/");
                    sb.append(Log.n(num3));
                    sb.append(";待攒进度");
                    sb.append(Log.n(num));
                    sb.append(";");
                    if (this.collectSesame.getValue().booleanValue()) {
                        sb.append("芝麻粒余额");
                        sb.append(Log.n(numValueOf5));
                        sb.append(";");
                    }
                    sb2 = new StringBuilder();
                    if (numValueOf6 != null) {
                        sb2.append("等级");
                        sb2.append(numValueOf6);
                    }
                    if (numValueOf4 != null) {
                        sb2.append("今日累计");
                        sb2.append(numValueOf4);
                        if (numValueOf3 != null) {
                            str3 = "";
                        } else {
                            str3 = "/" + numValueOf3;
                        }
                        sb2.append(str3);
                        sb2.append("次");
                    }
                    sb3 = new StringBuilder();
                    if (numValueOf2 != null) {
                        sb3.append("剩");
                        sb3.append(numValueOf2);
                        sb3.append("次");
                    }
                    if (numValueOf != null) {
                        if (sb3.length() > 0) {
                            str2 = ",";
                        } else {
                            str2 = r10;
                        }
                        sb3.append(str2);
                        sb3.append("每次");
                        sb3.append(numValueOf);
                        sb3.append("粒");
                    }
                    if (sb3.length() > 0) {
                        sb2.append("(");
                        sb2.append((CharSequence) sb3);
                        sb2.append(")");
                    }
                    if (num5 != null) {
                        sb2.append("金币");
                        sb2.append(num5);
                    }
                    if (sb2.length() > 0) {
                        sb.append("芝麻炼金");
                        sb.append((CharSequence) sb2);
                        sb.append(";");
                    }
                    Log.info(sb.toString());
                }
                numValueOf5 = null;
            } catch (Throwable th16) {
                th = th16;
            }
        } catch (Throwable th17) {
            th = th17;
            strOptString = "";
            strOptString2 = strOptString;
            numValueOf = null;
            numValueOf2 = null;
            numValueOf3 = null;
            numValueOf4 = null;
            numValueOf5 = null;
            numValueOf6 = null;
            num = null;
            numValueOf7 = null;
        }
        num5 = num4;
        sb = new StringBuilder("芝麻信用💯[");
        sb.append(UserIdMap.getShowName(UserIdMap.getCurrentUid()));
        sb.append("]芝麻分");
        sb.append(Log.n(numValueOf7));
        sb.append(";");
        sb.append(str);
        sb.append(Log.n(numValueOf9));
        sb.append("/");
        sb.append(Log.n(numValueOf8));
        sb.append(";");
        sb.append(strOptString);
        sb.append(Log.n(num2));
        sb.append("/");
        sb.append(Log.n(num3));
        sb.append(";待攒进度");
        sb.append(Log.n(num));
        sb.append(";");
        if (this.collectSesame.getValue().booleanValue()) {
            sb.append("芝麻粒余额");
            sb.append(Log.n(numValueOf5));
            sb.append(";");
        }
        sb2 = new StringBuilder();
        if (numValueOf6 != null) {
            sb2.append("等级");
            sb2.append(numValueOf6);
        }
        if (numValueOf4 != null) {
            sb2.append("今日累计");
            sb2.append(numValueOf4);
            if (numValueOf3 != null) {
                str3 = "";
            } else {
                str3 = "/" + numValueOf3;
            }
            sb2.append(str3);
            sb2.append("次");
        }
        sb3 = new StringBuilder();
        if (numValueOf2 != null) {
            sb3.append("剩");
            sb3.append(numValueOf2);
            sb3.append("次");
        }
        if (numValueOf != null) {
            if (sb3.length() > 0) {
                str2 = ",";
            } else {
                str2 = r10;
            }
            sb3.append(str2);
            sb3.append("每次");
            sb3.append(numValueOf);
            sb3.append("粒");
        }
        if (sb3.length() > 0) {
            sb2.append("(");
            sb2.append((CharSequence) sb3);
            sb2.append(")");
        }
        if (num5 != null) {
            sb2.append("金币");
            sb2.append(num5);
        }
        if (sb2.length() > 0) {
            sb.append("芝麻炼金");
            sb.append((CharSequence) sb2);
            sb.append(";");
        }
        Log.info(sb.toString());
    }

    private void collectCreditFeedback() {
        try {
            MessageUtil.checkResultCode(TAG, new JSONObject(AlchemyRpcCall.collectCreditFeedback())).booleanValue();
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "collectCreditFeedback err:");
            Log.printStackTrace(str, th);
        }
    }

    public static void queryAndCollect() {
        JSONObject jSONObjectOptJSONObject;
        JSONArray jSONArrayOptJSONArray;
        String strCollectProgressBall;
        try {
            String strQueryScoreProgress = AntMemberRpcCall.queryScoreProgress();
            if (strQueryScoreProgress != null && !strQueryScoreProgress.isEmpty()) {
                JSONObject jSONObject = new JSONObject(strQueryScoreProgress);
                if (!MessageUtil.checkSuccess(TAG, jSONObject).booleanValue() || (jSONObjectOptJSONObject = jSONObject.optJSONObject("totalWaitProcessVO")) == null || (jSONArrayOptJSONArray = jSONObjectOptJSONObject.optJSONArray("totalProgressIdList")) == null || jSONArrayOptJSONArray.length() == 0 || (strCollectProgressBall = AntMemberRpcCall.collectProgressBall(jSONArrayOptJSONArray)) == null) {
                    return;
                }
                JSONObject jSONObject2 = new JSONObject(strCollectProgressBall);
                int iOptInt = jSONObject2.optInt("collectedAccelerateProgress", -1);
                int iOptInt2 = jSONObject2.optInt("currentAccelerateValue", 0);
                Log.other("攒芝麻分🎁领取#本次加速进度:" + iOptInt + "(总" + jSONObject2.optInt("totalAccelerateProgress", 0) + "%)加速倍率:" + iOptInt2);
            }
        } catch (JSONException e) {
            Log.printStackTrace(TAG + "queryAndCollect JSON err", e);
        } catch (Exception e2) {
            Log.printStackTrace(TAG + "queryAndCollect err", e2);
        }
    }

    private void goldBillCollect(String str) {
        try {
            JSONObject jSONObject = new JSONObject(AntMemberRpcCall.goldBillCollect(str));
            if (!jSONObject.optBoolean("success")) {
                Log.i(TAG + ".goldBillCollect.goldBillCollect", jSONObject.optString("resultDesc"));
                return;
            }
            JSONObject jSONObject2 = jSONObject.getJSONObject("result");
            JSONArray jSONArray = jSONObject2.getJSONArray("collectedList");
            int length = jSONArray.length();
            if (length == 0) {
                return;
            }
            for (int i = 0; i < length; i++) {
                Log.other("黄金票🙈[" + jSONArray.getString(i) + "]");
            }
            Log.other("黄金票🏦本次总共获得[" + JsonUtil.getValueByPath(jSONObject2, "collectedCamp.amount") + "]");
        } catch (Throwable th) {
            String str2 = TAG;
            Log.i(str2, "signIn err:");
            Log.printStackTrace(str2, th);
        }
    }

    public static void batchReceivePointBall() {
        try {
            JSONObject jSONObject = new JSONObject(AntMemberRpcCall.batchReceivePointBall());
            if (MessageUtil.checkSuccess(TAG, jSONObject).booleanValue()) {
                Log.other("游戏中心🎮批量领取#获得[" + jSONObject.getJSONObject("data").getString("totalAmount") + "玩乐豆]");
            }
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "batchReceivePointBall err:");
            Log.printStackTrace(str, th);
        }
    }

    public static boolean dailySignIn() {
        try {
            JSONObject jSONObject = new JSONObject(AntMemberRpcCall.continueSignIn());
            if (!MessageUtil.checkSuccess(TAG, jSONObject).booleanValue()) {
                return false;
            }
            String string = jSONObject.getJSONObject("data").getJSONObject("autoSignInToastModule").getString("desc");
            Log.other("游戏中心🎮每日签到#获得[" + string.substring(string.indexOf("玩乐豆+") + 4) + "玩乐豆]");
            return true;
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "continueSignIn err:");
            Log.printStackTrace(str, th);
            return false;
        }
    }

    public static void processTask(JSONObject jSONObject) {
        try {
            if ("VIEW".equals(jSONObject.getString("actionType"))) {
                String string = jSONObject.getString("taskId");
                String string2 = jSONObject.getString("subTitle");
                String string3 = jSONObject.getString("taskStatus");
                int i = jSONObject.getInt("prizeAmount");
                if ("NOT_DONE".equals(string3) && jSONObject.getBoolean("needSignUp")) {
                    if (!MessageUtil.checkSuccess(TAG, new JSONObject(AntMemberRpcCall.doTaskSignup(string))).booleanValue()) {
                        return;
                    }
                }
                if (MessageUtil.checkSuccess(TAG, new JSONObject(AntMemberRpcCall.doTaskSend(string))).booleanValue()) {
                    Log.other("游戏中心🎮完成任务[" + string2 + "]#待领[" + i + "玩乐豆]");
                }
            }
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "doTask err:");
            Log.printStackTrace(str, th);
        }
    }

    public static void queryAndProcessTaskList() {
        try {
            JSONObject jSONObject = new JSONObject(AntMemberRpcCall.queryModularTaskList());
            if (MessageUtil.checkSuccess(TAG, jSONObject).booleanValue() && jSONObject.has("data")) {
                JSONArray jSONArray = jSONObject.getJSONObject("data").getJSONArray("taskModuleList");
                for (int i = 0; i < jSONArray.length(); i++) {
                    JSONArray jSONArray2 = jSONArray.getJSONObject(i).getJSONArray("taskList");
                    for (int i2 = 0; i2 < jSONArray2.length(); i2++) {
                        processTask(jSONArray2.getJSONObject(i2));
                    }
                }
            }
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "queryModularTaskList err:");
            Log.printStackTrace(str, th);
        }
    }

    public static void queryTaskList() {
        try {
            JSONObject jSONObject = new JSONObject(AntMemberRpcCall.queryTaskList());
            if (MessageUtil.checkSuccess(TAG, jSONObject).booleanValue() && jSONObject.has("data")) {
                JSONArray jSONArrayOptJSONArray = jSONObject.getJSONObject("data").optJSONObject("gameTaskModule").optJSONArray("gameTaskList");
                for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                    processTask(jSONArrayOptJSONArray.getJSONObject(i));
                }
            }
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "queryModularTaskList err:");
            Log.printStackTrace(str, th);
        }
    }

    public static void queryPointBallList() {
        JSONObject jSONObjectOptJSONObject;
        JSONArray jSONArrayOptJSONArray;
        try {
            JSONObject jSONObject = new JSONObject(ApplicationHook.requestString("com.alipay.gamecenteruprod.biz.rpc.v3.queryPointBallList", "[{}]"));
            if (!MessageUtil.checkSuccess(TAG, jSONObject).booleanValue() || (jSONObjectOptJSONObject = jSONObject.optJSONObject("data")) == null || (jSONArrayOptJSONArray = jSONObjectOptJSONObject.optJSONArray("pointBallList")) == null || jSONArrayOptJSONArray.length() <= 0) {
                return;
            }
            batchReceivePointBall();
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "queryPointBallList err:");
            Log.printStackTrace(str, th);
        }
    }

    public static void checkAndDoSignIn() {
        JSONObject jSONObjectOptJSONObject;
        JSONObject jSONObjectOptJSONObject2;
        if (Status.hasFlagToday("gameCenterSignIn").booleanValue()) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(AntMemberRpcCall.queryPointBallList());
            if (!MessageUtil.checkSuccess(TAG, jSONObject).booleanValue() || (jSONObjectOptJSONObject = jSONObject.optJSONObject("data")) == null || (jSONObjectOptJSONObject2 = jSONObjectOptJSONObject.optJSONObject("signInBallModule")) == null || jSONObjectOptJSONObject2.optBoolean("signInStatus") || !dailySignIn()) {
                return;
            }
            Status.flagToday("gameCenterSignIn");
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "querySignInBall err:");
            Log.printStackTrace(str, th);
        }
    }

    private void memberPointExchangeBenefit() {
        try {
            String currentUid = UserIdMap.getCurrentUid();
            JSONObject jSONObject = new JSONObject(AntMemberRpcCall.queryDeliveryZoneDetail(currentUid, "94000SR2024011106752003"));
            if (MessageUtil.checkResultCode(TAG, jSONObject).booleanValue()) {
                if (!jSONObject.has("entityInfoList")) {
                    Log.record("会员积分[未实名账号无可兑换权益]");
                    return;
                }
                JSONArray jSONArray = jSONObject.getJSONArray("entityInfoList");
                MemberBenefitIdMap.load(currentUid);
                for (int i = 0; i < jSONArray.length(); i++) {
                    JSONObject jSONObject2 = jSONArray.getJSONObject(i).getJSONObject("benefitInfo");
                    JSONObject jSONObject3 = jSONObject2.getJSONObject("pricePresentation");
                    if ("POINT_PAY".equals(jSONObject3.optString("strategyType"))) {
                        String string = jSONObject2.getString("name");
                        String string2 = jSONObject2.getString("benefitId");
                        MemberBenefitIdMap.add(string2, string);
                        if (Status.canMemberPointExchangeBenefitToday(string2).booleanValue() && this.memberPointExchangeBenefitList.getValue().contains(string2) && exchangeBenefit(string2, jSONObject2.getString("itemId")).booleanValue()) {
                            Log.other("会员积分🎐兑换[" + string + "]#花费[" + jSONObject3.getString("point") + "积分]");
                        }
                    }
                }
                MemberBenefitIdMap.save(currentUid);
            }
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "memberPointExchangeBenefit err:");
            Log.printStackTrace(str, th);
        }
    }

    private Boolean exchangeBenefit(String str, String str2) {
        try {
            if (MessageUtil.checkResultCode(TAG, new JSONObject(AntMemberRpcCall.exchangeBenefit(str, str2))).booleanValue()) {
                Status.memberPointExchangeBenefitToday(str);
                return true;
            }
        } catch (Throwable th) {
            String str3 = TAG;
            Log.i(str3, "exchangeBenefit err:");
            Log.printStackTrace(str3, th);
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:105:0x0248 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:116:0x02ac A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:61:0x01b0 A[Catch: all -> 0x0313, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x0313, blocks: (B:28:0x0081, B:31:0x0095, B:35:0x00b0, B:85:0x02b3, B:36:0x00f3, B:38:0x0100, B:41:0x010a, B:44:0x0112, B:46:0x011c, B:48:0x0122, B:51:0x013a, B:53:0x0157, B:54:0x0176, B:61:0x01b0, B:64:0x01d1, B:66:0x01e2, B:68:0x0204, B:70:0x0228, B:69:0x020f, B:71:0x022e, B:74:0x0249, B:75:0x024e, B:77:0x0254, B:83:0x02ac, B:80:0x0267, B:82:0x028d, B:55:0x017f, B:57:0x0185, B:58:0x01a8, B:86:0x02be, B:89:0x02db, B:91:0x02e5, B:93:0x02f8), top: B:101:0x0081 }] */
    /* JADX WARN: Code duplicated, block: B:64:0x01d1 A[Catch: all -> 0x0313, TRY_ENTER, TryCatch #0 {all -> 0x0313, blocks: (B:28:0x0081, B:31:0x0095, B:35:0x00b0, B:85:0x02b3, B:36:0x00f3, B:38:0x0100, B:41:0x010a, B:44:0x0112, B:46:0x011c, B:48:0x0122, B:51:0x013a, B:53:0x0157, B:54:0x0176, B:61:0x01b0, B:64:0x01d1, B:66:0x01e2, B:68:0x0204, B:70:0x0228, B:69:0x020f, B:71:0x022e, B:74:0x0249, B:75:0x024e, B:77:0x0254, B:83:0x02ac, B:80:0x0267, B:82:0x028d, B:55:0x017f, B:57:0x0185, B:58:0x01a8, B:86:0x02be, B:89:0x02db, B:91:0x02e5, B:93:0x02f8), top: B:101:0x0081 }] */
    /* JADX WARN: Code duplicated, block: B:66:0x01e2 A[Catch: all -> 0x0313, TryCatch #0 {all -> 0x0313, blocks: (B:28:0x0081, B:31:0x0095, B:35:0x00b0, B:85:0x02b3, B:36:0x00f3, B:38:0x0100, B:41:0x010a, B:44:0x0112, B:46:0x011c, B:48:0x0122, B:51:0x013a, B:53:0x0157, B:54:0x0176, B:61:0x01b0, B:64:0x01d1, B:66:0x01e2, B:68:0x0204, B:70:0x0228, B:69:0x020f, B:71:0x022e, B:74:0x0249, B:75:0x024e, B:77:0x0254, B:83:0x02ac, B:80:0x0267, B:82:0x028d, B:55:0x017f, B:57:0x0185, B:58:0x01a8, B:86:0x02be, B:89:0x02db, B:91:0x02e5, B:93:0x02f8), top: B:101:0x0081 }] */
    /* JADX WARN: Code duplicated, block: B:67:0x0203  */
    /* JADX WARN: Code duplicated, block: B:69:0x020f A[Catch: all -> 0x0313, TryCatch #0 {all -> 0x0313, blocks: (B:28:0x0081, B:31:0x0095, B:35:0x00b0, B:85:0x02b3, B:36:0x00f3, B:38:0x0100, B:41:0x010a, B:44:0x0112, B:46:0x011c, B:48:0x0122, B:51:0x013a, B:53:0x0157, B:54:0x0176, B:61:0x01b0, B:64:0x01d1, B:66:0x01e2, B:68:0x0204, B:70:0x0228, B:69:0x020f, B:71:0x022e, B:74:0x0249, B:75:0x024e, B:77:0x0254, B:83:0x02ac, B:80:0x0267, B:82:0x028d, B:55:0x017f, B:57:0x0185, B:58:0x01a8, B:86:0x02be, B:89:0x02db, B:91:0x02e5, B:93:0x02f8), top: B:101:0x0081 }] */
    /* JADX WARN: Code duplicated, block: B:74:0x0249 A[Catch: all -> 0x0313, TryCatch #0 {all -> 0x0313, blocks: (B:28:0x0081, B:31:0x0095, B:35:0x00b0, B:85:0x02b3, B:36:0x00f3, B:38:0x0100, B:41:0x010a, B:44:0x0112, B:46:0x011c, B:48:0x0122, B:51:0x013a, B:53:0x0157, B:54:0x0176, B:61:0x01b0, B:64:0x01d1, B:66:0x01e2, B:68:0x0204, B:70:0x0228, B:69:0x020f, B:71:0x022e, B:74:0x0249, B:75:0x024e, B:77:0x0254, B:83:0x02ac, B:80:0x0267, B:82:0x028d, B:55:0x017f, B:57:0x0185, B:58:0x01a8, B:86:0x02be, B:89:0x02db, B:91:0x02e5, B:93:0x02f8), top: B:101:0x0081 }] */
    /* JADX WARN: Code duplicated, block: B:77:0x0254 A[Catch: all -> 0x0313, TryCatch #0 {all -> 0x0313, blocks: (B:28:0x0081, B:31:0x0095, B:35:0x00b0, B:85:0x02b3, B:36:0x00f3, B:38:0x0100, B:41:0x010a, B:44:0x0112, B:46:0x011c, B:48:0x0122, B:51:0x013a, B:53:0x0157, B:54:0x0176, B:61:0x01b0, B:64:0x01d1, B:66:0x01e2, B:68:0x0204, B:70:0x0228, B:69:0x020f, B:71:0x022e, B:74:0x0249, B:75:0x024e, B:77:0x0254, B:83:0x02ac, B:80:0x0267, B:82:0x028d, B:55:0x017f, B:57:0x0185, B:58:0x01a8, B:86:0x02be, B:89:0x02db, B:91:0x02e5, B:93:0x02f8), top: B:101:0x0081 }] */
    /* JADX WARN: Code duplicated, block: B:79:0x0266  */
    /* JADX WARN: Code duplicated, block: B:80:0x0267 A[Catch: all -> 0x0313, TryCatch #0 {all -> 0x0313, blocks: (B:28:0x0081, B:31:0x0095, B:35:0x00b0, B:85:0x02b3, B:36:0x00f3, B:38:0x0100, B:41:0x010a, B:44:0x0112, B:46:0x011c, B:48:0x0122, B:51:0x013a, B:53:0x0157, B:54:0x0176, B:61:0x01b0, B:64:0x01d1, B:66:0x01e2, B:68:0x0204, B:70:0x0228, B:69:0x020f, B:71:0x022e, B:74:0x0249, B:75:0x024e, B:77:0x0254, B:83:0x02ac, B:80:0x0267, B:82:0x028d, B:55:0x017f, B:57:0x0185, B:58:0x01a8, B:86:0x02be, B:89:0x02db, B:91:0x02e5, B:93:0x02f8), top: B:101:0x0081 }] */
    /* JADX WARN: Code duplicated, block: B:82:0x028d A[Catch: all -> 0x0313, TryCatch #0 {all -> 0x0313, blocks: (B:28:0x0081, B:31:0x0095, B:35:0x00b0, B:85:0x02b3, B:36:0x00f3, B:38:0x0100, B:41:0x010a, B:44:0x0112, B:46:0x011c, B:48:0x0122, B:51:0x013a, B:53:0x0157, B:54:0x0176, B:61:0x01b0, B:64:0x01d1, B:66:0x01e2, B:68:0x0204, B:70:0x0228, B:69:0x020f, B:71:0x022e, B:74:0x0249, B:75:0x024e, B:77:0x0254, B:83:0x02ac, B:80:0x0267, B:82:0x028d, B:55:0x017f, B:57:0x0185, B:58:0x01a8, B:86:0x02be, B:89:0x02db, B:91:0x02e5, B:93:0x02f8), top: B:101:0x0081 }] */
    /* JADX WARN: Instruction removed from duplicated block: B:66:0x01e2, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:69:0x020f, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:82:0x028d, please report this as an issue */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v15 */
    /* JADX WARN: Type inference failed for: r5v5 */
    /* JADX WARN: Type inference failed for: r5v6, types: [boolean, int] */
    private void collectSesame() {
        String str;
        String str2;
        String string;
        JSONObject jSONObject;
        JSONArray jSONArray;
        int i;
        JSONObject jSONObject2;
        String string2;
        JSONObject jSONObject3;
        String strFinishSesameTask;
        JSONObject jSONObject4;
        String str3;
        String str4 = "zml";
        String str5 = "needCompleteNum";
        try {
            JSONObject jSONObject5 = new JSONObject(AntMemberRpcCall.queryHome());
            String str6 = TAG;
            if (MessageUtil.checkResultCode(str6, jSONObject5).booleanValue()) {
                if (!jSONObject5.getJSONObject("entrance").optBoolean("openApp")) {
                    Log.other("芝麻信用💌未开通");
                    return;
                }
                JSONObject jSONObject6 = new JSONObject(AntMemberRpcCall.CreditAccumulateStrategyRpcManager());
                TimeUtil.sleep(300L);
                if (MessageUtil.checkResultCode(str6, jSONObject6).booleanValue() && jSONObject6.has("data")) {
                    JSONObject jSONObject7 = jSONObject6.getJSONObject("data");
                    if (jSONObject7.has("toCompleteVOS")) {
                        JSONArray jSONArray2 = jSONObject7.getJSONArray("toCompleteVOS");
                        ?? r5 = 0;
                        int i2 = 0;
                        while (i2 < jSONArray2.length()) {
                            JSONObject jSONObject8 = jSONArray2.getJSONObject(i2);
                            String string3 = jSONObject8.has("title") ? jSONObject8.getString("title") : "未知任务";
                            try {
                                if (this.MemberCreditSesameTaskList.getValue().contains(string3)) {
                                    TaskAlternative.handleGameTask(new TaskAlternative.GameTask("MemberCreditSesameTaskList", string3, jSONObject8.optString("desc", ""), jSONObject8.optString("targetUrl", ""), jSONObject8.optBoolean("finishFlag", r5) ? "FINISHED" : "TODO").bizKey(jSONObject8.optString("templateId")).taskPlayType(jSONObject8.optString("taskPlayType", jSONObject8.optString("taskProdPlayType"))).taskMode(jSONObject8.optString("taskMode")).taskSceneCode(str4).scene(str4, "seasameList").version("new"));
                                } else {
                                    boolean zOptBoolean = jSONObject8.optBoolean("finishFlag", r5);
                                    String strOptString = jSONObject8.optString("actionText", "");
                                    if (!zOptBoolean && !"已完成".equals(strOptString) && jSONObject8.has("templateId")) {
                                        String string4 = jSONObject8.getString("templateId");
                                        int i3 = jSONObject8.has(str5) ? jSONObject8.getInt(str5) : 1;
                                        int iOptInt = jSONObject8.optInt("completedNum", r5);
                                        str = str4;
                                        String str7 = "MemberCreditSesameTaskList";
                                        str2 = str5;
                                        if (!jSONObject8.has("todayFinish")) {
                                            String strJoinSesameTask = AntMemberRpcCall.joinSesameTask(string4);
                                            JSONObject jSONObject9 = new JSONObject(strJoinSesameTask);
                                            MessageUtil.checkResultCodeAndMarkTaskBlackList("MemberCreditSesameTaskList", string3, jSONObject9);
                                            TimeUtil.sleep(200L);
                                            String str8 = TAG;
                                            if (MessageUtil.checkResultCode(str8, jSONObject9).booleanValue()) {
                                                string = jSONObject9.getJSONObject("data").getString("recordId");
                                                while (iOptInt < i3) {
                                                    strFinishSesameTask = AntMemberRpcCall.finishSesameTask(string);
                                                    TimeUtil.sleep(2000L);
                                                    jSONObject4 = new JSONObject(strFinishSesameTask);
                                                    MessageUtil.checkResultCodeAndMarkTaskBlackList(str7, string3, jSONObject4);
                                                    String str9 = str7;
                                                    if (MessageUtil.checkResultCode(TAG, jSONObject4).booleanValue()) {
                                                        StringBuilder sb = new StringBuilder();
                                                        sb.append("芝麻信用💳完成任务[");
                                                        sb.append(string3);
                                                        sb.append("]");
                                                        if (i3 > 1) {
                                                            str3 = "（" + (iOptInt + 1) + "/" + i3 + "）";
                                                        } else {
                                                            str3 = "";
                                                        }
                                                        sb.append(str3);
                                                        Log.other(sb.toString());
                                                    } else {
                                                        Log.error("芝麻信用💳完成任务[" + string3 + "]失败#" + strFinishSesameTask);
                                                    }
                                                    iOptInt++;
                                                    str7 = str9;
                                                }
                                                jSONObject = new JSONObject(AntMemberRpcCall.queryCreditFeedback());
                                                TimeUtil.sleep(300L);
                                                if (!MessageUtil.checkResultCode(TAG, jSONObject).booleanValue()) {
                                                    return;
                                                }
                                                jSONArray = jSONObject.getJSONArray("creditFeedbackVOS");
                                                for (i = 0; i < jSONArray.length(); i++) {
                                                    jSONObject2 = jSONArray.getJSONObject(i);
                                                    if (!"UNCLAIMED".equals(jSONObject2.getString(NotificationCompat.CATEGORY_STATUS))) {
                                                        String string5 = jSONObject2.getString("creditFeedbackId");
                                                        string2 = jSONObject2.getString("potentialSize");
                                                        jSONObject3 = new JSONObject(AntMemberRpcCall.collectCreditFeedback(string5));
                                                        TimeUtil.sleep(300L);
                                                        if (MessageUtil.checkResultCode(TAG, jSONObject3).booleanValue()) {
                                                            Log.other("收芝麻粒🙇🏻\u200d♂️领取[" + string3 + "]奖励[芝麻粒*" + string2 + "]");
                                                        }
                                                    }
                                                }
                                            } else {
                                                Log.error(str8 + "芝麻信用💳领取任务[" + string3 + "]失败#" + strJoinSesameTask);
                                            }
                                        } else if (jSONObject8.has("recordId")) {
                                            string = jSONObject8.getString("recordId");
                                            while (iOptInt < i3) {
                                                strFinishSesameTask = AntMemberRpcCall.finishSesameTask(string);
                                                TimeUtil.sleep(2000L);
                                                jSONObject4 = new JSONObject(strFinishSesameTask);
                                                MessageUtil.checkResultCodeAndMarkTaskBlackList(str7, string3, jSONObject4);
                                                String str10 = str7;
                                                if (MessageUtil.checkResultCode(TAG, jSONObject4).booleanValue()) {
                                                    StringBuilder sb2 = new StringBuilder();
                                                    sb2.append("芝麻信用💳完成任务[");
                                                    sb2.append(string3);
                                                    sb2.append("]");
                                                    if (i3 > 1) {
                                                        str3 = "（" + (iOptInt + 1) + "/" + i3 + "）";
                                                    } else {
                                                        str3 = "";
                                                    }
                                                    sb2.append(str3);
                                                    Log.other(sb2.toString());
                                                } else {
                                                    Log.error("芝麻信用💳完成任务[" + string3 + "]失败#" + strFinishSesameTask);
                                                }
                                                iOptInt++;
                                                str7 = str10;
                                            }
                                            jSONObject = new JSONObject(AntMemberRpcCall.queryCreditFeedback());
                                            TimeUtil.sleep(300L);
                                            if (!MessageUtil.checkResultCode(TAG, jSONObject).booleanValue()) {
                                                return;
                                            }
                                            jSONArray = jSONObject.getJSONArray("creditFeedbackVOS");
                                            while (i < jSONArray.length()) {
                                                jSONObject2 = jSONArray.getJSONObject(i);
                                                if (!"UNCLAIMED".equals(jSONObject2.getString(NotificationCompat.CATEGORY_STATUS))) {
                                                    String string6 = jSONObject2.getString("creditFeedbackId");
                                                    string2 = jSONObject2.getString("potentialSize");
                                                    jSONObject3 = new JSONObject(AntMemberRpcCall.collectCreditFeedback(string6));
                                                    TimeUtil.sleep(300L);
                                                    if (MessageUtil.checkResultCode(TAG, jSONObject3).booleanValue()) {
                                                        Log.other("收芝麻粒🙇🏻\u200d♂️领取[" + string3 + "]奖励[芝麻粒*" + string2 + "]");
                                                    }
                                                }
                                            }
                                        } else {
                                            Log.error(TAG + "芝麻信用💳任务[" + string3 + "未获取到]recordId#" + jSONObject8);
                                        }
                                    }
                                    i2++;
                                    str4 = str;
                                    str5 = str2;
                                    r5 = 0;
                                }
                                str = str4;
                                str2 = str5;
                                i2++;
                                str4 = str;
                                str5 = str2;
                                r5 = 0;
                            } catch (Throwable th) {
                                th = th;
                                Log.printStackTrace(TAG, th);
                                return;
                            }
                        }
                        JSONObject jSONObject10 = new JSONObject(AntMemberRpcCall.queryCreditFeedback());
                        TimeUtil.sleep(300L);
                        String str11 = TAG;
                        if (MessageUtil.checkResultCode(str11, jSONObject10).booleanValue() && jSONObject10.getJSONArray("creditFeedbackVOS").length() != 0) {
                            JSONObject jSONObject11 = new JSONObject(AntMemberRpcCall.collectAllCreditFeedback());
                            if (MessageUtil.checkResultCode(str11, jSONObject11).booleanValue()) {
                                Log.other("收芝麻粒🙇🏻\u200d♂️[一键收取]" + jSONObject11.optString("resultCode"));
                            }
                        }
                    }
                }
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    /* JADX WARN: Code duplicated, block: B:105:0x024c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:51:0x014c A[Catch: all -> 0x026e, TRY_ENTER, TRY_LEAVE, TryCatch #1 {all -> 0x026e, blocks: (B:25:0x0065, B:28:0x0075, B:30:0x007d, B:33:0x008d, B:35:0x009b, B:38:0x00ab, B:41:0x00cc, B:43:0x00eb, B:44:0x010a, B:51:0x014c, B:54:0x016b, B:56:0x017c, B:58:0x019e, B:59:0x01ab, B:61:0x01c7, B:63:0x01e1, B:65:0x01e7, B:66:0x01ec, B:68:0x01f2, B:74:0x024c, B:71:0x0207, B:73:0x022d, B:45:0x0119, B:47:0x0121, B:48:0x0144, B:75:0x024f), top: B:91:0x0065 }] */
    /* JADX WARN: Code duplicated, block: B:54:0x016b A[Catch: all -> 0x026e, TRY_ENTER, TryCatch #1 {all -> 0x026e, blocks: (B:25:0x0065, B:28:0x0075, B:30:0x007d, B:33:0x008d, B:35:0x009b, B:38:0x00ab, B:41:0x00cc, B:43:0x00eb, B:44:0x010a, B:51:0x014c, B:54:0x016b, B:56:0x017c, B:58:0x019e, B:59:0x01ab, B:61:0x01c7, B:63:0x01e1, B:65:0x01e7, B:66:0x01ec, B:68:0x01f2, B:74:0x024c, B:71:0x0207, B:73:0x022d, B:45:0x0119, B:47:0x0121, B:48:0x0144, B:75:0x024f), top: B:91:0x0065 }] */
    /* JADX WARN: Code duplicated, block: B:56:0x017c A[Catch: all -> 0x026e, TryCatch #1 {all -> 0x026e, blocks: (B:25:0x0065, B:28:0x0075, B:30:0x007d, B:33:0x008d, B:35:0x009b, B:38:0x00ab, B:41:0x00cc, B:43:0x00eb, B:44:0x010a, B:51:0x014c, B:54:0x016b, B:56:0x017c, B:58:0x019e, B:59:0x01ab, B:61:0x01c7, B:63:0x01e1, B:65:0x01e7, B:66:0x01ec, B:68:0x01f2, B:74:0x024c, B:71:0x0207, B:73:0x022d, B:45:0x0119, B:47:0x0121, B:48:0x0144, B:75:0x024f), top: B:91:0x0065 }] */
    /* JADX WARN: Code duplicated, block: B:57:0x019d  */
    /* JADX WARN: Code duplicated, block: B:68:0x01f2 A[Catch: all -> 0x026e, TryCatch #1 {all -> 0x026e, blocks: (B:25:0x0065, B:28:0x0075, B:30:0x007d, B:33:0x008d, B:35:0x009b, B:38:0x00ab, B:41:0x00cc, B:43:0x00eb, B:44:0x010a, B:51:0x014c, B:54:0x016b, B:56:0x017c, B:58:0x019e, B:59:0x01ab, B:61:0x01c7, B:63:0x01e1, B:65:0x01e7, B:66:0x01ec, B:68:0x01f2, B:74:0x024c, B:71:0x0207, B:73:0x022d, B:45:0x0119, B:47:0x0121, B:48:0x0144, B:75:0x024f), top: B:91:0x0065 }] */
    /* JADX WARN: Code duplicated, block: B:70:0x0204  */
    /* JADX WARN: Code duplicated, block: B:71:0x0207 A[Catch: all -> 0x026e, TryCatch #1 {all -> 0x026e, blocks: (B:25:0x0065, B:28:0x0075, B:30:0x007d, B:33:0x008d, B:35:0x009b, B:38:0x00ab, B:41:0x00cc, B:43:0x00eb, B:44:0x010a, B:51:0x014c, B:54:0x016b, B:56:0x017c, B:58:0x019e, B:59:0x01ab, B:61:0x01c7, B:63:0x01e1, B:65:0x01e7, B:66:0x01ec, B:68:0x01f2, B:74:0x024c, B:71:0x0207, B:73:0x022d, B:45:0x0119, B:47:0x0121, B:48:0x0144, B:75:0x024f), top: B:91:0x0065 }] */
    /* JADX WARN: Code duplicated, block: B:73:0x022d A[Catch: all -> 0x026e, TryCatch #1 {all -> 0x026e, blocks: (B:25:0x0065, B:28:0x0075, B:30:0x007d, B:33:0x008d, B:35:0x009b, B:38:0x00ab, B:41:0x00cc, B:43:0x00eb, B:44:0x010a, B:51:0x014c, B:54:0x016b, B:56:0x017c, B:58:0x019e, B:59:0x01ab, B:61:0x01c7, B:63:0x01e1, B:65:0x01e7, B:66:0x01ec, B:68:0x01f2, B:74:0x024c, B:71:0x0207, B:73:0x022d, B:45:0x0119, B:47:0x0121, B:48:0x0144, B:75:0x024f), top: B:91:0x0065 }] */
    /* JADX WARN: Code duplicated, block: B:97:0x01c7 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:98:0x01ab A[SYNTHETIC] */
    /* JADX WARN: Instruction removed from duplicated block: B:56:0x017c, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:73:0x022d, please report this as an issue */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v3, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r5v4 */
    private void alchemySesameTasks() {
        String str;
        long j;
        String string;
        JSONObject jSONObject;
        JSONArray jSONArray;
        int i;
        JSONObject jSONObject2;
        String strOptString;
        JSONObject jSONObject3;
        String strFinishSesameTask;
        JSONObject jSONObject4;
        String str2;
        String str3 = "templateId";
        String str4 = "title";
        try {
            JSONObject jSONObject5 = new JSONObject(AntMemberRpcCall.alchemyQueryTasks());
            long j2 = 300;
            TimeUtil.sleep(300L);
            if (MessageUtil.checkResultCode(TAG, jSONObject5).booleanValue() && jSONObject5.has("data")) {
                JSONObject jSONObject6 = jSONObject5.getJSONObject("data");
                if (jSONObject6.has("toCompleteVOS")) {
                    JSONArray jSONArray2 = jSONObject6.getJSONArray("toCompleteVOS");
                    ?? r5 = 0;
                    int i2 = 0;
                    while (i2 < jSONArray2.length()) {
                        JSONObject jSONObject7 = jSONArray2.getJSONObject(i2);
                        String string2 = jSONObject7.has(str4) ? jSONObject7.getString(str4) : "";
                        if (!string2.isEmpty() && jSONObject7.has(str3)) {
                            try {
                                if (!this.MemberCreditSesameTaskList.getValue().contains(string2) && !jSONObject7.optBoolean("finishFlag", r5) && !"已完成".equals(jSONObject7.optString("actionText", ""))) {
                                    if ("SUBSCRIBE_TASK".equals(jSONObject7.optString("bizType")) || "zhuanhua".equals(jSONObject7.optString("gameTaskType"))) {
                                        str = str4;
                                        j = j2;
                                        Log.record("芝麻炼金跳过攒粒任务[" + string2 + "]需真实操作或授权");
                                    } else {
                                        String string3 = jSONObject7.getString(str3);
                                        int iOptInt = jSONObject7.optInt("needCompleteNum", 1);
                                        int iOptInt2 = jSONObject7.optInt("completedNum", r5);
                                        if (!jSONObject7.has("todayFinish")) {
                                            String strJoinSesameGrainTask = AntMemberRpcCall.joinSesameGrainTask(string3);
                                            JSONObject jSONObject8 = new JSONObject(strJoinSesameGrainTask);
                                            MessageUtil.checkResultCodeAndMarkTaskBlackList("MemberCreditSesameTaskList", string2, jSONObject8);
                                            TimeUtil.sleep(200L);
                                            str = str4;
                                            String str5 = TAG;
                                            if (MessageUtil.checkResultCode(str5, jSONObject8).booleanValue()) {
                                                string = jSONObject8.getJSONObject("data").getString("recordId");
                                                AntMemberRpcCall.feedBackSesameGrainTask(string3);
                                                TimeUtil.sleep(200L);
                                                while (true) {
                                                    if (iOptInt2 < iOptInt) {
                                                        strFinishSesameTask = AntMemberRpcCall.finishSesameTask(string);
                                                        TimeUtil.sleep(2000L);
                                                        jSONObject4 = new JSONObject(strFinishSesameTask);
                                                        MessageUtil.checkResultCodeAndMarkTaskBlackList("MemberCreditSesameTaskList", string2, jSONObject4);
                                                        if (MessageUtil.checkResultCode(TAG, jSONObject4).booleanValue()) {
                                                            Log.error("芝麻炼金💳完成攒粒任务[" + string2 + "]失败#" + strFinishSesameTask);
                                                            break;
                                                        }
                                                        StringBuilder sb = new StringBuilder();
                                                        sb.append("芝麻炼金💳完成攒粒任务[");
                                                        sb.append(string2);
                                                        sb.append("]");
                                                        if (iOptInt > 1) {
                                                            str2 = "（" + (iOptInt2 + 1) + "/" + iOptInt + "）";
                                                        } else {
                                                            str2 = "";
                                                        }
                                                        sb.append(str2);
                                                        Log.other(sb.toString());
                                                        iOptInt2++;
                                                    } else {
                                                        jSONObject = new JSONObject(AntMemberRpcCall.queryCreditFeedback());
                                                        TimeUtil.sleep(300L);
                                                        if (MessageUtil.checkResultCode(TAG, jSONObject).booleanValue() || !jSONObject.has("creditFeedbackVOS")) {
                                                            break;
                                                            break;
                                                        }
                                                        jSONArray = jSONObject.getJSONArray("creditFeedbackVOS");
                                                        for (i = 0; i < jSONArray.length(); i++) {
                                                            jSONObject2 = jSONArray.getJSONObject(i);
                                                            if (!"UNCLAIMED".equals(jSONObject2.getString(NotificationCompat.CATEGORY_STATUS))) {
                                                                String string4 = jSONObject2.getString("creditFeedbackId");
                                                                strOptString = jSONObject2.optString("potentialSize");
                                                                jSONObject3 = new JSONObject(AntMemberRpcCall.collectCreditFeedback(string4));
                                                                TimeUtil.sleep(300L);
                                                                if (MessageUtil.checkResultCode(TAG, jSONObject3).booleanValue()) {
                                                                    Log.other("收芝麻粒🙇🏻\u200d♂️领取[" + string2 + "]奖励[芝麻粒*" + strOptString + "]");
                                                                }
                                                            }
                                                        }
                                                        break;
                                                    }
                                                }
                                            } else {
                                                Log.error(str5 + "芝麻炼金💳领取攒粒任务[" + string2 + "]失败#" + strJoinSesameGrainTask);
                                            }
                                        } else {
                                            str = str4;
                                            if (jSONObject7.has("recordId")) {
                                                string = jSONObject7.getString("recordId");
                                                while (true) {
                                                    if (iOptInt2 < iOptInt) {
                                                        strFinishSesameTask = AntMemberRpcCall.finishSesameTask(string);
                                                        TimeUtil.sleep(2000L);
                                                        jSONObject4 = new JSONObject(strFinishSesameTask);
                                                        MessageUtil.checkResultCodeAndMarkTaskBlackList("MemberCreditSesameTaskList", string2, jSONObject4);
                                                        if (MessageUtil.checkResultCode(TAG, jSONObject4).booleanValue()) {
                                                            Log.error("芝麻炼金💳完成攒粒任务[" + string2 + "]失败#" + strFinishSesameTask);
                                                            break;
                                                        }
                                                        StringBuilder sb2 = new StringBuilder();
                                                        sb2.append("芝麻炼金💳完成攒粒任务[");
                                                        sb2.append(string2);
                                                        sb2.append("]");
                                                        if (iOptInt > 1) {
                                                            str2 = "（" + (iOptInt2 + 1) + "/" + iOptInt + "）";
                                                        } else {
                                                            str2 = "";
                                                        }
                                                        sb2.append(str2);
                                                        Log.other(sb2.toString());
                                                        iOptInt2++;
                                                    } else {
                                                        jSONObject = new JSONObject(AntMemberRpcCall.queryCreditFeedback());
                                                        TimeUtil.sleep(300L);
                                                        if (MessageUtil.checkResultCode(TAG, jSONObject).booleanValue()) {
                                                            break;
                                                        }
                                                        jSONArray = jSONObject.getJSONArray("creditFeedbackVOS");
                                                        while (i < jSONArray.length()) {
                                                            jSONObject2 = jSONArray.getJSONObject(i);
                                                            if (!"UNCLAIMED".equals(jSONObject2.getString(NotificationCompat.CATEGORY_STATUS))) {
                                                                String string5 = jSONObject2.getString("creditFeedbackId");
                                                                strOptString = jSONObject2.optString("potentialSize");
                                                                jSONObject3 = new JSONObject(AntMemberRpcCall.collectCreditFeedback(string5));
                                                                TimeUtil.sleep(300L);
                                                                if (MessageUtil.checkResultCode(TAG, jSONObject3).booleanValue()) {
                                                                    Log.other("收芝麻粒🙇🏻\u200d♂️领取[" + string2 + "]奖励[芝麻粒*" + strOptString + "]");
                                                                }
                                                            }
                                                        }
                                                        break;
                                                        break;
                                                    }
                                                }
                                            } else {
                                                Log.error(TAG + "芝麻炼金💳攒粒任务[" + string2 + "]未获取到recordId#" + jSONObject7);
                                            }
                                        }
                                        j = 300;
                                    }
                                }
                                i2++;
                                j2 = j;
                                str3 = str3;
                                str4 = str;
                                r5 = 0;
                            } catch (Throwable th) {
                                th = th;
                            }
                        }
                        str = str4;
                        j = j2;
                        i2++;
                        j2 = j;
                        str3 = str3;
                        str4 = str;
                        r5 = 0;
                    }
                    return;
                }
                return;
                Log.printStackTrace(TAG, th);
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    private void CheckInTaskRpcManager() {
        JSONObject jSONObjectOptJSONObject;
        JSONObject jSONObjectOptJSONObject2;
        if (Status.hasFlagToday("AntMember::zmlCheckIn").booleanValue()) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(AntMemberRpcCall.alchemyQueryCheckIn("zml"));
            String str = TAG;
            if (MessageUtil.checkResultCode(str, jSONObject).booleanValue() && (jSONObjectOptJSONObject = jSONObject.optJSONObject("data")) != null && (jSONObjectOptJSONObject2 = jSONObjectOptJSONObject.optJSONObject("currentDateCheckInTaskVO")) != null) {
                String strOptString = jSONObjectOptJSONObject2.optString(NotificationCompat.CATEGORY_STATUS);
                String strOptString2 = jSONObjectOptJSONObject2.optString("checkInDate");
                if ("CAN_COMPLETE".equals(strOptString) && !strOptString2.isEmpty()) {
                    String strZmCheckInCompleteTask = AntMemberRpcCall.zmCheckInCompleteTask(strOptString2, "zml");
                    try {
                        JSONObject jSONObject2 = new JSONObject(strZmCheckInCompleteTask);
                        if (MessageUtil.checkResultCode(str, jSONObject2).booleanValue()) {
                            JSONObject jSONObjectOptJSONObject3 = jSONObject2.optJSONObject("data");
                            int iOptInt = 0;
                            if (jSONObjectOptJSONObject3 != null) {
                                iOptInt = jSONObjectOptJSONObject3.optInt("zmlNum", jSONObjectOptJSONObject3.optJSONObject("prize") != null ? jSONObjectOptJSONObject3.optJSONObject("prize").optInt("num", 0) : 0);
                            }
                            Log.other("收芝麻粒🙇🏻\u200d♂️领取[每日签到成功]#获得" + iOptInt + "粒");
                        } else {
                            Log.error(".doSesameAlchemy#签到失败:" + strZmCheckInCompleteTask);
                        }
                    } catch (Throwable th) {
                        Log.printStackTrace(TAG + ".doSesameAlchemy.alchemyCheckInComplete", th);
                    }
                }
            }
            Status.flagToday("AntMember::zmlCheckIn");
        } catch (Throwable th2) {
            Log.printStackTrace(TAG + ".doSesameZmlCheckIn", th2);
        }
    }

    private void RecommendTask() {
        try {
            JSONArray jSONArray = new JSONObject(AntMemberRpcCall.queryRecommendTask()).getJSONArray("taskDetailList");
            for (int i = 0; i < jSONArray.length(); i++) {
                JSONObject jSONObject = jSONArray.getJSONObject(i);
                if (jSONObject.optBoolean("canAccess", false)) {
                    JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("taskMaterial");
                    JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject("taskBaseInfo");
                    String strOptString = jSONObjectOptJSONObject.optString("taskCode", "");
                    if ("WELFARE_PLUS_ANT_FOREST".equals(strOptString) || "WELFARE_PLUS_ANT_OCEAN".equals(strOptString)) {
                        if ("WELFARE_PLUS_ANT_FOREST".equals(strOptString)) {
                            AntMemberRpcCall.forestTask();
                            TimeUtil.sleep(500L);
                            AntMemberRpcCall.forestreceiveTaskAward();
                        } else if ("WELFARE_PLUS_ANT_OCEAN".equals(strOptString)) {
                            AntMemberRpcCall.oceanTask();
                            TimeUtil.sleep(500L);
                            AntMemberRpcCall.oceanreceiveTaskAward();
                        }
                        if (jSONObjectOptJSONObject2 != null) {
                            Log.other("我的快递💌完成[" + jSONObjectOptJSONObject2.optString("appletName", "Unknown Applet") + "]");
                        }
                    }
                    if (jSONObjectOptJSONObject != null && jSONObjectOptJSONObject.has("taskId")) {
                        JSONObject jSONObject2 = new JSONObject(AntMemberRpcCall.trigger(jSONObjectOptJSONObject.getString("taskId")));
                        if (jSONObject2.getBoolean("success")) {
                            JSONArray jSONArray2 = jSONObject2.getJSONArray("prizeSendInfo");
                            if (jSONArray2.length() > 0) {
                                Log.other("我的快递💌完成[" + jSONArray2.getJSONObject(0).getJSONObject("extInfo").optString("promoCampName", "Unknown Promo Campaign") + "]");
                            }
                        }
                    }
                }
            }
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "RecommendTask err:");
            Log.printStackTrace(str, th);
        }
    }

    private void OrdinaryTask() {
        try {
            JSONObject jSONObject = new JSONObject(AntMemberRpcCall.queryOrdinaryTask());
            if (jSONObject.getBoolean("success")) {
                JSONArray jSONArray = jSONObject.getJSONArray("taskDetailList");
                for (int i = 0; i < jSONArray.length(); i++) {
                    JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                    String strOptString = jSONObject2.optString("taskId");
                    String strOptString2 = jSONObject2.optString("taskProcessStatus");
                    String strOptString3 = jSONObject2.optString("sendCampTriggerType");
                    if (!"RECEIVE_SUCCESS".equals(strOptString2) && !"EVENT_TRIGGER".equals(strOptString3)) {
                        AntMemberRpcCall.signuptrigger(strOptString);
                        JSONObject jSONObject3 = new JSONObject(AntMemberRpcCall.sendtrigger(strOptString));
                        if (jSONObject3.getBoolean("success")) {
                            Log.other("我的快递💌完成[" + jSONObject3.getJSONArray("prizeSendInfo").getJSONObject(0).getString("prizeName") + "]");
                        } else {
                            Log.i(TAG, "sendtrigger failed for taskId: " + strOptString);
                        }
                        TimeUtil.sleep(1000L);
                    }
                }
            }
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "OrdinaryTask err:");
            Log.printStackTrace(str, th);
        }
    }

    private void signinCalendar() {
        try {
            JSONObject jSONObject = new JSONObject(AntMemberRpcCall.signinCalendar());
            String str = TAG;
            if (MessageUtil.checkSuccess(str, jSONObject).booleanValue() && !jSONObject.optBoolean("isSignInToday")) {
                JSONObject jSONObject2 = new JSONObject(AntMemberRpcCall.openBoxAward());
                if (MessageUtil.checkSuccess(str, jSONObject2).booleanValue()) {
                    int i = jSONObject2.getInt("amount");
                    Log.other("攒消费金💰签到[坚持" + jSONObject2.getInt("consecutiveSignInDays") + "天]#获得[" + i + "消费金]");
                }
            }
        } catch (Throwable th) {
            String str2 = TAG;
            Log.i(str2, "signinCalendar err:");
            Log.printStackTrace(str2, th);
        }
    }
}
