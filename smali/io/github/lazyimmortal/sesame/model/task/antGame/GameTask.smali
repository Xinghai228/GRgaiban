.class public final enum Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask;
.super Ljava/lang/Enum;
.source "GameTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask$SdkType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask;

.field public static final enum Farm_ddply:Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask;

.field public static final enum Forest_sljyd:Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask;

.field public static final enum Forest_slxcc:Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask;

.field public static final enum GoldenBean_ddply:Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask;

.field public static final enum GoldenBean_ncscc:Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask;

.field public static final enum GoldenBean_sljyd:Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask;

.field public static final enum GoldenBean_slxcc:Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask;

.field public static final enum Orchard_ncscc:Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask;


# instance fields
.field private final action:Ljava/lang/String;

.field private final appId:Ljava/lang/String;

.field private cachedToken:Ljava/lang/String;

.field private final channel:Ljava/lang/String;

.field private final gid:Ljava/lang/String;

.field private final requestsPerEgg:I

.field private final sdkType:Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask$SdkType;

.field private final title:Ljava/lang/String;

.field private final version:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask;
    .locals 3

    const/16 v0, 0x8

    .line 26
    new-array v0, v0, [Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask;

    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask;->Orchard_ncscc:Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask;->Farm_ddply:Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask;->Forest_slxcc:Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask;->Forest_sljyd:Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask;->GoldenBean_ncscc:Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask;->GoldenBean_ddply:Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask;->GoldenBean_slxcc:Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask;->GoldenBean_sljyd:Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 23

    .line 28
    new-instance v11, Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask;

    const/4 v9, 0x2

    sget-object v10, Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask$SdkType;->GAMESAPI2:Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask$SdkType;

    const-string v1, "Orchard_ncscc"

    const/4 v2, 0x0

    const-string v3, "\u519c\u573a\u4e0a\u8f66\u8f66"

    const-string v4, "2060170000356601"

    const-string v5, "zfb_ncscc"

    const-string v6, "ncscc_game_kaiche_every_10"

    const-string v7, "nongchangleyuan"

    const-string v8, "1.0.2"

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILio/github/lazyimmortal/sesame/model/task/antGame/GameTask$SdkType;)V

    sput-object v11, Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask;->Orchard_ncscc:Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask;

    .line 29
    new-instance v0, Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask;

    const/16 v21, 0x2

    sget-object v22, Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask$SdkType;->GAMESAPI2:Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask$SdkType;

    const-string v13, "Farm_ddply"

    const/4 v14, 0x1

    const-string v15, "\u5bf9\u5bf9\u78b0\u4e50\u56ed"

    const-string v16, "2021004149679303"

    const-string v17, "zfb_ddply"

    const-string v18, "ddply_game_xiaochu_every_5"

    const-string v19, "zhuangyuan"

    const-string v20, "1.0.14"

    move-object v12, v0

    invoke-direct/range {v12 .. v22}, Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILio/github/lazyimmortal/sesame/model/task/antGame/GameTask$SdkType;)V

    sput-object v0, Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask;->Farm_ddply:Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask;

    .line 30
    new-instance v0, Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask;

    const/4 v10, 0x3

    sget-object v11, Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask$SdkType;->GAMESAPI2:Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask$SdkType;

    const-string v2, "Forest_slxcc"

    const/4 v3, 0x2

    const-string v4, "\u68ee\u6797\u5c0f\u8f66\u8f66"

    const-string v5, "2060170000363691"

    const-string v6, "zfb_slxcc"

    const-string v7, "slxcc_game_kaiche_every_10"

    const-string v8, "lianyun_senlin_leyuan"

    const-string v9, "1.0.1"

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILio/github/lazyimmortal/sesame/model/task/antGame/GameTask$SdkType;)V

    sput-object v0, Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask;->Forest_slxcc:Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask;

    .line 31
    new-instance v0, Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask;

    const/16 v21, 0x3

    sget-object v22, Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask$SdkType;->GAMESAPI2:Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask$SdkType;

    const-string v13, "Forest_sljyd"

    const/4 v14, 0x3

    const-string v15, "\u68ee\u6797\u6551\u63f4\u961f(\u80fd\u91cf\u96e8)"

    const-string v16, "2021005113684028"

    const-string v17, "zfb_sljydx"

    const-string v18, "sljyd_game_xiaochu_every_10"

    const-string v19, "lianyun_senlin_leyuan"

    const-string v20, "1.0.1"

    move-object v12, v0

    invoke-direct/range {v12 .. v22}, Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILio/github/lazyimmortal/sesame/model/task/antGame/GameTask$SdkType;)V

    sput-object v0, Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask;->Forest_sljyd:Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask;

    .line 33
    new-instance v0, Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask;

    const/4 v10, 0x2

    sget-object v11, Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask$SdkType;->GAMESAPI2:Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask$SdkType;

    const-string v2, "GoldenBean_ncscc"

    const/4 v3, 0x4

    const-string v4, "\u519c\u573a\u4e0a\u8f66\u8f66"

    const-string v5, "2060170000356601"

    const-string v6, "zfb_ncscc"

    const-string v7, "ncscc_game_kaiche_every_10"

    const-string v8, "goldenbean"

    const-string v9, "1.0.2"

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILio/github/lazyimmortal/sesame/model/task/antGame/GameTask$SdkType;)V

    sput-object v0, Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask;->GoldenBean_ncscc:Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask;

    .line 34
    new-instance v0, Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask;

    const/16 v21, 0x4

    sget-object v22, Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask$SdkType;->GAMESAPI2:Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask$SdkType;

    const-string v13, "GoldenBean_ddply"

    const/4 v14, 0x5

    const-string v15, "\u5bf9\u5bf9\u78b0\u4e50\u56ed"

    const-string v16, "2021004149679303"

    const-string v17, "zfb_ddply"

    const-string v18, "ddply_game_xiaochu_every_5"

    const-string v19, "goldenbean"

    const-string v20, "1.0.14"

    move-object v12, v0

    invoke-direct/range {v12 .. v22}, Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILio/github/lazyimmortal/sesame/model/task/antGame/GameTask$SdkType;)V

    sput-object v0, Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask;->GoldenBean_ddply:Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask;

    .line 35
    new-instance v0, Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask;

    sget-object v11, Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask$SdkType;->GAMESAPI2:Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask$SdkType;

    const-string v2, "GoldenBean_slxcc"

    const/4 v3, 0x6

    const-string v4, "\u68ee\u6797\u5c0f\u8f66\u8f66"

    const-string v5, "2060170000363691"

    const-string v6, "zfb_slxcc"

    const-string v7, "slxcc_game_kaiche_every_10"

    const-string v8, "goldenbean"

    const-string v9, "1.0.1"

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILio/github/lazyimmortal/sesame/model/task/antGame/GameTask$SdkType;)V

    sput-object v0, Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask;->GoldenBean_slxcc:Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask;

    .line 36
    new-instance v0, Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask;

    const/16 v21, 0x3

    sget-object v22, Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask$SdkType;->GAMESAPI2:Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask$SdkType;

    const-string v13, "GoldenBean_sljyd"

    const/4 v14, 0x7

    const-string v15, "\u68ee\u6797\u6551\u63f4\u961f"

    const-string v16, "2021005113684028"

    const-string v17, "zfb_sljydx"

    const-string v18, "sljyd_game_xiaochu_every_10"

    const-string v19, "goldenbean"

    const-string v20, "1.0.1"

    move-object v12, v0

    invoke-direct/range {v12 .. v22}, Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILio/github/lazyimmortal/sesame/model/task/antGame/GameTask$SdkType;)V

    sput-object v0, Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask;->GoldenBean_sljyd:Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask;

    .line 26
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask;->$values()[Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask;

    move-result-object v0

    sput-object v0, Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask;->$VALUES:[Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILio/github/lazyimmortal/sesame/model/task/antGame/GameTask$SdkType;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask$SdkType;",
            ")V"
        }
    .end annotation

    .line 58
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 59
    iput-object p3, p0, Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask;->title:Ljava/lang/String;

    .line 60
    iput-object p4, p0, Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask;->appId:Ljava/lang/String;

    .line 61
    iput-object p5, p0, Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask;->gid:Ljava/lang/String;

    .line 62
    iput-object p6, p0, Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask;->action:Ljava/lang/String;

    .line 63
    iput-object p7, p0, Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask;->channel:Ljava/lang/String;

    .line 64
    iput-object p8, p0, Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask;->version:Ljava/lang/String;

    .line 65
    iput p9, p0, Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask;->requestsPerEgg:I

    .line 66
    iput-object p10, p0, Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask;->sdkType:Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask$SdkType;

    return-void
.end method

.method private executeSingleReport(Ljava/lang/String;II)Z
    .locals 10

    .line 233
    const-string v0, "/"

    const-string v1, "\ud83d\udea8 \u7b2c "

    .line 0
    const-string v2, "https://"

    const/4 v3, 0x0

    .line 233
    :try_start_0
    iget-object v4, p0, Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask;->appId:Ljava/lang/String;

    iget-object v5, p0, Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask;->version:Ljava/lang/String;

    invoke-static {v4, v5}, Lio/github/lazyimmortal/sesame/hook/AlipayMiniMarkHelper;->getAlipayMiniMark(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 234
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Ljava/util/Random;

    invoke-direct {v6}, Ljava/util/Random;-><init>()V

    const/16 v7, 0x5a

    invoke-virtual {v6, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    add-int/lit8 v6, v6, 0xa

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 237
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 238
    const-string v7, "v"

    iget-object v8, p0, Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask;->version:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 239
    const-string v7, "version"

    iget-object v8, p0, Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask;->version:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 240
    const-string v7, "reqId"

    invoke-virtual {v6, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 241
    const-string v5, "gid"

    iget-object v7, p0, Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask;->gid:Ljava/lang/String;

    invoke-virtual {v6, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 242
    const-string v5, "action_code"

    iget-object v7, p0, Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask;->action:Ljava/lang/String;

    invoke-virtual {v6, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 243
    const-string v5, "action_finish_channel"

    iget-object v7, p0, Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask;->channel:Ljava/lang/String;

    invoke-virtual {v6, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 244
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    .line 249
    new-instance v6, Ljava/net/URL;

    const-string v7, "https://gamesapi2.aslk2018.com/v2/zfb/taskReport"

    invoke-direct {v6, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 250
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    check-cast v6, Ljava/net/HttpURLConnection;

    .line 251
    const-string v7, "POST"

    invoke-virtual {v6, v7}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v7, 0x1

    .line 252
    invoke-virtual {v6, v7}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 253
    const-string v8, "authorization"

    iget-object v9, p0, Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask;->cachedToken:Ljava/lang/String;

    invoke-virtual {v6, v8, v9}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    const-string v8, "alipayMiniMark"

    invoke-virtual {v6, v8, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    const-string v4, "Content-Type"

    const-string v8, "application/json"

    invoke-virtual {v6, v4, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    const-string v4, "User-Agent"

    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask;->getDynamicUA()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v4, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    const-string v4, "x-release-type"

    const-string v8, "ONLINE"

    invoke-virtual {v6, v4, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    const-string v4, "referer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask;->appId:Ljava/lang/String;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".hybrid.alipay-eco.com/"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask;->appId:Ljava/lang/String;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask;->version:Ljava/lang/String;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/index.html"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v4, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    new-instance v2, Ljava/io/OutputStreamWriter;

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v4, v8}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    :try_start_1
    invoke-virtual {v2, v5}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 263
    :try_start_2
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V

    .line 266
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 267
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    const/16 v8, 0xc8

    if-lt v2, v8, :cond_0

    const/16 v8, 0x12b

    if-gt v2, v8, :cond_0

    .line 268
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    goto :goto_0

    :cond_0
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v8

    :goto_0
    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v5, v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 271
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 273
    :goto_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 274
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 276
    :cond_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 277
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 282
    new-instance v4, Lorg/json/JSONObject;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 283
    const-string v6, "code"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v7, :cond_3

    .line 284
    iget v2, p0, Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask;->requestsPerEgg:I

    rem-int v2, p2, v2

    if-nez v2, :cond_2

    .line 285
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u6e38\u620f\u8fdb\u5ea6\ud83d\udcc8"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "["

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "](\u8fbe\u6210"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask;->requestsPerEgg:I

    div-int p1, p2, p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\u4e2a)"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/Log;->other(Ljava/lang/String;)V

    :cond_2
    return v7

    .line 289
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "\u26a0\ufe0f \u7b2c "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " \u6b21\u4e0a\u62a5\u4e1a\u52a1\u5931\u8d25 (HTTP "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "): "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/Log;->error(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return v3

    :catchall_0
    move-exception p1

    .line 261
    :try_start_3
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p3

    :try_start_4
    invoke-virtual {p1, p3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    .line 296
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " \u6b21\u8bf7\u6c42\u53d1\u751f\u5f02\u5e38:"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/Log;->error(Ljava/lang/String;)V

    return v3

    :catch_1
    move-exception p1

    .line 293
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " \u6b21\u8bf7\u6c42\u53d1\u751f\u7f51\u7edc\u5d29\u6e83:"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/Log;->error(Ljava/lang/String;)V

    return v3
.end method

.method private getDynamicUA()Ljava/lang/String;
    .locals 3

    .line 306
    const-string v0, "http.agent"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 307
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 308
    :cond_0
    const-string v0, "Mozilla/5.0 (Linux; Android 11)"

    .line 310
    :cond_1
    invoke-static {}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->getAlipayVersion()Lio/github/lazyimmortal/sesame/entity/AlipayVersion;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 311
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " NebulaSDK/1.8.100112 Nebula AliApp(AP/"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") AlipayClient/"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private login()Ljava/lang/String;
    .locals 1

    .line 85
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask;->loginGamesApi2()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private loginGamesApi2()Ljava/lang/String;
    .locals 8

    .line 93
    const-string v0, "code"

    :try_start_0
    iget-object v1, p0, Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask;->appId:Ljava/lang/String;

    invoke-static {v1}, Lio/github/lazyimmortal/sesame/hook/AuthCodeHelper;->getAuthCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 94
    iget-object v2, p0, Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask;->appId:Ljava/lang/String;

    iget-object v3, p0, Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask;->version:Ljava/lang/String;

    invoke-static {v2, v3}, Lio/github/lazyimmortal/sesame/hook/AlipayMiniMarkHelper;->getAlipayMiniMark(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 95
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    const/16 v5, 0x15e

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 97
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 98
    const-string v6, "v"

    iget-object v7, p0, Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask;->version:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 99
    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 100
    const-string v1, "pf"

    const-string v6, "zfb"

    invoke-virtual {v5, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 101
    const-string v1, "reqId"

    invoke-virtual {v5, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 102
    const-string v1, "gid"

    iget-object v3, p0, Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask;->gid:Ljava/lang/String;

    invoke-virtual {v5, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 103
    const-string v1, "version"

    iget-object v3, p0, Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask;->version:Ljava/lang/String;

    invoke-virtual {v5, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 104
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 109
    new-instance v3, Ljava/net/URL;

    const-string v5, "https://gamesapi2.aslk2018.com/v2/game/login"

    invoke-direct {v3, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 110
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;

    .line 111
    const-string v5, "POST"

    invoke-virtual {v3, v5}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 113
    const-string v5, "Content-Type"

    const-string v6, "application/json"

    invoke-virtual {v3, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const-string v5, "alipayMiniMark"

    invoke-virtual {v3, v5, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const-string v2, "User-Agent"

    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask;->getDynamicUA()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v2, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const-string v2, "x-release-type"

    const-string v5, "ONLINE"

    invoke-virtual {v3, v2, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    new-instance v2, Ljava/io/OutputStreamWriter;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v5, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :try_start_1
    invoke-virtual {v2, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 121
    :try_start_2
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V

    .line 124
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 125
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    const/16 v6, 0xc8

    if-lt v1, v6, :cond_0

    const/16 v6, 0x12b

    if-gt v1, v6, :cond_0

    .line 126
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v6

    :goto_0
    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v5, v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v2, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 129
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    :goto_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 132
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 134
    :cond_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 135
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 140
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 141
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v4, :cond_2

    .line 142
    const-string v0, "data"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 144
    const-string v1, "token"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask;->cachedToken:Ljava/lang/String;

    .line 145
    const-string v0, "\u767b\u5f55\u6210\u529f\u2705Token\u5df2\u83b7\u53d6"

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask;->cachedToken:Ljava/lang/String;

    return-object v0

    .line 149
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u767b\u5f55\u63a5\u53e3\u274c\u62a5\u9519(Code"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "):"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->error(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catchall_0
    move-exception v0

    .line 119
    :try_start_3
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v1

    :try_start_4
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    .line 152
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u767b\u5f55\u8fc7\u7a0b\ud83d\udea8\u629b\u51fa\u5f02\u5e38:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->error(Ljava/lang/String;)V

    :cond_3
    :goto_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask;
    .locals 1

    .line 26
    const-class v0, Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask;

    return-object p0
.end method

.method public static values()[Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask;
    .locals 1

    .line 26
    sget-object v0, Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask;->$VALUES:[Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask;

    invoke-virtual {v0}, [Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask;

    return-object v0
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask;->action:Ljava/lang/String;

    return-object v0
.end method

.method public getSdkType()Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask$SdkType;
    .locals 1

    .line 70
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask;->sdkType:Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask$SdkType;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask;->title:Ljava/lang/String;

    return-object v0
.end method

.method synthetic lambda$report$0$io-github-lazyimmortal-sesame-model-task-antGame-GameTask(Ljava/lang/String;II)V
    .locals 2

    .line 164
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask;->login()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask;->cachedToken:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 165
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 170
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u5f00\u59cb\u6267\u884c\ud83d\ude80"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u6e38\u620f\u4efb\u52a1:\u76ee\u6807"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "\u4e2a\u86cb\uff0c\u9700\u8bf7\u6c42"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "\u6b21"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    const/4 p2, 0x1

    :goto_0
    if-gt p2, p3, :cond_3

    .line 172
    invoke-direct {p0, p1, p2, p3}, Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask;->executeSingleReport(Ljava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    if-ge p2, p3, :cond_2

    .line 178
    :try_start_0
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v1, 0x7d1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 180
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_2

    :cond_2
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 185
    :cond_3
    :goto_2
    const-string p1, "\u4efb\u52a1\u6d41\u7a0b\ud83c\udfc1\u8fd0\u884c\u7ed3\u675f"

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    return-void

    .line 166
    :cond_4
    :goto_3
    const-string p1, "\u65e0\u6cd5\u83b7\u53d6\u26a0\ufe0f\u6709\u6548\u7684Token\uff0c\u653e\u5f03\u4e0a\u62a5\u4efb\u52a1"

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/Log;->error(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$reportExact$1$io-github-lazyimmortal-sesame-model-task-antGame-GameTask(Ljava/lang/String;I)V
    .locals 3

    .line 201
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask;->login()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask;->cachedToken:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 202
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 207
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u5f00\u59cb\u6267\u884c\ud83d\ude80"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u6e38\u620f\u4efb\u52a1:\u7cbe\u786e\u63d0\u4ea4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\u6b21"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_0
    if-gt v0, p2, :cond_3

    .line 209
    invoke-direct {p0, p1, v0, p2}, Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask;->executeSingleReport(Ljava/lang/String;II)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    if-ge v0, p2, :cond_2

    .line 214
    :try_start_0
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const/16 v2, 0x7d1

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 216
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_2

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 221
    :cond_3
    :goto_2
    const-string p1, "\u4efb\u52a1\u6d41\u7a0b\ud83c\udfc1\u8fd0\u884c\u7ed3\u675f"

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    return-void

    .line 203
    :cond_4
    :goto_3
    const-string p1, "\u65e0\u6cd5\u83b7\u53d6\u26a0\ufe0f\u6709\u6548\u7684Token\uff0c\u653e\u5f03\u4e0a\u62a5\u4efb\u52a1"

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/Log;->error(Ljava/lang/String;)V

    return-void
.end method

.method public report(Ljava/lang/String;I)V
    .locals 3

    .line 162
    iget v0, p0, Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask;->requestsPerEgg:I

    add-int/lit8 v0, v0, 0x1

    mul-int v0, v0, p2

    .line 163
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1, p2, v0}, Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask$$ExternalSyntheticLambda1;-><init>(Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask;Ljava/lang/String;II)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 186
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public reportExact(Ljava/lang/String;I)V
    .locals 2

    if-gtz p2, :cond_0

    return-void

    .line 200
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask$$ExternalSyntheticLambda0;-><init>(Lio/github/lazyimmortal/sesame/model/task/antGame/GameTask;Ljava/lang/String;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 222
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
