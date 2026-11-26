.class Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$MonopolyCreatureCandidate;
.super Ljava/lang/Object;
.source "AntForestV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MonopolyCreatureCandidate"
.end annotation


# instance fields
.field final creatureCode:Ljava/lang/String;

.field final creatureName:Ljava/lang/String;

.field final energy:I

.field final mapCode:Ljava/lang/String;

.field final regionCode:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 5239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5240
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$MonopolyCreatureCandidate;->regionCode:Ljava/lang/String;

    .line 5241
    iput-object p2, p0, Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$MonopolyCreatureCandidate;->mapCode:Ljava/lang/String;

    .line 5242
    iput-object p3, p0, Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$MonopolyCreatureCandidate;->creatureCode:Ljava/lang/String;

    .line 5243
    iput-object p4, p0, Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$MonopolyCreatureCandidate;->creatureName:Ljava/lang/String;

    .line 5244
    iput p5, p0, Lio/github/lazyimmortal/sesame/model/task/antForest/AntForestV2$MonopolyCreatureCandidate;->energy:I

    return-void
.end method
