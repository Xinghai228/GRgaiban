package io.github.lazyimmortal.sesame.model.task.antForest;

import io.github.lazyimmortal.sesame.entity.AlipayVersion;
import io.github.lazyimmortal.sesame.entity.RpcEntity;
import io.github.lazyimmortal.sesame.hook.ApplicationHook;
import io.github.lazyimmortal.sesame.hook.SimplePageManager$$ExternalSyntheticBackport0;
import io.github.lazyimmortal.sesame.util.RandomUtil;
import io.github.lazyimmortal.sesame.util.StringUtil;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Random;
import java.util.UUID;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class AntForestRpcCall {
    private static final String MONOPOLY_SOURCE = "monopoly_home_board";
    private static final Random RANDOM = new Random();
    public static String VERSION = "";

    public static void init() {
        AlipayVersion alipayVersion = ApplicationHook.getAlipayVersion();
        if (alipayVersion.compareTo(new AlipayVersion("10.6.10.8000")) > 0) {
            VERSION = "20250818";
            return;
        }
        if (alipayVersion.compareTo(new AlipayVersion("10.5.88.8000")) > 0) {
            VERSION = "20240403";
        } else if (alipayVersion.compareTo(new AlipayVersion("10.3.96.8100")) > 0) {
            VERSION = "20230501";
        } else {
            VERSION = "20230501";
        }
    }

    private static String getUniqueId() {
        return String.valueOf(System.currentTimeMillis()) + RandomUtil.nextLong();
    }

    public static String queryEnergyRanking() {
        return ApplicationHook.requestString("alipay.antmember.forest.h5.queryEnergyRanking", "[{\"periodType\":\"total\",\"rankType\":\"energyRank\",\"source\":\"chInfo_ch_appcenter__chsub_9patch\",\"version\":\"" + VERSION + "\"}]", "{\"pathList\":[\"friendRanking\",\"myself\",\"totalDatas\"]}");
    }

    public static String fillUserRobFlag(String str) {
        return ApplicationHook.requestString("alipay.antforest.forest.h5.fillUserRobFlag", "[{\"userIdList\":" + str + "}]", "{\"pathList\":[\"friendRanking\"]}");
    }

    public static String queryHomePage() {
        return ApplicationHook.requestString("alipay.antforest.forest.h5.queryHomePage", "[{\"configVersionMap\":{\"wateringBubbleConfig\":\"10\"},\"skipWhackMole\":true,\"source\":\"chInfo_ch_appcenter__chsub_9patch\",\"version\":\"" + VERSION + "\"}]", 3, 1000);
    }

    public static String queryDessertBattleRankInfo() {
        return ApplicationHook.requestString("alipay.antforest.forest.h5.queryDessertBattleRankInfo", "[{\"source\":\"chInfo_ch_appcenter__chsub_9patch\"}]");
    }

    public static String queryDynamicsIndex() {
        return ApplicationHook.requestString("alipay.antforest.forest.h5.queryDynamicsIndex", "[{\"autoRefresh\":false,\"source\":\"chInfo_ch_appcenter__chsub_9patch\",\"version\":\"" + VERSION + "\"}]");
    }

    public static String queryTopEnergyRanking(String str, String str2) {
        return ApplicationHook.requestString("alipay.antmember.forest.h5.queryTopEnergyRanking", "[{\"periodType\":\"" + str2 + "\",\"rankType\":\"" + str + "\",\"source\":\"chInfo_ch_appcenter__chsub_9patch\",\"version\":\"" + VERSION + "\"}]");
    }

    public static String queryTopEnergyChallengeRanking() {
        return ApplicationHook.requestString("alipay.antforest.forest.h5.queryTopEnergyChallengeRanking", "[{\"source\":\"chInfo_ch_appcenter__chsub_9patch\"}]");
    }

    public static String queryFriendHomePage(String str) {
        return ApplicationHook.requestString("alipay.antforest.forest.h5.queryFriendHomePage", "[{\"canRobFlags\":\"F,F,F,F,F\",\"configVersionMap\":{\"redPacketConfig\":0,\"wateringBubbleConfig\":\"10\"},\"source\":\"chInfo_ch_appcenter__chsub_9patch\",\"userId\":\"" + str + "\",\"version\":\"" + VERSION + "\"}]", 3, 1000);
    }

    public static RpcEntity getCollectEnergyRpcEntity(String str, String str2, long j) {
        String str3;
        if (StringUtil.isEmpty(str)) {
            str3 = "[{\"bizType\":\"\",\"bubbleIds\":[" + j + "],\"source\":\"chInfo_ch_appcenter__chsub_9patch\",\"userId\":\"" + str2 + "\",\"version\":\"" + VERSION + "\"}]";
        } else {
            str3 = "[{\"bizType\":\"" + str + "\",\"bubbleIds\":[" + j + "],\"source\":\"chInfo_ch_appcenter__chsub_9patch\",\"userId\":\"" + str2 + "\"}]";
        }
        return new RpcEntity("alipay.antmember.forest.h5.collectEnergy", str3, null);
    }

    public static String collectEnergy(String str, String str2, Long l) {
        return ApplicationHook.requestString(getCollectEnergyRpcEntity(str, str2, l.longValue()));
    }

    public static RpcEntity getCollectBatchEnergyRpcEntity(String str, List<Long> list) {
        return getCollectBatchEnergyRpcEntity(str, StringUtil.collectionJoinString(",", list));
    }

    public static RpcEntity getCollectBatchEnergyRpcEntity(String str, String str2) {
        return new RpcEntity("alipay.antmember.forest.h5.collectEnergy", "[{\"bizType\":\"\",\"bubbleIds\":[" + str2 + "],\"fromAct\":\"BATCH_ROB_ENERGY\",\"source\":\"chInfo_ch_appcenter__chsub_9patch\",\"userId\":\"" + str + "\",\"version\":\"" + VERSION + "\"}]");
    }

    public static String collectBatchEnergy(String str, List<Long> list) {
        return ApplicationHook.requestString(getCollectBatchEnergyRpcEntity(str, list));
    }

    public static String collectRebornEnergy() {
        return ApplicationHook.requestString("alipay.antforest.forest.h5.collectRebornEnergy", "[{\"source\":\"chInfo_ch_appcenter__chsub_9patch\"}]");
    }

    public static String transferEnergy(String str, String str2, int i, String str3) {
        return ApplicationHook.requestString("alipay.antmember.forest.h5.transferEnergy", "[{\"bizNo\":\"" + str2 + UUID.randomUUID().toString() + "\",\"energyId\":" + i + ",\"extInfo\":{\"sendChat\":\"" + str3 + "\"},\"from\":\"friendIndex\",\"source\":\"chInfo_ch_appcenter__chsub_9patch\",\"targetUser\":\"" + str + "\",\"transferType\":\"WATERING\",\"version\":\"" + VERSION + "\"}]");
    }

    public static String forFriendCollectEnergy(String str, long j) {
        return ApplicationHook.requestString("alipay.antmember.forest.h5.forFriendCollectEnergy", "[{\"bubbleIds\":[" + j + "],\"targetUserId\":\"" + str + "\"}]");
    }

    public static String vitalitySign() {
        return ApplicationHook.requestString("alipay.antforest.forest.h5.vitalitySign", "[{\"source\":\"chInfo_ch_appcenter__chsub_9patch\"}]");
    }

    public static String queryCommonSign(String str) {
        return ApplicationHook.requestString("alipay.antforest.forest.h5.queryCommonSign", "[{\"bizType\":\"" + str + "\",\"source\":\"chInfo_ch_appcenter__chsub_9patch\",\"withEntity\":true}]");
    }

    public static String antiepSign(String str, String str2, String str3) {
        return ApplicationHook.requestString("com.alipay.antiep.sign", "[{\"entityId\":\"" + str + "\",\"requestType\":\"rpc\",\"sceneCode\":\"" + str3 + "\",\"source\":\"ANTFOREST\",\"userId\":\"" + str2 + "\"}]");
    }

    public static String batchQueryAndTouchopengreen() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put("ANTFOREST_VITALITY_TASK#acc_task_energy_20g", new JSONObject());
        jSONObject2.put("ANTFOREST_VITALITY_TASK#acc_task_energy_30g", new JSONObject());
        jSONObject2.put("ANTFOREST_VITALITY_TASK#acc_task_energy_50g", new JSONObject());
        jSONObject.put("paramMap", jSONObject2);
        jSONObject.put("requestType", "RPC");
        jSONObject.put("sceneCode", "ANTFOREST_VITALITY_TASK");
        jSONObject.put("source", "chInfo_ch_appcenter__chsub_9patch");
        return ApplicationHook.requestString("com.alipay.antieprights.batchQueryAndTouchopengreen", "[" + jSONObject + "]");
    }

    public static String listTaskopengreen() {
        return ApplicationHook.requestString("com.alipay.antieptask.listTaskopengreen", "[{\"extend\":{\"businessSource\":\"ANTFOREST-home_task_list\",\"osType\":\"android\",\"version\":\"20260109\"},\"requestType\":\"RPC\",\"sceneCode\":\"ANTFOREST_VITALITY_TASK\",\"source\":\"chInfo_ch_appcenter__chsub_9patch\"}]");
    }

    public static String queryTaskList() {
        return queryTaskList(new JSONObject());
    }

    public static String queryTaskList(JSONObject jSONObject) {
        return ApplicationHook.requestString("alipay.antforest.forest.h5.queryTaskList", "[{\"extend\":" + jSONObject + ",\"fromAct\":\"home_task_list\",\"source\":\"chInfo_ch_appcenter__chsub_9patch\",\"version\":\"" + VERSION + "\"}]");
    }

    public static String queryEnergyRainHome() {
        return ApplicationHook.requestString("alipay.antforest.forest.h5.queryEnergyRainHome", "[{\"version\":\"" + VERSION + "\"}]");
    }

    public static String queryEnergyRainCanGrantList() {
        return ApplicationHook.requestString("alipay.antforest.forest.h5.queryEnergyRainCanGrantList", "[{}]");
    }

    public static String grantEnergyRainChance(String str) {
        return ApplicationHook.requestString("alipay.antforest.forest.h5.grantEnergyRainChance", "[{\"targetUserId\":" + str + "}]");
    }

    public static String startEnergyRain() {
        return ApplicationHook.requestString("alipay.antforest.forest.h5.startEnergyRain", "[{\"version\":\"" + VERSION + "\"}]");
    }

    public static String energyRainSettlement(int i, String str) {
        return ApplicationHook.requestString("alipay.antforest.forest.h5.energyRainSettlement", "[{\"activityPropNums\":0,\"saveEnergy\":" + i + ",\"token\":\"" + str + "\",\"version\":\"" + VERSION + "\"}]");
    }

    public static String queryGameList() {
        return ApplicationHook.requestString("com.alipay.charitygamecenter.queryGameList", "[{  \"bizType\": \"ANTFOREST\",  \"commonDegradeFilterRequest\": {    \"deviceLevel\": \"high\",    \"platform\": \"Android\",    \"unityDeviceLevel\": \"high\"  },  \"requestType\": \"RPC\",  \"sceneCode\": \"ANTFOREST\",  \"source\": \"chInfo_ch_appcenter__chsub_9patch\",  \"version\": \"" + VERSION + "\"}]");
    }

    public static String drawGameCenterAward(int i) {
        return ApplicationHook.requestString("com.alipay.charitygamecenter.drawGameCenterAward", "[{  \"batchDrawCount\": " + i + ",  \"bizType\": \"ANTFOREST\",  \"requestType\": \"RPC\",  \"sceneCode\": \"ANTFOREST\",  \"source\": \"leyuan\",  \"version\": \"" + VERSION + "\"}]");
    }

    public static String queryEnergyRainEndGameList() {
        return ApplicationHook.requestString("alipay.antforest.forest.h5.queryEnergyRainEndGameList", "[ {} ]");
    }

    public static String initTask(String str) {
        return ApplicationHook.requestString("com.alipay.antiep.initTask", "[{  \"outBizNo\": \"" + (str + "_" + String.valueOf(System.currentTimeMillis()) + "_" + UUID.randomUUID().toString().substring(0, 8)) + "\",  \"requestType\": \"H5\",  \"sceneCode\": \"ANTFOREST_ENERGY_RAIN_TASK\",  \"source\": \"ANTFOREST\",  \"taskType\": \"" + str + "\"}]");
    }

    public static String receiveTaskAward(String str, String str2) {
        return ApplicationHook.requestString("com.alipay.antiep.receiveTaskAward", "[{\"ignoreLimit\":false,\"requestType\":\"H5\",\"sceneCode\":\"" + str + "\",\"source\":\"ANTFOREST\",\"taskType\":\"" + str2 + "\"}]");
    }

    public static String finishTask(String str, String str2) {
        return ApplicationHook.requestString("com.alipay.antiep.finishTask", "[{\"outBizNo\":\"" + (str2 + "_" + RandomUtil.nextDouble()) + "\",\"requestType\":\"H5\",\"sceneCode\":\"" + str + "\",\"source\":\"ANTFOREST\",\"taskType\":\"" + str2 + "\"}]");
    }

    public static String popupTask() {
        return ApplicationHook.requestString("alipay.antforest.forest.h5.popupTask", "[{\"fromAct\":\"pop_task\",\"needInitSign\":false,\"source\":\"chInfo_ch_appcenter__chsub_9patch\",\"statusList\":[\"TODO\",\"FINISHED\"],\"version\":\"" + VERSION + "\"}]");
    }

    public static String queryPropList(boolean z) {
        StringBuilder sb = new StringBuilder("[{\"onlyGive\":\"");
        sb.append(z ? "Y" : "");
        sb.append("\",\"source\":\"chInfo_ch_appcenter__chsub_9patch\",\"version\":\"");
        sb.append(VERSION);
        sb.append("\"}]");
        return ApplicationHook.requestString("alipay.antforest.forest.h5.queryPropList", sb.toString());
    }

    public static String queryAnimalPropList() {
        return ApplicationHook.requestString("alipay.antforest.forest.h5.queryAnimalPropList", "[{\"source\":\"chInfo_ch_appcenter__chsub_9patch\"}]");
    }

    public static String consumeProp(String str, String str2, Boolean bool) {
        StringBuilder sb = new StringBuilder("[{\"propGroup\":\"");
        sb.append(str);
        sb.append("\",\"propType\":\"");
        sb.append(str2);
        sb.append("\",\"replace\":\"");
        sb.append(bool.booleanValue() ? "true" : "false");
        sb.append("\",\"sToken\":\"");
        sb.append(System.currentTimeMillis());
        sb.append("_");
        sb.append(RandomUtil.getRandomString(8));
        sb.append("\",\"source\":\"chInfo_ch_appcenter__chsub_9patch\"}]");
        return ApplicationHook.requestString("alipay.antforest.forest.h5.consumeProp", sb.toString());
    }

    public static String giveProp(String str, String str2, String str3) {
        return ApplicationHook.requestString("alipay.antforest.forest.h5.giveProp", "[{\"giveConfigId\":\"" + str + "\",\"propId\":\"" + str2 + "\",\"source\":\"self_corner\",\"targetUserId\":\"" + str3 + "\"}]");
    }

    public static String collectProp(String str, String str2) {
        return ApplicationHook.requestString("alipay.antforest.forest.h5.collectProp", "[{\"giveConfigId\":\"" + str + "\",\"giveId\":\"" + str2 + "\",\"source\":\"chInfo_ch_appcenter__chsub_9patch\"}]");
    }

    public static String consumeProp(String str, String str2, String str3, Boolean bool) {
        return ApplicationHook.requestString("alipay.antforest.forest.h5.consumeProp", "[{\"propGroup\":\"" + str + "\",\"propId\":\"" + str2 + "\",\"propType\":\"" + str3 + "\",\"sToken\":\"" + (System.currentTimeMillis() + "_" + RandomUtil.getRandomString(8)) + "\",\"secondConfirm\":" + bool + ",\"source\":\"chInfo_ch_appcenter__chsub_9patch\",\"timezoneId\":\"Asia/Shanghai\",\"version\":\"" + VERSION + "\"}]");
    }

    public static String consumeProp(String str, String str2, String str3) {
        return ApplicationHook.requestString("alipay.antforest.forest.h5.consumeProp", "[{\"propGroup\":\"" + str + "\",\"propId\":\"" + str2 + "\",\"propType\":\"" + str3 + "\",\"sToken\":\"" + (System.currentTimeMillis() + "_" + RandomUtil.getRandomString(8)) + "\",\"source\":\"chInfo_ch_appcenter__chsub_9patch\",\"timezoneId\":\"Asia/Shanghai\",\"version\":\"" + VERSION + "\"}]");
    }

    public static String queryMiscInfo() {
        return ApplicationHook.requestString("alipay.antforest.forest.h5.queryMiscInfo", "[{\"queryBizType\":\"usingProp\",\"source\":\"SELF_HOME\",\"version\":\"20240201\"}]");
    }

    public static String itemList(String str) {
        return ApplicationHook.requestString("com.alipay.antiep.itemList", "[{\"extendInfo\":\"{}\",\"labelType\":\"" + str + "\",\"pageSize\":20,\"requestType\":\"rpc\",\"sceneCode\":\"ANTFOREST_VITALITY\",\"source\":\"afEntry\",\"startIndex\":0}]");
    }

    public static String itemDetail(String str) {
        return ApplicationHook.requestString("com.alipay.antiep.itemDetail", "[{\"requestType\":\"rpc\",\"sceneCode\":\"ANTFOREST_VITALITY\",\"source\":\"afEntry\",\"spuId\":\"" + str + "\"}]");
    }

    public static String queryVitalityStoreIndex() {
        return ApplicationHook.requestString("alipay.antforest.forest.h5.queryVitalityStoreIndex", "[{\"source\":\"afEntry\"}]");
    }

    public static String exchangeBenefit(String str, String str2) {
        return ApplicationHook.requestString("com.alipay.antcommonweal.exchange.h5.exchangeBenefit", "[{\"sceneCode\":\"ANTFOREST_VITALITY\",\"requestId\":\"" + System.currentTimeMillis() + "_" + RandomUtil.getRandom(17) + "\",\"spuId\":\"" + str + "\",\"skuId\":\"" + str2 + "\",\"source\":\"GOOD_DETAIL\"}]");
    }

    public static String testH5Rpc(String str, String str2) {
        return ApplicationHook.requestString(str, str2);
    }

    public static String queryUserPatrol() {
        return ApplicationHook.requestString("alipay.antforest.forest.h5.queryUserPatrol", "[{\"source\":\"ant_forest\",\"timezoneId\":\"Asia/Shanghai\"}]");
    }

    public static String queryMyPatrolRecord() {
        return ApplicationHook.requestString("alipay.antforest.forest.h5.queryMyPatrolRecord", "[{\"source\":\"ant_forest\",\"timezoneId\":\"Asia/Shanghai\"}]");
    }

    public static String switchUserPatrol(String str) {
        return ApplicationHook.requestString("alipay.antforest.forest.h5.switchUserPatrol", "[{\"source\":\"ant_forest\",\"targetPatrolId\":" + str + ",\"timezoneId\":\"Asia/Shanghai\"}]");
    }

    public static String patrolGo(int i, int i2) {
        return ApplicationHook.requestString("alipay.antforest.forest.h5.patrolGo", "[{\"nodeIndex\":" + i + ",\"patrolId\":" + i2 + ",\"source\":\"ant_forest\",\"timezoneId\":\"Asia/Shanghai\"}]");
    }

    public static String patrolKeepGoing(int i, int i2, String str) {
        String str2;
        str.hashCode();
        switch (str) {
            case "quiz":
                str2 = "[{\"nodeIndex\":" + i + ",\"patrolId\":" + i2 + ",\"reactParam\":{\"answer\":\"correct\"},\"source\":\"ant_forest\",\"timezoneId\":\"Asia/Shanghai\"}]";
                break;
            case "chase":
                str2 = "[{\"nodeIndex\":" + i + ",\"patrolId\":" + i2 + ",\"reactParam\":{\"sendChat\":\"Y\"},\"source\":\"ant_forest\",\"timezoneId\":\"Asia/Shanghai\"}]";
                break;
            case "video":
                str2 = "[{\"nodeIndex\":" + i + ",\"patrolId\":" + i2 + ",\"reactParam\":{\"viewed\":\"Y\"},\"source\":\"ant_forest\",\"timezoneId\":\"Asia/Shanghai\"}]";
                break;
            default:
                str2 = "[{\"nodeIndex\":" + i + ",\"patrolId\":" + i2 + ",\"reactParam\":{},\"source\":\"ant_forest\",\"timezoneId\":\"Asia/Shanghai\"}]";
                break;
        }
        return ApplicationHook.requestString("alipay.antforest.forest.h5.patrolKeepGoing", str2);
    }

    public static String exchangePatrolChance(int i) {
        return ApplicationHook.requestString("alipay.antforest.forest.h5.exchangePatrolChance", "[{\"costStep\":" + i + ",\"source\":\"ant_forest\",\"timezoneId\":\"Asia/Shanghai\"}]");
    }

    public static String queryAnimalAndPiece(int i) {
        String str;
        if (i != 0) {
            str = "[{\"animalId\":" + i + ",\"source\":\"ant_forest\",\"timezoneId\":\"Asia/Shanghai\"}]";
        } else {
            str = "[{\"source\":\"ant_forest\",\"timezoneId\":\"Asia/Shanghai\",\"withDetail\":\"N\",\"withGift\":true}]";
        }
        return ApplicationHook.requestString("alipay.antforest.forest.h5.queryAnimalAndPiece", str);
    }

    public static String combineAnimalPiece(int i, String str) {
        return ApplicationHook.requestString("alipay.antforest.forest.h5.combineAnimalPiece", "[{\"animalId\":" + i + ",\"piecePropIds\":" + str + ",\"timezoneId\":\"Asia/Shanghai\",\"source\":\"ant_forest\"}]");
    }

    public static String AnimalConsumeProp(String str, String str2, String str3) {
        return ApplicationHook.requestString("alipay.antforest.forest.h5.consumeProp", "[{\"propGroup\":\"" + str + "\",\"propId\":\"" + str2 + "\",\"propType\":\"" + str3 + "\",\"source\":\"ant_forest\",\"timezoneId\":\"Asia/Shanghai\"}]");
    }

    private static String monopolyPayload(String str) {
        return "[{\"source\":\"monopoly_home_board\",\"uniqueId\":\"" + RandomUtil.getRandomString(16) + "\"" + str + "}]";
    }

    private static String monopolyAnimalPayload(String str) {
        return "[{\"source\":\"monopoly_home_animal\",\"uniqueId\":\"" + RandomUtil.getRandomString(16) + "\"" + str + "}]";
    }

    public static String queryMonopolyEntryInfo() {
        return ApplicationHook.requestString("alipay.antisle.monopoly.h5.queryMonopolyEntryInfo", monopolyPayload(""));
    }

    public static String triggerMonopolyHomeProps() {
        return ApplicationHook.requestString("alipay.antisle.monopoly.h5.triggerHomePageProps", monopolyPayload(""));
    }

    public static String rollMonopolyDice(boolean z) {
        return ApplicationHook.requestString("alipay.antisle.monopoly.h5.rollDice", monopolyPayload(z ? ",\"extParams\":\"{\\\"guideRoll\\\":true,\\\"source\\\":\\\"newUserGuide\\\"}\"" : ""));
    }

    public static String confirmMonopolyEvent(String str, String str2) {
        return ApplicationHook.requestString("alipay.antisle.monopoly.h5.eventConfirm", monopolyPayload(",\"eventId\":\"" + str + "\",\"status\":\"CONFIRMED\",\"decisionData\":{\"actionKey\":\"" + str2 + "\",\"source\":\"ROLL_DICE_STEP\"}"));
    }

    public static String listMonopolyTasks(String str, String str2) {
        return ApplicationHook.requestString("com.alipay.antieptask.listTaskopengreen", "[{\"extend\":{\"regionCode\":\"" + str + "\"},\"sceneCode\":\"" + str2 + "\",\"source\":\"ANTFOREST\",\"requestType\":\"RPC\",\"zoneId\":\"Asia/Shanghai\",\"uniqueId\":\"" + RandomUtil.getRandomString(16) + "\"}]");
    }

    public static String finishMonopolyTask(String str, String str2) {
        return ApplicationHook.requestString("com.alipay.antieptask.finishTaskopengreen", "[{\"taskType\":\"" + str + "\",\"sceneCode\":\"" + str2 + "\",\"source\":\"ANTFOREST\",\"requestType\":\"H5\",\"outBizNo\":\"" + str + "_" + System.currentTimeMillis() + "_" + RandomUtil.getRandomString(8) + "\"}]");
    }

    public static String queryMonopolyTreeForExchange(String str, String str2) {
        return ApplicationHook.requestString("alipay.antforest.forest.h5.queryTreeForExchange", "[{\"projectId\":\"" + str + "\",\"source\":\"" + str2 + "\",\"version\":\"20240704\"}]");
    }

    public static String receiveMonopolyTask(String str, String str2) {
        return ApplicationHook.requestString("com.alipay.antieptask.receiveTaskAwardopengreen", "[{\"taskType\":\"" + str + "\",\"sceneCode\":\"" + str2 + "\",\"source\":\"ANTFOREST\",\"requestType\":\"RPC\",\"ignoreLimit\":false}]");
    }

    public static String queryUsingCreatureInfo(String str) {
        return ApplicationHook.requestString("alipay.antisle.monopoly.h5.queryUsingCreatureInfo", "[{\"source\":\"chInfo_ch_appcenter__chsub_9patch\",\"targetUserId\":\"" + str + "\",\"uniqueId\":\"" + RandomUtil.getRandomString(16) + "\",\"version\":\"20260623\"}]");
    }

    public static String collectMonopolyCreatureEnergy(String str, String str2) {
        return ApplicationHook.requestString("alipay.antisle.monopoly.h5.collectMonopolyCreatureEnergy", "[{\"creatureCode\":\"" + str + "\",\"shortDay\":\"" + str2 + "\",\"source\":\"chInfo_ch_appcenter__chsub_9patch\",\"uniqueId\":\"" + RandomUtil.getRandomString(16) + "\"}]");
    }

    public static String assignMonopolyCreature(String str, boolean z) {
        return ApplicationHook.requestString("alipay.antisle.monopoly.h5.assignMonopolyCreature", monopolyAnimalPayload(",\"creatureCode\":\"" + str + "\",\"secondConfirm\":" + z));
    }

    public static String queryMonopolyMapPage() {
        return ApplicationHook.requestString("alipay.antisle.monopoly.h5.queryMonopolyMapPage", "[{\"source\":\"monopoly_home_animal\",\"uniqueId\":\"" + RandomUtil.getRandomString(16) + "\"}]");
    }

    public static String switchMonopolyMap(String str, String str2) {
        return ApplicationHook.requestString("alipay.antisle.monopoly.h5.switchMonopolyMap", "[{\"mapCode\":\"" + str + "\",\"regionCode\":\"" + str2 + "\",\"source\":\"monopoly_home_animal\",\"uniqueId\":\"" + RandomUtil.getRandomString(16) + "\"}]");
    }

    public static String switchMonopolyRegion(String str) {
        return ApplicationHook.requestString("alipay.antisle.monopoly.h5.switchMonopolyRegion", "[{\"regionCode\":\"" + str + "\",\"source\":\"monopoly_home_animal\",\"uniqueId\":\"" + RandomUtil.getRandomString(16) + "\"}]");
    }

    public static String newMonopolyExchangeTree(int i) {
        return ApplicationHook.requestString("alipay.antmember.forest.h5.exchangeTree", "[{\"projectId\":" + i + ",\"sToken\":\"" + System.currentTimeMillis() + "\",\"source\":\"monopoly_exchange_mappage\",\"version\":\"20230501\"}]");
    }

    public static String queryMonopolyRanking() {
        return queryMonopolyRanking("TOTAL");
    }

    public static String queryMonopolyRanking(String str) {
        return ApplicationHook.requestString("alipay.antisle.monopoly.h5.queryMonopolyRanking", "[{\"rankType\":\"" + str + "\",\"source\":\"monopoly_home_animal\",\"uniqueId\":\"" + RandomUtil.getRandomString(16) + "\"}]");
    }

    public static String collectAnimalRobEnergy(String str, String str2, String str3) {
        return ApplicationHook.requestString("alipay.antforest.forest.h5.collectAnimalRobEnergy", "[{\"propId\":\"" + str + "\",\"propType\":\"" + str2 + "\",\"shortDay\":\"" + str3 + "\",\"source\":\"chInfo_ch_appcenter__chsub_9patch\",\"version\":\"" + VERSION + "\"}]");
    }

    public static String protectBubble(String str) {
        return ApplicationHook.requestString("alipay.antforest.forest.h5.protectBubble", "[{\"source\":\"ANT_FOREST_H5\",\"targetUserId\":\"" + str + "\",\"version\":\"" + VERSION + "\"}]");
    }

    public static String collectFriendGiftBox(String str, String str2) {
        return ApplicationHook.requestString("alipay.antforest.forest.h5.collectFriendGiftBox", "[{\"source\":\"chInfo_ch_appcenter__chsub_9patch\",\"targetId\":\"" + str + "\",\"targetUserId\":\"" + str2 + "\"}]");
    }

    public static String startWhackMole(String str) {
        return ApplicationHook.requestString("alipay.antforest.forest.h5.startWhackMole", "[{\"source\":\"" + str + "\"}]");
    }

    public static String startWhackMole() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("source", "senlinguangchangdadishu");
        return ApplicationHook.requestString("alipay.antforest.forest.h5.startWhackMole", "[" + jSONObject + "]");
    }

    public static String whackMole(long j, String str, String str2) {
        return ApplicationHook.requestString("alipay.antforest.forest.h5.whackMole", "[{\"moleId\":" + j + ",\"source\":\"" + str2 + "\",\"token\":\"" + str + "\",\"version\":\"" + VERSION + "\"}]");
    }

    public static String oldwhackMole(long j, String str, String str2) {
        return ApplicationHook.requestString("alipay.antforest.forest.h5.whackMole", "[{\"moleId\":" + j + ",\"source\":\"" + str2 + "\",\"token\":\"" + str + "\",\"version\":\"" + VERSION + "\"}]");
    }

    public static String oldstartWhackMole(String str) {
        return ApplicationHook.requestString("alipay.antforest.forest.h5.startWhackMole", "[{\"source\":\"" + str + "\"}]");
    }

    public static String settlementWhackMole(String str) throws JSONException {
        ArrayList arrayList = new ArrayList();
        for (int i = 1; i <= 20; i++) {
            arrayList.add(Integer.valueOf(i));
        }
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("moleIdList", new JSONArray((Collection) arrayList));
        jSONObject.put("settlementScene", "NORMAL");
        jSONObject.put("source", "senlinguangchangdadishu");
        jSONObject.put("token", str);
        jSONObject.put("version", VERSION);
        return ApplicationHook.requestString("alipay.antforest.forest.h5.settlementWhackMole", "[" + jSONObject + "]");
    }

    public static String oldsettlementWhackMole(String str, List<String> list, String str2) {
        return ApplicationHook.requestString("alipay.antforest.forest.h5.settlementWhackMole", "[{\"moleIdList\":[" + SimplePageManager$$ExternalSyntheticBackport0.m(",", list) + "],\"settlementScene\":\"NORMAL\",\"source\":\"" + str2 + "\",\"token\":\"" + str + "\",\"version\":\"" + VERSION + "\"}]");
    }

    public static String settlementWhackMole(String str, List<String> list, String str2) {
        return ApplicationHook.requestString("alipay.antforest.forest.h5.settlementWhackMole", "[{\"moleIdList\":[" + SimplePageManager$$ExternalSyntheticBackport0.m(",", list) + "],\"settlementScene\":\"NORMAL\",\"source\":\"" + str2 + "\",\"token\":\"" + str + "\",\"version\":\"" + VERSION + "\"}]");
    }

    public static String queryTaskListV2(String str) {
        return ApplicationHook.requestString("com.alipay.antieptask.listTaskopengreen", "[{\"extend\":{\"firstTaskType\":\"" + str + "\",\"businessSource\":\"ANTFOREST-home_task_list\",\"osType\":\"android\",\"version\":\"20260109\"},\"requestType\":\"RPC\",\"sceneCode\":\"ANTFOREST_VITALITY_TASK\",\"source\":\"chInfo_ch_appcenter__chsub_9patch\"}]");
    }

    public static String receiveTaskAwardV2(String str) {
        return ApplicationHook.requestString("com.alipay.antiep.receiveTaskAward", "[{\"ignoreLimit\":false,\"requestType\":\"H5\",\"sceneCode\":\"ANTFOREST_VITALITY_TASK\",\"taskType\":\"" + str + "\",\"source\":\"ANTFOREST\"}]");
    }

    public static String studentQqueryCheckInModel() {
        return ApplicationHook.requestString("alipay.membertangram.biz.rpc.student.queryCheckInModel", "[{\"chInfo\":\"ch_appcollect__chsub_my-recentlyUsed\",\"skipTaskModule\":false}]");
    }

    public static String studentCheckin() {
        return ApplicationHook.requestString("alipay.membertangram.biz.rpc.student.checkIn", "[{\"source\":\"chInfo_ch_appcenter__chsub_9patch\"}]");
    }

    public static String closeWhackMole() {
        return ApplicationHook.requestString("alipay.antforest.forest.h5.updateUserConfig", "[{\"configMap\":{\"whackMole\":\"N\"},\"source\":\"chInfo_ch_appcenter__chsub_9patch\"}]");
    }

    public static String collectRobExpandEnergy(String str, String str2) {
        return ApplicationHook.requestString("alipay.antforest.forest.h5.collectRobExpandEnergy", "[{\"propId\":\"" + str + "\",\"propType\":\"" + str2 + "\",\"source\":\"chInfo_ch_appcenter__chsub_9patch\"}]");
    }

    public static String medical_health_feeds_query() {
        return ApplicationHook.requestString("alipay.iblib.channel.build.query", "[{\"activityCode\":\"medical_health_feeds_query\",\"activityId\":\"2023072600001207\",\"body\":{\"apiVersion\":\"3.1.0\",\"bizId\":\"B213\",\"businessCode\":\"JKhealth\",\"businessId\":\"O2023071900061804\",\"cityCode\":\"330100\",\"cityName\":\"杭州\",\"exclContentIds\":[],\"filterItems\":[],\"latitude\":\"\",\"longitude\":\"\",\"moduleParam\":{\"COMMON_FEEDS_BLOCK_2024041200243259\":{}},\"pageCode\":\"YM2024041200137150\",\"pageNo\":1,\"pageSize\":10,\"pid\":\"BC_PD_20230713000008526\",\"queryQuizActivityFeed\":1,\"scenceCode\":\"HEALTH_CHANNEL\",\"schemeParams\":{},\"scope\":\"PARTIAL\",\"selectedTabCode\":\"\",\"sourceType\":\"miniApp\",\"specialItemId\":\"\",\"specialItemType\":\"\",\"tenantCode\":\"2021003141652419\",\"underTakeContentId\":\"\"},\"version\":\"2.0\"}]");
    }

    public static String query_forest_energy() {
        return ApplicationHook.requestString("alipay.iblib.channel.data", "[{\"activityCode\":\"query_forest_energy\",\"activityId\":\"2024052300762675\",\"appId\":\"2021003141652419\",\"body\":{\"scene\":\"FEEDS\"},\"version\":\"2.0\"}]");
    }

    public static String produce_forest_energy(String str) {
        return ApplicationHook.requestString("alipay.iblib.channel.data", "[{\"activityCode\":\"produce_forest_energy\",\"activityId\":\"2024052300762674\",\"appId\":\"2021003141652419\",\"body\":{\"scene\":\"FEEDS\",\"uniqueId\":\"" + str + "\"},\"version\":\"2.0\"}]");
    }

    public static String harvest_forest_energy(int i, String str) {
        return ApplicationHook.requestString("alipay.iblib.channel.data", "[{\"activityCode\":\"harvest_forest_energy\",\"activityId\":\"2024052300762676\",\"appId\":\"2021003141652419\",\"body\":{\"bubbles\":[{\"energy\":" + i + ",\"id\":\"" + str + "\"}],\"scene\":\"FEEDS\"},\"version\":\"2.0\"}]");
    }

    public static String queryForestEnergy(String str) {
        return ApplicationHook.requestString("alipay.iblib.channel.data", "[{\"activityCode\":\"query_forest_energy\",\"activityId\":\"2024052300762675\",\"body\":{\"scene\":\"" + str + "\"},\"version\":\"2.0\"}]");
    }

    public static String produceForestEnergy(String str) {
        return ApplicationHook.requestString("alipay.iblib.channel.data", "[{\"activityCode\":\"produce_forest_energy\",\"activityId\":\"2024052300762674\",\"body\":{\"scene\":\"" + str + "\",\"uniqueId\":\"" + System.currentTimeMillis() + "\"},\"version\":\"2.0\"}]");
    }

    public static String harvestForestEnergy(String str, JSONArray jSONArray) {
        return ApplicationHook.requestString("alipay.iblib.channel.data", "[{\"activityCode\":\"harvest_forest_energy\",\"activityId\":\"2024052300762676\",\"body\":{\"bubbles\":" + jSONArray + ",\"scene\":\"" + str + "\"},\"version\":\"2.0\"}]");
    }

    public static String listUserDressForBackpack(String str) {
        return ApplicationHook.requestString("alipay.antforest.forest.h5.listUserDressForBackpack", "[{\"positionType\":\"" + str + "\",\"source\":\"chInfo_ch_appcenter__chsub_9patch\",\"version\":\"" + VERSION + "\"}]");
    }

    public static String wearDress(String str) {
        return ApplicationHook.requestString("alipay.antforest.forest.h5.wearDress", "[{\"dressType\":\"" + str + "\",\"outBizNo\":\"" + str + RandomUtil.nextDouble() + "\",\"source\":\"chInfo_ch_appcenter__chsub_9patch\"}]");
    }

    public static String takeOffDress(String str, String str2) {
        return ApplicationHook.requestString("alipay.antforest.forest.h5.takeOffDress", "[{\"dressType\":\"" + str + "\",\"outBizNo\":\"" + str + RandomUtil.nextDouble() + "\",\"position\":\"" + str2 + "\",\"source\":\"chInfo_ch_appcenter__chsub_9patch\"}]");
    }

    public static String checkUserSecondSceneChance() {
        return ApplicationHook.requestString("com.alipay.creditapollon.biz.rpc.api.rent.green.checkUserSecondSceneChance", "[{\"requestSceneCode\":\"rentBrowse\"}]");
    }

    public static String generateEnergy() {
        return ApplicationHook.requestString("com.alipay.creditapollon.biz.rpc.api.rent.green.generateEnergy", "[{\"requestSceneCode\":\"rentBrowse\"}]");
    }

    public static String flowHubEntrance() {
        return ApplicationHook.requestString("com.alipay.antpwgrowth.flowHubEntrance", "[{\"bizType\":\"ANTFOREST\",\"flowEntranceId\":\"FOREST_PLAY_GROUND\",\"source\":\"ANTFOREST\"}]");
    }

    public static String partnerteamWater(String str, int i) {
        return ApplicationHook.requestString("alipay.antforest.forest.h5.teamWater", "[{\"energyCount\":" + i + ",\"sToken\":\"" + (System.currentTimeMillis() + "_" + String.format("%08x", Integer.valueOf(new SecureRandom().nextInt()))) + "\",\"source\":\"chInfo_ch_appcenter__chsub_9patch\",\"teamId\":\"" + str + "\"}]");
    }

    public static String loveteamHome() {
        return ApplicationHook.requestString("alipay.greenmatrix.rpc.h5.love.loveHome", "[{\"source\":\"chInfo_ch_appcenter__chsub_9patch\"}]");
    }

    public static String loveteamWater(String str, int i) {
        return ApplicationHook.requestString("alipay.greenmatrix.rpc.h5.love.teamWater", "[{\"donateNum\":" + i + ",\"source\":\"chInfo_ch_appcenter__chsub_9patch\",\"teamId\":\"" + str + "\"}]");
    }

    public static String shareComponentRecall(String str, String str2) {
        return ApplicationHook.requestString("com.alipay.antiep.shareComponentRecall", "[{\"iepShareChannelType\":\"qrcode\",\"requestType\":\"RPC\",\"sceneCode\":\"" + str + "\",\"shareId\":\"" + str2 + "\",\"source\":\"chouchoule\"}]");
    }

    public static String confirmShareRecall(String str, String str2, String str3, String str4) {
        return ApplicationHook.requestString("com.alipay.antiep.confirmShareRecall", "[{\"beSharedBizExtInfo\":{\"drawActivityId\":\"" + str + "\",\"inviterUid\":\"" + str4 + "\"},\"requestType\":\"RPC\",\"sceneCode\":\"" + str2 + "\",\"shareId\":\"" + str3 + "\",\"source\":\"chouchoule\",\"userId\":\"" + str4 + "\"}]");
    }

    public static String enterDrawActivityopengreen(String str, String str2, String str3) {
        return ApplicationHook.requestString("com.alipay.antiepdrawprod.enterDrawActivityopengreen", "[{\"activityId\":\"" + str + "\",\"requestType\":\"RPC\",\"sceneCode\":\"" + str2 + "\",\"source\":\"" + str3 + "\"}]");
    }

    public static String listTaskopengreen(String str, String str2) {
        return ApplicationHook.requestString("com.alipay.antieptask.listTaskopengreen", "[{\"requestType\":\"RPC\",\"sceneCode\":\"" + str + "\",\"source\":\"" + str2 + "\"}]");
    }

    public static String receiveTaskAwardopengreen(String str, String str2, String str3) {
        return ApplicationHook.requestString("com.alipay.antieptask.receiveTaskAwardopengreen", "[{\"ignoreLimit\":true,\"requestType\":\"RPC\",\"sceneCode\":\"" + str2 + "\",\"source\":\"" + str + "\",\"taskType\":\"" + str3 + "\"}]");
    }

    public static String exchangeTimesFromTaskopengreen(String str, String str2, String str3, String str4, String str5) {
        return ApplicationHook.requestString("com.alipay.antiepdrawprod.exchangeTimesFromTaskopengreen", "[{\"activityId\":\"" + str + "\",\"requestType\":\"RPC\",\"sceneCode\":\"" + str2 + "\",\"source\":\"" + str3 + "\",\"taskSceneCode\":\"" + str4 + "\",\"taskType\":\"" + str5 + "\"}]");
    }

    public static String finishTask4Chouchoule(String str, String str2) {
        return ApplicationHook.requestString("com.alipay.antiep.finishTask", "[{\"outBizNo\":\"" + (str + "_" + System.currentTimeMillis() + "_" + RandomUtil.getRandomString(8)) + "\",\"requestType\":\"RPC\",\"sceneCode\":\"" + str2 + "\",\"source\":\"ADBASICLIB\",\"taskType\":\"" + str + "\"}]");
    }

    public static String drawopengreen(String str, String str2, String str3, String str4) {
        return ApplicationHook.requestString("com.alipay.antiepdrawprod.drawopengreen", "[{\"activityId\":\"" + str + "\",\"requestType\":\"RPC\",\"sceneCode\":\"" + str2 + "\",\"source\":\"" + str3 + "\",\"userId\":\"" + str4 + "\"}]");
    }

    public static String finishTaskopengreen(String str, String str2) {
        return ApplicationHook.requestString("com.alipay.antieptask.finishTaskopengreen", "[{\"outBizNo\":\"" + (str + "_" + System.currentTimeMillis() + "_" + RandomUtil.getRandomString(8)) + "\",\"requestType\":\"RPC\",\"sceneCode\":\"" + str2 + "\",\"source\":\"task_entry\",\"taskType\":\"" + str + "\"}]");
    }

    public static String updateUserConfiginTeam(boolean z) {
        return ApplicationHook.requestString("alipay.antforest.forest.h5.updateUserConfig", "[{\"configMap\":{\"inTeam\":\"" + (z ? "Y" : "N") + "\"},\"source\":\"chInfo_ch_appcenter__chsub_9patch\"}]");
    }

    public static String teamWater(String str, int i) {
        return ApplicationHook.requestString("alipay.antforest.forest.h5.teamWater", "[{\"energyCount\":" + i + ",\"sToken\":\"" + (System.currentTimeMillis() + "_" + RandomUtil.getRandomString(8)) + "\",\"source\":\"chInfo_ch_appcenter__chsub_9patch\",\"teamId\":\"" + str + "\"}]");
    }

    public static String queryMiscInfo(String str, String str2) {
        return ApplicationHook.requestString("alipay.antforest.forest.h5.queryMiscInfo", "[{\"queryBizType\":\"" + str + "\",\"source\":\"SELF_HOME\",\"targetUserId\":\"" + str2 + "\",\"version\":\"" + VERSION + "\"}]");
    }

    public static String queryTeamMemberList(String str) {
        return ApplicationHook.requestString("alipay.antforest.forest.h5.queryTeamMemberList", "[{\"source\":\"chInfo_ch_appcenter__chsub_9patch\",\"teamId\":\"" + str + "\"}]");
    }

    public static String queryUserTag() {
        return ApplicationHook.requestString("alipay.antmember.h5.queryUserTag", "[{}]");
    }

    public static String updateUserConfigEnergyPvp(boolean z) {
        return ApplicationHook.requestString("alipay.antforest.forest.h5.updateUserConfig", "[{\"configMap\":{\"energyPvp\":\"" + (z ? "Y" : "N") + "\"},\"source\":\"chInfo_ch_appcenter__chsub_9patch\"}]");
    }

    public static String checkRewardqueryMiscInfo() {
        return ApplicationHook.requestString("alipay.antforest.forest.h5.queryMiscInfo", "[{\"extInfo\":\"{\\\"checkReward\\\":true}\",\"queryBizType\":\"energyPvpInfo\",\"source\":\"chInfo_ch_appcenter__chsub_9patch\"}]");
    }

    public static String receivePvpRewards() {
        return ApplicationHook.requestString("alipay.antforest.forest.h5.receivePvpRewards", "[{\"source\":\"chInfo_ch_appcenter__chsub_9patch\"}]");
    }

    public static String queryPvpHomeInfo() {
        return ApplicationHook.requestString("alipay.antforest.forest.h5.queryPvpHomeInfo", "[{\"queryWaitToReceive\":true,\"source\":\"chInfo_ch_appcenter__chsub_9patch\"}]");
    }

    public static String queryOptionalPlay() {
        return ApplicationHook.requestString("com.alipay.charitygamecenter.queryOptionalPlay", "[{\"bizType\":\"ANTFOREST\",\"commonDegradeFilterRequest\":{\"appMode\":\"normal\",\"deviceLevel\":\"high\",\"platform\":\"Android\",\"unityDeviceLevel\":\"high\"},\"playTypeList\":[\"TASK_TRIGGER\",\"TOP_UP_COUPON\"],\"recentAppRecordList\":[],\"requestType\":\"RPC\",\"sceneCode\":\"ANTFOREST_COMMON\",\"source\":\"chInfo_ch_appcenter__chsub_9patch\",\"version\":\"" + VERSION + "\"}]");
    }
}
