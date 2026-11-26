package io.github.lazyimmortal.sesame.model.task.antSports;

import io.github.lazyimmortal.sesame.hook.ApplicationHook;
import io.github.lazyimmortal.sesame.util.Log;
import io.github.lazyimmortal.sesame.util.MessageUtil;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class AntSportsRpcCall {
    public static final String VERSION = "3.0.1.2";
    private static final String alipayAppVersion = "0.0.852";
    private static final String appId = "2021002116659397";
    private static final String chInfo = "ch_appcenter__chsub_9patch";
    private static final String cityCode = "330100";
    private static final String timeZone = "Asia/Shanghai";

    public static String queryCoinTaskPanel() {
        return ApplicationHook.requestString("com.alipay.sportshealth.biz.rpc.SportsHealthCoinTaskRpc.queryCoinTaskPanel", "[{\"apiVersion\":\"energy\",\"canAddHome\":false,\"chInfo\":\"medical_health\",\"clientAuthStatus\":\"not_support\",\"clientOS\":\"android\",\"features\":[\"DAILY_STEPS_RANK_V2\",\"STEP_BATTLE\",\"CLUB_HOME_CARD\",\"NEW_HOME_PAGE_STATIC\",\"CLOUD_SDK_AUTH\",\"STAY_ON_COMPLETE\",\"EXTRA_TREASURE_BOX\",\"NEW_HOME_PAGE_STATIC\",\"SUPPORT_AI\",\"SUPPORT_TAB3\",\"SUPPORT_FLYRABBIT\",\"SUPPORT_NEW_MATCH\",\"EXTERNAL_ADVERTISEMENT_TASK\",\"PROP\",\"PROPV2\",\"ASIAN_GAMES\"],\"topTaskId\":\"\"}]");
    }

    public static String signUpTask(String str) {
        return ApplicationHook.requestString("com.alipay.sportshealth.biz.rpc.SportsHealthCoinTaskRpc.signUpTask", "[{\"taskId\":\"" + str + "\"}]");
    }

    public static String completeTask(String str, String str2) {
        return ApplicationHook.requestString("com.alipay.sportshealth.biz.rpc.SportsHealthCoinTaskRpc.completeTask", "[{\"taskAction\":\"" + str + "\",\"taskId\":\"" + str2 + "\"}]");
    }

    public static String duublecompleteTask(String str, String str2, String str3) {
        return ApplicationHook.requestString("com.alipay.sportshealth.biz.rpc.SportsHealthCoinTaskRpc.completeTask", "[{\"apiVersion\":\"energy\",\"bizNo\":\"" + str + "\",\"taskAction\":\"" + str2 + "\",\"taskId\":\"" + str3 + "\",\"taskType\":\"AD_TASK\"}]");
    }

    public static String signInCoinTask() {
        return ApplicationHook.requestString("com.alipay.sportshealth.biz.rpc.SportsHealthCoinTaskRpc.signInCoinTask", "[{\"operatorType\":\"signIn\"}]");
    }

    public static String queryCoinBubbleModule() {
        return ApplicationHook.requestString("com.alipay.sportshealth.biz.rpc.sportsHealthHomeRpc.queryEnergyBubbleModule", "[{\"apiVersion\":\"energy\",\"bubbleId\":\"\",\"canAddHome\":false,\"chInfo\":\"ch_shouquan_shouye\",\"clientAuthStatus\":\"not_support\",\"clientOS\":\"android\",\"distributionChannel\":\"\",\"features\":[\"DAILY_STEPS_RANK_V2\",\"STEP_BATTLE\",\"CLUB_HOME_CARD\",\"NEW_HOME_PAGE_STATIC\",\"CLOUD_SDK_AUTH\",\"STAY_ON_COMPLETE\",\"EXTRA_TREASURE_BOX\",\"NEW_HOME_PAGE_STATIC\",\"SUPPORT_AI\",\"SUPPORT_TAB3\",\"SUPPORT_FLYRABBIT\",\"SUPPORT_NEW_MATCH\",\"EXTERNAL_ADVERTISEMENT_TASK\",\"PROP\",\"PROPV2\",\"ASIAN_GAMES\"],\"outBizNo\":\"\"}]");
    }

    public static String receiveCoinAsset(String str) {
        return ApplicationHook.requestString("com.alipay.neverland.biz.rpc.pickBubbleTaskEnergy", "[{\"apiVersion\":\"energy\",\"chInfo\":\"medical_health\",\"clientOS\":\"android\",\"features\":[\"DAILY_STEPS_RANK_V2\",\"STEP_BATTLE\",\"CLUB_HOME_CARD\",\"NEW_HOME_PAGE_STATIC\",\"CLOUD_SDK_AUTH\",\"STAY_ON_COMPLETE\",\"EXTRA_TREASURE_BOX\",\"NEW_HOME_PAGE_STATIC\",\"SUPPORT_AI\",\"SUPPORT_TAB3\",\"SUPPORT_FLYRABBIT\",\"SUPPORT_NEW_MATCH\",\"EXTERNAL_ADVERTISEMENT_TASK\",\"PROP\",\"PROPV2\",\"ASIAN_GAMES\"],\"medEnergyBallInfoRecordIds\":[\"" + str + "\"],\"pickAllEnergyBall\":false,\"source\":\"SPORT\"}]");
    }

    public static String pickAllEnergyBall() {
        return ApplicationHook.requestString("com.alipay.neverland.biz.rpc.pickBubbleTaskEnergy", "[{\"apiVersion\":\"energy\",\"chInfo\":\"ch_shouquan_shouye\",\"clientOS\":\"android\",\"features\":[\"DAILY_STEPS_RANK_V2\",\"STEP_BATTLE\",\"CLUB_HOME_CARD\",\"NEW_HOME_PAGE_STATIC\",\"CLOUD_SDK_AUTH\",\"STAY_ON_COMPLETE\",\"EXTRA_TREASURE_BOX\",\"NEW_HOME_PAGE_STATIC\",\"SUPPORT_AI\",\"SUPPORT_TAB3\",\"SUPPORT_FLYRABBIT\",\"SUPPORT_NEW_MATCH\",\"EXTERNAL_ADVERTISEMENT_TASK\",\"PROP\",\"PROPV2\",\"ASIAN_GAMES\"],\"medEnergyBallInfoRecordIds\":[],\"pickAllEnergyBall\":true,\"source\":\"SPORT\"}]");
    }

    public static String queryDonateRecord() {
        return ApplicationHook.requestString("alipay.antsports.walk.charity.queryDonateRecord", "[{\"pageIndex\":1,\"pageSize\":10}]");
    }

    public static String queryProjectList(int i) {
        return ApplicationHook.requestString("alipay.antsports.walk.charity.queryProjectList", "[{\"index\":" + i + ",\"projectListUseVertical\":true}]");
    }

    public static String queryProjectDetail(String str) {
        return ApplicationHook.requestString("alipay.antsports.walk.charity.queryProjectDetail", "[{\"projectId\": \"" + str + "\"}]");
    }

    public static String donate(int i, String str) {
        return ApplicationHook.requestString("alipay.antsports.walk.charity.donate", "[{\"donateCharityCoin\":" + i + ",\"projectId\":\"" + str + "\"}]");
    }

    public static String queryWalkStep() {
        return ApplicationHook.requestString("alipay.antsports.steps.query", "[{\"appId\":\"healthstep\",\"bizId\":\"donation\",\"chInfo\":\"h5_donation_healthstep\",\"timeZone\":\"Asia/Shanghai\"}]");
    }

    public static String walkRankingDailySteps() {
        return ApplicationHook.requestString("alipay.antsports.walk.ranking.dailySteps", "[{\"apiVersion\":\"MERGE_SERVICE\",\"chInfo\":\"ch_shouquan_shouye\",\"clientOS\":\"android\",\"features\":[\"DAILY_STEPS_RANK_V2\",\"STEP_BATTLE\",\"CLUB_HOME_CARD\",\"NEW_HOME_PAGE_STATIC\",\"CLOUD_SDK_AUTH\",\"STAY_ON_COMPLETE\",\"EXTRA_TREASURE_BOX\",\"NEW_HOME_PAGE_STATIC\",\"SUPPORT_AI\",\"SUPPORT_TAB3\",\"SUPPORT_FLYRABBIT\",\"SUPPORT_NEW_MATCH\",\"EXTERNAL_ADVERTISEMENT_TASK\",\"PROP\",\"PROPV2\",\"ASIAN_GAMES\"],\"scene\":\"default-lite\",\"timeZone\":\"Asia/Shanghai\"}]");
    }

    public static String walkDonateSignInfo(int i) {
        return ApplicationHook.requestString("alipay.charity.mobile.donate.walk.walkDonateSignInfo", "[{\"needDonateAction\":false,\"source\":\"walkDonateHome\",\"steps\":" + i + ",\"timezoneId\":\"Asia/Shanghai\"}]");
    }

    public static String donateWalkHome(int i) {
        return ApplicationHook.requestString("alipay.charity.mobile.donate.walk.home", "[{\"module\":\"3\",\"steps\":" + i + ",\"timezoneId\":\"Asia/Shanghai\"}]");
    }

    public static String donateExchangeRecord() {
        return ApplicationHook.requestString("alipay.charity.mobile.donate.exchange.record", "[{\"page\":1,\"pageSize\":10}]");
    }

    public static String donateWalkExchange(String str, int i, String str2) {
        return ApplicationHook.requestString("alipay.charity.mobile.donate.walk.exchange", "[{\"actId\":\"" + str + "\",\"count\":" + i + ",\"donateToken\":\"" + str2 + "\",\"timezoneId\":\"Asia/Shanghai\",\"ver\":0}]");
    }

    public static String queryUser() {
        return ApplicationHook.requestString("com.alipay.sportsplay.biz.rpc.walk.queryUser", "[{}]");
    }

    public static String queryThemeList() {
        return ApplicationHook.requestString("com.alipay.sportsplay.biz.rpc.walk.theme.queryThemeList", "[{}]");
    }

    public static String queryWorldMap(String str) {
        return ApplicationHook.requestString("com.alipay.sportsplay.biz.rpc.walk.queryWorldMap", "[{\"themeId\":\"" + str + "\"}]");
    }

    private static boolean isFilteredCity(String str) {
        return "000000".equals(str) || "232700".equals(str) || "620900".equals(str) || "653100".equals(str) || "710100".equals(str);
    }

    public static String queryCityPath(String str) {
        if (isFilteredCity(str)) {
            return null;
        }
        return ApplicationHook.requestString("com.alipay.sportsplay.biz.rpc.walk.queryCityPath", "[{\"cityId\":\"" + str + "\"}]");
    }

    public static String queryPath(String str, String str2) {
        return ApplicationHook.requestString("com.alipay.sportsplay.biz.rpc.walk.queryPath", "[{\"apiVersion\":\"energy\",\"chInfo\":\"medical_health\",\"clientOS\":\"android\",\"date\":\"" + str + "\",\"enableNewVersion\":true,\"features\":[\"DAILY_STEPS_RANK_V2\",\"STEP_BATTLE\",\"CLUB_HOME_CARD\",\"NEW_HOME_PAGE_STATIC\",\"CLOUD_SDK_AUTH\",\"STAY_ON_COMPLETE\",\"EXTRA_TREASURE_BOX\",\"NEW_HOME_PAGE_STATIC\",\"SUPPORT_AI\",\"SUPPORT_TAB3\",\"SUPPORT_FLYRABBIT\",\"SUPPORT_NEW_MATCH\",\"EXTERNAL_ADVERTISEMENT_TASK\",\"PROP\",\"PROPV2\",\"ASIAN_GAMES\"],\"pathId\":\"" + str2 + "\",\"timezoneId\":\"Asia/Shanghai\"}]");
    }

    public static String queryPathName(String str) {
        try {
            JSONObject jSONObject = new JSONObject(queryPath(Log.getFormatDate(), str));
            if (MessageUtil.checkSuccess("queryPathName", jSONObject).booleanValue()) {
                return jSONObject.getJSONObject("data").getJSONObject("path").getString("name");
            }
            return null;
        } catch (Throwable unused) {
            Log.record("查询路线:[" + str + "]失败！");
            return null;
        }
    }

    public static String joinPath(String str) {
        return ApplicationHook.requestString("com.alipay.sportsplay.biz.rpc.walk.joinPath", "[{\"pathId\":\"" + str + "\"}]");
    }

    public static String walkGo(String str, String str2, int i) {
        return ApplicationHook.requestString("com.alipay.sportsplay.biz.rpc.walk.go", "[{\"date\":\"" + str + "\",\"pathId\":\"" + str2 + "\",\"useStepCount\":\"" + i + "\"}]");
    }

    public static String queryMailList() {
        return ApplicationHook.requestString("alipay.antsports.walk.mail.queryMailList", "[{\"mailType\":\"SYSTEM\",\"pageSize\":50,\"userMailStartIndex\":1}]");
    }

    public static String receiveEvent(String str) {
        return ApplicationHook.requestString("com.alipay.sportsplay.biz.rpc.walk.receiveEvent", "[{\"eventBillNo\":\"" + str + "\"}]");
    }

    public static String queryPathReward(String str) {
        return ApplicationHook.requestString("com.alipay.sportsplay.biz.rpc.walk.queryPathReward", "[{\"pathId\":\"" + str + "\"}]");
    }

    public static String exchangeSuccess(String str) {
        return ApplicationHook.requestString("alipay.charity.mobile.donate.exchange.success", "[{\"exchangeId\":\"" + str + "\",\"timezone\":\"GMT+08:00\",\"version\":\"3.0.1.2\"}]");
    }

    public static String userTaskGroupQuery(String str) {
        return ApplicationHook.requestString("alipay.tiyubiz.sports.userTaskGroup.query", "[{\"cityCode\":\"330100\",\"groupId\":\"" + str + "\"}]");
    }

    public static String userTaskComplete(String str, String str2) {
        return ApplicationHook.requestString("alipay.tiyubiz.sports.userTask.complete", "[{\"bizType\":\"" + str + "\",\"cityCode\":\"330100\",\"completedTime\":" + System.currentTimeMillis() + ",\"taskId\":\"" + str2 + "\"}]");
    }

    public static String userTaskRightsReceive(String str, String str2) {
        return ApplicationHook.requestString("alipay.tiyubiz.sports.userTaskRights.receive", "[{\"taskId\":\"" + str + "\",\"userTaskId\":\"" + str2 + "\"}]");
    }

    public static String queryAccount() {
        return ApplicationHook.requestString("alipay.tiyubiz.user.asset.query.account", "[{\"accountType\":\"TIYU_SEED\"}]");
    }

    public static String queryRoundList() {
        return ApplicationHook.requestString("alipay.tiyubiz.wenti.walk.queryRoundList", "[{}]");
    }

    public static String participate(int i, String str, String str2, String str3) {
        return ApplicationHook.requestString("alipay.tiyubiz.wenti.walk.participate", "[{\"bettingPoints\":" + i + ",\"guessInstanceId\":\"" + str + "\",\"guessResultId\":\"" + str2 + "\",\"newParticipant\":false,\"roundId\":\"" + str3 + "\",\"stepTimeZone\":\"Asia/Shanghai\"}]");
    }

    public static String pathFeatureQuery() {
        return ApplicationHook.requestString("alipay.tiyubiz.path.feature.query", "[{\"appId\":\"2021002116659397\",\"features\":[\"USER_CURRENT_PATH_SIMPLE\"],\"sceneCode\":\"wenti_shijiebei\"}]");
    }

    public static String pathMapJoin(String str) {
        return ApplicationHook.requestString("alipay.tiyubiz.path.map.join", "[{\"appId\":\"2021002116659397\",\"pathId\":\"" + str + "\"}]");
    }

    public static String pathMapHomepage(String str) {
        return ApplicationHook.requestString("alipay.tiyubiz.path.map.homepage", "[{\"appId\":\"2021002116659397\",\"pathId\":\"" + str + "\"}]");
    }

    public static String stepQuery(String str, String str2) {
        return ApplicationHook.requestString("alipay.tiyubiz.path.map.step.query", "[{\"appId\":\"2021002116659397\",\"countDate\":\"" + str + "\",\"pathId\":\"" + str2 + "\",\"timeZone\":\"Asia/Shanghai\"}]");
    }

    public static String tiyubizGo(String str, int i, String str2, String str3) {
        return ApplicationHook.requestString("alipay.tiyubiz.path.map.go", "[{\"appId\":\"2021002116659397\",\"countDate\":\"" + str + "\",\"goStepCount\":" + i + ",\"pathId\":\"" + str2 + "\",\"timeZone\":\"Asia/Shanghai\",\"userPathRecordId\":\"" + str3 + "\"}]");
    }

    public static String rewardReceive(String str, String str2) {
        return ApplicationHook.requestString("alipay.tiyubiz.path.map.reward.receive", "[{\"appId\":\"2021002116659397\",\"pathId\":\"" + str + "\",\"userPathRewardId\":\"" + str2 + "\"}]");
    }

    public static String queryClubHome() {
        return ApplicationHook.requestString("alipay.antsports.club.home.queryClubHome", "[{\"apiVersion\":\"energy\",\"chInfo\":\"healthstep\",\"timeZone\":\"Asia/Shanghai\"}]");
    }

    public static String queryMemberPriceRanking() {
        return ApplicationHook.requestString("alipay.antsports.club.ranking.queryMemberPriceRanking", "[{\"apiVersion\":\"energy\",\"buyMember\":false,\"chInfo\":\"as-account-home-friends\"}]");
    }

    public static String queryClubRoom(String str) {
        return ApplicationHook.requestString("alipay.antsports.club.trade.queryClubRoom", "[{\"apiVersion\":\"energy\",\"chInfo\":\"healthstep\",\"roomId\":\"" + str + "\"}]");
    }

    public static String collectBubble(String str) {
        return ApplicationHook.requestString("com.alipay.neverland.biz.rpc.pickBubbleTaskEnergy", "[{\"apiVersion\":\"energy\",\"medEnergyBallInfoRecordIds\":[\"" + str + "\"],\"pickAllEnergyBall\":false,\"source\":\"SPORT\"}]");
    }

    public static String queryTrainItem() {
        return ApplicationHook.requestString("alipay.antsports.club.train.queryTrainItem", "[{\"apiVersion\":\"energy\",\"chInfo\":\"healthstep\"}]");
    }

    public static String DoubletrainMember(String str, String str2, String str3, String str4) {
        return ApplicationHook.requestString("alipay.antsports.club.train.trainMember", "[{\"apiVersion\":\"energy\",\"bizId\":\"" + str2 + "\",\"chInfo\":\"healthstep\",\"itemType\":\"" + str + "\",\"memberId\":\"" + str3 + "\",\"originBossId\":\"" + str4 + "\"}]");
    }

    public static String trainMember(String str, String str2, String str3) {
        return ApplicationHook.requestString("alipay.antsports.club.train.trainMember", "[{\"apiVersion\":\"energy\",\"chInfo\":\"healthstep\",\"itemType\":\"" + str + "\",\"memberId\":\"" + str2 + "\",\"originBossId\":\"" + str3 + "\"}]");
    }

    public static String completeTask(String str) {
        return ApplicationHook.requestString("alipay.antsports.club.train.trainMember", "[{\"apiVersion\":\"energy\",\"bizNo\":\"" + str + "\",\"taskAction\":\"SHOW_AD\",\"taskId\":\"AP16235854\",\"taskType\":\"AD_TASK\"}]");
    }

    public static String queryMemberPriceRankingEnergy(int i) {
        return ApplicationHook.requestString("alipay.antsports.club.ranking.queryMemberPriceRanking", "[{\"apiVersion\":\"energy\",\"buyMember\":true,\"chInfo\":\"healthstep\",\"coinBalance\":\"" + i + "\"}]");
    }

    public static String queryClubMember(String str, String str2) {
        return ApplicationHook.requestString("alipay.antsports.club.trade.queryClubMember", "[{\"apiVersion\":\"energy\",\"chInfo\":\"healthstep\",\"memberId\":\"" + str + "\",\"originBossId\":\"" + str2 + "\"}]");
    }

    public static String buyMember(String str, String str2, String str3, JSONObject jSONObject, String str4) {
        return ApplicationHook.requestString("alipay.antsports.club.trade.buyMember", "[{\"apiVersion\":\"energy\",\"chInfo\":\"healthstep\",\"currentBossId\":\"" + str + "\",\"memberId\":\"" + str2 + "\",\"originBossId\":\"" + str3 + "\",\"priceInfo\":" + jSONObject + ",\"roomId\":\"" + str4 + "\"}]");
    }

    public static String queryItemDetail(String str) {
        return ApplicationHook.requestString("com.alipay.sportshealth.biz.rpc.SportsHealthItemCenterRpc.queryItemDetail", "[{\"itemId\":\"" + str + "\"}]");
    }

    public static String exchangeItem(String str, int i) {
        return ApplicationHook.requestString("com.alipay.sportshealth.biz.rpc.SportsHealthItemCenterRpc.exchangeItem", "[{\"coinAmount\":" + i + ",\"itemId\":\"" + str + "\"}]");
    }

    public static String queryExchangeRecordPage(String str) {
        return ApplicationHook.requestString("com.alipay.sportshealth.biz.rpc.SportsHealthItemCenterRpc.queryExchangeRecordPage", "[{\"exchangeRecordId\":\"" + str + "\"}]");
    }

    public static String receiveSpecialPrize(String str) {
        return ApplicationHook.requestString("com.alipay.neverland.biz.rpc.receiveSpecialPrize", "[{\"sceneType\":\"" + str + "\"}]");
    }

    public static String takeSign() {
        return ApplicationHook.requestString("com.alipay.neverland.biz.rpc.takeSign", "[{\"signType\":3,\"source\":\"jkdprizesign\"}]");
    }

    public static String neverlandtaskReceive(String str) {
        return ApplicationHook.requestString("com.alipay.neverland.biz.rpc.taskReceive", str);
    }

    public static String neverlandtaskSend(String str) {
        return ApplicationHook.requestString("com.alipay.neverland.biz.rpc.taskSend", str);
    }

    public static String neverlandwalkGrid(String str, String str2) {
        return ApplicationHook.requestString("com.alipay.neverland.biz.rpc.walkGrid", "[{\"branchId\":\"" + str + "\",\"drilling\":false,\"mapId\":\"" + str2 + "\"}]");
    }

    public static String neverlandenergyReceive(String str) {
        return ApplicationHook.requestString("com.alipay.neverland.biz.rpc.energyReceive", str);
    }

    public static String offlineAward() {
        return ApplicationHook.requestString("com.alipay.neverland.biz.rpc.offlineAward", "[{\"isAdvertisement\":true}]");
    }

    public static String neverlandpickBubbleTaskEnergy(String str) {
        return ApplicationHook.requestString("com.alipay.neverland.biz.rpc.pickBubbleTaskEnergy", "[{\"medEnergyBallInfoRecordIds\":[\"" + str + "\"],\"pickAllEnergyBall\":false}]");
    }

    public static String queryBaseinfo() {
        return ApplicationHook.requestString("com.alipay.neverland.biz.rpc.queryBaseinfo", "[{}]");
    }

    public static String queryBubbleTask() {
        return ApplicationHook.requestString("com.alipay.neverland.biz.rpc.queryBubbleTask", "[{\"sportsAuthed\":true}]");
    }

    public static String queryItemList(int i) {
        return ApplicationHook.requestString("com.alipay.neverland.biz.rpc.queryItemList", "[{\"page\":" + i + "}]");
    }

    public static String createOrder(String str, String str2) {
        return ApplicationHook.requestString("com.alipay.neverland.biz.rpc.createOrder", "[{\"benefitId\":\"" + str + "\",\"itemId\":\"" + str2 + "\"}]");
    }

    public static String queryMapInfo(String str, String str2) {
        return ApplicationHook.requestString("com.alipay.neverland.biz.rpc.queryMapInfo", "[{\"branchId\":\"" + str + "\",\"drilling\":false,\"mapId\":\"" + str2 + "\"}]");
    }

    public static String queryMapInfoNew(String str, String str2) {
        return ApplicationHook.requestString("com.alipay.neverland.biz.rpc.queryMapInfoNew", "[{\"branchId\":\"" + str + "\",\"mapId\":\"" + str2 + "\",\"source\":\"ch_toufang__yundongshouye\"}]");
    }

    public static String querySign() {
        return ApplicationHook.requestString("com.alipay.neverland.biz.rpc.querySign", "[{\"source\":\"jkdprizesign\"}]");
    }

    public static String queryTaskCenter() {
        return ApplicationHook.requestString("com.alipay.neverland.biz.rpc.queryTaskCenter", "[{\"isAdvertisement\":true}]");
    }

    public static String queryTaskInfo() {
        return ApplicationHook.requestString("com.alipay.neverland.biz.rpc.queryTaskInfo", "[{\"source\":\"health-island\",\"type\":\"LIGHT_FEEDS_TASK\"}]");
    }

    public static String queryUserAccount() {
        return ApplicationHook.requestString("com.alipay.neverland.biz.rpc.queryUserAccount", "[{}]");
    }

    public static String checkAuth() {
        return ApplicationHook.requestString("alipay.antsigncenter.checkAuth", "[{\"assetSceneList\":[\"AS_106240429002783499\"]}]");
    }

    public static String queryMapList() {
        return ApplicationHook.requestString("com.alipay.neverland.biz.rpc.queryMapList", "[{\"source\":\"jkdsportcard\"}]");
    }

    public static String mapChooseFree(String str, String str2) {
        return ApplicationHook.requestString("com.alipay.neverland.biz.rpc.mapChooseFree", "[{\"branchId\":\"" + str + "\",\"mapId\":\"" + str2 + "\",\"source\":\"jkdsportcard\"}]");
    }

    public static String build(String str, String str2, int i) {
        return ApplicationHook.requestString("com.alipay.neverland.biz.rpc.build", "[{\"branchId\":\"" + str + "\",\"mapId\":\"" + str2 + "\",\"multiNum\":" + i + ",\"source\":\"jkdsportcard\"}]");
    }

    public static String queryMapDetail(String str) {
        return ApplicationHook.requestString("com.alipay.neverland.biz.rpc.queryMapDetail", "[{\"mapId\":\"" + str + "\",\"source\":\"jkdsportcard\"}]");
    }

    public static String mapChooseReward(String str, String str2, String str3) {
        return ApplicationHook.requestString("com.alipay.neverland.biz.rpc.mapChooseReward", "[{\"branchId\":\"" + str + "\",\"channel\":\"jkdsportcard\",\"mapId\":\"" + str2 + "\",\"rewardId\":\"" + str3 + "\",\"source\":\"jkdsportcard\"}]");
    }
}
