.class public Lcom/android/wm/shell/compatui/CompatUIControllerExt;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final FROM_OPLUS_COMPACT:Ljava/lang/String; = "oplusCompat"

.field private static final POLICY_COMPACT_FOCUSED_APP:Ljava/lang/String; = "focusedApp"

.field private static final POLICY_COMPACT_RECETNS_ANIMATION_FINISHED:Ljava/lang/String; = "recentsAnimationFinished"

.field private static final POLICY_COMPACT_RECETNS_START:Ljava/lang/String; = "recentsStart"

.field private static final REFRESH_COMPACT_INFO:Ljava/lang/String; = "refreshCompactInfo"

.field private static final ROTATION_CHANGE:Ljava/lang/String; = "rotatioChange"

.field private static final ROTATION_CHANGE_TIMEOUT_DURATION:I = 0x7d0

.field private static final TAG:Ljava/lang/String; = "CompatUIControllerExt"

.field private static final TOP_IS_FULLSCREEN:Ljava/lang/String; = "topIsFullscreen"


# instance fields
.field private final mActiveOplusCompatLayouts:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/oplus/compatui/OplusCompatUIWindowManager;",
            ">;"
        }
    .end annotation
.end field

.field private mCompatUIController:Lcom/android/wm/shell/compatui/CompatUIController;

.field private final mContext:Landroid/content/Context;

.field private final mDisplayController:Lcom/android/wm/shell/common/DisplayController;

.field private mFullScreenSwitchController:Lcom/oplus/compatui/OplusFullscreenSwitchController;

.field private mHandler:Landroid/os/Handler;

.field private mInFixedRotation:Z

.field private mInRotationChange:Z

.field private mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field private mOnRotationChangeTimeout:Ljava/lang/Runnable;

.field private mOplusCompactWindowObserver:Lcom/oplus/compactwindow/IOplusCompactWindowObserver;

.field private final mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

.field private mTopInFullScreen:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/compatui/CompatUIController;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/SyncTransactionQueue;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIControllerExt;->mActiveOplusCompatLayouts:Landroid/util/SparseArray;

    new-instance v0, Lcom/android/wm/shell/compatui/b;

    invoke-direct {v0, p0, v1}, Lcom/android/wm/shell/compatui/b;-><init>(Lcom/android/wm/shell/compatui/CompatUIControllerExt;I)V

    iput-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIControllerExt;->mOnRotationChangeTimeout:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/wm/shell/compatui/CompatUIControllerExt$1;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/compatui/CompatUIControllerExt$1;-><init>(Lcom/android/wm/shell/compatui/CompatUIControllerExt;)V

    iput-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIControllerExt;->mOplusCompactWindowObserver:Lcom/oplus/compactwindow/IOplusCompactWindowObserver;

    iput-object p1, p0, Lcom/android/wm/shell/compatui/CompatUIControllerExt;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/wm/shell/compatui/CompatUIControllerExt;->mCompatUIController:Lcom/android/wm/shell/compatui/CompatUIController;

    iput-object p4, p0, Lcom/android/wm/shell/compatui/CompatUIControllerExt;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    iput-object p5, p0, Lcom/android/wm/shell/compatui/CompatUIControllerExt;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    iput-object p3, p0, Lcom/android/wm/shell/compatui/CompatUIControllerExt;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance p2, Lcom/oplus/compatui/OplusFullscreenSwitchController;

    invoke-direct {p2, p1}, Lcom/oplus/compatui/OplusFullscreenSwitchController;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/wm/shell/compatui/CompatUIControllerExt;->mFullScreenSwitchController:Lcom/oplus/compatui/OplusFullscreenSwitchController;

    invoke-direct {p0}, Lcom/android/wm/shell/compatui/CompatUIControllerExt;->registerCompactWindowObserver()V

    invoke-direct {p0}, Lcom/android/wm/shell/compatui/CompatUIControllerExt;->notifyCompatUIInit()V

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/wm/shell/compatui/CompatUIControllerExt;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic a(Lcom/android/wm/shell/compatui/CompatUIControllerExt;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/compatui/CompatUIControllerExt;->lambda$new$1()V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/wm/shell/compatui/CompatUIControllerExt;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/compatui/CompatUIControllerExt;->logD(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/android/wm/shell/compatui/CompatUIControllerExt;)Lcom/android/wm/shell/common/ShellExecutor;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/compatui/CompatUIControllerExt;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/wm/shell/compatui/CompatUIControllerExt;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/wm/shell/compatui/CompatUIControllerExt;->mInRotationChange:Z

    return p0
.end method

.method public static synthetic access$300(Lcom/android/wm/shell/compatui/CompatUIControllerExt;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/wm/shell/compatui/CompatUIControllerExt;->mTopInFullScreen:Z

    return p0
.end method

.method public static synthetic access$400(Lcom/android/wm/shell/compatui/CompatUIControllerExt;ZLjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/compatui/CompatUIControllerExt;->dealFinishRecents(ZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic access$500(Lcom/android/wm/shell/compatui/CompatUIControllerExt;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/compatui/CompatUIControllerExt;->dealRotationChange(Z)V

    return-void
.end method

.method public static synthetic access$600(Lcom/android/wm/shell/compatui/CompatUIControllerExt;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/compatui/CompatUIControllerExt;->dealTopFullScreen(Z)V

    return-void
.end method

.method public static synthetic access$700(Lcom/android/wm/shell/compatui/CompatUIControllerExt;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/compatui/CompatUIControllerExt;->dealRefreshCompactInfo(Z)V

    return-void
.end method

.method public static synthetic access$800(Lcom/android/wm/shell/compatui/CompatUIControllerExt;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/compatui/CompatUIControllerExt;->dealStartRecents(Z)V

    return-void
.end method

.method public static synthetic b(Lcom/android/wm/shell/compatui/CompatUIControllerExt;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/compatui/CompatUIControllerExt;->lambda$new$0()V

    return-void
.end method

.method private createOplusCompatUiWindowManager(Landroid/content/Context;Landroid/app/TaskInfo;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;)Lcom/oplus/compatui/OplusCompatUIWindowManager;
    .registers 12

    new-instance v7, Lcom/oplus/compatui/OplusCompatUIWindowManager;

    iget-object v3, p0, Lcom/android/wm/shell/compatui/CompatUIControllerExt;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIControllerExt;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    iget v1, p2, Landroid/app/TaskInfo;->displayId:I

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object v5

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/oplus/compatui/OplusCompatUIWindowManager;-><init>(Landroid/content/Context;Landroid/app/TaskInfo;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;Lcom/android/wm/shell/common/DisplayLayout;Lcom/android/wm/shell/compatui/CompatUIControllerExt;)V

    return-object v7
.end method

.method private createOrUpdateOplusCompatLayout(Landroid/app/TaskInfo;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;)V
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIControllerExt;->mActiveOplusCompatLayouts:Landroid/util/SparseArray;

    iget v1, p1, Landroid/app/TaskInfo;->taskId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/compatui/OplusCompatUIWindowManager;

    if-eqz v0, :cond_38

    invoke-virtual {v0}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->getDisplayId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/wm/shell/compatui/CompatUIControllerExt;->showOnDisplay(I)Z

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/oplus/compatui/OplusCompatUIWindowManager;->updateCompatInfo(Landroid/app/TaskInfo;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;Z)Z

    move-result p2

    if-nez p2, :cond_37

    iget-object p2, p0, Lcom/android/wm/shell/compatui/CompatUIControllerExt;->mActiveOplusCompatLayouts:Landroid/util/SparseArray;

    iget v0, p1, Landroid/app/TaskInfo;->taskId:I

    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->remove(I)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "createOrUpdateOplusCompatLayout: remove taskID "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/app/TaskInfo;->taskId:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/wm/shell/compatui/CompatUIControllerExt;->logV(Ljava/lang/String;)V

    :cond_37
    return-void

    :cond_38
    iget v0, p1, Landroid/app/TaskInfo;->displayId:I

    invoke-direct {p0, v0}, Lcom/android/wm/shell/compatui/CompatUIControllerExt;->showOnDisplay(I)Z

    move-result v0

    if-nez v0, :cond_41

    return-void

    :cond_41
    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIControllerExt;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/wm/shell/compatui/CompatUIControllerExt;->createOplusCompatUiWindowManager(Landroid/content/Context;Landroid/app/TaskInfo;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;)Lcom/oplus/compatui/OplusCompatUIWindowManager;

    move-result-object p2

    :try_start_47
    iget v0, p1, Landroid/app/TaskInfo;->displayId:I

    invoke-direct {p0, v0}, Lcom/android/wm/shell/compatui/CompatUIControllerExt;->showOnDisplay(I)Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->createLayout(Z)Z

    move-result v0

    if-eqz v0, :cond_85

    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIControllerExt;->mActiveOplusCompatLayouts:Landroid/util/SparseArray;

    iget v1, p1, Landroid/app/TaskInfo;->taskId:I

    invoke-virtual {v0, v1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/wm/shell/compatui/CompatUIControllerExt;->shouldShowLayout(I)Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/oplus/compatui/OplusCompatUIWindowManager;->showLayout(Z)V

    iget-boolean v0, p0, Lcom/android/wm/shell/compatui/CompatUIControllerExt;->mTopInFullScreen:Z

    invoke-virtual {p2, v0}, Lcom/oplus/compatui/OplusCompatUIWindowManager;->topInFullScreen(Z)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "createOrUpdateOplusCompatLayout: add taskId "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/app/TaskInfo;->taskId:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/wm/shell/compatui/CompatUIControllerExt;->logV(Ljava/lang/String;)V
    :try_end_7d
    .catch Ljava/lang/IllegalStateException; {:try_start_47 .. :try_end_7d} :catch_7e

    goto :goto_85

    :catch_7e
    const-string p0, "CompatUIControllerExt"

    const-string p1, "createLayout failed"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_85
    :goto_85
    return-void
.end method

.method private dealFinishRecents(ZLjava/lang/String;)V
    .registers 3

    if-eqz p1, :cond_7

    iget-object p0, p0, Lcom/android/wm/shell/compatui/CompatUIControllerExt;->mFullScreenSwitchController:Lcom/oplus/compatui/OplusFullscreenSwitchController;

    invoke-virtual {p0, p2}, Lcom/oplus/compatui/OplusFullscreenSwitchController;->onFinishRecents(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method private dealRefreshCompactInfo(Z)V
    .registers 4

    if-eqz p1, :cond_21

    const/4 p1, 0x0

    :goto_3
    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIControllerExt;->mActiveOplusCompatLayouts:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge p1, v0, :cond_21

    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIControllerExt;->mActiveOplusCompatLayouts:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/wm/shell/compatui/CompatUIControllerExt;->mActiveOplusCompatLayouts:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/compatui/OplusCompatUIWindowManager;

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Lcom/oplus/compatui/OplusCompatUIWindowManager;->refreshCompactInfo()V

    :cond_1e
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_21
    return-void
.end method

.method private dealRotationChange(Z)V
    .registers 5

    iget-boolean v0, p0, Lcom/android/wm/shell/compatui/CompatUIControllerExt;->mInRotationChange:Z

    if-eq p1, v0, :cond_46

    iput-boolean p1, p0, Lcom/android/wm/shell/compatui/CompatUIControllerExt;->mInRotationChange:Z

    invoke-direct {p0}, Lcom/android/wm/shell/compatui/CompatUIControllerExt;->removeTimeout()V

    if-eqz p1, :cond_10

    const-wide/16 v0, 0x7d0

    invoke-direct {p0, v0, v1}, Lcom/android/wm/shell/compatui/CompatUIControllerExt;->scheduleTimeout(J)V

    :cond_10
    const-string p1, "dealRotationChange "

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean v0, p0, Lcom/android/wm/shell/compatui/CompatUIControllerExt;->mInRotationChange:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/wm/shell/compatui/CompatUIControllerExt;->logV(Ljava/lang/String;)V

    const/4 p1, 0x0

    move v0, p1

    :goto_24
    iget-object v1, p0, Lcom/android/wm/shell/compatui/CompatUIControllerExt;->mActiveOplusCompatLayouts:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_46

    iget-object v1, p0, Lcom/android/wm/shell/compatui/CompatUIControllerExt;->mActiveOplusCompatLayouts:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/wm/shell/compatui/CompatUIControllerExt;->mActiveOplusCompatLayouts:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/compatui/OplusCompatUIWindowManager;

    if-eqz v1, :cond_43

    invoke-direct {p0, p1}, Lcom/android/wm/shell/compatui/CompatUIControllerExt;->shouldShowLayout(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/oplus/compatui/OplusCompatUIWindowManager;->showLayout(Z)V

    :cond_43
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    :cond_46
    return-void
.end method

.method private dealStartRecents(Z)V
    .registers 2

    if-eqz p1, :cond_7

    iget-object p0, p0, Lcom/android/wm/shell/compatui/CompatUIControllerExt;->mFullScreenSwitchController:Lcom/oplus/compatui/OplusFullscreenSwitchController;

    invoke-virtual {p0}, Lcom/oplus/compatui/OplusFullscreenSwitchController;->onStartRecents()V

    :cond_7
    return-void
.end method

.method private dealTopFullScreen(Z)V
    .registers 4

    iget-boolean v0, p0, Lcom/android/wm/shell/compatui/CompatUIControllerExt;->mTopInFullScreen:Z

    if-eq p1, v0, :cond_27

    iput-boolean p1, p0, Lcom/android/wm/shell/compatui/CompatUIControllerExt;->mTopInFullScreen:Z

    const/4 p1, 0x0

    :goto_7
    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIControllerExt;->mActiveOplusCompatLayouts:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge p1, v0, :cond_27

    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIControllerExt;->mActiveOplusCompatLayouts:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/wm/shell/compatui/CompatUIControllerExt;->mActiveOplusCompatLayouts:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/compatui/OplusCompatUIWindowManager;

    if-eqz v0, :cond_24

    iget-boolean v1, p0, Lcom/android/wm/shell/compatui/CompatUIControllerExt;->mTopInFullScreen:Z

    invoke-virtual {v0, v1}, Lcom/oplus/compatui/OplusCompatUIWindowManager;->topInFullScreen(Z)V

    :cond_24
    add-int/lit8 p1, p1, 0x1

    goto :goto_7

    :cond_27
    return-void
.end method

.method private synthetic lambda$new$0()V
    .registers 2

    const-string v0, "mOnRotationChangeTimeout"

    invoke-direct {p0, v0}, Lcom/android/wm/shell/compatui/CompatUIControllerExt;->logD(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/wm/shell/compatui/CompatUIControllerExt;->dealRotationChange(Z)V

    return-void
.end method

.method private synthetic lambda$new$1()V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIControllerExt;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v1, Lcom/android/wm/shell/compatui/b;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/wm/shell/compatui/b;-><init>(Lcom/android/wm/shell/compatui/CompatUIControllerExt;I)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private logD(Ljava/lang/String;)V
    .registers 2

    invoke-static {}, Lcom/oplus/compatui/LogUtil;->getTagWithClassName()Z

    move-result p0

    if-eqz p0, :cond_c

    const-string p0, "CompatUIControllerExt"

    invoke-static {p0, p1}, Lcom/oplus/compatui/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    :cond_c
    invoke-static {p1}, Lcom/oplus/compatui/LogUtil;->logD(Ljava/lang/String;)V

    :goto_f
    return-void
.end method

.method private logV(Ljava/lang/String;)V
    .registers 2

    invoke-static {}, Lcom/oplus/compatui/LogUtil;->getTagWithClassName()Z

    move-result p0

    if-eqz p0, :cond_c

    const-string p0, "CompatUIControllerExt"

    invoke-static {p0, p1}, Lcom/oplus/compatui/LogUtil;->logV(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    :cond_c
    invoke-static {p1}, Lcom/oplus/compatui/LogUtil;->logV(Ljava/lang/String;)V

    :goto_f
    return-void
.end method

.method private notifyCompatUIInit()V
    .registers 3

    :try_start_0
    invoke-static {}, Lcom/oplus/compatmode/OplusCompatModeManager;->getInstance()Lcom/oplus/compatmode/OplusCompatModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/compatmode/OplusCompatModeManager;->compatUIInit()V
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_8

    goto :goto_10

    :catchall_8
    move-exception p0

    const-string v0, "CompatUIControllerExt"

    const-string v1, "compatUIInit error "

    invoke-static {v0, v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_10
    return-void
.end method

.method private registerCompactWindowObserver()V
    .registers 3

    :try_start_0
    invoke-static {}, Lcom/oplus/compatmode/OplusCompatModeManager;->getInstance()Lcom/oplus/compatmode/OplusCompatModeManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/wm/shell/compatui/CompatUIControllerExt;->mOplusCompactWindowObserver:Lcom/oplus/compactwindow/IOplusCompactWindowObserver;

    invoke-virtual {v0, p0}, Lcom/oplus/compatmode/OplusCompatModeManager;->registerCompactWindowObserver(Lcom/oplus/compactwindow/IOplusCompactWindowObserver;)Z
    :try_end_9
    .catchall {:try_start_0 .. :try_end_9} :catchall_a

    goto :goto_12

    :catchall_a
    move-exception p0

    const-string v0, "CompatUIControllerExt"

    const-string v1, "registerCompactWindowObserver "

    invoke-static {v0, v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_12
    return-void
.end method

.method private removeOplusLayouts(I)V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIControllerExt;->mActiveOplusCompatLayouts:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/compatui/OplusCompatUIWindowManager;

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->release()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeOplusLayouts: remove taskId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/wm/shell/compatui/CompatUIControllerExt;->logV(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/wm/shell/compatui/CompatUIControllerExt;->mActiveOplusCompatLayouts:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_26
    return-void
.end method

.method private removeTimeout()V
    .registers 2

    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIControllerExt;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/wm/shell/compatui/CompatUIControllerExt;->mOnRotationChangeTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private scheduleTimeout(J)V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIControllerExt;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/wm/shell/compatui/CompatUIControllerExt;->mOnRotationChangeTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private shouldShowLayout(I)Z
    .registers 2

    if-nez p1, :cond_8

    iget-boolean p0, p0, Lcom/android/wm/shell/compatui/CompatUIControllerExt;->mInRotationChange:Z

    if-nez p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method private showOnDisplay(I)Z
    .registers 2

    if-nez p1, :cond_4

    const/4 p0, 0x1

    goto :goto_5

    :cond_4
    const/4 p0, 0x0

    :goto_5
    return p0
.end method


# virtual methods
.method public forAllLayouts(Ljava/util/function/Predicate;Ljava/util/function/Consumer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/wm/shell/compatui/CompatUIControllerExt;->mActiveOplusCompatLayouts:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_25

    iget-object v1, p0, Lcom/android/wm/shell/compatui/CompatUIControllerExt;->mActiveOplusCompatLayouts:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/wm/shell/compatui/CompatUIControllerExt;->mActiveOplusCompatLayouts:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/compatui/OplusCompatUIWindowManager;

    if-eqz v1, :cond_22

    invoke-interface {p1, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {p2, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_25
    return-void
.end method

.method public getFullscreenSwitchController()Lcom/oplus/compatui/OplusFullscreenSwitchController;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/compatui/CompatUIControllerExt;->mFullScreenSwitchController:Lcom/oplus/compatui/OplusFullscreenSwitchController;

    return-object p0
.end method

.method public onCompatInfoChanged(Landroid/app/TaskInfo;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCompatInfoChanged "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/wm/shell/compatui/CompatUIControllerExt;->logV(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/compatui/CompatUIControllerExt;->createOrUpdateOplusCompatLayout(Landroid/app/TaskInfo;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;)V

    return-void
.end method

.method public onFixedRotationFinished(I)V
    .registers 5

    const-string v0, "onFixedRotationFinished  "

    invoke-static {v0, p1}, Landroid/support/v4/media/b;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/wm/shell/compatui/CompatUIControllerExt;->logD(Ljava/lang/String;)V

    if-nez p1, :cond_35

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/compatui/CompatUIControllerExt;->mInFixedRotation:Z

    :goto_e
    iget-object v1, p0, Lcom/android/wm/shell/compatui/CompatUIControllerExt;->mActiveOplusCompatLayouts:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_35

    iget-object v1, p0, Lcom/android/wm/shell/compatui/CompatUIControllerExt;->mActiveOplusCompatLayouts:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/wm/shell/compatui/CompatUIControllerExt;->mActiveOplusCompatLayouts:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/compatui/OplusCompatUIWindowManager;

    if-eqz v1, :cond_32

    const-string v2, "onFixedRotationFinished"

    invoke-direct {p0, v2}, Lcom/android/wm/shell/compatui/CompatUIControllerExt;->logV(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/wm/shell/compatui/CompatUIControllerExt;->shouldShowLayout(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/oplus/compatui/OplusCompatUIWindowManager;->showLayout(Z)V

    :cond_32
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_35
    return-void
.end method

.method public onFixedRotationStarted(II)V
    .registers 6

    const-string v0, "onFixedRotationStarted  "

    const-string v1, " "

    invoke-static {v0, p1, v1, p2}, Landroidx/emoji2/text/flatbuffer/b;->a(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/wm/shell/compatui/CompatUIControllerExt;->logD(Ljava/lang/String;)V

    if-nez p1, :cond_3c

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/wm/shell/compatui/CompatUIControllerExt;->mInFixedRotation:Z

    const/4 v0, 0x0

    :goto_11
    iget-object v1, p0, Lcom/android/wm/shell/compatui/CompatUIControllerExt;->mActiveOplusCompatLayouts:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_3c

    iget-object v1, p0, Lcom/android/wm/shell/compatui/CompatUIControllerExt;->mActiveOplusCompatLayouts:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/wm/shell/compatui/CompatUIControllerExt;->mActiveOplusCompatLayouts:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/compatui/OplusCompatUIWindowManager;

    if-eqz v1, :cond_39

    const-string v2, "onFixedRotationStarted "

    invoke-static {v2, p2}, Landroid/support/v4/media/b;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/wm/shell/compatui/CompatUIControllerExt;->logV(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/wm/shell/compatui/CompatUIControllerExt;->shouldShowLayout(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/oplus/compatui/OplusCompatUIWindowManager;->showLayout(Z)V

    :cond_39
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_3c
    return-void
.end method

.method public removeLayouts(I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/compatui/CompatUIControllerExt;->removeOplusLayouts(I)V

    return-void
.end method

.method public topActivityChanged(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 6

    if-eqz p1, :cond_49

    iget-object v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_49

    if-eqz p2, :cond_49

    iget-object p2, p2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz p2, :cond_49

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_17

    goto :goto_49

    :cond_17
    const/4 p2, 0x0

    :goto_18
    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIControllerExt;->mActiveOplusCompatLayouts:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge p2, v0, :cond_49

    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIControllerExt;->mActiveOplusCompatLayouts:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/wm/shell/compatui/CompatUIControllerExt;->mActiveOplusCompatLayouts:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/compatui/OplusCompatUIWindowManager;

    if-eqz v0, :cond_46

    const-string/jumbo v1, "topActivityChanged "

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/wm/shell/compatui/CompatUIControllerExt;->logV(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/oplus/compatui/OplusCompatUIWindowManager;->topActivityChanged()V

    :cond_46
    add-int/lit8 p2, p2, 0x1

    goto :goto_18

    :cond_49
    :goto_49
    return-void
.end method
