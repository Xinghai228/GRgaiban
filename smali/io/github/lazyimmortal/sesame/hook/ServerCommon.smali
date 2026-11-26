.class public Lio/github/lazyimmortal/sesame/hook/ServerCommon;
.super Ljava/lang/Object;
.source "ServerCommon.java"


# static fields
.field public static final MIME_JSON:Ljava/lang/String; = "application/json"

.field public static final MIME_PLAINTEXT:Ljava/lang/String; = "text/plain"

.field public static final jsonMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>()V

    sput-object v0, Lio/github/lazyimmortal/sesame/hook/ServerCommon;->jsonMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Utility class cannot be instantiated"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
