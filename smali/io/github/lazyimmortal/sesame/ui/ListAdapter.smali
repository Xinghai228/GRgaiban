.class public Lio/github/lazyimmortal/sesame/ui/ListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/lazyimmortal/sesame/ui/ListAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static adapter:Lio/github/lazyimmortal/sesame/ui/ListAdapter;

.field private static final avatarCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static final avatarExecutor:Ljava/util/concurrent/ExecutorService;

.field private static avatarZip:Lio/github/lazyimmortal/sesame/util/ImageZipCache;

.field private static listType:Lio/github/lazyimmortal/sesame/ui/ListDialog$ListType;

.field private static final mainHandler:Landroid/os/Handler;

.field private static final taskIconCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field public static viewHolderList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/github/lazyimmortal/sesame/ui/ListAdapter$ViewHolder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field context:Landroid/content/Context;

.field filterWord:Ljava/lang/String;

.field filteredList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/github/lazyimmortal/sesame/entity/IdAndName;",
            ">;"
        }
    .end annotation
.end field

.field findIndex:I

.field findWord:Ljava/lang/String;

.field private fwDontCollectSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private fwEnergyCmp:I

.field private fwEnergyEnable:Z

.field private fwEnergyField:I

.field private fwEnergyValue:J

.field private fwOnlyDeleted:Z

.field private fwOnlyShield:Z

.field private fwShowDontCollect:Z

.field fwSortEnabled:Z

.field list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lio/github/lazyimmortal/sesame/entity/IdAndName;",
            ">;"
        }
    .end annotation
.end field

.field selectModelFieldFunc:Lio/github/lazyimmortal/sesame/data/modelFieldExt/common/SelectModelFieldFunc;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 503
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->avatarCache:Ljava/util/Map;

    const/4 v0, 0x2

    .line 504
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->avatarExecutor:Ljava/util/concurrent/ExecutorService;

    .line 505
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->mainHandler:Landroid/os/Handler;

    .line 552
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->taskIconCache:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 81
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, -0x1

    .line 64
    iput v0, p0, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->findIndex:I

    const/4 v0, 0x0

    .line 65
    iput-object v0, p0, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->findWord:Ljava/lang/String;

    .line 66
    iput-object v0, p0, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->filterWord:Ljava/lang/String;

    .line 67
    iput-object v0, p0, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->filteredList:Ljava/util/List;

    const/4 v1, 0x0

    .line 70
    iput-boolean v1, p0, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->fwOnlyShield:Z

    const/4 v2, 0x1

    .line 71
    iput-boolean v2, p0, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->fwShowDontCollect:Z

    .line 72
    iput-boolean v1, p0, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->fwOnlyDeleted:Z

    .line 73
    iput-object v0, p0, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->fwDontCollectSet:Ljava/util/Set;

    .line 76
    iput-boolean v1, p0, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->fwEnergyEnable:Z

    .line 77
    iput v1, p0, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->fwEnergyField:I

    .line 78
    iput v1, p0, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->fwEnergyCmp:I

    const-wide/16 v0, 0x0

    .line 79
    iput-wide v0, p0, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->fwEnergyValue:J

    .line 82
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->context:Landroid/content/Context;

    return-void
.end method

.method private static declared-synchronized avatarZip()Lio/github/lazyimmortal/sesame/util/ImageZipCache;
    .locals 5

    const-class v0, Lio/github/lazyimmortal/sesame/ui/ListAdapter;

    monitor-enter v0

    .line 540
    :try_start_0
    sget-object v1, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->avatarZip:Lio/github/lazyimmortal/sesame/util/ImageZipCache;

    if-nez v1, :cond_0

    .line 541
    new-instance v1, Lio/github/lazyimmortal/sesame/util/ImageZipCache;

    new-instance v2, Ljava/io/File;

    sget-object v3, Lio/github/lazyimmortal/sesame/util/FileUtil;->MAIN_DIRECTORY_FILE:Ljava/io/File;

    const-string v4, "avatar.zip"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lio/github/lazyimmortal/sesame/util/ImageZipCache;-><init>(Ljava/io/File;)V

    sput-object v1, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->avatarZip:Lio/github/lazyimmortal/sesame/util/ImageZipCache;

    .line 543
    :cond_0
    sget-object v1, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->avatarZip:Lio/github/lazyimmortal/sesame/util/ImageZipCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private cmpPass(J)Z
    .locals 4

    iget v0, p0, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->fwEnergyCmp:I

    if-nez v0, :cond_0

    iget-wide v0, p0, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->fwEnergyValue:J

    cmp-long v2, p1, v0

    if-lez v2, :cond_1

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->fwEnergyValue:J

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private static downloadAndCache(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .line 548
    invoke-static {}, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->avatarZip()Lio/github/lazyimmortal/sesame/util/ImageZipCache;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/github/lazyimmortal/sesame/util/ImageZipCache;->loadOrDownload(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static get(Landroid/content/Context;)Lio/github/lazyimmortal/sesame/ui/ListAdapter;
    .locals 1

    .line 37
    sget-object v0, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->adapter:Lio/github/lazyimmortal/sesame/ui/ListAdapter;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lio/github/lazyimmortal/sesame/ui/ListAdapter;

    invoke-direct {v0, p0}, Lio/github/lazyimmortal/sesame/ui/ListAdapter;-><init>(Landroid/content/Context;)V

    sput-object v0, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->adapter:Lio/github/lazyimmortal/sesame/ui/ListAdapter;

    .line 40
    :cond_0
    sget-object p0, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->adapter:Lio/github/lazyimmortal/sesame/ui/ListAdapter;

    return-object p0
.end method

.method public static getClear(Landroid/content/Context;)Lio/github/lazyimmortal/sesame/ui/ListAdapter;
    .locals 1

    .line 44
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->get(Landroid/content/Context;)Lio/github/lazyimmortal/sesame/ui/ListAdapter;

    move-result-object p0

    const/4 v0, -0x1

    .line 45
    iput v0, p0, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->findIndex:I

    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->findWord:Ljava/lang/String;

    return-object p0
.end method

.method public static getClear(Landroid/content/Context;Lio/github/lazyimmortal/sesame/ui/ListDialog$ListType;)Lio/github/lazyimmortal/sesame/ui/ListAdapter;
    .locals 1

    .line 51
    sget-object v0, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->adapter:Lio/github/lazyimmortal/sesame/ui/ListAdapter;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lio/github/lazyimmortal/sesame/ui/ListAdapter;

    invoke-direct {v0, p0}, Lio/github/lazyimmortal/sesame/ui/ListAdapter;-><init>(Landroid/content/Context;)V

    sput-object v0, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->adapter:Lio/github/lazyimmortal/sesame/ui/ListAdapter;

    .line 53
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    sput-object p0, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->viewHolderList:Ljava/util/List;

    .line 55
    :cond_0
    sput-object p1, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->listType:Lio/github/lazyimmortal/sesame/ui/ListDialog$ListType;

    .line 56
    sget-object p0, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->adapter:Lio/github/lazyimmortal/sesame/ui/ListAdapter;

    const/4 p1, -0x1

    iput p1, p0, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->findIndex:I

    const/4 p1, 0x0

    .line 57
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->findWord:Ljava/lang/String;

    return-object p0
.end method

.method private hasFriendWatchFilter()Z
    .locals 1

    .line 258
    iget-boolean v0, p0, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->fwOnlyShield:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->fwShowDontCollect:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->fwOnlyDeleted:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->fwEnergyEnable:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method static synthetic lambda$loadAvatar$1(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 521
    invoke-virtual {p1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 522
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$loadAvatar$2(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 3

    .line 517
    :try_start_0
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->downloadAndCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 519
    sget-object v1, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->avatarCache:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    sget-object v1, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->mainHandler:Landroid/os/Handler;

    new-instance v2, Lio/github/lazyimmortal/sesame/ui/ListAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1, v0}, Lio/github/lazyimmortal/sesame/ui/ListAdapter$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method static synthetic lambda$loadTaskIcon$3(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 568
    invoke-virtual {p1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 569
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$loadTaskIcon$4(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 3

    .line 564
    :try_start_0
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/TaskIconUtil;->downloadAndGet(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 566
    sget-object v1, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->taskIconCache:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    sget-object v1, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->mainHandler:Landroid/os/Handler;

    new-instance v2, Lio/github/lazyimmortal/sesame/ui/ListAdapter$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, p1, v0}, Lio/github/lazyimmortal/sesame/ui/ListAdapter$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method private static loadAvatar(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 2

    .line 508
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 509
    sget-object v0, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->avatarCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 511
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 514
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 515
    sget-object v0, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->avatarExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lio/github/lazyimmortal/sesame/ui/ListAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1, p0}, Lio/github/lazyimmortal/sesame/ui/ListAdapter$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;Landroid/widget/ImageView;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static loadTaskIcon(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 2

    .line 555
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 556
    sget-object v0, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->taskIconCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 558
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 561
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 562
    sget-object v0, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->avatarExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lio/github/lazyimmortal/sesame/ui/ListAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1, p0}, Lio/github/lazyimmortal/sesame/ui/ListAdapter$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;Landroid/widget/ImageView;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private matchFilter(Lio/github/lazyimmortal/sesame/entity/IdAndName;Ljava/lang/String;)Z
    .locals 3

    .line 324
    iget-object v0, p1, Lio/github/lazyimmortal/sesame/entity/IdAndName;->name:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p1, Lio/github/lazyimmortal/sesame/entity/IdAndName;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 327
    :cond_0
    iget-object v0, p1, Lio/github/lazyimmortal/sesame/entity/IdAndName;->id:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lio/github/lazyimmortal/sesame/entity/IdAndName;->id:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 330
    :cond_1
    instance-of v0, p1, Lio/github/lazyimmortal/sesame/entity/FriendWatch;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 331
    check-cast p1, Lio/github/lazyimmortal/sesame/entity/FriendWatch;

    iget-object p1, p1, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->bodyText:Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 332
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_3
    return v2
.end method

.method private matchWeeks(Lio/github/lazyimmortal/sesame/entity/FriendWatch;I)Z
    .locals 2

    invoke-virtual {p1}, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->getWeekGet()I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->cmpPass(J)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->getWeek1Get()I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->cmpPass(J)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x3

    if-lt p2, v0, :cond_0

    invoke-virtual {p1}, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->getWeek2Get()I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->cmpPass(J)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x4

    if-lt p2, v0, :cond_0

    invoke-virtual {p1}, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->getWeek3Get()I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->cmpPass(J)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static predownloadAvatars(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 533
    invoke-static {}, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->avatarZip()Lio/github/lazyimmortal/sesame/util/ImageZipCache;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/github/lazyimmortal/sesame/util/ImageZipCache;->predownload(Ljava/util/Collection;)V

    return-void
.end method

.method private static prefetchIcons(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lio/github/lazyimmortal/sesame/entity/IdAndName;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_6

    .line 96
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 99
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 100
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 101
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/github/lazyimmortal/sesame/entity/IdAndName;

    .line 102
    invoke-virtual {v2}, Lio/github/lazyimmortal/sesame/entity/IdAndName;->getIcon()Ljava/lang/String;

    move-result-object v3

    .line 103
    invoke-static {v3}, Lio/github/lazyimmortal/sesame/util/TaskIconUtil;->isIconUrl(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    .line 106
    :cond_1
    instance-of v4, v2, Lio/github/lazyimmortal/sesame/entity/AlipayUser;

    if-nez v4, :cond_3

    instance-of v2, v2, Lio/github/lazyimmortal/sesame/entity/FriendWatch;

    if-eqz v2, :cond_2

    goto :goto_1

    .line 109
    :cond_2
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 107
    :cond_3
    :goto_1
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 112
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_5

    .line 113
    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/TaskIconUtil;->predownload(Ljava/util/Collection;)V

    .line 115
    :cond_5
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_6

    .line 116
    invoke-static {v1}, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->predownloadAvatars(Ljava/util/Collection;)V

    :cond_6
    :goto_2
    return-void
.end method

.method private rebuildFiltered()V
    .locals 8

    .line 263
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->filterWord:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->hasFriendWatchFilter()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->fwSortEnabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 264
    iput-object v0, p0, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->filteredList:Ljava/util/List;

    .line 265
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->notifyDataSetChanged()V

    return-void

    .line 268
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 269
    iget-object v1, p0, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->list:Ljava/util/List;

    if-eqz v1, :cond_11

    .line 270
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/github/lazyimmortal/sesame/entity/IdAndName;

    .line 271
    iget-object v3, p0, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->filterWord:Ljava/lang/String;

    if-eqz v3, :cond_1

    invoke-direct {p0, v2, v3}, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->matchFilter(Lio/github/lazyimmortal/sesame/entity/IdAndName;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 274
    :cond_1
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->hasFriendWatchFilter()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 275
    instance-of v3, v2, Lio/github/lazyimmortal/sesame/entity/FriendWatch;

    if-nez v3, :cond_2

    goto :goto_0

    .line 278
    :cond_2
    move-object v3, v2

    check-cast v3, Lio/github/lazyimmortal/sesame/entity/FriendWatch;

    .line 280
    iget-boolean v4, p0, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->fwShowDontCollect:Z

    if-nez v4, :cond_3

    iget-object v4, p0, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->fwDontCollectSet:Ljava/util/Set;

    if-eqz v4, :cond_3

    iget-object v5, v3, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->id:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    .line 284
    :cond_3
    iget-boolean v4, p0, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->fwOnlyShield:Z

    if-eqz v4, :cond_4

    iget-boolean v4, v3, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->hasShield:Z

    if-nez v4, :cond_4

    goto :goto_0

    .line 288
    :cond_4
    iget-boolean v4, p0, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->fwOnlyDeleted:Z

    if-eqz v4, :cond_6

    iget-object v6, v3, Lio/github/lazyimmortal/sesame/entity/IdAndName;->id:Ljava/lang/String;

    invoke-static {v6}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->get(Ljava/lang/String;)Lio/github/lazyimmortal/sesame/entity/UserEntity;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Lio/github/lazyimmortal/sesame/entity/UserEntity;->getFriendStatus()Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_6

    :cond_5
    goto :goto_0

    .line 292
    :cond_6
    iget-boolean v4, p0, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->fwEnergyEnable:Z

    if-eqz v4, :cond_10

    iget v4, p0, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->fwEnergyField:I

    const/4 v5, 0x4

    if-lt v4, v5, :cond_7

    add-int/lit8 v4, v4, -0x2

    invoke-direct {p0, v3, v4}, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->matchWeeks(Lio/github/lazyimmortal/sesame/entity/FriendWatch;I)Z

    move-result v4

    if-nez v4, :cond_10

    goto/16 :goto_0

    .line 294
    :cond_7
    iget v4, p0, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->fwEnergyField:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_8

    .line 295
    invoke-virtual {v3}, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->getWeekGet()I

    move-result v3

    :goto_1
    int-to-long v3, v3

    goto :goto_2

    :cond_8
    const/4 v5, 0x2

    if-ne v4, v5, :cond_9

    .line 297
    invoke-virtual {v3}, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->getAllGet()I

    move-result v3

    goto :goto_1

    :cond_9
    const/4 v5, 0x3

    if-ne v4, v5, :cond_a

    .line 299
    invoke-virtual {v3}, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->getDailyAverage()J

    move-result-wide v3

    goto :goto_2

    :cond_a
    const/4 v5, 0x4

    if-ne v4, v5, :cond_b

    .line 301
    invoke-virtual {v3}, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->getThisWeekAverage()J

    move-result-wide v3

    goto :goto_2

    :cond_b
    const/4 v5, 0x5

    if-ne v4, v5, :cond_c

    .line 303
    invoke-virtual {v3}, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->getTwoWeekAverage()J

    move-result-wide v3

    goto :goto_2

    :cond_c
    const/4 v5, 0x6

    if-ne v4, v5, :cond_d

    .line 305
    invoke-virtual {v3}, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->getThreeWeekAverage()J

    move-result-wide v3

    goto :goto_2

    :cond_d
    const/4 v5, 0x7

    if-ne v4, v5, :cond_e

    .line 307
    invoke-virtual {v3}, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->getFourWeekAverage()J

    move-result-wide v3

    goto :goto_2

    .line 309
    :cond_e
    invoke-virtual {v3}, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->getDayGet()I

    move-result v3

    goto :goto_1

    .line 311
    :goto_2
    iget v5, p0, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->fwEnergyCmp:I

    if-nez v5, :cond_f

    iget-wide v5, p0, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->fwEnergyValue:J

    cmp-long v7, v3, v5

    if-lez v7, :cond_10

    goto/16 :goto_0

    :cond_f
    iget-wide v5, p0, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->fwEnergyValue:J

    cmp-long v7, v3, v5

    if-gez v7, :cond_10

    goto/16 :goto_0

    .line 316
    :cond_10
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 319
    :cond_11
    iget-boolean v1, p0, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->fwSortEnabled:Z

    if-eqz v1, :cond_13

    iget v1, p0, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->fwEnergyField:I

    const/4 v2, 0x4

    if-lt v1, v2, :cond_12

    const/4 v1, 0x2

    :cond_12
    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/ui/FriendWatchEnergyComparator;->sortDescending(Ljava/util/List;I)V

    :cond_13
    iput-object v0, p0, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->filteredList:Ljava/util/List;

    .line 320
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private visibleList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/github/lazyimmortal/sesame/entity/IdAndName;",
            ">;"
        }
    .end annotation

    .line 338
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->filteredList:Ljava/util/List;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->list:Ljava/util/List;

    :goto_0
    return-object v0
.end method


# virtual methods
.method public SelectInvert()V
    .locals 4

    .line 350
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->visibleList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->list:Ljava/util/List;

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/github/lazyimmortal/sesame/entity/IdAndName;

    .line 351
    iget-object v2, p0, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->selectModelFieldFunc:Lio/github/lazyimmortal/sesame/data/modelFieldExt/common/SelectModelFieldFunc;

    iget-object v3, v1, Lio/github/lazyimmortal/sesame/entity/IdAndName;->id:Ljava/lang/String;

    invoke-interface {v2, v3}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/common/SelectModelFieldFunc;->contains(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    .line 352
    iget-object v2, p0, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->selectModelFieldFunc:Lio/github/lazyimmortal/sesame/data/modelFieldExt/common/SelectModelFieldFunc;

    iget-object v1, v1, Lio/github/lazyimmortal/sesame/entity/IdAndName;->id:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/common/SelectModelFieldFunc;->add(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 354
    :cond_1
    iget-object v2, p0, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->selectModelFieldFunc:Lio/github/lazyimmortal/sesame/data/modelFieldExt/common/SelectModelFieldFunc;

    iget-object v1, v1, Lio/github/lazyimmortal/sesame/entity/IdAndName;->id:Ljava/lang/String;

    invoke-interface {v2, v1}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/common/SelectModelFieldFunc;->remove(Ljava/lang/String;)V

    goto :goto_0

    .line 357
    :cond_2
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public clearFriendWatchFilter()V
    .locals 3

    const/4 v0, 0x0

    .line 241
    iput-boolean v0, p0, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->fwEnergyEnable:Z

    .line 242
    iput-boolean v0, p0, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->fwSortEnabled:Z

    .line 243
    iput v0, p0, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->fwEnergyField:I

    .line 243
    iput v0, p0, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->fwEnergyCmp:I

    const-wide/16 v1, 0x0

    .line 244
    iput-wide v1, p0, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->fwEnergyValue:J

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 245
    invoke-virtual {p0, v0, v1, v0, v2}, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->setFriendWatchFilter(ZZZLjava/util/Set;)V

    return-void
.end method

.method public exitFind()V
    .locals 1

    const/4 v0, -0x1

    .line 221
    iput v0, p0, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->findIndex:I

    return-void
.end method

.method public filter(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 226
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->filterWord:Ljava/lang/String;

    .line 227
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->rebuildFiltered()V

    return-void
.end method

.method public findLast(Ljava/lang/String;)I
    .locals 6

    .line 151
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->visibleList()Ljava/util/List;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_7

    .line 152
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2

    .line 155
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 156
    iget-object v2, p0, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->findWord:Ljava/lang/String;

    invoke-static {p1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 157
    iput v1, p0, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->findIndex:I

    .line 158
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->findWord:Ljava/lang/String;

    .line 160
    :cond_1
    iget v2, p0, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->findIndex:I

    .line 161
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-gez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    if-le v2, v3, :cond_3

    move v2, v3

    :cond_3
    :goto_0
    move v4, v2

    :cond_4
    add-int/2addr v4, v1

    if-gez v4, :cond_5

    move v4, v3

    .line 173
    :cond_5
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/github/lazyimmortal/sesame/entity/IdAndName;

    iget-object v5, v5, Lio/github/lazyimmortal/sesame/entity/IdAndName;->name:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 174
    iput v4, p0, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->findIndex:I

    goto :goto_1

    :cond_6
    if-ne v4, v2, :cond_4

    .line 181
    :goto_1
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->notifyDataSetChanged()V

    .line 182
    iget p1, p0, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->findIndex:I

    return p1

    :cond_7
    :goto_2
    return v1
.end method

.method public findNext(Ljava/lang/String;)I
    .locals 6

    .line 186
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->visibleList()Ljava/util/List;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_7

    .line 187
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2

    .line 190
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 191
    iget-object v2, p0, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->findWord:Ljava/lang/String;

    invoke-static {p1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 192
    iput v1, p0, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->findIndex:I

    .line 193
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->findWord:Ljava/lang/String;

    .line 195
    :cond_1
    iget v1, p0, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->findIndex:I

    .line 196
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    if-gez v1, :cond_2

    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    if-le v1, v2, :cond_3

    move v4, v2

    goto :goto_0

    :cond_3
    move v4, v1

    :goto_0
    move v1, v4

    :cond_4
    add-int/lit8 v1, v1, 0x1

    if-le v1, v2, :cond_5

    const/4 v1, 0x0

    .line 208
    :cond_5
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/github/lazyimmortal/sesame/entity/IdAndName;

    iget-object v5, v5, Lio/github/lazyimmortal/sesame/entity/IdAndName;->name:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 209
    iput v1, p0, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->findIndex:I

    goto :goto_1

    :cond_6
    if-ne v1, v4, :cond_4

    .line 216
    :goto_1
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->notifyDataSetChanged()V

    .line 217
    iget p1, p0, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->findIndex:I

    return p1

    :cond_7
    :goto_2
    return v1
.end method

.method public getCount()I
    .locals 1

    .line 362
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->visibleList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 363
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 368
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->visibleList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getSelectedItems()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/github/lazyimmortal/sesame/entity/IdAndName;",
            ">;"
        }
    .end annotation

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 140
    iget-object v1, p0, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->list:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->selectModelFieldFunc:Lio/github/lazyimmortal/sesame/data/modelFieldExt/common/SelectModelFieldFunc;

    if-eqz v2, :cond_1

    .line 141
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/github/lazyimmortal/sesame/entity/IdAndName;

    .line 142
    iget-object v3, p0, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->selectModelFieldFunc:Lio/github/lazyimmortal/sesame/data/modelFieldExt/common/SelectModelFieldFunc;

    iget-object v4, v2, Lio/github/lazyimmortal/sesame/entity/IdAndName;->id:Ljava/lang/String;

    invoke-interface {v3, v4}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/common/SelectModelFieldFunc;->contains(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 143
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12

    const/16 p3, 0x8

    if-nez p2, :cond_1

    .line 380
    new-instance p2, Lio/github/lazyimmortal/sesame/ui/ListAdapter$ViewHolder;

    invoke-direct {p2}, Lio/github/lazyimmortal/sesame/ui/ListAdapter$ViewHolder;-><init>()V

    .line 381
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->context:Landroid/content/Context;

    sget v1, Lio/github/lazyimmortal/sesame/R$layout;->list_item:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 382
    sget v1, Lio/github/lazyimmortal/sesame/R$id;->tv_idn:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lio/github/lazyimmortal/sesame/ui/ListAdapter$ViewHolder;->tv:Landroid/widget/TextView;

    .line 383
    sget v1, Lio/github/lazyimmortal/sesame/R$id;->cb_list:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p2, Lio/github/lazyimmortal/sesame/ui/ListAdapter$ViewHolder;->cb:Landroid/widget/CheckBox;

    .line 384
    sget v1, Lio/github/lazyimmortal/sesame/R$id;->iv_avatar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lio/github/lazyimmortal/sesame/ui/ListAdapter$ViewHolder;->iv:Landroid/widget/ImageView;

    .line 385
    sget v1, Lio/github/lazyimmortal/sesame/R$id;->iv_task_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lio/github/lazyimmortal/sesame/ui/ListAdapter$ViewHolder;->ivTaskIcon:Landroid/widget/ImageView;

    .line 386
    sget v1, Lio/github/lazyimmortal/sesame/R$id;->ll_head:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p2, Lio/github/lazyimmortal/sesame/ui/ListAdapter$ViewHolder;->llHead:Landroid/widget/LinearLayout;

    .line 387
    sget v1, Lio/github/lazyimmortal/sesame/R$id;->tv_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lio/github/lazyimmortal/sesame/ui/ListAdapter$ViewHolder;->tvTitle:Landroid/widget/TextView;

    .line 388
    sget v1, Lio/github/lazyimmortal/sesame/R$id;->tv_sub:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lio/github/lazyimmortal/sesame/ui/ListAdapter$ViewHolder;->tvSub:Landroid/widget/TextView;

    .line 389
    sget v1, Lio/github/lazyimmortal/sesame/R$id;->tv_delete:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lio/github/lazyimmortal/sesame/ui/ListAdapter$ViewHolder;->tvDelete:Landroid/widget/TextView;

    .line 390
    sget v1, Lio/github/lazyimmortal/sesame/R$id;->tv_avatar_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lio/github/lazyimmortal/sesame/ui/ListAdapter$ViewHolder;->tvAvatarText:Landroid/widget/TextView;

    .line 391
    sget v1, Lio/github/lazyimmortal/sesame/R$id;->tv_avatar_char:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lio/github/lazyimmortal/sesame/ui/ListAdapter$ViewHolder;->tvAvatarChar:Landroid/widget/TextView;

    .line 392
    sget v1, Lio/github/lazyimmortal/sesame/R$id;->tv_fw_intro:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lio/github/lazyimmortal/sesame/ui/ListAdapter$ViewHolder;->tvFwIntro:Landroid/widget/TextView;

    .line 393
    sget v1, Lio/github/lazyimmortal/sesame/R$id;->layout_fw_stats:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p2, Lio/github/lazyimmortal/sesame/ui/ListAdapter$ViewHolder;->layoutFwStats:Landroid/widget/LinearLayout;

    .line 394
    sget v1, Lio/github/lazyimmortal/sesame/R$id;->tv_fw_day:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lio/github/lazyimmortal/sesame/ui/ListAdapter$ViewHolder;->tvFwDay:Landroid/widget/TextView;

    .line 395
    sget v1, Lio/github/lazyimmortal/sesame/R$id;->tv_fw_month:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lio/github/lazyimmortal/sesame/ui/ListAdapter$ViewHolder;->tvFwMonth:Landroid/widget/TextView;

    .line 396
    sget v1, Lio/github/lazyimmortal/sesame/R$id;->tv_fw_total:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lio/github/lazyimmortal/sesame/ui/ListAdapter$ViewHolder;->tvFwTotal:Landroid/widget/TextView;

    .line 397
    sget v1, Lio/github/lazyimmortal/sesame/R$id;->tv_fw_average:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lio/github/lazyimmortal/sesame/ui/ListAdapter$ViewHolder;->tvFwAverage:Landroid/widget/TextView;

    .line 398
    sget v1, Lio/github/lazyimmortal/sesame/R$id;->tv_fw_this_week:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lio/github/lazyimmortal/sesame/ui/ListAdapter$ViewHolder;->tvFwThisWeek:Landroid/widget/TextView;

    .line 399
    sget v1, Lio/github/lazyimmortal/sesame/R$id;->tv_fw_week1:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lio/github/lazyimmortal/sesame/ui/ListAdapter$ViewHolder;->tvFwWeek1:Landroid/widget/TextView;

    .line 400
    sget v1, Lio/github/lazyimmortal/sesame/R$id;->tv_fw_week2:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lio/github/lazyimmortal/sesame/ui/ListAdapter$ViewHolder;->tvFwWeek2:Landroid/widget/TextView;

    .line 401
    sget v1, Lio/github/lazyimmortal/sesame/R$id;->tv_fw_week3:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lio/github/lazyimmortal/sesame/ui/ListAdapter$ViewHolder;->tvFwWeek3:Landroid/widget/TextView;

    .line 402
    sget v1, Lio/github/lazyimmortal/sesame/R$id;->tv_fw_extra:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lio/github/lazyimmortal/sesame/ui/ListAdapter$ViewHolder;->tvFwExtra:Landroid/widget/TextView;

    .line 403
    sget-object v1, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->listType:Lio/github/lazyimmortal/sesame/ui/ListDialog$ListType;

    sget-object v2, Lio/github/lazyimmortal/sesame/ui/ListDialog$ListType;->SHOW:Lio/github/lazyimmortal/sesame/ui/ListDialog$ListType;

    if-ne v1, v2, :cond_0

    .line 404
    iget-object v1, p2, Lio/github/lazyimmortal/sesame/ui/ListAdapter$ViewHolder;->cb:Landroid/widget/CheckBox;

    invoke-virtual {v1, p3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 406
    :cond_0
    invoke-virtual {v0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 407
    sget-object v1, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->viewHolderList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 409
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/lazyimmortal/sesame/ui/ListAdapter$ViewHolder;

    move-object v9, v0

    move-object v0, p2

    move-object p2, v9

    .line 412
    :goto_0
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->visibleList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/github/lazyimmortal/sesame/entity/IdAndName;

    instance-of v10, v1, Lio/github/lazyimmortal/sesame/entity/FriendWatch;

    if-nez v10, :cond_2

    iget-object v10, p2, Lio/github/lazyimmortal/sesame/ui/ListAdapter$ViewHolder;->cb:Landroid/widget/CheckBox;

    invoke-virtual {v10}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    iget-object v9, p2, Lio/github/lazyimmortal/sesame/ui/ListAdapter$ViewHolder;->tv:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    if-eq v11, v9, :cond_3

    check-cast v11, Landroid/view/ViewGroup;

    invoke-virtual {v11, v10}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    check-cast v9, Landroid/view/ViewGroup;

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_1

    :cond_2
    iget-object v10, p2, Lio/github/lazyimmortal/sesame/ui/ListAdapter$ViewHolder;->cb:Landroid/widget/CheckBox;

    invoke-virtual {v10}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    iget-object v9, p2, Lio/github/lazyimmortal/sesame/ui/ListAdapter$ViewHolder;->llHead:Landroid/widget/LinearLayout;

    if-eq v11, v9, :cond_3

    check-cast v11, Landroid/view/ViewGroup;

    invoke-virtual {v11, v10}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_3
    :goto_1
    iget-object v10, p2, Lio/github/lazyimmortal/sesame/ui/ListAdapter$ViewHolder;->cb:Landroid/widget/CheckBox;

    instance-of v11, v1, Lio/github/lazyimmortal/sesame/entity/FriendWatch;

    if-nez v11, :cond_4

    sget-object v11, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->listType:Lio/github/lazyimmortal/sesame/ui/ListDialog$ListType;

    sget-object v9, Lio/github/lazyimmortal/sesame/ui/ListDialog$ListType;->SHOW:Lio/github/lazyimmortal/sesame/ui/ListDialog$ListType;

    if-ne v11, v9, :cond_4

    const/16 v11, 0x8

    goto :goto_2

    :cond_4
    const/4 v11, 0x0

    :goto_2
    invoke-virtual {v10, v11}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 413
    iget-object v2, p2, Lio/github/lazyimmortal/sesame/ui/ListAdapter$ViewHolder;->tv:Landroid/widget/TextView;

    iget v3, p0, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->findIndex:I

    const/high16 v4, -0x10000

    const/high16 v5, -0x1000000

    if-ne v3, p1, :cond_5

    const/high16 v3, -0x10000

    goto :goto_3

    :cond_5
    const/high16 v3, -0x1000000

    :goto_3
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 414
    iget-object v2, p2, Lio/github/lazyimmortal/sesame/ui/ListAdapter$ViewHolder;->cb:Landroid/widget/CheckBox;

    iget-object v3, p0, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->selectModelFieldFunc:Lio/github/lazyimmortal/sesame/data/modelFieldExt/common/SelectModelFieldFunc;

    const/4 v6, 0x0

    if-eqz v3, :cond_6

    iget-object v7, v1, Lio/github/lazyimmortal/sesame/entity/IdAndName;->id:Ljava/lang/String;

    invoke-interface {v3, v7}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/common/SelectModelFieldFunc;->contains(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x1

    goto :goto_4

    :cond_6
    const/4 v3, 0x0

    :goto_4
    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 416
    instance-of v2, v1, Lio/github/lazyimmortal/sesame/entity/FriendWatch;

    if-eqz v2, :cond_10

    .line 417
    check-cast v1, Lio/github/lazyimmortal/sesame/entity/FriendWatch;

    .line 418
    iget-object v2, p2, Lio/github/lazyimmortal/sesame/ui/ListAdapter$ViewHolder;->llHead:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 419
    iget-object v2, p2, Lio/github/lazyimmortal/sesame/ui/ListAdapter$ViewHolder;->tvTitle:Landroid/widget/TextView;

    iget-object v3, v1, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->titleText:Ljava/lang/String;

    invoke-static {v3}, Lio/github/lazyimmortal/sesame/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, v1, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->name:Ljava/lang/String;

    goto :goto_5

    :cond_7
    iget-object v3, v1, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->titleText:Ljava/lang/String;

    :goto_5
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 420
    iget-object v2, p2, Lio/github/lazyimmortal/sesame/ui/ListAdapter$ViewHolder;->tvSub:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, "userID:"

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v1, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->id:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 421
    iget-boolean v2, v1, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->delete:Z

    if-eqz v2, :cond_8

    const/high16 v2, -0x10000

    goto :goto_6

    :cond_8
    const/high16 v2, -0x1000000

    .line 422
    :goto_6
    iget-object v3, p2, Lio/github/lazyimmortal/sesame/ui/ListAdapter$ViewHolder;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 423
    iget-object v3, p2, Lio/github/lazyimmortal/sesame/ui/ListAdapter$ViewHolder;->tvSub:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 424
    iget-boolean v2, v1, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->delete:Z

    if-nez v2, :cond_a

    iget v2, p0, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->findIndex:I

    if-ne v2, p1, :cond_9

    goto :goto_7

    :cond_9
    const/high16 v4, -0x1000000

    .line 425
    :cond_a
    :goto_7
    iget-object p1, p2, Lio/github/lazyimmortal/sesame/ui/ListAdapter$ViewHolder;->tv:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 426
    iget-object p1, p2, Lio/github/lazyimmortal/sesame/ui/ListAdapter$ViewHolder;->tvFwIntro:Landroid/widget/TextView;

    iget-object v2, v1, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->statsIntroText:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 427
    iget-object p1, p2, Lio/github/lazyimmortal/sesame/ui/ListAdapter$ViewHolder;->tvFwIntro:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 428
    iget-object p1, p2, Lio/github/lazyimmortal/sesame/ui/ListAdapter$ViewHolder;->tvFwIntro:Landroid/widget/TextView;

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 429
    iget-object p1, p2, Lio/github/lazyimmortal/sesame/ui/ListAdapter$ViewHolder;->tvDelete:Landroid/widget/TextView;

    iget-boolean v2, v1, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->delete:Z

    if-eqz v2, :cond_b

    const/4 v2, 0x0

    goto :goto_8

    :cond_b
    const/16 v2, 0x8

    :goto_8
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 430
    iget-object p1, p2, Lio/github/lazyimmortal/sesame/ui/ListAdapter$ViewHolder;->cb:Landroid/widget/CheckBox;

    invoke-virtual {p1, v6}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 431
    iget-object p1, p2, Lio/github/lazyimmortal/sesame/ui/ListAdapter$ViewHolder;->ivTaskIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 432
    iget-object p1, p2, Lio/github/lazyimmortal/sesame/ui/ListAdapter$ViewHolder;->tvAvatarChar:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 433
    iget-object p1, p2, Lio/github/lazyimmortal/sesame/ui/ListAdapter$ViewHolder;->layoutFwStats:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 434
    iget-object p1, p2, Lio/github/lazyimmortal/sesame/ui/ListAdapter$ViewHolder;->tvFwExtra:Landroid/widget/TextView;

    iget-object v2, v1, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->statsExtraText:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 435
    iget-object p1, p2, Lio/github/lazyimmortal/sesame/ui/ListAdapter$ViewHolder;->tvFwExtra:Landroid/widget/TextView;

    iget-object v2, v1, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->statsExtraText:Ljava/lang/String;

    invoke-static {v2}, Lio/github/lazyimmortal/sesame/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    const/16 v2, 0x8

    goto :goto_9

    :cond_c
    const/4 v2, 0x0

    :goto_9
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 436
    iget-object p1, p2, Lio/github/lazyimmortal/sesame/ui/ListAdapter$ViewHolder;->tv:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 437
    iget-object p1, p2, Lio/github/lazyimmortal/sesame/ui/ListAdapter$ViewHolder;->tvFwDay:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u65e5\u6536:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->getDayGet()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 438
    iget-object p1, p2, Lio/github/lazyimmortal/sesame/ui/ListAdapter$ViewHolder;->tvFwMonth:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u6708\u6536:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->getMonthGet()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 439
    iget-object p1, p2, Lio/github/lazyimmortal/sesame/ui/ListAdapter$ViewHolder;->tvFwTotal:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u603b\u6536:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->getAllGet()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 440
    iget-object p1, p2, Lio/github/lazyimmortal/sesame/ui/ListAdapter$ViewHolder;->tvFwAverage:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u65e5\u5747:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->getDailyAverage()J

    move-result-wide v7

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 441
    iget-object p1, p2, Lio/github/lazyimmortal/sesame/ui/ListAdapter$ViewHolder;->tvFwThisWeek:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u672c\u5468:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->getWeekGet()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 442
    iget-object p1, p2, Lio/github/lazyimmortal/sesame/ui/ListAdapter$ViewHolder;->tvFwWeek1:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u4e0a\u5468:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->getWeek1Get()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 443
    iget-object p1, p2, Lio/github/lazyimmortal/sesame/ui/ListAdapter$ViewHolder;->tvFwWeek2:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u4e0a\u4e0a\u5468:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->getWeek2Get()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 444
    iget-object p1, p2, Lio/github/lazyimmortal/sesame/ui/ListAdapter$ViewHolder;->tvFwWeek3:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u4e0a\u4e0a\u4e0a\u5468:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->getWeek3Get()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 445
    iget-object p1, p2, Lio/github/lazyimmortal/sesame/ui/ListAdapter$ViewHolder;->tvFwDay:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 446
    iget-object p1, p2, Lio/github/lazyimmortal/sesame/ui/ListAdapter$ViewHolder;->tvFwMonth:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 447
    iget-object p1, p2, Lio/github/lazyimmortal/sesame/ui/ListAdapter$ViewHolder;->tvFwTotal:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 448
    iget-object p1, p2, Lio/github/lazyimmortal/sesame/ui/ListAdapter$ViewHolder;->tvFwAverage:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 449
    iget-object p1, p2, Lio/github/lazyimmortal/sesame/ui/ListAdapter$ViewHolder;->tvFwThisWeek:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 450
    iget-object p1, p2, Lio/github/lazyimmortal/sesame/ui/ListAdapter$ViewHolder;->tvFwWeek1:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 451
    iget-object p1, p2, Lio/github/lazyimmortal/sesame/ui/ListAdapter$ViewHolder;->tvFwWeek2:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 452
    iget-object p1, p2, Lio/github/lazyimmortal/sesame/ui/ListAdapter$ViewHolder;->tvFwWeek3:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 453
    iget-object p1, p2, Lio/github/lazyimmortal/sesame/ui/ListAdapter$ViewHolder;->tvFwExtra:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 455
    iget-object p1, v1, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->headImageUrl:Ljava/lang/String;

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_d

    .line 456
    iget-object p1, p2, Lio/github/lazyimmortal/sesame/ui/ListAdapter$ViewHolder;->tvAvatarText:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 457
    iget-object p1, p2, Lio/github/lazyimmortal/sesame/ui/ListAdapter$ViewHolder;->iv:Landroid/widget/ImageView;

    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 458
    iget-object p1, p2, Lio/github/lazyimmortal/sesame/ui/ListAdapter$ViewHolder;->iv:Landroid/widget/ImageView;

    iget-object p2, v1, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->headImageUrl:Ljava/lang/String;

    invoke-static {p1, p2}, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->loadAvatar(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 460
    :cond_d
    iget-object p1, v1, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->titleText:Ljava/lang/String;

    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_e

    iget-object p1, v1, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->name:Ljava/lang/String;

    goto :goto_a

    :cond_e
    iget-object p1, v1, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->titleText:Ljava/lang/String;

    :goto_a
    invoke-static {p1}, Lio/github/lazyimmortal/sesame/entity/IdAndName;->iconTextOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 461
    iget-object v1, p2, Lio/github/lazyimmortal/sesame/ui/ListAdapter$ViewHolder;->iv:Landroid/widget/ImageView;

    invoke-virtual {v1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 462
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_f

    .line 463
    iget-object p3, p2, Lio/github/lazyimmortal/sesame/ui/ListAdapter$ViewHolder;->tvAvatarText:Landroid/widget/TextView;

    invoke-virtual {p3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 464
    iget-object p2, p2, Lio/github/lazyimmortal/sesame/ui/ListAdapter$ViewHolder;->tvAvatarText:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_b

    .line 466
    :cond_f
    iget-object p1, p2, Lio/github/lazyimmortal/sesame/ui/ListAdapter$ViewHolder;->tvAvatarText:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_b

    .line 470
    :cond_10
    iget-object p1, p2, Lio/github/lazyimmortal/sesame/ui/ListAdapter$ViewHolder;->llHead:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 471
    iget-object p1, p2, Lio/github/lazyimmortal/sesame/ui/ListAdapter$ViewHolder;->tvFwIntro:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 472
    iget-object p1, p2, Lio/github/lazyimmortal/sesame/ui/ListAdapter$ViewHolder;->layoutFwStats:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 473
    iget-object p1, p2, Lio/github/lazyimmortal/sesame/ui/ListAdapter$ViewHolder;->tvFwExtra:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 474
    iget-object p1, p2, Lio/github/lazyimmortal/sesame/ui/ListAdapter$ViewHolder;->tv:Landroid/widget/TextView;

    iget-object v2, v1, Lio/github/lazyimmortal/sesame/entity/IdAndName;->name:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 475
    iget-object p1, p2, Lio/github/lazyimmortal/sesame/ui/ListAdapter$ViewHolder;->tv:Landroid/widget/TextView;

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 477
    invoke-virtual {v1}, Lio/github/lazyimmortal/sesame/entity/IdAndName;->getIcon()Ljava/lang/String;

    move-result-object p1

    .line 478
    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/TaskIconUtil;->isIconUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 479
    iget-object v2, p2, Lio/github/lazyimmortal/sesame/ui/ListAdapter$ViewHolder;->ivTaskIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 480
    iget-object v2, p2, Lio/github/lazyimmortal/sesame/ui/ListAdapter$ViewHolder;->tvAvatarChar:Landroid/widget/TextView;

    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 481
    instance-of p3, v1, Lio/github/lazyimmortal/sesame/entity/AlipayUser;

    if-eqz p3, :cond_11

    .line 483
    iget-object p2, p2, Lio/github/lazyimmortal/sesame/ui/ListAdapter$ViewHolder;->ivTaskIcon:Landroid/widget/ImageView;

    invoke-static {p2, p1}, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->loadAvatar(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_b

    .line 485
    :cond_11
    iget-object p2, p2, Lio/github/lazyimmortal/sesame/ui/ListAdapter$ViewHolder;->ivTaskIcon:Landroid/widget/ImageView;

    invoke-static {p2, p1}, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->loadTaskIcon(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_b

    .line 489
    :cond_12
    invoke-virtual {v1}, Lio/github/lazyimmortal/sesame/entity/IdAndName;->getIconText()Ljava/lang/String;

    move-result-object p1

    .line 490
    iget-object v1, p2, Lio/github/lazyimmortal/sesame/ui/ListAdapter$ViewHolder;->ivTaskIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 491
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_13

    .line 492
    iget-object p3, p2, Lio/github/lazyimmortal/sesame/ui/ListAdapter$ViewHolder;->tvAvatarChar:Landroid/widget/TextView;

    invoke-virtual {p3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 493
    iget-object p2, p2, Lio/github/lazyimmortal/sesame/ui/ListAdapter$ViewHolder;->tvAvatarChar:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_b

    .line 495
    :cond_13
    iget-object p1, p2, Lio/github/lazyimmortal/sesame/ui/ListAdapter$ViewHolder;->tvAvatarChar:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_b
    return-object v0
.end method

.method synthetic lambda$setSelectedList$0$io-github-lazyimmortal-sesame-ui-ListAdapter(Lio/github/lazyimmortal/sesame/entity/IdAndName;Lio/github/lazyimmortal/sesame/entity/IdAndName;)I
    .locals 3

    .line 124
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->selectModelFieldFunc:Lio/github/lazyimmortal/sesame/data/modelFieldExt/common/SelectModelFieldFunc;

    iget-object v1, p1, Lio/github/lazyimmortal/sesame/entity/IdAndName;->id:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/common/SelectModelFieldFunc;->contains(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->selectModelFieldFunc:Lio/github/lazyimmortal/sesame/data/modelFieldExt/common/SelectModelFieldFunc;

    iget-object v2, p2, Lio/github/lazyimmortal/sesame/entity/IdAndName;->id:Ljava/lang/String;

    invoke-interface {v1, v2}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/common/SelectModelFieldFunc;->contains(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 125
    invoke-virtual {p1, p2}, Lio/github/lazyimmortal/sesame/entity/IdAndName;->compareTo(Lio/github/lazyimmortal/sesame/entity/IdAndName;)I

    move-result p1

    return p1

    .line 127
    :cond_0
    iget-object p2, p0, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->selectModelFieldFunc:Lio/github/lazyimmortal/sesame/data/modelFieldExt/common/SelectModelFieldFunc;

    iget-object p1, p1, Lio/github/lazyimmortal/sesame/entity/IdAndName;->id:Ljava/lang/String;

    invoke-interface {p2, p1}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/common/SelectModelFieldFunc;->contains(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method public selectAll()V
    .locals 4

    .line 342
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->visibleList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->list:Ljava/util/List;

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/github/lazyimmortal/sesame/entity/IdAndName;

    .line 344
    iget-object v2, p0, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->selectModelFieldFunc:Lio/github/lazyimmortal/sesame/data/modelFieldExt/common/SelectModelFieldFunc;

    iget-object v1, v1, Lio/github/lazyimmortal/sesame/entity/IdAndName;->id:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/common/SelectModelFieldFunc;->add(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 346
    :cond_1
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setBaseList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lio/github/lazyimmortal/sesame/entity/IdAndName;",
            ">;)V"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->list:Ljava/util/List;

    if-eq p1, v0, :cond_0

    .line 87
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->exitFind()V

    .line 88
    :cond_0
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->list:Ljava/util/List;

    const/4 v0, 0x0

    .line 89
    iput-object v0, p0, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->filterWord:Ljava/lang/String;

    .line 90
    iput-object v0, p0, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->filteredList:Ljava/util/List;

    .line 91
    invoke-static {p1}, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->prefetchIcons(Ljava/util/List;)V

    return-void
.end method

.method public setFriendWatchEnergyFilter(ZIIJ)V
    .locals 0

    .line 250
    iput-boolean p1, p0, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->fwEnergyEnable:Z

    .line 251
    iput p2, p0, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->fwEnergyField:I

    .line 252
    iput p3, p0, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->fwEnergyCmp:I

    .line 253
    iput-wide p4, p0, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->fwEnergyValue:J

    .line 254
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->rebuildFiltered()V

    return-void
.end method

.method public setFriendWatchFilter(ZZZLjava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZ",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 232
    iput-boolean p1, p0, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->fwOnlyShield:Z

    .line 233
    iput-boolean p2, p0, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->fwShowDontCollect:Z

    .line 234
    iput-boolean p3, p0, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->fwOnlyDeleted:Z

    .line 235
    iput-object p4, p0, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->fwDontCollectSet:Ljava/util/Set;

    .line 236
    invoke-direct {p0}, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->rebuildFiltered()V

    return-void
.end method

.method public setSelectedList(Lio/github/lazyimmortal/sesame/data/modelFieldExt/common/SelectModelFieldFunc;)V
    .locals 1

    .line 121
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->selectModelFieldFunc:Lio/github/lazyimmortal/sesame/data/modelFieldExt/common/SelectModelFieldFunc;

    .line 123
    :try_start_0
    iget-object p1, p0, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->list:Ljava/util/List;

    new-instance v0, Lio/github/lazyimmortal/sesame/ui/ListAdapter$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lio/github/lazyimmortal/sesame/ui/ListAdapter$$ExternalSyntheticLambda3;-><init>(Lio/github/lazyimmortal/sesame/ui/ListAdapter;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 130
    const-string v0, "ListAdapter err"

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;)V

    .line 131
    invoke-static {p1}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
