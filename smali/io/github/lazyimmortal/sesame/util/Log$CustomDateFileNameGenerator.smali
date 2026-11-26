.class public Lio/github/lazyimmortal/sesame/util/Log$CustomDateFileNameGenerator;
.super Ljava/lang/Object;
.source "Log.java"

# interfaces
.implements Lcom/elvishew/xlog/printer/file/naming/FileNameGenerator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/lazyimmortal/sesame/util/Log;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomDateFileNameGenerator"
.end annotation


# instance fields
.field mLocalDateFormat:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/text/SimpleDateFormat;",
            ">;"
        }
    .end annotation
.end field

.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 289
    new-instance v0, Lio/github/lazyimmortal/sesame/util/Log$CustomDateFileNameGenerator$1;

    invoke-direct {v0, p0}, Lio/github/lazyimmortal/sesame/util/Log$CustomDateFileNameGenerator$1;-><init>(Lio/github/lazyimmortal/sesame/util/Log$CustomDateFileNameGenerator;)V

    iput-object v0, p0, Lio/github/lazyimmortal/sesame/util/Log$CustomDateFileNameGenerator;->mLocalDateFormat:Ljava/lang/ThreadLocal;

    .line 301
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/util/Log$CustomDateFileNameGenerator;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public generateFileName(IJ)Ljava/lang/String;
    .locals 2

    .line 314
    iget-object p1, p0, Lio/github/lazyimmortal/sesame/util/Log$CustomDateFileNameGenerator;->mLocalDateFormat:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/text/SimpleDateFormat;

    if-nez p1, :cond_0

    .line 316
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string v0, "yyyy-MM-dd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 318
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lio/github/lazyimmortal/sesame/util/Log$CustomDateFileNameGenerator;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p2, p3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p1, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".log"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isFileNameChangeable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
