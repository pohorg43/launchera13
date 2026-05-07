.class public final Lcom/android/common/util/AllAppsBoost;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final GPU_BOOST_DRAWER_SETTLING_ACTION:Ljava/lang/String; = "OSENSE_ACTION_LAUNCHER_DRAWER_SWIPE"

.field private static final GPU_BOOST_MAX_TIME:I = 0x2904

.field private static final GPU_BOOST_TIMEOUT:J = 0x2710L

.field public static final INSTANCE:Lcom/android/common/util/AllAppsBoost;

.field private static final TAG:Ljava/lang/String; = "AllAppsBoost"

.field private static mGpuResourceFd:J

.field private static final mGpuTimeoutTask:Ljava/lang/Runnable;

.field private static mIsGpuOpened:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/common/util/AllAppsBoost;

    invoke-direct {v0}, Lcom/android/common/util/AllAppsBoost;-><init>()V

    sput-object v0, Lcom/android/common/util/AllAppsBoost;->INSTANCE:Lcom/android/common/util/AllAppsBoost;

    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/android/common/util/AllAppsBoost;->mGpuResourceFd:J

    sget-object v0, Lcom/android/common/util/a;->b:Lcom/android/common/util/a;

    sput-object v0, Lcom/android/common/util/AllAppsBoost;->mGpuTimeoutTask:Ljava/lang/Runnable;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()V
    .registers 0

    invoke-static {}, Lcom/android/common/util/AllAppsBoost;->mGpuTimeoutTask$lambda-0()V

    return-void
.end method

.method private static final mGpuTimeoutTask$lambda-0()V
    .registers 2

    const-string v0, "AllAppsBoost"

    const-string v1, "gpu boost timeout, so close"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/common/util/AllAppsBoost;->INSTANCE:Lcom/android/common/util/AllAppsBoost;

    invoke-virtual {v0}, Lcom/android/common/util/AllAppsBoost;->closeGpu()V

    return-void
.end method


# virtual methods
.method public final closeGpu()V
    .registers 3

    sget-boolean p0, Lcom/android/common/util/AllAppsBoost;->mIsGpuOpened:Z

    if-nez p0, :cond_5

    return-void

    :cond_5
    const/4 p0, 0x0

    sput-boolean p0, Lcom/android/common/util/AllAppsBoost;->mIsGpuOpened:Z

    sget-object p0, Lcom/android/common/util/LauncherBooster;->INSTANCE:Lcom/android/common/util/LauncherBooster;

    invoke-virtual {p0}, Lcom/android/common/util/LauncherBooster;->getGpu()Lcom/android/common/util/LauncherBooster$GpuBoost;

    move-result-object p0

    sget-wide v0, Lcom/android/common/util/AllAppsBoost;->mGpuResourceFd:J

    invoke-virtual {p0, v0, v1}, Lcom/android/common/util/LauncherBooster$GpuBoost;->closeAction(J)V

    const-string p0, "AllAppsBoost"

    const-string v0, "close gpu boost"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {p0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object p0

    sget-object v0, Lcom/android/common/util/AllAppsBoost;->mGpuTimeoutTask:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final openGpu()V
    .registers 5

    sget-boolean p0, Lcom/android/common/util/AllAppsBoost;->mIsGpuOpened:Z

    if-eqz p0, :cond_5

    return-void

    :cond_5
    const/4 p0, 0x1

    sput-boolean p0, Lcom/android/common/util/AllAppsBoost;->mIsGpuOpened:Z

    sget-object p0, Lcom/android/common/util/LauncherBooster;->INSTANCE:Lcom/android/common/util/LauncherBooster;

    invoke-virtual {p0}, Lcom/android/common/util/LauncherBooster;->getGpu()Lcom/android/common/util/LauncherBooster$GpuBoost;

    move-result-object p0

    const/16 v0, 0x2904

    const-string v1, "OSENSE_ACTION_LAUNCHER_DRAWER_SWIPE"

    invoke-virtual {p0, v1, v0}, Lcom/android/common/util/LauncherBooster$GpuBoost;->openAction(Ljava/lang/String;I)J

    move-result-wide v0

    sput-wide v0, Lcom/android/common/util/AllAppsBoost;->mGpuResourceFd:J

    const-string p0, "AllAppsBoost"

    const-string/jumbo v0, "open gpu boost"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {p0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/android/common/util/AllAppsBoost;->mGpuTimeoutTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object p0

    const-wide/16 v2, 0x2710

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
