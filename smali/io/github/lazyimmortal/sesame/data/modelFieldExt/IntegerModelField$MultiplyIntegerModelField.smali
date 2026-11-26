.class public Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField$MultiplyIntegerModelField;
.super Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;
.source "IntegerModelField.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MultiplyIntegerModelField"
.end annotation


# instance fields
.field private final multiple:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 6

    .line 92
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int p3, p3, v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 93
    iput-object p6, p0, Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField$MultiplyIntegerModelField;->multiple:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public getConfigValue()Ljava/lang/String;
    .locals 2

    .line 119
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField$MultiplyIntegerModelField;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField$MultiplyIntegerModelField;->multiple:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    div-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMultiple()Ljava/lang/Integer;
    .locals 1

    .line 89
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField$MultiplyIntegerModelField;->multiple:Ljava/lang/Integer;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 98
    const-string v0, "MULTIPLY_INTEGER"

    return-object v0
.end method

.method public setConfigValue(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    .line 104
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField$MultiplyIntegerModelField;->reset()V

    return-void

    .line 107
    :cond_0
    invoke-super {p0, p1}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;->setConfigValue(Ljava/lang/String;)V

    .line 109
    :try_start_0
    iget-object p1, p0, Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField$MultiplyIntegerModelField;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField$MultiplyIntegerModelField;->multiple:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int p1, p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField$MultiplyIntegerModelField;->value:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 112
    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/Throwable;)V

    .line 114
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField$MultiplyIntegerModelField;->reset()V

    return-void
.end method
