.class public Lcom/android/launcher3/MemoryWatchDog;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final KEY_SHARE_PREFS_MEM_WATCHDOG:Ljava/lang/String; = "key_shareprefs_mem_watchdog"

.field private static final SYSTEM_AGING_TEST:Ljava/lang/String; = "persist.sys.agingtest"

.field private static final TAG:Ljava/lang/String; = "MemoryWatchDog"

.field private static final TIME_DURATION:J = 0x36ee80L

.field private static final TIME_DURATION_AGING:J = 0x1d4c0L

.field private static final TOTAL_GRAPHICS_LIMIT:J = 0xc8000L

.field private static final TOTAL_MEMORY_LIMIT:J = 0x100000L

.field private static sPreTime:J

.field private static sPssArray:[I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    sput-object v0, Lcom/android/launcher3/MemoryWatchDog;->sPssArray:[I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/MemoryWatchDog;->lambda$monitorMemory$0(Landroid/content/Context;)V

    return-void
.end method

.method private static initTotalPss()V
    .registers 4

    new-instance v0, Landroid/os/Debug$MemoryInfo;

    invoke-direct {v0}, Landroid/os/Debug$MemoryInfo;-><init>()V

    invoke-static {v0}, Landroid/os/Debug;->getMemoryInfo(Landroid/os/Debug$MemoryInfo;)V

    sget-object v1, Lcom/android/launcher3/MemoryWatchDog;->sPssArray:[I

    invoke-virtual {v0}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    sget-object v1, Lcom/android/launcher3/MemoryWatchDog;->sPssArray:[I

    invoke-virtual {v0}, Landroid/os/Debug$MemoryInfo;->getSummaryGraphics()I

    move-result v0

    const/4 v2, 0x1

    aput v0, v1, v2

    return-void
.end method

.method public static isAgingVersion()Z
    .registers 2

    const-string/jumbo v0, "persist.sys.agingtest"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static killSelf(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    const-string v0, "key_shareprefs_mem_watchdog"

    invoke-static {p0, v0, p1}, Lcom/android/common/util/LauncherSharedPrefs;->putStringCommit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "MemoryWatchDog"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    invoke-static {p0}, Landroid/os/Process;->killProcess(I)V

    return-void
.end method

.method private static synthetic lambda$monitorMemory$0(Landroid/content/Context;)V
    .registers 10

    if-eqz p0, :cond_68

    invoke-static {p0}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_68

    :cond_d
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/android/launcher3/MemoryWatchDog;->initTotalPss()V

    sget-object v2, Lcom/android/launcher3/MemoryWatchDog;->sPssArray:[I

    const/4 v3, 0x0

    aget v3, v2, v3

    const/4 v4, 0x1

    aget v2, v2, v4

    invoke-static {}, Lcom/android/launcher3/MemoryWatchDog;->isAgingVersion()Z

    move-result v4

    if-eqz v4, :cond_26

    const-wide/32 v5, 0x1d4c0

    goto :goto_29

    :cond_26
    const-wide/32 v5, 0x36ee80

    :goto_29
    sget-wide v7, Lcom/android/launcher3/MemoryWatchDog;->sPreTime:J

    sub-long v7, v0, v7

    cmp-long v5, v7, v5

    if-lez v5, :cond_65

    int-to-long v5, v3

    const-wide/32 v7, 0x100000

    cmp-long v5, v5, v7

    if-gtz v5, :cond_41

    int-to-long v5, v2

    const-wide/32 v7, 0xc8000

    cmp-long v5, v5, v7

    if-lez v5, :cond_65

    :cond_41
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isAging = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", totalPss = "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", totalGraphics = "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/launcher3/MemoryWatchDog;->killSelf(Landroid/content/Context;Ljava/lang/String;)V

    :cond_65
    sput-wide v0, Lcom/android/launcher3/MemoryWatchDog;->sPreTime:J

    return-void

    :cond_68
    :goto_68
    const-string p0, "MemoryWatchDog"

    const-string/jumbo v0, "monitorMemory context is null and returned"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static monitorMemory(Landroid/content/Context;)V
    .registers 3

    sget-object v0, Lcom/oplus/util/OplusExecutors;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/launcher3/h0;

    invoke-direct {v1, p0}, Lcom/android/launcher3/h0;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static pushStatistics(Landroid/content/Context;)V
    .registers 4

    const-string v0, "key_shareprefs_mem_watchdog"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/common/util/LauncherSharedPrefs;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_16

    const-string p0, "MemoryWatchDog"

    const-string/jumbo v0, "msg is empty."

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_16
    invoke-static {p0}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/statistics/LauncherStatistics;->statsMemoryWatchDog(Ljava/lang/String;)V

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/android/common/util/LauncherSharedPrefs;->putStringCommit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
