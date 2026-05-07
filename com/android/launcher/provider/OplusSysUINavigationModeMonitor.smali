.class public Lcom/android/launcher/provider/OplusSysUINavigationModeMonitor;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# static fields
.field private static final NAV_MODE_CHANGED_TIMEOUT:J = 0x3e8L

.field private static final TAG:Ljava/lang/String; = "OplusSysUINavigationModeMonitor"

.field private static sNavModeChangedTime:J = -0x1L


# instance fields
.field private mCallback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mDisplayId:I

.field private final mLargestSize:Landroid/graphics/Point;

.field private mNavigationModeChanged:Z

.field private final mRealSize:Landroid/graphics/Point;

.field private final mSmallestSize:Landroid/graphics/Point;

.field private mSysUINavigationMode:Lcom/android/launcher3/util/DisplayController$NavigationMode;

.field private final mTmpPoint1:Landroid/graphics/Point;

.field private final mTmpPoint2:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/function/Consumer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/function/Consumer<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/provider/OplusSysUINavigationModeMonitor;->mTmpPoint1:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/provider/OplusSysUINavigationModeMonitor;->mTmpPoint2:Landroid/graphics/Point;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher/provider/OplusSysUINavigationModeMonitor;->mNavigationModeChanged:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher/provider/OplusSysUINavigationModeMonitor;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/android/launcher/provider/OplusSysUINavigationModeMonitor;->getDefaultDisplay(Landroid/content/Context;)Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    iput v1, p0, Lcom/android/launcher/provider/OplusSysUINavigationModeMonitor;->mDisplayId:I

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/android/launcher/provider/OplusSysUINavigationModeMonitor;->mRealSize:Landroid/graphics/Point;

    invoke-virtual {p1, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/android/launcher/provider/OplusSysUINavigationModeMonitor;->mSmallestSize:Landroid/graphics/Point;

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, p0, Lcom/android/launcher/provider/OplusSysUINavigationModeMonitor;->mLargestSize:Landroid/graphics/Point;

    invoke-virtual {p1, v1, v2}, Landroid/view/Display;->getCurrentSizeRange(Landroid/graphics/Point;Landroid/graphics/Point;)V

    iput-object p2, p0, Lcom/android/launcher/provider/OplusSysUINavigationModeMonitor;->mCallback:Ljava/util/function/Consumer;

    const-class p1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    new-instance p2, Landroid/os/Handler;

    sget-object v0, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {p1, p0, p2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher/provider/OplusSysUINavigationModeMonitor;Ljava/util/function/Consumer;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/provider/OplusSysUINavigationModeMonitor;->lambda$notifyChange$0(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private getDefaultDisplay(Landroid/content/Context;)Landroid/view/Display;
    .registers 2

    const-class p0, Landroid/view/WindowManager;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$notifyChange$0(Ljava/util/function/Consumer;)V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/provider/OplusSysUINavigationModeMonitor;->mContext:Landroid/content/Context;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher/provider/OplusSysUINavigationModeMonitor;->mNavigationModeChanged:Z

    return-void
.end method

.method private declared-synchronized notifyChange()V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/launcher/provider/OplusSysUINavigationModeMonitor;->mCallback:Ljava/util/function/Consumer;

    if-eqz v0, :cond_12

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher/provider/OplusSysUINavigationModeMonitor;->mCallback:Ljava/util/function/Consumer;

    sget-object v1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v2, Lcom/android/launcher/guide/c;

    invoke-direct {v2, p0, v0}, Lcom/android/launcher/guide/c;-><init>(Lcom/android/launcher/provider/OplusSysUINavigationModeMonitor;Ljava/util/function/Consumer;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    :cond_12
    monitor-exit p0

    return-void

    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public isNavigationModeChanged()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher/provider/OplusSysUINavigationModeMonitor;->mNavigationModeChanged:Z

    return p0
.end method

.method public onDisplayAdded(I)V
    .registers 2

    return-void
.end method

.method public onDisplayChanged(I)V
    .registers 14

    iget v0, p0, Lcom/android/launcher/provider/OplusSysUINavigationModeMonitor;->mDisplayId:I

    if-eq p1, v0, :cond_5

    return-void

    :cond_5
    iget-object p1, p0, Lcom/android/launcher/provider/OplusSysUINavigationModeMonitor;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/common/config/ScreenInfo;->initScreenData(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/android/launcher/provider/OplusSysUINavigationModeMonitor;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/android/launcher/provider/OplusSysUINavigationModeMonitor;->getDefaultDisplay(Landroid/content/Context;)Landroid/view/Display;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher/provider/OplusSysUINavigationModeMonitor;->mTmpPoint1:Landroid/graphics/Point;

    invoke-virtual {p1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget-object v0, p0, Lcom/android/launcher/provider/OplusSysUINavigationModeMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/util/DisplayController;->getNavigationMode(Landroid/content/Context;)Lcom/android/launcher3/util/DisplayController$NavigationMode;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    sget-wide v3, Lcom/android/launcher/provider/OplusSysUINavigationModeMonitor;->sNavModeChangedTime:J

    sub-long/2addr v1, v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-lez v3, :cond_30

    const-wide/16 v6, 0x3e8

    cmp-long v3, v1, v6

    if-ltz v3, :cond_34

    :cond_30
    iget-object v3, p0, Lcom/android/launcher/provider/OplusSysUINavigationModeMonitor;->mSysUINavigationMode:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    if-eq v0, v3, :cond_36

    :cond_34
    move v3, v5

    goto :goto_37

    :cond_36
    move v3, v4

    :goto_37
    iget-object v6, p0, Lcom/android/launcher/provider/OplusSysUINavigationModeMonitor;->mRealSize:Landroid/graphics/Point;

    iget-object v7, p0, Lcom/android/launcher/provider/OplusSysUINavigationModeMonitor;->mTmpPoint1:Landroid/graphics/Point;

    invoke-virtual {v6, v7}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string v7, " navModeChangedTime:"

    const/4 v8, 0x2

    const-string v9, "OplusSysUINavigationModeMonitor"

    if-nez v6, :cond_92

    iget-object v6, p0, Lcom/android/launcher/provider/OplusSysUINavigationModeMonitor;->mRealSize:Landroid/graphics/Point;

    iget-object v10, p0, Lcom/android/launcher/provider/OplusSysUINavigationModeMonitor;->mTmpPoint1:Landroid/graphics/Point;

    iget v11, v10, Landroid/graphics/Point;->y:I

    iget v10, v10, Landroid/graphics/Point;->x:I

    invoke-virtual {v6, v11, v10}, Landroid/graphics/Point;->equals(II)Z

    move-result v6

    if-nez v6, :cond_92

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    new-array v6, v8, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/android/launcher/provider/OplusSysUINavigationModeMonitor;->mRealSize:Landroid/graphics/Point;

    aput-object v10, v6, v4

    iget-object v10, p0, Lcom/android/launcher/provider/OplusSysUINavigationModeMonitor;->mTmpPoint1:Landroid/graphics/Point;

    aput-object v10, v6, v5

    const-string v10, "Display size changed from %s to %s"

    invoke-static {v10, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v9, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_91

    new-array p1, v8, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/launcher/provider/OplusSysUINavigationModeMonitor;->mSysUINavigationMode:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    aput-object v1, p1, v4

    aput-object v0, p1, v5

    const-string v0, "1 navigation mode changed from %s to %s"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v9, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v5, p0, Lcom/android/launcher/provider/OplusSysUINavigationModeMonitor;->mNavigationModeChanged:Z

    invoke-direct {p0}, Lcom/android/launcher/provider/OplusSysUINavigationModeMonitor;->notifyChange()V

    :cond_91
    return-void

    :cond_92
    iget-object v6, p0, Lcom/android/launcher/provider/OplusSysUINavigationModeMonitor;->mTmpPoint1:Landroid/graphics/Point;

    iget-object v10, p0, Lcom/android/launcher/provider/OplusSysUINavigationModeMonitor;->mTmpPoint2:Landroid/graphics/Point;

    invoke-virtual {p1, v6, v10}, Landroid/view/Display;->getCurrentSizeRange(Landroid/graphics/Point;Landroid/graphics/Point;)V

    iget-object p1, p0, Lcom/android/launcher/provider/OplusSysUINavigationModeMonitor;->mSmallestSize:Landroid/graphics/Point;

    iget-object v6, p0, Lcom/android/launcher/provider/OplusSysUINavigationModeMonitor;->mTmpPoint1:Landroid/graphics/Point;

    invoke-virtual {p1, v6}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_ad

    iget-object p1, p0, Lcom/android/launcher/provider/OplusSysUINavigationModeMonitor;->mLargestSize:Landroid/graphics/Point;

    iget-object v6, p0, Lcom/android/launcher/provider/OplusSysUINavigationModeMonitor;->mTmpPoint2:Landroid/graphics/Point;

    invoke-virtual {p1, v6}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f4

    :cond_ad
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/android/launcher/provider/OplusSysUINavigationModeMonitor;->mSmallestSize:Landroid/graphics/Point;

    aput-object v10, v6, v4

    iget-object v10, p0, Lcom/android/launcher/provider/OplusSysUINavigationModeMonitor;->mLargestSize:Landroid/graphics/Point;

    aput-object v10, v6, v5

    iget-object v10, p0, Lcom/android/launcher/provider/OplusSysUINavigationModeMonitor;->mTmpPoint1:Landroid/graphics/Point;

    aput-object v10, v6, v8

    const/4 v10, 0x3

    iget-object v11, p0, Lcom/android/launcher/provider/OplusSysUINavigationModeMonitor;->mTmpPoint2:Landroid/graphics/Point;

    aput-object v11, v6, v10

    const-string v10, "Available size changed from [%s, %s] to [%s, %s]"

    invoke-static {v10, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v9, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_f4

    new-array p1, v8, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/launcher/provider/OplusSysUINavigationModeMonitor;->mSysUINavigationMode:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    aput-object v1, p1, v4

    aput-object v0, p1, v5

    const-string v0, "2 navigation mode changed from %s to %s"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v9, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v5, p0, Lcom/android/launcher/provider/OplusSysUINavigationModeMonitor;->mNavigationModeChanged:Z

    invoke-direct {p0}, Lcom/android/launcher/provider/OplusSysUINavigationModeMonitor;->notifyChange()V

    :cond_f4
    return-void
.end method

.method public onDisplayRemoved(I)V
    .registers 2

    return-void
.end method

.method public onNavigationModeChanged(Lcom/android/launcher3/util/DisplayController$NavigationMode;)V
    .registers 6

    iget-object v0, p0, Lcom/android/launcher/provider/OplusSysUINavigationModeMonitor;->mSysUINavigationMode:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    if-eq p1, v0, :cond_2c

    iput-object p1, p0, Lcom/android/launcher/provider/OplusSysUINavigationModeMonitor;->mSysUINavigationMode:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/launcher/provider/OplusSysUINavigationModeMonitor;->sNavModeChangedTime:J

    iget-object v0, p0, Lcom/android/launcher/provider/OplusSysUINavigationModeMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/common/config/ScreenInfo;->initScreenData(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher/provider/OplusSysUINavigationModeMonitor;->mNavigationModeChanged:Z

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/launcher/provider/OplusSysUINavigationModeMonitor;->mSysUINavigationMode:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    aput-object v3, v1, v2

    aput-object p1, v1, v0

    const-string p1, "3 navigation mode changed from %s to %s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "OplusSysUINavigationModeMonitor"

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/launcher/provider/OplusSysUINavigationModeMonitor;->notifyChange()V

    :cond_2c
    return-void
.end method

.method public unregister()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/android/launcher/provider/OplusSysUINavigationModeMonitor;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p0}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    goto :goto_16

    :catch_e
    move-exception p0

    const-string v0, "OplusSysUINavigationModeMonitor"

    const-string v1, "Failed to unregister config monitor"

    invoke-static {v0, v1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_16
    return-void
.end method
