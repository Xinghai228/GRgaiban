.class public interface abstract Lio/github/lazyimmortal/sesame/model/task/antSports/AntSports$WalkPathTheme;
.super Ljava/lang/Object;
.source "AntSports.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/lazyimmortal/sesame/model/task/antSports/AntSports;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WalkPathTheme"
.end annotation


# static fields
.field public static final DA_MEI_ZHONG_GUO:I = 0x0

.field public static final DENG_DING_ZHI_MA_SHAN:I = 0x2

.field public static final GONG_YI_YI_XIAO_BU:I = 0x1

.field public static final LONG_NIAN_QI_FU:I = 0x4

.field public static final SHOU_HU_TI_YU_MENG:I = 0x5

.field public static final WEI_C_DA_TIAO_ZHAN:I = 0x3

.field public static final nickNames:[Ljava/lang/String;

.field public static final walkPathThemeIds:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 3014
    const-string v4, "\u9f99\u5e74\u7948\u798f"

    const-string v5, "\u5b88\u62a4\u4f53\u80b2\u68a6"

    const-string v0, "\u5927\u7f8e\u4e2d\u56fd"

    const-string v1, "\u516c\u76ca\u4e00\u5c0f\u6b65"

    const-string v2, "\u767b\u9876\u829d\u9ebb\u5c71"

    const-string v3, "\u7ef4C\u5927\u6311\u6218"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/github/lazyimmortal/sesame/model/task/antSports/AntSports$WalkPathTheme;->nickNames:[Ljava/lang/String;

    .line 3015
    const-string v5, "WF202312050200"

    const-string v6, "V202409061650"

    const-string v1, "M202308082226"

    const-string v2, "M202401042147"

    const-string v3, "V202405271625"

    const-string v4, "202404221422"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/github/lazyimmortal/sesame/model/task/antSports/AntSports$WalkPathTheme;->walkPathThemeIds:[Ljava/lang/String;

    return-void
.end method
