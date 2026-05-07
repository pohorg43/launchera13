.class public Lcom/oplus/util/OplusExecutors;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

.field public static final TASK_VIEW_TRANSACTION_EXECUTOR:Lcom/oplus/util/OplusLooperExecutor;

.field public static final URGENT_TRANSACTION_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

.field public static final UTILS_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

.field public static final WALLPAPER_MANAGER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

.field public static final WALLPAPER_TRANSACTION_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/oplus/util/OplusExecutors;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/android/launcher3/util/LooperExecutor;

    const-string v1, "UrgentTransactionHelper"

    const/4 v2, -0x8

    invoke-static {v1, v2}, Lcom/oplus/util/OplusExecutors;->createAndStartNewLooper(Ljava/lang/String;I)Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/oplus/util/OplusExecutors;->URGENT_TRANSACTION_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v0, Lcom/android/launcher3/util/LooperExecutor;

    const-string v1, "WallpaperTransactionHelper"

    const/4 v3, -0x4

    invoke-static {v1, v3}, Lcom/oplus/util/OplusExecutors;->createAndStartNewLooper(Ljava/lang/String;I)Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/oplus/util/OplusExecutors;->WALLPAPER_TRANSACTION_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v0, Lcom/android/launcher3/util/LooperExecutor;

    const-string v1, "WallpaperManager"

    invoke-static {v1}, Lcom/oplus/util/OplusExecutors;->createAndStartNewLooper(Ljava/lang/String;)Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/oplus/util/OplusExecutors;->WALLPAPER_MANAGER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v0, Lcom/oplus/util/OplusLooperExecutor;

    const-string v1, "TaskViewTransactionHelper"

    invoke-static {v1, v2}, Lcom/oplus/util/OplusExecutors;->createAndStartNewLooper(Ljava/lang/String;I)Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oplus/util/OplusLooperExecutor;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/oplus/util/OplusExecutors;->TASK_VIEW_TRANSACTION_EXECUTOR:Lcom/oplus/util/OplusLooperExecutor;

    new-instance v0, Lcom/android/launcher3/util/LooperExecutor;

    const-string v1, "LauncherUtilsThread"

    invoke-static {v1}, Lcom/oplus/util/OplusExecutors;->createAndStartNewLooper(Ljava/lang/String;)Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/oplus/util/OplusExecutors;->UTILS_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/Runnable;)V
    .registers 1

    invoke-static {p0}, Lcom/oplus/util/OplusExecutors;->lambda$executeWithUx$0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static createAndStartNewLooper(Ljava/lang/String;)Landroid/os/Looper;
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/oplus/util/OplusExecutors;->createAndStartNewLooper(Ljava/lang/String;I)Landroid/os/Looper;

    move-result-object p0

    return-object p0
.end method

.method public static createAndStartNewLooper(Ljava/lang/String;I)Landroid/os/Looper;
    .registers 3

    new-instance v0, Landroid/os/HandlerThread;

    invoke-direct {v0, p0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p0

    return-object p0
.end method

.method public static executeWithUx(Lcom/android/launcher3/util/LooperExecutor;Ljava/lang/Runnable;)V
    .registers 3

    new-instance v0, Lcom/oplus/quickstep/common/observers/a;

    invoke-direct {v0, p1}, Lcom/oplus/quickstep/common/observers/a;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic lambda$executeWithUx$0(Ljava/lang/Runnable;)V
    .registers 5

    sget-object v0, Lcom/android/common/util/LauncherBooster;->INSTANCE:Lcom/android/common/util/LauncherBooster;

    invoke-virtual {v0}, Lcom/android/common/util/LauncherBooster;->getCpu()Lcom/android/common/util/LauncherBooster$CpuBoost;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Lcom/android/common/util/LauncherBooster$CpuBoost;->setUx(ZI)V

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    invoke-virtual {v0}, Lcom/android/common/util/LauncherBooster;->getCpu()Lcom/android/common/util/LauncherBooster$CpuBoost;

    move-result-object p0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/common/util/LauncherBooster$CpuBoost;->setUx(ZI)V

    return-void
.end method
