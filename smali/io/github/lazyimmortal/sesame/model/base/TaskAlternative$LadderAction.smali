.class final Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$LadderAction;
.super Ljava/lang/Object;
.source "TaskAlternative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/lazyimmortal/sesame/model/base/TaskAlternative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LadderAction"
.end annotation


# instance fields
.field final code:Ljava/lang/String;

.field final times:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1241
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$LadderAction;->code:Ljava/lang/String;

    .line 1242
    iput p2, p0, Lio/github/lazyimmortal/sesame/model/base/TaskAlternative$LadderAction;->times:I

    return-void
.end method
