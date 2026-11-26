.class public Lio/github/lazyimmortal/sesame/ui/MainActivity;
.super Lio/github/lazyimmortal/sesame/ui/BaseActivity;
.source "MainActivity.java"


# instance fields
.field private final handler:Landroid/os/Handler;

.field private hasPermissions:Z

.field private isBackground:Z

.field private isClick:Z

.field private titleRunner:Ljava/lang/Runnable;

.field private tvStatistics:Landroid/widget/TextView;

.field private userEntityArray:[Lio/github/lazyimmortal/sesame/entity/UserEntity;

.field private userNameArray:[Ljava/lang/String;

.field private viewHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 49
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/ui/BaseActivity;-><init>()V

    .line 51
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lio/github/lazyimmortal/sesame/ui/MainActivity;->handler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 53
    iput-boolean v0, p0, Lio/github/lazyimmortal/sesame/ui/MainActivity;->hasPermissions:Z

    .line 55
    iput-boolean v0, p0, Lio/github/lazyimmortal/sesame/ui/MainActivity;->isBackground:Z

    .line 57
    iput-boolean v0, p0, Lio/github/lazyimmortal/sesame/ui/MainActivity;->isClick:Z

    .line 65
    const-string v1, "\u9ed8\u8ba4"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/github/lazyimmortal/sesame/ui/MainActivity;->userNameArray:[Ljava/lang/String;

    const/4 v1, 0x1

    .line 67
    new-array v1, v1, [Lio/github/lazyimmortal/sesame/entity/UserEntity;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    iput-object v1, p0, Lio/github/lazyimmortal/sesame/ui/MainActivity;->userEntityArray:[Lio/github/lazyimmortal/sesame/entity/UserEntity;

    return-void
.end method

.method static synthetic access$000(Lio/github/lazyimmortal/sesame/ui/MainActivity;Lio/github/lazyimmortal/sesame/data/RunType;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lio/github/lazyimmortal/sesame/ui/MainActivity;->updateSubTitle(Lio/github/lazyimmortal/sesame/data/RunType;)V

    return-void
.end method

.method static synthetic access$100(Lio/github/lazyimmortal/sesame/ui/MainActivity;)Ljava/lang/Runnable;
    .locals 0

    .line 49
    iget-object p0, p0, Lio/github/lazyimmortal/sesame/ui/MainActivity;->titleRunner:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$200(Lio/github/lazyimmortal/sesame/ui/MainActivity;)Landroid/os/Handler;
    .locals 0

    .line 49
    iget-object p0, p0, Lio/github/lazyimmortal/sesame/ui/MainActivity;->viewHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$300(Lio/github/lazyimmortal/sesame/ui/MainActivity;)Z
    .locals 0

    .line 49
    iget-boolean p0, p0, Lio/github/lazyimmortal/sesame/ui/MainActivity;->isClick:Z

    return p0
.end method

.method static synthetic access$302(Lio/github/lazyimmortal/sesame/ui/MainActivity;Z)Z
    .locals 0

    .line 49
    iput-boolean p1, p0, Lio/github/lazyimmortal/sesame/ui/MainActivity;->isClick:Z

    return p1
.end method

.method static synthetic access$400(Lio/github/lazyimmortal/sesame/ui/MainActivity;)Landroid/widget/TextView;
    .locals 0

    .line 49
    iget-object p0, p0, Lio/github/lazyimmortal/sesame/ui/MainActivity;->tvStatistics:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$500(Lio/github/lazyimmortal/sesame/ui/MainActivity;)Z
    .locals 0

    .line 49
    iget-boolean p0, p0, Lio/github/lazyimmortal/sesame/ui/MainActivity;->isBackground:Z

    return p0
.end method

.method static synthetic access$600(Lio/github/lazyimmortal/sesame/ui/MainActivity;)Z
    .locals 0

    .line 49
    iget-boolean p0, p0, Lio/github/lazyimmortal/sesame/ui/MainActivity;->hasPermissions:Z

    return p0
.end method

.method static synthetic access$602(Lio/github/lazyimmortal/sesame/ui/MainActivity;Z)Z
    .locals 0

    .line 49
    iput-boolean p1, p0, Lio/github/lazyimmortal/sesame/ui/MainActivity;->hasPermissions:Z

    return p1
.end method

.method static synthetic access$700(Lio/github/lazyimmortal/sesame/ui/MainActivity;)Landroid/os/Handler;
    .locals 0

    .line 49
    iget-object p0, p0, Lio/github/lazyimmortal/sesame/ui/MainActivity;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method private goSettingActivity(I)V
    .locals 4

    .line 422
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/ui/MainActivity;->userEntityArray:[Lio/github/lazyimmortal/sesame/entity/UserEntity;

    aget-object v0, v0, p1

    .line 423
    sget-object v1, Lio/github/lazyimmortal/sesame/data/AppConfig;->INSTANCE:Lio/github/lazyimmortal/sesame/data/AppConfig;

    invoke-virtual {v1}, Lio/github/lazyimmortal/sesame/data/AppConfig;->getNewUI()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "TEST"

    invoke-static {}, Lio/github/lazyimmortal/sesame/data/ViewAppInfo;->getAppVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "sesame"

    invoke-static {v1}, Lio/github/lazyimmortal/sesame/util/LibraryUtil;->loadLibrary(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 424
    :goto_0
    new-instance v2, Landroid/content/Intent;

    if-eqz v1, :cond_1

    const-class v1, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;

    goto :goto_1

    :cond_1
    const-class v1, Lio/github/lazyimmortal/sesame/ui/SettingsActivity;

    :goto_1
    invoke-direct {v2, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 425
    const-string v1, "userName"

    if-eqz v0, :cond_2

    .line 426
    const-string p1, "userId"

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/entity/UserEntity;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 427
    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/entity/UserEntity;->getShowName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 429
    :cond_2
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/ui/MainActivity;->userNameArray:[Ljava/lang/String;

    aget-object p1, v0, p1

    invoke-virtual {v2, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 431
    :goto_2
    invoke-virtual {p0, v2}, Lio/github/lazyimmortal/sesame/ui/MainActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private isChangelogDismissed()Z
    .locals 3

    const/4 v0, 0x1

    return v0
.end method

.method static synthetic lambda$onCreate$1(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 119
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method static synthetic lambda$selectFriendWatchUid$8(Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x1

    .line 456
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method static synthetic lambda$selectSettingUid$4(Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x1

    .line 400
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method static synthetic lambda$selectSettingUid$5(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 401
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private prewarmWebView()V
    .locals 4

    .line 131
    sget-object v0, Lio/github/lazyimmortal/sesame/data/AppConfig;->INSTANCE:Lio/github/lazyimmortal/sesame/data/AppConfig;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/AppConfig;->getNewUI()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 134
    :cond_0
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/ui/MainActivity;->viewHandler:Landroid/os/Handler;

    new-instance v1, Lio/github/lazyimmortal/sesame/ui/MainActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lio/github/lazyimmortal/sesame/ui/MainActivity$$ExternalSyntheticLambda3;-><init>(Lio/github/lazyimmortal/sesame/ui/MainActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private selectFriendWatchUid()V
    .locals 7

    .line 439
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/ui/MainActivity;->userEntityArray:[Lio/github/lazyimmortal/sesame/entity/UserEntity;

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-gtz v0, :cond_0

    .line 441
    const-string v0, "\u6682\u65e0\u8d26\u53f7\u6570\u636e"

    invoke-static {p0, v0}, Lio/github/lazyimmortal/sesame/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    .line 444
    :cond_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_1

    .line 446
    iget-object v5, p0, Lio/github/lazyimmortal/sesame/ui/MainActivity;->userNameArray:[Ljava/lang/String;

    add-int/lit8 v6, v4, 0x1

    aget-object v5, v5, v6

    aput-object v5, v2, v4

    move v4, v6

    goto :goto_0

    .line 448
    :cond_1
    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 449
    new-instance v3, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 450
    sget v5, Lio/github/lazyimmortal/sesame/R$string;->friend_watch:I

    invoke-virtual {v3, v5}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 451
    new-instance v5, Lio/github/lazyimmortal/sesame/ui/MainActivity$$ExternalSyntheticLambda10;

    invoke-direct {v5, p0, v4}, Lio/github/lazyimmortal/sesame/ui/MainActivity$$ExternalSyntheticLambda10;-><init>(Lio/github/lazyimmortal/sesame/ui/MainActivity;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-virtual {v3, v2, v5}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 456
    new-instance v2, Lio/github/lazyimmortal/sesame/ui/MainActivity$$ExternalSyntheticLambda11;

    invoke-direct {v2, v4}, Lio/github/lazyimmortal/sesame/ui/MainActivity$$ExternalSyntheticLambda11;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-virtual {v3, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 457
    sget v2, Lio/github/lazyimmortal/sesame/R$string;->cancel:I

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 458
    invoke-virtual {v3}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v2

    .line 459
    invoke-virtual {v2}, Landroidx/appcompat/app/AlertDialog;->show()V

    if-ne v0, v1, :cond_2

    .line 462
    new-instance v1, Ljava/lang/Thread;

    new-instance v3, Lio/github/lazyimmortal/sesame/ui/MainActivity$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v4, v2, v0}, Lio/github/lazyimmortal/sesame/ui/MainActivity$$ExternalSyntheticLambda1;-><init>(Lio/github/lazyimmortal/sesame/ui/MainActivity;Ljava/util/concurrent/atomic/AtomicBoolean;Landroidx/appcompat/app/AlertDialog;I)V

    invoke-direct {v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 473
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_2
    return-void
.end method

.method private selectSettingUid()V
    .locals 5

    .line 392
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 393
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 394
    const-string v2, "\u8bf7\u9009\u62e9\u914d\u7f6e"

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 395
    iget-object v2, p0, Lio/github/lazyimmortal/sesame/ui/MainActivity;->userNameArray:[Ljava/lang/String;

    new-instance v3, Lio/github/lazyimmortal/sesame/ui/MainActivity$$ExternalSyntheticLambda6;

    invoke-direct {v3, p0, v0}, Lio/github/lazyimmortal/sesame/ui/MainActivity$$ExternalSyntheticLambda6;-><init>(Lio/github/lazyimmortal/sesame/ui/MainActivity;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 400
    new-instance v2, Lio/github/lazyimmortal/sesame/ui/MainActivity$$ExternalSyntheticLambda7;

    invoke-direct {v2, v0}, Lio/github/lazyimmortal/sesame/ui/MainActivity$$ExternalSyntheticLambda7;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 401
    new-instance v2, Lio/github/lazyimmortal/sesame/ui/MainActivity$$ExternalSyntheticLambda8;

    invoke-direct {v2}, Lio/github/lazyimmortal/sesame/ui/MainActivity$$ExternalSyntheticLambda8;-><init>()V

    const-string v3, "\u8fd4\u56de"

    invoke-virtual {v1, v3, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 402
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v1

    .line 403
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog;->show()V

    const/4 v2, -0x1

    .line 405
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 407
    sget v3, Lio/github/lazyimmortal/sesame/R$color;->button:I

    invoke-static {p0, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 409
    :cond_0
    iget-object v2, p0, Lio/github/lazyimmortal/sesame/ui/MainActivity;->userNameArray:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_1

    const/4 v3, 0x3

    if-ge v2, v3, :cond_1

    .line 411
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lio/github/lazyimmortal/sesame/ui/MainActivity$$ExternalSyntheticLambda9;

    invoke-direct {v4, p0, v0, v1, v2}, Lio/github/lazyimmortal/sesame/ui/MainActivity$$ExternalSyntheticLambda9;-><init>(Lio/github/lazyimmortal/sesame/ui/MainActivity;Ljava/util/concurrent/atomic/AtomicBoolean;Landroidx/appcompat/app/AlertDialog;I)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 417
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    :cond_1
    return-void
.end method

.method private showChangelog()V
    .locals 3

    .line 384
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u66f4\u65b0\u8bb0\u5f55"

    .line 385
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lio/github/lazyimmortal/sesame/R$string;->start_message:I

    .line 386
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    const/4 v2, 0x0

    .line 387
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 388
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method private showFriendWatch(I)V
    .locals 3

    .line 481
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/ui/MainActivity;->userEntityArray:[Lio/github/lazyimmortal/sesame/entity/UserEntity;

    add-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    .line 482
    invoke-virtual {p1}, Lio/github/lazyimmortal/sesame/entity/UserEntity;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 483
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lio/github/lazyimmortal/sesame/R$string;->friend_watch:I

    invoke-virtual {p0, v2}, Lio/github/lazyimmortal/sesame/ui/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lio/github/lazyimmortal/sesame/entity/UserEntity;->getShowName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 485
    invoke-static {v0}, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->getList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->getDontCollectSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    invoke-static {p0, p1, v1, v0}, Lio/github/lazyimmortal/sesame/ui/ListDialog;->showFriendWatch(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/util/List;Ljava/util/Set;)V

    return-void
.end method

.method private updateSubTitle(Lio/github/lazyimmortal/sesame/data/RunType;)V
    .locals 3

    .line 489
    sget-object v0, Lio/github/lazyimmortal/sesame/ui/MainActivity$3;->$SwitchMap$io$github$lazyimmortal$sesame$data$RunType:[I

    invoke-virtual {p1}, Lio/github/lazyimmortal/sesame/data/RunType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const-string v1, "\u3011"

    const-string v2, "\u3010"

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    .line 499
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lio/github/lazyimmortal/sesame/data/ViewAppInfo;->getAppTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lio/github/lazyimmortal/sesame/R$string;->loading:I

    invoke-virtual {p0, v0}, Lio/github/lazyimmortal/sesame/ui/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/github/lazyimmortal/sesame/ui/MainActivity;->setBaseTitle(Ljava/lang/String;)V

    .line 500
    sget p1, Lio/github/lazyimmortal/sesame/R$color;->textColorPrimary:I

    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lio/github/lazyimmortal/sesame/ui/MainActivity;->setBaseTitleTextColor(I)V

    goto :goto_0

    .line 495
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lio/github/lazyimmortal/sesame/data/ViewAppInfo;->getAppTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lio/github/lazyimmortal/sesame/R$string;->activated:I

    invoke-virtual {p0, v0}, Lio/github/lazyimmortal/sesame/ui/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/github/lazyimmortal/sesame/ui/MainActivity;->setBaseTitle(Ljava/lang/String;)V

    .line 496
    sget p1, Lio/github/lazyimmortal/sesame/R$color;->textColorPrimary:I

    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lio/github/lazyimmortal/sesame/ui/MainActivity;->setBaseTitleTextColor(I)V

    goto :goto_0

    .line 491
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lio/github/lazyimmortal/sesame/data/ViewAppInfo;->getAppTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lio/github/lazyimmortal/sesame/R$string;->disable:I

    invoke-virtual {p0, v0}, Lio/github/lazyimmortal/sesame/ui/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/github/lazyimmortal/sesame/ui/MainActivity;->setBaseTitle(Ljava/lang/String;)V

    .line 492
    sget p1, Lio/github/lazyimmortal/sesame/R$color;->textColorDisable:I

    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lio/github/lazyimmortal/sesame/ui/MainActivity;->setBaseTitleTextColor(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method synthetic lambda$onCreate$0$io-github-lazyimmortal-sesame-ui-MainActivity()V
    .locals 1

    .line 82
    sget-object v0, Lio/github/lazyimmortal/sesame/data/RunType;->DISABLE:Lio/github/lazyimmortal/sesame/data/RunType;

    invoke-direct {p0, v0}, Lio/github/lazyimmortal/sesame/ui/MainActivity;->updateSubTitle(Lio/github/lazyimmortal/sesame/data/RunType;)V

    return-void
.end method

.method synthetic lambda$prewarmWebView$2$io-github-lazyimmortal-sesame-ui-MainActivity()V
    .locals 1

    .line 136
    :try_start_0
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method synthetic lambda$selectFriendWatchUid$10$io-github-lazyimmortal-sesame-ui-MainActivity(Ljava/util/concurrent/atomic/AtomicBoolean;Landroidx/appcompat/app/AlertDialog;I)V
    .locals 2

    .line 0
    const-wide/16 v0, 0x320

    .line 463
    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V

    .line 464
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 466
    new-instance v0, Lio/github/lazyimmortal/sesame/ui/MainActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/github/lazyimmortal/sesame/ui/MainActivity$$ExternalSyntheticLambda2;-><init>(Lio/github/lazyimmortal/sesame/ui/MainActivity;Ljava/util/concurrent/atomic/AtomicBoolean;Landroidx/appcompat/app/AlertDialog;I)V

    invoke-virtual {p0, v0}, Lio/github/lazyimmortal/sesame/ui/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$selectFriendWatchUid$7$io-github-lazyimmortal-sesame-ui-MainActivity(Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/content/DialogInterface;I)V
    .locals 1

    .line 0
    const/4 v0, 0x1

    .line 452
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 453
    invoke-interface {p2}, Landroid/content/DialogInterface;->dismiss()V

    .line 454
    invoke-direct {p0, p3}, Lio/github/lazyimmortal/sesame/ui/MainActivity;->showFriendWatch(I)V

    return-void
.end method

.method synthetic lambda$selectFriendWatchUid$9$io-github-lazyimmortal-sesame-ui-MainActivity(Ljava/util/concurrent/atomic/AtomicBoolean;Landroidx/appcompat/app/AlertDialog;I)V
    .locals 0

    .line 467
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_0

    .line 468
    invoke-virtual {p2}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    add-int/lit8 p3, p3, -0x1

    .line 469
    invoke-direct {p0, p3}, Lio/github/lazyimmortal/sesame/ui/MainActivity;->showFriendWatch(I)V

    :cond_0
    return-void
.end method

.method synthetic lambda$selectSettingUid$3$io-github-lazyimmortal-sesame-ui-MainActivity(Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/content/DialogInterface;I)V
    .locals 1

    .line 0
    const/4 v0, 0x1

    .line 396
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 397
    invoke-interface {p2}, Landroid/content/DialogInterface;->dismiss()V

    .line 398
    invoke-direct {p0, p3}, Lio/github/lazyimmortal/sesame/ui/MainActivity;->goSettingActivity(I)V

    return-void
.end method

.method synthetic lambda$selectSettingUid$6$io-github-lazyimmortal-sesame-ui-MainActivity(Ljava/util/concurrent/atomic/AtomicBoolean;Landroidx/appcompat/app/AlertDialog;I)V
    .locals 2

    .line 0
    const-wide/16 v0, 0x320

    .line 412
    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->sleep(J)V

    .line 413
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_0

    .line 414
    invoke-virtual {p2}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    add-int/lit8 p3, p3, -0x1

    .line 415
    invoke-direct {p0, p3}, Lio/github/lazyimmortal/sesame/ui/MainActivity;->goSettingActivity(I)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 224
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lio/github/lazyimmortal/sesame/R$id;->btn_test:I

    if-ne v0, v1, :cond_0

    .line 226
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.eg.android.AlipayGphone.sesame.status"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lio/github/lazyimmortal/sesame/ui/MainActivity;->sendBroadcast(Landroid/content/Intent;)V

    const/4 p1, 0x1

    .line 227
    iput-boolean p1, p0, Lio/github/lazyimmortal/sesame/ui/MainActivity;->isClick:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 229
    const-string v0, "view sendBroadcast status err:"

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;)V

    .line 230
    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    return-void

    .line 236
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lio/github/lazyimmortal/sesame/R$id;->btn_forest_log:I

    const-string v2, "file://"

    if-ne v0, v1, :cond_1

    .line 237
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lio/github/lazyimmortal/sesame/util/FileUtil;->getForestLogFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 238
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lio/github/lazyimmortal/sesame/R$id;->btn_farm_log:I

    if-ne v0, v1, :cond_2

    .line 239
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lio/github/lazyimmortal/sesame/util/FileUtil;->getFarmLogFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 240
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lio/github/lazyimmortal/sesame/R$id;->btn_other_log:I

    if-ne v0, v1, :cond_3

    .line 241
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lio/github/lazyimmortal/sesame/util/FileUtil;->getRecordLogFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 242
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lio/github/lazyimmortal/sesame/R$id;->btn_info_log:I

    if-ne v0, v1, :cond_4

    .line 243
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lio/github/lazyimmortal/sesame/util/FileUtil;->getInfoLogFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 244
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lio/github/lazyimmortal/sesame/R$id;->btn_friend_watch:I

    if-ne v0, v1, :cond_5

    .line 245
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/ui/MainActivity;->selectFriendWatchUid()V

    return-void

    .line 247
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lio/github/lazyimmortal/sesame/R$id;->btn_settings:I

    if-ne p1, v0, :cond_6

    .line 248
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/ui/MainActivity;->selectSettingUid()V

    return-void

    .line 251
    :cond_6
    :goto_1
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lio/github/lazyimmortal/sesame/ui/HtmlViewerActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 252
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 253
    invoke-virtual {p0, p1}, Lio/github/lazyimmortal/sesame/ui/MainActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 72
    invoke-super {p0, p1}, Lio/github/lazyimmortal/sesame/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    sget p1, Lio/github/lazyimmortal/sesame/R$layout;->activity_main:I

    invoke-virtual {p0, p1}, Lio/github/lazyimmortal/sesame/ui/MainActivity;->setContentView(I)V

    .line 74
    sget p1, Lio/github/lazyimmortal/sesame/R$id;->tv_statistics:I

    invoke-virtual {p0, p1}, Lio/github/lazyimmortal/sesame/ui/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lio/github/lazyimmortal/sesame/ui/MainActivity;->tvStatistics:Landroid/widget/TextView;

    .line 75
    invoke-static {}, Lio/github/lazyimmortal/sesame/data/ViewAppInfo;->checkRunType()Lio/github/lazyimmortal/sesame/data/RunType;

    .line 80
    invoke-static {}, Lio/github/lazyimmortal/sesame/data/ViewAppInfo;->getRunType()Lio/github/lazyimmortal/sesame/data/RunType;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/github/lazyimmortal/sesame/ui/MainActivity;->updateSubTitle(Lio/github/lazyimmortal/sesame/data/RunType;)V

    .line 81
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lio/github/lazyimmortal/sesame/ui/MainActivity;->viewHandler:Landroid/os/Handler;

    .line 82
    new-instance p1, Lio/github/lazyimmortal/sesame/ui/MainActivity$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0}, Lio/github/lazyimmortal/sesame/ui/MainActivity$$ExternalSyntheticLambda4;-><init>(Lio/github/lazyimmortal/sesame/ui/MainActivity;)V

    iput-object p1, p0, Lio/github/lazyimmortal/sesame/ui/MainActivity;->titleRunner:Ljava/lang/Runnable;

    .line 83
    new-instance p1, Lio/github/lazyimmortal/sesame/ui/MainActivity$1;

    invoke-direct {p1, p0}, Lio/github/lazyimmortal/sesame/ui/MainActivity$1;-><init>(Lio/github/lazyimmortal/sesame/ui/MainActivity;)V

    .line 108
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 109
    const-string v1, "io.github.lazyimmortal.sesame.status"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 110
    const-string v1, "io.github.lazyimmortal.sesame.update"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 111
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-lt v1, v2, :cond_0

    const/4 v1, 0x2

    .line 112
    invoke-static {p0, p1, v0, v1}, Lio/github/lazyimmortal/sesame/util/FileUtil$$ExternalSyntheticApiModelOutline0;->m(Lio/github/lazyimmortal/sesame/ui/MainActivity;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_0

    .line 114
    :cond_0
    invoke-virtual {p0, p1, v0}, Lio/github/lazyimmortal/sesame/ui/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 116
    :goto_0
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/ui/MainActivity;->isChangelogDismissed()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 117
    sget v0, Lio/github/lazyimmortal/sesame/R$string;->tips:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 118
    sget v0, Lio/github/lazyimmortal/sesame/R$string;->start_message:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 119
    sget v0, Lio/github/lazyimmortal/sesame/R$string;->btn_understood:I

    new-instance v1, Lio/github/lazyimmortal/sesame/ui/MainActivity$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lio/github/lazyimmortal/sesame/ui/MainActivity$$ExternalSyntheticLambda5;-><init>()V

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const-string v0, "\u4e0d\u518d\u63d0\u793a"

    new-instance v1, Lio/github/lazyimmortal/sesame/ui/MainActivity$ChangelogNoMoreListener;

    invoke-direct {v1, p0}, Lio/github/lazyimmortal/sesame/ui/MainActivity$ChangelogNoMoreListener;-><init>(Lio/github/lazyimmortal/sesame/ui/MainActivity;)V

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 120
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 121
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    const/4 v0, -0x1

    .line 122
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 124
    sget v0, Lio/github/lazyimmortal/sesame/R$color;->button:I

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 126
    :cond_1
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/ui/MainActivity;->prewarmWebView()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 11

    .line 258
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/ui/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Alias"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v0

    .line 259
    sget v1, Lio/github/lazyimmortal/sesame/R$string;->other_log:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p1, v2, v3, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    const/4 v1, 0x2

    .line 260
    sget v4, Lio/github/lazyimmortal/sesame/R$string;->view_debug_file:I

    invoke-interface {p1, v2, v1, v1, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    const/4 v1, 0x3

    .line 261
    sget v4, Lio/github/lazyimmortal/sesame/R$string;->extensions:I

    invoke-interface {p1, v2, v1, v1, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 262
    sget v1, Lio/github/lazyimmortal/sesame/R$string;->update_download:I

    const/16 v4, 0xd

    const/4 v5, 0x4

    invoke-interface {p1, v2, v4, v5, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 263
    sget v1, Lio/github/lazyimmortal/sesame/R$string;->export_the_statistic_file:I

    const/16 v6, 0x8

    const/4 v7, 0x5

    invoke-interface {p1, v2, v6, v7, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 264
    sget v1, Lio/github/lazyimmortal/sesame/R$string;->import_the_statistic_file:I

    const/16 v8, 0x9

    const/4 v9, 0x6

    invoke-interface {p1, v2, v8, v9, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 265
    sget v1, Lio/github/lazyimmortal/sesame/R$string;->view_error_log_file:I

    const/4 v10, 0x7

    invoke-interface {p1, v2, v5, v10, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 266
    sget v1, Lio/github/lazyimmortal/sesame/R$string;->export_error_log_file:I

    invoke-interface {p1, v2, v7, v6, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 267
    sget v1, Lio/github/lazyimmortal/sesame/R$string;->view_runtime_log_file:I

    invoke-interface {p1, v2, v9, v8, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 268
    sget v1, Lio/github/lazyimmortal/sesame/R$string;->export_runtime_log_file:I

    const/16 v5, 0xa

    invoke-interface {p1, v2, v10, v5, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 269
    sget v1, Lio/github/lazyimmortal/sesame/R$string;->hide_the_application_icon:I

    const/16 v6, 0xb

    invoke-interface {p1, v2, v5, v6, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    move-result-object v1

    if-le v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 270
    sget v0, Lio/github/lazyimmortal/sesame/R$string;->language_simplified_chinese:I

    const/16 v1, 0xc

    invoke-interface {p1, v2, v6, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    move-result-object v0

    sget-object v3, Lio/github/lazyimmortal/sesame/data/AppConfig;->INSTANCE:Lio/github/lazyimmortal/sesame/data/AppConfig;

    invoke-virtual {v3}, Lio/github/lazyimmortal/sesame/data/AppConfig;->getLanguageSimplifiedChinese()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 271
    sget v0, Lio/github/lazyimmortal/sesame/R$string;->settings:I

    invoke-interface {p1, v2, v1, v4, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 273
    invoke-super {p0, p1}, Lio/github/lazyimmortal/sesame/ui/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7

    .line 278
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const-string v1, "nextLine"

    const-string v2, "\u6587\u4ef6\u5df2\u5bfc\u51fa\u5230: "

    const/4 v3, 0x0

    const-string v4, "canClear"

    const-string v5, "file://"

    const/4 v6, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 376
    :pswitch_0
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/ui/MainActivity;->showChangelog()V

    goto/16 :goto_1

    .line 370
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lio/github/lazyimmortal/sesame/ui/HtmlViewerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 371
    const-string v1, "https://github.com/Dragon813/Sesame-GR/releases"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 372
    invoke-virtual {p0, v0}, Lio/github/lazyimmortal/sesame/ui/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 365
    :pswitch_2
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/ui/MainActivity;->selectSettingUid()V

    goto/16 :goto_1

    .line 355
    :pswitch_3
    sget-object v0, Lio/github/lazyimmortal/sesame/data/AppConfig;->INSTANCE:Lio/github/lazyimmortal/sesame/data/AppConfig;

    .line 356
    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/AppConfig;->getLanguageSimplifiedChinese()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    xor-int/2addr v1, v6

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/github/lazyimmortal/sesame/data/AppConfig;->setLanguageSimplifiedChinese(Ljava/lang/Boolean;)V

    .line 357
    invoke-static {}, Lio/github/lazyimmortal/sesame/data/AppConfig;->save()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 358
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    xor-int/2addr v0, v6

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 359
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/LanguageUtil;->setLocal(Landroid/content/Context;)Landroid/content/Context;

    .line 360
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/ui/MainActivity;->recreate()V

    goto/16 :goto_1

    .line 349
    :pswitch_4
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    .line 350
    :goto_0
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/ui/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Alias"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v3, v6}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 351
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    xor-int/2addr v0, v6

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto/16 :goto_1

    .line 342
    :pswitch_5
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/FileUtil;->getExportedStatisticsFile()Ljava/io/File;

    move-result-object v0

    invoke-static {}, Lio/github/lazyimmortal/sesame/util/FileUtil;->getStatisticsFile()Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/util/FileUtil;->copyTo(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 343
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/ui/MainActivity;->tvStatistics:Landroid/widget/TextView;

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/Statistics;->getText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 344
    const-string v0, "\u5bfc\u5165\u6210\u529f\uff01"

    invoke-static {p0, v0}, Lio/github/lazyimmortal/sesame/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 335
    :pswitch_6
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/FileUtil;->getStatisticsFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/FileUtil;->exportFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 337
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lio/github/lazyimmortal/sesame/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 328
    :pswitch_7
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/FileUtil;->getRuntimeLogFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/FileUtil;->exportFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 330
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lio/github/lazyimmortal/sesame/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 319
    :pswitch_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lio/github/lazyimmortal/sesame/util/FileUtil;->getRuntimeLogFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 320
    new-instance v2, Landroid/content/Intent;

    const-class v5, Lio/github/lazyimmortal/sesame/ui/HtmlViewerActivity;

    invoke-direct {v2, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 321
    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 322
    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 323
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 324
    invoke-virtual {p0, v2}, Lio/github/lazyimmortal/sesame/ui/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 311
    :pswitch_9
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/FileUtil;->getErrorLogFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/FileUtil;->exportFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 313
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lio/github/lazyimmortal/sesame/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 302
    :pswitch_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lio/github/lazyimmortal/sesame/util/FileUtil;->getErrorLogFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 303
    new-instance v2, Landroid/content/Intent;

    const-class v5, Lio/github/lazyimmortal/sesame/ui/HtmlViewerActivity;

    invoke-direct {v2, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 304
    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 305
    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 306
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 307
    invoke-virtual {p0, v2}, Lio/github/lazyimmortal/sesame/ui/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 296
    :pswitch_b
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lio/github/lazyimmortal/sesame/ui/ExtensionsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 297
    invoke-virtual {p0, v0}, Lio/github/lazyimmortal/sesame/ui/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 289
    :pswitch_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lio/github/lazyimmortal/sesame/util/FileUtil;->getDebugLogFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 290
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lio/github/lazyimmortal/sesame/ui/HtmlViewerActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 291
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 292
    invoke-virtual {v1, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 293
    invoke-virtual {p0, v1}, Lio/github/lazyimmortal/sesame/ui/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 281
    :pswitch_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lio/github/lazyimmortal/sesame/util/FileUtil;->getOtherLogFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 282
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lio/github/lazyimmortal/sesame/ui/HtmlViewerActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 283
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 284
    invoke-virtual {v1, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 285
    invoke-virtual {p0, v1}, Lio/github/lazyimmortal/sesame/ui/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 379
    :cond_1
    :goto_1
    invoke-super {p0, p1}, Lio/github/lazyimmortal/sesame/ui/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 11

    .line 171
    const-string v0, "\u9ed8\u8ba4"

    invoke-super {p0}, Lio/github/lazyimmortal/sesame/ui/BaseActivity;->onResume()V

    .line 172
    iget-boolean v1, p0, Lio/github/lazyimmortal/sesame/ui/MainActivity;->hasPermissions:Z

    if-eqz v1, :cond_4

    .line 173
    sget-object v1, Lio/github/lazyimmortal/sesame/data/RunType;->DISABLE:Lio/github/lazyimmortal/sesame/data/RunType;

    invoke-static {}, Lio/github/lazyimmortal/sesame/data/ViewAppInfo;->getRunType()Lio/github/lazyimmortal/sesame/data/RunType;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 174
    iget-object v1, p0, Lio/github/lazyimmortal/sesame/ui/MainActivity;->viewHandler:Landroid/os/Handler;

    iget-object v2, p0, Lio/github/lazyimmortal/sesame/ui/MainActivity;->titleRunner:Ljava/lang/Runnable;

    const-wide/16 v3, 0xbb8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 176
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.eg.android.AlipayGphone.sesame.status"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lio/github/lazyimmortal/sesame/ui/MainActivity;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 178
    const-string v2, "view sendBroadcast status err:"

    invoke-static {v2}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;)V

    .line 179
    invoke-static {v1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 183
    :try_start_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 184
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 185
    sget-object v5, Lio/github/lazyimmortal/sesame/util/FileUtil;->CONFIG_DIRECTORY_FILE:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 187
    array-length v6, v5

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_3

    aget-object v8, v5, v7

    .line 188
    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 189
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    .line 190
    invoke-static {v8}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->loadSelf(Ljava/lang/String;)V

    .line 191
    invoke-static {v8}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->get(Ljava/lang/String;)Lio/github/lazyimmortal/sesame/entity/UserEntity;

    move-result-object v9

    if-nez v9, :cond_1

    goto :goto_2

    .line 196
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Lio/github/lazyimmortal/sesame/entity/UserEntity;->getShowName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ": "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lio/github/lazyimmortal/sesame/entity/UserEntity;->getAccount()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 198
    :goto_2
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 203
    :cond_3
    invoke-interface {v3, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 204
    invoke-interface {v4, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 205
    new-array v5, v2, [Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    iput-object v3, p0, Lio/github/lazyimmortal/sesame/ui/MainActivity;->userNameArray:[Ljava/lang/String;

    .line 206
    new-array v3, v2, [Lio/github/lazyimmortal/sesame/entity/UserEntity;

    invoke-interface {v4, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lio/github/lazyimmortal/sesame/entity/UserEntity;

    iput-object v3, p0, Lio/github/lazyimmortal/sesame/ui/MainActivity;->userEntityArray:[Lio/github/lazyimmortal/sesame/entity/UserEntity;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v3

    .line 208
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/github/lazyimmortal/sesame/ui/MainActivity;->userNameArray:[Ljava/lang/String;

    const/4 v0, 0x1

    .line 209
    new-array v0, v0, [Lio/github/lazyimmortal/sesame/entity/UserEntity;

    aput-object v1, v0, v2

    iput-object v0, p0, Lio/github/lazyimmortal/sesame/ui/MainActivity;->userEntityArray:[Lio/github/lazyimmortal/sesame/entity/UserEntity;

    .line 210
    invoke-static {v3}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/Throwable;)V

    .line 213
    :goto_3
    :try_start_2
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/Statistics;->load()Lio/github/lazyimmortal/sesame/util/Statistics;

    .line 214
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Statistics;->updateDay(Ljava/util/Calendar;)Ljava/lang/Boolean;

    .line 215
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/ui/MainActivity;->tvStatistics:Landroid/widget/TextView;

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/Statistics;->getText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    .line 217
    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/Throwable;)V

    :cond_4
    :goto_4
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 145
    iget-boolean v0, p0, Lio/github/lazyimmortal/sesame/ui/MainActivity;->hasPermissions:Z

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 147
    iput-boolean p1, p0, Lio/github/lazyimmortal/sesame/ui/MainActivity;->isBackground:Z

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 150
    iput-boolean p1, p0, Lio/github/lazyimmortal/sesame/ui/MainActivity;->isBackground:Z

    .line 151
    iget-object p1, p0, Lio/github/lazyimmortal/sesame/ui/MainActivity;->handler:Landroid/os/Handler;

    new-instance v0, Lio/github/lazyimmortal/sesame/ui/MainActivity$2;

    invoke-direct {v0, p0}, Lio/github/lazyimmortal/sesame/ui/MainActivity$2;-><init>(Lio/github/lazyimmortal/sesame/ui/MainActivity;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public setChangelogDismissed()V
    .locals 3

    const-string v0, "sesame_changelog"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lio/github/lazyimmortal/sesame/ui/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "no_more_changelog"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
