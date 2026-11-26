package io.github.lazyimmortal.sesame.model.task.antFarm;

import io.github.lazyimmortal.sesame.hook.ApplicationHook;
import io.github.lazyimmortal.sesame.util.Log;
import io.github.lazyimmortal.sesame.util.RandomUtil;
import io.github.lazyimmortal.sesame.util.StringUtil;
import io.github.lazyimmortal.sesame.util.idMap.UserIdMap;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Random;
import java.util.UUID;
import kotlin.UByte;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class AntFarmRpcCall {
    public static final String AI_KITCHEN_TASK_SCENE = "ANTFARM_AI_KITCHEN_TASK";
    public static final String VERSION = "1.8.2302070202.46";

    public static String enterFarm(String str) {
        return ApplicationHook.requestString("com.alipay.antfarm.enterFarm", "[{\"queryLastRecordNum\":true,\"recall\":false,\"requestType\":\"NORMAL\",\"sceneCode\":\"ANTFARM\",\"source\":\"H5\",\"userId\":\"" + str + "\"}]");
    }

    public static String enterFarm(String str, String str2) {
        return ApplicationHook.requestString("com.alipay.antfarm.enterFarm", "[{\"animalId\":\"\",\"bizCode\":\"\",\"farmId\":\"" + str + "\",\"gotoneScene\":\"\",\"gotoneTemplateId\":\"\",\"groupId\":\"\",\"growthExtInfo\":\"\",\"inviteUserId\":\"\",\"masterFarmId\":\"\",\"queryLastRecordNum\":true,\"recall\":false,\"requestType\":\"NORMAL\",\"sceneCode\":\"ANTFARM\",\"shareId\":\"\",\"shareUniqueId\":\"" + (System.currentTimeMillis() + "_" + str2) + "\",\"source\":\"ANTFOREST\",\"starFarmId\":\"\",\"subBizCode\":\"\",\"touchRecordId\":\"\",\"userId\":\"" + str2 + "\",\"version\":\"1.8.2302070202.46\"}]");
    }

    public static String letsGetChickenFeedTogether() {
        return ApplicationHook.requestString("com.alipay.antiep.canInvitePersonListP2P", "[{\"needHasInviteUserByCycle\":\"true\",\"requestType\":\"RPC\",\"sceneCode\":\"ANTFARM_P2P\",\"source\":\"ANTFARM\",\"startIndex\":0,\"version\":\"1.8.2302070202.46\"}]");
    }

    public static String giftOfFeed(String str, String str2) {
        return ApplicationHook.requestString("com.alipay.antiep.inviteP2P", "[{\"beInvitedUserId\":\"" + str2 + "\",\"bizTraceId\":\"" + str + "\",\"requestType\":\"RPC\",\"sceneCode\":\"ANTFARM_P2P\",\"source\":\"ANTFARM\",\"version\":\"1.8.2302070202.46\"}]");
    }

    public static String syncAnimalStatus(String str) {
        return ApplicationHook.requestString("com.alipay.antfarm.syncAnimalStatus", "[{\"farmId\":\"" + str + "\",\"operType\":\"FEEDSYNC\",\"queryFoodStockInfo\":false,\"recall\":false,\"requestType\":\"NORMAL\",\"sceneCode\":\"ANTFARM\",\"source\":\"H5\",\"userId\":\"" + farmId2UserId(str) + "\",\"version\":\"1.8.2302070202.46\"}]");
    }

    public static String sleep() {
        return ApplicationHook.requestString("com.alipay.antfarm.sleep", "[{\"requestType\":\"RPC\",\"sceneCode\":\"ANTFARM\",\"source\":\"LOVECABIN\",\"version\":\"unknown\"}]");
    }

    public static String wakeUp() {
        return ApplicationHook.requestString("com.alipay.antfarm.wakeUp", "[{\"requestType\":\"RPC\",\"sceneCode\":\"ANTFARM\",\"source\":\"LOVECABIN\",\"version\":\"unknown\"}]");
    }

    public static String queryLoveCabin(String str) {
        return ApplicationHook.requestString("com.alipay.antfarm.queryLoveCabin", "[{\"requestType\":\"RPC\",\"sceneCode\":\"ANTFARM\",\"source\":\"LOVECABIN\",\"userId\":\"" + str + "\"}]");
    }

    public static String rewardFriend(String str, String str2, String str3, String str4) {
        return ApplicationHook.requestString("com.alipay.antfarm.rewardFriend", "[{\"canMock\":true,\"consistencyKey\":\"" + str + "\",\"friendId\":\"" + str2 + "\",\"operType\":\"1\",\"productNum\":" + str3 + ",\"requestType\":\"NORMAL\",\"sceneCode\":\"ANTFARM\",\"source\":\"H5\",\"time\":" + str4 + ",\"version\":\"1.8.2302070202.46\"}]");
    }

    public static String recallAnimal(String str, String str2, String str3) {
        return ApplicationHook.requestString("com.alipay.antfarm.recallAnimal", "[{\"animalId\":\"" + str + "\",\"currentFarmId\":\"" + str2 + "\",\"masterFarmId\":\"" + str3 + "\",\"requestType\":\"NORMAL\",\"sceneCode\":\"ANTFARM\",\"source\":\"H5\",\"version\":\"1.8.2302070202.46\"}]");
    }

    public static String orchardRecallAnimal(String str, String str2) {
        return ApplicationHook.requestString("com.alipay.antorchard.recallAnimal", "[{\"animalId\":\"" + str + "\",\"orchardUserId\":\"" + str2 + "\",\"requestType\":\"NORMAL\",\"sceneCode\":\"ORCHARD\",\"source\":\"zhuangyuan_zhaohuixiaoji\",\"version\":\"0.1.2403061630.6\"}]");
    }

    public static String sendBackAnimal(String str, String str2, String str3, String str4) {
        return ApplicationHook.requestString("com.alipay.antfarm.sendBackAnimal", "[{\"animalId\":\"" + str2 + "\",\"currentFarmId\":\"" + str3 + "\",\"masterFarmId\":\"" + str4 + "\",\"requestType\":\"NORMAL\",\"sceneCode\":\"ANTFARM\",\"sendType\":\"" + str + "\",\"source\":\"H5\",\"version\":\"1.8.2302070202.46\"}]");
    }

    public static String harvestProduce(String str) {
        return ApplicationHook.requestString("com.alipay.antfarm.harvestProduce", "[{\"canMock\":true,\"farmId\":\"" + str + "\",\"giftType\":\"\",\"requestType\":\"NORMAL\",\"sceneCode\":\"ANTFARM\",\"source\":\"H5\",\"version\":\"1.8.2302070202.46\"}]");
    }

    public static String getCharityAccount(String str) {
        return ApplicationHook.requestString("com.alipay.antfarm.getCharityAccount", "[{\"requestType\":\"NORMAL\",\"sceneCode\":\"ANTFARM\",\"source\":\"H5\",\"userId\":\"" + str + "\",\"version\":\"unknown\"}]");
    }

    public static String listActivityInfo() {
        return ApplicationHook.requestString("com.alipay.antfarm.listActivityInfo", "[{\"requestType\":\"NORMAL\",\"sceneCode\":\"ANTFARM\",\"source\":\"H5\",\"version\":\"1.8.2302070202.46\"}]");
    }

    public static String getProjectInfo(String str) {
        return ApplicationHook.requestString("com.alipay.antfarm.getProjectInfo", "[{\"activityId\":\"\",\"projectId\":\"" + str + "\",\"requestType\":\"NORMAL\",\"sceneCode\":\"ANTFARM\",\"source\":\"ANTFARM\",\"version\":\"1.8.2302070202.46\"}]");
    }

    public static String donation(String str, int i) {
        return ApplicationHook.requestString("com.alipay.antfarm.donation", "[{\"activityId\":\"" + str + "\",\"donationAmount\":" + i + ",\"requestType\":\"NORMAL\",\"sceneCode\":\"ANTFARM\",\"source\":\"H5\",\"version\":\"1.8.2302070202.46\"}]");
    }

    public static String listFarmTask() {
        return ApplicationHook.requestString("com.alipay.antfarm.listFarmTask", "[{\"requestType\":\"NORMAL\",\"sceneCode\":\"ANTFARM\",\"source\":\"H5\",\"version\":\"1.8.2302070202.46\"}]");
    }

    public static String getAnswerInfo() {
        return ApplicationHook.requestString("com.alipay.antfarm.getAnswerInfo", "[{\"answerSource\":\"foodTask\",\"requestType\":\"NORMAL\",\"sceneCode\":\"ANTFARM\",\"source\":\"H5\",\"version\":\"1.8.2302070202.46\"}]");
    }

    public static String answerQuestion(String str, int i) {
        return ApplicationHook.requestString("com.alipay.antfarm.doFarmTask", "[{\"answers\":\"[{\\\"questionId\\\":\\\"" + str + "\\\",\\\"answers\\\":[" + i + "]}]\",\"bizkey\":\"ANSWER\",\"requestType\":\"NORMAL\",\"sceneCode\":\"ANTFARM\",\"source\":\"H5\",\"version\":\"1.8.2302070202.46\"}]");
    }

    public static String doFarmTask(String str, String str2) {
        String str3;
        if ("ANTFARM_IP_DRAW_TASK".equals(str2)) {
            str3 = "ip_ccl";
        } else if ("ANTFARM_DAILY_DRAW_TASK".equals(str2)) {
            str3 = "antfarm_villa";
        } else {
            str3 = "H5";
        }
        return ApplicationHook.requestString("com.alipay.antfarm.doFarmTask", "[{\"bizKey\":\"" + str + "\",\"requestType\":\"RPC\",\"sceneCode\":\"ANTFARM\",\"source\":\"" + str3 + "\",\"taskSceneCode\":\"" + str2 + "\",\"version\":\"1.8.2302070202.46\"}]");
    }

    public static String doFarmTask(String str) {
        return ApplicationHook.requestString("com.alipay.antfarm.doFarmTask", "[{\"bizKey\":\"" + str + "\",\"requestType\":\"NORMAL\",\"sceneCode\":\"ANTFARM\",\"source\":\"H5\"}]");
    }

    public static String finishTask(String str, String str2) {
        StringBuilder sb = new StringBuilder(8);
        Random random = new Random();
        for (int i = 0; i < 8; i++) {
            sb.append("0123456789abcdef".charAt(random.nextInt(16)));
        }
        return ApplicationHook.requestString("com.alipay.antiep.finishTask", "[{\"outBizNo\":\"" + (str + "_" + System.currentTimeMillis() + "_" + ((Object) sb)) + "\",\"requestType\":\"RPC\",\"sceneCode\":\"" + str2 + "\",\"source\":\"ADBASICLIB\",\"taskType\":\"" + str + "\"}]");
    }

    public static String receiveFarmTaskAward(String str) {
        return ApplicationHook.requestString("com.alipay.antfarm.receiveFarmTaskAward", "[{\"requestType\":\"NORMAL\",\"sceneCode\":\"ANTFARM\",\"source\":\"H5\",\"taskId\":\"" + str + "\",\"version\":\"1.8.2302070202.46\"}]");
    }

    public static String queryOptionalPlay() {
        return ApplicationHook.requestString("com.alipay.charitygamecenter.queryOptionalPlay", "[{\"bizType\":\"ANTFARM\",\"commonDegradeFilterRequest\":{\"appMode\":\"normal\",\"deviceLevel\":\"high\",\"initialized\":true,\"platform\":\"Android\",\"unityDeviceLevel\":\"high\"},\"playTypeList\":[\"TASK_TRIGGER\",\"TOP_UP_COUPON\"],\"recentAppRecordList\":[],\"requestType\":\"NORMAL\",\"sceneCode\":\"ANTFARM_COMMON\",\"source\":\"H5\",\"version\":\"1.8.2302070202.46\"}]");
    }

    public static String receiveTaskAwardantfarm(int i, String str, String str2) {
        return ApplicationHook.requestString("com.alipay.antieptask.receiveTaskAwardantfarm", "[{\"awardCountForReceive\":" + i + ",\"ignoreLimit\":true,\"requestType\":\"RPC\",\"sceneCode\":\"" + str + "\",\"source\":\"antfarm\",\"taskType\":\"" + str2 + "\"}]");
    }

    public static String listToolTaskDetails() {
        return ApplicationHook.requestString("com.alipay.antfarm.listToolTaskDetails", "[{\"requestType\":\"NORMAL\",\"sceneCode\":\"ANTFARM\",\"source\":\"H5\",\"version\":\"1.8.2302070202.46\"}]");
    }

    public static String receiveToolTaskReward(String str, int i, String str2) {
        return ApplicationHook.requestString("com.alipay.antfarm.receiveToolTaskReward", "[{\"ignoreLimit\":false,\"requestType\":\"NORMAL\",\"rewardCount\":" + i + ",\"rewardType\":\"" + str + "\",\"sceneCode\":\"ANTFARM\",\"source\":\"H5\",\"taskType\":\"" + str2 + "\",\"version\":\"1.8.2302070202.46\"}]");
    }

    public static String feedAnimal(String str) {
        return ApplicationHook.requestString("com.alipay.antfarm.feedAnimal", "[{\"animalType\":\"CHICK\",\"canMock\":true,\"farmId\":\"" + str + "\",\"requestType\":\"NORMAL\",\"sceneCode\":\"ANTFARM\",\"source\":\"H5\",\"version\":\"1.8.2302070202.46\"}]");
    }

    public static String listFarmTool() {
        return ApplicationHook.requestString("com.alipay.antfarm.listFarmTool", "[{\"requestType\":\"NORMAL\",\"sceneCode\":\"ANTFARM\",\"source\":\"H5\",\"version\":\"1.8.2302070202.46\"}]");
    }

    public static String useFarmTool(String str, String str2, String str3) {
        return ApplicationHook.requestString("com.alipay.antfarm.useFarmTool", "[{\"requestType\":\"NORMAL\",\"sceneCode\":\"ANTFARM\",\"source\":\"H5\",\"targetFarmId\":\"" + str + "\",\"toolId\":\"" + str2 + "\",\"toolType\":\"" + str3 + "\",\"version\":\"1.8.2302070202.46\"}]");
    }

    public static String rankingList(int i) {
        return ApplicationHook.requestString("com.alipay.antfarm.rankingList", "[{\"pageSize\":20,\"requestType\":\"NORMAL\",\"sceneCode\":\"ANTFARM\",\"source\":\"H5\",\"startNum\":" + i + ",\"version\":\"1.8.2302070202.46\"}]");
    }

    public static String queryAnimalShowInfo(String str) {
        return ApplicationHook.requestString("com.alipay.antfarm.queryAnimalShowInfo", "[{\"requestType\":\"NORMAL\",\"sceneCode\":\"ORCHARD\",\"source\":\"ANTORCHARD\",\"userId\":\"" + str + "\",\"version\":\"20260721.01\"}]");
    }

    public static String notifyFriend(String str, String str2) {
        return ApplicationHook.requestString("com.alipay.antfarm.notifyFriend", "[{\"animalId\":\"" + str + "\",\"animalType\":\"CHICK\",\"canBeGuest\":true,\"notifiedFarmId\":\"" + str2 + "\",\"requestType\":\"NORMAL\",\"sceneCode\":\"ANTFARM\",\"source\":\"H5\",\"version\":\"1.8.2302070202.46\"}]");
    }

    public static String feedFriendAnimal(String str) {
        return ApplicationHook.requestString("com.alipay.antfarm.feedFriendAnimal", "[{\"friendFarmId\":\"" + str + "\",\"requestType\":\"NORMAL\",\"sceneCode\":\"ANTFARM\",\"source\":\"chInfo_ch_appcollect__chsub_my-recentlyUsed\",\"version\":\"1.8.2302070202.46\"}]");
    }

    public static String feedFriendAnimal(String str, String str2) {
        if (StringUtil.isEmpty(str2)) {
            return feedFriendAnimal(str);
        }
        return ApplicationHook.requestString("com.alipay.antfarm.feedFriendAnimal", "[{\"friendFarmId\":\"" + str + "\",\"groupId\":\"" + str2 + "\",\"requestType\":\"NORMAL\",\"sceneCode\":\"ChickFamily\",\"source\":\"H5\",\"spaceType\":\"ChickFamily\"}]");
    }

    public static String farmId2UserId(String str) {
        return str.substring(str.length() / 2);
    }

    public static String collectManurePot(String str) {
        return ApplicationHook.requestString("com.alipay.antfarm.collectManurePot", "[{\"manurePotNOs\":\"" + str + "\",\"requestType\":\"NORMAL\",\"sceneCode\":\"ANTFARM\",\"source\":\"H5\",\"version\":\"1.8.2302070202.46\"}]");
    }

    public static String sign() {
        return ApplicationHook.requestString("com.alipay.antfarm.sign", "[{\"requestType\":\"NORMAL\",\"sceneCode\":\"ANTFARM\",\"source\":\"H5\",\"version\":\"1.8.2302070202.46\"}]");
    }

    public static String initFarmGame(String str) {
        if ("flyGame".equals(str)) {
            return ApplicationHook.requestString("com.alipay.antfarm.initFarmGame", "[{\"gameType\":\"flyGame\",\"requestType\":\"RPC\",\"sceneCode\":\"FLAYGAME\",\"source\":\"FARM_game_yundongfly\",\"toolTypes\":\"ACCELERATETOOL,SHARETOOL,NONE\",\"version\":\"\"}]");
        }
        return ApplicationHook.requestString("com.alipay.antfarm.initFarmGame", "[{\"gameType\":\"" + str + "\",\"requestType\":\"NORMAL\",\"sceneCode\":\"ANTFARM\",\"source\":\"H5\",\"toolTypes\":\"STEALTOOL,ACCELERATETOOL,SHARETOOL\"}]");
    }

    public static int RandomScore(String str) {
        if ("starGame".equals(str)) {
            return RandomUtil.nextInt(300, 400);
        }
        if ("jumpGame".equals(str)) {
            return RandomUtil.nextInt(250, 270) * 10;
        }
        if ("flyGame".equals(str)) {
            return RandomUtil.nextInt(4000, 8000);
        }
        if ("hitGame".equals(str)) {
            return RandomUtil.nextInt(80, 120);
        }
        return 210;
    }

    public static String recordFarmGame(String str) {
        return recordFarmGame(str, 50);
    }

    public static String recordFarmGame(String str, int i) {
        String uuid = getUuid();
        String md5 = getMD5(uuid);
        int iRandomScore = RandomScore(str);
        if ("flyGame".equals(str)) {
            return ApplicationHook.requestString("com.alipay.antfarm.recordFarmGame", "[{\"foodCount\":" + (iRandomScore / i) + ",\"gameType\":\"flyGame\",\"md5\":\"" + md5 + "\",\"requestType\":\"RPC\",\"sceneCode\":\"FLAYGAME\",\"score\":" + iRandomScore + ",\"source\":\"ANTFARM\",\"toolTypes\":\"ACCELERATETOOL,SHARETOOL,NONE\",\"uuid\":\"" + uuid + "\",\"version\":\"\"}]");
        }
        return ApplicationHook.requestString("com.alipay.antfarm.recordFarmGame", "[{\"gameType\":\"" + str + "\",\"md5\":\"" + md5 + "\",\"requestType\":\"NORMAL\",\"sceneCode\":\"ANTFARM\",\"score\":" + iRandomScore + ",\"source\":\"H5\",\"toolTypes\":\"STEALTOOL,ACCELERATETOOL,SHARETOOL\",\"uuid\":\"" + uuid + "\"}]");
    }

    private static String getUuid() {
        StringBuilder sb = new StringBuilder();
        for (String str : UUID.randomUUID().toString().split("-")) {
            sb.append(str.substring(str.length() / 2));
        }
        return sb.toString();
    }

    public static String getMD5(String str) {
        try {
            byte[] bArrDigest = MessageDigest.getInstance("md5").digest(str.getBytes());
            StringBuilder sb = new StringBuilder();
            for (byte b : bArrDigest) {
                String hexString = Integer.toHexString(b & UByte.MAX_VALUE);
                if (hexString.length() == 1) {
                    sb.append("0");
                }
                sb.append(hexString);
            }
            return sb.toString();
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
            return "";
        }
    }

    public static String enterKitchen(String str) {
        return ApplicationHook.requestString("com.alipay.antfarm.enterKitchen", "[{\"requestType\":\"RPC\",\"sceneCode\":\"ANTFARM\",\"source\":\"antfarmzuofanrw\",\"userId\":\"" + str + "\",\"version\":\"unknown\"}]");
    }

    public static String collectDailyFoodMaterial(int i) {
        return ApplicationHook.requestString("com.alipay.antfarm.collectDailyFoodMaterial", "[{\"collectDailyFoodMaterialAmount\":" + i + ",\"requestType\":\"RPC\",\"sceneCode\":\"ANTFARM\",\"source\":\"antfarmzuofanrw\",\"version\":\"unknown\"}]");
    }

    public static String queryFoodMaterialPack() {
        return ApplicationHook.requestString("com.alipay.antfarm.queryFoodMaterialPack", "[{\"requestType\":\"RPC\",\"sceneCode\":\"ANTFARM\",\"source\":\"kitchen\",\"version\":\"unknown\"}]");
    }

    public static String collectDailyLimitedFoodMaterial(int i) {
        return ApplicationHook.requestString("com.alipay.antfarm.collectDailyLimitedFoodMaterial", "[{\"collectDailyLimitedFoodMaterialAmount\":" + i + ",\"requestType\":\"RPC\",\"sceneCode\":\"ANTFARM\",\"source\":\"kitchen\",\"version\":\"unknown\"}]");
    }

    public static String farmFoodMaterialCollect() {
        return ApplicationHook.requestString("com.alipay.antorchard.farmFoodMaterialCollect", "[{\"collect\":true,\"requestType\":\"RPC\",\"sceneCode\":\"ORCHARD\",\"source\":\"VILLA\",\"version\":\"unknown\"}]");
    }

    public static String cook(String str) {
        return ApplicationHook.requestString("com.alipay.antfarm.cook", "[{\"requestType\":\"RPC\",\"sceneCode\":\"ANTFARM\",\"source\":\"antfarmzuofanrw\",\"userId\":\"" + str + "\",\"version\":\"unknown\"}]");
    }

    public static String useFarmFood(String str, String str2) {
        return ApplicationHook.requestString("com.alipay.antfarm.useFarmFood", "[{\"cookbookId\":\"" + str + "\",\"cuisineId\":\"" + str2 + "\",\"requestType\":\"NORMAL\",\"sceneCode\":\"ANTFARM\",\"source\":\"chInfo_ch_appcenter__chsub_9patch\",\"useCuisine\":true,\"version\":\"1.8.2302070202.46\"}]");
    }

    public static String collectKitchenGarbage() {
        return ApplicationHook.requestString("com.alipay.antfarm.collectKitchenGarbage", "[{\"requestType\":\"RPC\",\"sceneCode\":\"ANTFARM\",\"source\":\"VILLA\",\"version\":\"unknown\"}]");
    }

    public static String enterAiKitchen() {
        return ApplicationHook.requestString("com.alipay.antfarm.enterAiKitchen", "[{\"requestType\":\"RPC\",\"sceneCode\":\"ANTFARM\",\"source\":\"aikitchen_daily\"}]");
    }

    public static String cookAiKitchen(String str, String str2) {
        return ApplicationHook.requestString("com.alipay.antfarm.cookAiKitchen", "[{\"ingredientIds\":[" + str + "],\"requestType\":\"RPC\",\"sceneCode\":\"ANTFARM\",\"seasonId\":\"" + str2 + "\",\"source\":\"aikitchen_daily\"}]");
    }

    public static String getAiKitchenCookbookInfo(String str) {
        return ApplicationHook.requestString("com.alipay.antfarm.getAiKitchenCookbookInfo", "[{\"pageNum\":1,\"requestType\":\"RPC\",\"sceneCode\":\"ANTFARM\",\"seasonId\":\"" + str + "\",\"sortField\":\"HIGHEST_SCORE_COOK_TIME\",\"source\":\"H5\"}]");
    }

    public static String queryAiKitchenDishDetail(String str, String str2) {
        return ApplicationHook.requestString("com.alipay.antfarm.queryAiKitchenDishDetail", "[{\"dishId\":\"" + str + "\",\"requestType\":\"RPC\",\"sceneCode\":\"ANTFARM\",\"seasonId\":\"" + str2 + "\",\"source\":\"H5\"}]");
    }

    public static String shareAiKitchenIngredient(String str, String str2, String str3) {
        return ApplicationHook.requestString("com.alipay.antfarm.shareAiKitchenIngredient", "[{\"ingredientId\":\"" + str + "\",\"receiverId\":\"" + str2 + "\",\"requestId\":\"" + (str2 + System.currentTimeMillis()) + "\",\"requestType\":\"RPC\",\"sceneCode\":\"ANTFARM\",\"seasonId\":\"" + str3 + "\",\"source\":\"aikitchen_daily\"}]");
    }

    public static String listAiKitchenTask() {
        return listFarmDrawTask(AI_KITCHEN_TASK_SCENE);
    }

    public static String finishTaskantfarm(String str, String str2, String str3, String str4) {
        return ApplicationHook.requestString("com.alipay.antieptask.finishTaskantfarm", "[{\"bizKey\":\"" + str + "\",\"outBizNo\":\"" + str2 + "\",\"requestType\":\"NORMAL\",\"sceneCode\":\"ANTFARM_AI_KITCHEN_TASK\",\"source\":\"aikitchen_daily\",\"taskSceneCode\":\"ANTFARM_AI_KITCHEN_TASK\",\"taskType\":\"" + str3 + "\",\"userId\":\"" + str4 + "\"}]");
    }

    public static String queryTabVideoUrl() {
        return ApplicationHook.requestString("com.alipay.antfarm.queryTabVideoUrl", "[{\"requestType\":\"NORMAL\",\"sceneCode\":\"ANTFARM\",\"source\":\"H5\",\"version\":\"1.8.2302070202.46\"}]");
    }

    public static String videoDeliverModule(String str) {
        return ApplicationHook.requestString("alipay.content.reading.life.deliver.module", "[{\"bizId\":\"" + str + "\",\"bizType\":\"CONTENT\",\"chInfo\":\"ch_antFarm\",\"refer\":\"antFarm\",\"timestamp\":\"" + System.currentTimeMillis() + "\"}]");
    }

    public static String videoTrigger(String str) {
        return ApplicationHook.requestString("alipay.content.reading.life.prize.trigger", "[{\"bizId\":\"" + str + "\",\"bizType\":\"CONTENT\",\"prizeFlowNum\":\"VIDEO_TASK\",\"prizeType\":\"farmFeed\"}]");
    }

    public static String drawLotteryPlus() {
        return ApplicationHook.requestString("com.alipay.antfarm.drawLotteryPlus", "[{\"requestType\":\"NORMAL\",\"sceneCode\":\"ANTFARM\",\"source\":\"H5 \",\"version\":\"\"}]");
    }

    public static String acceptGift() {
        return ApplicationHook.requestString("com.alipay.antfarm.acceptGift", "[{\"ignoreLimit\":false,\"requestType\":\"NORMAL\",\"sceneCode\":\"ANTFARM\",\"source\":\"H5\",\"version\":\"1.8.2302070202.46\"}]");
    }

    public static String visitFriend(String str) {
        return ApplicationHook.requestString("com.alipay.antfarm.visitFriend", "[{\"friendFarmId\":\"" + str + "\",\"requestType\":\"NORMAL\",\"sceneCode\":\"ANTFARM\",\"source\":\"H5\",\"version\":\"1.8.2302070202.46\"}]");
    }

    public static String queryChickenDiaryList() {
        return ApplicationHook.requestString("com.alipay.antfarm.queryChickenDiaryList", "[{\"requestType\":\"NORMAL\",\"sceneCode\":\"DIARY\",\"source\":\"antfarm_icon\"}]");
    }

    public static String queryChickenDiary(String str) {
        return ApplicationHook.requestString("com.alipay.antfarm.queryChickenDiary", "[{\"queryDayStr\":\"" + str + "\",\"requestType\":\"NORMAL\",\"sceneCode\":\"DIARY\",\"source\":\"antfarm_icon\"}]");
    }

    public static String diaryTietie(String str, String str2) {
        return ApplicationHook.requestString("com.alipay.antfarm.diaryTietie", "[{\"diaryDate\":\"" + str + "\",\"requestType\":\"NORMAL\",\"roleId\":\"" + str2 + "\",\"sceneCode\":\"DIARY\",\"source\":\"antfarm_icon\"}]");
    }

    public static String visitAnimal() {
        return ApplicationHook.requestString("com.alipay.antfarm.visitAnimal", "[{\"requestType\":\"NORMAL\",\"sceneCode\":\"ANTFARM\",\"source\":\"H5\",\"version\":\"1.8.2302070202.46\"}]");
    }

    public static String feedFriendAnimalVisit(String str) {
        return ApplicationHook.requestString("com.alipay.antfarm.feedFriendAnimal", "[{\"friendFarmId\":\"" + str + "\",\"requestType\":\"NORMAL\",\"sceneCode\":\"ANTFARM\",\"source\":\"visitChicken\",\"version\":\"1.8.2302070202.46\"}]");
    }

    public static String visitAnimalSendPrize(String str) {
        return ApplicationHook.requestString("com.alipay.antfarm.visitAnimalSendPrize", "[{\"requestType\":\"NORMAL\",\"sceneCode\":\"ANTFARM\",\"source\":\"H5\",\"token\":\"" + str + "\",\"version\":\"1.8.2302070202.46\"}]");
    }

    public static String getMallHome(String str) {
        return ApplicationHook.requestString("com.alipay.charitygamecenter.getMallHome", "[{\"bizType\":\"" + str + "\",\"pageSize\":10,\"requestType\":\"NORMAL\",\"sceneCode\":\"ANTFARM\",\"source\":\"H5\",\"startIndex\":0}]");
    }

    public static String getMallItemDetail(String str) {
        return ApplicationHook.requestString("com.alipay.charitygamecenter.getMallItemDetail", "[{\"bizType\":\"ANTFARM_GAME_CENTER\",\"itemId\":\"" + str + "\",\"requestType\":\"NORMAL\",\"sceneCode\":\"ANTFARM\",\"source\":\"H5\"}]");
    }

    public static String buyMallItem(String str, String str2) {
        return ApplicationHook.requestString("com.alipay.charitygamecenter.buyMallItem", "[{\"bizType\":\"ANTFARM_GAME_CENTER\",\"ignoreHoldLimit\":false,\"itemId\":\"" + str + "\",\"requestType\":\"NORMAL\",\"sceneCode\":\"ANTFARM\",\"source\":\"H5\",\"subItemId\":\"" + str2 + "\"}]");
    }

    public static String listFarmDrawTask(String str) {
        return ApplicationHook.requestString("com.alipay.antfarm.listFarmTask", "[{\"requestType\":\"NORMAL\",\"sceneCode\":\"ANTFARM\",\"signSceneCode\":\"\",\"source\":\"H5\",\"taskSceneCode\":\"" + str + "\",\"topTask\":\"\"}]");
    }

    public static String receiveFarmDrawTimesTaskAward(String str, String str2, String str3) {
        return ApplicationHook.requestString("com.alipay.antfarm.receiveFarmTaskAward", "[{\"awardType\":\"" + str2 + "\",\"requestType\":\"RPC\",\"sceneCode\":\"ANTFARM\",\"source\":\"H5\",\"taskId\":\"" + str + "\",\"taskSceneCode\":\"" + str3 + "\"}]");
    }

    public static String queryDrawMachineActivity(String str, String str2) {
        return ApplicationHook.requestString("com.alipay.antfarm.queryDrawMachineActivity", "[{\"otherScenes\":[\"" + str + "\"],\"requestType\":\"RPC\",\"scene\":\"" + str2 + "\",\"sceneCode\":\"ANTFARM\",\"source\":\"H5\"}]");
    }

    public static String drawMachine(String str) {
        return ApplicationHook.requestString("com.alipay.antfarm.drawMachine", "[{\"requestType\":\"RPC\",\"scene\":\"" + str + "\",\"sceneCode\":\"ANTFARM\",\"source\":\"H5\"}]");
    }

    public static String hireAnimal(String str, String str2) {
        return ApplicationHook.requestString("com.alipay.antfarm.hireAnimal", "[{\"friendFarmId\":\"" + str + "\",\"hireActionType\":\"HIRE_IN_FRIEND_FARM\",\"hireAnimalId\":\"" + str2 + "\",\"requestType\":\"NORMAL\",\"sceneCode\":\"ANTFARM\",\"sendCardChat\":false,\"source\":\"H5\",\"version\":\"1.8.2302070202.46\"}]");
    }

    public static String drawGameCenterAward() {
        return ApplicationHook.requestString("com.alipay.antfarm.drawGameCenterAward", "[{\"requestType\":\"NORMAL\",\"sceneCode\":\"ANTFARM\",\"source\":\"H5\",\"version\":\"1.8.2302070202.46\"}]");
    }

    public static String listOrnaments() {
        return ApplicationHook.requestString("com.alipay.antfarm.listOrnaments", "[{\"pageNo\":\"1\",\"requestType\":\"NORMAL\",\"sceneCode\":\"ANTFARM\",\"setsType\":\"ACHIEVEMENTSETS\",\"source\":\"H5\",\"subType\":\"sets\",\"type\":\"apparels\",\"version\":\"1.8.2302070202.46\"}]");
    }

    public static String saveOrnaments(String str, String str2, String str3) {
        return ApplicationHook.requestString("com.alipay.antfarm.saveOrnaments", "[{\"animalId\":\"" + str + "\",\"farmId\":\"" + str2 + "\",\"ornaments\":\"" + str3 + "\",\"requestType\":\"NORMAL\",\"sceneCode\":\"ANTFARM\",\"source\":\"H5\",\"version\":\"1.8.2302070202.46\"}]");
    }

    public static String enterFamily() {
        return ApplicationHook.requestString("com.alipay.antfarm.enterFamily", "[{\"fromAnn\":false,\"requestType\":\"NORMAL\",\"sceneCode\":\"ANTFARM\",\"source\":\"H5\"}]");
    }

    public static String queryFamilyInfo() {
        return ApplicationHook.requestString("com.alipay.antfarm.queryFamilyInfo", "[{\"requestType\":\"NORMAL\",\"sceneCode\":\"ANTFARM\",\"source\":\"H5\"}]");
    }

    public static String syncFamilyStatus(String str, String str2, String str3) {
        return ApplicationHook.requestString("com.alipay.antfarm.syncFamilyStatus", "[{\"groupId\":\"" + str + "\",\"operType\":\"" + str2 + "\",\"requestType\":\"NORMAL\",\"sceneCode\":\"ANTFARM\",\"source\":\"H5\",\"syncUserIds\":[\"" + str3 + "\"]}]");
    }

    public static String familyReceiveFarmTaskAward(String str) {
        return ApplicationHook.requestString("com.alipay.antfarm.receiveFarmTaskAward", "[{\"awardType\":\"FAMILY_INTIMACY\",\"requestType\":\"NORMAL\",\"sceneCode\":\"ANTFARM\",\"source\":\"H5\",\"taskId\":\"" + str + "\",\"taskSceneCode\":\"ANTFARM_FAMILY_TASK\"}]");
    }

    public static String familyAwardList() {
        return ApplicationHook.requestString("com.alipay.antfarm.familyAwardList", "[{\"requestType\":\"NORMAL\",\"sceneCode\":\"ANTFARM\",\"source\":\"H5\"}]");
    }

    public static String receiveFamilyAward(String str) {
        return ApplicationHook.requestString("com.alipay.antfarm.receiveFamilyAward", "[{\"requestType\":\"NORMAL\",\"rightId\":\"" + str + "\",\"sceneCode\":\"ANTFARM\",\"source\":\"H5\"}]");
    }

    public static String familySleep(String str) {
        return ApplicationHook.requestString("com.alipay.antfarm.sleep", "[{\"groupId\":\"" + str + "\",\"requestType\":\"NORMAL\",\"sceneCode\":\"ANTFARM\",\"source\":\"H5\",\"spaceType\":\"ChickFamily\"}]");
    }

    public static String familyWakeUp() {
        return ApplicationHook.requestString("com.alipay.antfarm.wakeUp", "[{\"requestType\":\"NORMAL\",\"sceneCode\":\"ANTFARM\",\"source\":\"aixinxiaowutojiating\"}]");
    }

    public static String familyEatTogether(String str, JSONArray jSONArray, JSONArray jSONArray2) {
        return ApplicationHook.requestString("com.alipay.antfarm.familyEatTogether", "[{\"cuisines\":" + jSONArray + ",\"friendUserIds\":" + jSONArray2 + ",\"groupId\":\"" + str + "\",\"requestType\":\"NORMAL\",\"sceneCode\":\"ANTFARM\",\"source\":\"H5\",\"spaceType\":\"ChickFamily\"}]");
    }

    public static String familyTaskTips(JSONArray jSONArray) {
        return ApplicationHook.requestString("com.alipay.antfarm.familyTaskTips", "[{\"animals\":" + jSONArray.toString() + ",\"requestType\":\"NORMAL\",\"sceneCode\":\"ANTFARM\",\"source\":\"H5\",\"taskSceneCode\":\"ANTFARM_FAMILY_TASK\",\"timeZoneId\":\"Asia/Shanghai\"}]");
    }

    public static String OpenAIPrivatePolicy() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("privatePolicyIdList", new JSONArray().put("AI_CHICK_PRIVATE_POLICY"));
        jSONObject.put("requestType", "NORMAL");
        jSONObject.put("sceneCode", "ANTFARM");
        jSONObject.put("source", "H5");
        jSONObject.put("version", VERSION);
        return ApplicationHook.requestString("com.alipay.antfarm.OpenPrivatePolicy", "[" + jSONObject + "]");
    }

    public static String deliverSubjectRecommend(JSONArray jSONArray) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("friendUserIds", jSONArray);
        jSONObject.put("requestType", "NORMAL");
        jSONObject.put("sceneCode", "ChickFamily");
        jSONObject.put("source", "H5");
        return ApplicationHook.requestString("com.alipay.antfarm.deliverSubjectRecommend", "[" + jSONObject + "]");
    }

    public static String deliverContentExpand(String str, String str2, String str3, String str4, String str5, String str6, String str7, boolean z, JSONArray jSONArray) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("ariverRpcTraceId", str);
        jSONObject.put("eventId", str2);
        jSONObject.put("eventName", str3);
        jSONObject.put("friendUserIds", jSONArray);
        jSONObject.put("memo", str4);
        jSONObject.put("requestType", "NORMAL");
        jSONObject.put("resultCode", str5);
        jSONObject.put("sceneCode", "ANTFARM");
        jSONObject.put("sceneId", str6);
        jSONObject.put("sceneName", str7);
        jSONObject.put("source", "H5");
        jSONObject.put("success", z);
        return ApplicationHook.requestString("com.alipay.antfarm.DeliverContentExpand", "[" + jSONObject + "]");
    }

    public static String QueryExpandContent(String str) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("deliverId", str);
        jSONObject.put("requestType", "NORMAL");
        jSONObject.put("sceneCode", "ANTFARM");
        jSONObject.put("source", "H5");
        return ApplicationHook.requestString("com.alipay.antfarm.QueryExpandContent", "[" + jSONObject + "]");
    }

    public static String deliverMsgSend(String str, JSONArray jSONArray, String str2, String str3) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("content", str2);
        jSONObject.put("deliverId", str3);
        jSONObject.put("friendUserIds", jSONArray);
        jSONObject.put("groupId", str);
        jSONObject.put("mode", "AI");
        jSONObject.put("requestType", "NORMAL");
        jSONObject.put("sceneCode", "ANTFARM");
        jSONObject.put("source", "H5");
        jSONObject.put("spaceType", "ChickFamily");
        return ApplicationHook.requestString("com.alipay.antfarm.DeliverMsgSend", "[" + jSONObject + "]");
    }

    public static String batchInviteP2P(String str, String str2) {
        return ApplicationHook.requestString("com.alipay.antiep.batchInviteP2P", "[{\"inviteP2PVOList\":[{\"beInvitedUserId\":\"" + str2 + "\",\"bizTraceId\":\"\"}],\"invitedBizExtendInfo\":{\"familyId\":\"" + str + "\",\"inviteSceneCode\":\"ANTFARM_FAMILY_INVITE\"},\"linkParams\":{\"groupId\":\"" + str + "\",\"inviteSceneCode\":\"ANTFARM_FAMILY_INVITE\",\"inviteUserId\":\"" + UserIdMap.getCurrentUid() + "\",\"source\":\"familyInvite\"},\"requestType\":\"RPC\",\"sceneCode\":\"ANTFARM_FAMILY_INVITE\",\"source\":\"antfarm\"}]");
    }

    public static String assignFamilyMember(String str, String str2) {
        return ApplicationHook.requestString("com.alipay.antfarm.assignFamilyMember", "[{\"assignAction\":\"" + str + "\",\"beAssignUser\":\"" + str2 + "\",\"requestType\":\"RPC\",\"sceneCode\":\"ANTFARM\",\"source\":\"H5\"}]");
    }

    public static String clickForGiftV2(String str, int i) {
        return ApplicationHook.requestString("com.alipay.antfarm.clickForGiftV2", "[{\"foodType\":\"" + str + "\",\"giftIndex\":" + i + ",\"requestType\":\"NORMAL\",\"sceneCode\":\"ANTFARM\",\"source\":\"H5\",\"version\":\"1.8.2302070202.46\"}]");
    }

    public static String getItemList(String str, int i, int i2) {
        return ApplicationHook.requestString("com.alipay.antiep.itemList", "[{\"activityId\":\"" + str + "\",\"pageSize\":" + i + ",\"requestType\":\"RPC\",\"sceneCode\":\"ANTFARM_IP_DRAW_MALL\",\"source\":\"antfarm.villa\",\"startIndex\":" + i2 + "}]");
    }

    private static String generateRequestId() {
        return System.currentTimeMillis() + "_" + ((long) (((Math.random() * 9.0d) + 1.0d) * Math.pow(10.0d, 15.0d)));
    }

    public static String exchangeBenefit(String str, String str2, String str3, String str4, String str5) {
        String strGenerateRequestId = generateRequestId();
        try {
            JSONObject jSONObject = new JSONObject();
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("activityId", str3);
            jSONObject.put("context", jSONObject2);
            jSONObject.put("requestId", strGenerateRequestId);
            jSONObject.put("requestType", "RPC");
            jSONObject.put("sceneCode", str4);
            jSONObject.put("skuId", str2);
            jSONObject.put("source", str5);
            jSONObject.put("spuId", str);
            return ApplicationHook.requestString("com.alipay.antcommonweal.exchange.h5.exchangeBenefit", new JSONArray().put(jSONObject).toString());
        } catch (JSONException e) {
            Log.printStackTrace("exchangeBenefit Error", e);
            return "";
        }
    }

    public static String drawGameCenterAward(int i) {
        return ApplicationHook.requestString("com.alipay.antfarm.drawGameCenterAward", "[{  \"drawTimes\": " + i + ",  \"requestType\": \"NORMAL\",  \"sceneCode\": \"ANTFARM\",  \"source\": \"H5\",  \"version\": \"1.8.2302070202.46\"}]");
    }

    public static String queryCompetitionEntranceInfo() {
        return ApplicationHook.requestString("com.alipay.antfarm.queryCompetitionEntranceInfo", "[{  \"requestType\": \"NORMAL\",  \"sceneCode\": \"ANTFARM\",  \"source\": \"H5\",  \"version\": \"1.8.2302070202.46\"}]");
    }

    public static String enterDonationCompetitionRank() {
        return ApplicationHook.requestString("com.alipay.antfarm.enterDonationCompetitionRank", "[{  \"requestType\": \"NORMAL\",  \"sceneCode\": \"ANTFARM\",  \"source\": \"H5\",  \"version\": \"1.8.2302070202.46\"}]");
    }

    public static String setDonationCompetitionConf(String str) {
        return ApplicationHook.requestString("com.alipay.antfarm.setDonationCompetitionConf", "[{  \"action\": \"" + str + "\",  \"requestType\": \"NORMAL\",  \"sceneCode\": \"ANTFARM\",  \"source\": \"H5\",  \"version\": \"1.8.2302070202.46\"}]");
    }

    public static String participateCompetition() {
        return ApplicationHook.requestString("com.alipay.antfarm.participateCompetition", "[{\"requestType\":\"NORMAL\",\"sceneCode\":\"ANTFARM\",\"source\":\"H5\",\"version\":\"1.8.2302070202.46\"}]");
    }

    public static String listCompetitionTask() {
        return ApplicationHook.requestString("com.alipay.antfarm.listCompetitionTask", "[{\"requestType\":\"NORMAL\",\"sceneCode\":\"ANTFARM\",\"source\":\"H5\",\"version\":\"1.8.2302070202.46\"}]");
    }

    public static String queryAllMemberRankInfo() {
        return ApplicationHook.requestString("com.alipay.antfarm.queryAllMemberRankInfo", "[{\"requestType\":\"NORMAL\",\"sceneCode\":\"ANTFARM\",\"source\":\"H5\",\"version\":\"1.8.2302070202.46\"}]");
    }

    public static String enterCompetitionAwardPage() {
        return ApplicationHook.requestString("com.alipay.antfarm.enterCompetitionAwardPage", "[{  \"requestType\": \"NORMAL\",  \"sceneCode\": \"ANTFARM\",  \"source\": \"H5\",  \"version\": \"1.8.2302070202.46\"}]");
    }

    public static String receiveDonationLevelReward(String str) {
        return ApplicationHook.requestString("com.alipay.antfarm.receiveDonationLevelReward", "[{  \"requestType\": \"NORMAL\",  \"rightsId\": \"" + str + "\",  \"sceneCode\": \"ANTFARM\",  \"source\": \"H5\",  \"version\": \"1.8.2302070202.46\"}]");
    }

    public static String receiveDonationCompetitionProgressAward() {
        return ApplicationHook.requestString("com.alipay.antfarm.receiveDonationCompetitionProgressAward", "[{\"requestType\":\"NORMAL\",\"sceneCode\":\"ANTFARM\",\"source\":\"H5\",\"version\":\"1.8.2302070202.46\"}]");
    }

    public static String queryGameList() {
        return ApplicationHook.requestString("com.alipay.charitygamecenter.queryGameList", "[{\"bizType\":\"ANTFARM\",\"commonDegradeFilterRequest\":{\"deviceLevel\":\"high\",\"platform\":\"Android\",\"unityDeviceLevel\":\"high\"},\"recentAppRecordList\":[],\"requestType\":\"NORMAL\",\"sceneCode\":\"ANTFARM\",\"source\":\"H5\",\"version\":\"1.8.2302070202.46\"}]");
    }

    public static String dadaDailyHome(String str) {
        return ApplicationHook.requestString("com.alipay.reading.game.dadaDaily.home", "[{\"activityId\":" + str + ",\"dadaVersion\":\"1.3.0\",\"version\":1}]");
    }

    public static String dadaDailySubmit(String str, String str2, Long l) {
        return ApplicationHook.requestString("com.alipay.reading.game.dadaDaily.submit", "[{\"activityId\":" + str + ",\"answer\":\"" + str2 + "\",\"dadaVersion\":\"1.3.0\",\"questionId\":" + l + ",\"version\":1}]");
    }
}
