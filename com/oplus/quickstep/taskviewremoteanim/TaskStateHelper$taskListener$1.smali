.class public final Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$taskListener$1;
.super Lcom/android/wm/shell/transition/OplusTaskListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper;-><clinit>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/transition/OplusTaskListener;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 1

    invoke-static {p0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$taskListener$1;->onBackPressedOnTaskRoot$lambda-12(Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method

.method public static synthetic b(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 1

    invoke-static {p0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$taskListener$1;->onTaskInfoChanged$lambda-6(Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method

.method public static synthetic c(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 1

    invoke-static {p0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$taskListener$1;->onTaskVanished$lambda-10(Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method

.method public static synthetic d(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$taskListener$1;->onTaskAppeared$lambda-4(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V

    return-void
.end method

.method private static final onBackPressedOnTaskRoot$lambda-12(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 4

    if-nez p0, :cond_4

    const/4 v0, -0x1

    goto :goto_6

    :cond_4
    iget v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    :goto_6
    invoke-static {}, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper;->access$getGlobalListeners$p()Ljava/util/LinkedList;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeListener;

    invoke-interface {v2, p0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeListener;->onBackPressedOnTaskRoot(Landroid/app/ActivityManager$RunningTaskInfo;)V

    goto :goto_e

    :cond_1e
    invoke-static {}, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper;->access$getTaskIdListeners$p()Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeListener;

    if-nez v0, :cond_2b

    goto :goto_2e

    :cond_2b
    invoke-interface {v0, p0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeListener;->onBackPressedOnTaskRoot(Landroid/app/ActivityManager$RunningTaskInfo;)V

    :goto_2e
    return-void
.end method

.method private static final onTaskAppeared$lambda-4(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V
    .registers 6

    if-nez p0, :cond_3

    goto :goto_3c

    :cond_3
    iget-object v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->launchCookies:Ljava/util/ArrayList;

    const-string v1, "info.launchCookies"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    invoke-static {}, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper;->access$getPendingLaunchCookieListeners$p()Landroid/util/ArrayMap;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeListener;

    if-nez v2, :cond_27

    goto :goto_e

    :cond_27
    invoke-static {}, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper;->access$getPendingLaunchCookieListeners$p()Landroid/util/ArrayMap;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableMap(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper;->access$getTaskIdListeners$p()Landroid/util/SparseArray;

    move-result-object v1

    iget v3, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_e

    :cond_3c
    :goto_3c
    if-nez p0, :cond_40

    const/4 v0, -0x1

    goto :goto_42

    :cond_40
    iget v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    :goto_42
    invoke-static {}, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper;->access$getGlobalListeners$p()Ljava/util/LinkedList;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeListener;

    invoke-interface {v2, p0, p1}, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeListener;->onTaskAppeared(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V

    goto :goto_4a

    :cond_5a
    invoke-static {}, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper;->access$getTaskIdListeners$p()Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeListener;

    if-nez v0, :cond_67

    goto :goto_6a

    :cond_67
    invoke-interface {v0, p0, p1}, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeListener;->onTaskAppeared(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V

    :goto_6a
    return-void
.end method

.method private static final onTaskInfoChanged$lambda-6(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 4

    if-nez p0, :cond_4

    const/4 v0, -0x1

    goto :goto_6

    :cond_4
    iget v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    :goto_6
    invoke-static {}, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper;->access$getGlobalListeners$p()Ljava/util/LinkedList;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeListener;

    invoke-interface {v2, p0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeListener;->onTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V

    goto :goto_e

    :cond_1e
    invoke-static {}, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper;->access$getTaskIdListeners$p()Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeListener;

    if-nez v0, :cond_2b

    goto :goto_2e

    :cond_2b
    invoke-interface {v0, p0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeListener;->onTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V

    :goto_2e
    return-void
.end method

.method private static final onTaskVanished$lambda-10(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 4

    if-nez p0, :cond_3

    goto :goto_2a

    :cond_3
    iget-object v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->launchCookies:Ljava/util/ArrayList;

    const-string v1, "info.launchCookies"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_e
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    invoke-static {}, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper;->access$getPendingLaunchCookieListeners$p()Landroid/util/ArrayMap;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeListener;

    if-eqz v1, :cond_e

    invoke-interface {v1, p0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeListener;->onTaskVanished(Landroid/app/ActivityManager$RunningTaskInfo;)V

    goto :goto_e

    :cond_2a
    :goto_2a
    if-nez p0, :cond_2e

    const/4 v0, -0x1

    goto :goto_30

    :cond_2e
    iget v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    :goto_30
    invoke-static {}, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper;->access$getGlobalListeners$p()Ljava/util/LinkedList;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_38
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_48

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeListener;

    invoke-interface {v2, p0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeListener;->onTaskVanished(Landroid/app/ActivityManager$RunningTaskInfo;)V

    goto :goto_38

    :cond_48
    invoke-static {}, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper;->access$getTaskIdListeners$p()Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeListener;

    if-nez v0, :cond_55

    goto :goto_58

    :cond_55
    invoke-interface {v0, p0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeListener;->onTaskVanished(Landroid/app/ActivityManager$RunningTaskInfo;)V

    :goto_58
    return-void
.end method


# virtual methods
.method public onBackPressedOnTaskRoot(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 3

    const-string p0, "onBackPressedOnTaskRoot: taskInfo="

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "TaskStateHelper"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/oplus/quickstep/taskviewremoteanim/a;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oplus/quickstep/taskviewremoteanim/a;-><init>(Landroid/app/ActivityManager$RunningTaskInfo;I)V

    sget-object p1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    const-string v0, "MAIN_EXECUTOR"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p0}, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewCommonUtils;->runOnTargetThread(Lcom/android/launcher3/util/LooperExecutor;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onTaskAppeared(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V
    .registers 4

    const-string p0, "onTaskAppeared: taskInfo="

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "TaskStateHelper"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/android/wm/shell/bubbles/animation/o;

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/bubbles/animation/o;-><init>(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V

    sget-object p1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    const-string p2, "MAIN_EXECUTOR"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p0}, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewCommonUtils;->runOnTargetThread(Lcom/android/launcher3/util/LooperExecutor;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 3

    const-string p0, "onTaskInfoChanged: taskInfo="

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "TaskStateHelper"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/oplus/quickstep/taskviewremoteanim/a;

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/oplus/quickstep/taskviewremoteanim/a;-><init>(Landroid/app/ActivityManager$RunningTaskInfo;I)V

    sget-object p1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    const-string v0, "MAIN_EXECUTOR"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p0}, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewCommonUtils;->runOnTargetThread(Lcom/android/launcher3/util/LooperExecutor;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onTaskVanished(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 3

    const-string p0, "onTaskVanished: taskInfo="

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "TaskStateHelper"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/oplus/quickstep/taskviewremoteanim/a;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/oplus/quickstep/taskviewremoteanim/a;-><init>(Landroid/app/ActivityManager$RunningTaskInfo;I)V

    sget-object p1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    const-string v0, "MAIN_EXECUTOR"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p0}, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewCommonUtils;->runOnTargetThread(Lcom/android/launcher3/util/LooperExecutor;Ljava/lang/Runnable;)V

    return-void
.end method
