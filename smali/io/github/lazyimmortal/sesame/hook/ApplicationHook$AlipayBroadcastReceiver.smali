.class Lio/github/lazyimmortal/sesame/hook/ApplicationHook$AlipayBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ApplicationHook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/lazyimmortal/sesame/hook/ApplicationHook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlipayBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lio/github/lazyimmortal/sesame/hook/ApplicationHook;


# direct methods
.method private constructor <init>(Lio/github/lazyimmortal/sesame/hook/ApplicationHook;)V
    .locals 0

    .line 1156
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook$AlipayBroadcastReceiver;->this$0:Lio/github/lazyimmortal/sesame/hook/ApplicationHook;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/github/lazyimmortal/sesame/hook/ApplicationHook;Lio/github/lazyimmortal/sesame/hook/ApplicationHook$1;)V
    .locals 0

    .line 1156
    invoke-direct {p0, p1}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook$AlipayBroadcastReceiver;-><init>(Lio/github/lazyimmortal/sesame/hook/ApplicationHook;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$onReceive$0$io-github-lazyimmortal-sesame-hook-ApplicationHook$AlipayBroadcastReceiver(Landroid/content/BroadcastReceiver$PendingResult;)V
    .locals 2

    .line 1169
    :try_start_0
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook$AlipayBroadcastReceiver;->this$0:Lio/github/lazyimmortal/sesame/hook/ApplicationHook;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->access$600(Lio/github/lazyimmortal/sesame/hook/ApplicationHook;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 1171
    invoke-static {}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->access$400()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1173
    :goto_0
    invoke-virtual {p1}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    return-void
.end method

.method synthetic lambda$onReceive$1$io-github-lazyimmortal-sesame-hook-ApplicationHook$AlipayBroadcastReceiver(Landroid/content/BroadcastReceiver$PendingResult;)V
    .locals 2

    .line 1181
    :try_start_0
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook$AlipayBroadcastReceiver;->this$0:Lio/github/lazyimmortal/sesame/hook/ApplicationHook;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->access$600(Lio/github/lazyimmortal/sesame/hook/ApplicationHook;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 1183
    invoke-static {}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->access$400()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1185
    :goto_0
    invoke-virtual {p1}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 1159
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1160
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sesame broadcast action:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " intent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;)V

    if-eqz v0, :cond_6

    .line 1162
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "com.eg.android.AlipayGphone.sesame.execute"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_1
    const-string v1, "com.eg.android.AlipayGphone.sesame.rpctest"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_2
    const-string v1, "com.eg.android.AlipayGphone.sesame.restart"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_3
    const-string v1, "com.eg.android.AlipayGphone.sesame.reLogin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_4
    const-string v1, "com.eg.android.AlipayGphone.sesame.status"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto/16 :goto_1

    .line 1178
    :pswitch_0
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook$AlipayBroadcastReceiver;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object p1

    .line 1179
    new-instance p2, Ljava/lang/Thread;

    new-instance v0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook$AlipayBroadcastReceiver$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook$AlipayBroadcastReceiver$$ExternalSyntheticLambda1;-><init>(Lio/github/lazyimmortal/sesame/hook/ApplicationHook$AlipayBroadcastReceiver;Landroid/content/BroadcastReceiver$PendingResult;)V

    const-string p1, "Sesame-Execute"

    invoke-direct {p2, v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 1186
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    goto/16 :goto_1

    .line 1201
    :pswitch_1
    :try_start_0
    const-string p1, "method"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1202
    const-string v0, "data"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1203
    const-string v1, "type"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1205
    invoke-static {p1, v0, p2}, Lio/github/lazyimmortal/sesame/model/extensions/TestRpc;->start(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 1207
    invoke-static {}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->access$400()Ljava/lang/String;

    move-result-object p2

    const-string v0, "sesame rpctest err:"

    invoke-static {p2, v0}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1208
    invoke-static {}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->access$400()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1164
    :pswitch_2
    const-string p1, "userId"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1165
    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_5

    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getCurrentUid()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1166
    :cond_5
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook$AlipayBroadcastReceiver;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object p1

    .line 1167
    new-instance p2, Ljava/lang/Thread;

    new-instance v0, Lio/github/lazyimmortal/sesame/hook/ApplicationHook$AlipayBroadcastReceiver$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook$AlipayBroadcastReceiver$$ExternalSyntheticLambda0;-><init>(Lio/github/lazyimmortal/sesame/hook/ApplicationHook$AlipayBroadcastReceiver;Landroid/content/BroadcastReceiver$PendingResult;)V

    const-string p1, "Sesame-Restart"

    invoke-direct {p2, v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 1174
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    goto :goto_1

    .line 1189
    :pswitch_3
    invoke-static {}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->reLogin()V

    goto :goto_1

    .line 1193
    :pswitch_4
    :try_start_1
    new-instance p2, Landroid/content/Intent;

    const-string v0, "io.github.lazyimmortal.sesame.status"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    .line 1195
    invoke-static {}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->access$400()Ljava/lang/String;

    move-result-object p2

    const-string v0, "sesame sendBroadcast status err:"

    invoke-static {p2, v0}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1196
    invoke-static {}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->access$400()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x622a1cd7 -> :sswitch_4
        -0x32c2d361 -> :sswitch_3
        -0x309b0e48 -> :sswitch_2
        -0x1eb72860 -> :sswitch_1
        0x3f534b1e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
