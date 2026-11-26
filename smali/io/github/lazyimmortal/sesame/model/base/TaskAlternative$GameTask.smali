.class public final Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;
.super Ljava/lang/Object;
.source "TaskAlternative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GameTask"
.end annotation


# instance fields
.field private beforeGameLink:Ljava/lang/Runnable;

.field private bizKey:Ljava/lang/String;

.field private final desc:Ljava/lang/String;

.field private final listTitle:Ljava/lang/String;

.field private rightsTimes:I

.field private rightsTimesLimit:I

.field private sceneCode:Ljava/lang/String;

.field private source:Ljava/lang/String;

.field private final status:Ljava/lang/String;

.field private final targetUrl:Ljava/lang/String;

.field private taskMode:Ljava/lang/String;

.field private taskPlayType:Ljava/lang/String;

.field private taskRemain:I

.field private taskSceneCode:Ljava/lang/String;

.field private final title:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    const-string v0, ""

    iput-object v0, p0, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->bizKey:Ljava/lang/String;

    .line 244
    iput-object v0, p0, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->taskSceneCode:Ljava/lang/String;

    .line 245
    iput-object v0, p0, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->sceneCode:Ljava/lang/String;

    .line 246
    iput-object v0, p0, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->source:Ljava/lang/String;

    .line 247
    iput-object v0, p0, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->version:Ljava/lang/String;

    .line 248
    iput-object v0, p0, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->taskMode:Ljava/lang/String;

    .line 249
    iput-object v0, p0, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->taskPlayType:Ljava/lang/String;

    const/4 v1, -0x1

    .line 250
    iput v1, p0, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->rightsTimes:I

    .line 251
    iput v1, p0, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->rightsTimesLimit:I

    .line 252
    iput v1, p0, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->taskRemain:I

    .line 263
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->listTitle:Ljava/lang/String;

    if-nez p2, :cond_0

    move-object p2, v0

    .line 264
    :cond_0
    iput-object p2, p0, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->title:Ljava/lang/String;

    if-nez p3, :cond_1

    move-object p3, v0

    .line 265
    :cond_1
    iput-object p3, p0, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->desc:Ljava/lang/String;

    if-nez p4, :cond_2

    move-object p4, v0

    .line 266
    :cond_2
    iput-object p4, p0, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->targetUrl:Ljava/lang/String;

    if-nez p5, :cond_3

    move-object p5, v0

    .line 267
    :cond_3
    iput-object p5, p0, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->status:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;)Ljava/lang/String;
    .locals 0

    .line 237
    iget-object p0, p0, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->title:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;)Ljava/lang/String;
    .locals 0

    .line 237
    iget-object p0, p0, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->taskMode:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;)Ljava/lang/String;
    .locals 0

    .line 237
    iget-object p0, p0, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->targetUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;)Ljava/lang/String;
    .locals 0

    .line 237
    iget-object p0, p0, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->taskPlayType:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;)Ljava/lang/String;
    .locals 0

    .line 237
    iget-object p0, p0, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->desc:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;)Ljava/lang/String;
    .locals 0

    .line 237
    iget-object p0, p0, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->listTitle:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;)Ljava/lang/String;
    .locals 0

    .line 237
    iget-object p0, p0, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->status:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;)Ljava/lang/String;
    .locals 0

    .line 237
    iget-object p0, p0, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->bizKey:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;)Ljava/lang/Runnable;
    .locals 0

    .line 237
    iget-object p0, p0, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->beforeGameLink:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$900(Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;)Ljava/lang/String;
    .locals 0

    .line 237
    iget-object p0, p0, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->sceneCode:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public beforeGameLink(Ljava/lang/Runnable;)Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;
    .locals 0

    .line 332
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->beforeGameLink:Ljava/lang/Runnable;

    return-object p0
.end method

.method public bizKey(Ljava/lang/String;)Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;
    .locals 0

    if-nez p1, :cond_0

    .line 271
    const-string p1, ""

    :cond_0
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->bizKey:Ljava/lang/String;

    return-object p0
.end method

.method public isCallAppOutTask()Z
    .locals 2

    .line 311
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->taskPlayType:Ljava/lang/String;

    const-string v1, "CALL_APP_OUT_TASK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public name()Ljava/lang/String;
    .locals 2

    .line 345
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->title:Ljava/lang/String;

    iget-object v1, p0, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->desc:Ljava/lang/String;

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/util/idMap/MiniGameTaskListMap;->name(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public pendingRounds()I
    .locals 3

    .line 338
    iget v0, p0, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->rightsTimesLimit:I

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 339
    iget v2, p0, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->rightsTimes:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 340
    :goto_0
    iget v2, p0, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->taskRemain:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public rights(II)Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;
    .locals 0

    .line 319
    iput p1, p0, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->rightsTimes:I

    .line 320
    iput p2, p0, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->rightsTimesLimit:I

    return-object p0
.end method

.method public scene(Ljava/lang/String;Ljava/lang/String;)Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;
    .locals 1

    if-eqz p1, :cond_0

    .line 281
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 282
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->sceneCode:Ljava/lang/String;

    :cond_0
    if-eqz p2, :cond_1

    .line 284
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 285
    iput-object p2, p0, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->source:Ljava/lang/String;

    :cond_1
    return-object p0
.end method

.method public taskMode(Ljava/lang/String;)Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;
    .locals 0

    if-nez p1, :cond_0

    .line 299
    const-string p1, ""

    :cond_0
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->taskMode:Ljava/lang/String;

    return-object p0
.end method

.method public taskPlayType(Ljava/lang/String;)Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;
    .locals 0

    if-nez p1, :cond_0

    .line 305
    const-string p1, ""

    :cond_0
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->taskPlayType:Ljava/lang/String;

    return-object p0
.end method

.method public taskRemain(I)Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;
    .locals 0

    .line 326
    iput p1, p0, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->taskRemain:I

    return-object p0
.end method

.method public taskSceneCode(Ljava/lang/String;)Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;
    .locals 0

    if-nez p1, :cond_0

    .line 276
    const-string p1, ""

    :cond_0
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->taskSceneCode:Ljava/lang/String;

    return-object p0
.end method

.method public version(Ljava/lang/String;)Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;
    .locals 1

    if-eqz p1, :cond_0

    .line 291
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 292
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$GameTask;->version:Ljava/lang/String;

    :cond_0
    return-object p0
.end method
