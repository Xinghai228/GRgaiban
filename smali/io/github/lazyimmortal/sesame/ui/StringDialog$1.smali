.class Lio/github/lazyimmortal/sesame/ui/StringDialog$1;
.super Ljava/lang/Object;
.source "StringDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/github/lazyimmortal/sesame/ui/StringDialog;->getEditDialog(Landroid/content/Context;)Landroidx/appcompat/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field final synthetic val$edt:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Landroid/widget/EditText;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 42
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/ui/StringDialog$1;->val$edt:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 53
    :try_start_0
    iget-object p1, p0, Lio/github/lazyimmortal/sesame/ui/StringDialog$1;->val$edt:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    .line 55
    invoke-static {}, Lio/github/lazyimmortal/sesame/ui/StringDialog;->access$000()Lio/github/lazyimmortal/sesame/data/ModelField;

    move-result-object p1

    invoke-virtual {p1, p2}, Lio/github/lazyimmortal/sesame/data/ModelField;->setConfigValue(Ljava/lang/String;)V

    return-void

    .line 58
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 59
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    invoke-static {}, Lio/github/lazyimmortal/sesame/ui/StringDialog;->access$000()Lio/github/lazyimmortal/sesame/data/ModelField;

    move-result-object p1

    invoke-virtual {p1, p2}, Lio/github/lazyimmortal/sesame/data/ModelField;->setConfigValue(Ljava/lang/String;)V

    return-void

    .line 63
    :cond_1
    invoke-static {}, Lio/github/lazyimmortal/sesame/ui/StringDialog;->access$000()Lio/github/lazyimmortal/sesame/data/ModelField;

    move-result-object p2

    invoke-virtual {p2, p1}, Lio/github/lazyimmortal/sesame/data/ModelField;->setConfigValue(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 65
    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public setData(Landroid/content/Context;)Landroid/content/DialogInterface$OnClickListener;
    .locals 0

    .line 46
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/ui/StringDialog$1;->context:Landroid/content/Context;

    return-object p0
.end method
