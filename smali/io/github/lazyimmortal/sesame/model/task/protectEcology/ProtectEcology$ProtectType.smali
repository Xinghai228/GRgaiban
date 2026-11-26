.class public interface abstract Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology$ProtectType;
.super Ljava/lang/Object;
.source "ProtectEcology.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ProtectType"
.end annotation


# static fields
.field public static final COLLECT:I = 0x1

.field public static final NONE:I = 0x0

.field public static final SELECT:I = 0x2

.field public static final nickNames:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 910
    const-string v0, "\u96c6\u90ae\u6a21\u5f0f"

    const-string v1, "\u5217\u8868\u6a21\u5f0f"

    const-string v2, "\u4e0d\u4fdd\u62a4"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/github/lazyimmortal/sesame/model/task/protectEcology/ProtectEcology$ProtectType;->nickNames:[Ljava/lang/String;

    return-void
.end method
