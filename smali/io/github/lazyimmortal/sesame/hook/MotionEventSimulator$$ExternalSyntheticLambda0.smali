.class public final synthetic Lio/github/lazyimmortal/sesame/hook/MotionEventSimulator$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/view/View;

.field public final synthetic f$1:F

.field public final synthetic f$2:F

.field public final synthetic f$3:F

.field public final synthetic f$4:F

.field public final synthetic f$5:J


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;FFFFJ)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/github/lazyimmortal/sesame/hook/MotionEventSimulator$$ExternalSyntheticLambda0;->f$0:Landroid/view/View;

    iput p2, p0, Lio/github/lazyimmortal/sesame/hook/MotionEventSimulator$$ExternalSyntheticLambda0;->f$1:F

    iput p3, p0, Lio/github/lazyimmortal/sesame/hook/MotionEventSimulator$$ExternalSyntheticLambda0;->f$2:F

    iput p4, p0, Lio/github/lazyimmortal/sesame/hook/MotionEventSimulator$$ExternalSyntheticLambda0;->f$3:F

    iput p5, p0, Lio/github/lazyimmortal/sesame/hook/MotionEventSimulator$$ExternalSyntheticLambda0;->f$4:F

    iput-wide p6, p0, Lio/github/lazyimmortal/sesame/hook/MotionEventSimulator$$ExternalSyntheticLambda0;->f$5:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 0
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/hook/MotionEventSimulator$$ExternalSyntheticLambda0;->f$0:Landroid/view/View;

    iget v1, p0, Lio/github/lazyimmortal/sesame/hook/MotionEventSimulator$$ExternalSyntheticLambda0;->f$1:F

    iget v2, p0, Lio/github/lazyimmortal/sesame/hook/MotionEventSimulator$$ExternalSyntheticLambda0;->f$2:F

    iget v3, p0, Lio/github/lazyimmortal/sesame/hook/MotionEventSimulator$$ExternalSyntheticLambda0;->f$3:F

    iget v4, p0, Lio/github/lazyimmortal/sesame/hook/MotionEventSimulator$$ExternalSyntheticLambda0;->f$4:F

    iget-wide v5, p0, Lio/github/lazyimmortal/sesame/hook/MotionEventSimulator$$ExternalSyntheticLambda0;->f$5:J

    invoke-static/range {v0 .. v6}, Lio/github/lazyimmortal/sesame/hook/MotionEventSimulator;->lambda$simulateSwipe$0(Landroid/view/View;FFFFJ)V

    return-void
.end method
