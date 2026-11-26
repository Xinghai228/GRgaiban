.class public Lio/github/lazyimmortal/sesame/model/task/antBookRead/AntBookReadRpcCall;
.super Ljava/lang/Object;
.source "AntBookReadRpcCall.java"


# static fields
.field private static final VERSION:Ljava/lang/String; = "1.0.1397"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static collectTaskPrize(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[{\"chInfo\":\"ch_appcenter__chsub_9patch\",\"miniClientVersion\":\"1.0.0\",\"taskId\":\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\",\"taskType\":\""

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\",\"yuyanVersion\":\"1.0.1397\"}]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "com.alipay.antbookpromo.taskcenter.collectTaskPrize"

    invoke-static {p1, p0}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->requestString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static openTreasureBox()Ljava/lang/String;
    .locals 2

    .line 105
    const-string v0, "com.alipay.antbookpromo.taskcenter.openTreasureBox"

    const-string v1, "[{\"chInfo\":\"ch_appcenter__chsub_9patch\",\"miniClientVersion\":\"1.0.0\",\"yuyanVersion\":\"1.0.1397\"}]"

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->requestString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static queryAlbumDetailPage(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[{\"albumId\":"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ",\"chInfo\":\"sy_wanansenlin_shouye\",\"miniClientVersion\":\"1.0.0\",\"yuyanVersion\":\"1.0.1397\"}]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.alipay.antbooks.biz.mgw.queryAlbumDetailPage"

    invoke-static {v0, p0}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->requestString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static queryApplayer()Ljava/lang/String;
    .locals 2

    .line 90
    const-string v0, "com.alipay.adtask.biz.mobilegw.service.applayer.query"

    const-string v1, "[{\"spaceCode\":\"adPosId#2023112024200071171##sceneCode#null##mediaScene#42##rewardNum#1##spaceCode#READ_LISTEN_BOOK_TREASURE_FEEDS_FUSION##expCode#\"}]"

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->requestString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static queryBookCatalogueInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[{\"bookId\":\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\",\"chInfo\":\"ch_appcenter__chsub_9patch\",\"isInit\":true,\"miniClientVersion\":\"1.0.0\",\"order\":1,\"yuyanVersion\":\"1.0.1397\"}]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.alipay.antbookread.biz.mgw.queryBookCatalogueInfo"

    invoke-static {v0, p0}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->requestString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static queryEveningForestMainPage()Ljava/lang/String;
    .locals 2

    .line 112
    const-string v0, "com.alipay.antbooks.biz.mgw.queryEveningForestMainPage"

    const-string v1, "[{\"chInfo\":\"sy_wanansenlin_shouye\",\"miniClientVersion\":\"1.0.0\",\"yuyanVersion\":\"1.0.1397\"}]"

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->requestString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static queryHomePage()Ljava/lang/String;
    .locals 2

    .line 48
    const-string v0, "com.alipay.antbookread.biz.mgw.queryHomePage"

    const-string v1, "[{\"chInfo\":\"ch_appcenter__chsub_9patch\",\"miniClientVersion\":\"1.0.0\",\"yuyanVersion\":\"1.0.1397\"}]"

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->requestString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static queryMiniTaskCenterInfo()Ljava/lang/String;
    .locals 2

    .line 21
    const-string v0, "com.alipay.antbookpromo.minitaskcenter.queryMiniTaskCenterInfo"

    const-string v1, "[{\"chInfo\":\"ch_appcenter__chsub_9patch\",\"hasAddHome\":false,\"isFromSync\":false,\"miniClientVersion\":\"1.0.0\",\"needInfos\":\"\",\"yuyanVersion\":\"1.0.1397\"}]"

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->requestString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static queryPlayPage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[{\"albumId\":"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ",\"chInfo\":\"sy_wanansenlin_shouye\",\"miniClientVersion\":\"1.0.0\",\"sceneId\":\"EVENING_FOREST\",\"soundId\":"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ",\"yuyanVersion\":\"1.0.1397\"}]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "com.alipay.antbooks.biz.mgw.queryPlayPage"

    invoke-static {p1, p0}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->requestString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static queryReaderContent(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[{\"bookId\":\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\",\"chInfo\":\"ch_appcenter__chsub_9patch\",\"isInit\":true,\"miniClientVersion\":\"1.0.0\",\"queryRecommend\":false,\"yuyanVersion\":\"1.0.1397\"}]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.alipay.antbookread.biz.mgw.queryReaderContent"

    invoke-static {v0, p0}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->requestString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static queryReaderForestEnergyInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[{\"bookId\":\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\",\"chInfo\":\"ch_appcenter__chsub_9patch\",\"miniClientVersion\":\"1.0.0\",\"yuyanVersion\":\"1.0.1397\"}]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.alipay.antbookread.biz.mgw.queryReaderForestEnergyInfo"

    invoke-static {v0, p0}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->requestString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static querySoundUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[{\"albumId\":"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ",\"chInfo\":\"sy_wanansenlin_shouye\",\"miniClientVersion\":\"1.0.0\",\"sceneId\":\"EVENING_FOREST\",\"soundId\":"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ",\"yuyanVersion\":\"1.0.1397\"}]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "com.alipay.antbooks.biz.mgw.querySoundUrl"

    invoke-static {p1, p0}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->requestString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static queryTaskCenterPage()Ljava/lang/String;
    .locals 2

    .line 15
    const-string v0, "com.alipay.antbookpromo.taskcenter.queryTaskCenterPage"

    const-string v1, "[{\"bannerId\":\"\",\"chInfo\":\"ch_appcenter__chsub_9patch\",\"hasAddHome\":false,\"miniClientVersion\":\"1.0.0\",\"supportFeatures\":[\"prize_task_20230831\"],\"yuyanVersion\":\"1.0.1397\"}]"

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->requestString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static queryTreasureBox()Ljava/lang/String;
    .locals 2

    .line 69
    const-string v0, "com.alipay.antbookpromo.taskcenter.queryTreasureBox"

    const-string v1, "[{\"chInfo\":\"ch_appcenter__chsub_9patch\",\"miniClientVersion\":\"1.0.0\",\"yuyanVersion\":\"1.0.1397\"}]"

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->requestString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static serviceTaskFinish(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[{\"bizId\":\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\"}]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.alipay.adtask.biz.mobilegw.service.task.finish"

    invoke-static {v0, p0}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->requestString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static serviceTaskQuery(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[{\"bizId\":\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\"}]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.alipay.adtask.biz.mobilegw.service.task.query"

    invoke-static {v0, p0}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->requestString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static syncUserPlayData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[{\"chInfo\":\"sy_wanansenlin_shouye\",\"miniClientVersion\":\"1.0.0\",\"syncingPlayRecordRequestList\":[{\"albumId\":"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ",\"position\":720,\"soundId\":"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ",\"timestamp\":"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "}],\"yuyanVersion\":\"1.0.1397\"}]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 130
    const-string p1, "com.alipay.antbooks.biz.mgw.syncUserPlayData"

    invoke-static {p1, p0}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->requestString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static syncUserReadInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/16 v0, 0x28

    const/16 v1, 0xc8

    .line 27
    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/util/RandomUtil;->nextInt(II)I

    move-result v0

    const/16 v1, 0xa0

    const/16 v2, 0xaa

    .line 28
    invoke-static {v1, v2}, Lio/github/lazyimmortal/sesame/util/RandomUtil;->nextInt(II)I

    move-result v1

    mul-int/lit16 v1, v1, 0x2710

    .line 29
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[{\"bookId\":\""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\",\"chInfo\":\"ch_appcenter__chsub_9patch\",\"chapterId\":\""

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\",\"miniClientVersion\":\"1.0.0\",\"readCount\":"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ",\"readTime\":"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ",\"timeStamp\":"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ",\"volumeId\":\"\",\"yuyanVersion\":\"1.0.1397\"}]"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 29
    const-string p1, "com.alipay.antbookread.biz.mgw.syncUserReadInfo"

    invoke-static {p1, p0}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->requestString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static taskFinish(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[{\"chInfo\":\"ch_appcenter__chsub_9patch\",\"miniClientVersion\":\"1.0.0\",\"taskId\":\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\",\"taskType\":\""

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\",\"yuyanVersion\":\"1.0.1397\"}]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "com.alipay.antbookpromo.taskcenter.taskFinish"

    invoke-static {p1, p0}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->requestString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
