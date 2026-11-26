.class Lio/github/lazyimmortal/sesame/ui/ExtensionsActivity$6;
.super Ljava/lang/Object;
.source "ExtensionsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/github/lazyimmortal/sesame/ui/ExtensionsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/github/lazyimmortal/sesame/ui/ExtensionsActivity;


# direct methods
.method constructor <init>(Lio/github/lazyimmortal/sesame/ui/ExtensionsActivity;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/ui/ExtensionsActivity$6;->this$0:Lio/github/lazyimmortal/sesame/ui/ExtensionsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 86
    iget-object p1, p0, Lio/github/lazyimmortal/sesame/ui/ExtensionsActivity$6;->this$0:Lio/github/lazyimmortal/sesame/ui/ExtensionsActivity;

    const-string v0, "getUnlockTreeItems"

    const/4 v1, 0x0

    const-string v2, "antForest"

    invoke-static {p1, v2, v0, v1}, Lio/github/lazyimmortal/sesame/ui/ExtensionsActivity;->access$000(Lio/github/lazyimmortal/sesame/ui/ExtensionsActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object p1, p0, Lio/github/lazyimmortal/sesame/ui/ExtensionsActivity$6;->this$0:Lio/github/lazyimmortal/sesame/ui/ExtensionsActivity;

    const-string v0, "\u5df2\u53d1\u9001\u67e5\u8be2\u8bf7\u6c42\uff0c\u8bf7\u5728\u68ee\u6797\u65e5\u5fd7\u67e5\u770b\u7ed3\u679c\uff01"

    invoke-static {p1, v0}, Lio/github/lazyimmortal/sesame/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method
