.class public Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;
.super Lcom/android/wm/shell/ShellTaskOrganizer;
.source ""


# static fields
.field private static final CONTROLLED_ACTIVITY_TYPES:[I

.field private static final CONTROLLED_WINDOWING_MODES:[I

.field private static final TAG:Ljava/lang/String; = "KidsModeTaskOrganizer"


# instance fields
.field private final mContext:Landroid/content/Context;

.field public final mCookie:Landroid/os/IBinder;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mDisplayController:Lcom/android/wm/shell/common/DisplayController;

.field private mDisplayHeight:I

.field private final mDisplayInsetsController:Lcom/android/wm/shell/common/DisplayInsetsController;

.field private mDisplayWidth:I

.field private mEnabled:Z

.field private final mInsetsState:Landroid/view/InsetsState;

.field private mKidsModeSettingsObserver:Lcom/android/wm/shell/kidsmode/KidsModeSettingsObserver;

.field public mLaunchRootLeash:Landroid/view/SurfaceControl;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public mLaunchRootTask:Landroid/app/ActivityManager$RunningTaskInfo;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mMainHandler:Landroid/os/Handler;

.field public mOnDisplaysChangedListener:Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;

.field public mOnInsetsChangedListener:Lcom/android/wm/shell/common/DisplayInsetsController$OnInsetsChangedListener;

.field private final mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

.field private final mUserSwitchIntentReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x2

    new-array v1, v0, [I

    fill-array-data v1, :array_10

    sput-object v1, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->CONTROLLED_ACTIVITY_TYPES:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_18

    sput-object v0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->CONTROLLED_WINDOWING_MODES:[I

    return-void

    :array_10
    .array-data 4
        0x0
        0x1
    .end array-data

    :array_18
    .array-data 4
        0x1
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/window/ITaskOrganizerController;Lcom/android/wm/shell/common/ShellExecutor;Landroid/os/Handler;Landroid/content/Context;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/DisplayInsetsController;Ljava/util/Optional;Lcom/android/wm/shell/kidsmode/KidsModeSettingsObserver;)V
    .registers 16
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/window/ITaskOrganizerController;",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            "Landroid/os/Handler;",
            "Landroid/content/Context;",
            "Lcom/android/wm/shell/common/SyncTransactionQueue;",
            "Lcom/android/wm/shell/common/DisplayController;",
            "Lcom/android/wm/shell/common/DisplayInsetsController;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/recents/RecentTasksController;",
            ">;",
            "Lcom/android/wm/shell/kidsmode/KidsModeSettingsObserver;",
            ")V"
        }
    .end annotation

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v5, p8

    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/ShellTaskOrganizer;-><init>(Landroid/window/ITaskOrganizerController;Lcom/android/wm/shell/common/ShellExecutor;Landroid/content/Context;Lcom/android/wm/shell/compatui/CompatUIController;Ljava/util/Optional;)V

    new-instance p1, Landroid/os/Binder;

    invoke-direct {p1}, Landroid/os/Binder;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mCookie:Landroid/os/IBinder;

    new-instance p1, Landroid/view/InsetsState;

    invoke-direct {p1}, Landroid/view/InsetsState;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mInsetsState:Landroid/view/InsetsState;

    new-instance p1, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer$1;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer$1;-><init>(Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;)V

    iput-object p1, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mUserSwitchIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance p1, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer$2;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer$2;-><init>(Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;)V

    iput-object p1, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mOnDisplaysChangedListener:Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;

    new-instance p1, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer$3;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer$3;-><init>(Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;)V

    iput-object p1, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mOnInsetsChangedListener:Lcom/android/wm/shell/common/DisplayInsetsController$OnInsetsChangedListener;

    iput-object p4, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mMainHandler:Landroid/os/Handler;

    iput-object p5, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    iput-object p6, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    iput-object p7, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mDisplayInsetsController:Lcom/android/wm/shell/common/DisplayInsetsController;

    iput-object p9, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mKidsModeSettingsObserver:Lcom/android/wm/shell/kidsmode/KidsModeSettingsObserver;

    return-void
.end method

.method public constructor <init>(Lcom/android/wm/shell/common/ShellExecutor;Landroid/os/Handler;Landroid/content/Context;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/DisplayInsetsController;Ljava/util/Optional;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            "Landroid/os/Handler;",
            "Landroid/content/Context;",
            "Lcom/android/wm/shell/common/SyncTransactionQueue;",
            "Lcom/android/wm/shell/common/DisplayController;",
            "Lcom/android/wm/shell/common/DisplayInsetsController;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/recents/RecentTasksController;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p3, v0, p7}, Lcom/android/wm/shell/ShellTaskOrganizer;-><init>(Lcom/android/wm/shell/common/ShellExecutor;Landroid/content/Context;Lcom/android/wm/shell/compatui/CompatUIController;Ljava/util/Optional;)V

    new-instance p1, Landroid/os/Binder;

    invoke-direct {p1}, Landroid/os/Binder;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mCookie:Landroid/os/IBinder;

    new-instance p1, Landroid/view/InsetsState;

    invoke-direct {p1}, Landroid/view/InsetsState;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mInsetsState:Landroid/view/InsetsState;

    new-instance p1, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer$1;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer$1;-><init>(Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;)V

    iput-object p1, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mUserSwitchIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance p1, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer$2;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer$2;-><init>(Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;)V

    iput-object p1, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mOnDisplaysChangedListener:Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;

    new-instance p1, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer$3;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer$3;-><init>(Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;)V

    iput-object p1, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mOnInsetsChangedListener:Lcom/android/wm/shell/common/DisplayInsetsController$OnInsetsChangedListener;

    iput-object p3, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mMainHandler:Landroid/os/Handler;

    iput-object p4, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    iput-object p5, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    iput-object p6, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mDisplayInsetsController:Lcom/android/wm/shell/common/DisplayInsetsController;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;)Lcom/android/wm/shell/common/DisplayController;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;)I
    .registers 1

    iget p0, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mDisplayWidth:I

    return p0
.end method

.method public static synthetic access$102(Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;I)I
    .registers 2

    iput p1, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mDisplayWidth:I

    return p1
.end method

.method public static synthetic access$200(Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;)I
    .registers 1

    iget p0, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mDisplayHeight:I

    return p0
.end method

.method public static synthetic access$202(Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;I)I
    .registers 2

    iput p1, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mDisplayHeight:I

    return p1
.end method

.method public static synthetic access$300(Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->updateBounds()V

    return-void
.end method

.method public static synthetic access$400(Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;)Landroid/view/InsetsState;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mInsetsState:Landroid/view/InsetsState;

    return-object p0
.end method

.method private calculateBounds()Landroid/graphics/Rect;
    .registers 5

    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mDisplayWidth:I

    iget v2, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mDisplayHeight:I

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v1, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mInsetsState:Landroid/view/InsetsState;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v1

    iget-object p0, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mInsetsState:Landroid/view/InsetsState;

    const/16 v2, 0x15

    invoke-virtual {p0, v2}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object p0

    if-eqz v1, :cond_2d

    invoke-virtual {v1}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2d

    invoke-virtual {v1, v0, v3}, Landroid/view/InsetsSource;->calculateInsets(Landroid/graphics/Rect;Z)Landroid/graphics/Insets;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    goto :goto_44

    :cond_2d
    if-eqz p0, :cond_41

    invoke-virtual {p0}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_41

    invoke-virtual {p0, v0, v3}, Landroid/view/InsetsSource;->calculateInsets(Landroid/graphics/Rect;Z)Landroid/graphics/Insets;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    goto :goto_44

    :cond_41
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    :goto_44
    return-object v0
.end method

.method public static synthetic d(Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->lambda$updateTask$2(Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public static synthetic e(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->lambda$onTaskAppeared$1(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public static synthetic f(Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->lambda$initialize$0()V

    return-void
.end method

.method public static synthetic g(Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->lambda$updateBounds$3(Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method private synthetic lambda$initialize$0()V
    .registers 1

    invoke-virtual {p0}, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->updateKidsModeState()V

    return-void
.end method

.method private static synthetic lambda$onTaskAppeared$1(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V
    .registers 9

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0, v0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-virtual {p1, p0, v0}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    const/high16 v3, 0x3f800000  # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000  # 1.0f

    move-object v1, p1

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p1, p0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method private static synthetic lambda$updateBounds$3(Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;)V
    .registers 5

    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v1, p1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {p2, p0, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {p2, p0, v0, p1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method private static synthetic lambda$updateTask$2(Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;)V
    .registers 5

    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v1, p1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {p2, p0, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {p2, p0, v0, p1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method private updateBounds()V
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mLaunchRootTask:Landroid/app/ActivityManager$RunningTaskInfo;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->getWindowContainerTransaction()Landroid/window/WindowContainerTransaction;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->calculateBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mLaunchRootTask:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v0, v2, v1}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    iget-object v2, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    invoke-virtual {v2, v0}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    iget-object v0, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mLaunchRootLeash:Landroid/view/SurfaceControl;

    iget-object p0, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    new-instance v2, Lcom/android/wm/shell/kidsmode/a;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v1, v3}, Lcom/android/wm/shell/kidsmode/a;-><init>(Landroid/view/SurfaceControl;Landroid/graphics/Rect;I)V

    invoke-virtual {p0, v2}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    return-void
.end method

.method private updateTask()V
    .registers 2

    invoke-virtual {p0}, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->getWindowContainerTransaction()Landroid/window/WindowContainerTransaction;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->updateTask(Landroid/window/WindowContainerTransaction;)V

    return-void
.end method

.method private updateTask(Landroid/window/WindowContainerTransaction;)V
    .registers 12

    iget-object v0, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mLaunchRootTask:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v0, :cond_59

    iget-object v0, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mLaunchRootLeash:Landroid/view/SurfaceControl;

    if-nez v0, :cond_9

    goto :goto_59

    :cond_9
    invoke-direct {p0}, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->calculateBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mLaunchRootTask:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-boolean v2, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mEnabled:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_18

    move-object v2, v0

    goto :goto_19

    :cond_18
    move-object v2, v3

    :goto_19
    invoke-virtual {p1, v1, v2}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    iget-boolean v2, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mEnabled:Z

    if-eqz v2, :cond_23

    sget-object v4, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->CONTROLLED_WINDOWING_MODES:[I

    goto :goto_24

    :cond_23
    move-object v4, v3

    :goto_24
    if-eqz v2, :cond_29

    sget-object v2, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->CONTROLLED_ACTIVITY_TYPES:[I

    goto :goto_2a

    :cond_29
    move-object v2, v3

    :goto_2a
    invoke-virtual {p1, v1, v4, v2}, Landroid/window/WindowContainerTransaction;->setLaunchRoot(Landroid/window/WindowContainerToken;[I[I)Landroid/window/WindowContainerTransaction;

    iget-boolean v2, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mEnabled:Z

    if-eqz v2, :cond_33

    move-object v5, v3

    goto :goto_34

    :cond_33
    move-object v5, v1

    :goto_34
    if-eqz v2, :cond_38

    move-object v6, v1

    goto :goto_39

    :cond_38
    move-object v6, v3

    :goto_39
    sget-object v7, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->CONTROLLED_WINDOWING_MODES:[I

    sget-object v8, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->CONTROLLED_ACTIVITY_TYPES:[I

    const/4 v9, 0x1

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/window/WindowContainerTransaction;->reparentTasks(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;[I[IZ)Landroid/window/WindowContainerTransaction;

    iget-boolean v2, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mEnabled:Z

    invoke-virtual {p1, v1, v2}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    iget-object v1, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    invoke-virtual {v1, p1}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    iget-object p1, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mLaunchRootLeash:Landroid/view/SurfaceControl;

    iget-object p0, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    new-instance v1, Lcom/android/wm/shell/kidsmode/a;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v0, v2}, Lcom/android/wm/shell/kidsmode/a;-><init>(Landroid/view/SurfaceControl;Landroid/graphics/Rect;I)V

    invoke-virtual {p0, v1}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    :cond_59
    :goto_59
    return-void
.end method


# virtual methods
.method public disable()V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/window/TaskOrganizer;->setIsIgnoreOrientationRequestDisabled(Z)V

    iget-object v1, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mDisplayInsetsController:Lcom/android/wm/shell/common/DisplayInsetsController;

    iget-object v2, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mOnInsetsChangedListener:Lcom/android/wm/shell/common/DisplayInsetsController$OnInsetsChangedListener;

    invoke-virtual {v1, v0, v2}, Lcom/android/wm/shell/common/DisplayInsetsController;->removeInsetsChangedListener(ILcom/android/wm/shell/common/DisplayInsetsController$OnInsetsChangedListener;)V

    iget-object v0, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    iget-object v1, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mOnDisplaysChangedListener:Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/DisplayController;->removeDisplayWindowListener(Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;)V

    invoke-direct {p0}, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->updateTask()V

    iget-object v0, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mLaunchRootTask:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    if-eqz v0, :cond_1e

    invoke-virtual {p0, v0}, Landroid/window/TaskOrganizer;->deleteRootTask(Landroid/window/WindowContainerToken;)Z

    :cond_1e
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mLaunchRootTask:Landroid/app/ActivityManager$RunningTaskInfo;

    iput-object v0, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mLaunchRootLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p0}, Lcom/android/wm/shell/ShellTaskOrganizer;->unregisterOrganizer()V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 6
    .param p1  # Ljava/io/PrintWriter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "  "

    invoke-static {p2, v0}, Landroidx/appcompat/view/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "KidsModeTaskOrganizer"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mEnabled="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mEnabled:Z

    const-string v2, " mLaunchRootTask="

    invoke-static {p2, v1, p1, v0, v2}, Lcom/android/common/config/e;->a(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v1, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mLaunchRootTask:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mLaunchRootLeash="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mLaunchRootLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mDisplayWidth="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mDisplayWidth:I

    const-string v2, " mDisplayHeight="

    invoke-static {p2, v1, p1, v0, v2}, Lcom/android/common/config/d;->a(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v1, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mDisplayHeight:I

    const-string v2, " mInsetsState="

    invoke-static {p2, v1, p1, v0, v2}, Lcom/android/common/config/d;->a(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v1, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mInsetsState:Landroid/view/InsetsState;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-super {p0, p1, v0}, Lcom/android/wm/shell/ShellTaskOrganizer;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method public enable()V
    .registers 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/window/TaskOrganizer;->setIsIgnoreOrientationRequestDisabled(Z)V

    iget-object v1, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object v1

    if-eqz v1, :cond_19

    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result v3

    iput v3, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mDisplayWidth:I

    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->height()I

    move-result v1

    iput v1, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mDisplayHeight:I

    :cond_19
    iget-object v1, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mInsetsState:Landroid/view/InsetsState;

    iget-object v3, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    invoke-virtual {v3, v2}, Lcom/android/wm/shell/common/DisplayController;->getInsetsState(I)Landroid/view/InsetsState;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/InsetsState;->set(Landroid/view/InsetsState;)V

    iget-object v1, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mDisplayInsetsController:Lcom/android/wm/shell/common/DisplayInsetsController;

    iget-object v3, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mOnInsetsChangedListener:Lcom/android/wm/shell/common/DisplayInsetsController$OnInsetsChangedListener;

    invoke-virtual {v1, v2, v3}, Lcom/android/wm/shell/common/DisplayInsetsController;->addInsetsChangedListener(ILcom/android/wm/shell/common/DisplayInsetsController$OnInsetsChangedListener;)V

    iget-object v1, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    iget-object v3, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mOnDisplaysChangedListener:Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;

    invoke-virtual {v1, v3}, Lcom/android/wm/shell/common/DisplayController;->addDisplayWindowListener(Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;)V

    invoke-virtual {p0}, Lcom/android/wm/shell/ShellTaskOrganizer;->registerOrganizer()Ljava/util/List;

    move-result-object v1

    move v3, v2

    :goto_37
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_51

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/window/TaskAppearedInfo;

    invoke-virtual {v4}, Landroid/window/TaskAppearedInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v5

    invoke-virtual {v4}, Landroid/window/TaskAppearedInfo;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v4

    invoke-virtual {p0, v5, v4}, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->onTaskAppeared(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_37

    :cond_51
    iget-object v1, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mCookie:Landroid/os/IBinder;

    invoke-virtual {p0, v2, v0, v1}, Landroid/window/TaskOrganizer;->createRootTask(IILandroid/os/IBinder;)V

    invoke-direct {p0}, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->updateTask()V

    return-void
.end method

.method public getWindowContainerTransaction()Landroid/window/WindowContainerTransaction;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    new-instance p0, Landroid/window/WindowContainerTransaction;

    invoke-direct {p0}, Landroid/window/WindowContainerTransaction;-><init>()V

    return-object p0
.end method

.method public initialize(Lcom/android/wm/shell/startingsurface/StartingWindowController;)V
    .registers 5

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/ShellTaskOrganizer;->initStartingWindow(Lcom/android/wm/shell/startingsurface/StartingWindowController;)V

    iget-object p1, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mKidsModeSettingsObserver:Lcom/android/wm/shell/kidsmode/KidsModeSettingsObserver;

    if-nez p1, :cond_12

    new-instance p1, Lcom/android/wm/shell/kidsmode/KidsModeSettingsObserver;

    iget-object v0, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0, v1}, Lcom/android/wm/shell/kidsmode/KidsModeSettingsObserver;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mKidsModeSettingsObserver:Lcom/android/wm/shell/kidsmode/KidsModeSettingsObserver;

    :cond_12
    iget-object p1, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mKidsModeSettingsObserver:Lcom/android/wm/shell/kidsmode/KidsModeSettingsObserver;

    new-instance v0, Lcom/android/launcher3/widget/a;

    invoke-direct {v0, p0}, Lcom/android/launcher3/widget/a;-><init>(Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;)V

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/kidsmode/KidsModeSettingsObserver;->setOnChangeRunnable(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->updateKidsModeState()V

    iget-object p1, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mKidsModeSettingsObserver:Lcom/android/wm/shell/kidsmode/KidsModeSettingsObserver;

    invoke-virtual {p1}, Lcom/android/wm/shell/kidsmode/KidsModeSettingsObserver;->register()V

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mUserSwitchIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1, v2, p0}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public onTaskAppeared(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V
    .registers 5

    iget-boolean v0, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mEnabled:Z

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mLaunchRootTask:Landroid/app/ActivityManager$RunningTaskInfo;

    if-nez v0, :cond_1b

    iget-object v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->launchCookies:Ljava/util/ArrayList;

    if-eqz v0, :cond_1b

    iget-object v1, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mCookie:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iput-object p1, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mLaunchRootTask:Landroid/app/ActivityManager$RunningTaskInfo;

    iput-object p2, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mLaunchRootLeash:Landroid/view/SurfaceControl;

    invoke-direct {p0}, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->updateTask()V

    :cond_1b
    invoke-super {p0, p1, p2}, Lcom/android/wm/shell/ShellTaskOrganizer;->onTaskAppeared(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V

    iget-object p0, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    new-instance p1, Lcom/android/wm/shell/compatui/f;

    const/4 v0, 0x1

    invoke-direct {p1, p2, v0}, Lcom/android/wm/shell/compatui/f;-><init>(Landroid/view/SurfaceControl;I)V

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    return-void
.end method

.method public onTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mLaunchRootTask:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v0, :cond_12

    iget v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    if-ne v1, v2, :cond_12

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    iput-object p1, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mLaunchRootTask:Landroid/app/ActivityManager$RunningTaskInfo;

    :cond_12
    invoke-super {p0, p1}, Lcom/android/wm/shell/ShellTaskOrganizer;->onTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method

.method public updateKidsModeState()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mKidsModeSettingsObserver:Lcom/android/wm/shell/kidsmode/KidsModeSettingsObserver;

    invoke-virtual {v0}, Lcom/android/wm/shell/kidsmode/KidsModeSettingsObserver;->isEnabled()Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mEnabled:Z

    if-ne v1, v0, :cond_b

    return-void

    :cond_b
    iput-boolean v0, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mEnabled:Z

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->enable()V

    goto :goto_16

    :cond_13
    invoke-virtual {p0}, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->disable()V

    :goto_16
    return-void
.end method
