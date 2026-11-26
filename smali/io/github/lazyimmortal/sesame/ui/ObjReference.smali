.class public Lio/github/lazyimmortal/sesame/ui/ObjReference;
.super Ljava/lang/Object;
.source "ObjReference.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private obj:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/ui/ObjReference;->obj:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 5
    instance-of p1, p1, Lio/github/lazyimmortal/sesame/ui/ObjReference;

    return p1
.end method

.method public del()V
    .locals 1

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lio/github/lazyimmortal/sesame/ui/ObjReference;->obj:Ljava/lang/Object;

    return-void
.end method

.method public delIfEquals(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/ui/ObjReference;->obj:Ljava/lang/Object;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    .line 46
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/ui/ObjReference;->obj:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lio/github/lazyimmortal/sesame/ui/ObjReference;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lio/github/lazyimmortal/sesame/ui/ObjReference;

    invoke-virtual {p1, p0}, Lio/github/lazyimmortal/sesame/ui/ObjReference;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/ui/ObjReference;->getObj()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lio/github/lazyimmortal/sesame/ui/ObjReference;->getObj()Ljava/lang/Object;

    move-result-object p1

    if-nez v1, :cond_3

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_3
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    :goto_0
    return v2

    :cond_4
    return v0
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/ui/ObjReference;->obj:Ljava/lang/Object;

    return-object v0
.end method

.method public getObj()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/ui/ObjReference;->obj:Ljava/lang/Object;

    return-object v0
.end method

.method public has()Ljava/lang/Boolean;
    .locals 1

    .line 18
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/ui/ObjReference;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 5
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/ui/ObjReference;->getObj()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v0, 0x2b

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    const/16 v1, 0x3b

    add-int/2addr v1, v0

    return v1
.end method

.method public set(Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/ui/ObjReference;->obj:Ljava/lang/Object;

    const/4 v1, 0x1

    .line 27
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    if-ne v0, p1, :cond_0

    return-object v1

    :cond_0
    if-eqz v0, :cond_1

    const/4 p1, 0x0

    .line 30
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 32
    :cond_1
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/ui/ObjReference;->obj:Ljava/lang/Object;

    return-object v1
.end method

.method public setForce(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 37
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/ui/ObjReference;->obj:Ljava/lang/Object;

    return-void
.end method

.method public setObj(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 5
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/ui/ObjReference;->obj:Ljava/lang/Object;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ObjReference(obj="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/ui/ObjReference;->getObj()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
