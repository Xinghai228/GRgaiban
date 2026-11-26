.class public Lio/github/lazyimmortal/sesame/ui/ExtensionsActivity;
.super Lio/github/lazyimmortal/sesame/ui/BaseActivity;
.source "ExtensionsActivity.java"


# instance fields
.field btnClearDishImage:Landroid/widget/Button;

.field btnDeveloperMode:Landroid/widget/Button;

.field btnFillWateredFriendList:Landroid/widget/Button;

.field btnGetNewTreeItems:Landroid/widget/Button;

.field btnGetTreeItems:Landroid/widget/Button;

.field btnGetUnlockTreeItems:Landroid/widget/Button;

.field btnGetWateredItems:Landroid/widget/Button;

.field btnGetWateringItems:Landroid/widget/Button;

.field btnQueryAreaTrees:Landroid/widget/Button;

.field btnSetCustomWalkPathId:Landroid/widget/Button;

.field btnSetCustomWalkPathIdQueue:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/ui/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lio/github/lazyimmortal/sesame/ui/ExtensionsActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2, p3}, Lio/github/lazyimmortal/sesame/ui/ExtensionsActivity;->sendItemsBroadcast(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onCreate$0(Landroid/content/Context;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 97
    invoke-static {}, Lio/github/lazyimmortal/sesame/data/TokenConfig;->clearDishImage()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 98
    const-string p1, "\u5149\u76d8\u884c\u52a8\u56fe\u7247\u6e05\u7a7a\u6210\u529f"

    invoke-static {p0, p1}, Lio/github/lazyimmortal/sesame/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 100
    :cond_0
    const-string p1, "\u5149\u76d8\u884c\u52a8\u56fe\u7247\u6e05\u7a7a\u5931\u8d25"

    invoke-static {p0, p1}, Lio/github/lazyimmortal/sesame/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method static synthetic lambda$onCreate$1(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 103
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private sendItemsBroadcast(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 157
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.eg.android.AlipayGphone.sesame.rpctest"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 158
    const-string v1, "type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 159
    const-string p1, "method"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    const-string p1, "data"

    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 161
    invoke-virtual {p0, v0}, Lio/github/lazyimmortal/sesame/ui/ExtensionsActivity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$onCreate$2$io-github-lazyimmortal-sesame-ui-ExtensionsActivity(Landroid/view/View;)V
    .locals 2

    .line 93
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v0, Lio/github/lazyimmortal/sesame/R$string;->clear_dish_image:I

    .line 94
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u786e\u8ba4\u6e05\u7a7a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    invoke-static {}, Lio/github/lazyimmortal/sesame/data/TokenConfig;->getDishImageCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\u7ec4\u5149\u76d8\u884c\u52a8\u56fe\u7247\uff1f"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lio/github/lazyimmortal/sesame/R$string;->ok:I

    new-instance v1, Lio/github/lazyimmortal/sesame/ui/ExtensionsActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lio/github/lazyimmortal/sesame/ui/ExtensionsActivity$$ExternalSyntheticLambda3;-><init>(Landroid/content/Context;)V

    .line 96
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lio/github/lazyimmortal/sesame/R$string;->cancel:I

    new-instance v1, Lio/github/lazyimmortal/sesame/ui/ExtensionsActivity$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lio/github/lazyimmortal/sesame/ui/ExtensionsActivity$$ExternalSyntheticLambda4;-><init>()V

    .line 103
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 104
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method synthetic lambda$onCreate$3$io-github-lazyimmortal-sesame-ui-ExtensionsActivity(Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 116
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 117
    const-string p2, "setCustomWalkPathIdList"

    const-string p3, "addCustomWalkPathId"

    invoke-direct {p0, p2, p3, p1}, Lio/github/lazyimmortal/sesame/ui/ExtensionsActivity;->sendItemsBroadcast(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$onCreate$4$io-github-lazyimmortal-sesame-ui-ExtensionsActivity(Landroid/view/View;)V
    .locals 3

    .line 109
    new-instance p1, Landroid/widget/EditText;

    invoke-direct {p1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 110
    sget v0, Lio/github/lazyimmortal/sesame/R$string;->msg_input_custom_walk_path_id:I

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setHint(I)V

    .line 112
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lio/github/lazyimmortal/sesame/R$string;->set_custom_walk_path_id_list:I

    .line 113
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 114
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lio/github/lazyimmortal/sesame/R$string;->btn_add_custom_walk_path_id:I

    new-instance v2, Lio/github/lazyimmortal/sesame/ui/ExtensionsActivity$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p1}, Lio/github/lazyimmortal/sesame/ui/ExtensionsActivity$$ExternalSyntheticLambda2;-><init>(Lio/github/lazyimmortal/sesame/ui/ExtensionsActivity;Landroid/widget/EditText;)V

    .line 115
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 118
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method synthetic lambda$onCreate$5$io-github-lazyimmortal-sesame-ui-ExtensionsActivity(Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 129
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 130
    const-string p2, "setCustomWalkPathIdQueue"

    const-string p3, "addCustomWalkPathIdQueue"

    invoke-direct {p0, p2, p3, p1}, Lio/github/lazyimmortal/sesame/ui/ExtensionsActivity;->sendItemsBroadcast(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$onCreate$6$io-github-lazyimmortal-sesame-ui-ExtensionsActivity(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 132
    const-string p1, "clearCustomWalkPathIdQueue"

    const/4 p2, 0x0

    const-string v0, "setCustomWalkPathIdQueue"

    invoke-direct {p0, v0, p1, p2}, Lio/github/lazyimmortal/sesame/ui/ExtensionsActivity;->sendItemsBroadcast(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$onCreate$7$io-github-lazyimmortal-sesame-ui-ExtensionsActivity(Landroid/view/View;)V
    .locals 3

    .line 122
    new-instance p1, Landroid/widget/EditText;

    invoke-direct {p1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 123
    sget v0, Lio/github/lazyimmortal/sesame/R$string;->msg_input_custom_walk_path_id:I

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setHint(I)V

    .line 125
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lio/github/lazyimmortal/sesame/R$string;->set_custom_walk_path_id_queue:I

    .line 126
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 127
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lio/github/lazyimmortal/sesame/R$string;->btn_add_custom_walk_path_id:I

    new-instance v2, Lio/github/lazyimmortal/sesame/ui/ExtensionsActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Lio/github/lazyimmortal/sesame/ui/ExtensionsActivity$$ExternalSyntheticLambda0;-><init>(Lio/github/lazyimmortal/sesame/ui/ExtensionsActivity;Landroid/widget/EditText;)V

    .line 128
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lio/github/lazyimmortal/sesame/R$string;->btn_clear_custom_walk_path_id_queue:I

    .line 131
    invoke-virtual {p0, v0}, Lio/github/lazyimmortal/sesame/ui/ExtensionsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lio/github/lazyimmortal/sesame/ui/ExtensionsActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lio/github/lazyimmortal/sesame/ui/ExtensionsActivity$$ExternalSyntheticLambda1;-><init>(Lio/github/lazyimmortal/sesame/ui/ExtensionsActivity;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 133
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 28
    invoke-super {p0, p1}, Lio/github/lazyimmortal/sesame/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    sget p1, Lio/github/lazyimmortal/sesame/R$layout;->activity_extend:I

    invoke-virtual {p0, p1}, Lio/github/lazyimmortal/sesame/ui/ExtensionsActivity;->setContentView(I)V

    .line 30
    sget p1, Lio/github/lazyimmortal/sesame/R$string;->extensions:I

    invoke-virtual {p0, p1}, Lio/github/lazyimmortal/sesame/ui/ExtensionsActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/github/lazyimmortal/sesame/ui/ExtensionsActivity;->setBaseTitle(Ljava/lang/String;)V

    .line 31
    sget p1, Lio/github/lazyimmortal/sesame/R$id;->btn_get_watered_items:I

    invoke-virtual {p0, p1}, Lio/github/lazyimmortal/sesame/ui/ExtensionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lio/github/lazyimmortal/sesame/ui/ExtensionsActivity;->btnGetWateredItems:Landroid/widget/Button;

    .line 32
    sget p1, Lio/github/lazyimmortal/sesame/R$id;->btn_get_watering_items:I

    invoke-virtual {p0, p1}, Lio/github/lazyimmortal/sesame/ui/ExtensionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lio/github/lazyimmortal/sesame/ui/ExtensionsActivity;->btnGetWateringItems:Landroid/widget/Button;

    .line 33
    sget p1, Lio/github/lazyimmortal/sesame/R$id;->btn_get_tree_items:I

    invoke-virtual {p0, p1}, Lio/github/lazyimmortal/sesame/ui/ExtensionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lio/github/lazyimmortal/sesame/ui/ExtensionsActivity;->btnGetTreeItems:Landroid/widget/Button;

    .line 34
    sget p1, Lio/github/lazyimmortal/sesame/R$id;->btn_get_newTree_items:I

    invoke-virtual {p0, p1}, Lio/github/lazyimmortal/sesame/ui/ExtensionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lio/github/lazyimmortal/sesame/ui/ExtensionsActivity;->btnGetNewTreeItems:Landroid/widget/Button;

    .line 35
    sget p1, Lio/github/lazyimmortal/sesame/R$id;->btn_query_area_trees:I

    invoke-virtual {p0, p1}, Lio/github/lazyimmortal/sesame/ui/ExtensionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lio/github/lazyimmortal/sesame/ui/ExtensionsActivity;->btnQueryAreaTrees:Landroid/widget/Button;

    .line 36
    sget p1, Lio/github/lazyimmortal/sesame/R$id;->btn_get_unlock_treeItems:I

    invoke-virtual {p0, p1}, Lio/github/lazyimmortal/sesame/ui/ExtensionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lio/github/lazyimmortal/sesame/ui/ExtensionsActivity;->btnGetUnlockTreeItems:Landroid/widget/Button;

    .line 37
    sget p1, Lio/github/lazyimmortal/sesame/R$id;->btn_clear_dish_image:I

    invoke-virtual {p0, p1}, Lio/github/lazyimmortal/sesame/ui/ExtensionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lio/github/lazyimmortal/sesame/ui/ExtensionsActivity;->btnClearDishImage:Landroid/widget/Button;

    .line 38
    sget p1, Lio/github/lazyimmortal/sesame/R$id;->btn_set_custom_walk_path_id_list:I

    invoke-virtual {p0, p1}, Lio/github/lazyimmortal/sesame/ui/ExtensionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lio/github/lazyimmortal/sesame/ui/ExtensionsActivity;->btnSetCustomWalkPathId:Landroid/widget/Button;

    .line 39
    sget p1, Lio/github/lazyimmortal/sesame/R$id;->btn_set_custom_walk_path_id_queue:I

    invoke-virtual {p0, p1}, Lio/github/lazyimmortal/sesame/ui/ExtensionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lio/github/lazyimmortal/sesame/ui/ExtensionsActivity;->btnSetCustomWalkPathIdQueue:Landroid/widget/Button;

    .line 40
    sget p1, Lio/github/lazyimmortal/sesame/R$id;->btn_developer_mode:I

    invoke-virtual {p0, p1}, Lio/github/lazyimmortal/sesame/ui/ExtensionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lio/github/lazyimmortal/sesame/ui/ExtensionsActivity;->btnDeveloperMode:Landroid/widget/Button;

    .line 41
    sget p1, Lio/github/lazyimmortal/sesame/R$id;->btn_fill_watered_friend_list:I

    invoke-virtual {p0, p1}, Lio/github/lazyimmortal/sesame/ui/ExtensionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lio/github/lazyimmortal/sesame/ui/ExtensionsActivity;->btnFillWateredFriendList:Landroid/widget/Button;

    .line 43
    iget-object p1, p0, Lio/github/lazyimmortal/sesame/ui/ExtensionsActivity;->btnGetWateredItems:Landroid/widget/Button;

    new-instance v0, Lio/github/lazyimmortal/sesame/ui/ExtensionsActivity$1;

    invoke-direct {v0, p0}, Lio/github/lazyimmortal/sesame/ui/ExtensionsActivity$1;-><init>(Lio/github/lazyimmortal/sesame/ui/ExtensionsActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    iget-object p1, p0, Lio/github/lazyimmortal/sesame/ui/ExtensionsActivity;->btnGetWateringItems:Landroid/widget/Button;

    new-instance v0, Lio/github/lazyimmortal/sesame/ui/ExtensionsActivity$2;

    invoke-direct {v0, p0}, Lio/github/lazyimmortal/sesame/ui/ExtensionsActivity$2;-><init>(Lio/github/lazyimmortal/sesame/ui/ExtensionsActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    iget-object p1, p0, Lio/github/lazyimmortal/sesame/ui/ExtensionsActivity;->btnGetTreeItems:Landroid/widget/Button;

    new-instance v0, Lio/github/lazyimmortal/sesame/ui/ExtensionsActivity$3;

    invoke-direct {v0, p0}, Lio/github/lazyimmortal/sesame/ui/ExtensionsActivity$3;-><init>(Lio/github/lazyimmortal/sesame/ui/ExtensionsActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iget-object p1, p0, Lio/github/lazyimmortal/sesame/ui/ExtensionsActivity;->btnGetNewTreeItems:Landroid/widget/Button;

    new-instance v0, Lio/github/lazyimmortal/sesame/ui/ExtensionsActivity$4;

    invoke-direct {v0, p0}, Lio/github/lazyimmortal/sesame/ui/ExtensionsActivity$4;-><init>(Lio/github/lazyimmortal/sesame/ui/ExtensionsActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iget-object p1, p0, Lio/github/lazyimmortal/sesame/ui/ExtensionsActivity;->btnQueryAreaTrees:Landroid/widget/Button;

    new-instance v0, Lio/github/lazyimmortal/sesame/ui/ExtensionsActivity$5;

    invoke-direct {v0, p0}, Lio/github/lazyimmortal/sesame/ui/ExtensionsActivity$5;-><init>(Lio/github/lazyimmortal/sesame/ui/ExtensionsActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iget-object p1, p0, Lio/github/lazyimmortal/sesame/ui/ExtensionsActivity;->btnGetUnlockTreeItems:Landroid/widget/Button;

    new-instance v0, Lio/github/lazyimmortal/sesame/ui/ExtensionsActivity$6;

    invoke-direct {v0, p0}, Lio/github/lazyimmortal/sesame/ui/ExtensionsActivity$6;-><init>(Lio/github/lazyimmortal/sesame/ui/ExtensionsActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iget-object p1, p0, Lio/github/lazyimmortal/sesame/ui/ExtensionsActivity;->btnClearDishImage:Landroid/widget/Button;

    new-instance v0, Lio/github/lazyimmortal/sesame/ui/ExtensionsActivity$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lio/github/lazyimmortal/sesame/ui/ExtensionsActivity$$ExternalSyntheticLambda5;-><init>(Lio/github/lazyimmortal/sesame/ui/ExtensionsActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    iget-object p1, p0, Lio/github/lazyimmortal/sesame/ui/ExtensionsActivity;->btnSetCustomWalkPathId:Landroid/widget/Button;

    new-instance v0, Lio/github/lazyimmortal/sesame/ui/ExtensionsActivity$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lio/github/lazyimmortal/sesame/ui/ExtensionsActivity$$ExternalSyntheticLambda6;-><init>(Lio/github/lazyimmortal/sesame/ui/ExtensionsActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    iget-object p1, p0, Lio/github/lazyimmortal/sesame/ui/ExtensionsActivity;->btnSetCustomWalkPathIdQueue:Landroid/widget/Button;

    new-instance v0, Lio/github/lazyimmortal/sesame/ui/ExtensionsActivity$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lio/github/lazyimmortal/sesame/ui/ExtensionsActivity$$ExternalSyntheticLambda7;-><init>(Lio/github/lazyimmortal/sesame/ui/ExtensionsActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    iget-object p1, p0, Lio/github/lazyimmortal/sesame/ui/ExtensionsActivity;->btnDeveloperMode:Landroid/widget/Button;

    new-instance v0, Lio/github/lazyimmortal/sesame/ui/ExtensionsActivity$7;

    invoke-direct {v0, p0}, Lio/github/lazyimmortal/sesame/ui/ExtensionsActivity$7;-><init>(Lio/github/lazyimmortal/sesame/ui/ExtensionsActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    iget-object p1, p0, Lio/github/lazyimmortal/sesame/ui/ExtensionsActivity;->btnFillWateredFriendList:Landroid/widget/Button;

    new-instance v0, Lio/github/lazyimmortal/sesame/ui/ExtensionsActivity$8;

    invoke-direct {v0, p0}, Lio/github/lazyimmortal/sesame/ui/ExtensionsActivity$8;-><init>(Lio/github/lazyimmortal/sesame/ui/ExtensionsActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
