.class Lio/github/lazyimmortal/sesame/hook/ApplicationHook$3$1;
.super Ljava/lang/Object;
.source "ApplicationHook.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/github/lazyimmortal/sesame/hook/ApplicationHook$3;->afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private volatile lastExecTime:J

.field final synthetic this$1:Lio/github/lazyimmortal/sesame/hook/ApplicationHook$3;


# direct methods
.method constructor <init>(Lio/github/lazyimmortal/sesame/hook/ApplicationHook$3;)V
    .locals 2

    .line 313
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook$3$1;->this$1:Lio/github/lazyimmortal/sesame/hook/ApplicationHook$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 315
    iput-wide v0, p0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook$3$1;->lastExecTime:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 319
    const-string v0, "\u5f00\u59cb\u5207\u6362\u7528\u6237"

    invoke-static {}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->access$500()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 322
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u5e94\u7528\u7248\u672c\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->access$100()Lio/github/lazyimmortal/sesame/entity/AlipayVersion;

    move-result-object v2

    invoke-virtual {v2}, Lio/github/lazyimmortal/sesame/entity/AlipayVersion;->getVersionString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    .line 323
    const-string v1, "\u6a21\u5757\u7248\u672c\uff1a1.12\uff08\u4ea4\u6d41\u66f4\u65b0QQ\u7fa4\uff1a694474777\uff09"

    invoke-static {v1}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    .line 324
    const-string v1, "\u5f00\u59cb\u6267\u884c"

    invoke-static {v1}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    .line 326
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/Log;->infoNewLine()V

    .line 328
    :try_start_0
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/normal/base/BaseModel;->getCheckInterval()Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField$MultiplyIntegerModelField;

    move-result-object v1

    invoke-virtual {v1}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField$MultiplyIntegerModelField;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 329
    iget-wide v2, p0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook$3$1;->lastExecTime:J

    const-wide/16 v4, 0x7d0

    add-long/2addr v2, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    .line 330
    const-string v0, "\u6267\u884c\u95f4\u9694\u8f83\u77ed\uff0c\u8df3\u8fc7\u6267\u884c"

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    int-to-long v0, v1

    .line 331
    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->access$1300(J)V

    return-void

    .line 334
    :cond_1
    invoke-static {}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->updateDay()V

    .line 335
    invoke-static {}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->getUserId()Ljava/lang/String;

    move-result-object v2

    .line 336
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getCurrentUid()Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_8

    if-nez v3, :cond_2

    goto/16 :goto_1

    .line 342
    :cond_2
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 343
    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    .line 344
    invoke-static {v0}, Lio/github/lazyimmortal/sesame/hook/Toast;->show(Ljava/lang/CharSequence;)V

    .line 345
    invoke-static {}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->reLogin()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    return-void

    :cond_3
    const/4 v0, 0x1

    .line 350
    :try_start_1
    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Status;->getWateredFriendToday(Z)V

    .line 351
    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Status;->getWateringFriendToday(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 353
    :try_start_2
    invoke-static {}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->access$400()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u81ea\u52a8\u7edf\u8ba1\u6d47\u6c34\u60c5\u51b5\u5931\u8d25:"

    invoke-static {v2, v3}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    invoke-static {}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->access$400()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 356
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook$3$1;->lastExecTime:J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 358
    :try_start_3
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v2, Lio/github/lazyimmortal/sesame/hook/ApplicationHook$3$1$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook$3$1$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {v0, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 359
    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 360
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 361
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0xa

    invoke-virtual {v0, v3, v4, v2}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_5

    .line 362
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x2710

    sub-long/2addr v2, v0

    iget-wide v0, p0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook$3$1;->lastExecTime:J

    add-long/2addr v2, v0

    const-wide/16 v0, 0x0

    cmp-long v4, v2, v0

    if-lez v4, :cond_4

    .line 364
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 366
    :cond_4
    const-string v0, "\u6267\u884c\u5931\u8d25\uff1a\u68c0\u67e5\u8d85\u65f6"

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    .line 367
    invoke-static {}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->reLogin()V

    return-void

    .line 370
    :cond_5
    invoke-static {}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->access$1400()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 382
    :try_start_4
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/base/TaskCommon;->update()V

    .line 383
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/data/task/ModelTask;->startAllTask(Ljava/lang/Boolean;)V

    .line 384
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook$3$1;->lastExecTime:J
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 387
    :try_start_5
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/normal/base/BaseModel;->getExecAtTimeList()Lio/github/lazyimmortal/sesame/data/modelFieldExt/ListModelField$ListJoinCommaToStringModelField;

    move-result-object v0

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/ListModelField$ListJoinCommaToStringModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_7

    .line 389
    iget-wide v2, p0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook$3$1;->lastExecTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v2}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->getCalendarByTimeMillis(Ljava/lang/Long;)Ljava/util/Calendar;

    move-result-object v2

    .line 390
    iget-wide v3, p0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook$3$1;->lastExecTime:J

    int-to-long v5, v1

    add-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v3}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->getCalendarByTimeMillis(Ljava/lang/Long;)Ljava/util/Calendar;

    move-result-object v3

    .line 391
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 392
    invoke-static {v4}, Lio/github/lazyimmortal/sesame/util/TimeUtil;->getTodayCalendarByTimeStr(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 393
    invoke-virtual {v2, v5}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v6

    if-gez v6, :cond_6

    invoke-virtual {v3, v5}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v6

    if-lez v6, :cond_6

    .line 394
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8bbe\u7f6e\u5b9a\u65f6\u6267\u884c:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    .line 395
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook$3$1;->lastExecTime:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->access$1300(J)V

    .line 396
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/FileUtil;->clearLog()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 402
    :try_start_6
    invoke-static {}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->access$400()Ljava/lang/String;

    move-result-object v2

    const-string v3, "execAtTime err:"

    invoke-static {v2, v3}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    invoke-static {}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->access$400()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_7
    int-to-long v0, v1

    .line 406
    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->access$1300(J)V

    .line 407
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/FileUtil;->clearLog()V

    goto :goto_2

    :catch_1
    move-exception v0

    .line 377
    const-string v1, "\u6267\u884c\u5931\u8d25\uff1a\u68c0\u67e5\u5f02\u5e38"

    invoke-static {v1}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    .line 378
    invoke-static {}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->reLogin()V

    .line 379
    invoke-static {}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->access$400()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 373
    :catch_2
    const-string v0, "\u6267\u884c\u5931\u8d25\uff1a\u68c0\u67e5\u4e2d\u65ad"

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    .line 374
    invoke-static {}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->reLogin()V

    return-void

    .line 338
    :cond_8
    :goto_1
    const-string v0, "\u7528\u6237\u4e3a\u7a7a\uff0c\u653e\u5f03\u6267\u884c"

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    .line 339
    invoke-static {}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->reLogin()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    return-void

    :catch_3
    move-exception v0

    .line 409
    const-string v1, "\u6267\u884c\u5f02\u5e38:"

    invoke-static {v1}, Lio/github/lazyimmortal/sesame/util/Log;->record(Ljava/lang/String;)V

    .line 410
    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method
