.class Lio/github/lazyimmortal/sesame/model/task/antStall/AntStall$Seat;
.super Ljava/lang/Object;
.source "AntStall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/lazyimmortal/sesame/model/task/antStall/AntStall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Seat"
.end annotation


# instance fields
.field public hot:I

.field public userId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/model/task/antStall/AntStall$Seat;->userId:Ljava/lang/String;

    .line 41
    iput p2, p0, Lio/github/lazyimmortal/sesame/model/task/antStall/AntStall$Seat;->hot:I

    return-void
.end method
