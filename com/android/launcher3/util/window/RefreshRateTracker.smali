.class public Lcom/android/launcher3/util/window/RefreshRateTracker;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;
.implements Lcom/android/launcher3/util/SafeCloseable;


# static fields
.field private static final INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/MainThreadInitializedObject<",
            "Lcom/android/launcher3/util/window/RefreshRateTracker;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDM:Landroid/hardware/display/DisplayManager;

.field private mSingleFrameMs:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/util/MainThreadInitializedObject;

    sget-object v1, Landroidx/room/f;->g:Landroidx/room/f;

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;-><init>(Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;)V

    sput-object v0, Lcom/android/launcher3/util/window/RefreshRateTracker;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/util/window/RefreshRateTracker;->mSingleFrameMs:I

    const-class v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    iput-object p1, p0, Lcom/android/launcher3/util/window/RefreshRateTracker;->mDM:Landroid/hardware/display/DisplayManager;

    invoke-direct {p0}, Lcom/android/launcher3/util/window/RefreshRateTracker;->updateSingleFrameMs()V

    sget-object v0, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;)Lcom/android/launcher3/util/window/RefreshRateTracker;
    .registers 2

    new-instance v0, Lcom/android/launcher3/util/window/RefreshRateTracker;

    invoke-direct {v0, p0}, Lcom/android/launcher3/util/window/RefreshRateTracker;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getSingleFrameMs(Landroid/content/Context;)I
    .registers 2

    sget-object v0, Lcom/android/launcher3/util/window/RefreshRateTracker;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/util/window/RefreshRateTracker;

    iget p0, p0, Lcom/android/launcher3/util/window/RefreshRateTracker;->mSingleFrameMs:I

    return p0
.end method

.method private updateSingleFrameMs()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/util/window/RefreshRateTracker;->mDM:Landroid/hardware/display/DisplayManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Landroid/view/Display;->getRefreshRate()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_17

    const/high16 v1, 0x447a0000  # 1000.0f

    div-float/2addr v1, v0

    float-to-int v0, v1

    goto :goto_19

    :cond_17
    const/16 v0, 0x10

    :goto_19
    iput v0, p0, Lcom/android/launcher3/util/window/RefreshRateTracker;->mSingleFrameMs:I

    :cond_1b
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/util/window/RefreshRateTracker;->mDM:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p0}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    return-void
.end method

.method public final onDisplayAdded(I)V
    .registers 2

    return-void
.end method

.method public final onDisplayChanged(I)V
    .registers 2
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    if-nez p1, :cond_5

    invoke-direct {p0}, Lcom/android/launcher3/util/window/RefreshRateTracker;->updateSingleFrameMs()V

    :cond_5
    return-void
.end method

.method public final onDisplayRemoved(I)V
    .registers 2

    return-void
.end method
