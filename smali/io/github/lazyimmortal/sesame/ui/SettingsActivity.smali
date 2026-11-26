.class public Lio/github/lazyimmortal/sesame/ui/SettingsActivity;
.super Lio/github/lazyimmortal/sesame/ui/BaseActivity;
.source "SettingsActivity.java"


# static fields
.field private static final EXPORT_REQUEST_CODE:Ljava/lang/Integer;

.field private static final IMPORT_REQUEST_CODE:Ljava/lang/Integer;


# instance fields
.field private context:Landroid/content/Context;

.field private isDraw:Ljava/lang/Boolean;

.field private svTabs:Landroid/widget/ScrollView;

.field private tabHost:Landroid/widget/TabHost;

.field private userId:Ljava/lang/String;

.field private userName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    .line 31
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lio/github/lazyimmortal/sesame/ui/SettingsActivity;->EXPORT_REQUEST_CODE:Ljava/lang/Integer;

    const/4 v0, 0x2

    .line 33
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lio/github/lazyimmortal/sesame/ui/SettingsActivity;->IMPORT_REQUEST_CODE:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/ui/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 36
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lio/github/lazyimmortal/sesame/ui/SettingsActivity;->isDraw:Ljava/lang/Boolean;

    return-void
.end method

.method static synthetic access$000(Lio/github/lazyimmortal/sesame/ui/SettingsActivity;)Landroid/content/Context;
    .locals 0

    .line 29
    iget-object p0, p0, Lio/github/lazyimmortal/sesame/ui/SettingsActivity;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic lambda$onOptionsItemSelected$1(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 232
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method static synthetic lambda$onOptionsItemSelected$2(Lio/github/lazyimmortal/sesame/entity/UserEntity;)Ljava/lang/Boolean;
    .locals 1

    .line 235
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/entity/UserEntity;->getFriendStatus()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private save()V
    .locals 3

    .line 326
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/ui/SettingsActivity;->userId:Ljava/lang/String;

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/data/ConfigV2;->isModify(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/github/lazyimmortal/sesame/ui/SettingsActivity;->userId:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/data/ConfigV2;->save(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 327
    const-string v0, "\u4fdd\u5b58\u6210\u529f\uff01"

    invoke-static {p0, v0}, Lio/github/lazyimmortal/sesame/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 328
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/ui/SettingsActivity;->userId:Ljava/lang/String;

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 330
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.eg.android.AlipayGphone.sesame.restart"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 331
    const-string v1, "userId"

    iget-object v2, p0, Lio/github/lazyimmortal/sesame/ui/SettingsActivity;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 332
    invoke-virtual {p0, v0}, Lio/github/lazyimmortal/sesame/ui/SettingsActivity;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 335
    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/Throwable;)V

    .line 339
    :cond_0
    :goto_0
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/ui/SettingsActivity;->userId:Ljava/lang/String;

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 340
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/ui/SettingsActivity;->userId:Ljava/lang/String;

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->save(Ljava/lang/String;)Z

    :cond_1
    return-void
.end method


# virtual methods
.method public getBaseSubtitle()Ljava/lang/String;
    .locals 1

    .line 45
    sget v0, Lio/github/lazyimmortal/sesame/R$string;->settings:I

    invoke-virtual {p0, v0}, Lio/github/lazyimmortal/sesame/ui/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$onOptionsItemSelected$0$io-github-lazyimmortal-sesame-ui-SettingsActivity(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 219
    iget-object p1, p0, Lio/github/lazyimmortal/sesame/ui/SettingsActivity;->userId:Ljava/lang/String;

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 220
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/FileUtil;->getDefaultConfigV2File()Ljava/io/File;

    move-result-object p1

    goto :goto_0

    .line 223
    :cond_0
    iget-object p1, p0, Lio/github/lazyimmortal/sesame/ui/SettingsActivity;->userId:Ljava/lang/String;

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/FileUtil;->getUserConfigDirectoryFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 225
    :goto_0
    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/FileUtil;->deleteFile(Ljava/io/File;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 226
    const-string p1, "\u914d\u7f6e\u5220\u9664\u6210\u529f"

    invoke-static {p0, p1}, Lio/github/lazyimmortal/sesame/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 229
    :cond_1
    const-string p1, "\u914d\u7f6e\u5220\u9664\u5931\u8d25"

    invoke-static {p0, p1}, Lio/github/lazyimmortal/sesame/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 231
    :goto_1
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/ui/SettingsActivity;->finish()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .line 256
    const-string v0, "\u5bfc\u5165\u5931\u8d25\uff01"

    const-string v1, "\u5bfc\u51fa\u5931\u8d25\uff01"

    invoke-super {p0, p1, p2, p3}, Lio/github/lazyimmortal/sesame/ui/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v2, -0x1

    if-eq p2, v2, :cond_0

    return-void

    .line 260
    :cond_0
    sget-object p2, Lio/github/lazyimmortal/sesame/ui/SettingsActivity;->EXPORT_REQUEST_CODE:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p1, p2, :cond_3

    .line 261
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 265
    :try_start_0
    iget-object p1, p0, Lio/github/lazyimmortal/sesame/ui/SettingsActivity;->userId:Ljava/lang/String;

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 266
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/FileUtil;->getDefaultConfigV2File()Ljava/io/File;

    move-result-object p1

    goto :goto_0

    .line 269
    :cond_1
    iget-object p1, p0, Lio/github/lazyimmortal/sesame/ui/SettingsActivity;->userId:Ljava/lang/String;

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/FileUtil;->getConfigV2File(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 271
    :goto_0
    new-instance p2, Ljava/io/FileInputStream;

    invoke-direct {p2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 272
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/ui/SettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object p1

    invoke-static {p2, p1}, Lio/github/lazyimmortal/sesame/util/FileUtil;->streamTo(Ljava/io/InputStream;Ljava/io/OutputStream;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 273
    const-string p1, "\u5bfc\u51fa\u6210\u529f\uff01"

    invoke-static {p0, p1}, Lio/github/lazyimmortal/sesame/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 276
    :cond_2
    invoke-static {p0, v1}, Lio/github/lazyimmortal/sesame/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception p1

    .line 280
    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/Throwable;)V

    .line 281
    invoke-static {p0, v1}, Lio/github/lazyimmortal/sesame/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 285
    :cond_3
    sget-object p2, Lio/github/lazyimmortal/sesame/ui/SettingsActivity;->IMPORT_REQUEST_CODE:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p1, p2, :cond_7

    .line 286
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 290
    :try_start_1
    iget-object p1, p0, Lio/github/lazyimmortal/sesame/ui/SettingsActivity;->userId:Ljava/lang/String;

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 291
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/FileUtil;->getDefaultConfigV2File()Ljava/io/File;

    move-result-object p1

    goto :goto_1

    .line 294
    :cond_4
    iget-object p1, p0, Lio/github/lazyimmortal/sesame/ui/SettingsActivity;->userId:Ljava/lang/String;

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/FileUtil;->getConfigV2File(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 296
    :goto_1
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 297
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/ui/SettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1, p2}, Lio/github/lazyimmortal/sesame/util/FileUtil;->streamTo(Ljava/io/InputStream;Ljava/io/OutputStream;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 298
    const-string p1, "\u5bfc\u5165\u6210\u529f\uff01"

    invoke-static {p0, p1}, Lio/github/lazyimmortal/sesame/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 299
    iget-object p1, p0, Lio/github/lazyimmortal/sesame/ui/SettingsActivity;->userId:Ljava/lang/String;

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    if-nez p1, :cond_5

    .line 301
    :try_start_2
    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.eg.android.AlipayGphone.sesame.restart"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 302
    const-string p2, "userId"

    iget-object p3, p0, Lio/github/lazyimmortal/sesame/ui/SettingsActivity;->userId:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 303
    invoke-virtual {p0, p1}, Lio/github/lazyimmortal/sesame/ui/SettingsActivity;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 306
    :try_start_3
    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/Throwable;)V

    .line 309
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/ui/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 310
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/ui/SettingsActivity;->finish()V

    .line 311
    invoke-virtual {p0, p1}, Lio/github/lazyimmortal/sesame/ui/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_3

    .line 314
    :cond_6
    invoke-static {p0, v0}, Lio/github/lazyimmortal/sesame/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 318
    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/Throwable;)V

    .line 319
    invoke-static {p0, v0}, Lio/github/lazyimmortal/sesame/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :cond_7
    :goto_3
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 160
    invoke-super {p0}, Lio/github/lazyimmortal/sesame/ui/BaseActivity;->onBackPressed()V

    .line 161
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/ui/SettingsActivity;->save()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 51
    invoke-super {p0, p1}, Lio/github/lazyimmortal/sesame/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 52
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/ui/SettingsActivity;->userId:Ljava/lang/String;

    .line 53
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/ui/SettingsActivity;->userName:Ljava/lang/String;

    .line 54
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/ui/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 56
    const-string v0, "userId"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/github/lazyimmortal/sesame/ui/SettingsActivity;->userId:Ljava/lang/String;

    .line 57
    const-string v0, "userName"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/github/lazyimmortal/sesame/ui/SettingsActivity;->userName:Ljava/lang/String;

    .line 59
    :cond_0
    invoke-static {}, Lio/github/lazyimmortal/sesame/data/Model;->initAllModel()V

    .line 60
    iget-object p1, p0, Lio/github/lazyimmortal/sesame/ui/SettingsActivity;->userId:Ljava/lang/String;

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->setCurrentUserId(Ljava/lang/String;)V

    .line 61
    iget-object p1, p0, Lio/github/lazyimmortal/sesame/ui/SettingsActivity;->userId:Ljava/lang/String;

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->load(Ljava/lang/String;)V

    .line 62
    iget-object p1, p0, Lio/github/lazyimmortal/sesame/ui/SettingsActivity;->userId:Ljava/lang/String;

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/idMap/CooperationIdMap;->load(Ljava/lang/String;)V

    .line 63
    iget-object p1, p0, Lio/github/lazyimmortal/sesame/ui/SettingsActivity;->userId:Ljava/lang/String;

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/idMap/VitalityBenefitIdMap;->load(Ljava/lang/String;)V

    .line 64
    iget-object p1, p0, Lio/github/lazyimmortal/sesame/ui/SettingsActivity;->userId:Ljava/lang/String;

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/idMap/GameCenterMallItemMap;->load(Ljava/lang/String;)V

    .line 65
    iget-object p1, p0, Lio/github/lazyimmortal/sesame/ui/SettingsActivity;->userId:Ljava/lang/String;

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/idMap/FarmOrnamentsIdMap;->load(Ljava/lang/String;)V

    .line 66
    iget-object p1, p0, Lio/github/lazyimmortal/sesame/ui/SettingsActivity;->userId:Ljava/lang/String;

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/idMap/MemberBenefitIdMap;->load(Ljava/lang/String;)V

    .line 67
    iget-object p1, p0, Lio/github/lazyimmortal/sesame/ui/SettingsActivity;->userId:Ljava/lang/String;

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/idMap/PromiseSimpleTemplateIdMap;->load(Ljava/lang/String;)V

    .line 68
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/TreeIdMap;->load()V

    .line 69
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/ReserveIdMap;->load()V

    .line 70
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/AnimalIdMap;->load()V

    .line 71
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/MarathonIdMap;->load()V

    .line 72
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/NewAncientTreeIdMap;->load()V

    .line 73
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/BeachIdMap;->load()V

    .line 74
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/PlantSceneIdMap;->load()V

    .line 75
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/IconRegistry;->load()V

    .line 76
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/IconRegistry;->prefetch()V

    .line 77
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/rpcRequestMap;->load()V

    .line 78
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/ForestHuntIdMap;->load()V

    .line 79
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/MemberCreditSesameTaskListMap;->load()V

    .line 80
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/AntForestVitalityTaskListMap;->load()V

    .line 81
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/AntForestHuntTaskListMap;->load()V

    .line 82
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/AntFarmDoFarmTaskListMap;->load()V

    .line 83
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/AntFarmDrawMachineTaskListMap;->load()V

    .line 84
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/AntFarmChickenChefTaskListMap;->load()V

    .line 85
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/AntDodoTaskListMap;->load()V

    .line 86
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/AntOceanAntiepTaskListMap;->load()V

    .line 87
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/AntOceanFishBlackListMap;->load()V

    .line 88
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/AntOrchardTaskListMap;->load()V

    .line 89
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/AntOrchardDrawTaskListMap;->load()V

    .line 90
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/GoldenBeansTaskListMap;->load()V

    .line 91
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/MonopolyTaskListMap;->load()V

    .line 92
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/AntStallTaskListMap;->load()V

    .line 93
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/AntSportsTaskListMap;->load()V

    .line 94
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/PathThemeMapListMap;->load()V

    .line 95
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/AntMemberTaskListMap;->load()V

    .line 96
    iget-object p1, p0, Lio/github/lazyimmortal/sesame/ui/SettingsActivity;->userId:Ljava/lang/String;

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/data/ConfigV2;->load(Ljava/lang/String;)Lio/github/lazyimmortal/sesame/data/ConfigV2;

    .line 97
    sget p1, Lio/github/lazyimmortal/sesame/R$layout;->activity_settings:I

    invoke-virtual {p0, p1}, Lio/github/lazyimmortal/sesame/ui/SettingsActivity;->setContentView(I)V

    .line 98
    iget-object p1, p0, Lio/github/lazyimmortal/sesame/ui/SettingsActivity;->userName:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 99
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget v0, Lio/github/lazyimmortal/sesame/R$string;->settings:I

    invoke-virtual {p0, v0}, Lio/github/lazyimmortal/sesame/ui/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lio/github/lazyimmortal/sesame/ui/SettingsActivity;->userName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/github/lazyimmortal/sesame/ui/SettingsActivity;->setBaseSubtitle(Ljava/lang/String;)V

    .line 101
    :cond_1
    sget p1, Lio/github/lazyimmortal/sesame/R$color;->textColorPrimary:I

    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lio/github/lazyimmortal/sesame/ui/SettingsActivity;->setBaseSubtitleTextColor(I)V

    .line 103
    iput-object p0, p0, Lio/github/lazyimmortal/sesame/ui/SettingsActivity;->context:Landroid/content/Context;

    .line 104
    sget p1, Lio/github/lazyimmortal/sesame/R$id;->tab_settings:I

    invoke-virtual {p0, p1}, Lio/github/lazyimmortal/sesame/ui/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TabHost;

    iput-object p1, p0, Lio/github/lazyimmortal/sesame/ui/SettingsActivity;->tabHost:Landroid/widget/TabHost;

    .line 105
    sget p1, Lio/github/lazyimmortal/sesame/R$id;->sv_tabs:I

    invoke-virtual {p0, p1}, Lio/github/lazyimmortal/sesame/ui/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ScrollView;

    iput-object p1, p0, Lio/github/lazyimmortal/sesame/ui/SettingsActivity;->svTabs:Landroid/widget/ScrollView;

    .line 106
    iget-object p1, p0, Lio/github/lazyimmortal/sesame/ui/SettingsActivity;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {p1}, Landroid/widget/TabHost;->setup()V

    .line 108
    invoke-static {}, Lio/github/lazyimmortal/sesame/data/task/ModelTask;->getModelConfigMap()Ljava/util/Map;

    move-result-object p1

    .line 109
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 110
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 111
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/lazyimmortal/sesame/data/ModelConfig;

    .line 112
    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/ModelConfig;->getFields()Lio/github/lazyimmortal/sesame/data/ModelFields;

    move-result-object v2

    .line 114
    iget-object v3, p0, Lio/github/lazyimmortal/sesame/ui/SettingsActivity;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v3, v1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/ModelConfig;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    new-instance v1, Lio/github/lazyimmortal/sesame/ui/SettingsActivity$1;

    invoke-direct {v1, p0, v2}, Lio/github/lazyimmortal/sesame/ui/SettingsActivity$1;-><init>(Lio/github/lazyimmortal/sesame/ui/SettingsActivity;Lio/github/lazyimmortal/sesame/data/ModelFields;)V

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    goto :goto_0

    .line 132
    :cond_2
    iget-object p1, p0, Lio/github/lazyimmortal/sesame/ui/SettingsActivity;->tabHost:Landroid/widget/TabHost;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TabHost;->setCurrentTab(I)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    const/4 v0, 0x1

    .line 189
    const-string v1, "\u5bfc\u51fa\u914d\u7f6e"

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0, v0, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    const/4 v0, 0x2

    .line 190
    const-string v1, "\u5bfc\u5165\u914d\u7f6e"

    invoke-interface {p1, v2, v0, v0, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    const/4 v0, 0x3

    .line 191
    const-string v1, "\u5220\u9664\u914d\u7f6e"

    invoke-interface {p1, v2, v0, v0, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    const/4 v0, 0x4

    .line 192
    const-string v1, "\u5355\u5411\u597d\u53cb"

    invoke-interface {p1, v2, v0, v0, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 193
    const-string v0, "TEST"

    invoke-static {}, Lio/github/lazyimmortal/sesame/data/ViewAppInfo;->getAppVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "sesame"

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/LibraryUtil;->loadLibrary(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    const-string v0, "\u5207\u6362\u81f3\u65b0UI"

    const/4 v1, 0x5

    invoke-interface {p1, v2, v1, v1, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 196
    :cond_0
    invoke-super {p0, p1}, Lio/github/lazyimmortal/sesame/ui/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7

    .line 201
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const-string v1, "android.intent.extra.TITLE"

    const-string v2, "*/*"

    const-string v3, "android.intent.category.OPENABLE"

    const/4 v4, 0x1

    if-eq v0, v4, :cond_5

    const/4 v5, 0x2

    if-eq v0, v5, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    .line 238
    :cond_0
    sget-object v0, Lio/github/lazyimmortal/sesame/data/AppConfig;->INSTANCE:Lio/github/lazyimmortal/sesame/data/AppConfig;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/github/lazyimmortal/sesame/data/AppConfig;->setNewUI(Ljava/lang/Boolean;)V

    .line 239
    invoke-static {}, Lio/github/lazyimmortal/sesame/data/AppConfig;->save()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 240
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 241
    const-string v1, "userId"

    iget-object v2, p0, Lio/github/lazyimmortal/sesame/ui/SettingsActivity;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 242
    const-string v1, "userName"

    iget-object v2, p0, Lio/github/lazyimmortal/sesame/ui/SettingsActivity;->userName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 243
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/ui/SettingsActivity;->finish()V

    .line 244
    invoke-virtual {p0, v0}, Lio/github/lazyimmortal/sesame/ui/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 247
    :cond_1
    const-string v0, "\u5207\u6362\u5931\u8d25"

    invoke-static {p0, v0}, Lio/github/lazyimmortal/sesame/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 235
    :cond_2
    new-instance v0, Lio/github/lazyimmortal/sesame/ui/SettingsActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lio/github/lazyimmortal/sesame/ui/SettingsActivity$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/entity/AlipayUser;->getList(Lio/github/lazyimmortal/sesame/entity/AlipayUser$Filter;)Ljava/util/List;

    move-result-object v3

    invoke-static {}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/common/SelectModelFieldFunc$-CC;->newMapInstance()Lio/github/lazyimmortal/sesame/data/modelFieldExt/common/SelectModelFieldFunc;

    move-result-object v4

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    sget-object v6, Lio/github/lazyimmortal/sesame/ui/ListDialog$ListType;->SHOW:Lio/github/lazyimmortal/sesame/ui/ListDialog$ListType;

    const-string v2, "\u5355\u5411\u597d\u53cb\u5217\u8868"

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lio/github/lazyimmortal/sesame/ui/ListDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/util/List;Lio/github/lazyimmortal/sesame/data/modelFieldExt/common/SelectModelFieldFunc;Ljava/lang/Boolean;Lio/github/lazyimmortal/sesame/ui/ListDialog$ListType;)V

    goto/16 :goto_0

    .line 217
    :cond_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lio/github/lazyimmortal/sesame/ui/SettingsActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u8b66\u544a"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u786e\u8ba4\u5220\u9664\u8be5\u914d\u7f6e\uff1f"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lio/github/lazyimmortal/sesame/R$string;->ok:I

    new-instance v2, Lio/github/lazyimmortal/sesame/ui/SettingsActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lio/github/lazyimmortal/sesame/ui/SettingsActivity$$ExternalSyntheticLambda0;-><init>(Lio/github/lazyimmortal/sesame/ui/SettingsActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lio/github/lazyimmortal/sesame/R$string;->cancel:I

    new-instance v2, Lio/github/lazyimmortal/sesame/ui/SettingsActivity$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lio/github/lazyimmortal/sesame/ui/SettingsActivity$$ExternalSyntheticLambda1;-><init>()V

    .line 232
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 210
    :cond_4
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 211
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 213
    const-string v2, "config_v2.json"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 214
    sget-object v1, Lio/github/lazyimmortal/sesame/ui/SettingsActivity;->IMPORT_REQUEST_CODE:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lio/github/lazyimmortal/sesame/ui/SettingsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 203
    :cond_5
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.CREATE_DOCUMENT"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 204
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 205
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 206
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lio/github/lazyimmortal/sesame/ui/SettingsActivity;->userName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]-config_v2.json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 207
    sget-object v1, Lio/github/lazyimmortal/sesame/ui/SettingsActivity;->EXPORT_REQUEST_CODE:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lio/github/lazyimmortal/sesame/ui/SettingsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 251
    :goto_0
    invoke-super {p0, p1}, Lio/github/lazyimmortal/sesame/ui/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4

    .line 174
    invoke-super {p0, p1}, Lio/github/lazyimmortal/sesame/ui/BaseActivity;->onWindowFocusChanged(Z)V

    .line 175
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/ui/SettingsActivity;->isDraw:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 176
    iget-object p1, p0, Lio/github/lazyimmortal/sesame/ui/SettingsActivity;->svTabs:Landroid/widget/ScrollView;

    invoke-virtual {p1}, Landroid/widget/ScrollView;->getWidth()I

    move-result p1

    .line 177
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/ui/SettingsActivity;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v0

    .line 178
    invoke-virtual {v0}, Landroid/widget/TabWidget;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 180
    invoke-virtual {v0, v2}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput p1, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 182
    :cond_0
    invoke-virtual {v0}, Landroid/widget/TabWidget;->requestLayout()V

    const/4 p1, 0x1

    .line 183
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lio/github/lazyimmortal/sesame/ui/SettingsActivity;->isDraw:Ljava/lang/Boolean;

    :cond_1
    return-void
.end method
