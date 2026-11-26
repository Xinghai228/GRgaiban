package io.github.lazyimmortal.sesame.model.task.antMember;

import io.github.lazyimmortal.sesame.entity.RpcEntity;
import io.github.lazyimmortal.sesame.hook.ApplicationHook;
import io.github.lazyimmortal.sesame.util.RandomUtil;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class AntMemberRpcCall {
    public static final String ANNUAL_REVIEW_APPLY_COMPONENT = "independent_component_task_reward_v2_02888775_independent_component_task_reward_apply";
    public static final String ANNUAL_REVIEW_COMPONENT_PREFIX = "independent_component_task_reward_v2_02888775";
    public static final String ANNUAL_REVIEW_GET_REWARD_COMPONENT = "independent_component_task_reward_v2_02888775_independent_component_task_reward_get_reward";
    public static final String ANNUAL_REVIEW_OPERATION_IDENTIFY = "independent_component_program2025111803036407";
    public static final String ANNUAL_REVIEW_PROCESS_COMPONENT = "independent_component_task_reward_v2_02888775_independent_component_task_reward_process";
    public static final String ANNUAL_REVIEW_QUERY_COMPONENT = "independent_component_task_reward_v2_02888775_independent_component_task_reward_query";

    private static String getUniqueId() {
        return String.valueOf(System.currentTimeMillis()) + RandomUtil.nextLong();
    }

    public static Boolean check() {
        RpcEntity rpcEntityRequestObject = ApplicationHook.requestObject("alipay.antmember.biz.rpc.member.h5.queryPointCert", "[{\"page\":1,\"pageSize\":8}]", 1, 0);
        return Boolean.valueOf((rpcEntityRequestObject == null || rpcEntityRequestObject.getHasError().booleanValue()) ? false : true);
    }

    public static String queryPointCert(int i, int i2) {
        return ApplicationHook.requestString("alipay.antmember.biz.rpc.member.h5.queryPointCert", "[{\"page\":" + i + ",\"pageSize\":" + i2 + "}]");
    }

    public static String receivePointByUser(String str) {
        return ApplicationHook.requestString("alipay.antmember.biz.rpc.member.h5.receivePointByUser", "[{\"certId\":" + str + "}]");
    }

    public static String queryMemberSigninCalendar() {
        return ApplicationHook.requestString("com.alipay.amic.biz.rpc.signin.h5.queryMemberSigninCalendar", "[{\"autoSignIn\":true,\"invitorUserId\":\"\",\"sceneCode\":\"QUERY\"}]");
    }

    public static String signPageTaskList() {
        return ApplicationHook.requestString("alipay.antmember.biz.rpc.membertask.h5.signPageTaskList", "[{\"sourceBusiness\":\"antmember\",\"spaceCode\":\"ant_member_xlight_task\"}]");
    }

    public static String applyTask(String str, Long l) {
        return ApplicationHook.requestString("alipay.antmember.biz.rpc.membertask.h5.applyTask", "[{\"darwinExpParams\":{\"darwinName\":\"" + str + "\"},\"sourcePassMap\":{\"innerSource\":\"\",\"source\":\"myTab\",\"unid\":\"\"},\"taskConfigId\":" + l + "}]");
    }

    public static String executeTask(String str, String str2) {
        return ApplicationHook.requestString("alipay.antmember.biz.rpc.membertask.h5.executeTask", "[{\"bizOutNo\":\"" + (System.currentTimeMillis() - 16000) + "\",\"bizParam\":\"" + str + "\",\"bizSubType\":\"" + str2 + "\",\"bizType\":\"BROWSE\"}]");
    }

    public static String queryAllStatusTaskList() {
        return ApplicationHook.requestString("alipay.antmember.biz.rpc.membertask.h5.queryAllStatusTaskList", "[{\"sourceBusiness\":\"signInAd\"}]");
    }

    public static String goldBillCollect(String str) {
        return ApplicationHook.requestString("com.alipay.wealthgoldtwa.goldbill.v2.index.collect", "[{" + str + "\"trigger\":\"Y\"}]");
    }

    public static String queryConsumeHome() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("tabBubbleDeliverParam", new JSONObject());
            jSONObject.put("tabTypeDeliverParam", new JSONObject());
            return ApplicationHook.requestString("com.alipay.wealthgoldtwa.needle.consume.query", new JSONArray().put(jSONObject).toString());
        } catch (Exception unused) {
            return null;
        }
    }

    public static String submitConsume(int i, String str, int i2) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("exchangeAmount", i);
            jSONObject.put("exchangeMoney", String.format("%.2f", Double.valueOf(((double) i) / 1000.0d)));
            jSONObject.put("prizeType", "GOLD");
            jSONObject.put("productId", str);
            jSONObject.put("bonusAmount", i2);
            return ApplicationHook.requestString("com.alipay.wealthgoldtwa.needle.consume.submit", new JSONArray().put(jSONObject).toString());
        } catch (Exception unused) {
            return null;
        }
    }

    public static String taskQueryPush(String str) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("mode", 1);
            jSONObject.put("taskId", str);
            return ApplicationHook.requestString("com.alipay.wealthgoldtwa.needle.taskQueryPush", new JSONArray().put(jSONObject).toString());
        } catch (Exception unused) {
            return null;
        }
    }

    public static String goldBillTaskTrigger(String str) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("taskId", str);
            return ApplicationHook.requestString("com.alipay.wealthgoldtwa.goldbill.v4.task.trigger", new JSONArray().put(jSONObject).toString());
        } catch (Exception unused) {
            return null;
        }
    }

    public static String queryWelfareHome() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("isResume", true);
            return ApplicationHook.requestString("com.alipay.finaggexpbff.needle.welfareCenter.index", new JSONArray().put(jSONObject).toString());
        } catch (Exception unused) {
            return null;
        }
    }

    public static String welfareCenterTrigger(String str) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("type", str);
            return ApplicationHook.requestString("com.alipay.finaggexpbff.needle.welfareCenter.trigger", new JSONArray().put(jSONObject).toString());
        } catch (Exception unused) {
            return null;
        }
    }

    public static String querySignInBall() {
        return ApplicationHook.requestString("com.alipay.gamecenteruprod.biz.rpc.v3.querySignInBall", "[{\"source\":\"ch_appcenter__chsub_9patch\"}]");
    }

    public static String continueSignIn() {
        return ApplicationHook.requestString("com.alipay.gamecenteruprod.biz.rpc.continueSignIn", "[{\"sceneId\":\"GAME_CENTER\",\"signType\":\"NORMAL_SIGN\"}]");
    }

    public static String queryPointBallList() {
        return ApplicationHook.requestString("com.alipay.gamecenteruprod.biz.rpc.v3.queryPointBallList", "[{\"source\":\"ch_appcenter__chsub_9patch\"}]");
    }

    public static String batchReceivePointBall() {
        return ApplicationHook.requestString("com.alipay.gamecenteruprod.biz.rpc.v3.batchReceivePointBall", "[{}]");
    }

    public static String doTaskSignup(String str) {
        return ApplicationHook.requestString("com.alipay.gamecenteruprod.biz.rpc.v3.doTaskSignup", "[{\"taskId\":\"" + str + "\"}]");
    }

    public static String doTaskSend(String str) {
        return ApplicationHook.requestString("com.alipay.gamecenteruprod.biz.rpc.v3.doTaskSend", "[{\"taskId\":\"" + str + "\"}]");
    }

    public static String queryModularTaskList() {
        return ApplicationHook.requestString("com.alipay.gamecenteruprod.biz.rpc.v3.queryModularTaskList", "[{\"deviceLevel\":\"high\",\"source\":\"ch_appcollect__chsub_my-recentlyUsed\",\"sourceTab\":\"luckydraw\",\"unityDeviceLevel\":\"high\"}]");
    }

    public static String queryTaskList() {
        return ApplicationHook.requestString("com.alipay.gamecenteruprod.biz.rpc.v4.queryTaskList", "[{\"__git\":\"52f2c9969ae\",\"source\":\"ch_alipaysearch__chsub_normal\"}]");
    }

    public static String queryCreditFeedback() {
        return ApplicationHook.requestString("com.antgroup.zmxy.zmcustprod.biz.rpc.home.creditaccumulate.api.CreditAccumulateRpcManager.queryCreditFeedback", "[{\"queryPotential\":false,\"size\":20,\"status\":\"UNCLAIMED\"}]");
    }

    public static String queryHome() {
        return ApplicationHook.requestString("com.antgroup.zmxy.zmcustprod.biz.rpc.home.api.HomeV8RpcManager.queryHome", "[{\"invokeSource\":\"zmHome\",\"miniZmGrayInside\":\"\",\"version\":\"week\"}]");
    }

    public static String queryGrowthBehaviorToDoList() {
        return ApplicationHook.requestString("com.antgroup.zmxy.zmcustprod.biz.rpc.growthbehavior.apiGrowthBehaviorRpcManager.queryToDoList", "[{\"guideBehaviorId\":\"yuebao_7d\",\"invokeVersion\":\"1.0.2025.10.27\",\"switchNewPage\":true}]");
    }

    public static String openBehaviorCollect(String str) {
        return ApplicationHook.requestString("com.antgroup.zmxy.zmcustprod.biz.rpc.growthbehavior.apiGrowthBehaviorRpcManager.openBehaviorCollect", "[{\"behaviorId\":\"" + str + "\"}]");
    }

    public static String queryDailyQuiz(String str) {
        return ApplicationHook.requestString("com.antgroup.zmxy.zmcustprod.biz.rpc.growthtask.api.GrowthTaskRpcManager.queryDailyQuiz", "[{\"behaviorId\":\"" + str + "\"}]");
    }

    public static String pushDailyQuizAnswer(String str, long j, String str2, String str3, String str4) {
        return ApplicationHook.requestString("com.antgroup.zmxy.zmcustprod.biz.rpc.growthtask.api.GrowthTaskRpcManager.pushDailyTask", "[{\"behaviorId\":\"" + str + "\",\"bizDate\":" + j + ",\"extInfo\":" + ("{\"answerId\":\"" + str2 + "\",\"answerStatus\":\"" + str4 + "\",\"questionId\":\"" + str3 + "\"}") + "}]");
    }

    public static String queryScoreProgress() {
        return ApplicationHook.requestString("com.antgroup.zmxy.zmcustprod.biz.rpc.home.api.HomeV8RpcManager.queryScoreProgress", "[{\"needTotalProcess\":\"TRUE\",\"queryGuideInfo\":true,\"switchNewPage\":true}]");
    }

    public static String collectProgressBall(JSONArray jSONArray) {
        if (jSONArray == null || jSONArray.length() == 0) {
            return "{\"success\":false, \"resultView\":\"ballIdList为空\"}";
        }
        return ApplicationHook.requestString("com.antgroup.zmxy.zmcustprod.biz.rpc.growthbehavior.apiGrowthBehaviorRpcManager.collectProgressBall", "[{\"ballIdList\":" + jSONArray.toString() + "}]");
    }

    public static String CreditAccumulateStrategyRpcManager(String str) {
        return ApplicationHook.requestString("com.antgroup.zmxy.zmmemberop.biz.rpc.creditaccumulate.CreditAccumulateStrategyRpcManager.queryListV3", "[{\"chInfo\":\"ch_zhimahome__chsub_zml_doudi\",\"deliverStatus\":\"\",\"deliveryTemplateId\":\"\",\"sceneCode\":\"DAILY_MUST_DO_CARD\",\"searchAddToHomeTask\":true,\"searchGuidePopFlag\":true,\"searchShareAssistTask\":true,\"searchSubscribeTask\":true,\"version\":\"new\"}]");
    }

    public static String collectCreditFeedback(String str) {
        return ApplicationHook.requestString("com.antgroup.zmxy.zmcustprod.biz.rpc.home.creditaccumulate.api.CreditAccumulateRpcManager.collectCreditFeedback", "[{\"collectAll\":false,\"creditFeedbackId\":\"" + str + "\",\"status\":\"UNCLAIMED\"}]");
    }

    public static String promiseQueryHome() {
        return ApplicationHook.requestString("com.antgroup.zmxy.zmmemberop.biz.rpc.promise.PromiseRpcManager.queryHome", null);
    }

    public static String querySingleTemplate(String str) {
        return ApplicationHook.requestString("com.antgroup.zmxy.zmmemberop.biz.rpc.promise.PromiseRpcManager.querySingleTemplate", "[{\"templateId\":\"" + str + "\"}]");
    }

    public static String promiseJoin(JSONObject jSONObject) {
        return ApplicationHook.requestString("com.antgroup.zmxy.zmmemberop.biz.rpc.promise.PromiseRpcManager.join", "[" + jSONObject + "]");
    }

    public static String promisePushActivity(String str) {
        return ApplicationHook.requestString("com.antgroup.zmxy.zmmemberop.biz.rpc.promise.PromiseRpcManager.pushActivity", "[{\"recordId\":\"" + str + "\"}]");
    }

    public static String promiseQueryDetail(String str) {
        return ApplicationHook.requestString("com.antgroup.zmxy.zmmemberop.biz.rpc.promise.PromiseRpcManager.queryDetail", "[{\"recordId\":\"" + str + "\"}]");
    }

    public static String queryDeliveryZoneDetail(String str, String str2) {
        return ApplicationHook.requestString("com.alipay.alipaymember.biz.rpc.config.h5.queryDeliveryZoneDetail", "[{\"cityCode\":\"\",\"deliveryId\":\"" + str2 + "\",\"pageNum\":1,\"pageSize\":18,\"sourcePassMap\":{\"innerSource\":\"\",\"source\":\"myTab\",\"unid\":\"\"},\"topIdList\":[],\"uniqueId\":\"" + (System.currentTimeMillis() + "全积分0and99999999INTELLIGENT_SORT" + str) + "\"}]");
    }

    public static String queryIndexNaviBenefitFlowV2(String str, String str2) {
        return ApplicationHook.requestString("com.alipay.alipaymember.biz.rpc.config.h5.queryIndexNaviBenefitFlowV2", "[\n        {\n            \"adCopyId\": \"\",\n            \"benefitFlowSource\": \"REC\",\n            \"cityCode\": \"\",\n            \"excludeIds\": \"\",\n            \"exposeChannel\": \"antmember\",\n            \"fastTag\": \"\",\n            \"lowerPoint\": 0,\n            \"naviCode\": \"" + str2 + "\",\n            \"pageNum\": 1,\n            \"pageSize\": 50,\n            \"requestSourceInfo\": \"-|feeds\",\n            \"sortStrategy\": \"INTELLIGENT_SORT\",\n            \"sourcePassMap\": {\n                \"innerSource\": \"\",\n                \"source\": \"myTab\",\n                \"unid\": \"\"\n            },\n            \"stickyIdList\": [],\n            \"tagCodeIdx\": -1,\n            \"uniqueId\": \"" + (System.currentTimeMillis() + str2 + "0and99999999INTELLIGENT_SORT" + str) + "\",\n            \"upperPoint\": 99999999,\n            \"withPointRange\": false\n        }\n    ]");
    }

    public static String exchangeBenefit(String str, String str2) {
        return ApplicationHook.requestString("com.alipay.alipaymember.biz.rpc.exchange.h5.exchangeBenefit", "[{\"benefitId\":\"" + str + "\",\"cityCode\":\"\",\"exchangeType\":\"POINT_PAY\",\"itemId\":\"" + str2 + "\",\"miniAppId\":\"\",\"orderSource\":\"\",\"requestId\":\"" + ("requestId" + System.currentTimeMillis()) + "\",\"requestSourceInfo\":\"\",\"sourcePassMap\":{\"alipayClientVersion\":\"" + ApplicationHook.getAlipayVersion().getVersionString() + "\",\"innerSource\":\"\",\"mobileOsType\":\"Android\",\"source\":\"\",\"unid\":\"\"},\"userOutAccount\":\"\"}]");
    }

    public static String queryRecommendTask() {
        return ApplicationHook.requestString("alipay.promoprod.task.listQuery", "[{\"consultAccessFlag\":true,\"extInfo\":{\"componentCode\":\"musi_test\"},\"taskCenInfo\":\"MZVPQ0DScvD6NjaPJzk8iCCWtq%2FRt4kh\"}]");
    }

    public static String trigger(String str) {
        return ApplicationHook.requestString("alipay.promoprod.applet.trigger", "[{\"appletId\":\"" + str + "\",\"taskCenInfo\":\"MZVPQ0DScvD6NjaPJzk8iNRgSSvWpCuA\",\"stageCode\":\"send\"}]");
    }

    public static String queryforestHomePage() {
        return ApplicationHook.requestString("alipay.antforest.forest.h5.queryHomePage", "[{\"activityParam\":{},\"configVersionMap\":{\"wateringBubbleConfig\":\"0\"},\"skipWhackMole\":false,\"source\":\"kuaidivitality\",\"version\":\"20240606\"}]");
    }

    public static String forestTask() {
        return ApplicationHook.requestString("alipay.antforest.forest.h5.queryTaskList", "[{\"extend\":{\"firstTaskType\":\"KUAIDI_VITALITY\"},\"fromAct\":\"home_task_list\",\"source\":\"kuaidivitality\",\"version\":\"20240105\"}]");
    }

    public static String forestreceiveTaskAward() {
        return ApplicationHook.requestString("com.alipay.antiep.receiveTaskAward", "[{\"ignoreLimit\":false,\"requestType\":\"H5\",\"sceneCode\":\"ANTFOREST_VITALITY_TASK\",\"source\":\"ANTFOREST\",\"taskType\":\"KUAIDI_VITALITY\"}]");
    }

    public static String queryoceanHomePage() {
        return ApplicationHook.requestString("alipay.antocean.ocean.h5.queryHomePage", "[{\"firstTaskType\":\"DAOLIU_WODEKUAIDIQUANYI\",\"source\":\"wodekuaidiquanyi\",\"uniqueId\":\"" + getUniqueId() + "\",\"version\":\"20240115\"}]");
    }

    public static String oceanTask() {
        return ApplicationHook.requestString("alipay.antocean.ocean.h5.queryTaskList", "[{\"extend\":{\"firstTaskType\":\"DAOLIU_WODEKUAIDIQUANYI\"},\"fromAct\":\"dynamic_task\",\"sceneCode\":\"ANTOCEAN_TASK\",\"source\":\"wodekuaidiquanyi\",\"uniqueId\":\"" + getUniqueId() + "\",\"version\":\"20240115\"}]");
    }

    public static String oceanreceiveTaskAward() {
        return ApplicationHook.requestString("com.alipay.antiep.receiveTaskAward", "[{\"ignoreLimit\":false,\"requestType\":\"RPC\",\"sceneCode\":\"ANTOCEAN_TASK\",\"source\":\"ANT_FOREST\",\"taskType\":\"DAOLIU_WODEKUAIDIQUANYI\",\"uniqueId\":\"" + getUniqueId() + "\"}]");
    }

    public static String queryOrdinaryTask() {
        return ApplicationHook.requestString("alipay.promoprod.task.listQuery", "[{\"consultAccessFlag\":true,\"taskCenInfo\":\"MZVPQ0DScvD6NjaPJzk8iNRgSSvWpCuA\"}]");
    }

    public static String signuptrigger(String str) {
        return ApplicationHook.requestString("alipay.promoprod.applet.trigger", "[{\"appletId\":\"" + str + "\",\"taskCenInfo\":\"MZVPQ0DScvD6NjaPJzk8iNRgSSvWpCuA\",\"stageCode\":\"signup\"}]");
    }

    public static String sendtrigger(String str) {
        return ApplicationHook.requestString("alipay.promoprod.applet.trigger", "[{\"appletId\":\"" + str + "\",\"taskCenInfo\":\"MZVPQ0DScvD6NjaPJzk8iNRgSSvWpCuA\",\"stageCode\":\"send\"}]");
    }

    public static String signinCalendar() {
        return ApplicationHook.requestString("alipay.mobile.ipsponsorprod.consume.gold.task.signin.calendar", "[{}]");
    }

    public static String openBoxAward() {
        return ApplicationHook.requestString("alipay.mobile.ipsponsorprod.consume.gold.task.openBoxAward", "[{\"actionAwardDetails\":[{\"actionType\":\"date_sign_start\"}],\"bizType\":\"CONSUME_GOLD\",\"boxType\":\"CONSUME_GOLD_SIGN_DATE\",\"clientVersion\":\"6.3.0\",\"timeScaleType\":0,\"userType\":\"new\"}]");
    }

    public static String zmCheckInCompleteTask(String str, String str2) {
        return ApplicationHook.requestString("com.antgroup.zmxy.zmmemberop.biz.rpc.pointtask.CheckInTaskRpcManager.completeTask", "[{\"checkInDate\":\"" + str + "\",\"sceneCode\":\"" + str2 + "\"}]");
    }

    public static String CreditAccumulateStrategyRpcManager() {
        return ApplicationHook.requestString("com.antgroup.zmxy.zmmemberop.biz.rpc.creditaccumulate.CreditAccumulateStrategyRpcManager.queryListV3", "[{}]");
    }

    public static String joinSesameTask(String str) {
        return ApplicationHook.requestString("com.antgroup.zmxy.zmmemberop.biz.rpc.promise.PromiseRpcManager.joinActivity", "[{\"chInfo\":\"seasameList\",\"joinFromOuter\":false,\"templateId\":\"" + str + "\"}]");
    }

    public static String feedBackSesameTask(String str) {
        return ApplicationHook.requestString("com.antgroup.zmxy.zmmemberop.biz.rpc.creditaccumulate.CreditAccumulateStrategyRpcManager.taskFeedback", "[{\"actionType\":\"TO_COMPLETE\",\"templateId\":\"" + str + "\"}]");
    }

    public static String finishSesameTask(String str) {
        return ApplicationHook.requestString("com.antgroup.zmxy.zmmemberop.biz.rpc.promise.PromiseRpcManager.pushActivity", "[{\"recordId\":\"" + str + "\"}]");
    }

    public static String collectAllCreditFeedback() {
        return ApplicationHook.requestString("com.antgroup.zmxy.zmcustprod.biz.rpc.home.creditaccumulate.api.CreditAccumulateRpcManager.collectCreditFeedback", "[{\"collectAll\":true,\"status\":\"UNCLAIMED\"}]");
    }

    public static String alchemyQueryCheckIn(String str) {
        return ApplicationHook.requestString("com.antgroup.zmxy.zmmemberop.biz.rpc.pointtask.CheckInTaskRpcManager.queryTaskLists", "[{\"sceneCode\":\"" + str + "\",\"version\":\"2025-10-22\"}]");
    }

    public static String checkInQueryTaskLists() {
        return ApplicationHook.requestString("com.antgroup.zmxy.zmmemberop.biz.rpc.pointtask.CheckInTaskRpcManager.queryTaskLists", "[{\"version\":\"2025-10-22\"}]");
    }

    public static String checkInCompleteTask(String str) {
        return ApplicationHook.requestString("com.antgroup.zmxy.zmmemberop.biz.rpc.pointtask.CheckInTaskRpcManager.completeTask", "[{\"checkInDate\":\"" + str + "\",\"sceneCode\":\"zml\"}]");
    }

    public static String queryAvailableSesameTask() {
        return ApplicationHook.requestString("com.antgroup.zmxy.zmmemberop.biz.rpc.creditaccumulate.CreditAccumulateStrategyRpcManager.queryListV3", "[{\"chInfo\":\"ch_zmxy_zmlsy__chsub_zmsy_jingangwei_lianjin\",\"deliverStatus\":\"\",\"deliveryTemplateId\":\"\",\"sceneCode\":\"DAILY_MUST_DO_CARD\",\"searchGuidePopFlag\":true,\"searchSubscribeTask\":true,\"version\":\"new\"}]");
    }

    public static String joinSesameTaskNew(String str) {
        return ApplicationHook.requestString("com.antgroup.zmxy.zmmemberop.biz.rpc.promise.PromiseRpcManager.joinActivity", "[{\"chInfo\":\"seasameList\",\"joinFromOuter\":false,\"sceneCode\":\"zml\",\"templateId\":\"" + str + "\"}]");
    }

    public static String feedBackSesameTaskNew(String str) {
        return ApplicationHook.requestString("com.antgroup.zmxy.zmmemberop.biz.rpc.creditaccumulate.CreditAccumulateStrategyRpcManager.taskFeedback", "[{\"actionType\":\"TO_COMPLETE\",\"bizType\":\"LIFE_RECORD\",\"sceneCode\":\"zml\",\"templateId\":\"" + str + "\",\"version\":\"new\"}]");
    }

    public static String joinSesameGrainTask(String str) {
        return ApplicationHook.requestString("com.antgroup.zmxy.zmmemberop.biz.rpc.promise.PromiseRpcManager.joinActivity", "[{\"chInfo\":\"seasameList\",\"joinFromOuter\":false,\"sceneCode\":\"alchemy\",\"templateId\":\"" + str + "\"}]");
    }

    public static String feedBackSesameGrainTask(String str) {
        return ApplicationHook.requestString("com.antgroup.zmxy.zmmemberop.biz.rpc.creditaccumulate.CreditAccumulateStrategyRpcManager.taskFeedback", "[{\"actionType\":\"TO_COMPLETE\",\"bizType\":\"LIFE_RECORD\",\"sceneCode\":\"alchemy\",\"templateId\":\"" + str + "\",\"version\":\"alchemy\"}]");
    }

    public static String alchemyQueryHome() {
        return ApplicationHook.requestString("com.antgroup.zmxy.zmmemberop.biz.rpc.AlchemyRpcManager.queryHome", "[{}]");
    }

    public static String alchemyQueryTasks() {
        return ApplicationHook.requestString("com.antgroup.zmxy.zmmemberop.biz.rpc.creditaccumulate.CreditAccumulateStrategyRpcManager.queryListV3", "[{\"chInfo\":\"\",\"deliverStatus\":\"\",\"deliveryTemplateId\":\"\",\"searchSubscribeTask\":true,\"version\":\"alchemy\"}]");
    }

    public static String alchemyQueryCheckInTasks() {
        return ApplicationHook.requestString("com.antgroup.zmxy.zmmemberop.biz.rpc.pointtask.CheckInTaskRpcManager.queryTaskLists", "[{\"sceneCode\":\"alchemy\",\"version\":\"2025-10-22\"}]");
    }

    public static String completeAlchemyCheckIn(String str) {
        return ApplicationHook.requestString("com.antgroup.zmxy.zmmemberop.biz.rpc.pointtask.CheckInTaskRpcManager.completeTask", "[{\"checkInDate\":\"" + str + "\",\"sceneCode\":\"alchemy\"}]");
    }

    public static String alchemyClaimAward() {
        return ApplicationHook.requestString("com.antgroup.zmxy.zmmemberop.biz.rpc.AlchemyRpcManager.claimAward", "[{}]");
    }

    public static String alchemyQueryTimeLimitedTask() {
        return ApplicationHook.requestString("com.antgroup.zmxy.zmmemberop.biz.rpc.pointtask.TimeLimitedTaskRpcManager.queryTask", "[{}]");
    }

    public static String alchemyCompleteTimeLimitedTask(String str) {
        return ApplicationHook.requestString("com.antgroup.zmxy.zmmemberop.biz.rpc.pointtask.TimeLimitedTaskRpcManager.completeTask", "[{\"templateId\":\"" + str + "\"}]");
    }

    public static String doAlchemy() {
        return ApplicationHook.requestString("com.antgroup.zmxy.zmmemberop.biz.rpc.AlchemyRpcManager.alchemy", "[null]");
    }

    private static String sesameTreeTrigger(String str, String str2) {
        return ApplicationHook.requestString("alipay.promoprod.play.trigger", String.format("[{\"operation\":\"%s\",\"playInfo\":\"%s\",\"refer\":\"%s\",\"extInfo\":%s}]", str, "SwbtxJSo8OOUrymAU%2FHnY2jyFRc%2BkCJ3", "https://render.alipay.com/p/yuyan/180020010001269849/zmTree.html?caprMode=sync&chInfo=chInfo=ch_zmzltf__chsub_xinyongsyyingxiaowei", str2));
    }

    public static String getSesameTreeHomePage() {
        return sesameTreeTrigger("ZHIMA_TREE_HOME_PAGE", "{}");
    }

    public static String getSesameTreeTaskList() {
        return sesameTreeTrigger("RENT_GREEN_TASK_LIST_QUERY", "{\"batchId\":\"\",\"chInfo\":\"ch_zmzltf__chsub_xinyongsyyingxiaowei\"}");
    }

    public static String cleanSesameTreeByClick() {
        return sesameTreeTrigger("ZHIMA_TREE_CLEAN_AND_PUSH", "{\"clickNum\":\"1\",\"treeCode\":\"ZHIMA_TREE\"}");
    }

    public static String finishSesameTreeTask(String str) {
        return sesameTreeTrigger("RENT_GREEN_TASK_FINISH", String.format("{\"chInfo\":\"%s\",\"stageCode\":\"send\",\"taskId\":\"%s\"}", "ch_zmzltf__chsub_xinyongsyyingxiaowei", str));
    }

    public static String receiveSesameTreeTaskReward(String str) {
        return sesameTreeTrigger("RENT_GREEN_TASK_FINISH", String.format("{\"chInfo\":\"%s\",\"stageCode\":\"receive\",\"taskId\":\"%s\"}", "ch_zmzltf__chsub_xinyongsyyingxiaowei", str));
    }

    public static String queryAvailableCollectInsuredGold() {
        return ApplicationHook.requestString("com.alipay.insgiftbff.insgiftMain.queryMultiSceneWaitToGainList", "[{\"entrance\":\"wealth_entry\",\"eventToWaitParamDTO\":{\"giftProdCode\":\"GIFT_UNIVERSAL_COVERAGE\",\"rightNoList\":[\"UNIVERSAL_ACCIDENT\",\"UNIVERSAL_HOSPITAL\",\"UNIVERSAL_OUTPATIENT\",\"UNIVERSAL_SERIOUSNESS\",\"UNIVERSAL_WEALTH\",\"UNIVERSAL_TRANS\",\"UNIVERSAL_FRAUD_LIABILITY\"]},\"helpChildParamDTO\":{\"giftProdCode\":\"GIFT_HEALTH_GOLD_CHILD\",\"rightNoList\":[\"UNIVERSAL_ACCIDENT\",\"UNIVERSAL_HOSPITAL\",\"UNIVERSAL_OUTPATIENT\",\"UNIVERSAL_SERIOUSNESS\",\"UNIVERSAL_WEALTH\",\"UNIVERSAL_TRANS\",\"UNIVERSAL_FRAUD_LIABILITY\"]},\"priorityChannelParamDTO\":{\"giftProdCode\":\"GIFT_UNIVERSAL_COVERAGE\",\"rightNoList\":[\"UNIVERSAL_ACCIDENT\",\"UNIVERSAL_HOSPITAL\",\"UNIVERSAL_OUTPATIENT\",\"UNIVERSAL_SERIOUSNESS\",\"UNIVERSAL_WEALTH\",\"UNIVERSAL_TRANS\",\"UNIVERSAL_FRAUD_LIABILITY\"]},\"signInParamDTO\":{\"giftProdCode\":\"GIFT_UNIVERSAL_COVERAGE\",\"rightNoList\":[\"UNIVERSAL_ACCIDENT\",\"UNIVERSAL_HOSPITAL\",\"UNIVERSAL_OUTPATIENT\",\"UNIVERSAL_SERIOUSNESS\",\"UNIVERSAL_WEALTH\",\"UNIVERSAL_TRANS\",\"UNIVERSAL_FRAUD_LIABILITY\"]}}]");
    }

    public static String collectInsuredGold(JSONObject jSONObject) {
        return ApplicationHook.requestString("com.alipay.insgiftbff.insgiftMain.gainMyAndFamilySumInsured", jSONObject.toString());
    }

    public static String querySignInProcess(String str, String str2) {
        return ApplicationHook.requestString("com.alipay.insmarketingbff.bean.querySignInProcess", "[{\"appletId\":\"" + str + "\",\"scene\":\"" + str2 + "\"}]");
    }

    public static String signInTrigger(String str, String str2) {
        return ApplicationHook.requestString("com.alipay.insmarketingbff.bean.signInTrigger", "[{\"appletId\":\"" + str + "\",\"scene\":\"" + str2 + "\"}]");
    }

    public static String beanExchangeDetail(String str) {
        return ApplicationHook.requestString("com.alipay.insmarketingbff.onestop.planTrigger", "[{\"extParams\":{\"itemId\":\"" + str + "\"},\"planCode\":\"bluebean_onestop\",\"planOperateCode\":\"exchangeDetail\"}]");
    }

    public static String beanExchange(String str, int i) {
        return ApplicationHook.requestString("com.alipay.insmarketingbff.onestop.planTrigger", "[{\"extParams\":{\"itemId\":\"" + str + "\",\"pointAmount\":\"" + Integer.toString(i) + "\"},\"planCode\":\"bluebean_onestop\",\"planOperateCode\":\"exchange\"}]");
    }

    public static String queryUserAccountInfo(String str) {
        return ApplicationHook.requestString("com.alipay.insmarketingbff.point.queryUserAccountInfo", "[{\"channel\":\"HiChat\",\"pointProdCode\":\"" + str + "\",\"pointUnitType\":\"COUNT\"}]");
    }

    public static String annualReviewQueryTasks() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("channel", "share");
            jSONObject.put("cityCode", "110000");
            jSONObject.put("operationParamIdentify", ANNUAL_REVIEW_OPERATION_IDENTIFY);
            jSONObject.put("source", ANNUAL_REVIEW_QUERY_COMPONENT);
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put(ANNUAL_REVIEW_QUERY_COMPONENT, new JSONObject());
            jSONObject.put("components", jSONObject2);
            return ApplicationHook.requestString("alipay.imasp.program.programInvoke", new JSONArray().put(jSONObject).toString());
        } catch (Throwable unused) {
            return null;
        }
    }

    public static String annualReviewApplyTask(String str) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("channel", "share");
            jSONObject.put("cityCode", "110000");
            jSONObject.put("operationParamIdentify", ANNUAL_REVIEW_OPERATION_IDENTIFY);
            jSONObject.put("source", ANNUAL_REVIEW_APPLY_COMPONENT);
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("code", str);
            jSONObject2.put("consultAfterLuckDraw", "false");
            jSONObject2.put("skipLuckDrawConsult", "true");
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put(ANNUAL_REVIEW_APPLY_COMPONENT, jSONObject2);
            jSONObject.put("components", jSONObject3);
            return ApplicationHook.requestString("alipay.imasp.program.programInvoke", new JSONArray().put(jSONObject).toString());
        } catch (Throwable unused) {
            return null;
        }
    }

    public static String annualReviewProcessTask(String str, String str2) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("channel", "share");
            jSONObject.put("cityCode", "110000");
            jSONObject.put("operationParamIdentify", ANNUAL_REVIEW_OPERATION_IDENTIFY);
            jSONObject.put("source", ANNUAL_REVIEW_PROCESS_COMPONENT);
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("code", str);
            jSONObject2.put("recordNo", str2);
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put(ANNUAL_REVIEW_PROCESS_COMPONENT, jSONObject2);
            jSONObject.put("components", jSONObject3);
            return ApplicationHook.requestString("alipay.imasp.program.programInvoke", new JSONArray().put(jSONObject).toString());
        } catch (Throwable unused) {
            return null;
        }
    }

    public static String annualReviewGetReward(String str, String str2) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("channel", "share");
            jSONObject.put("cityCode", "110000");
            jSONObject.put("operationParamIdentify", ANNUAL_REVIEW_OPERATION_IDENTIFY);
            jSONObject.put("source", ANNUAL_REVIEW_GET_REWARD_COMPONENT);
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("code", str);
            jSONObject2.put("consultAfterLuckDraw", "false");
            jSONObject2.put("recordNo", str2);
            jSONObject2.put("skipLuckDrawConsult", "true");
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put(ANNUAL_REVIEW_GET_REWARD_COMPONENT, jSONObject2);
            jSONObject.put("components", jSONObject3);
            return ApplicationHook.requestString("alipay.imasp.program.programInvoke", new JSONArray().put(jSONObject).toString());
        } catch (Throwable unused) {
            return null;
        }
    }
}
