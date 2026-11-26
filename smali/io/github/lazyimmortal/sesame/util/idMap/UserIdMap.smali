.class public Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;
.super Ljava/lang/Object;
.source "UserIdMap.java"


# static fields
.field private static currentUid:Ljava/lang/String;

.field private static final readOnlyUserMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/github/lazyimmortal/sesame/entity/UserEntity;",
            ">;"
        }
    .end annotation
.end field

.field private static final userMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/github/lazyimmortal/sesame/entity/UserEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->userMap:Ljava/util/Map;

    .line 21
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->readOnlyUserMap:Ljava/util/Map;

    const/4 v0, 0x0

    .line 24
    sput-object v0, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->currentUid:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized add(Lio/github/lazyimmortal/sesame/entity/UserEntity;)V
    .locals 3

    const-class v0, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;

    monitor-enter v0

    .line 159
    :try_start_0
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/entity/UserEntity;->getUserId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 160
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 163
    :cond_0
    sget-object v2, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->userMap:Ljava/util/Map;

    invoke-interface {v2, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    monitor-exit v0

    return-void

    .line 161
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static get(Ljava/lang/String;)Lio/github/lazyimmortal/sesame/entity/UserEntity;
    .locals 1

    .line 155
    sget-object v0, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->userMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/github/lazyimmortal/sesame/entity/UserEntity;

    return-object p0
.end method

.method public static getCurrentMaskName()Ljava/lang/String;
    .locals 1

    .line 126
    sget-object v0, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->currentUid:Ljava/lang/String;

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getMaskName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentUid()Ljava/lang/String;
    .locals 1

    .line 23
    sget-object v0, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->currentUid:Ljava/lang/String;

    return-object v0
.end method

.method public static getFullName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 147
    sget-object v0, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->userMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/github/lazyimmortal/sesame/entity/UserEntity;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 151
    :cond_0
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/entity/UserEntity;->getFullName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getMaskName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 130
    sget-object v0, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->userMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/github/lazyimmortal/sesame/entity/UserEntity;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 134
    :cond_0
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/entity/UserEntity;->getMaskName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getShowName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_2

    .line 137
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 140
    :cond_0
    sget-object v0, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->userMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/lazyimmortal/sesame/entity/UserEntity;

    if-nez v0, :cond_1

    return-object p0

    .line 144
    :cond_1
    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/entity/UserEntity;->getShowName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 138
    :cond_2
    :goto_0
    const-string p0, "\u672a\u77e5\u7528\u6237"

    return-object p0
.end method

.method public static getUserEntityCollection()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lio/github/lazyimmortal/sesame/entity/UserEntity;",
            ">;"
        }
    .end annotation

    .line 35
    sget-object v0, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->userMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static getUserIdSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 31
    sget-object v0, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->userMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static getUserMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/github/lazyimmortal/sesame/entity/UserEntity;",
            ">;"
        }
    .end annotation

    .line 27
    sget-object v0, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->readOnlyUserMap:Ljava/util/Map;

    return-object v0
.end method

.method public static declared-synchronized initUser(Ljava/lang/String;)V
    .locals 2

    const-class v0, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;

    monitor-enter v0

    .line 39
    :try_start_0
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->setCurrentUserId(Ljava/lang/String;)V

    .line 41
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->load(Ljava/lang/String;)V

    .line 42
    invoke-static {}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->getMainHandler()Landroid/os/Handler;

    move-result-object p0

    new-instance v1, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method static synthetic lambda$initUser$0()V
    .locals 28

    .line 45
    :try_start_0
    invoke-static {}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :try_start_1
    invoke-static {}, Lio/github/lazyimmortal/sesame/hook/ApplicationHook;->getUserId()Ljava/lang/String;

    move-result-object v1

    .line 52
    const-string v2, "com.alipay.mobile.socialcommonsdk.bizdata.UserIndependentCache"

    invoke-virtual {v0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 53
    const-string v3, "com.alipay.mobile.socialcommonsdk.bizdata.contact.data.AliAccountDaoOp"

    invoke-virtual {v0, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 54
    const-string v3, "getCacheObj"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lde/robv/android/xposed/XposedHelpers;->callStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 55
    const-string v2, "getAllFriends"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 56
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 58
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->unload()V

    .line 59
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 60
    const-string v3, "userId"

    invoke-static {v2, v3}, Lde/robv/android/xposed/XposedHelpers;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 61
    const-string v4, "account"

    invoke-static {v2, v4}, Lde/robv/android/xposed/XposedHelpers;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 62
    const-string v5, "name"

    invoke-static {v2, v5}, Lde/robv/android/xposed/XposedHelpers;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 63
    const-string v6, "nickName"

    invoke-static {v2, v6}, Lde/robv/android/xposed/XposedHelpers;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 64
    const-string v7, "remarkName"

    invoke-static {v2, v7}, Lde/robv/android/xposed/XposedHelpers;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 65
    const-string v8, "friendStatus"

    invoke-static {v2, v8}, Lde/robv/android/xposed/XposedHelpers;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    .line 66
    const-string v9, "headImageUrl"

    invoke-static {v2, v9}, Lde/robv/android/xposed/XposedHelpers;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    .line 67
    const-string v10, "firstAlphaChar"

    invoke-static {v2, v10}, Lde/robv/android/xposed/XposedHelpers;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v10

    .line 68
    const-string v11, "version"

    invoke-static {v2, v11}, Lde/robv/android/xposed/XposedHelpers;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v11

    .line 69
    const-string v12, "extVersion"

    invoke-static {v2, v12}, Lde/robv/android/xposed/XposedHelpers;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v12

    .line 70
    const-string v13, "isDelete"

    invoke-static {v2, v13}, Lde/robv/android/xposed/XposedHelpers;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 72
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    const/4 v0, 0x0

    move-object v14, v0

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 74
    :try_start_2
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 75
    invoke-virtual {v4, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v18, v16

    check-cast v18, Ljava/lang/String;

    .line 76
    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v20, v16

    check-cast v20, Ljava/lang/String;

    .line 77
    invoke-virtual {v6, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v21, v16

    check-cast v21, Ljava/lang/String;

    .line 78
    invoke-virtual {v7, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v22, v16

    check-cast v22, Ljava/lang/String;

    .line 79
    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v19, v16

    check-cast v19, Ljava/lang/Integer;

    .line 80
    invoke-virtual {v9, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v23, v16

    check-cast v23, Ljava/lang/String;

    .line 81
    invoke-virtual {v10, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v24, v16

    check-cast v24, Ljava/lang/String;

    .line 82
    invoke-virtual {v11, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v25, v16

    check-cast v25, Ljava/lang/Long;

    .line 83
    invoke-virtual {v12, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v26, v16

    check-cast v26, Ljava/lang/Long;

    .line 84
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v27, v0

    check-cast v27, Ljava/lang/Boolean;

    .line 85
    new-instance v0, Lio/github/lazyimmortal/sesame/entity/UserEntity;

    move-object/from16 v16, v0

    move-object/from16 v17, v15

    invoke-direct/range {v16 .. v27}, Lio/github/lazyimmortal/sesame/entity/UserEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    .line 87
    invoke-static {v1, v15}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    move-object v14, v0

    .line 90
    :cond_0
    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->add(Lio/github/lazyimmortal/sesame/entity/UserEntity;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 92
    :try_start_3
    const-string v15, "addUserObject err:"

    invoke-static {v15}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;)V

    .line 93
    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 96
    :cond_1
    invoke-static {v14}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->saveSelf(Lio/github/lazyimmortal/sesame/entity/UserEntity;)Z

    .line 98
    :cond_2
    invoke-static {v1}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->save(Ljava/lang/String;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 101
    :try_start_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 102
    sget-object v1, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->userMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/github/lazyimmortal/sesame/entity/UserEntity;

    .line 103
    invoke-virtual {v2}, Lio/github/lazyimmortal/sesame/entity/UserEntity;->getHeadImageUrl()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lio/github/lazyimmortal/sesame/entity/UserEntity;->getHeadImageUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 104
    invoke-virtual {v2}, Lio/github/lazyimmortal/sesame/entity/UserEntity;->getHeadImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 107
    :cond_4
    invoke-static {v0}, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->predownloadAvatars(Ljava/util/Collection;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    :catchall_1
    move-exception v0

    .line 111
    const-string v1, "checkUnknownId.run err:"

    invoke-static {v1}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;)V

    .line 112
    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/Throwable;)V

    :catchall_2
    :goto_2
    return-void

    .line 47
    :catch_0
    const-string v0, "Error getting classloader"

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->i(Ljava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized load(Ljava/lang/String;)V
    .locals 4

    const-class v0, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;

    monitor-enter v0

    .line 171
    :try_start_0
    sget-object v1, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->userMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    :try_start_1
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/FileUtil;->getFriendIdMapFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/FileUtil;->readFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    .line 174
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 175
    new-instance v1, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap$1;

    invoke-direct {v1}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap$1;-><init>()V

    invoke-static {p0, v1}, Lio/github/lazyimmortal/sesame/util/JsonUtil;->parseObject(Ljava/lang/String;Lcom/fasterxml/jackson/core/type/TypeReference;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    .line 177
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/github/lazyimmortal/sesame/entity/UserEntity$UserDto;

    .line 178
    sget-object v2, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->userMap:Ljava/util/Map;

    invoke-virtual {v1}, Lio/github/lazyimmortal/sesame/entity/UserEntity$UserDto;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lio/github/lazyimmortal/sesame/entity/UserEntity$UserDto;->toEntity()Lio/github/lazyimmortal/sesame/entity/UserEntity;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 182
    :try_start_2
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 184
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public static declared-synchronized loadSelf(Ljava/lang/String;)V
    .locals 3

    const-class v0, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;

    monitor-enter v0

    .line 195
    :try_start_0
    sget-object v1, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->userMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    :try_start_1
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/FileUtil;->getSelfIdFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/FileUtil;->readFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    .line 198
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 199
    new-instance v2, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap$2;

    invoke-direct {v2}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap$2;-><init>()V

    invoke-static {p0, v2}, Lio/github/lazyimmortal/sesame/util/JsonUtil;->parseObject(Ljava/lang/String;Lcom/fasterxml/jackson/core/type/TypeReference;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/github/lazyimmortal/sesame/entity/UserEntity$UserDto;

    .line 201
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/entity/UserEntity$UserDto;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/entity/UserEntity$UserDto;->toEntity()Lio/github/lazyimmortal/sesame/entity/UserEntity;

    move-result-object p0

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 204
    :try_start_2
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 206
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public static declared-synchronized remove(Ljava/lang/String;)V
    .locals 2

    const-class v0, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;

    monitor-enter v0

    .line 167
    :try_start_0
    sget-object v1, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->userMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static declared-synchronized save(Ljava/lang/String;)Z
    .locals 2

    const-class v0, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;

    monitor-enter v0

    .line 191
    :try_start_0
    sget-object v1, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->userMap:Ljava/util/Map;

    invoke-static {v1}, Lio/github/lazyimmortal/sesame/util/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/FileUtil;->getFriendIdMapFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {v1, p0}, Lio/github/lazyimmortal/sesame/util/FileUtil;->write2File(Ljava/lang/String;Ljava/io/File;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static declared-synchronized saveSelf(Lio/github/lazyimmortal/sesame/entity/UserEntity;)Z
    .locals 2

    const-class v0, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;

    monitor-enter v0

    .line 209
    :try_start_0
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/entity/UserEntity;->getUserId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/FileUtil;->getSelfIdFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {v1, p0}, Lio/github/lazyimmortal/sesame/util/FileUtil;->write2File(Ljava/lang/String;Ljava/io/File;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static declared-synchronized setCurrentUserId(Ljava/lang/String;)V
    .locals 2

    const-class v0, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;

    monitor-enter v0

    if-eqz p0, :cond_1

    .line 118
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 122
    :cond_0
    sput-object p0, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->currentUid:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    monitor-exit v0

    return-void

    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 119
    :try_start_1
    sput-object p0, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->currentUid:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 120
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public static declared-synchronized unload()V
    .locals 2

    const-class v0, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;

    monitor-enter v0

    .line 187
    :try_start_0
    sget-object v1, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->userMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
