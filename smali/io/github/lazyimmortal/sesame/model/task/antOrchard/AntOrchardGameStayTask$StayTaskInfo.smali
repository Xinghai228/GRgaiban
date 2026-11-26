.class final Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchardGameStayTask$StayTaskInfo;
.super Ljava/lang/Object;
.source "AntOrchardGameStayTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchardGameStayTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StayTaskInfo"
.end annotation


# instance fields
.field final appId:Ljava/lang/String;

.field final duration:I

.field final name:Ljava/lang/String;

.field final sceneCode:Ljava/lang/String;

.field final taskId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 290
    iput-object p1, p0, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchardGameStayTask$StayTaskInfo;->appId:Ljava/lang/String;

    .line 291
    iput-object p2, p0, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchardGameStayTask$StayTaskInfo;->name:Ljava/lang/String;

    .line 292
    iput-object p3, p0, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchardGameStayTask$StayTaskInfo;->taskId:Ljava/lang/String;

    .line 293
    iput-object p4, p0, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchardGameStayTask$StayTaskInfo;->sceneCode:Ljava/lang/String;

    .line 294
    iput p5, p0, Lio/github/lazyimmortal/sesame/model/task/antOrchard/AntOrchardGameStayTask$StayTaskInfo;->duration:I

    return-void
.end method
