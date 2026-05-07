.class public Lcom/oplus/quickstep/memory/MemoryInfoManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/memory/MemoryInfoManager$MemoryInfoWrapper;
    }
.end annotation


# static fields
.field public static final DISPLAY_MEMORY_INFORMATION_RECENT_TASK:Ljava/lang/String; = "display_memory_information_recent_task"

.field public static final FAKE_16_GB:Ljava/lang/String; = "16.0 GB"

.field private static final GIGA_BYTE_1:I = 0x1

.field private static final GIGA_BYTE_3:I = 0x3

.field public static final LABEL_MEMAVAILABLE:Ljava/lang/String; = "MemAvailable:"

.field private static final ONE_GB:J = 0x40000000L

.field private static final PERSIST_SYS_OPLUS_NANDSWAP_CONDITION:Ljava/lang/String; = "persist.sys.oplus.nandswap.condition"

.field private static final PERSIST_SYS_OPLUS_NANDSWAP_SWAPSIZE_CURR:Ljava/lang/String; = "persist.sys.oplus.nandswap.swapsize.curr"

.field public static final PHONE_MANAGER_ENTRANCE_KEY:Ljava/lang/String; = "display_phone_manager_entrance"

.field public static final PROC_MEMINFO_PATH:Ljava/lang/String; = "/proc/meminfo"

.field private static final SPECIAL:D = 1024.0

.field private static final TAG:Ljava/lang/String; = "MemoryInfoManager"

.field private static final TRIM_NUM:I = 0x3

.field private static final TWO_TO_TEN:J = 0x400L

.field private static volatile sInstance:Lcom/oplus/quickstep/memory/MemoryInfoManager;

.field private static final sLock:Ljava/lang/Object;


# instance fields
.field private final mActivityManager:Landroid/app/ActivityManager;

.field private final mContext:Landroid/content/Context;

.field private mConversionUtils:Lcom/oplus/util/OplusUnitConversionUtils;

.field public mExpandRam:J

.field public mHasEnlargeMemory:Z

.field private mMemoryAvailableWithoutUnit:F

.field private final mMemoryInfo:Landroid/app/ActivityManager$MemoryInfo;

.field private mMemoryUnit:Ljava/lang/String;

.field private mNeedLtrMark:Z

.field private mNeedMemoryDetail:Z

.field private mStrEnLargeSize:Ljava/lang/String;

.field private mStrMemoryAvailable:Ljava/lang/String;

.field private mStrMemoryTotal:Ljava/lang/String;

.field private mStrMemoryTotalSuffix:Ljava/lang/String;

.field private final mSwitchObserver:Landroid/database/ContentObserver;

.field private final mTotalMemory:J


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/oplus/quickstep/memory/MemoryInfoManager;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/oplus/quickstep/memory/MemoryInfoManager$1;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/oplus/quickstep/memory/MemoryInfoManager$1;-><init>(Lcom/oplus/quickstep/memory/MemoryInfoManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/oplus/quickstep/memory/MemoryInfoManager;->mSwitchObserver:Landroid/database/ContentObserver;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oplus/quickstep/memory/MemoryInfoManager;->mExpandRam:J

    const-string v0, ""

    iput-object v0, p0, Lcom/oplus/quickstep/memory/MemoryInfoManager;->mStrMemoryAvailable:Ljava/lang/String;

    iput-object v0, p0, Lcom/oplus/quickstep/memory/MemoryInfoManager;->mStrMemoryTotal:Ljava/lang/String;

    iput-object v0, p0, Lcom/oplus/quickstep/memory/MemoryInfoManager;->mStrEnLargeSize:Ljava/lang/String;

    const/high16 v1, -0x40800000  # -1.0f

    iput v1, p0, Lcom/oplus/quickstep/memory/MemoryInfoManager;->mMemoryAvailableWithoutUnit:F

    iput-object v0, p0, Lcom/oplus/quickstep/memory/MemoryInfoManager;->mMemoryUnit:Ljava/lang/String;

    iput-object v0, p0, Lcom/oplus/quickstep/memory/MemoryInfoManager;->mStrMemoryTotalSuffix:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/quickstep/memory/MemoryInfoManager;->mNeedLtrMark:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/quickstep/memory/MemoryInfoManager;->mContext:Landroid/content/Context;

    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    iput-object p1, p0, Lcom/oplus/quickstep/memory/MemoryInfoManager;->mActivityManager:Landroid/app/ActivityManager;

    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    iput-object v0, p0, Lcom/oplus/quickstep/memory/MemoryInfoManager;->mMemoryInfo:Landroid/app/ActivityManager$MemoryInfo;

    invoke-virtual {p1, v0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    iget-wide v0, v0, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    iput-wide v0, p0, Lcom/oplus/quickstep/memory/MemoryInfoManager;->mTotalMemory:J

    invoke-direct {p0}, Lcom/oplus/quickstep/memory/MemoryInfoManager;->updateMemoDisplaySwitch()V

    invoke-direct {p0}, Lcom/oplus/quickstep/memory/MemoryInfoManager;->registerObserver()V

    return-void
.end method

.method public static synthetic access$000(Lcom/oplus/quickstep/memory/MemoryInfoManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/quickstep/memory/MemoryInfoManager;->updateMemoDisplaySwitch()V

    return-void
.end method

.method public static getAvailProcMemInfo()J
    .registers 4

    invoke-static {}, Lcom/oplus/quickstep/memory/MemoryInfoManager;->getAvailProcMemInfoKB()J

    move-result-wide v0

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v2

    if-eqz v2, :cond_20

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAvailProcMemInfo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MemoryInfoManager"

    invoke-static {v3, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_20
    const-wide/high16 v2, 0x4090000000000000L  # 1024.0

    long-to-double v0, v0

    mul-double/2addr v0, v2

    double-to-long v0, v0

    return-wide v0
.end method

.method public static getAvailProcMemInfoKB()J
    .registers 2

    const-string v0, "MemAvailable:"

    invoke-static {v0}, Lcom/oplus/quickstep/memory/MemoryInfoManager;->getProcMemInfoKB(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private getAvailableMemory()J
    .registers 3

    iget-object v0, p0, Lcom/oplus/quickstep/memory/MemoryInfoManager;->mActivityManager:Landroid/app/ActivityManager;

    iget-object v1, p0, Lcom/oplus/quickstep/memory/MemoryInfoManager;->mMemoryInfo:Landroid/app/ActivityManager$MemoryInfo;

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    iget-object p0, p0, Lcom/oplus/quickstep/memory/MemoryInfoManager;->mMemoryInfo:Landroid/app/ActivityManager$MemoryInfo;

    iget-wide v0, p0, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    return-wide v0
.end method

.method public static getExpandCurr()I
    .registers 4

    const-string v0, "persist.sys.oplus.nandswap.condition"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "MemoryInfoManager"

    if-eqz v0, :cond_39

    const-string v0, "persist.sys.oplus.nandswap.swapsize.curr"

    const-string v2, "0"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getExpandCurr value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/oplus/quickstep/memory/MemoryInfoManager;->isNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_39
    const-string v0, "getExpandCurr value:0"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/oplus/quickstep/memory/MemoryInfoManager;
    .registers 3

    sget-object v0, Lcom/oplus/quickstep/memory/MemoryInfoManager;->sInstance:Lcom/oplus/quickstep/memory/MemoryInfoManager;

    if-nez v0, :cond_17

    sget-object v0, Lcom/oplus/quickstep/memory/MemoryInfoManager;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/oplus/quickstep/memory/MemoryInfoManager;->sInstance:Lcom/oplus/quickstep/memory/MemoryInfoManager;

    if-nez v1, :cond_12

    new-instance v1, Lcom/oplus/quickstep/memory/MemoryInfoManager;

    invoke-direct {v1, p0}, Lcom/oplus/quickstep/memory/MemoryInfoManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/oplus/quickstep/memory/MemoryInfoManager;->sInstance:Lcom/oplus/quickstep/memory/MemoryInfoManager;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p0

    :cond_17
    :goto_17
    sget-object p0, Lcom/oplus/quickstep/memory/MemoryInfoManager;->sInstance:Lcom/oplus/quickstep/memory/MemoryInfoManager;

    return-object p0
.end method

.method private static getProcMemInfoKB(Ljava/lang/String;)J
    .registers 4

    const/4 v0, 0x1

    new-array v1, v0, [J

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p0, v0, v2

    const-string p0, "/proc/meminfo"

    invoke-static {p0, v0, v1}, Landroid/os/Process;->readProcLines(Ljava/lang/String;[Ljava/lang/String;[J)V

    aget-wide v0, v1, v2

    return-wide v0
.end method

.method private getTotalMemory()J
    .registers 3

    iget-wide v0, p0, Lcom/oplus/quickstep/memory/MemoryInfoManager;->mTotalMemory:J

    return-wide v0
.end method

.method private getUnitValue(J)Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/oplus/quickstep/memory/MemoryInfoManager;->mConversionUtils:Lcom/oplus/util/OplusUnitConversionUtils;

    if-nez v0, :cond_d

    new-instance v0, Lcom/oplus/util/OplusUnitConversionUtils;

    iget-object v1, p0, Lcom/oplus/quickstep/memory/MemoryInfoManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/oplus/util/OplusUnitConversionUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oplus/quickstep/memory/MemoryInfoManager;->mConversionUtils:Lcom/oplus/util/OplusUnitConversionUtils;

    :cond_d
    iget-object p0, p0, Lcom/oplus/quickstep/memory/MemoryInfoManager;->mConversionUtils:Lcom/oplus/util/OplusUnitConversionUtils;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/util/OplusUnitConversionUtils;->getUnitValue(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getbogusTotalMemory(J)J
    .registers 7

    const-wide/16 v0, 0x0

    cmp-long p0, p1, v0

    if-gez p0, :cond_7

    move-wide p1, v0

    :cond_7
    const-wide/32 v0, 0x40000000

    div-long v2, p1, v0

    long-to-int p0, v2

    rem-long/2addr p1, v0

    long-to-int p1, p1

    if-lez p1, :cond_13

    add-int/lit8 p0, p0, 0x1

    :cond_13
    if-lez p1, :cond_2a

    const/4 p1, 0x1

    if-eq p0, p1, :cond_2a

    const/4 p1, 0x3

    if-eq p0, p1, :cond_2a

    rem-int/lit8 p1, p0, 0x2

    if-eqz p1, :cond_21

    add-int/lit8 p0, p0, 0x1

    :cond_21
    const-string p2, "formatMemoryDisplay: remainder: "

    const-string v0, ", mul: "

    const-string v1, "MemoryInfoManager"

    invoke-static {p2, p1, v0, p0, v1}, Lcom/android/common/config/g;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    :cond_2a
    int-to-long p0, p0

    const-wide/16 v0, 0x400

    mul-long/2addr p0, v0

    mul-long/2addr p0, v0

    mul-long/2addr p0, v0

    return-wide p0
.end method

.method public static isNumber(Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "[0-9]*"

    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method private needLtrMark()Z
    .registers 2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ug"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_23

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ur"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_21

    goto :goto_23

    :cond_21
    const/4 p0, 0x0

    goto :goto_24

    :cond_23
    :goto_23
    const/4 p0, 0x1

    :goto_24
    return p0
.end method

.method private registerObserver()V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/oplus/quickstep/memory/MemoryInfoManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "display_memory_information_recent_task"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/oplus/quickstep/memory/MemoryInfoManager;->mSwitchObserver:Landroid/database/ContentObserver;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_17

    goto :goto_1f

    :catch_17
    move-exception p0

    const-string v0, "registerObserver(), e="

    const-string v1, "MemoryInfoManager"

    invoke-static {v0, p0, v1}, Ls/b;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_1f
    return-void
.end method

.method private updateMemoDisplaySwitch()V
    .registers 5

    const-string v0, "MemoryInfoManager"

    :try_start_2
    iget-object v1, p0, Lcom/oplus/quickstep/memory/MemoryInfoManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "display_memory_information_recent_task"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_13

    move v3, v2

    :cond_13
    iput-boolean v3, p0, Lcom/oplus/quickstep/memory/MemoryInfoManager;->mNeedMemoryDetail:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateMemoDisplaySwitch mNeedMemoryDetail = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/oplus/quickstep/memory/MemoryInfoManager;->mNeedMemoryDetail:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2b} :catch_2c

    goto :goto_32

    :catch_2c
    move-exception p0

    const-string v1, "updateMemoDisplaySwitch(), e="

    invoke-static {v1, p0, v0}, Ls/b;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_32
    return-void
.end method


# virtual methods
.method public canPlayAnimation()Z
    .registers 2

    iget p0, p0, Lcom/oplus/quickstep/memory/MemoryInfoManager;->mMemoryAvailableWithoutUnit:F

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-lez p0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public getMemoDisplaySwitch()I
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/quickstep/memory/MemoryInfoManager;->mNeedMemoryDetail:Z

    return p0
.end method

.method public getMemoryAvailableWithoutUnit()F
    .registers 1

    iget p0, p0, Lcom/oplus/quickstep/memory/MemoryInfoManager;->mMemoryAvailableWithoutUnit:F

    return p0
.end method

.method public getMemoryInfo(Z)Lcom/oplus/quickstep/memory/MemoryInfoManager$MemoryInfoWrapper;
    .registers 20

    move-object/from16 v1, p0

    const-string v2, " "

    const-string v3, ""

    const-string v4, "\u200e"

    invoke-direct/range {p0 .. p0}, Lcom/oplus/quickstep/memory/MemoryInfoManager;->getTotalMemory()J

    move-result-wide v5

    invoke-static {}, Lcom/oplus/quickstep/memory/MemoryInfoManager;->getAvailProcMemInfo()J

    move-result-wide v7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getMemoryInfo: total="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, ", available="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, ", isConfidential="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v9, Lcom/android/common/config/FeatureOption;->sIsConfidentialVersion:Z

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ", enlargeSize="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v1, Lcom/oplus/quickstep/memory/MemoryInfoManager;->mExpandRam:J

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v9, "MemoryInfoManager"

    invoke-static {v9, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, 0x1

    :try_start_43
    invoke-direct {v1, v5, v6}, Lcom/oplus/quickstep/memory/MemoryInfoManager;->getbogusTotalMemory(J)J

    move-result-wide v5

    invoke-direct {v1, v5, v6}, Lcom/oplus/quickstep/memory/MemoryInfoManager;->getUnitValue(J)Ljava/lang/String;

    move-result-object v0

    sget-boolean v5, Lcom/android/common/config/FeatureOption;->sIsConfidentialVersion:Z

    if-eqz v5, :cond_51

    const-string v0, "16.0 GB"

    :cond_51
    move-object v5, v0

    invoke-direct {v1, v7, v8}, Lcom/oplus/quickstep/memory/MemoryInfoManager;->getUnitValue(J)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v7, 0x0

    if-nez v0, :cond_97

    invoke-virtual {v6, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/high16 v11, -0x40800000  # -1.0f

    array-length v0, v8
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_64} :catch_1a8

    if-le v0, v10, :cond_97

    :try_start_66
    aget-object v0, v8, v7

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11
    :try_end_6c
    .catch Ljava/lang/NumberFormatException; {:try_start_66 .. :try_end_6c} :catch_6d
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_6c} :catch_1a8

    goto :goto_82

    :catch_6d
    move-exception v0

    :try_start_6e
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "format number exception, e="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_82
    iput v11, v1, Lcom/oplus/quickstep/memory/MemoryInfoManager;->mMemoryAvailableWithoutUnit:F

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v8, v10

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/oplus/quickstep/memory/MemoryInfoManager;->mMemoryUnit:Ljava/lang/String;

    :cond_97
    invoke-static {}, Lcom/oplus/quickstep/memory/MemoryInfoManager;->getExpandCurr()I

    move-result v0

    int-to-long v11, v0

    iput-wide v11, v1, Lcom/oplus/quickstep/memory/MemoryInfoManager;->mExpandRam:J

    const-wide/32 v13, 0x40000000

    mul-long/2addr v11, v13

    invoke-direct {v1, v11, v12}, Lcom/oplus/quickstep/memory/MemoryInfoManager;->getUnitValue(J)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_e1

    const/4 v2, 0x2

    iput-boolean v7, v1, Lcom/oplus/quickstep/memory/MemoryInfoManager;->mNeedLtrMark:Z

    invoke-direct/range {p0 .. p0}, Lcom/oplus/quickstep/memory/MemoryInfoManager;->needLtrMark()Z

    move-result v8

    if-eqz v8, :cond_e4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-boolean v10, v1, Lcom/oplus/quickstep/memory/MemoryInfoManager;->mNeedLtrMark:Z

    goto :goto_e4

    :cond_e1
    iput-boolean v7, v1, Lcom/oplus/quickstep/memory/MemoryInfoManager;->mNeedLtrMark:Z

    move v2, v10

    :cond_e4
    :goto_e4
    iget-object v4, v1, Lcom/oplus/quickstep/memory/MemoryInfoManager;->mContext:Landroid/content/Context;

    const v8, 0x7f120399

    new-array v11, v10, [Ljava/lang/Object;

    aput-object v6, v11, v7

    invoke-virtual {v4, v8, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v8
    :try_end_f5
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_f5} :catch_1a8

    const-string v11, ", mMemoryAvailableWithoutUnit: "

    const-string v12, ",strAvai:"

    const-string v13, "getMemoryInfo: strTotal:"

    if-eqz v8, :cond_127

    :try_start_fd
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ",mExpandRam:"

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v14, v1, Lcom/oplus/quickstep/memory/MemoryInfoManager;->mExpandRam:J

    invoke-virtual {v8, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v1, Lcom/oplus/quickstep/memory/MemoryInfoManager;->mMemoryAvailableWithoutUnit:F

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_127
    iget-wide v14, v1, Lcom/oplus/quickstep/memory/MemoryInfoManager;->mExpandRam:J
    :try_end_129
    .catch Ljava/lang/Exception; {:try_start_fd .. :try_end_129} :catch_1a8

    const-wide/16 v16, 0x0

    cmp-long v8, v14, v16

    const-string v14, " | "

    if-eqz v8, :cond_156

    :try_start_131
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x3

    invoke-virtual {v5, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "+"

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_168

    :cond_156
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_168
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v7

    if-eqz v7, :cond_196

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ",strEnLargeSize:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v1, Lcom/oplus/quickstep/memory/MemoryInfoManager;->mMemoryAvailableWithoutUnit:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_196
    iput-object v6, v1, Lcom/oplus/quickstep/memory/MemoryInfoManager;->mStrMemoryAvailable:Ljava/lang/String;

    iput-object v5, v1, Lcom/oplus/quickstep/memory/MemoryInfoManager;->mStrMemoryTotal:Ljava/lang/String;

    iput-object v0, v1, Lcom/oplus/quickstep/memory/MemoryInfoManager;->mStrEnLargeSize:Ljava/lang/String;

    invoke-virtual {v4, v6, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/oplus/quickstep/memory/MemoryInfoManager;->mStrMemoryTotalSuffix:Ljava/lang/String;

    new-instance v0, Lcom/oplus/quickstep/memory/MemoryInfoManager$MemoryInfoWrapper;

    invoke-direct {v0, v4, v2}, Lcom/oplus/quickstep/memory/MemoryInfoManager$MemoryInfoWrapper;-><init>(Ljava/lang/String;I)V
    :try_end_1a7
    .catch Ljava/lang/Exception; {:try_start_131 .. :try_end_1a7} :catch_1a8

    return-object v0

    :catch_1a8
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMemoryInfo(), e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/oplus/quickstep/memory/MemoryInfoManager$MemoryInfoWrapper;

    invoke-direct {v0, v3, v10}, Lcom/oplus/quickstep/memory/MemoryInfoManager$MemoryInfoWrapper;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public getMemoryUnit()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/memory/MemoryInfoManager;->mMemoryUnit:Ljava/lang/String;

    return-object p0
.end method

.method public getStrEnLargeSize()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/memory/MemoryInfoManager;->mStrEnLargeSize:Ljava/lang/String;

    return-object p0
.end method

.method public getStrMemoryAvailable()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/memory/MemoryInfoManager;->mStrMemoryAvailable:Ljava/lang/String;

    return-object p0
.end method

.method public getStrMemoryTotal()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/memory/MemoryInfoManager;->mStrMemoryTotal:Ljava/lang/String;

    return-object p0
.end method

.method public getStrMemoryTotalSuffix()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/memory/MemoryInfoManager;->mStrMemoryTotalSuffix:Ljava/lang/String;

    return-object p0
.end method

.method public isNeedLtrMark()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/quickstep/memory/MemoryInfoManager;->mNeedLtrMark:Z

    return p0
.end method

.method public needMemoryDetail()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/quickstep/memory/MemoryInfoManager;->mNeedMemoryDetail:Z

    return p0
.end method

.method public recoveryDisplaySwitch()Z
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oplus/quickstep/memory/MemoryInfoManager;->saveMemoDisplaySwitch(I)Z

    move-result p0

    return p0
.end method

.method public saveMemoDisplaySwitch(I)Z
    .registers 3

    iget-object p0, p0, Lcom/oplus/quickstep/memory/MemoryInfoManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "display_memory_information_recent_task"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public saveMemoDisplaySwitch(Z)Z
    .registers 3

    iget-object p0, p0, Lcom/oplus/quickstep/memory/MemoryInfoManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "display_memory_information_recent_task"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method
