.class final Lio/github/lazyimmortal/sesame/model/task/antGame/MiniGameVendorReporter$Meta;
.super Ljava/lang/Object;
.source "MiniGameVendorReporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/lazyimmortal/sesame/model/task/antGame/MiniGameVendorReporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Meta"
.end annotation


# instance fields
.field final actions:[[Ljava/lang/String;

.field final appKey:Ljava/lang/String;

.field channel:Ljava/lang/String;

.field final channelId:Ljava/lang/String;

.field final companyId:Ljava/lang/String;

.field final gcid:Ljava/lang/String;

.field final name:Ljava/lang/String;

.field final nebulaAppId:Ljava/lang/String;

.field final oid:Ljava/lang/String;

.field final vendor:Lio/github/lazyimmortal/sesame/model/task/antGame/MiniGameVendorReporter$Vendor;

.field final version:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lio/github/lazyimmortal/sesame/model/task/antGame/MiniGameVendorReporter$Vendor;Ljava/lang/String;[[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/model/task/antGame/MiniGameVendorReporter$Meta;->name:Ljava/lang/String;

    .line 129
    iput-object p2, p0, Lio/github/lazyimmortal/sesame/model/task/antGame/MiniGameVendorReporter$Meta;->version:Ljava/lang/String;

    .line 130
    iput-object p3, p0, Lio/github/lazyimmortal/sesame/model/task/antGame/MiniGameVendorReporter$Meta;->vendor:Lio/github/lazyimmortal/sesame/model/task/antGame/MiniGameVendorReporter$Vendor;

    .line 131
    iput-object p4, p0, Lio/github/lazyimmortal/sesame/model/task/antGame/MiniGameVendorReporter$Meta;->channel:Ljava/lang/String;

    .line 132
    iput-object p5, p0, Lio/github/lazyimmortal/sesame/model/task/antGame/MiniGameVendorReporter$Meta;->actions:[[Ljava/lang/String;

    .line 133
    iput-object p6, p0, Lio/github/lazyimmortal/sesame/model/task/antGame/MiniGameVendorReporter$Meta;->oid:Ljava/lang/String;

    .line 134
    iput-object p7, p0, Lio/github/lazyimmortal/sesame/model/task/antGame/MiniGameVendorReporter$Meta;->gcid:Ljava/lang/String;

    .line 135
    iput-object p8, p0, Lio/github/lazyimmortal/sesame/model/task/antGame/MiniGameVendorReporter$Meta;->appKey:Ljava/lang/String;

    .line 136
    iput-object p9, p0, Lio/github/lazyimmortal/sesame/model/task/antGame/MiniGameVendorReporter$Meta;->nebulaAppId:Ljava/lang/String;

    .line 137
    iput-object p10, p0, Lio/github/lazyimmortal/sesame/model/task/antGame/MiniGameVendorReporter$Meta;->companyId:Ljava/lang/String;

    .line 138
    iput-object p11, p0, Lio/github/lazyimmortal/sesame/model/task/antGame/MiniGameVendorReporter$Meta;->channelId:Ljava/lang/String;

    return-void
.end method
