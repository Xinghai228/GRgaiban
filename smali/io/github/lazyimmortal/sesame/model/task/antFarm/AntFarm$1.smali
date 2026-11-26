.class Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$1;
.super Ljava/lang/Object;
.source "AntFarm.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;->IPexchangeBenefit(Ljava/lang/String;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;


# direct methods
.method constructor <init>(Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;)V
    .locals 0

    .line 3500
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$1;->this$0:Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 3500
    check-cast p1, Lorg/json/JSONObject;

    check-cast p2, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lio/github/lazyimmortal/sesame/model/task/antFarm/AntFarm$1;->compare(Lorg/json/JSONObject;Lorg/json/JSONObject;)I

    move-result p1

    return p1
.end method

.method public compare(Lorg/json/JSONObject;Lorg/json/JSONObject;)I
    .locals 2

    .line 3503
    const-string v0, "_cent"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p2

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    return p1
.end method
