package io.github.lazyimmortal.sesame.model.task.antOcean;

import io.github.lazyimmortal.sesame.hook.ApplicationHook;
import io.github.lazyimmortal.sesame.util.RandomUtil;
import org.json.JSONArray;

/* JADX INFO: loaded from: classes.dex */
public class AntOceanRpcCall {
    public static final String VERSION = "20241203";

    public static String getUniqueId() {
        return String.valueOf(System.currentTimeMillis()) + RandomUtil.nextLong();
    }

    public static String getAntfishUniqueId() {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < 8; i++) {
            sb.append("abcdefghijklmnopqrstuvwxyz0123456789".charAt((int) (Math.random() * ((double) 36))));
        }
        sb.append("mql");
        for (int i2 = 0; i2 < 4; i2++) {
            sb.append("abcdefghijklmnopqrstuvwxyz0123456789".charAt((int) (Math.random() * ((double) 36))));
        }
        return sb.toString();
    }

    public static String queryOceanStatus() {
        return ApplicationHook.requestString("alipay.antocean.ocean.h5.queryOceanStatus", "[{\"source\":\"chInfo_ch_appcenter__chsub_9patch\"}]");
    }

    public static String queryHomePage() {
        return ApplicationHook.requestString("alipay.antocean.ocean.h5.queryHomePage", "[{\"source\":\"ANT_FOREST\",\"uniqueId\":\"" + getUniqueId() + "\",\"version\":\"20241203\"}]");
    }

    public static String cleanOcean(String str) {
        return ApplicationHook.requestString("alipay.antocean.ocean.h5.cleanOcean", "[{\"cleanedUserId\":\"" + str + "\",\"source\":\"ANT_FOREST\",\"uniqueId\":\"" + getUniqueId() + "\"}]");
    }

    public static String ipOpenSurprise() {
        return ApplicationHook.requestString("alipay.antocean.ocean.h5.ipOpenSurprise", "[{\"source\":\"chInfo_ch_appcenter__chsub_9patch\",\"uniqueId\":\"" + getUniqueId() + "\"}]");
    }

    public static String collectReplicaAsset() {
        return ApplicationHook.requestString("alipay.antocean.ocean.h5.collectReplicaAsset", "[{\"replicaCode\":\"avatar\",\"source\":\"senlinzuoshangjiao\",\"uniqueId\":\"" + getUniqueId() + "\",\"version\":\"20241203\"}]");
    }

    public static String receiveTaskAward(String str, String str2) {
        return ApplicationHook.requestString("com.alipay.antiep.receiveTaskAward", "[{\"ignoreLimit\":false,\"requestType\":\"RPC\",\"sceneCode\":\"" + str + "\",\"source\":\"ANT_FOREST\",\"taskType\":\"" + str2 + "\",\"uniqueId\":\"" + getUniqueId() + "\"}]");
    }

    public static String finishTask(String str, String str2) {
        return ApplicationHook.requestString("com.alipay.antiep.finishTask", "[{\"outBizNo\":\"" + (str2 + "_" + RandomUtil.nextDouble()) + "\",\"requestType\":\"RPC\",\"sceneCode\":\"" + str + "\",\"source\":\"ANTFOCEAN\",\"taskType\":\"" + str2 + "\",\"uniqueId\":\"" + getUniqueId() + "\"}]");
    }

    public static String queryTaskList() {
        return ApplicationHook.requestString("alipay.antocean.ocean.h5.queryTaskList", "[{\"extend\":{},\"fromAct\":\"dynamic_task\",\"sceneCode\":\"ANTOCEAN_TASK\",\"source\":\"ANT_FOREST\",\"uniqueId\":\"" + getUniqueId() + "\",\"version\":\"20241203\"}]");
    }

    public static String unLockReplicaPhase(String str, String str2) {
        return ApplicationHook.requestString("alipay.antocean.ocean.h5.unLockReplicaPhase", "[{\"replicaCode\":\"" + str + "\",\"replicaPhaseCode\":\"" + str2 + "\",\"source\":\"senlinzuoshangjiao\",\"uniqueId\":\"" + getUniqueId() + "\",\"version\":\"20220707\"}]");
    }

    public static String queryReplicaHome() {
        return ApplicationHook.requestString("alipay.antocean.ocean.h5.queryReplicaHome", "[{\"replicaCode\":\"avatar\",\"source\":\"seaAreaList\",\"uniqueId\":\"" + getUniqueId() + "\"}]");
    }

    public static String queryReplicaTaskList() {
        return ApplicationHook.requestString("alipay.antocean.ocean.h5.queryTaskList", "[{\"fromAct\":\"dynamic_task\",\"sceneCode\":\"ANTOCEAN_AVATAR_TASK\",\"source\":\"seaAreaList\",\"uniqueId\":\"" + getUniqueId() + "\",\"version\":\"20241203\"}]");
    }

    public static String receiveReplicaTaskAward(String str) {
        return ApplicationHook.requestString("com.alipay.antiep.receiveTaskAward", "[{\"ignoreLimit\":\"false\",\"requestType\":\"RPC\",\"sceneCode\":\"ANTOCEAN_AVATAR_TASK\",\"source\":\"ANTFOCEAN\",\"taskType\":\"" + str + "\",\"uniqueId\":\"" + getUniqueId() + "\"}]");
    }

    public static String repairSeaArea() {
        return ApplicationHook.requestString("alipay.antocean.ocean.h5.repairSeaArea", "[{\"source\":\"chInfo_ch_appcenter__chsub_9patch\",\"uniqueId\":\"" + getUniqueId() + "\"}]");
    }

    public static String queryOceanPropList() {
        return ApplicationHook.requestString("alipay.antocean.ocean.h5.queryOceanPropList", "[{\"skipPropId\":false,\"source\":\"ANT_FOREST\",\"uniqueId\":\"" + getUniqueId() + "\"}]");
    }

    public static String queryOceanPropList(String str) {
        return ApplicationHook.requestString("alipay.antocean.ocean.h5.queryOceanPropList", "[{\"propTypeList\":\"" + str + "\",\"skipPropId\":false,\"source\":\"ANT_FOREST\",\"uniqueId\":\"" + getUniqueId() + "\"}]");
    }

    public static String createSeaAreaExtraCollect() {
        return ApplicationHook.requestString("alipay.antocean.ocean.h5.createSeaAreaExtraCollect", "[{\"source\":\"chInfo_ch_appcollect__chsub_my-recentlyUsed\",\"uniqueId\":\"" + getUniqueId() + "\"}]");
    }

    public static String querySeaAreaDetailList() {
        return ApplicationHook.requestString("alipay.antocean.ocean.h5.querySeaAreaDetailList", "[{\"seaAreaCode\":\"\",\"source\":\"chInfo_ch_appcenter__chsub_9patch\",\"targetUserId\":\"\",\"uniqueId\":\"" + getUniqueId() + "\"}]");
    }

    public static String queryOceanChapterList() {
        return ApplicationHook.requestString("alipay.antocean.ocean.h5.queryOceanChapterList", "[{\"source\":\"chInfo_ch_url-https://2021003115672468.h5app.alipay.com/www/atlasOcean.html\",\"uniqueId\":\"" + getUniqueId() + "\"}]");
    }

    public static String switchOceanChapter(String str) {
        return ApplicationHook.requestString("alipay.antocean.ocean.h5.switchOceanChapter", "[{\"chapterCode\":\"" + str + "\",\"source\":\"chInfo_ch_url-https://2021003115672468.h5app.alipay.com/www/atlasOcean.html\",\"uniqueId\":\"" + getUniqueId() + "\"}]");
    }

    public static String queryMiscInfo() {
        return ApplicationHook.requestString("alipay.antocean.ocean.h5.queryMiscInfo", "[{\"queryBizTypes\":[\"HOME_TIPS_REFRESH\"],\"source\":\"chInfo_ch_appcenter__chsub_9patch\",\"uniqueId\":\"" + getUniqueId() + "\"}]");
    }

    public static String combineFish(String str) {
        return ApplicationHook.requestString("alipay.antocean.ocean.h5.combineFish", "[{\"fishId\":\"" + str + "\",\"source\":\"ANT_FOREST\",\"uniqueId\":\"" + getUniqueId() + "\"}]");
    }

    public static String collectEnergy(String str, String str2) {
        return ApplicationHook.requestString("alipay.antmember.forest.h5.collectEnergy", "[{\"bubbleIds\":[" + str + "],\"channel\":\"ocean\",\"source\":\"ANT_FOREST\",\"uniqueId\":\"" + getUniqueId() + "\",\"userId\":\"" + str2 + "\",\"version\":\"20241203\"}]");
    }

    public static String cleanFriendOcean(String str) {
        return ApplicationHook.requestString("alipay.antocean.ocean.h5.cleanFriendOcean", "[{\"cleanedUserId\":\"" + str + "\",\"source\":\"ANT_FOREST\",\"uniqueId\":\"" + getUniqueId() + "\"}]");
    }

    public static String queryFriendPage(String str) {
        return ApplicationHook.requestString("alipay.antocean.ocean.h5.queryFriendPage", "[{\"friendUserId\":\"" + str + "\",\"interactFlags\":\"T\",\"source\":\"ANT_FOREST\",\"uniqueId\":\"" + getUniqueId() + "\",\"version\":\"20241203\"}]");
    }

    public static String queryUserRanking() {
        return ApplicationHook.requestString("alipay.antocean.ocean.h5.queryUserRanking", "[{\"source\":\"ANT_FOREST\",\"uniqueId\":\"" + getUniqueId() + "\"}]");
    }

    public static String fillUserFlag(String str) {
        return ApplicationHook.requestString("alipay.antocean.ocean.h5.fillUserFlag", "[{\"source\":\"ANT_FOREST\",\"uniqueId\":\"" + getUniqueId() + "\",\"userIdList\":" + str + "}]");
    }

    public static String getQuestion() {
        return ApplicationHook.requestString("com.alipay.reading.game.dada.openDailyAnswer.getQuestion", "[{\"activityId\":\"363\",\"dadaVersion\":\"1.3.0\",\"version\":1}]");
    }

    public static String record() {
        return ApplicationHook.requestString("com.alipay.reading.game.dada.mdap.record", "[{\"behavior\":\"visit\",\"dadaVersion\":\"1.3.0\",\"version\":\"1\"}]");
    }

    public static String submitAnswer(String str, String str2) {
        return ApplicationHook.requestString("com.alipay.reading.game.dada.openDailyAnswer.submitAnswer", "[{\"activityId\":\"363\",\"answer\":\"" + str + "\",\"dadaVersion\":\"1.3.0\",\"outBizId\":\"ANTOCEAN_DATI_PINTU_722_new\",\"questionId\":\"" + str2 + "\",\"version\":\"1\"}]");
    }

    public static String exchangeProp(int i, String str, String str2) {
        return ApplicationHook.requestString("alipay.antocean.ocean.h5.exchangeProp", "[{\"bizNo\":\"" + System.currentTimeMillis() + "\",\"exchangeNum\":\"" + i + "\",\"propCode\":\"" + str + "\",\"propType\":\"" + str2 + "\",\"source\":\"ANT_FOREST\",\"uniqueId\":\"" + getUniqueId() + "\"}]");
    }

    public static String exchangeUniversalPiece(int i) {
        return exchangeProp(i, "UNIVERSAL_PIECE", "UNIVERSAL_PIECE");
    }

    public static String queryFishList(int i) {
        return ApplicationHook.requestString("alipay.antocean.ocean.h5.queryFishList", "[{\"combineStatus\":\"UNOBTAINED\",\"needSummary\":\"Y\",\"pageNum\":" + i + ",\"targetUserId\":\"\",\"uniqueId\":\"" + getUniqueId() + "\"}]");
    }

    public static String usePropByType(String str, String str2, JSONArray jSONArray) {
        return ApplicationHook.requestString("alipay.antocean.ocean.h5.usePropByType", "[{\"assetsDetails\":" + jSONArray + ",\"propCode\":\"" + str + "\",\"propType\":\"" + str2 + "\",\"uniqueId\":\"" + getUniqueId() + "\"}]");
    }

    public static String useUniversalPiece(JSONArray jSONArray) {
        return usePropByType("UNIVERSAL_PIECE", "UNIVERSAL_PIECE", jSONArray);
    }

    public static String antfishStatus() {
        return ApplicationHook.requestString("alipay.antaifish.h5.status", "[{\"source\":\"chInfo_ch_appcollect__chsub_my-recentlyUsed\",\"uniqueId\":\"" + getAntfishUniqueId() + "\"}]");
    }

    public static String antfishHomepage() {
        return ApplicationHook.requestString("alipay.antaifish.h5.homepage", "[{\"source\":\"ANT_OCEAN\",\"uniqueId\":\"" + getAntfishUniqueId() + "\"}]");
    }

    public static String drawFish(String str, String str2) {
        return ApplicationHook.requestString("alipay.antaifish.h5.drawFish", "[{\"imgId\":\"" + str + "\",\"imgUrl\":\"" + str2 + "\",\"source\":\"ANT_OCEAN\",\"uniqueId\":\"" + getAntfishUniqueId() + "\"}]");
    }

    public static String rescueFish() {
        return ApplicationHook.requestString("alipay.antaifish.h5.rescueFish", "[{\"source\":\"ANT_OCEAN\",\"uniqueId\":\"" + getAntfishUniqueId() + "\"}]");
    }

    public static String antfishNotice() {
        return ApplicationHook.requestString("alipay.antaifish.h5.notice", "[{\"noticeReqList\":[{\"extInfo\":\"\",\"needDetail\":true,\"noticeType\":\"fish_rescued_or_restored\"}],\"source\":\"ANT_OCEAN\",\"uniqueId\":\"" + getAntfishUniqueId() + "\"}]");
    }

    public static String antfishListTask() {
        return ApplicationHook.requestString("com.alipay.antieptask.listTaskopengreen", "[{\"extend\":{\"appMode\":\"normal\"},\"requestType\":\"RPC\",\"sceneCode\":\"ANTAIFISH\",\"source\":\"ANTAIFISH\",\"uniqueId\":\"" + getAntfishUniqueId() + "\"}]");
    }

    public static String antfishFinishTask(String str) {
        return ApplicationHook.requestString("com.alipay.antiep.finishTask", "[{\"outBizNo\":\"" + (str + "_" + RandomUtil.nextDouble()) + "\",\"requestType\":\"H5\",\"sceneCode\":\"ANTAIFISH\",\"source\":\"ANTAIFISH\",\"taskType\":\"" + str + "\"}]");
    }

    public static String antfishReceiveTaskAward(String str) {
        return ApplicationHook.requestString("com.alipay.antieptask.receiveTaskAwardopengreen", "[{\"ignoreLimit\":false,\"requestType\":\"RPC\",\"sceneCode\":\"ANTAIFISH\",\"source\":\"ANTAIFISH\",\"taskType\":\"" + str + "\",\"uniqueId\":\"" + getAntfishUniqueId() + "\"}]");
    }

    public static String antfishTouchfish() {
        return ApplicationHook.requestString("alipay.antaifish.h5.touchfish", "[{\"source\":\"ANT_OCEAN\",\"uniqueId\":\"" + getAntfishUniqueId() + "\"}]");
    }

    public static String antfishQueryAppraiseList() {
        return ApplicationHook.requestString("alipay.antaifish.h5.queryNeedAppraiseFishList", "[{\"source\":\"ANT_OCEAN\",\"uniqueId\":\"" + getAntfishUniqueId() + "\"}]");
    }

    public static String antfishAppraise(String str, String str2, String str3) {
        return ApplicationHook.requestString("alipay.antaifish.h5.fishAppraise", "[{\"appraiseType\":\"LIKE\",\"imageId\":\"" + str + "\",\"seasonId\":\"" + str2 + "\",\"source\":\"ANT_OCEAN\",\"targetUserId\":\"" + str3 + "\",\"uniqueId\":\"" + getAntfishUniqueId() + "\"}]");
    }

    public static String queryProjectDetail() {
        return ApplicationHook.requestString("alipay.antaifish.h5.queryProjectDetail", "[{\"source\":\"ANT_OCEAN\",\"uniqueId\":\"" + getAntfishUniqueId() + "\"}]");
    }

    public static String exchangeProject() {
        return ApplicationHook.requestString("alipay.antaifish.h5.exchangeProject", "[{\"source\":\"ANT_OCEAN\",\"uniqueId\":\"" + getAntfishUniqueId() + "\"}]");
    }
}
