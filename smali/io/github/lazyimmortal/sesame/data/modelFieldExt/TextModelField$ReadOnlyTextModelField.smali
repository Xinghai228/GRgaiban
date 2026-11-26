.class public Lio/github/lazyimmortal/sesame/data/modelFieldExt/TextModelField$ReadOnlyTextModelField;
.super Lio/github/lazyimmortal/sesame/data/modelFieldExt/TextModelField;
.source "TextModelField.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/lazyimmortal/sesame/data/modelFieldExt/TextModelField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReadOnlyTextModelField"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2, p3}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/TextModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 1

    .line 66
    const-string v0, "READ_TEXT"

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .line 58
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/TextModelField$ReadOnlyTextModelField;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public setConfigValue(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
