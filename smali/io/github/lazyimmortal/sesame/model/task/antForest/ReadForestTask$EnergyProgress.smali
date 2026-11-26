.class final Lio/github/lazyimmortal/sesame/model/task/antForest/ReadForestTask$EnergyProgress;
.super Ljava/lang/Object;
.source "ReadForestTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/lazyimmortal/sesame/model/task/antForest/ReadForestTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EnergyProgress"
.end annotation


# instance fields
.field final current:I

.field final hasData:Z

.field final total:I


# direct methods
.method constructor <init>(ZII)V
    .locals 0

    .line 329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 330
    iput-boolean p1, p0, Lio/github/lazyimmortal/sesame/model/task/antForest/ReadForestTask$EnergyProgress;->hasData:Z

    .line 331
    iput p2, p0, Lio/github/lazyimmortal/sesame/model/task/antForest/ReadForestTask$EnergyProgress;->current:I

    .line 332
    iput p3, p0, Lio/github/lazyimmortal/sesame/model/task/antForest/ReadForestTask$EnergyProgress;->total:I

    return-void
.end method
