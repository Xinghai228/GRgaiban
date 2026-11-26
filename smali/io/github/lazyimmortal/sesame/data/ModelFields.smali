.class public final Lio/github/lazyimmortal/sesame/data/ModelFields;
.super Ljava/util/LinkedHashMap;
.source "ModelFields.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap<",
        "Ljava/lang/String;",
        "Lio/github/lazyimmortal/sesame/data/ModelField<",
        "*>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    return-void
.end method


# virtual methods
.method public addField(Lio/github/lazyimmortal/sesame/data/ModelField;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/github/lazyimmortal/sesame/data/ModelField<",
            "*>;)V"
        }
    .end annotation

    .line 11
    invoke-virtual {p1}, Lio/github/lazyimmortal/sesame/data/ModelField;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lio/github/lazyimmortal/sesame/data/ModelFields;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
