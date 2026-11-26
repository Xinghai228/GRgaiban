.class Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity$WebViewCallback;
.super Ljava/lang/Object;
.source "NewSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WebViewCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;


# direct methods
.method private constructor <init>(Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;)V
    .locals 0

    .line 317
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity$WebViewCallback;->this$0:Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity$1;)V
    .locals 0

    .line 317
    invoke-direct {p0, p1}, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity$WebViewCallback;-><init>(Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;)V

    return-void
.end method


# virtual methods
.method public Log(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    return-void
.end method

.method public getBuildInfo()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 332
    const-string v0, "io.github.lazyimmortal.sesame:1.12"

    return-object v0
.end method

.method public getField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 436
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity$WebViewCallback;->this$0:Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;->access$300(Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;)V

    .line 437
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity$WebViewCallback;->this$0:Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;->access$700(Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;)V

    .line 438
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity$WebViewCallback;->this$0:Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;->access$900(Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;)V

    .line 439
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u0000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 440
    iget-object v1, p0, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity$WebViewCallback;->this$0:Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;

    invoke-static {v1}, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;->access$800(Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    return-object v1

    .line 444
    :cond_0
    invoke-static {}, Lio/github/lazyimmortal/sesame/data/task/ModelTask;->getModelConfigMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/github/lazyimmortal/sesame/data/ModelConfig;

    if-eqz p1, :cond_1

    .line 446
    invoke-virtual {p1, p2}, Lio/github/lazyimmortal/sesame/data/ModelConfig;->getModelField(Ljava/lang/String;)Lio/github/lazyimmortal/sesame/data/ModelField;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 448
    invoke-static {p1}, Lio/github/lazyimmortal/sesame/ui/dto/ModelFieldInfoDto;->toInfoDto(Lio/github/lazyimmortal/sesame/data/ModelField;)Lio/github/lazyimmortal/sesame/ui/dto/ModelFieldInfoDto;

    move-result-object p1

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 449
    iget-object p2, p0, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity$WebViewCallback;->this$0:Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;

    invoke-static {p2}, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;->access$800(Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getGroup()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 342
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity$WebViewCallback;->this$0:Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;->access$300(Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;)V

    .line 343
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity$WebViewCallback;->this$0:Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;->access$600(Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getModel(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 391
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity$WebViewCallback;->this$0:Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;->access$300(Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;)V

    .line 392
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity$WebViewCallback;->this$0:Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;->access$700(Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;)V

    .line 393
    invoke-static {}, Lio/github/lazyimmortal/sesame/data/task/ModelTask;->getModelConfigMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/github/lazyimmortal/sesame/data/ModelConfig;

    if-eqz p1, :cond_1

    .line 395
    invoke-virtual {p1}, Lio/github/lazyimmortal/sesame/data/ModelConfig;->getFields()Lio/github/lazyimmortal/sesame/data/ModelFields;

    move-result-object p1

    .line 396
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 397
    invoke-virtual {p1}, Lio/github/lazyimmortal/sesame/data/ModelFields;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/github/lazyimmortal/sesame/data/ModelField;

    .line 398
    invoke-static {v1}, Lio/github/lazyimmortal/sesame/ui/dto/ModelFieldShowDto;->toShowDto(Lio/github/lazyimmortal/sesame/data/ModelField;)Lio/github/lazyimmortal/sesame/ui/dto/ModelFieldShowDto;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 400
    :cond_0
    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getModelByGroup(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 348
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity$WebViewCallback;->this$0:Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;->access$300(Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;)V

    .line 349
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity$WebViewCallback;->this$0:Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;->access$700(Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;)V

    .line 350
    invoke-static {p1}, Lio/github/lazyimmortal/sesame/data/ModelGroup;->getByCode(Ljava/lang/String;)Lio/github/lazyimmortal/sesame/data/ModelGroup;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/data/task/ModelTask;->getGroupModelConfig(Lio/github/lazyimmortal/sesame/data/ModelGroup;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 351
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 352
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/github/lazyimmortal/sesame/data/ModelConfig;

    .line 353
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 354
    invoke-virtual {v2}, Lio/github/lazyimmortal/sesame/data/ModelConfig;->getFields()Lio/github/lazyimmortal/sesame/data/ModelFields;

    move-result-object v4

    invoke-virtual {v4}, Lio/github/lazyimmortal/sesame/data/ModelFields;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/github/lazyimmortal/sesame/data/ModelField;

    .line 355
    invoke-static {v5}, Lio/github/lazyimmortal/sesame/ui/dto/ModelFieldShowDto;->toShowDto(Lio/github/lazyimmortal/sesame/data/ModelField;)Lio/github/lazyimmortal/sesame/ui/dto/ModelFieldShowDto;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 357
    :cond_0
    new-instance v4, Lio/github/lazyimmortal/sesame/ui/dto/ModelDto;

    invoke-virtual {v2}, Lio/github/lazyimmortal/sesame/data/ModelConfig;->getCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lio/github/lazyimmortal/sesame/data/ModelConfig;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v5, v2, p1, v3}, Lio/github/lazyimmortal/sesame/ui/dto/ModelDto;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 359
    :cond_1
    invoke-static {v1}, Lio/github/lazyimmortal/sesame/util/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTabs()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 321
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity$WebViewCallback;->this$0:Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;->access$300(Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;)V

    .line 322
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity$WebViewCallback;->this$0:Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;->access$400(Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 337
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity$WebViewCallback;->this$0:Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;->access$500(Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isListsReady()Z
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 458
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity$WebViewCallback;->this$0:Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;->access$1000(Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-object v0, p0, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity$WebViewCallback;->this$0:Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;->access$1100(Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-object v0, p0, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity$WebViewCallback;->this$0:Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;->access$1200(Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 463
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity$WebViewCallback;->this$0:Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;->access$300(Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;)V

    .line 464
    invoke-static {}, Lio/github/lazyimmortal/sesame/data/task/ModelTask;->getModelConfigMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/github/lazyimmortal/sesame/data/ModelConfig;

    if-eqz p1, :cond_0

    .line 467
    :try_start_0
    invoke-virtual {p1, p2}, Lio/github/lazyimmortal/sesame/data/ModelConfig;->getModelField(Ljava/lang/String;)Lio/github/lazyimmortal/sesame/data/ModelField;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 469
    invoke-virtual {p1, p3}, Lio/github/lazyimmortal/sesame/data/ModelField;->setConfigValue(Ljava/lang/String;)V

    .line 470
    iget-object p1, p0, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity$WebViewCallback;->this$0:Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;->access$800(Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 471
    const-string p1, "SUCCESS"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 475
    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/Throwable;)V

    .line 478
    :cond_0
    const-string p1, "FAILED"

    return-object p1
.end method

.method public setModel(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 407
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity$WebViewCallback;->this$0:Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;->access$300(Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;)V

    .line 408
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity$WebViewCallback;->this$0:Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;->access$700(Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;)V

    .line 409
    invoke-static {}, Lio/github/lazyimmortal/sesame/data/task/ModelTask;->getModelConfigMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/github/lazyimmortal/sesame/data/ModelConfig;

    if-eqz p1, :cond_2

    .line 412
    :try_start_0
    invoke-virtual {p1}, Lio/github/lazyimmortal/sesame/data/ModelConfig;->getFields()Lio/github/lazyimmortal/sesame/data/ModelFields;

    move-result-object p1

    .line 413
    new-instance v0, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity$WebViewCallback$2;

    invoke-direct {v0, p0}, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity$WebViewCallback$2;-><init>(Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity$WebViewCallback;)V

    invoke-static {p2, v0}, Lio/github/lazyimmortal/sesame/util/JsonUtil;->parseObject(Ljava/lang/String;Lcom/fasterxml/jackson/core/type/TypeReference;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    .line 415
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity$WebViewCallback;->this$0:Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;->access$800(Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 416
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 417
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/github/lazyimmortal/sesame/ui/dto/ModelFieldShowDto;

    if-eqz v1, :cond_0

    .line 419
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/github/lazyimmortal/sesame/data/ModelFields;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/lazyimmortal/sesame/data/ModelField;

    if-eqz v0, :cond_0

    .line 421
    invoke-virtual {v1}, Lio/github/lazyimmortal/sesame/ui/dto/ModelFieldShowDto;->getConfigValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/github/lazyimmortal/sesame/data/ModelField;->setConfigValue(Ljava/lang/String;)V

    goto :goto_0

    .line 425
    :cond_1
    const-string p1, "SUCCESS"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 428
    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/Throwable;)V

    .line 431
    :cond_2
    const-string p1, "FAILED"

    return-object p1
.end method

.method public setModelByGroup(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 364
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity$WebViewCallback;->this$0:Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;->access$300(Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;)V

    .line 365
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity$WebViewCallback;->this$0:Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;->access$700(Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;)V

    .line 366
    new-instance v0, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity$WebViewCallback$1;

    invoke-direct {v0, p0}, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity$WebViewCallback$1;-><init>(Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity$WebViewCallback;)V

    invoke-static {p2, v0}, Lio/github/lazyimmortal/sesame/util/JsonUtil;->parseObject(Ljava/lang/String;Lcom/fasterxml/jackson/core/type/TypeReference;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 368
    invoke-static {p1}, Lio/github/lazyimmortal/sesame/data/ModelGroup;->getByCode(Ljava/lang/String;)Lio/github/lazyimmortal/sesame/data/ModelGroup;

    move-result-object p1

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/data/task/ModelTask;->getGroupModelConfig(Lio/github/lazyimmortal/sesame/data/ModelGroup;)Ljava/util/Map;

    move-result-object p1

    .line 369
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity$WebViewCallback;->this$0:Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;->access$800(Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 370
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/lazyimmortal/sesame/ui/dto/ModelDto;

    .line 371
    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/ui/dto/ModelDto;->getModelCode()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/github/lazyimmortal/sesame/data/ModelConfig;

    if-eqz v1, :cond_0

    .line 373
    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/ui/dto/ModelDto;->getModelFields()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 375
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/github/lazyimmortal/sesame/ui/dto/ModelFieldShowDto;

    if-eqz v2, :cond_1

    .line 377
    invoke-virtual {v2}, Lio/github/lazyimmortal/sesame/ui/dto/ModelFieldShowDto;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/github/lazyimmortal/sesame/data/ModelConfig;->getModelField(Ljava/lang/String;)Lio/github/lazyimmortal/sesame/data/ModelField;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 379
    invoke-virtual {v2}, Lio/github/lazyimmortal/sesame/ui/dto/ModelFieldShowDto;->getConfigValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lio/github/lazyimmortal/sesame/data/ModelField;->setConfigValue(Ljava/lang/String;)V

    goto :goto_0

    .line 386
    :cond_2
    const-string p1, "SUCCESS"

    return-object p1
.end method
