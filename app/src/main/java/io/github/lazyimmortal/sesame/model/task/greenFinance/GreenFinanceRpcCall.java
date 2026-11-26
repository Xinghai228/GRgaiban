package io.github.lazyimmortal.sesame.model.task.greenFinance;

import io.github.lazyimmortal.sesame.hook.ApplicationHook;
import io.github.lazyimmortal.sesame.model.common.rpcCall.BaseTaskRpcCall;
import io.github.lazyimmortal.sesame.util.idMap.UserIdMap;
import org.json.JSONArray;

/* JADX INFO: loaded from: classes.dex */
public class GreenFinanceRpcCall extends BaseTaskRpcCall {
    public static String greenFinanceIndex() {
        return ApplicationHook.requestString("com.alipay.mcaplatformunit.common.mobile.newservice.GreenFinancePageQueryService.indexV2", "[{\"clientVersion\":\"VERSION2\",\"custType\":\"MERCHANT\"}]");
    }

    public static String batchSelfCollect(JSONArray jSONArray) {
        return ApplicationHook.requestString("com.alipay.mcaplatformunit.common.mobile.service.GreenFinancePointCollectService.batchSelfCollect", "[{\"bsnIds\":" + jSONArray + ",\"clientVersion\":\"VERSION2\",\"custType\":\"MERCHANT\",\"uid\":\"" + UserIdMap.getCurrentUid() + "\"}]");
    }

    public static String signInQuery(String str) {
        return ApplicationHook.requestString("com.alipay.loanpromoweb.promo.signin.query", "[{\"cycleCount\":7,\"cycleType\":\"d\",\"extInfo\":{},\"needContinuous\":1,\"sceneId\":\"" + str + "\"}]");
    }

    public static String queryUserTickItem(String str) {
        return ApplicationHook.requestString("com.alipay.mcaplatformunit.common.mobile.newservice.GreenFinanceTickService.queryUserTickItem", "[{\"custType\":\"MERCHANT\",\"firstBehaviorType\":\"" + str + "\",\"uid\":\"" + UserIdMap.getCurrentUid() + "\"}]");
    }

    public static String submitTick(String str, String str2) {
        return ApplicationHook.requestString("com.alipay.mcaplatformunit.common.mobile.newservice.GreenFinanceTickService.submitTick", "[{\"custType\":\"MERCHANT\",\"firstBehaviorType\":\"" + str + "\",\"uid\":\"" + UserIdMap.getCurrentUid() + "\",\"behaviorCode\":\"" + str2 + "\"}]");
    }

    public static String queryExpireMcaPoint(long j) {
        return ApplicationHook.requestString("com.alipay.mcaplatformunit.common.mobile.newservice.GreenFinancePageQueryService.queryExpireMcaPoint", "[{\"custType\":\"MERCHANT\",\"profitType\":\"MYBK_LOAN_DISCOUNT\",\"uid\":\"" + UserIdMap.getCurrentUid() + "\",\"expireDate\":\"" + (System.currentTimeMillis() + (j * 86400000)) + "\"}]");
    }

    public static String queryAllDonationProjectNew() {
        return ApplicationHook.requestString("com.alipay.mcaplatformunit.common.mobile.newservice.GreenFinanceDonationService.queryAllDonationProjectNew", "[{\"custType\":\"MERCHANT\",\"subjectType\":\"ALL_DONATION\",\"uid\":\"" + UserIdMap.getCurrentUid() + "\"}]");
    }

    public static String donation(String str, String str2) {
        return ApplicationHook.requestString("com.alipay.mcaplatformunit.common.mobile.newservice.GreenFinanceDonationService.donation", "[{\"custType\":\"MERCHANT\",\"donationGold\":\"" + str2 + "\",\"uid\":\"" + UserIdMap.getCurrentUid() + "\",\"outbizNo\":\"" + System.currentTimeMillis() + "\",\"projectId\":\"" + str + "\"}]");
    }

    public static String consultProveTaskList() {
        return ApplicationHook.requestString("com.alipay.mcaplatformunit.common.mobile.newservice.GreenFinanceProveTaskService.consultProveTaskList", "[{\"custType\":\"MERCHANT\",\"uid\":\"" + UserIdMap.getCurrentUid() + "\"}]");
    }

    public static String queryPrizes(String str) {
        return ApplicationHook.requestString("com.alipay.loanpromoweb.promo.camp.queryPrizes", "[{\"campIds\":[\"" + str + "\"]}]");
    }

    public static String campTrigger(String str) {
        return ApplicationHook.requestString("com.alipay.loanpromoweb.promo.camp.trigger", "[{\"campId\":\"" + str + "\"}]");
    }

    public static String proveTask(String str, String str2) {
        return ApplicationHook.requestString("com.alipay.mcaplatformunit.common.mobile.newservice.GreenFinanceProveTaskService.proveTask", "[{\"bizType\":\"" + str + "\",\"custType\":\"MERCHANT\",\"imageUrl\":\"" + str2 + "\",\"uid\":\"" + UserIdMap.getCurrentUid() + "\"}]");
    }

    public static String queryProveTaskStatus(String str) {
        return ApplicationHook.requestString("com.alipay.mcaplatformunit.common.mobile.newservice.GreenFinanceProveTaskService.queryProveTaskStatus", "[{\"taskId\":\"" + str + "\",\"custType\":\"MERCHANT\",\"uid\":\"" + UserIdMap.getCurrentUid() + "\"}]");
    }

    public static String queryRankingList(int i) {
        return ApplicationHook.requestString("com.alipay.mcaplatformunit.common.mobile.service.GreenFinanceUserInteractionQueryService.queryRankingList", "[{\"clientVersion\":\"VERSION2\",\"custType\":\"MERCHANT\",\"includeMe\":true,\"onlyRealFriend\":true,\"pageLimit\":10,\"rankingScene\":\"FRIEND\",\"rankingType\":\"OVERALL\",\"startIndex\":" + i + ",\"uid\":\"" + UserIdMap.getCurrentUid() + "\"}]");
    }

    public static String queryGuestIndexPoints(String str) {
        return ApplicationHook.requestString("com.alipay.mcaplatformunit.common.mobile.service.GreenFinanceUserInteractionQueryService.queryGuestIndexPoints", "[{\"clientVersion\":\"VERSION2\",\"custType\":\"MERCHANT\",\"guestCustType\":\"MERCHANT\",\"guestUid\":\"" + str + "\",\"uid\":\"" + UserIdMap.getCurrentUid() + "\"}]");
    }

    public static String batchSteal(JSONArray jSONArray, String str) {
        return ApplicationHook.requestString("com.alipay.mcaplatformunit.common.mobile.service.GreenFinancePointCollectService.batchSteal", "[{\"bsnIds\":" + jSONArray + ",\"clientVersion\":\"VERSION2\",\"collectedCustType\":\"MERCHANT\",\"collectedUid\":\"" + str + "\",\"custType\":\"MERCHANT\",\"uid\":\"" + UserIdMap.getCurrentUid() + "\"}]");
    }
}
