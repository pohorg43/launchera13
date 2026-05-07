.class public Lcom/oplus/splitscreen/observer/DisplayFoldObserver;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/splitscreen/observer/DisplayFoldObserver$FoldStateListener;
    }
.end annotation


# static fields
.field private static final STATE_CAMERA_SMALLSCREEN_SELFCAPTURE:I = 0x64

.field private static final STATE_CLOSED:I = 0x0

.field private static final STATE_HALF_OPENED:I = 0x2

.field private static final STATE_OPENED:I = 0x3

.field private static final STATE_TINT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "DisplayFoldObserver"

.field private static volatile sInstance:Lcom/oplus/splitscreen/observer/DisplayFoldObserver;


# instance fields
.field private mDisplayFolded:Z


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/splitscreen/observer/DisplayFoldObserver;->mDisplayFolded:Z

    return-void
.end method

.method public static synthetic a(Lcom/oplus/splitscreen/observer/DisplayFoldObserver;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/splitscreen/observer/DisplayFoldObserver;->onFoldedStateChanged(Z)V

    return-void
.end method

.method public static getInstance()Lcom/oplus/splitscreen/observer/DisplayFoldObserver;
    .registers 2

    sget-object v0, Lcom/oplus/splitscreen/observer/DisplayFoldObserver;->sInstance:Lcom/oplus/splitscreen/observer/DisplayFoldObserver;

    if-nez v0, :cond_17

    const-class v0, Lcom/oplus/splitscreen/observer/DisplayFoldObserver;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/oplus/splitscreen/observer/DisplayFoldObserver;->sInstance:Lcom/oplus/splitscreen/observer/DisplayFoldObserver;

    if-nez v1, :cond_12

    new-instance v1, Lcom/oplus/splitscreen/observer/DisplayFoldObserver;

    invoke-direct {v1}, Lcom/oplus/splitscreen/observer/DisplayFoldObserver;-><init>()V

    sput-object v1, Lcom/oplus/splitscreen/observer/DisplayFoldObserver;->sInstance:Lcom/oplus/splitscreen/observer/DisplayFoldObserver;

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
    sget-object v0, Lcom/oplus/splitscreen/observer/DisplayFoldObserver;->sInstance:Lcom/oplus/splitscreen/observer/DisplayFoldObserver;

    return-object v0
.end method

.method private onFoldedStateChanged(Z)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFoldedStateChanged mDisplayFolded:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayFoldObserver"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/oplus/splitscreen/observer/DisplayFoldObserver;->mDisplayFolded:Z

    invoke-static {}, Lcom/android/wm/shell/splitscreen/DividerOrientation;->reset()V

    return-void
.end method


# virtual methods
.method public isInnerScreen()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/splitscreen/observer/DisplayFoldObserver;->mDisplayFolded:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public registerDisplayFoldListener(Landroid/content/Context;Lcom/android/wm/shell/common/ShellExecutor;)V
    .registers 6

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/splitscreen/SplitToggleHelper;->isFoldDevice()Z

    move-result v0

    if-nez v0, :cond_12

    const-string p0, "DisplayFoldObserver"

    const-string p1, "No need registerDisplayFoldListener on non-fold device"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_12
    const-class v0, Landroid/hardware/devicestate/DeviceStateManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/devicestate/DeviceStateManager;

    new-instance v1, Lcom/oplus/splitscreen/observer/DisplayFoldObserver$FoldStateListener;

    new-instance v2, Lcom/android/quickstep/fallback/a;

    invoke-direct {v2, p0}, Lcom/android/quickstep/fallback/a;-><init>(Lcom/oplus/splitscreen/observer/DisplayFoldObserver;)V

    invoke-direct {v1, p1, v2}, Lcom/oplus/splitscreen/observer/DisplayFoldObserver$FoldStateListener;-><init>(Landroid/content/Context;Ljava/util/function/Consumer;)V

    invoke-virtual {v0, p2, v1}, Landroid/hardware/devicestate/DeviceStateManager;->registerCallback(Ljava/util/concurrent/Executor;Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V

    return-void
.end method
