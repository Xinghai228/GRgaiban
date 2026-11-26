.class public abstract Lio/github/lazyimmortal/sesame/hook/BaseCaptchaHandler;
.super Ljava/lang/Object;
.source "BaseCaptchaHandler.java"


# static fields
.field private static final POST_SLIDE_CHECK_DELAY_MS:J = 0x1f4L

.field private static final SLIDE_DURATION_MAX:J = 0x258L

.field private static final SLIDE_DURATION_MIN:J = 0x1f4L

.field private static final SLIDE_END_MARGIN:I = 0x14

.field private static final SLIDE_START_OFFSET:I = 0x19

.field private static final SLIDE_VERIFY_TEXT_XPATH:Ljava/lang/String; = "//TextView[contains(@text,\'\u5411\u53f3\u6ed1\u52a8\u9a8c\u8bc1\')]"

.field private static final TAG:Ljava/lang/String; = "CaptchaHandler"

.field private static final captchaProcessingMutex:Ljava/util/concurrent/locks/Lock;

.field private static final random:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lio/github/lazyimmortal/sesame/hook/BaseCaptchaHandler;->captchaProcessingMutex:Ljava/util/concurrent/locks/Lock;

    .line 37
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lio/github/lazyimmortal/sesame/hook/BaseCaptchaHandler;->random:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private calculateSlideCoordinates(Landroid/app/Activity;Landroid/view/View;)Lio/github/lazyimmortal/sesame/hook/SlideCoordinates;
    .locals 16

    .line 148
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    return-object v1

    .line 155
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 156
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 157
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 158
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    const/4 v1, 0x2

    .line 161
    new-array v3, v1, [I

    .line 162
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    const/4 v4, 0x0

    .line 163
    aget v5, v3, v4

    const/4 v6, 0x1

    .line 164
    aget v3, v3, v6

    .line 165
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    .line 166
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    .line 169
    new-array v0, v1, [I

    move-object/from16 v7, p2

    .line 170
    invoke-virtual {v7, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 171
    aget v8, v0, v4

    .line 172
    aget v0, v0, v6

    .line 173
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v9

    .line 174
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v7

    .line 177
    sget-object v10, Lio/github/lazyimmortal/sesame/hook/BaseCaptchaHandler;->random:Ljava/util/Random;

    const/4 v11, 0x7

    invoke-virtual {v10, v11}, Ljava/util/Random;->nextInt(I)I

    move-result v12

    const/4 v13, 0x3

    sub-int/2addr v12, v13

    int-to-float v8, v8

    int-to-float v9, v9

    const/high16 v14, 0x40000000    # 2.0f

    div-float v15, v9, v14

    add-float/2addr v8, v15

    const/high16 v15, 0x41c80000    # 25.0f

    add-float/2addr v8, v15

    int-to-float v12, v12

    add-float/2addr v8, v12

    const/4 v12, 0x5

    .line 179
    invoke-virtual {v10, v12}, Ljava/util/Random;->nextInt(I)I

    move-result v15

    sub-int/2addr v15, v1

    int-to-float v0, v0

    int-to-float v7, v7

    div-float/2addr v7, v14

    add-float/2addr v0, v7

    int-to-float v7, v15

    add-float/2addr v0, v7

    add-int/2addr v5, v3

    int-to-float v2, v2

    const/high16 v3, 0x42480000    # 50.0f

    sub-float/2addr v2, v3

    const/16 v3, 0xb

    .line 187
    invoke-virtual {v10, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    sub-int/2addr v3, v12

    add-int/lit8 v5, v5, -0x14

    add-int/2addr v5, v3

    int-to-float v3, v5

    cmpl-float v5, v3, v2

    if-lez v5, :cond_2

    .line 193
    const-string v3, "\u6ed1\u52a8\u9a8c\u8bc1\ud83c\udd98\u8c03\u6574\u6ed1\u52a8\u7ec8\u70b9\u4ee5\u9002\u914d\u5c4f\u5e55\u8fb9\u754c"

    invoke-static {v3}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    const/high16 v3, 0x3fc00000    # 1.5f

    mul-float v9, v9, v3

    sub-float v3, v2, v8

    cmpg-float v3, v3, v9

    if-gez v3, :cond_3

    .line 200
    invoke-virtual {v10, v11}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    sub-int/2addr v2, v13

    add-float/2addr v9, v8

    int-to-float v2, v2

    add-float/2addr v2, v9

    :cond_3
    const-wide/16 v9, 0x258

    const-wide/16 v14, 0x1f5

    .line 215
    invoke-static {v9, v10, v14, v15}, Lio/github/lazyimmortal/sesame/util/RandomUtil;->nextLong(JJ)J

    move-result-wide v9

    const-wide/16 v14, 0x1f4

    add-long/2addr v9, v14

    float-to-int v3, v8

    .line 217
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    float-to-int v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    float-to-int v11, v2

    .line 218
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 219
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    new-array v10, v12, [Ljava/lang/Object;

    aput-object v3, v10, v4

    aput-object v7, v10, v6

    aput-object v11, v10, v1

    aput-object v5, v10, v13

    const/4 v1, 0x4

    aput-object v9, v10, v1

    .line 216
    const-string v1, "input swipe %d %d %d %d %d"

    invoke-static {v1, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 222
    new-instance v1, Lio/github/lazyimmortal/sesame/hook/SlideCoordinates;

    invoke-direct {v1, v8, v0, v2, v0}, Lio/github/lazyimmortal/sesame/hook/SlideCoordinates;-><init>(FFFF)V

    return-object v1
.end method

.method private checkCaptchaTextGone()Z
    .locals 1

    .line 230
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/hook/BaseCaptchaHandler;->findSlideTextInDialog()Lio/github/lazyimmortal/sesame/hook/SimpleViewImage;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private findSlideTextInDialog()Lio/github/lazyimmortal/sesame/hook/SimpleViewImage;
    .locals 3

    .line 247
    :try_start_0
    const-string v0, "//TextView[contains(@text,\'\u5411\u53f3\u6ed1\u52a8\u9a8c\u8bc1\')]"

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/hook/SimplePageManager;->tryGetTopView(Ljava/lang/String;)Lio/github/lazyimmortal/sesame/hook/SimpleViewImage;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 249
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u6ed1\u52a8\u9a8c\u8bc1\ud83c\udd98\u7531\u4e8e\u5f02\u5e38\u5bfc\u81f4\u67e5\u627e\u9a8c\u8bc1\u7801\u6587\u672c\u5931\u8d25:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method private handleSlideCaptcha(Landroid/app/Activity;)Z
    .locals 8

    const-string v0, "\u6ed1\u52a8\u9a8c\u8bc1\ud83c\udd98\u7b49\u5f85\u754c\u9762\u7a33\u5b9a\u65f6\u88ab\u4e2d\u65ad: "

    const-string v1, "\u6ed1\u52a8\u9a8c\u8bc1\ud83c\udd98\u53d1\u73b0\u6ed1\u52a8\u9a8c\u8bc1\u6587\u672c:"

    const-string v2, "\u6ed1\u52a8\u9a8c\u8bc1\ud83c\udd98\u5904\u7406\u6ed1\u52a8\u9a8c\u8bc1\u7801\u65f6\u53d1\u751f\u9519\u8bef: "

    .line 62
    sget-object v3, Lio/github/lazyimmortal/sesame/hook/BaseCaptchaHandler;->captchaProcessingMutex:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->tryLock()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v4, 0x0

    .line 66
    :try_start_0
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/hook/BaseCaptchaHandler;->findSlideTextInDialog()Lio/github/lazyimmortal/sesame/hook/SimpleViewImage;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_1

    .line 85
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v4

    .line 71
    :cond_1
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lio/github/lazyimmortal/sesame/hook/SimpleViewImage;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getCurrentUid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getShowName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/16 v6, 0x1f4

    .line 73
    :try_start_2
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 80
    :try_start_3
    invoke-direct {p0, p1, v5}, Lio/github/lazyimmortal/sesame/hook/BaseCaptchaHandler;->performSlideAndVerify(Landroid/app/Activity;Lio/github/lazyimmortal/sesame/hook/SimpleViewImage;)Z

    move-result p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 85
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return p1

    :catch_0
    move-exception p1

    .line 75
    :try_start_4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 85
    :goto_0
    sget-object p1, Lio/github/lazyimmortal/sesame/hook/BaseCaptchaHandler;->captchaProcessingMutex:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v4

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 82
    :try_start_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 85
    :goto_1
    sget-object v0, Lio/github/lazyimmortal/sesame/hook/BaseCaptchaHandler;->captchaProcessingMutex:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 86
    throw p1
.end method

.method private performSlideAndVerify(Landroid/app/Activity;Lio/github/lazyimmortal/sesame/hook/SimpleViewImage;)Z
    .locals 9

    .line 96
    invoke-static {p2}, Lio/github/lazyimmortal/sesame/hook/ViewHierarchyAnalyzer;->findActualSliderView(Lio/github/lazyimmortal/sesame/hook/SimpleViewImage;)Landroid/view/View;

    move-result-object v0

    const/4 p2, 0x0

    if-nez v0, :cond_0

    .line 98
    const-string p1, "\u6ed1\u52a8\u9a8c\u8bc1\ud83c\udd98\u672a\u80fd\u627e\u5230\u53ef\u64cd\u4f5c\u7684\u6ed1\u5757\u89c6\u56fe\uff0c\u6ed1\u52a8\u65e0\u6cd5\u6267\u884c\u3002"

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    return p2

    .line 103
    :cond_0
    invoke-direct {p0, p1, v0}, Lio/github/lazyimmortal/sesame/hook/BaseCaptchaHandler;->calculateSlideCoordinates(Landroid/app/Activity;Landroid/view/View;)Lio/github/lazyimmortal/sesame/hook/SlideCoordinates;

    move-result-object p1

    if-nez p1, :cond_1

    .line 105
    const-string p1, "\u6ed1\u52a8\u9a8c\u8bc1\ud83c\udd98\u8ba1\u7b97\u6ed1\u52a8\u5750\u6807\u5931\u8d25\uff0c\u6ed1\u52a8\u65e0\u6cd5\u6267\u884c\u3002"

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    return p2

    :cond_1
    const-wide/16 v1, 0x258

    const-wide/16 v3, 0x1f5

    .line 110
    invoke-static {v1, v2, v3, v4}, Lio/github/lazyimmortal/sesame/util/RandomUtil;->nextLong(JJ)J

    move-result-wide v1

    const-wide/16 v7, 0x1f4

    add-long v5, v1, v7

    .line 115
    invoke-virtual {p1}, Lio/github/lazyimmortal/sesame/hook/SlideCoordinates;->getStartX()F

    move-result v1

    .line 116
    invoke-virtual {p1}, Lio/github/lazyimmortal/sesame/hook/SlideCoordinates;->getStartY()F

    move-result v2

    .line 117
    invoke-virtual {p1}, Lio/github/lazyimmortal/sesame/hook/SlideCoordinates;->getEndX()F

    move-result v3

    .line 118
    invoke-virtual {p1}, Lio/github/lazyimmortal/sesame/hook/SlideCoordinates;->getEndY()F

    move-result v4

    .line 113
    invoke-static/range {v0 .. v6}, Lio/github/lazyimmortal/sesame/hook/MotionEventSimulator;->simulateSwipe(Landroid/view/View;FFFFJ)V

    .line 123
    :try_start_0
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/hook/BaseCaptchaHandler;->checkCaptchaTextGone()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    return p2

    :catch_0
    move-exception p1

    .line 125
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u6ed1\u52a8\u9a8c\u8bc1\ud83c\udd98\u6ed1\u52a8\u540e\u7b49\u5f85\u68c0\u67e5\u65f6\u88ab\u4e2d\u65ad:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    return p2
.end method


# virtual methods
.method protected abstract getSlidePathKey()Ljava/lang/String;
.end method

.method public handleActivity(Landroid/app/Activity;Lio/github/lazyimmortal/sesame/hook/SimpleViewImage;)Z
    .locals 1

    .line 53
    :try_start_0
    invoke-direct {p0, p1}, Lio/github/lazyimmortal/sesame/hook/BaseCaptchaHandler;->handleSlideCaptcha(Landroid/app/Activity;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 55
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "\u6ed1\u52a8\u9a8c\u8bc1\ud83c\udd98\u5904\u7406\u9a8c\u8bc1\u7801\u9875\u9762\u65f6\u53d1\u751f\u5f02\u5e38: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method
