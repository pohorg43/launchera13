.class public final Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeListener;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper;

.field private static final INVALID_INDEX:I = -0x1

.field private static final TAG:Ljava/lang/String; = "TaskStateHelper"

.field private static final globalListeners:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private static isTaskListenerRegistered:Z

.field private static final pendingLaunchCookieListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/Binder;",
            "Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private static final taskIdListeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private static final taskListener:Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$taskListener$1;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper;

    invoke-direct {v0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper;-><init>()V

    sput-object v0, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper;->INSTANCE:Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper;->globalListeners:Ljava/util/LinkedList;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper;->pendingLaunchCookieListeners:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper;->taskIdListeners:Landroid/util/SparseArray;

    new-instance v0, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$taskListener$1;

    invoke-direct {v0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$taskListener$1;-><init>()V

    sput-object v0, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper;->taskListener:Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$taskListener$1;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getGlobalListeners$p()Ljava/util/LinkedList;
    .registers 1

    sget-object v0, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper;->globalListeners:Ljava/util/LinkedList;

    return-object v0
.end method

.method public static final synthetic access$getPendingLaunchCookieListeners$p()Landroid/util/ArrayMap;
    .registers 1

    sget-object v0, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper;->pendingLaunchCookieListeners:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public static final synthetic access$getTaskIdListeners$p()Landroid/util/SparseArray;
    .registers 1

    sget-object v0, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper;->taskIdListeners:Landroid/util/SparseArray;

    return-object v0
.end method

.method public static final addGlobalTaskStateChangeListener(Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeListener;)V
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "listener"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "TaskView"

    const-string v1, "TaskStateHelper"

    const-string v2, "addTaskStateChangeListener()"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper;->globalListeners:Ljava/util/LinkedList;

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static final addPendingLaunchCookieListener(Landroid/os/Binder;Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeListener;)V
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "launchCookie"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "addPendingLaunchCookieListener: launchCookie="

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TaskView"

    const-string v2, "TaskStateHelper"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper;->pendingLaunchCookieListeners:Landroid/util/ArrayMap;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static final init(Landroid/content/Context;)V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "ctx"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewCommonUtils;->supportTaskViewRemoteAnimation()Z

    move-result v0

    const-string v1, "TaskStateHelper"

    if-nez v0, :cond_13

    const-string p0, "init: we won\'t register task listener, because of task-view remote animation unsupported"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_13
    const-string v0, "init()"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper;->registerTaskListener(Landroid/content/Context;)V

    return-void
.end method

.method private static final registerTaskListener(Landroid/content/Context;)V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "TaskStateHelper"

    const-string v1, "registerTaskListener()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/SystemUiProxy;

    sget-object v0, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper;->taskListener:Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$taskListener$1;

    invoke-virtual {p0, v0}, Lcom/android/quickstep/proxy/OplusSystemUiProxyImpl;->addTaskListener(Lcom/android/wm/shell/transition/IOplusTaskListener;)Z

    move-result p0

    sput-boolean p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper;->isTaskListenerRegistered:Z

    return-void
.end method

.method public static final release(Landroid/content/Context;)V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "ctx"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewCommonUtils;->supportTaskViewRemoteAnimation()Z

    move-result v0

    const-string v1, "TaskStateHelper"

    if-nez v0, :cond_13

    const-string p0, "release: we won\'t unregister task listener, because of task-view remote animation unsupported"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_13
    const-string v0, "release()"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper;->unregisterTaskListener(Landroid/content/Context;)V

    return-void
.end method

.method public static final removeAllListener()V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "TaskView"

    const-string v1, "TaskStateHelper"

    const-string v2, "removeAllListener()"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper;->globalListeners:Ljava/util/LinkedList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeListener;

    invoke-interface {v1}, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeListener;->onTaskListenerReleased()V

    goto :goto_f

    :cond_1f
    sget-object v0, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper;->globalListeners:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    return-void
.end method

.method public static final removeGlobalTaskStateChangeListener(Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeListener;)V
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "listener"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "TaskView"

    const-string v1, "TaskStateHelper"

    const-string v2, "removeTaskStateChangeListener()"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper;->globalListeners:Ljava/util/LinkedList;

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public static final removeListenerAllOfList(Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeListener;)V
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "listener"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "removeListenerAllOfList: listener="

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TaskView"

    const-string v2, "TaskStateHelper"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper;->pendingLaunchCookieListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->indexOfValue(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1e

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    :cond_1e
    sget-object v0, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper;->taskIdListeners:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result p0

    if-eq p0, v2, :cond_29

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_29
    return-void
.end method

.method public static final removePendingLaunchCookieListener(Landroid/os/Binder;)V
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "launchCookie"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "removePendingLaunchCookieListener: launchCookie="

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TaskView"

    const-string v2, "TaskStateHelper"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper;->pendingLaunchCookieListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final unregisterTaskListener(Landroid/content/Context;)V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "TaskStateHelper"

    const-string v1, "unregisterTaskListener()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/SystemUiProxy;

    sget-object v0, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper;->taskListener:Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$taskListener$1;

    invoke-virtual {p0, v0}, Lcom/android/quickstep/proxy/OplusSystemUiProxyImpl;->removeTaskListener(Lcom/android/wm/shell/transition/IOplusTaskListener;)V

    const/4 p0, 0x0

    sput-boolean p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper;->isTaskListenerRegistered:Z

    return-void
.end method


# virtual methods
.method public final isTaskListenerRegistered()Z
    .registers 1

    sget-boolean p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper;->isTaskListenerRegistered:Z

    return p0
.end method
