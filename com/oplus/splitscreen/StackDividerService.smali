.class public Lcom/oplus/splitscreen/StackDividerService;
.super Lcom/oplus/splitscreen/IOplusStackDividerConnection$Stub;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/splitscreen/StackDividerService$LazyHolder;
    }
.end annotation


# static fields
.field private static final DISMISS_SPLIT_SCREEN_FROM_MIRGE_MODE:I = 0x8

.field private static final DISMISS_SPLIT_SCREEN_FROM_SUPER_POWER:I = 0x6

.field private static final DISMISS_SPLIT_SCREEN_FROM_ZOOM_MODE:I = 0x9

.field private static final TAG:Ljava/lang/String; = "StackDividerService"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/splitscreen/IOplusStackDividerConnection$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/splitscreen/StackDividerService$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/oplus/splitscreen/StackDividerService;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/wm/shell/splitscreen/SplitScreenController;II)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/oplus/splitscreen/StackDividerService;->lambda$exitSplitScreen$8(Lcom/android/wm/shell/splitscreen/SplitScreenController;II)V

    return-void
.end method

.method public static synthetic b(Lcom/android/wm/shell/splitscreen/SplitScreenController;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/hardware/HardwareBuffer;IZILandroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;I)V
    .registers 10

    invoke-static/range {p0 .. p9}, Lcom/oplus/splitscreen/StackDividerService;->lambda$moveTaskAndIntentActivityToSplitScreen$7(Lcom/android/wm/shell/splitscreen/SplitScreenController;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/hardware/HardwareBuffer;IZILandroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;I)V

    return-void
.end method

.method public static synthetic c(Lcom/android/wm/shell/splitscreen/SplitScreenController;Landroid/content/Intent;Landroid/content/Intent;IILandroid/os/Bundle;)V
    .registers 6

    invoke-static/range {p0 .. p5}, Lcom/oplus/splitscreen/StackDividerService;->lambda$startPairIntent$2(Lcom/android/wm/shell/splitscreen/SplitScreenController;Landroid/content/Intent;Landroid/content/Intent;IILandroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic d(Lcom/android/wm/shell/splitscreen/SplitScreenController;IZ)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/oplus/splitscreen/StackDividerService;->lambda$moveTaskToSplitStage$5(Lcom/android/wm/shell/splitscreen/SplitScreenController;IZ)V

    return-void
.end method

.method public static synthetic e(Lcom/android/wm/shell/splitscreen/SplitScreenController;IILandroid/os/Bundle;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/oplus/splitscreen/StackDividerService;->lambda$startTask$1(Lcom/android/wm/shell/splitscreen/SplitScreenController;IILandroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic f(Lcom/android/wm/shell/splitscreen/SplitScreenController;ILandroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;I)V
    .registers 6

    invoke-static/range {p0 .. p5}, Lcom/oplus/splitscreen/StackDividerService;->lambda$moveToSplitScreen$6(Lcom/android/wm/shell/splitscreen/SplitScreenController;ILandroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;I)V

    return-void
.end method

.method public static synthetic g(Lcom/android/wm/shell/splitscreen/SplitScreenController;IIII)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/oplus/splitscreen/StackDividerService;->lambda$moveTasksToSplitStages$4(Lcom/android/wm/shell/splitscreen/SplitScreenController;IIII)V

    return-void
.end method

.method public static getInstance()Lcom/oplus/splitscreen/StackDividerService;
    .registers 1

    invoke-static {}, Lcom/oplus/splitscreen/StackDividerService$LazyHolder;->access$000()Lcom/oplus/splitscreen/StackDividerService;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic h(ILcom/oplus/splitscreen/SplitToggleHelper;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/splitscreen/StackDividerService;->lambda$dismissSplitScreenMode$0(ILcom/oplus/splitscreen/SplitToggleHelper;)V

    return-void
.end method

.method public static synthetic i(Lcom/android/wm/shell/splitscreen/SplitScreenController;Landroid/app/PendingIntent;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/oplus/splitscreen/StackDividerService;->lambda$startIntent$3(Lcom/android/wm/shell/splitscreen/SplitScreenController;Landroid/app/PendingIntent;Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method private static synthetic lambda$dismissSplitScreenMode$0(ILcom/oplus/splitscreen/SplitToggleHelper;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dismiss split-screen type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackDividerService"

    invoke-static {v1, v0}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x6

    if-ne p0, v0, :cond_1f

    const/16 p0, 0xa

    invoke-virtual {p1, p0}, Lcom/oplus/splitscreen/SplitToggleHelper;->exitSplitScreenModeAndGoHome(I)V

    goto :goto_3d

    :cond_1f
    const/4 v0, 0x5

    if-ne p0, v0, :cond_28

    const/16 p0, 0xb

    invoke-virtual {p1, p0}, Lcom/oplus/splitscreen/SplitToggleHelper;->exitSplitScreenModeAndGoHome(I)V

    goto :goto_3d

    :cond_28
    const/16 v0, 0x8

    if-ne p0, v0, :cond_30

    invoke-virtual {p1, v0}, Lcom/oplus/splitscreen/SplitToggleHelper;->exitSplitScreenModeAndGoHome(I)V

    goto :goto_3d

    :cond_30
    const/16 v1, 0x9

    if-ne p0, v1, :cond_38

    invoke-virtual {p1, v0}, Lcom/oplus/splitscreen/SplitToggleHelper;->exitSplitScreenModeAndGoHome(I)V

    goto :goto_3d

    :cond_38
    const/4 p0, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0, v0}, Lcom/oplus/splitscreen/SplitToggleHelper;->exitSplitScreenMode(ZZI)V

    :goto_3d
    return-void
.end method

.method private static synthetic lambda$exitSplitScreen$8(Lcom/android/wm/shell/splitscreen/SplitScreenController;II)V
    .registers 3

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getExtImpl()Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->exitSplitScreenByType(II)V

    return-void
.end method

.method private static synthetic lambda$moveTaskAndIntentActivityToSplitScreen$7(Lcom/android/wm/shell/splitscreen/SplitScreenController;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/hardware/HardwareBuffer;IZILandroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;I)V
    .registers 20

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getExtImpl()Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->moveToSplitScreen(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/hardware/HardwareBuffer;IZILandroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;I)V

    return-void
.end method

.method private static synthetic lambda$moveTaskToSplitStage$5(Lcom/android/wm/shell/splitscreen/SplitScreenController;IZ)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->moveTaskToSplitStage(IZ)V

    return-void
.end method

.method private static synthetic lambda$moveTasksToSplitStages$4(Lcom/android/wm/shell/splitscreen/SplitScreenController;IIII)V
    .registers 6

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->setDividerShow(Z)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->moveTasksToSplitStages(IIII)V

    return-void
.end method

.method private static synthetic lambda$moveToSplitScreen$6(Lcom/android/wm/shell/splitscreen/SplitScreenController;ILandroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;I)V
    .registers 12

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getExtImpl()Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;

    move-result-object v0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->moveToSplitScreen(ILandroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;I)Z

    return-void
.end method

.method private static synthetic lambda$startIntent$3(Lcom/android/wm/shell/splitscreen/SplitScreenController;Landroid/app/PendingIntent;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->startIntent(Landroid/app/PendingIntent;Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method private static synthetic lambda$startPairIntent$2(Lcom/android/wm/shell/splitscreen/SplitScreenController;Landroid/content/Intent;Landroid/content/Intent;IILandroid/os/Bundle;)V
    .registers 13

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getExtImpl()Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;

    move-result-object v0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->startPairIntent(Landroid/content/Intent;Landroid/content/Intent;IIILandroid/os/Bundle;)V

    return-void
.end method

.method private static synthetic lambda$startTask$1(Lcom/android/wm/shell/splitscreen/SplitScreenController;IILandroid/os/Bundle;)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->startTask(IILandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public dismissSplitScreenMode(I)V
    .registers 4

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object p0

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/splitscreen/SplitToggleHelper;->peekDivider()Lcom/android/wm/shell/splitscreen/SplitScreenController;

    move-result-object v0

    if-nez v0, :cond_f

    return-void

    :cond_f
    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getRemoteCallExecutor()Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    new-instance v1, Lcom/oplus/splitscreen/h;

    invoke-direct {v1, p1, p0}, Lcom/oplus/splitscreen/h;-><init>(ILcom/oplus/splitscreen/SplitToggleHelper;)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public exitSplitScreen(II)V
    .registers 5

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/splitscreen/SplitToggleHelper;->peekDivider()Lcom/android/wm/shell/splitscreen/SplitScreenController;

    move-result-object p0

    if-eqz p0, :cond_16

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getRemoteCallExecutor()Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/launcher/sellmode/a;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/launcher/sellmode/a;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenController;II)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_16
    return-void
.end method

.method public matainSplitState(Z)V
    .registers 3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "test matainSplitState:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "StackDividerService"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/splitscreen/SplitToggleHelper;->peekDivider()Lcom/android/wm/shell/splitscreen/SplitScreenController;

    move-result-object p0

    if-eqz p0, :cond_23

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->matainSplitState(Z)V

    :cond_23
    return-void
.end method

.method public moveTaskAndIntentActivityToSplitScreen(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/hardware/HardwareBuffer;IZILandroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;I)V
    .registers 23

    move-object v2, p1

    if-eqz v2, :cond_16

    iget-boolean v0, v2, Landroid/app/ActivityManager$RunningTaskInfo;->supportsSplitScreenMultiWindow:Z

    if-nez v0, :cond_16

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v0

    iget-object v1, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/oplus/splitscreen/SplitToggleHelper;->showAppNotSupportWarn(Ljava/lang/String;I)V

    return-void

    :cond_16
    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/splitscreen/SplitToggleHelper;->peekDivider()Lcom/android/wm/shell/splitscreen/SplitScreenController;

    move-result-object v1

    if-eqz v1, :cond_3d

    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getRemoteCallExecutor()Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v11

    new-instance v12, Lcom/oplus/splitscreen/k;

    move-object v0, v12

    move-object v2, p1

    move-object v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/oplus/splitscreen/k;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenController;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/hardware/HardwareBuffer;IZILandroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;I)V

    invoke-interface {v11, v12}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_3d
    return-void
.end method

.method public moveTaskToSplitStage(IZ)V
    .registers 5

    const-string p0, "StackDividerService"

    const-string v0, "test moveTaskToSplitStage"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/splitscreen/SplitToggleHelper;->peekDivider()Lcom/android/wm/shell/splitscreen/SplitScreenController;

    move-result-object p0

    if-eqz p0, :cond_1d

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getRemoteCallExecutor()Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/quickstep/d;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/quickstep/d;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenController;IZ)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_1d
    return-void
.end method

.method public moveTasksToSplitStages(IIII)V
    .registers 12

    const-string p0, "StackDividerService"

    const-string v0, "test moveTasksToSplitStages"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/splitscreen/SplitToggleHelper;->peekDivider()Lcom/android/wm/shell/splitscreen/SplitScreenController;

    move-result-object v1

    if-eqz v1, :cond_22

    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getRemoteCallExecutor()Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object p0

    new-instance v6, Lcom/oplus/splitscreen/j;

    move-object v0, v6

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/oplus/splitscreen/j;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenController;IIII)V

    invoke-interface {p0, v6}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_22
    return-void
.end method

.method public moveToSplitScreen(ILandroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;I)V
    .registers 14

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/splitscreen/SplitToggleHelper;->peekDivider()Lcom/android/wm/shell/splitscreen/SplitScreenController;

    move-result-object v1

    if-eqz v1, :cond_1c

    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getRemoteCallExecutor()Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object p0

    new-instance v7, Lcom/android/launcher3/dragndrop/t;

    move-object v0, v7

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/dragndrop/t;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenController;ILandroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;I)V

    invoke-interface {p0, v7}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_1c
    return-void
.end method

.method public needInterceptStartForSplitScreen(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 5

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "needInterceptStartForSplitScreen  calledPkg:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " targetPkg:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "StackDividerService"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object p0

    invoke-virtual {p0, p2, p1, p3}, Lcom/oplus/splitscreen/SplitToggleHelper;->needInterceptStartForSplitScreen(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public registerStackDivider(Landroid/content/Context;)V
    .registers 4

    const-string v0, "StackDividerService"

    const-string v1, "SystemUi registerStackDivider"

    invoke-static {v0, v1}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_7
    invoke-static {p1, p0}, Lcom/oplus/splitscreen/ReflectionHelper;->OplusSplitScreenManager_registerStackDivider(Landroid/content/Context;Lcom/oplus/splitscreen/IOplusStackDividerConnection;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_a} :catch_b

    goto :goto_11

    :catch_b
    move-exception p0

    const-string p1, "registerStackDivider error: "

    invoke-static {p1, p0, v0}, Lcom/android/common/debug/b;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_11
    return-void
.end method

.method public setDividerShow(Z)V
    .registers 3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setDividerWindowShow:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "StackDividerService"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/splitscreen/SplitToggleHelper;->peekDivider()Lcom/android/wm/shell/splitscreen/SplitScreenController;

    move-result-object p0

    if-eqz p0, :cond_23

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->setDividerShow(Z)V

    :cond_23
    return-void
.end method

.method public showNotSupportSplitWarn(Ljava/lang/CharSequence;)V
    .registers 3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "showNotSupportSplitWarn:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "StackDividerService"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/splitscreen/SplitToggleHelper;->showNotSupportSplitWarn(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public showSplitToast(ILandroid/os/Bundle;)V
    .registers 3

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/oplus/splitscreen/SplitToggleHelper;->showSplitToast(ILandroid/os/Bundle;)V

    return-void
.end method

.method public startIntent(Landroid/app/PendingIntent;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .registers 12

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/splitscreen/SplitToggleHelper;->peekDivider()Lcom/android/wm/shell/splitscreen/SplitScreenController;

    move-result-object v1

    if-eqz v1, :cond_33

    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getExtImpl()Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->startIntentInMinimize(Landroid/app/PendingIntent;Landroid/content/Intent;ILandroid/os/Bundle;)Z

    move-result p0

    if-eqz p0, :cond_15

    return-void

    :cond_15
    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isInSplitScreenMode()Z

    move-result p0

    if-nez p0, :cond_22

    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getExtImpl()Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->onStartTaskToSplit()V

    :cond_22
    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getRemoteCallExecutor()Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object p0

    new-instance v6, Lcom/android/launcher3/folder/e;

    move-object v0, v6

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/folder/e;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenController;Landroid/app/PendingIntent;Landroid/content/Intent;ILandroid/os/Bundle;)V

    invoke-interface {p0, v6}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_33
    return-void
.end method

.method public startPairIntent(Landroid/content/Intent;Landroid/content/Intent;IILandroid/os/Bundle;)V
    .registers 14

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/splitscreen/SplitToggleHelper;->peekDivider()Lcom/android/wm/shell/splitscreen/SplitScreenController;

    move-result-object v1

    if-eqz v1, :cond_1c

    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getRemoteCallExecutor()Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object p0

    new-instance v7, Lcom/android/launcher3/dragndrop/t;

    move-object v0, v7

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/dragndrop/t;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenController;Landroid/content/Intent;Landroid/content/Intent;IILandroid/os/Bundle;)V

    invoke-interface {p0, v7}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_1c
    return-void
.end method

.method public startTask(IILandroid/os/Bundle;)V
    .registers 6

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/splitscreen/SplitToggleHelper;->peekDivider()Lcom/android/wm/shell/splitscreen/SplitScreenController;

    move-result-object p0

    if-eqz p0, :cond_1e

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getRemoteCallExecutor()Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/common/util/c;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/common/util/c;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenController;IILandroid/os/Bundle;)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 p1, 0x3

    invoke-static {p0, p1}, Lcom/oplus/splitscreen/util/StackDividerStatisticUtils;->onSplitScreenLaunched(Landroid/content/Context;I)V

    :cond_1e
    return-void
.end method

.method public toggleSplitScreen(I)V
    .registers 2

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/splitscreen/SplitToggleHelper;->toggleSplitScreenMode(I)V

    return-void
.end method
