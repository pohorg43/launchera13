.class public Lcom/oplus/splitscreen/SplitScreenGuideManager;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final TAG:Ljava/lang/String; = "com.oplus.splitscreen.SplitScreenGuideManager"

.field private static volatile sInstance:Lcom/oplus/splitscreen/SplitScreenGuideManager;


# instance fields
.field private mDisplayController:Lcom/android/wm/shell/common/DisplayController;

.field private final mDisplaysChanged:Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;

.field private mDivider:Lcom/android/wm/shell/splitscreen/SplitScreenController;

.field private mFingerGuideDialog:Lcom/oplus/splitscreen/SplitScreenFingerGuideDialog;

.field private mKeyEventCallback:Landroid/os/OplusKeyEventManager$OnKeyEventObserver;

.field private mMainExecutor:Ljava/util/concurrent/Executor;

.field private final mRotationController:Lcom/android/wm/shell/common/DisplayChangeController$OnDisplayChangingListener;

.field private mUiContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/splitscreen/SplitScreenGuideManager;->mUiContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/oplus/splitscreen/SplitScreenGuideManager;->mFingerGuideDialog:Lcom/oplus/splitscreen/SplitScreenFingerGuideDialog;

    iput-object v0, p0, Lcom/oplus/splitscreen/SplitScreenGuideManager;->mMainExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/oplus/splitscreen/SplitScreenGuideManager$1;

    invoke-direct {v0, p0}, Lcom/oplus/splitscreen/SplitScreenGuideManager$1;-><init>(Lcom/oplus/splitscreen/SplitScreenGuideManager;)V

    iput-object v0, p0, Lcom/oplus/splitscreen/SplitScreenGuideManager;->mDisplaysChanged:Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;

    new-instance v0, Lcom/oplus/splitscreen/SplitScreenGuideManager$2;

    invoke-direct {v0, p0}, Lcom/oplus/splitscreen/SplitScreenGuideManager$2;-><init>(Lcom/oplus/splitscreen/SplitScreenGuideManager;)V

    iput-object v0, p0, Lcom/oplus/splitscreen/SplitScreenGuideManager;->mRotationController:Lcom/android/wm/shell/common/DisplayChangeController$OnDisplayChangingListener;

    new-instance v0, Lcom/oplus/splitscreen/SplitScreenGuideManager$3;

    invoke-direct {v0, p0}, Lcom/oplus/splitscreen/SplitScreenGuideManager$3;-><init>(Lcom/oplus/splitscreen/SplitScreenGuideManager;)V

    iput-object v0, p0, Lcom/oplus/splitscreen/SplitScreenGuideManager;->mKeyEventCallback:Landroid/os/OplusKeyEventManager$OnKeyEventObserver;

    return-void
.end method

.method public static synthetic a(Lcom/oplus/splitscreen/SplitScreenGuideManager;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/splitscreen/SplitScreenGuideManager;->lambda$dismissGuidDialog$0(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/oplus/splitscreen/SplitScreenGuideManager;)Ljava/util/concurrent/Executor;
    .registers 1

    iget-object p0, p0, Lcom/oplus/splitscreen/SplitScreenGuideManager;->mMainExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/oplus/splitscreen/SplitScreenGuideManager;)Lcom/oplus/splitscreen/SplitScreenFingerGuideDialog;
    .registers 1

    iget-object p0, p0, Lcom/oplus/splitscreen/SplitScreenGuideManager;->mFingerGuideDialog:Lcom/oplus/splitscreen/SplitScreenFingerGuideDialog;

    return-object p0
.end method

.method public static synthetic b(Lcom/oplus/splitscreen/SplitScreenGuideManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/splitscreen/SplitScreenGuideManager;->lambda$handleToggleSplitScreenMode$1()V

    return-void
.end method

.method public static getInstance()Lcom/oplus/splitscreen/SplitScreenGuideManager;
    .registers 2

    sget-object v0, Lcom/oplus/splitscreen/SplitScreenGuideManager;->sInstance:Lcom/oplus/splitscreen/SplitScreenGuideManager;

    if-nez v0, :cond_17

    const-class v0, Lcom/oplus/splitscreen/SplitToggleHelper;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/oplus/splitscreen/SplitScreenGuideManager;->sInstance:Lcom/oplus/splitscreen/SplitScreenGuideManager;

    if-nez v1, :cond_12

    new-instance v1, Lcom/oplus/splitscreen/SplitScreenGuideManager;

    invoke-direct {v1}, Lcom/oplus/splitscreen/SplitScreenGuideManager;-><init>()V

    sput-object v1, Lcom/oplus/splitscreen/SplitScreenGuideManager;->sInstance:Lcom/oplus/splitscreen/SplitScreenGuideManager;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    :cond_17
    :goto_17
    sget-object v0, Lcom/oplus/splitscreen/SplitScreenGuideManager;->sInstance:Lcom/oplus/splitscreen/SplitScreenGuideManager;

    return-object v0
.end method

.method private synthetic lambda$dismissGuidDialog$0(Ljava/lang/String;)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/splitscreen/SplitScreenGuideManager;->mFingerGuideDialog:Lcom/oplus/splitscreen/SplitScreenFingerGuideDialog;

    invoke-virtual {p0, p1}, Lcom/oplus/splitscreen/SplitScreenFingerGuideDialog;->dismissDialog(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$handleToggleSplitScreenMode$1()V
    .registers 1

    iget-object p0, p0, Lcom/oplus/splitscreen/SplitScreenGuideManager;->mFingerGuideDialog:Lcom/oplus/splitscreen/SplitScreenFingerGuideDialog;

    invoke-virtual {p0}, Lcom/oplus/splitscreen/SplitScreenFingerGuideDialog;->showGuideDialog()I

    return-void
.end method


# virtual methods
.method public dismissGuidDialog(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/oplus/splitscreen/SplitScreenGuideManager;->mMainExecutor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_12

    iget-object v1, p0, Lcom/oplus/splitscreen/SplitScreenGuideManager;->mFingerGuideDialog:Lcom/oplus/splitscreen/SplitScreenFingerGuideDialog;

    if-nez v1, :cond_9

    goto :goto_12

    :cond_9
    new-instance v1, Lcom/oplus/splitscreen/e;

    invoke-direct {v1, p0, p1}, Lcom/oplus/splitscreen/e;-><init>(Lcom/oplus/splitscreen/SplitScreenGuideManager;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_12
    :goto_12
    sget-object p0, Lcom/oplus/splitscreen/SplitScreenGuideManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dismissGuidDialog() no init."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/oplus/splitscreen/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public handleToggleSplitScreenMode(I)Z
    .registers 9

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_5

    return v0

    :cond_5
    const/4 v1, 0x1

    :try_start_6
    iget-object v2, p0, Lcom/oplus/splitscreen/SplitScreenGuideManager;->mFingerGuideDialog:Lcom/oplus/splitscreen/SplitScreenFingerGuideDialog;

    invoke-virtual {v2}, Lcom/oplus/splitscreen/SplitScreenFingerGuideDialog;->hasDisabled()Z

    move-result v2
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_c} :catch_2c

    :try_start_c
    iget-object v3, p0, Lcom/oplus/splitscreen/SplitScreenGuideManager;->mUiContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_18} :catch_29

    if-nez v2, :cond_32

    if-ne v3, v1, :cond_32

    :try_start_1c
    iget-object v4, p0, Lcom/oplus/splitscreen/SplitScreenGuideManager;->mMainExecutor:Ljava/util/concurrent/Executor;

    new-instance v5, Lcom/oplus/quickstep/common/observers/a;

    invoke-direct {v5, p0}, Lcom/oplus/quickstep/common/observers/a;-><init>(Lcom/oplus/splitscreen/SplitScreenGuideManager;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_26} :catch_27

    goto :goto_32

    :catch_27
    move-exception p0

    goto :goto_2f

    :catch_29
    move-exception p0

    move v3, v0

    goto :goto_2f

    :catch_2c
    move-exception p0

    move v2, v0

    move v3, v2

    :goto_2f
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_32
    :goto_32
    sget-object p0, Lcom/oplus/splitscreen/SplitScreenGuideManager;->TAG:Ljava/lang/String;

    const-string v4, "handleToggleSplitScreenMode ,Status="

    const-string v5, ",type="

    const-string v6, ",orientation="

    invoke-static {v4, v0, v5, p1, v6}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",disable="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/oplus/splitscreen/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public init(Lcom/android/wm/shell/splitscreen/SplitScreenController;)V
    .registers 3

    iput-object p1, p0, Lcom/oplus/splitscreen/SplitScreenGuideManager;->mDivider:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/splitscreen/SplitScreenGuideManager;->mUiContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/splitscreen/SplitScreenGuideManager;->mMainExecutor:Ljava/util/concurrent/Executor;

    iget-object p1, p0, Lcom/oplus/splitscreen/SplitScreenGuideManager;->mDivider:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getDisplayController()Lcom/android/wm/shell/common/DisplayController;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/splitscreen/SplitScreenGuideManager;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    new-instance p1, Lcom/oplus/splitscreen/SplitScreenFingerGuideDialog;

    iget-object v0, p0, Lcom/oplus/splitscreen/SplitScreenGuideManager;->mUiContext:Landroid/content/Context;

    invoke-direct {p1, v0, p0}, Lcom/oplus/splitscreen/SplitScreenFingerGuideDialog;-><init>(Landroid/content/Context;Lcom/oplus/splitscreen/SplitScreenGuideManager;)V

    iput-object p1, p0, Lcom/oplus/splitscreen/SplitScreenGuideManager;->mFingerGuideDialog:Lcom/oplus/splitscreen/SplitScreenFingerGuideDialog;

    return-void
.end method

.method public registerObserver()V
    .registers 5

    const/16 v0, 0x1010

    :try_start_2
    invoke-static {}, Landroid/os/OplusKeyEventManager;->getInstance()Landroid/os/OplusKeyEventManager;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/splitscreen/SplitScreenGuideManager;->mUiContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/oplus/splitscreen/SplitScreenGuideManager;->mKeyEventCallback:Landroid/os/OplusKeyEventManager$OnKeyEventObserver;

    invoke-virtual {v1, v2, v3, v0}, Landroid/os/OplusKeyEventManager;->registerKeyEventObserver(Landroid/content/Context;Landroid/os/OplusKeyEventManager$OnKeyEventObserver;I)Z

    move-result v0

    sget-object v1, Lcom/oplus/splitscreen/SplitScreenGuideManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerKeyEventObserver result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oplus/splitscreen/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_24} :catch_25

    goto :goto_29

    :catch_25
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_29
    iget-object v0, p0, Lcom/oplus/splitscreen/SplitScreenGuideManager;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    iget-object v1, p0, Lcom/oplus/splitscreen/SplitScreenGuideManager;->mDisplaysChanged:Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/DisplayController;->addDisplayWindowListener(Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;)V

    iget-object v0, p0, Lcom/oplus/splitscreen/SplitScreenGuideManager;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    iget-object p0, p0, Lcom/oplus/splitscreen/SplitScreenGuideManager;->mRotationController:Lcom/android/wm/shell/common/DisplayChangeController$OnDisplayChangingListener;

    invoke-virtual {v0, p0}, Lcom/android/wm/shell/common/DisplayController;->addDisplayChangingController(Lcom/android/wm/shell/common/DisplayChangeController$OnDisplayChangingListener;)V

    return-void
.end method

.method public unRegisterObserver()V
    .registers 5

    :try_start_0
    invoke-static {}, Landroid/os/OplusKeyEventManager;->getInstance()Landroid/os/OplusKeyEventManager;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/splitscreen/SplitScreenGuideManager;->mUiContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oplus/splitscreen/SplitScreenGuideManager;->mKeyEventCallback:Landroid/os/OplusKeyEventManager$OnKeyEventObserver;

    invoke-virtual {v0, v1, v2}, Landroid/os/OplusKeyEventManager;->unregisterKeyEventObserver(Landroid/content/Context;Landroid/os/OplusKeyEventManager$OnKeyEventObserver;)Z

    move-result v0

    sget-object v1, Lcom/oplus/splitscreen/SplitScreenGuideManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unRegisterKeyEventObserver result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oplus/splitscreen/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_22} :catch_23

    goto :goto_27

    :catch_23
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_27
    iget-object v0, p0, Lcom/oplus/splitscreen/SplitScreenGuideManager;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    iget-object v1, p0, Lcom/oplus/splitscreen/SplitScreenGuideManager;->mDisplaysChanged:Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/DisplayController;->removeDisplayWindowListener(Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;)V

    iget-object v0, p0, Lcom/oplus/splitscreen/SplitScreenGuideManager;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    iget-object p0, p0, Lcom/oplus/splitscreen/SplitScreenGuideManager;->mRotationController:Lcom/android/wm/shell/common/DisplayChangeController$OnDisplayChangingListener;

    invoke-virtual {v0, p0}, Lcom/android/wm/shell/common/DisplayController;->removeDisplayChangingController(Lcom/android/wm/shell/common/DisplayChangeController$OnDisplayChangingListener;)V

    return-void
.end method
