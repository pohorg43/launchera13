.class public Lcom/android/launcher3/dragndrop/DragInterfaceManager;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final DELAY_RECONNECT_WHEN_SERVICE_DISCONNECT:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "DragInterfaceManager"

.field private static volatile sInstance:Lcom/android/launcher3/dragndrop/DragInterfaceManager;


# instance fields
.field private mBinding:Z

.field private final mConnectedCallback:Lcom/android/launcher3/dragndrop/DragOverWindowClient$ConnectedCallBack;

.field private mDragCallbackProxy:Lcom/android/launcher3/dragndrop/LauncherDragCallbackProxy;

.field private mLauncherRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/launcher/Launcher;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Lcom/heytap/assist/ILauncherDrag;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/launcher3/dragndrop/DragInterfaceManager$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/dragndrop/DragInterfaceManager$1;-><init>(Lcom/android/launcher3/dragndrop/DragInterfaceManager;)V

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/DragInterfaceManager;->mConnectedCallback:Lcom/android/launcher3/dragndrop/DragOverWindowClient$ConnectedCallBack;

    sget-object p0, Lcom/android/launcher3/dragndrop/DragOverWindowClient;->INSTANCE:Lcom/android/launcher3/dragndrop/DragOverWindowClient;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/dragndrop/DragOverWindowClient;->setConnectedCallback(Lcom/android/launcher3/dragndrop/DragOverWindowClient$ConnectedCallBack;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/dragndrop/DragInterfaceManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/dragndrop/DragInterfaceManager;->bindDragSeverInternal()V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/launcher3/dragndrop/DragInterfaceManager;)Lcom/heytap/assist/ILauncherDrag;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/DragInterfaceManager;->mService:Lcom/heytap/assist/ILauncherDrag;

    return-object p0
.end method

.method public static synthetic access$002(Lcom/android/launcher3/dragndrop/DragInterfaceManager;Lcom/heytap/assist/ILauncherDrag;)Lcom/heytap/assist/ILauncherDrag;
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/DragInterfaceManager;->mService:Lcom/heytap/assist/ILauncherDrag;

    return-object p1
.end method

.method public static synthetic access$100(Lcom/android/launcher3/dragndrop/DragInterfaceManager;)Lcom/android/launcher/Launcher;
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/dragndrop/DragInterfaceManager;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$202(Lcom/android/launcher3/dragndrop/DragInterfaceManager;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/dragndrop/DragInterfaceManager;->mBinding:Z

    return p1
.end method

.method public static synthetic access$300(Lcom/android/launcher3/dragndrop/DragInterfaceManager;)Lcom/android/launcher3/dragndrop/LauncherDragCallbackProxy;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/DragInterfaceManager;->mDragCallbackProxy:Lcom/android/launcher3/dragndrop/LauncherDragCallbackProxy;

    return-object p0
.end method

.method public static synthetic b(Lcom/android/launcher3/dragndrop/DragInterfaceManager;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/dragndrop/DragInterfaceManager;->lambda$unBindDragSever$0(Z)V

    return-void
.end method

.method private declared-synchronized bindDragSeverInternal()V
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/android/launcher3/dragndrop/DragInterfaceManager;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_25

    if-nez v0, :cond_9

    monitor-exit p0

    return-void

    :cond_9
    const/4 v1, 0x1

    :try_start_a
    iput-boolean v1, p0, Lcom/android/launcher3/dragndrop/DragInterfaceManager;->mBinding:Z

    new-instance v1, Lcom/android/launcher3/dragndrop/LauncherDragCallbackProxy;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getAssistantDragCallBack()Lcom/android/launcher3/dragndrop/IDragCallback;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/launcher3/dragndrop/LauncherDragCallbackProxy;-><init>(Lcom/android/launcher3/dragndrop/IDragCallback;)V

    iput-object v1, p0, Lcom/android/launcher3/dragndrop/DragInterfaceManager;->mDragCallbackProxy:Lcom/android/launcher3/dragndrop/LauncherDragCallbackProxy;

    sget-object v0, Lcom/android/launcher3/dragndrop/DragOverWindowClient;->INSTANCE:Lcom/android/launcher3/dragndrop/DragOverWindowClient;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/dragndrop/DragOverWindowClient;->setDragCallbackImpl(Lcom/android/launcher3/dragndrop/LauncherDragCallbackProxy;)V

    invoke-direct {p0}, Lcom/android/launcher3/dragndrop/DragInterfaceManager;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/dragndrop/DragOverWindowClient;->bindDragSever(Landroid/content/Context;)V
    :try_end_23
    .catchall {:try_start_a .. :try_end_23} :catchall_25

    monitor-exit p0

    return-void

    :catchall_25
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static getInstance()Lcom/android/launcher3/dragndrop/DragInterfaceManager;
    .registers 2

    sget-object v0, Lcom/android/launcher3/dragndrop/DragInterfaceManager;->sInstance:Lcom/android/launcher3/dragndrop/DragInterfaceManager;

    if-nez v0, :cond_17

    const-class v0, Lcom/android/launcher3/dragndrop/DragInterfaceManager;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/android/launcher3/dragndrop/DragInterfaceManager;->sInstance:Lcom/android/launcher3/dragndrop/DragInterfaceManager;

    if-nez v1, :cond_12

    new-instance v1, Lcom/android/launcher3/dragndrop/DragInterfaceManager;

    invoke-direct {v1}, Lcom/android/launcher3/dragndrop/DragInterfaceManager;-><init>()V

    sput-object v1, Lcom/android/launcher3/dragndrop/DragInterfaceManager;->sInstance:Lcom/android/launcher3/dragndrop/DragInterfaceManager;

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
    sget-object v0, Lcom/android/launcher3/dragndrop/DragInterfaceManager;->sInstance:Lcom/android/launcher3/dragndrop/DragInterfaceManager;

    return-object v0
.end method

.method private getLauncher()Lcom/android/launcher/Launcher;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/DragInterfaceManager;->mLauncherRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher/Launcher;

    return-object p0
.end method

.method private synthetic lambda$unBindDragSever$0(Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/dragndrop/DragInterfaceManager;->unBindDragServerInternal(Z)V

    return-void
.end method

.method private declared-synchronized unBindDragServerInternal(Z)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/android/launcher3/dragndrop/DragInterfaceManager;->mBinding:Z

    if-eqz v0, :cond_11

    if-eqz p1, :cond_11

    const-string p1, "DragInterfaceManager"

    const-string/jumbo v0, "unBindDragServerInternal, mBinding: true, isLauncherStarted:true"

    invoke-static {p1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_29

    monitor-exit p0

    return-void

    :cond_11
    :try_start_11
    iget-object p1, p0, Lcom/android/launcher3/dragndrop/DragInterfaceManager;->mDragCallbackProxy:Lcom/android/launcher3/dragndrop/LauncherDragCallbackProxy;

    const/4 v0, 0x0

    if-eqz p1, :cond_1b

    invoke-virtual {p1, v0}, Lcom/android/launcher3/dragndrop/LauncherDragCallbackProxy;->setCallBackImpl(Lcom/android/launcher3/dragndrop/IDragCallback;)V

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/DragInterfaceManager;->mDragCallbackProxy:Lcom/android/launcher3/dragndrop/LauncherDragCallbackProxy;

    :cond_1b
    sget-object p1, Lcom/android/launcher3/dragndrop/DragOverWindowClient;->INSTANCE:Lcom/android/launcher3/dragndrop/DragOverWindowClient;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/dragndrop/DragOverWindowClient;->setDragCallbackImpl(Lcom/android/launcher3/dragndrop/LauncherDragCallbackProxy;)V

    invoke-direct {p0}, Lcom/android/launcher3/dragndrop/DragInterfaceManager;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/dragndrop/DragOverWindowClient;->unBindDragSever(Landroid/content/Context;)V
    :try_end_27
    .catchall {:try_start_11 .. :try_end_27} :catchall_29

    monitor-exit p0

    return-void

    :catchall_29
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public bindDragSever()V
    .registers 3

    sget-object v0, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/launcher3/dragndrop/f;

    invoke-direct {v1, p0}, Lcom/android/launcher3/dragndrop/f;-><init>(Lcom/android/launcher3/dragndrop/DragInterfaceManager;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/AbstractExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public getDragCallbackProxy()Lcom/android/launcher3/dragndrop/LauncherDragCallbackProxy;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/DragInterfaceManager;->mDragCallbackProxy:Lcom/android/launcher3/dragndrop/LauncherDragCallbackProxy;

    return-object p0
.end method

.method public notifyEditStateChanged(Z)V
    .registers 4

    const-string/jumbo v0, "notifyEditStateChanged = "

    const-string v1, "DragInterfaceManager"

    invoke-static {v0, p1, v1}, Lcom/android/common/rus/a;->a(Ljava/lang/String;ZLjava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/DragInterfaceManager;->mService:Lcom/heytap/assist/ILauncherDrag;

    if-eqz p0, :cond_26

    :try_start_c
    invoke-interface {p0, p1}, Lcom/heytap/assist/ILauncherDrag;->onEditStateChanged(Z)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_f} :catch_10

    goto :goto_26

    :catch_10
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "notifyEditStateChanged e = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_26
    :goto_26
    return-void
.end method

.method public notifyStartWidgetDrag(Ljava/lang/String;)V
    .registers 5

    const-string/jumbo v0, "notifyStartWidgetDrag = "

    const-string v1, "Drag"

    const-string v2, "DragInterfaceManager"

    invoke-static {v0, p1, v1, v2}, Lcom/android/launcher/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/DragInterfaceManager;->mService:Lcom/heytap/assist/ILauncherDrag;

    if-eqz p0, :cond_28

    :try_start_e
    invoke-interface {p0, p1}, Lcom/heytap/assist/ILauncherDrag;->startWidgetDrag(Ljava/lang/String;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_11} :catch_12

    goto :goto_28

    :catch_12
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "notifyStartWidgetDrag e = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_28
    :goto_28
    return-void
.end method

.method public notifyWidgetDragEnd(Ljava/lang/String;)V
    .registers 5

    const-string/jumbo v0, "notifyWidgetDragEnd = "

    const-string v1, "Drag"

    const-string v2, "DragInterfaceManager"

    invoke-static {v0, p1, v1, v2}, Lcom/android/launcher/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/DragInterfaceManager;->mService:Lcom/heytap/assist/ILauncherDrag;

    if-eqz p0, :cond_28

    :try_start_e
    invoke-interface {p0, p1}, Lcom/heytap/assist/ILauncherDrag;->onWidgetDragEnd(Ljava/lang/String;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_11} :catch_12

    goto :goto_28

    :catch_12
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "notifyWidgetDragEnd e = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_28
    :goto_28
    return-void
.end method

.method public onWallpaperBrightnessChanged(Z)V
    .registers 4

    const-string v0, "Trans wallpaper\'s brightness, bright = "

    const-string v1, "DragInterfaceManager"

    invoke-static {v0, p1, v1}, Lcom/android/common/rus/a;->a(Ljava/lang/String;ZLjava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/DragInterfaceManager;->mService:Lcom/heytap/assist/ILauncherDrag;

    if-nez p0, :cond_c

    return-void

    :cond_c
    :try_start_c
    invoke-interface {p0, p1}, Lcom/heytap/assist/ILauncherDrag;->onWallpaperBrightnessChanged(Z)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_f} :catch_10

    goto :goto_15

    :catch_10
    const-string p0, "Error occur while trans wallpaper\'s brightness"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_15
    return-void
.end method

.method public sendCardInfoList(Ljava/lang/String;)V
    .registers 5

    const-string/jumbo v0, "sendCardInfoList = "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Drag"

    const-string v2, "DragInterfaceManager"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/DragInterfaceManager;->mService:Lcom/heytap/assist/ILauncherDrag;

    if-eqz p0, :cond_3f

    :try_start_25
    invoke-interface {p0, p1}, Lcom/heytap/assist/ILauncherDrag;->sendCardInfoList(Ljava/lang/String;)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_28} :catch_29

    goto :goto_3f

    :catch_29
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "sendCardInfoList e = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3f
    :goto_3f
    return-void
.end method

.method public setupLauncher(Lcom/android/launcher/Launcher;)V
    .registers 3

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/DragInterfaceManager;->mLauncherRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public unBindDragSever()V
    .registers 4

    invoke-direct {p0}, Lcom/android/launcher3/dragndrop/DragInterfaceManager;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->isStarted()Z

    move-result v0

    sget-object v1, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v2, Lcom/android/common/util/g0;

    invoke-direct {v2, p0, v0}, Lcom/android/common/util/g0;-><init>(Lcom/android/launcher3/dragndrop/DragInterfaceManager;Z)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/AbstractExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method
