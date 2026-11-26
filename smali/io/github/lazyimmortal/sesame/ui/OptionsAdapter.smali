.class public Lio/github/lazyimmortal/sesame/ui/OptionsAdapter;
.super Landroid/widget/BaseAdapter;
.source "OptionsAdapter.java"


# static fields
.field private static adapter:Lio/github/lazyimmortal/sesame/ui/OptionsAdapter;


# instance fields
.field context:Landroid/content/Context;

.field list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 27
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/ui/OptionsAdapter;->context:Landroid/content/Context;

    .line 28
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lio/github/lazyimmortal/sesame/ui/OptionsAdapter;->list:Ljava/util/ArrayList;

    .line 29
    const-string v0, "\u67e5\u770b\u68ee\u6797"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    iget-object p1, p0, Lio/github/lazyimmortal/sesame/ui/OptionsAdapter;->list:Ljava/util/ArrayList;

    const-string v0, "\u67e5\u770b\u5e84\u56ed"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    iget-object p1, p0, Lio/github/lazyimmortal/sesame/ui/OptionsAdapter;->list:Ljava/util/ArrayList;

    const-string v0, "\u67e5\u770b\u8d44\u6599"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    iget-object p1, p0, Lio/github/lazyimmortal/sesame/ui/OptionsAdapter;->list:Ljava/util/ArrayList;

    const-string v0, "\u5220\u9664"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static get(Landroid/content/Context;)Lio/github/lazyimmortal/sesame/ui/OptionsAdapter;
    .locals 1

    .line 18
    sget-object v0, Lio/github/lazyimmortal/sesame/ui/OptionsAdapter;->adapter:Lio/github/lazyimmortal/sesame/ui/OptionsAdapter;

    if-nez v0, :cond_0

    .line 19
    new-instance v0, Lio/github/lazyimmortal/sesame/ui/OptionsAdapter;

    invoke-direct {v0, p0}, Lio/github/lazyimmortal/sesame/ui/OptionsAdapter;-><init>(Landroid/content/Context;)V

    sput-object v0, Lio/github/lazyimmortal/sesame/ui/OptionsAdapter;->adapter:Lio/github/lazyimmortal/sesame/ui/OptionsAdapter;

    .line 20
    :cond_0
    sget-object p0, Lio/github/lazyimmortal/sesame/ui/OptionsAdapter;->adapter:Lio/github/lazyimmortal/sesame/ui/OptionsAdapter;

    return-object p0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 37
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/ui/OptionsAdapter;->list:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 42
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/ui/OptionsAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    if-nez p2, :cond_0

    .line 54
    iget-object p2, p0, Lio/github/lazyimmortal/sesame/ui/OptionsAdapter;->context:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const p3, 0x1090003

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 56
    :cond_0
    move-object p3, p2

    check-cast p3, Landroid/widget/TextView;

    .line 57
    invoke-virtual {p0, p1}, Lio/github/lazyimmortal/sesame/ui/OptionsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method
