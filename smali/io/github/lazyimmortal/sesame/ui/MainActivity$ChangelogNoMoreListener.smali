.class Lio/github/lazyimmortal/sesame/ui/MainActivity$ChangelogNoMoreListener;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lio/github/lazyimmortal/sesame/ui/MainActivity;


# direct methods
.method constructor <init>(Lio/github/lazyimmortal/sesame/ui/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/github/lazyimmortal/sesame/ui/MainActivity$ChangelogNoMoreListener;->this$0:Lio/github/lazyimmortal/sesame/ui/MainActivity;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lio/github/lazyimmortal/sesame/ui/MainActivity$ChangelogNoMoreListener;->this$0:Lio/github/lazyimmortal/sesame/ui/MainActivity;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/ui/MainActivity;->setChangelogDismissed()V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
