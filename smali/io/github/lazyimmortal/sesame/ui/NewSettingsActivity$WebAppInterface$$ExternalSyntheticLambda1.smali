.class public final synthetic Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity$WebAppInterface$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;


# direct methods
.method public synthetic constructor <init>(Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity$WebAppInterface$$ExternalSyntheticLambda1;->f$0:Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity$WebAppInterface$$ExternalSyntheticLambda1;->f$0:Lio/github/lazyimmortal/sesame/ui/NewSettingsActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
