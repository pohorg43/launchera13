.class public final Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;
.super Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView$Companion;

.field private static final TAG:Ljava/lang/String; = "LauncherTaskView"


# instance fields
.field private alreadyStartTaskView:Z

.field private final baseDisplayDensity:I

.field private displayDensityDpi:I

.field private forceNotShowTaskView:Z

.field private pendingTaskViewSurfaceAlpha:F

.field private resetForceNotShowTaskViewCount:I

.field private final syncQueue:Lcom/oplus/quickstep/taskviewremoteanim/common/SyncTransactionQueue;

.field private taskToken:Landroid/window/WindowContainerToken;

.field private taskViewHeight:I

.field private final taskViewRect:Landroid/graphics/Rect;

.field private taskViewSurfaceAlpha:F

.field private taskViewSurfaceControl:Landroid/view/SurfaceControl;

.field private taskViewWidth:I

.field private final virtualDisplay:Landroid/hardware/display/VirtualDisplay;

.field private virtualDisplayId:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;->Companion:Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/oplus/quickstep/taskviewremoteanim/common/SyncTransactionQueue;Landroid/hardware/display/VirtualDisplay;)V
    .registers 5

    const-string v0, "syncQueue"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;-><init>(Landroid/content/Context;Lcom/oplus/quickstep/taskviewremoteanim/common/SyncTransactionQueue;)V

    iput-object p2, p0, Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;->syncQueue:Lcom/oplus/quickstep/taskviewremoteanim/common/SyncTransactionQueue;

    iput-object p3, p0, Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;->virtualDisplay:Landroid/hardware/display/VirtualDisplay;

    iget-object p1, p0, Landroid/view/SurfaceView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->densityDpi:I

    iput p1, p0, Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;->baseDisplayDensity:I

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;->taskViewRect:Landroid/graphics/Rect;

    const/4 p1, -0x1

    iput p1, p0, Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;->virtualDisplayId:I

    const/16 p2, 0x64

    iput p2, p0, Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;->taskViewWidth:I

    iput p2, p0, Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;->taskViewHeight:I

    const/high16 p2, 0x3f800000  # 1.0f

    iput p2, p0, Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;->taskViewSurfaceAlpha:F

    iput p2, p0, Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;->pendingTaskViewSurfaceAlpha:F

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p2

    new-instance v0, Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView$1;

    invoke-direct {v0, p0}, Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView$1;-><init>(Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;)V

    invoke-virtual {p2, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    if-nez p3, :cond_3f

    goto :goto_4a

    :cond_3f
    invoke-virtual {p3}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object p2

    if-nez p2, :cond_46

    goto :goto_4a

    :cond_46
    invoke-virtual {p2}, Landroid/view/Display;->getDisplayId()I

    move-result p1

    :goto_4a
    iput p1, p0, Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;->virtualDisplayId:I

    invoke-virtual {p0}, Landroid/view/SurfaceView;->setUseAlpha()V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;->setTaskViewTouchable(Z)V

    return-void
.end method

.method public static final synthetic access$getTaskViewHeight$p(Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;)I
    .registers 1

    iget p0, p0, Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;->taskViewHeight:I

    return p0
.end method

.method public static final synthetic access$getTaskViewRect$p(Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;)Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;->taskViewRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method public static final synthetic access$getTaskViewWidth$p(Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;)I
    .registers 1

    iget p0, p0, Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;->taskViewWidth:I

    return p0
.end method

.method public static final synthetic access$resize(Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;->resize(II)V

    return-void
.end method

.method public static final synthetic access$setTaskViewHeight$p(Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;I)V
    .registers 2

    iput p1, p0, Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;->taskViewHeight:I

    return-void
.end method

.method public static final synthetic access$setTaskViewWidth$p(Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;I)V
    .registers 2

    iput p1, p0, Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;->taskViewWidth:I

    return-void
.end method

.method private final executeTransaction(Landroid/window/WindowContainerTransaction;)V
    .registers 5

    const/4 v0, 0x5

    invoke-static {v0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "executeTransaction: caller = "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TaskView"

    const-string v2, "LauncherTaskView"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/util/OplusExecutors;->TASK_VIEW_TRANSACTION_EXECUTOR:Lcom/oplus/util/OplusLooperExecutor;

    new-instance v1, Lcom/android/wm/shell/bubbles/animation/o;

    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/bubbles/animation/o;-><init>(Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;Landroid/window/WindowContainerTransaction;)V

    invoke-static {v0, v1}, Lcom/oplus/util/OplusExecutors;->executeWithUx(Lcom/android/launcher3/util/LooperExecutor;Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final executeTransaction$lambda-1(Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;Landroid/window/WindowContainerTransaction;)V
    .registers 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$wct"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "TaskView"

    const-string v1, "LauncherTaskView"

    const-string v2, "executeTransaction: execute"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;->syncQueue:Lcom/oplus/quickstep/taskviewremoteanim/common/SyncTransactionQueue;

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/taskviewremoteanim/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    return-void
.end method

.method public static synthetic k(Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;Landroid/window/WindowContainerTransaction;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;->executeTransaction$lambda-1(Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;Landroid/window/WindowContainerTransaction;)V

    return-void
.end method

.method public static synthetic l(Landroid/app/PendingIntent;Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;Landroid/content/Intent;Landroid/app/ActivityOptions;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;->startActivity$lambda-4(Landroid/app/PendingIntent;Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;Landroid/content/Intent;Landroid/app/ActivityOptions;)V

    return-void
.end method

.method private final prepareActivityOptions(Landroid/os/Binder;Landroid/app/ActivityOptions;Landroid/graphics/Rect;)V
    .registers 7

    if-nez p3, :cond_4

    const/4 v0, 0x0

    goto :goto_8

    :cond_4
    invoke-virtual {p3}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v0

    :goto_8
    const-string v1, "prepareActivityOptions: launchBounds = "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TaskView"

    const-string v2, "LauncherTaskView"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, p0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper;->addPendingLaunchCookieListener(Landroid/os/Binder;Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeListener;)V

    iget p0, p0, Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;->virtualDisplayId:I

    invoke-virtual {p2, p0}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    invoke-virtual {p2, p3}, Landroid/app/ActivityOptions;->setLaunchBounds(Landroid/graphics/Rect;)Landroid/app/ActivityOptions;

    invoke-virtual {p2, p1}, Landroid/app/ActivityOptions;->setLaunchCookie(Landroid/os/IBinder;)V

    const/4 p0, 0x1

    invoke-virtual {p2, p0}, Landroid/app/ActivityOptions;->setRemoveWithTaskOrganizer(Z)V

    return-void
.end method

.method private final resetForceNotShowTaskView()V
    .registers 2

    iget v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;->resetForceNotShowTaskViewCount:I

    if-lez v0, :cond_9

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;->resetForceNotShowTaskViewCount:I

    return-void

    :cond_9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;->forceNotShowTaskView:Z

    return-void
.end method

.method private final resize(II)V
    .registers 7

    const-string v0, "resize: width = "

    const-string v1, ", height = "

    const-string v2, ", baseDisplayDensity = "

    invoke-static {v0, p1, v1, p2, v2}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;->baseDisplayDensity:I

    const-string v2, "TaskView"

    const-string v3, "LauncherTaskView"

    invoke-static {v0, v1, v2, v3}, Lcom/android/launcher/download/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;->baseDisplayDensity:I

    iput v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;->displayDensityDpi:I

    iget-object v1, p0, Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;->virtualDisplay:Landroid/hardware/display/VirtualDisplay;

    if-nez v1, :cond_1c

    goto :goto_1f

    :cond_1c
    invoke-direct {p0, v1, p1, p2, v0}, Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;->resizeIfPossible(Landroid/hardware/display/VirtualDisplay;III)V

    :goto_1f
    return-void
.end method

.method private final resizeIfPossible(Landroid/hardware/display/VirtualDisplay;III)V
    .registers 6

    const/4 p0, 0x2

    new-array p0, p0, [I

    const/4 v0, 0x0

    aput p2, p0, v0

    const/4 v0, 0x1

    aput p3, p0, v0

    invoke-static {p0}, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewCommonUtils;->isValueGreaterThanZero([I)Z

    move-result p0

    if-nez p0, :cond_10

    return-void

    :cond_10
    invoke-virtual {p1, p2, p3, p4}, Landroid/hardware/display/VirtualDisplay;->resize(III)V

    return-void
.end method

.method private final setSurface(Landroid/view/Surface;Z)V
    .registers 6

    const-string v0, "setSurface: "

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TaskView"

    const-string v2, "LauncherTaskView"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_12

    if-nez p2, :cond_12

    return-void

    :cond_12
    iget-object p0, p0, Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;->virtualDisplay:Landroid/hardware/display/VirtualDisplay;

    if-nez p0, :cond_17

    goto :goto_1a

    :cond_17
    invoke-virtual {p0, p1}, Landroid/hardware/display/VirtualDisplay;->setSurface(Landroid/view/Surface;)V

    :goto_1a
    return-void
.end method

.method public static synthetic setSurface$default(Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;Landroid/view/Surface;ZILjava/lang/Object;)V
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x0

    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;->setSurface(Landroid/view/Surface;Z)V

    return-void
.end method

.method private static final startActivity$lambda-4(Landroid/app/PendingIntent;Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;Landroid/content/Intent;Landroid/app/ActivityOptions;)V
    .registers 13

    const-string v0, "$pendingIntent"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$options"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_f
    iget-object v2, p1, Landroid/view/SurfaceView;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {p3}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v8

    move-object v1, p0

    move-object v4, p2

    invoke-virtual/range {v1 .. v8}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V

    sget-object p0, Ly2/p;->a:Ly2/p;
    :try_end_20
    .catchall {:try_start_f .. :try_end_20} :catchall_21

    goto :goto_26

    :catchall_21
    move-exception p0

    invoke-static {p0}, Lq/d;->h(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_26
    invoke-static {p0}, Ly2/j;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_2d

    goto :goto_38

    :cond_2d
    const-string p1, "startActivity: start activity failure, message is "

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "LauncherTaskView"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_38
    return-void
.end method

.method private final updateSurfaceAlpha(F)V
    .registers 5

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    if-eqz v0, :cond_39

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_39

    :cond_11
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    if-nez v0, :cond_18

    return-void

    :cond_18
    iget v1, p0, Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;->taskViewSurfaceAlpha:F

    cmpg-float v1, p1, v1

    if-nez v1, :cond_20

    const/4 v1, 0x1

    goto :goto_21

    :cond_20
    const/4 v1, 0x0

    :goto_21
    if-nez v1, :cond_39

    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl;->applyTransactionOnDraw(Landroid/view/SurfaceControl$Transaction;)Z

    invoke-virtual {p0}, Landroid/view/SurfaceView;->damageInParent()V

    iput p1, p0, Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;->taskViewSurfaceAlpha:F

    iput p1, p0, Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;->pendingTaskViewSurfaceAlpha:F

    :cond_39
    :goto_39
    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .registers 1

    return-void
.end method

.method public finalize()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x5

    invoke-static {v0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "finalize: we should remove taskview from parent too, caller = "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TaskView"

    const-string v2, "LauncherTaskView"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1d

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x0

    :goto_1e
    if-nez v0, :cond_21

    goto :goto_24

    :cond_21
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :goto_24
    invoke-super {p0}, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->finalize()V

    return-void
.end method

.method public isZOrderedOnTop()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public onBackPressedOnTaskRoot(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 5

    const-string v0, "TaskView"

    const-string v1, "LauncherTaskView"

    const-string v2, "onBackPressedOnTaskRoot: "

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->onBackPressedOnTaskRoot(Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method

.method public onTaskAppeared(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V
    .registers 6

    const-string v0, "onTaskAppeared: taskInfo = "

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TaskView"

    const-string v2, "LauncherTaskView"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_11

    const/4 v0, 0x0

    goto :goto_13

    :cond_11
    iget-object v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    :goto_13
    iput-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;->taskToken:Landroid/window/WindowContainerToken;

    invoke-super {p0, p1, p2}, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->onTaskAppeared(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V

    return-void
.end method

.method public onWindowVisibilityChanged(I)V
    .registers 6

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_17

    const-string v0, "onWindowVisibilityChanged: visibility = "

    const-string v1, ", alreadyStartTaskView = "

    invoke-static {v0, p1, v1}, Landroidx/appcompat/widget/d;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;->alreadyStartTaskView:Z

    const-string v2, "TaskView"

    const-string v3, "LauncherTaskView"

    invoke-static {v0, v1, v2, v3}, Lcom/android/launcher/d0;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/lang/String;)V

    :cond_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LauncherTaskView#onWindowVisibilityChanged("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x8

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-super {p0, p1}, Landroid/view/SurfaceView;->onWindowVisibilityChanged(I)V

    invoke-direct {p0}, Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;->resetForceNotShowTaskView()V

    iget-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;->taskToken:Landroid/window/WindowContainerToken;

    if-nez v0, :cond_3d

    goto :goto_59

    :cond_3d
    iget-boolean v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;->alreadyStartTaskView:Z

    const/4 v3, 0x0

    if-nez v0, :cond_55

    if-nez p1, :cond_55

    new-instance p1, Landroid/window/WindowContainerTransaction;

    invoke-direct {p1}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;->taskToken:Landroid/window/WindowContainerToken;

    invoke-virtual {p1, v0, v3}, Landroid/window/WindowContainerTransaction;->setHidden(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;->alreadyStartTaskView:Z

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;->executeTransaction(Landroid/window/WindowContainerTransaction;)V

    goto :goto_59

    :cond_55
    if-eqz p1, :cond_59

    iput-boolean v3, p0, Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;->alreadyStartTaskView:Z

    :cond_59
    :goto_59
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public release()V
    .registers 4

    invoke-virtual {p0}, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->isReleased()Z

    move-result v0

    const-string v1, "LauncherTaskView"

    const-string v2, "TaskView"

    if-eqz v0, :cond_10

    const-string p0, "taskview already released, we should not release again"

    invoke-static {v2, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_10
    invoke-super {p0}, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->release()V

    const-string v0, "taskview released, so we should remove taskview from parent too"

    invoke-static {v2, v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-eqz v1, :cond_24

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_25

    :cond_24
    move-object v0, v2

    :goto_25
    if-nez v0, :cond_28

    goto :goto_2b

    :cond_28
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :goto_2b
    const/4 v0, 0x1

    invoke-direct {p0, v2, v0}, Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;->setSurface(Landroid/view/Surface;Z)V

    return-void
.end method

.method public resetTaskInfo()V
    .registers 3

    const-string v0, "LauncherTaskView"

    const-string v1, "resetTaskInfo()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;->taskToken:Landroid/window/WindowContainerToken;

    invoke-super {p0}, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->resetTaskInfo()V

    return-void
.end method

.method public setAlpha(F)V
    .registers 2

    invoke-super {p0, p1}, Landroid/view/SurfaceView;->setAlpha(F)V

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;->updateSurfaceAlpha(F)V

    return-void
.end method

.method public final setForceNotShowTaskView(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;->forceNotShowTaskView:Z

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;->taskViewRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;->setObscuredTouchRect(Landroid/graphics/Rect;)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;->resetForceNotShowTaskViewCount:I

    :cond_c
    return-void
.end method

.method public setObscuredTouchRect(Landroid/graphics/Rect;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->setObscuredTouchRect(Landroid/graphics/Rect;)V

    return-void
.end method

.method public final setTaskViewTouchable(Z)V
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    move-object v1, v0

    goto :goto_7

    :cond_5
    iget-object v1, p0, Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;->taskViewRect:Landroid/graphics/Rect;

    :goto_7
    invoke-virtual {p0, v1}, Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;->setObscuredTouchRect(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Landroid/view/SurfaceView;->invalidate()V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTaskViewTouchable: touchable="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", touchRegion="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_22

    goto :goto_26

    :cond_22
    invoke-virtual {v1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v0

    :goto_26
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TaskView"

    const-string v0, "LauncherTaskView"

    invoke-static {p1, v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final shouldStartPreviousTask()Z
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;->taskToken:Landroid/window/WindowContainerToken;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    const/4 p0, 0x1

    return p0
.end method

.method public final shouldStopPreviousTask()Z
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;->taskToken:Landroid/window/WindowContainerToken;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    const/4 p0, 0x1

    return p0
.end method

.method public final startActivity(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Binder;Landroid/app/ActivityOptions;Landroid/graphics/Rect;)V
    .registers 10

    const-string v0, "pendingIntent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "launchCookie"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;->virtualDisplayId:I

    const-string v1, "startActivity: virtualDisplayId = "

    const-string v2, "TaskView"

    const-string v3, "LauncherTaskView"

    invoke-static {v0, v1, v2, v3}, Lcom/android/launcher/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p3, p4, p5}, Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;->prepareActivityOptions(Landroid/os/Binder;Landroid/app/ActivityOptions;Landroid/graphics/Rect;)V

    sget-object p3, Lcom/oplus/util/OplusExecutors;->TASK_VIEW_TRANSACTION_EXECUTOR:Lcom/oplus/util/OplusLooperExecutor;

    new-instance p5, Lcom/android/launcher/c;

    invoke-direct {p5, p1, p0, p2, p4}, Lcom/android/launcher/c;-><init>(Landroid/app/PendingIntent;Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;Landroid/content/Intent;Landroid/app/ActivityOptions;)V

    invoke-static {p3, p5}, Lcom/oplus/util/OplusExecutors;->executeWithUx(Lcom/android/launcher3/util/LooperExecutor;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final startPreviousTask(Z)Z
    .registers 5

    iget-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;->taskToken:Landroid/window/WindowContainerToken;

    const-string v1, "startPreviousTask: taskToken = "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TaskView"

    const-string v2, "LauncherTaskView"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_14

    const/high16 p1, 0x3f800000  # 1.0f

    goto :goto_15

    :cond_14
    const/4 p1, 0x0

    :goto_15
    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;->setAlpha(F)V

    iput p1, p0, Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;->pendingTaskViewSurfaceAlpha:F

    iget-object p1, p0, Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;->taskToken:Landroid/window/WindowContainerToken;

    const/4 v0, 0x0

    if-nez p1, :cond_20

    return v0

    :cond_20
    new-instance p1, Landroid/window/WindowContainerTransaction;

    invoke-direct {p1}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object v1, p0, Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;->taskToken:Landroid/window/WindowContainerToken;

    invoke-virtual {p1, v1, v0}, Landroid/window/WindowContainerTransaction;->setHidden(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;->executeTransaction(Landroid/window/WindowContainerTransaction;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final stopPreviousTask()Z
    .registers 4

    iget-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;->taskToken:Landroid/window/WindowContainerToken;

    const-string v1, "stopPreviousTask: taskToken = "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TaskView"

    const-string v2, "LauncherTaskView"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;->setAlpha(F)V

    iput v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;->pendingTaskViewSurfaceAlpha:F

    iget-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;->taskToken:Landroid/window/WindowContainerToken;

    if-nez v0, :cond_1b

    const/4 p0, 0x0

    return p0

    :cond_1b
    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object v1, p0, Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;->taskToken:Landroid/window/WindowContainerToken;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/window/WindowContainerTransaction;->setHidden(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    invoke-direct {p0, v0}, Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;->executeTransaction(Landroid/window/WindowContainerTransaction;)V

    return v2
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 9

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v2, v3}, Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;->setSurface$default(Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;Landroid/view/Surface;ZILjava/lang/Object;)V

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;->taskViewSurfaceControl:Landroid/view/SurfaceControl;

    iget v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;->pendingTaskViewSurfaceAlpha:F

    invoke-direct {p0, v0}, Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;->updateSurfaceAlpha(F)V

    invoke-super {p0, p1, p2, p3, p4}, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 5

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x8

    const-string v2, "LauncherTaskView#surfaceDestroyed"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-direct {p0, v2}, Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;->updateSurfaceAlpha(F)V

    invoke-super {p0, p1}, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method
