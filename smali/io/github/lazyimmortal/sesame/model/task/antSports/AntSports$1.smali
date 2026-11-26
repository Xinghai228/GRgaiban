.class Lio/github/lazyimmortal/sesame/model/task/antSports/AntSports$1;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "AntSports.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/github/lazyimmortal/sesame/model/task/antSports/AntSports;->boot(Ljava/lang/ClassLoader;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/github/lazyimmortal/sesame/model/task/antSports/AntSports;


# direct methods
.method constructor <init>(Lio/github/lazyimmortal/sesame/model/task/antSports/AntSports;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/model/task/antSports/AntSports$1;->this$0:Lio/github/lazyimmortal/sesame/model/task/antSports/AntSports;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 4

    .line 159
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/Log;->getFormatTime()Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 160
    invoke-virtual {p1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 161
    iget-object v2, p0, Lio/github/lazyimmortal/sesame/model/task/antSports/AntSports$1;->this$0:Lio/github/lazyimmortal/sesame/model/task/antSports/AntSports;

    invoke-virtual {v2}, Lio/github/lazyimmortal/sesame/model/task/antSports/AntSports;->tmpStepCount()I

    move-result v2

    .line 162
    const-string v3, "sport::syncStep"

    invoke-static {v3}, Lio/github/lazyimmortal/sesame/util/Status;->hasFlagToday(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lio/github/lazyimmortal/sesame/model/task/antSports/AntSports$1;->this$0:Lio/github/lazyimmortal/sesame/model/task/antSports/AntSports;

    invoke-static {v3}, Lio/github/lazyimmortal/sesame/model/task/antSports/AntSports;->access$000(Lio/github/lazyimmortal/sesame/model/task/antSports/AntSports;)Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;

    move-result-object v3

    invoke-virtual {v3}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/IntegerModelField;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lt v0, v3, :cond_0

    if-ge v1, v2, :cond_0

    .line 163
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
