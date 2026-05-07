.class public Lcom/oplus/splitscreen/util/OplusActivityManagerWrapper;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "OplusActivityManagerWrapper"

.field private static final sInstance:Lcom/oplus/splitscreen/util/OplusActivityManagerWrapper;


# instance fields
.field private final mAtm:Landroid/app/ActivityTaskManager;

.field private final mOplusSplitScreenManager:Lcom/oplus/splitscreen/OplusSplitScreenManager;

.field private mSetTaskWindowingModeSplitScreen:Ljava/lang/reflect/Method;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/splitscreen/util/OplusActivityManagerWrapper;

    invoke-direct {v0}, Lcom/oplus/splitscreen/util/OplusActivityManagerWrapper;-><init>()V

    sput-object v0, Lcom/oplus/splitscreen/util/OplusActivityManagerWrapper;->sInstance:Lcom/oplus/splitscreen/util/OplusActivityManagerWrapper;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/app/ActivityTaskManager;->getInstance()Landroid/app/ActivityTaskManager;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/splitscreen/util/OplusActivityManagerWrapper;->mAtm:Landroid/app/ActivityTaskManager;

    invoke-static {}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->getInstance()Lcom/oplus/splitscreen/OplusSplitScreenManager;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/splitscreen/util/OplusActivityManagerWrapper;->mOplusSplitScreenManager:Lcom/oplus/splitscreen/OplusSplitScreenManager;

    return-void
.end method

.method public static getInstance()Lcom/oplus/splitscreen/util/OplusActivityManagerWrapper;
    .registers 1

    sget-object v0, Lcom/oplus/splitscreen/util/OplusActivityManagerWrapper;->sInstance:Lcom/oplus/splitscreen/util/OplusActivityManagerWrapper;

    return-object v0
.end method


# virtual methods
.method public checkIsOpenSplitPrimaryTask(Landroid/app/ActivityManager$RunningTaskInfo;)I
    .registers 9

    const-string v0, "OplusActivityManagerWrapper"

    const/4 v1, 0x0

    :try_start_3
    iget-object v2, p0, Lcom/oplus/splitscreen/util/OplusActivityManagerWrapper;->mOplusSplitScreenManager:Lcom/oplus/splitscreen/OplusSplitScreenManager;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "setTaskWindowingModeSplitScreen"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v1

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/oplus/splitscreen/util/OplusActivityManagerWrapper;->mSetTaskWindowingModeSplitScreen:Ljava/lang/reflect/Method;

    iget-object p0, p0, Lcom/oplus/splitscreen/util/OplusActivityManagerWrapper;->mOplusSplitScreenManager:Lcom/oplus/splitscreen/OplusSplitScreenManager;

    new-array v3, v4, [Ljava/lang/Object;

    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v1

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkIsOpenSplitPrimaryTask called, result = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    instance-of p1, p0, Ljava/lang/Integer;

    if-eqz p1, :cond_47

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_47
    instance-of p1, p0, Ljava/lang/Boolean;

    if-eqz p1, :cond_69

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_51
    .catchall {:try_start_3 .. :try_end_51} :catchall_54

    if-eqz p0, :cond_69

    return v4

    :catchall_54
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkIsOpenSplitPrimaryTask error, "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_69
    return v1
.end method

.method public getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oplus/splitscreen/util/OplusActivityManagerWrapper;->getRunningTask(Z)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p0

    return-object p0
.end method

.method public getRunningTask(Z)Landroid/app/ActivityManager$RunningTaskInfo;
    .registers 3

    iget-object p0, p0, Lcom/oplus/splitscreen/util/OplusActivityManagerWrapper;->mAtm:Landroid/app/ActivityTaskManager;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/app/ActivityTaskManager;->getTasks(IZ)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_f

    const/4 p0, 0x0

    return-object p0

    :cond_f
    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;

    return-object p0
.end method

.method public getRunningTaskWithoutZoom()Landroid/app/ActivityManager$RunningTaskInfo;
    .registers 4

    iget-object p0, p0, Lcom/oplus/splitscreen/util/OplusActivityManagerWrapper;->mAtm:Landroid/app/ActivityTaskManager;

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/ActivityTaskManager;->getTasks(IZ)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_31

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_31

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_14
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v1

    iget v2, v0, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    if-nez v2, :cond_14

    const/16 v2, 0x64

    if-eq v1, v2, :cond_14

    return-object v0

    :cond_31
    const/4 p0, 0x0

    return-object p0
.end method

.method public isScreenPinningActive()Z
    .registers 3

    const/4 p0, 0x0

    :try_start_1
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityTaskManager;->getLockTaskModeState()I

    move-result v0
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_9} :catch_d

    const/4 v1, 0x2

    if-ne v0, v1, :cond_d

    const/4 p0, 0x1

    :catch_d
    :cond_d
    return p0
.end method
