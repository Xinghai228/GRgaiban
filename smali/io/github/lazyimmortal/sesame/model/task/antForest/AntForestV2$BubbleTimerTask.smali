.class Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$BubbleTimerTask;
.super Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;
.source "AntForestV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BubbleTimerTask"
.end annotation


# instance fields
.field private final bubbleId:J

.field private final produceTime:J

.field final synthetic this$0:Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2;

.field private final userId:Ljava/lang/String;

.field private final userName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2;Ljava/lang/String;JJLjava/lang/String;)V
    .locals 3

    .line 6286
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$BubbleTimerTask;->this$0:Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2;

    .line 6287
    invoke-static {p2, p3, p4}, Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2;->getBubbleTimerTid(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2;->access$000(Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v1, p1

    sub-long v1, p5, v1

    invoke-direct {p0, v0, v1, v2}, Lio/github/lazyimmortal/sesame/data/task/ModelTask$ChildModelTask;-><init>(Ljava/lang/String;J)V

    .line 6288
    iput-object p2, p0, Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$BubbleTimerTask;->userId:Ljava/lang/String;

    .line 6289
    iput-wide p3, p0, Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$BubbleTimerTask;->bubbleId:J

    .line 6290
    iput-wide p5, p0, Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$BubbleTimerTask;->produceTime:J

    .line 6291
    iput-object p7, p0, Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$BubbleTimerTask;->userName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method synthetic lambda$setRunnable$0$io-github-lazyimmortal-sesame-model-task-antForest-AntForestV2$BubbleTimerTask()V
    .locals 6

    .line 6298
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2;->access$100()Lio/github/lazyimmortal/sesame/util/AverageMath;

    move-result-object v0

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/util/AverageMath;->getAverageInteger()I

    move-result v0

    .line 6299
    iget-wide v1, p0, Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$BubbleTimerTask;->produceTime:J

    iget-object v3, p0, Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$BubbleTimerTask;->this$0:Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2;

    invoke-static {v3}, Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2;->access$000(Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    sub-long/2addr v1, v3

    int-to-long v3, v0

    add-long/2addr v1, v3

    iget-object v3, p0, Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$BubbleTimerTask;->this$0:Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2;

    invoke-static {v3}, Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2;->access$200(Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2;)Lio/github/lazyimmortal/sesame/util/AverageMath;

    move-result-object v3

    invoke-virtual {v3}, Lio/github/lazyimmortal/sesame/util/AverageMath;->getAverageInteger()I

    move-result v3

    int-to-long v3, v3

    sub-long/2addr v1, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x46

    add-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    .line 6302
    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6304
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u7ec8\u6b62["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$BubbleTimerTask;->userName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]\u8e72\u70b9\u6536\u53d6\u4efb\u52a1, \u4efb\u52a1ID["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$BubbleTimerTask;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;)V

    return-void

    .line 6308
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u6267\u884c\u8e72\u70b9\u6536\u53d6["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$BubbleTimerTask;->userName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]\u65f6\u5dee["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]ms\u63d0\u524d["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$BubbleTimerTask;->this$0:Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2;

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2;->access$000(Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "]ms"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    .line 6309
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$BubbleTimerTask;->this$0:Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2;

    new-instance v1, Lio/github/lazyimmortal/sesame/entity/CollectEnergyEntity;

    iget-object v2, p0, Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$BubbleTimerTask;->userId:Ljava/lang/String;

    iget-wide v3, p0, Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$BubbleTimerTask;->bubbleId:J

    const/4 v5, 0x0

    invoke-static {v5, v2, v3, v4}, Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestRpcCall;->getCollectEnergyRpcEntity(Ljava/lang/String;Ljava/lang/String;J)Lio/github/lazyimmortal/sesame/entity/RpcEntity;

    move-result-object v3

    invoke-direct {v1, v2, v5, v3}, Lio/github/lazyimmortal/sesame/entity/CollectEnergyEntity;-><init>(Ljava/lang/String;Lorg/json/JSONObject;Lio/github/lazyimmortal/sesame/entity/RpcEntity;)V

    iget-object v2, p0, Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$BubbleTimerTask;->userName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2;->access$300(Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2;Lio/github/lazyimmortal/sesame/entity/CollectEnergyEntity;Ljava/lang/String;)V

    return-void
.end method

.method public setRunnable()Ljava/lang/Runnable;
    .locals 1

    .line 6296
    new-instance v0, Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$BubbleTimerTask$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$BubbleTimerTask$$ExternalSyntheticLambda0;-><init>(Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$BubbleTimerTask;)V

    return-object v0
.end method
