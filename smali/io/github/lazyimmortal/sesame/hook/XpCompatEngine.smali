.class public Lio/github/lazyimmortal/sesame/hook/XpCompatEngine;
.super Ljava/lang/Object;
.source "XpCompatEngine.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hookAllConstructors(Ljava/lang/Class;Lde/robv/android/xposed/XC_MethodHook;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lde/robv/android/xposed/XC_MethodHook;",
            ")V"
        }
    .end annotation

    .line 27
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    .line 28
    invoke-static {v2, p1}, Lio/github/lazyimmortal/sesame/hook/XpCompatEngine;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)V
    .locals 0

    .line 20
    invoke-static {p0, p1}, Lde/robv/android/xposed/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    return-void
.end method
