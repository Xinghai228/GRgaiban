.class public final synthetic Lio/github/lazyimmortal/sesame/ui/ListAdapter$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Landroid/widget/ImageView;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/github/lazyimmortal/sesame/ui/ListAdapter$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lio/github/lazyimmortal/sesame/ui/ListAdapter$$ExternalSyntheticLambda1;->f$1:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/ui/ListAdapter$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lio/github/lazyimmortal/sesame/ui/ListAdapter$$ExternalSyntheticLambda1;->f$1:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->lambda$loadTaskIcon$4(Ljava/lang/String;Landroid/widget/ImageView;)V

    return-void
.end method
