package io.github.lazyimmortal.sesame.model.task.antOrchard;

import android.util.Base64;
import io.github.lazyimmortal.sesame.hook.ApplicationHook;
import io.github.lazyimmortal.sesame.hook.SimplePageManager$$ExternalSyntheticBackport0;
import io.github.lazyimmortal.sesame.util.RandomUtil;
import io.github.lazyimmortal.sesame.util.idMap.UserIdMap;
import java.util.List;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public class AntOrchardRpcCall {
    public static final String VERSION = "20250812.01";

    public static String orchardIndex() {
        return ApplicationHook.requestString("com.alipay.antfarm.orchardIndex", "[{\"inHomepage\":\"true\",\"requestType\":\"NORMAL\",\"sceneCode\":\"ORCHARD\",\"source\":\"ch_appcenter__chsub_9patch\",\"version\":\"20250812.01\"}]");
    }

    public static String mowGrassInfo() {
        return ApplicationHook.requestString("com.alipay.antorchard.mowGrassInfo", "[{\"requestType\":\"NORMAL\",\"sceneCode\":\"ORCHARD\",\"showRanking\":true,\"source\":\"ch_appcenter__chsub_9patch\",\"version\":\"20250812.01\"}]");
    }

    public static String batchHireAnimalRecommend(String str) {
        return ApplicationHook.requestString("com.alipay.antorchard.batchHireAnimalRecommend", "[{\"orchardUserId\":\"" + str + "\",\"requestType\":\"NORMAL\",\"sceneCode\":\"ORCHARD\",\"sceneType\":\"weed\",\"source\":\"ch_appcenter__chsub_9patch\",\"version\":\"20250812.01\"}]");
    }

    public static String batchHireAnimal(List<String> list) {
        return ApplicationHook.requestString("com.alipay.antorchard.batchHireAnimal", "[{\"recommendGroupList\":[" + SimplePageManager$$ExternalSyntheticBackport0.m(",", list) + "],\"requestType\":\"NORMAL\",\"sceneCode\":\"ORCHARD\",\"sceneType\":\"weed\",\"source\":\"ch_appcenter__chsub_9patch\",\"version\":\"20250812.01\"}]");
    }

    public static String extraInfoGet() {
        return ApplicationHook.requestString("com.alipay.antorchard.extraInfoGet", "[{\"from\":\"entry\",\"requestType\":\"NORMAL\",\"sceneCode\":\"FUGUO\",\"source\":\"ch_appcenter__chsub_9patch\",\"version\":\"20250812.01\"}]");
    }

    public static String lazyIndex() {
        return ApplicationHook.requestString("com.alipay.antorchard.orchardLazyIndex", "[{\"appMode\":\"normal\",\"canAddHome\":true,\"currentPlantScene\":\"main\",\"diversionSource\":\"DEFAULT\",\"hasWaitExchange\":true,\"requestType\":\"NORMAL\",\"sceneCode\":\"ORCHARD\",\"source\":\"ch_appcollect__chsub_my-recentlyUsed\",\"version\":\"20250812.01\"}]");
    }

    public static String extraInfoSet() {
        return ApplicationHook.requestString("com.alipay.antorchard.extraInfoSet", "[{\"bizCode\":\"fertilizerPacket\",\"bizParam\":{\"action\":\"queryCollectFertilizerPacket\"},\"requestType\":\"NORMAL\",\"sceneCode\":\"ORCHARD\",\"source\":\"ch_appcenter__chsub_9patch\",\"version\":\"20250812.01\"}]");
    }

    public static String querySubplotsActivity() {
        return ApplicationHook.requestString("com.alipay.antorchard.querySubplotsActivity", "[{\"activityType\":[\"WISH\",\"BATTLE\",\"BATTLE_V2\",\"HELP_FARMER\",\"DEFOLIATION\",\"CAMP_TAKEOVER\"],\"appMode\":\"normal\",\"inHomePage\":false,\"requestType\":\"NORMAL\",\"sceneCode\":\"ORCHARD\",\"source\":\"ch_appcollect__chsub_my-recentlyUsed\",\"version\":\"20250812.01\"}]");
    }

    public static String triggerSubplotsActivity(String str, String str2, String str3) {
        return ApplicationHook.requestString("com.alipay.antorchard.triggerSubplotsActivity", "[{\"activityId\":\"" + str + "\",\"activityType\":\"" + str2 + "\",\"optionKey\":\"" + str3 + "\",\"requestType\":\"NORMAL\",\"sceneCode\":\"ORCHARD\",\"source\":\"ch_appcenter__chsub_9patch\",\"version\":\"20250812.01\"}]");
    }

    public static String receiveOrchardRights(String str, String str2) {
        return ApplicationHook.requestString("com.alipay.antorchard.receiveOrchardRights", "[{\"activityId\":\"" + str + "\",\"activityType\":\"" + str2 + "\",\"requestType\":\"NORMAL\",\"sceneCode\":\"ORCHARD\",\"source\":\"ch_appcenter__chsub_9patch\",\"version\":\"20250812.01\"}]");
    }

    public static String drawLottery() {
        return ApplicationHook.requestString("com.alipay.antorchard.drawLottery", "[{\"lotteryScene\":\"receiveLotteryPlus\",\"requestType\":\"NORMAL\",\"sceneCode\":\"ORCHARD\",\"source\":\"ch_appcenter__chsub_9patch\",\"version\":\"20250812.01\"}]");
    }

    public static String orchardSyncIndex() {
        return ApplicationHook.requestString("com.alipay.antorchard.orchardSyncIndex", "[{\"requestType\":\"NORMAL\",\"sceneCode\":\"ORCHARD\",\"source\":\"ch_appcenter__chsub_9patch\",\"syncIndexTypes\":\"QUERY_MAIN_ACCOUNT_INFO\",\"version\":\"20250812.01\"}]");
    }

    public static String orchardSpreadManure(Boolean bool, String str) {
        String str2 = Boolean.TRUE.equals(bool) ? "true" : "false";
        StringBuilder sb = new StringBuilder("[{\"plantScene\":\"main\",\"requestType\":\"NORMAL\",\"sceneCode\":\"ORCHARD\",\"source\":\"ch_appcenter__chsub_9patch\",\"useBatchSpread\":");
        sb.append(str2);
        sb.append(",\"version\":\"20250812.01\",\"wua\":\"");
        if (str == null) {
            str = "";
        }
        sb.append(str);
        sb.append("\"}]");
        return ApplicationHook.requestString("com.alipay.antfarm.orchardSpreadManure", sb.toString());
    }

    public static String receiveTaskAward(String str, String str2) {
        return ApplicationHook.requestString("com.alipay.antiep.receiveTaskAward", "[{\"ignoreLimit\":false,\"requestType\":\"NORMAL\",\"sceneCode\":\"" + str + "\",\"source\":\"ch_appcenter__chsub_9patch\",\"taskType\":\"" + str2 + "\",\"version\":\"20250812.01\"}]");
    }

    public static String orchardListTask() {
        return ApplicationHook.requestString("com.alipay.antfarm.orchardListTask", "[{\"plantHiddenMMC\":\"false\",\"requestType\":\"NORMAL\",\"sceneCode\":\"ORCHARD\",\"source\":\"ch_appcenter__chsub_9patch\",\"version\":\"20250812.01\"}]");
    }

    public static String orchardSign() {
        return ApplicationHook.requestString("com.alipay.antfarm.orchardSign", "[{\"requestType\":\"NORMAL\",\"sceneCode\":\"ORCHARD\",\"signScene\":\"ANTFARM_ORCHARD_SIGN_V2\",\"source\":\"ch_appcenter__chsub_9patch\",\"version\":\"20250812.01\"}]");
    }

    public static String finishTask(String str, String str2) {
        String currentUid = UserIdMap.getCurrentUid();
        return ApplicationHook.requestString("com.alipay.antiep.finishTask", "[{\"outBizNo\":\"" + currentUid + System.currentTimeMillis() + "\",\"requestType\":\"NORMAL\",\"sceneCode\":\"" + str + "\",\"source\":\"ANTFARM_ORCHARD\",\"taskType\":\"" + str2 + "\",\"userId\":\"" + currentUid + "\",\"version\":\"20250812.01\"}]");
    }

    public static String triggerTbTask(String str, String str2) {
        return ApplicationHook.requestString("com.alipay.antfarm.triggerTbTask", "[{\"requestType\":\"NORMAL\",\"sceneCode\":\"ORCHARD\",\"source\":\"ch_appcenter__chsub_9patch\",\"taskId\":\"" + str + "\",\"taskPlantType\":\"" + str2 + "\",\"version\":\"20250812.01\"}]");
    }

    public static String enterDrawActivityantorchard() {
        return ApplicationHook.requestString("com.alipay.antiepdrawprod.enterDrawActivityantorchard", "[{\"activityId\":\"\",\"context\":{\"appMode\":\"normal\"},\"requestType\":\"RPC\",\"sceneCode\":\"ANTORCHARD_DRAW_TIMES\",\"source\":\"antorchard\"}]");
    }

    public static String orchardDrawListTask() {
        return ApplicationHook.requestString("com.alipay.antieptask.listTaskantorchard", "[{\"extend\":{\"appMode\":\"normal\"},\"requestType\":\"RPC\",\"sceneCode\":\"ANTORCHARD_DRAW_TIMES_TASK\",\"source\":\"antorchard\"}]");
    }

    public static String receiveTaskAwardantorchard(String str, String str2) {
        return ApplicationHook.requestString("com.alipay.antieptask.receiveTaskAwardantorchard", "[{\"ignoreLimit\":true,\"requestType\":\"RPC\",\"sceneCode\":\"" + str2 + "\",\"source\":\"antorchard\",\"taskType\":\"" + str + "\"}]");
    }

    public static String finishTaskantorchard(String str, String str2) {
        return ApplicationHook.requestString("com.alipay.antieptask.finishTaskantorchard", "[{\"outBizNo\":\"" + (str + "_" + String.valueOf(System.currentTimeMillis()) + "_" + UUID.randomUUID().toString().substring(0, 8)) + "\",\"sceneCode\":\"" + str2 + "\",\"source\":\"antorchard\",\"taskType\":\"" + str + "\"}]");
    }

    public static String drawSyncantorchard(String str) {
        return ApplicationHook.requestString("com.alipay.antiepdrawprod.drawSyncantorchard", "[{\"activityId\":\"" + str + "\",\"context\":{\"appMode\":\"normal\"},\"requestType\":\"RPC\",\"sceneCode\":\"ANTORCHARD_DRAW_TIMES\",\"source\":\"backend\"}]");
    }

    public static String drawantorchard(String str, String str2) {
        return ApplicationHook.requestString("com.alipay.antiepdrawprod.drawantorchard", "[{\"activityId\":\"" + str + "\",\"requestType\":\"RPC\",\"sceneCode\":\"ANTORCHARD_DRAW_TIMES\",\"source\":\"antorchard\",\"userId\":\"" + str2 + "\"}]");
    }

    public static String batchDrawantorchard(String str, int i, String str2) {
        return ApplicationHook.requestString("com.alipay.antiepdrawprod.batchDrawantorchard", "[{\"activityId\":\"" + str + "\",\"requestType\":\"RPC\",\"sceneCode\":\"ANTORCHARD_DRAW_TIMES\",\"source\":\"antorchard\",\"times\":" + i + ",\"userId\":\"" + str2 + "\"}]");
    }

    public static String orchardSeedList() {
        return ApplicationHook.requestString("com.alipay.antfarm.orchardSeedList", "[{\"from\":\"SEED_LIST\",\"page\":0,\"pvuuid\":\"" + System.currentTimeMillis() + "\",\"requestType\":\"NORMAL\",\"sceneCode\":\"ORCHARD\",\"source\":\"ch_appcollect__chsub_my-recentlyUsed\",\"version\":\"20250812.01\"}]");
    }

    public static String orchardSelectSeed(String str) {
        return ApplicationHook.requestString("com.alipay.antfarm.orchardSelectSeed", "[{\"requestType\":\"NORMAL\",\"sceneCode\":\"ORCHARD\",\"seedCode\":\"" + str + "\",\"source\":\"ch_appcenter__chsub_9patch\",\"version\":\"20250812.01\"}]");
    }

    public static String queryGameCenter() {
        return ApplicationHook.requestString("com.alipay.antorchard.queryGameCenter", "[{\"requestType\":\"NORMAL\",\"sceneCode\":\"ORCHARD\",\"source\":\"ch_appcenter__chsub_9patch\",\"version\":\"20250812.01\"}]");
    }

    public static String noticeGame(String str) {
        return ApplicationHook.requestString("com.alipay.antorchard.noticeGame", "[{\"appId\":\"" + str + "\",\"requestType\":\"NORMAL\",\"sceneCode\":\"ORCHARD\",\"source\":\"ch_appcenter__chsub_9patch\",\"version\":\"20250812.01\"}]");
    }

    public static String submitUserAction(String str) {
        return ApplicationHook.requestString("com.alipay.gamecenteruprod.biz.rpc.v3.submitUserAction", "[{\"actionCode\":\"enterGame\",\"gameId\":\"" + str + "\",\"paladinxVersion\":\"2.0.13\",\"source\":\"gameFramework\"}]");
    }

    public static String submitUserPlayDurationAction(String str, String str2) {
        return ApplicationHook.requestString("com.alipay.gamecenteruprod.biz.rpc.v3.submitUserPlayDurationAction", "[{\"gameAppId\":\"" + str + "\",\"playTime\":32,\"source\":\"" + str2 + "\",\"statisticTag\":\"\"}]");
    }

    public static String smashedGoldenEgg() {
        return ApplicationHook.requestString("com.alipay.antorchard.smashedGoldenEgg", "[{\"requestType\":\"NORMAL\",\"seneCode\":\"ORCHARD\",\"source\":\"ch_appcenter__chsub_9patch\",\"version\":\"20250812.01\"}]");
    }

    public static String achieveBeShareP2P(String str) {
        return ApplicationHook.requestString("com.alipay.antiep.achieveBeShareP2P", "[{\"requestType\":\"NORMAL\",\"sceneCode\":\"ANTFARM_ORCHARD_SHARE_P2P\",\"shareId\":\"" + Base64.encodeToString((str + "-" + RandomUtil.getRandom(5) + "ANTFARM_ORCHARD_SHARE_P2P").getBytes(), 2) + "\",\"source\":\"share\"}]");
    }

    public static String switchPlantScene(String str) {
        return ApplicationHook.requestString("com.alipay.antorchard.switchPlantScene", "[{\"plantScene\":\"" + str + "\",\"requestType\":\"NORMAL\",\"sceneCode\":\"ORCHARD\",\"source\":\"ANTFARM_ORCHARD\"}]");
    }

    public static String choosePrize(String str) {
        return ApplicationHook.requestString("com.alipay.antfarmlite.choosePrize", "[{\"requestType\":\"NORMAL\",\"sceneCode\":\"ORCHARD\",\"sendOrderId\":\"" + str + "\",\"source\":\"ANTFARM_ORCHARD\"}]");
    }

    public static String yebPlantSceneRevenuePage() {
        return ApplicationHook.requestString("com.alipay.gamecenteruprod.biz.rpc.v3.yebPlantSceneRevenuePage", "[{\"requestType\":\"NORMAL\",\"sceneCode\":\"ORCHARD\",\"source\":\"ANTFARM_ORCHARD\"}]");
    }

    public static String triggerYebMoneyTree() {
        return ApplicationHook.requestString("com.alipay.yebbffweb.needle.yebHome.moneyTree.trigger", "[{\"sceneType\":\"default\",\"type\":\"trigger\"}]");
    }

    public static String receiveOrchardVisitAward() {
        return ApplicationHook.requestString("com.alipay.antorchard.receiveOrchardVisitAward", "[{\"requestType\":\"NORMAL\",\"sceneCode\":\"ORCHARD\",\"source\":\"ch_appcenter__chsub_9patch\",\"version\":\"20250812.01\"}]");
    }

    public static String queryOptionalPlay() {
        return ApplicationHook.requestString("com.alipay.charitygamecenter.queryOptionalPlay", "[{\"bizType\":\"ANTORCHARD\",\"commonDegradeFilterRequest\":{\"appMode\":\"normal\",\"deviceLevel\":\"high\",\"initialized\":true,\"platform\":\"Android\",\"unityDeviceLevel\":\"high\"},\"playTypeList\":[\"TASK_TRIGGER\",\"TOP_UP_COUPON\"],\"recentAppRecordList\":[],\"requestType\":\"NORMAL\",\"sceneCode\":\"ORCHARD\",\"source\":\"H5\",\"version\":\"20250812.01\"}]");
    }

    public static String receiveTaskAwardantorchard(int i, String str, String str2) {
        return ApplicationHook.requestString("com.alipay.antieptask.receiveTaskAwardantorchard", "[{\"awardCountForReceive\":" + i + ",\"ignoreLimit\":true,\"requestType\":\"RPC\",\"sceneCode\":\"" + str + "\",\"source\":\"antorchard\",\"taskType\":\"" + str2 + "\"}]");
    }

    public static String orchardSyncIndex(String str) {
        return orchardSyncIndex();
    }
}
