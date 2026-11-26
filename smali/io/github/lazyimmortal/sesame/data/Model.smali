.class public abstract Lio/github/lazyimmortal/sesame/data/Model;
.super Ljava/lang/Object;
.source "Model.java"


# static fields
.field private static final groupModelConfigMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lio/github/lazyimmortal/sesame/data/ModelGroup;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/github/lazyimmortal/sesame/data/ModelConfig;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final modelArray:[Lio/github/lazyimmortal/sesame/data/Model;

.field private static final modelClazzList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Lio/github/lazyimmortal/sesame/data/Model;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final modelConfigMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/github/lazyimmortal/sesame/data/ModelConfig;",
            ">;"
        }
    .end annotation
.end field

.field private static final modelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/github/lazyimmortal/sesame/data/Model;",
            ">;"
        }
    .end annotation
.end field

.field private static final modelMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lio/github/lazyimmortal/sesame/data/Model;",
            ">;",
            "Lio/github/lazyimmortal/sesame/data/Model;",
            ">;"
        }
    .end annotation
.end field

.field private static final readOnlyModelConfigMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/github/lazyimmortal/sesame/data/ModelConfig;",
            ">;"
        }
    .end annotation
.end field

.field private static final readOnlyModelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/github/lazyimmortal/sesame/data/Model;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final enableField:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 22
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lio/github/lazyimmortal/sesame/data/Model;->modelConfigMap:Ljava/util/Map;

    .line 24
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lio/github/lazyimmortal/sesame/data/Model;->readOnlyModelConfigMap:Ljava/util/Map;

    .line 26
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lio/github/lazyimmortal/sesame/data/Model;->groupModelConfigMap:Ljava/util/Map;

    .line 28
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lio/github/lazyimmortal/sesame/data/Model;->modelMap:Ljava/util/Map;

    .line 30
    invoke-static {}, Lio/github/lazyimmortal/sesame/model/base/ModelOrder;->getClazzList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lio/github/lazyimmortal/sesame/data/Model;->modelClazzList:Ljava/util/List;

    .line 33
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lio/github/lazyimmortal/sesame/data/Model;

    sput-object v0, Lio/github/lazyimmortal/sesame/data/Model;->modelArray:[Lio/github/lazyimmortal/sesame/data/Model;

    .line 35
    new-instance v1, Ljava/util/LinkedList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    sput-object v1, Lio/github/lazyimmortal/sesame/data/Model;->modelList:Ljava/util/List;

    .line 37
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lio/github/lazyimmortal/sesame/data/Model;->readOnlyModelList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/data/Model;->getEnableFieldName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "enable"

    invoke-direct {v0, v3, v1, v2}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v0, p0, Lio/github/lazyimmortal/sesame/data/Model;->enableField:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    return-void
.end method

.method public static declared-synchronized bootAllModel(Ljava/lang/ClassLoader;)V
    .locals 6

    const-class v0, Lio/github/lazyimmortal/sesame/data/Model;

    monitor-enter v0

    .line 136
    :try_start_0
    sget-object v1, Lio/github/lazyimmortal/sesame/data/Model;->modelArray:[Lio/github/lazyimmortal/sesame/data/Model;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    :try_start_1
    invoke-virtual {v4}, Lio/github/lazyimmortal/sesame/data/Model;->prepare()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v5

    .line 140
    :try_start_2
    invoke-static {v5}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 143
    :goto_1
    :try_start_3
    invoke-virtual {v4}, Lio/github/lazyimmortal/sesame/data/Model;->getEnableField()Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    move-result-object v5

    invoke-virtual {v5}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 144
    invoke-virtual {v4, p0}, Lio/github/lazyimmortal/sesame/data/Model;->boot(Ljava/lang/ClassLoader;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catch_1
    move-exception v4

    .line 147
    :try_start_4
    invoke-static {v4}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 150
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p0
.end method

.method public static declared-synchronized destroyAllModel()V
    .locals 6

    const-class v0, Lio/github/lazyimmortal/sesame/data/Model;

    monitor-enter v0

    .line 153
    :try_start_0
    sget-object v1, Lio/github/lazyimmortal/sesame/data/Model;->modelArray:[Lio/github/lazyimmortal/sesame/data/Model;

    array-length v1, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 154
    sget-object v3, Lio/github/lazyimmortal/sesame/data/Model;->modelArray:[Lio/github/lazyimmortal/sesame/data/Model;

    aget-object v3, v3, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    .line 157
    :try_start_1
    sget-object v4, Lio/github/lazyimmortal/sesame/data/ModelType;->TASK:Lio/github/lazyimmortal/sesame/data/ModelType;

    invoke-virtual {v3}, Lio/github/lazyimmortal/sesame/data/Model;->getType()Lio/github/lazyimmortal/sesame/data/ModelType;

    move-result-object v5

    if-ne v4, v5, :cond_0

    .line 158
    move-object v4, v3

    check-cast v4, Lio/github/lazyimmortal/sesame/data/task/ModelTask;

    invoke-virtual {v4}, Lio/github/lazyimmortal/sesame/data/task/ModelTask;->stopTask()V

    .line 160
    :cond_0
    invoke-virtual {v3}, Lio/github/lazyimmortal/sesame/data/Model;->destroy()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 162
    :try_start_2
    invoke-static {v3}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/Throwable;)V

    .line 164
    :goto_1
    sget-object v3, Lio/github/lazyimmortal/sesame/data/Model;->modelArray:[Lio/github/lazyimmortal/sesame/data/Model;

    const/4 v4, 0x0

    aput-object v4, v3, v2

    .line 166
    :cond_1
    sget-object v3, Lio/github/lazyimmortal/sesame/data/Model;->modelMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 167
    sget-object v3, Lio/github/lazyimmortal/sesame/data/Model;->modelConfigMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 169
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public static getGroupModelConfig(Lio/github/lazyimmortal/sesame/data/ModelGroup;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/github/lazyimmortal/sesame/data/ModelGroup;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/github/lazyimmortal/sesame/data/ModelConfig;",
            ">;"
        }
    .end annotation

    .line 90
    sget-object v0, Lio/github/lazyimmortal/sesame/data/Model;->groupModelConfigMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    if-nez p0, :cond_0

    .line 92
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p0

    return-object p0

    .line 94
    :cond_0
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static getGroupModelConfigGroupSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lio/github/lazyimmortal/sesame/data/ModelGroup;",
            ">;"
        }
    .end annotation

    .line 78
    sget-object v0, Lio/github/lazyimmortal/sesame/data/Model;->groupModelConfigMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static getGroupModelConfigMapList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/github/lazyimmortal/sesame/data/ModelConfig;",
            ">;>;"
        }
    .end annotation

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 83
    sget-object v1, Lio/github/lazyimmortal/sesame/data/Model;->groupModelConfigMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 84
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static getModel(Ljava/lang/Class;)Lio/github/lazyimmortal/sesame/data/Model;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lio/github/lazyimmortal/sesame/data/Model;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 103
    sget-object v0, Lio/github/lazyimmortal/sesame/data/Model;->modelMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/github/lazyimmortal/sesame/data/Model;

    return-object p0
.end method

.method public static getModelArray()[Lio/github/lazyimmortal/sesame/data/Model;
    .locals 1

    .line 32
    sget-object v0, Lio/github/lazyimmortal/sesame/data/Model;->modelArray:[Lio/github/lazyimmortal/sesame/data/Model;

    return-object v0
.end method

.method public static getModelConfigMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/github/lazyimmortal/sesame/data/ModelConfig;",
            ">;"
        }
    .end annotation

    .line 74
    sget-object v0, Lio/github/lazyimmortal/sesame/data/Model;->readOnlyModelConfigMap:Ljava/util/Map;

    return-object v0
.end method

.method public static getModelList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/github/lazyimmortal/sesame/data/Model;",
            ">;"
        }
    .end annotation

    .line 107
    sget-object v0, Lio/github/lazyimmortal/sesame/data/Model;->readOnlyModelList:Ljava/util/List;

    return-object v0
.end method

.method public static hasModel(Ljava/lang/Class;)Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lio/github/lazyimmortal/sesame/data/Model;",
            ">;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .line 98
    sget-object v0, Lio/github/lazyimmortal/sesame/data/Model;->modelMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized initAllModel()V
    .locals 8

    const-class v0, Lio/github/lazyimmortal/sesame/data/Model;

    monitor-enter v0

    .line 111
    :try_start_0
    invoke-static {}, Lio/github/lazyimmortal/sesame/data/Model;->destroyAllModel()V

    .line 112
    sget-object v1, Lio/github/lazyimmortal/sesame/data/Model;->modelClazzList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 113
    sget-object v3, Lio/github/lazyimmortal/sesame/data/Model;->modelClazzList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x0

    .line 115
    :try_start_1
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    .line 116
    invoke-virtual {v5, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/github/lazyimmortal/sesame/data/Model;

    .line 117
    new-instance v5, Lio/github/lazyimmortal/sesame/data/ModelConfig;

    invoke-direct {v5, v4}, Lio/github/lazyimmortal/sesame/data/ModelConfig;-><init>(Lio/github/lazyimmortal/sesame/data/Model;)V

    .line 118
    sget-object v6, Lio/github/lazyimmortal/sesame/data/Model;->modelArray:[Lio/github/lazyimmortal/sesame/data/Model;

    aput-object v4, v6, v2

    .line 119
    sget-object v6, Lio/github/lazyimmortal/sesame/data/Model;->modelMap:Ljava/util/Map;

    invoke-interface {v6, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    invoke-virtual {v5}, Lio/github/lazyimmortal/sesame/data/ModelConfig;->getCode()Ljava/lang/String;

    move-result-object v3

    .line 121
    sget-object v4, Lio/github/lazyimmortal/sesame/data/Model;->modelConfigMap:Ljava/util/Map;

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    invoke-virtual {v5}, Lio/github/lazyimmortal/sesame/data/ModelConfig;->getGroup()Lio/github/lazyimmortal/sesame/data/ModelGroup;

    move-result-object v4

    .line 123
    sget-object v6, Lio/github/lazyimmortal/sesame/data/Model;->groupModelConfigMap:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    if-nez v7, :cond_0

    .line 125
    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    .line 126
    invoke-interface {v6, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    :cond_0
    invoke-interface {v7, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 130
    :try_start_2
    invoke-static {v3}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 133
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method


# virtual methods
.method public boot(Ljava/lang/ClassLoader;)V
    .locals 0

    return-void
.end method

.method public destroy()V
    .locals 0

    return-void
.end method

.method public final getEnableField()Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;
    .locals 1

    .line 42
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/data/Model;->enableField:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    return-object v0
.end method

.method public getEnableFieldName()Ljava/lang/String;
    .locals 2

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u5f00\u542f"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/data/Model;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract getFields()Lio/github/lazyimmortal/sesame/data/ModelFields;
.end method

.method public abstract getGroup()Lio/github/lazyimmortal/sesame/data/ModelGroup;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public getType()Lio/github/lazyimmortal/sesame/data/ModelType;
    .locals 1

    .line 58
    sget-object v0, Lio/github/lazyimmortal/sesame/data/ModelType;->NORMAL:Lio/github/lazyimmortal/sesame/data/ModelType;

    return-object v0
.end method

.method public final isEnable()Ljava/lang/Boolean;
    .locals 1

    .line 54
    iget-object v0, p0, Lio/github/lazyimmortal/sesame/data/Model;->enableField:Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;

    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/BooleanModelField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public prepare()V
    .locals 0

    return-void
.end method
