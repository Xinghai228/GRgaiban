.class public Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology$ExchangeableTree;
.super Ljava/lang/Object;
.source "ProtectEcology.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExchangeableTree"
.end annotation


# instance fields
.field canExchange:Z

.field certCount:I

.field projectId:I

.field projectName:Ljava/lang/String;


# direct methods
.method constructor <init>(I)V
    .locals 1

    .line 899
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 900
    iput-boolean v0, p0, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology$ExchangeableTree;->canExchange:Z

    .line 901
    iput p1, p0, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology$ExchangeableTree;->projectId:I

    return-void
.end method
