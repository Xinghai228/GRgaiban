.class public final synthetic Lio/github/lazyimmortal/sesame/ui/ListAdapter$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic f$0:Lio/github/lazyimmortal/sesame/ui/ListAdapter;


# direct methods
.method public synthetic constructor <init>(Lio/github/lazyimmortal/sesame/ui/ListAdapter;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/github/lazyimmortal/sesame/ui/ListAdapter$$ExternalSyntheticLambda3;->f$0:Lio/github/lazyimmortal/sesame/ui/ListAdapter;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .line 0
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/ui/ListAdapter$$ExternalSyntheticLambda3;->f$0:Lio/github/lazyimmortal/sesame/ui/ListAdapter;

    check-cast p1, Lio/github/lazyimmortal/sesame/entity/IdAndName;

    check-cast p2, Lio/github/lazyimmortal/sesame/entity/IdAndName;

    invoke-virtual {v0, p1, p2}, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->lambda$setSelectedList$0$io-github-lazyimmortal-sesame-ui-ListAdapter(Lio/github/lazyimmortal/sesame/entity/IdAndName;Lio/github/lazyimmortal/sesame/entity/IdAndName;)I

    move-result p1

    return p1
.end method
