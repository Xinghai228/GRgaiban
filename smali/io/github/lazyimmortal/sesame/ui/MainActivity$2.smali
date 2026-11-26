.class Lio/github/lazyimmortal/sesame/ui/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/github/lazyimmortal/sesame/ui/MainActivity;->onWindowFocusChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/github/lazyimmortal/sesame/ui/MainActivity;


# direct methods
.method constructor <init>(Lio/github/lazyimmortal/sesame/ui/MainActivity;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/ui/MainActivity$2;->this$0:Lio/github/lazyimmortal/sesame/ui/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 154
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/ui/MainActivity$2;->this$0:Lio/github/lazyimmortal/sesame/ui/MainActivity;

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/ui/MainActivity;->access$500(Lio/github/lazyimmortal/sesame/ui/MainActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 157
    :cond_0
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/ui/MainActivity$2;->this$0:Lio/github/lazyimmortal/sesame/ui/MainActivity;

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/PermissionUtil;->checkOrRequestFilePermissions(Landroidx/appcompat/app/AppCompatActivity;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/ui/MainActivity;->access$602(Lio/github/lazyimmortal/sesame/ui/MainActivity;Z)Z

    .line 158
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/ui/MainActivity$2;->this$0:Lio/github/lazyimmortal/sesame/ui/MainActivity;

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/ui/MainActivity;->access$600(Lio/github/lazyimmortal/sesame/ui/MainActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 159
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/ui/MainActivity$2;->this$0:Lio/github/lazyimmortal/sesame/ui/MainActivity;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/ui/MainActivity;->onResume()V

    return-void

    .line 162
    :cond_1
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/ui/MainActivity$2;->this$0:Lio/github/lazyimmortal/sesame/ui/MainActivity;

    const-string v1, "\u672a\u83b7\u53d6\u6587\u4ef6\u8bfb\u5199\u6743\u9650"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 163
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/ui/MainActivity$2;->this$0:Lio/github/lazyimmortal/sesame/ui/MainActivity;

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/ui/MainActivity;->access$700(Lio/github/lazyimmortal/sesame/ui/MainActivity;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
