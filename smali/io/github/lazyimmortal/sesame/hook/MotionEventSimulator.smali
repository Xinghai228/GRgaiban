.class public Lio/github/lazyimmortal/sesame/hook/MotionEventSimulator;
.super Ljava/lang/Object;
.source "MotionEventSimulator.java"


# static fields
.field private static final MAIN_HANDLER:Landroid/os/Handler;

.field private static final RANDOM:Ljava/util/Random;

.field private static final TAG:Ljava/lang/String; = "MotionEventSimulator"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lio/github/lazyimmortal/sesame/hook/MotionEventSimulator;->RANDOM:Ljava/util/Random;

    .line 22
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lio/github/lazyimmortal/sesame/hook/MotionEventSimulator;->MAIN_HANDLER:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static dispatchTouchEvent(Landroid/view/View;IFFJJ)V
    .locals 19

    .line 88
    new-instance v0, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v0}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    const/4 v1, 0x0

    .line 89
    iput v1, v0, Landroid/view/MotionEvent$PointerProperties;->id:I

    const/4 v2, 0x1

    .line 90
    iput v2, v0, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    .line 91
    new-array v9, v2, [Landroid/view/MotionEvent$PointerProperties;

    aput-object v0, v9, v1

    .line 94
    new-instance v0, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v0}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    move/from16 v3, p2

    .line 95
    iput v3, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    move/from16 v3, p3

    .line 96
    iput v3, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    const/high16 v3, 0x3f800000    # 1.0f

    .line 97
    iput v3, v0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 98
    iput v3, v0, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 99
    new-array v10, v2, [Landroid/view/MotionEvent$PointerCoords;

    aput-object v0, v10, v1

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/4 v8, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/high16 v13, 0x3f800000    # 1.0f

    const/high16 v14, 0x3f800000    # 1.0f

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-wide/from16 v3, p4

    move-wide/from16 v5, p6

    move/from16 v7, p1

    .line 101
    invoke-static/range {v3 .. v18}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v0

    move-object/from16 v1, p0

    .line 118
    invoke-virtual {v1, v0}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 119
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method static synthetic lambda$simulateSwipe$0(Landroid/view/View;FFFFJ)V
    .locals 25

    move/from16 v8, p1

    move/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p4

    move-wide/from16 v12, p5

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u51c6\u5907\u5728\u89c6\u56fe "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " \u4e0a\u6a21\u62df\u6ed1\u52a8"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v14, "MotionEventSimulator"

    invoke-static {v14, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u4ece ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ") -> ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ")\uff0c\u6301\u7eed\u65f6\u95f4: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 45
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v23

    const/4 v1, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-wide/from16 v4, v23

    move-wide/from16 v6, v23

    .line 48
    :try_start_0
    invoke-static/range {v0 .. v7}, Lio/github/lazyimmortal/sesame/hook/MotionEventSimulator;->dispatchTouchEvent(Landroid/view/View;IFFJJ)V

    const-wide/16 v0, 0x1e

    const-wide/16 v2, 0x50

    .line 49
    invoke-static {v0, v1, v2, v3}, Lio/github/lazyimmortal/sesame/util/RandomUtil;->nextLong(JJ)J

    move-result-wide v0

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V

    const-wide/16 v0, 0x64

    sub-long v0, v12, v0

    const/16 v2, 0xf

    int-to-long v3, v2

    .line 53
    div-long/2addr v0, v3

    sub-float v3, v10, v8

    int-to-float v4, v2

    div-float/2addr v3, v4

    sub-float v5, v11, v9

    div-float/2addr v5, v4

    const/4 v4, 0x1

    :goto_0
    if-gt v4, v2, :cond_1

    int-to-float v6, v4

    mul-float v7, v3, v6

    add-float/2addr v7, v8

    const/4 v15, -0x3

    const/4 v2, 0x4

    .line 58
    invoke-static {v15, v2}, Lio/github/lazyimmortal/sesame/util/RandomUtil;->nextInt(II)I

    move-result v2

    int-to-float v2, v2

    add-float v17, v7, v2

    mul-float v6, v6, v5

    add-float v2, v9, v6

    const/4 v6, -0x2

    const/4 v7, 0x3

    .line 59
    invoke-static {v6, v7}, Lio/github/lazyimmortal/sesame/util/RandomUtil;->nextInt(II)I

    move-result v6

    int-to-float v6, v6

    add-float v18, v2, v6

    int-to-long v6, v4

    mul-long v6, v6, v0

    add-long v21, v23, v6

    const/16 v16, 0x2

    move-object/from16 v15, p0

    move-wide/from16 v19, v23

    .line 62
    invoke-static/range {v15 .. v22}, Lio/github/lazyimmortal/sesame/hook/MotionEventSimulator;->dispatchTouchEvent(Landroid/view/View;IFFJJ)V

    .line 63
    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V

    add-int/lit8 v4, v4, 0x1

    const/16 v2, 0xf

    goto :goto_0

    :cond_1
    add-long v6, v23, v12

    const/4 v1, 0x1

    move-object/from16 v0, p0

    move/from16 v2, p3

    move/from16 v3, p4

    move-wide/from16 v4, v23

    .line 68
    invoke-static/range {v0 .. v7}, Lio/github/lazyimmortal/sesame/hook/MotionEventSimulator;->dispatchTouchEvent(Landroid/view/View;IFFJJ)V

    .line 69
    const-string v0, "\u6a21\u62df\u6ed1\u52a8\u4e8b\u4ef6\u5e8f\u5217\u53d1\u9001\u5b8c\u6bd5."

    invoke-static {v14, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 71
    :catchall_0
    const-string v0, "\u6d3e\u53d1\u89e6\u6478\u4e8b\u4ef6\u65f6\u53d1\u751f\u5f02\u5e38"

    invoke-static {v14, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    .line 41
    :cond_2
    :goto_2
    const-string v0, "\u6ed1\u52a8\u5931\u8d25: \u76ee\u6807\u89c6\u56fe\u4e0d\u53ef\u89c1\u6216\u672a\u542f\u7528."

    invoke-static {v14, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static simulateSwipe(Landroid/view/View;FFFF)V
    .locals 7

    const-wide/16 v5, 0x320

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 80
    invoke-static/range {v0 .. v6}, Lio/github/lazyimmortal/sesame/hook/MotionEventSimulator;->simulateSwipe(Landroid/view/View;FFFFJ)V

    return-void
.end method

.method public static simulateSwipe(Landroid/view/View;FFFFJ)V
    .locals 10

    .line 36
    sget-object v0, Lio/github/lazyimmortal/sesame/hook/MotionEventSimulator;->MAIN_HANDLER:Landroid/os/Handler;

    new-instance v9, Lio/github/lazyimmortal/sesame/hook/MotionEventSimulator$$ExternalSyntheticLambda0;

    move-object v1, v9

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-wide v7, p5

    invoke-direct/range {v1 .. v8}, Lio/github/lazyimmortal/sesame/hook/MotionEventSimulator$$ExternalSyntheticLambda0;-><init>(Landroid/view/View;FFFFJ)V

    invoke-virtual {v0, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
