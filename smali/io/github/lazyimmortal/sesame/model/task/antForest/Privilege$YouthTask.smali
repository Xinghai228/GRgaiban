.class public Lio/github/lazyimmortal/sesame/model/task/antForest/Privilege$YouthTask;
.super Ljava/lang/Object;
.source "Privilege.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/lazyimmortal/sesame/model/task/antForest/Privilege;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "YouthTask"
.end annotation


# instance fields
.field public final name:Ljava/lang/String;

.field public final queryParam:Ljava/lang/String;

.field public final receiveParam:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 231
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/model/task/antForest/Privilege$YouthTask;->queryParam:Ljava/lang/String;

    .line 232
    iput-object p2, p0, Lio/github/lazyimmortal/sesame/model/task/antForest/Privilege$YouthTask;->receiveParam:Ljava/lang/String;

    .line 233
    iput-object p3, p0, Lio/github/lazyimmortal/sesame/model/task/antForest/Privilege$YouthTask;->name:Ljava/lang/String;

    return-void
.end method
