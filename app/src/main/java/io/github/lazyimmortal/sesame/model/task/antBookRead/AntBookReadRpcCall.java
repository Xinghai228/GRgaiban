package io.github.lazyimmortal.sesame.model.task.antBookRead;

import com.fasterxml.jackson.databind.type.TypeFactory;
import io.github.lazyimmortal.sesame.hook.ApplicationHook;
import io.github.lazyimmortal.sesame.util.RandomUtil;

/* JADX INFO: loaded from: classes.dex */
public class AntBookReadRpcCall {
    private static final String VERSION = "1.0.1397";

    public static String queryTaskCenterPage() {
        return ApplicationHook.requestString("com.alipay.antbookpromo.taskcenter.queryTaskCenterPage", "[{\"bannerId\":\"\",\"chInfo\":\"ch_appcenter__chsub_9patch\",\"hasAddHome\":false,\"miniClientVersion\":\"1.0.0\",\"supportFeatures\":[\"prize_task_20230831\"],\"yuyanVersion\":\"1.0.1397\"}]");
    }

    public static String queryMiniTaskCenterInfo() {
        return ApplicationHook.requestString("com.alipay.antbookpromo.minitaskcenter.queryMiniTaskCenterInfo", "[{\"chInfo\":\"ch_appcenter__chsub_9patch\",\"hasAddHome\":false,\"isFromSync\":false,\"miniClientVersion\":\"1.0.0\",\"needInfos\":\"\",\"yuyanVersion\":\"1.0.1397\"}]");
    }

    public static String syncUserReadInfo(String str, String str2) {
        return ApplicationHook.requestString("com.alipay.antbookread.biz.mgw.syncUserReadInfo", "[{\"bookId\":\"" + str + "\",\"chInfo\":\"ch_appcenter__chsub_9patch\",\"chapterId\":\"" + str2 + "\",\"miniClientVersion\":\"1.0.0\",\"readCount\":" + RandomUtil.nextInt(40, TypeFactory.DEFAULT_MAX_CACHE_SIZE) + ",\"readTime\":" + (RandomUtil.nextInt(160, 170) * 10000) + ",\"timeStamp\":" + System.currentTimeMillis() + ",\"volumeId\":\"\",\"yuyanVersion\":\"1.0.1397\"}]");
    }

    public static String queryReaderForestEnergyInfo(String str) {
        return ApplicationHook.requestString("com.alipay.antbookread.biz.mgw.queryReaderForestEnergyInfo", "[{\"bookId\":\"" + str + "\",\"chInfo\":\"ch_appcenter__chsub_9patch\",\"miniClientVersion\":\"1.0.0\",\"yuyanVersion\":\"1.0.1397\"}]");
    }

    public static String queryHomePage() {
        return ApplicationHook.requestString("com.alipay.antbookread.biz.mgw.queryHomePage", "[{\"chInfo\":\"ch_appcenter__chsub_9patch\",\"miniClientVersion\":\"1.0.0\",\"yuyanVersion\":\"1.0.1397\"}]");
    }

    public static String queryBookCatalogueInfo(String str) {
        return ApplicationHook.requestString("com.alipay.antbookread.biz.mgw.queryBookCatalogueInfo", "[{\"bookId\":\"" + str + "\",\"chInfo\":\"ch_appcenter__chsub_9patch\",\"isInit\":true,\"miniClientVersion\":\"1.0.0\",\"order\":1,\"yuyanVersion\":\"1.0.1397\"}]");
    }

    public static String queryReaderContent(String str) {
        return ApplicationHook.requestString("com.alipay.antbookread.biz.mgw.queryReaderContent", "[{\"bookId\":\"" + str + "\",\"chInfo\":\"ch_appcenter__chsub_9patch\",\"isInit\":true,\"miniClientVersion\":\"1.0.0\",\"queryRecommend\":false,\"yuyanVersion\":\"1.0.1397\"}]");
    }

    public static String queryTreasureBox() {
        return ApplicationHook.requestString("com.alipay.antbookpromo.taskcenter.queryTreasureBox", "[{\"chInfo\":\"ch_appcenter__chsub_9patch\",\"miniClientVersion\":\"1.0.0\",\"yuyanVersion\":\"1.0.1397\"}]");
    }

    public static String taskFinish(String str, String str2) {
        return ApplicationHook.requestString("com.alipay.antbookpromo.taskcenter.taskFinish", "[{\"chInfo\":\"ch_appcenter__chsub_9patch\",\"miniClientVersion\":\"1.0.0\",\"taskId\":\"" + str + "\",\"taskType\":\"" + str2 + "\",\"yuyanVersion\":\"1.0.1397\"}]");
    }

    public static String collectTaskPrize(String str, String str2) {
        return ApplicationHook.requestString("com.alipay.antbookpromo.taskcenter.collectTaskPrize", "[{\"chInfo\":\"ch_appcenter__chsub_9patch\",\"miniClientVersion\":\"1.0.0\",\"taskId\":\"" + str + "\",\"taskType\":\"" + str2 + "\",\"yuyanVersion\":\"1.0.1397\"}]");
    }

    public static String queryApplayer() {
        return ApplicationHook.requestString("com.alipay.adtask.biz.mobilegw.service.applayer.query", "[{\"spaceCode\":\"adPosId#2023112024200071171##sceneCode#null##mediaScene#42##rewardNum#1##spaceCode#READ_LISTEN_BOOK_TREASURE_FEEDS_FUSION##expCode#\"}]");
    }

    public static String serviceTaskFinish(String str) {
        return ApplicationHook.requestString("com.alipay.adtask.biz.mobilegw.service.task.finish", "[{\"bizId\":\"" + str + "\"}]");
    }

    public static String serviceTaskQuery(String str) {
        return ApplicationHook.requestString("com.alipay.adtask.biz.mobilegw.service.task.query", "[{\"bizId\":\"" + str + "\"}]");
    }

    public static String openTreasureBox() {
        return ApplicationHook.requestString("com.alipay.antbookpromo.taskcenter.openTreasureBox", "[{\"chInfo\":\"ch_appcenter__chsub_9patch\",\"miniClientVersion\":\"1.0.0\",\"yuyanVersion\":\"1.0.1397\"}]");
    }

    public static String queryEveningForestMainPage() {
        return ApplicationHook.requestString("com.alipay.antbooks.biz.mgw.queryEveningForestMainPage", "[{\"chInfo\":\"sy_wanansenlin_shouye\",\"miniClientVersion\":\"1.0.0\",\"yuyanVersion\":\"1.0.1397\"}]");
    }

    public static String queryAlbumDetailPage(String str) {
        return ApplicationHook.requestString("com.alipay.antbooks.biz.mgw.queryAlbumDetailPage", "[{\"albumId\":" + str + ",\"chInfo\":\"sy_wanansenlin_shouye\",\"miniClientVersion\":\"1.0.0\",\"yuyanVersion\":\"1.0.1397\"}]");
    }

    public static String querySoundUrl(String str, String str2) {
        return ApplicationHook.requestString("com.alipay.antbooks.biz.mgw.querySoundUrl", "[{\"albumId\":" + str + ",\"chInfo\":\"sy_wanansenlin_shouye\",\"miniClientVersion\":\"1.0.0\",\"sceneId\":\"EVENING_FOREST\",\"soundId\":" + str2 + ",\"yuyanVersion\":\"1.0.1397\"}]");
    }

    public static String syncUserPlayData(String str, String str2) {
        return ApplicationHook.requestString("com.alipay.antbooks.biz.mgw.syncUserPlayData", "[{\"chInfo\":\"sy_wanansenlin_shouye\",\"miniClientVersion\":\"1.0.0\",\"syncingPlayRecordRequestList\":[{\"albumId\":" + str + ",\"position\":720,\"soundId\":" + str2 + ",\"timestamp\":" + System.currentTimeMillis() + "}],\"yuyanVersion\":\"1.0.1397\"}]");
    }

    public static String queryPlayPage(String str, String str2) {
        return ApplicationHook.requestString("com.alipay.antbooks.biz.mgw.queryPlayPage", "[{\"albumId\":" + str + ",\"chInfo\":\"sy_wanansenlin_shouye\",\"miniClientVersion\":\"1.0.0\",\"sceneId\":\"EVENING_FOREST\",\"soundId\":" + str2 + ",\"yuyanVersion\":\"1.0.1397\"}]");
    }
}
