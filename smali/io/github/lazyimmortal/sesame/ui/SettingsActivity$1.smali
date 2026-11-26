.class Lio/github/lazyimmortal/sesame/ui/SettingsActivity$1;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/widget/TabHost$TabContentFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/github/lazyimmortal/sesame/ui/SettingsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/github/lazyimmortal/sesame/ui/SettingsActivity;

.field final synthetic val$modelFields:Lio/github/lazyimmortal/sesame/data/ModelFields;


# direct methods
.method constructor <init>(Lio/github/lazyimmortal/sesame/ui/SettingsActivity;Lio/github/lazyimmortal/sesame/data/ModelFields;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 114
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/ui/SettingsActivity$1;->this$0:Lio/github/lazyimmortal/sesame/ui/SettingsActivity;

    iput-object p2, p0, Lio/github/lazyimmortal/sesame/ui/SettingsActivity$1;->val$modelFields:Lio/github/lazyimmortal/sesame/data/ModelFields;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createTabContent(Ljava/lang/String;)Landroid/view/View;
    .locals 3

    .line 117
    new-instance p1, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lio/github/lazyimmortal/sesame/ui/SettingsActivity$1;->this$0:Lio/github/lazyimmortal/sesame/ui/SettingsActivity;

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/ui/SettingsActivity;->access$000(Lio/github/lazyimmortal/sesame/ui/SettingsActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 118
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    .line 119
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 120
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 121
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/ui/SettingsActivity$1;->val$modelFields:Lio/github/lazyimmortal/sesame/data/ModelFields;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/ModelFields;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/github/lazyimmortal/sesame/data/ModelField;

    .line 122
    iget-object v2, p0, Lio/github/lazyimmortal/sesame/ui/SettingsActivity$1;->this$0:Lio/github/lazyimmortal/sesame/ui/SettingsActivity;

    invoke-static {v2}, Lio/github/lazyimmortal/sesame/ui/SettingsActivity;->access$000(Lio/github/lazyimmortal/sesame/ui/SettingsActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/github/lazyimmortal/sesame/data/ModelField;->getView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 124
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    return-object p1
.end method
