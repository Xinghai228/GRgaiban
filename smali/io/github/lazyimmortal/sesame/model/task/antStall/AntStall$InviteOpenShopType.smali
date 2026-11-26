.class public interface abstract Lio/github/lazyimmortal/sesame/model/task/antStall/AntStall$InviteOpenShopType;
.super Ljava/lang/Object;
.source "AntStall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/lazyimmortal/sesame/model/task/antStall/AntStall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "InviteOpenShopType"
.end annotation


# static fields
.field public static final INVITE:I = 0x1

.field public static final NONE:I = 0x0

.field public static final NOT_INVITE:I = 0x2

.field public static final nickNames:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1398
    const-string v0, "\u9080\u8bf7\u5df2\u9009\u597d\u53cb"

    const-string v1, "\u9080\u8bf7\u672a\u9009\u597d\u53cb"

    const-string v2, "\u4e0d\u9080\u8bf7\u6446\u644a"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/github/lazyimmortal/sesame/model/task/antStall/AntStall$InviteOpenShopType;->nickNames:[Ljava/lang/String;

    return-void
.end method
