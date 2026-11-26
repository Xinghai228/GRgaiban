.class public Lio/github/lazyimmortal/sesame/ui/StringDialog;
.super Ljava/lang/Object;
.source "StringDialog.java"


# static fields
.field private static modelField:Lio/github/lazyimmortal/sesame/data/ModelField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/github/lazyimmortal/sesame/data/ModelField<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lio/github/lazyimmortal/sesame/data/ModelField;
    .locals 1

    .line 15
    sget-object v0, Lio/github/lazyimmortal/sesame/ui/StringDialog;->modelField:Lio/github/lazyimmortal/sesame/data/ModelField;

    return-object v0
.end method

.method private static getEditDialog(Landroid/content/Context;)Landroidx/appcompat/app/AlertDialog;
    .locals 4

    .line 36
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 37
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "title"

    .line 38
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    .line 39
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lio/github/lazyimmortal/sesame/R$string;->ok:I

    .line 41
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lio/github/lazyimmortal/sesame/ui/StringDialog$1;

    invoke-direct {v3, v0}, Lio/github/lazyimmortal/sesame/ui/StringDialog$1;-><init>(Landroid/widget/EditText;)V

    .line 68
    invoke-virtual {v3, p0}, Lio/github/lazyimmortal/sesame/ui/StringDialog$1;->setData(Landroid/content/Context;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object p0

    .line 40
    invoke-virtual {v1, v2, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 69
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    .line 70
    sget-object v1, Lio/github/lazyimmortal/sesame/ui/StringDialog;->modelField:Lio/github/lazyimmortal/sesame/data/ModelField;

    invoke-virtual {v1}, Lio/github/lazyimmortal/sesame/data/ModelField;->getConfigValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method private static getReadDialog(Landroid/content/Context;)Landroidx/appcompat/app/AlertDialog;
    .locals 2

    .line 91
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 92
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    const v1, -0x777778

    .line 93
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 94
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string p0, "title"

    .line 95
    invoke-virtual {v1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 96
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 97
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    .line 98
    sget-object v1, Lio/github/lazyimmortal/sesame/ui/StringDialog;->modelField:Lio/github/lazyimmortal/sesame/data/ModelField;

    invoke-virtual {v1}, Lio/github/lazyimmortal/sesame/data/ModelField;->getConfigValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public static showEditDialog(Landroid/content/Context;Ljava/lang/CharSequence;Lio/github/lazyimmortal/sesame/data/ModelField;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/CharSequence;",
            "Lio/github/lazyimmortal/sesame/data/ModelField<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 20
    invoke-static {p0, p1, p2, v0}, Lio/github/lazyimmortal/sesame/ui/StringDialog;->showEditDialog(Landroid/content/Context;Ljava/lang/CharSequence;Lio/github/lazyimmortal/sesame/data/ModelField;Ljava/lang/String;)V

    return-void
.end method

.method public static showEditDialog(Landroid/content/Context;Ljava/lang/CharSequence;Lio/github/lazyimmortal/sesame/data/ModelField;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/CharSequence;",
            "Lio/github/lazyimmortal/sesame/data/ModelField<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 24
    sput-object p2, Lio/github/lazyimmortal/sesame/ui/StringDialog;->modelField:Lio/github/lazyimmortal/sesame/data/ModelField;

    .line 25
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/ui/StringDialog;->getEditDialog(Landroid/content/Context;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    if-eqz p3, :cond_0

    .line 27
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 28
    invoke-virtual {p0, p3}, Landroidx/appcompat/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 32
    :goto_0
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method public static showReadDialog(Landroid/content/Context;Ljava/lang/CharSequence;Lio/github/lazyimmortal/sesame/data/ModelField;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/CharSequence;",
            "Lio/github/lazyimmortal/sesame/data/ModelField<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 75
    invoke-static {p0, p1, p2, v0}, Lio/github/lazyimmortal/sesame/ui/StringDialog;->showReadDialog(Landroid/content/Context;Ljava/lang/CharSequence;Lio/github/lazyimmortal/sesame/data/ModelField;Ljava/lang/String;)V

    return-void
.end method

.method public static showReadDialog(Landroid/content/Context;Ljava/lang/CharSequence;Lio/github/lazyimmortal/sesame/data/ModelField;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/CharSequence;",
            "Lio/github/lazyimmortal/sesame/data/ModelField<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 79
    sput-object p2, Lio/github/lazyimmortal/sesame/ui/StringDialog;->modelField:Lio/github/lazyimmortal/sesame/data/ModelField;

    .line 80
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/ui/StringDialog;->getReadDialog(Landroid/content/Context;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    if-eqz p3, :cond_0

    .line 82
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 83
    invoke-virtual {p0, p3}, Landroidx/appcompat/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 85
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 87
    :goto_0
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method
