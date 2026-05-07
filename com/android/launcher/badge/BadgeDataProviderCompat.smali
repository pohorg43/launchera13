.class public abstract Lcom/android/launcher/badge/BadgeDataProviderCompat;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/common/multiapp/MultiAppManager$MultiAppCallbacks;
.implements Lcom/android/launcher3/notification/NotificationListener$NotificationsChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/badge/BadgeDataProviderCompat$BadgeDataCallbacks;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field public static final DEBUG_BADGE:Z

.field public static final PACKAGE_USER_TO_MCS_DEEPLINK_INFOS:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/android/launcher3/util/PackageUserKey;",
            "Lcom/android/launcher3/dot/DotMcsDeeplinkInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "BadgeDataProviderCompat"

.field public static final mPackageUserToBadgeInfos:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/android/launcher3/util/PackageUserKey;",
            "Lcom/android/launcher3/dot/OplusDotInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final mShortcutUserToBadgeInfos:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/android/launcher3/dot/DotUtils$ShortCutIdUserUidKey;",
            "Lcom/android/launcher3/dot/OplusDotInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile sInstance:Lcom/android/launcher/badge/BadgeDataProviderCompat;


# instance fields
.field public mContext:Landroid/content/Context;

.field private mLauncher:Lcom/android/launcher/Launcher;

.field public mPackageManager:Landroid/content/pm/PackageManager;

.field public mWorker:Landroid/os/Handler;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/launcher/badge/BadgeDataProviderCompat;->mPackageUserToBadgeInfos:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/launcher/badge/BadgeDataProviderCompat;->mShortcutUserToBadgeInfos:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/launcher/badge/BadgeDataProviderCompat;->PACKAGE_USER_TO_MCS_DEEPLINK_INFOS:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher/badge/BadgeDataProviderCompat;->DEBUG_BADGE:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher/badge/BadgeDataProviderCompat;->mWorker:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher/badge/BadgeDataProviderCompat;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher/badge/BadgeDataProviderCompat;->mPackageManager:Landroid/content/pm/PackageManager;

    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "badge_loader"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/launcher/badge/BadgeDataProviderCompat;->mWorker:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/android/launcher/badge/BadgeDataProviderCompat;->registerNotificationListener()V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/util/PackageUserKey;Lcom/android/launcher3/dot/OplusDotInfo;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/badge/BadgeDataProviderCompat;->lambda$getDotInfo$3(Lcom/android/launcher3/util/PackageUserKey;Lcom/android/launcher3/dot/OplusDotInfo;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher/badge/BadgeDataProviderCompat;Lcom/android/launcher3/util/PackageUserKey;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/badge/BadgeDataProviderCompat;->lambda$postOnBadgeInfoChanged$2(Lcom/android/launcher3/util/PackageUserKey;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/launcher/badge/BadgeDataProviderCompat;IZLcom/android/launcher3/dot/DotUtils$PackageUserUidKey;Lcom/android/launcher3/dot/OplusDotInfo;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/launcher/badge/BadgeDataProviderCompat;->lambda$updateAppBadgeNum$4(IZLcom/android/launcher3/dot/DotUtils$PackageUserUidKey;Lcom/android/launcher3/dot/OplusDotInfo;)V

    return-void
.end method

.method public static synthetic d(Lcom/android/launcher/badge/BadgeDataProviderCompat;Ljava/util/function/Predicate;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/badge/BadgeDataProviderCompat;->lambda$updateNotificationDots$0(Ljava/util/function/Predicate;)V

    return-void
.end method

.method private static dumpAllBadgeInfoPackages()V
    .registers 8

    sget-object v0, Lcom/android/launcher/badge/BadgeDataProviderCompat;->mPackageUserToBadgeInfos:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v0

    :try_start_3
    const-string v1, "Badge"

    const-string v2, "BadgeDataProviderCompat"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dumpAllBadgeInfoPackages, badge info package total size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_27
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_64

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/util/PackageUserKey;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/dot/OplusDotInfo;

    const-string v4, "Badge"

    const-string v5, "BadgeDataProviderCompat"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "key: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/launcher3/dot/OplusDotInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v5, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_27

    :cond_64
    monitor-exit v0

    return-void

    :catchall_66
    move-exception v1

    monitor-exit v0
    :try_end_68
    .catchall {:try_start_3 .. :try_end_68} :catchall_66

    throw v1
.end method

.method public static synthetic e(Lcom/android/launcher/badge/BadgeDataProviderCompat;ILcom/android/launcher3/dot/DotUtils$ShortCutIdUserUidKey;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher/badge/BadgeDataProviderCompat;->lambda$updateAppBadgeNumForShortcut$5(ILcom/android/launcher3/dot/DotUtils$ShortCutIdUserUidKey;)V

    return-void
.end method

.method public static synthetic f(Lcom/android/launcher/badge/BadgeDataProviderCompat;Ljava/util/function/Predicate;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/badge/BadgeDataProviderCompat;->lambda$updateNotificationDotsForShortcut$1(Ljava/util/function/Predicate;)V

    return-void
.end method

.method public static getBadgeInfoList(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/dot/OplusDotInfo;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string p0, "BadgeDataProviderCompat"

    const-string v0, "getBadgeInfoList. packageName = null"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_f
    sget-object v0, Lcom/android/launcher/badge/BadgeDataProviderCompat;->mPackageUserToBadgeInfos:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v0

    :try_start_12
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1f
    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_43

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/util/PackageUserKey;

    iget-object v4, v4, Lcom/android/launcher3/util/PackageUserKey;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/dot/OplusDotInfo;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    :cond_43
    monitor-exit v0

    return-object v1

    :catchall_45
    move-exception p0

    monitor-exit v0
    :try_end_47
    .catchall {:try_start_12 .. :try_end_47} :catchall_45

    throw p0
.end method

.method public static getDotInfo(Lcom/android/launcher3/util/PackageUserKey;)Lcom/android/launcher3/dot/OplusDotInfo;
    .registers 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    if-nez p0, :cond_d

    const-string p0, "Badge"

    const-string v0, "BadgeDataProviderCompat"

    const-string v1, "getDotInfo -- packageUserKey is null!"

    invoke-static {p0, v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_d
    sget-object v0, Lcom/android/launcher/badge/BadgeDataProviderCompat;->mPackageUserToBadgeInfos:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v0

    :try_start_10
    sget-object v1, Lcom/android/launcher/badge/d;->b:Lcom/android/launcher/badge/d;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/dot/OplusDotInfo;

    monitor-exit v0

    return-object p0

    :catchall_1d
    move-exception p0

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_10 .. :try_end_1f} :catchall_1d

    throw p0
.end method

.method public static getDotInfoForShortcut(Lcom/android/launcher3/dot/DotUtils$ShortCutIdUserUidKey;)Lcom/android/launcher3/dot/OplusDotInfo;
    .registers 3

    if-nez p0, :cond_d

    const-string p0, "Badge"

    const-string v0, "BadgeDataProviderCompat"

    const-string v1, "getDotInfo -- packageUserKey is null!"

    invoke-static {p0, v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_d
    sget-object v0, Lcom/android/launcher/badge/BadgeDataProviderCompat;->mShortcutUserToBadgeInfos:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v0

    :try_start_10
    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/dot/OplusDotInfo;

    monitor-exit v0

    return-object p0

    :catchall_18
    move-exception p0

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_10 .. :try_end_1a} :catchall_18

    throw p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/launcher/badge/BadgeDataProviderCompat;
    .registers 3

    sget-object v0, Lcom/android/launcher/badge/BadgeDataProviderCompat;->sInstance:Lcom/android/launcher/badge/BadgeDataProviderCompat;

    if-nez v0, :cond_1b

    const-class v0, Lcom/android/launcher/badge/BadgeDataProviderCompat;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/android/launcher/badge/BadgeDataProviderCompat;->sInstance:Lcom/android/launcher/badge/BadgeDataProviderCompat;

    if-nez v1, :cond_16

    new-instance v1, Lcom/android/launcher/badge/BadgeDataProviderCompatVP;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/android/launcher/badge/BadgeDataProviderCompatVP;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/launcher/badge/BadgeDataProviderCompat;->sInstance:Lcom/android/launcher/badge/BadgeDataProviderCompat;

    :cond_16
    monitor-exit v0

    goto :goto_1b

    :catchall_18
    move-exception p0

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_18

    throw p0

    :cond_1b
    :goto_1b
    sget-object p0, Lcom/android/launcher/badge/BadgeDataProviderCompat;->sInstance:Lcom/android/launcher/badge/BadgeDataProviderCompat;

    return-object p0
.end method

.method private static synthetic lambda$getDotInfo$3(Lcom/android/launcher3/util/PackageUserKey;Lcom/android/launcher3/dot/OplusDotInfo;)V
    .registers 3

    const-string v0, "key = "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher3/util/PackageUserKey;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/launcher3/dot/OplusDotInfo;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Badge"

    const-string v0, "BadgeDataProviderCompat"

    invoke-static {p1, v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$postOnBadgeInfoChanged$2(Lcom/android/launcher3/util/PackageUserKey;)V
    .registers 5

    const-string v0, "BadgeDataProviderCompat"

    if-nez p1, :cond_b

    const-string/jumbo p0, "postOnBadgeInfoChanged. packageUserKey = null"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_b
    iget-object v1, p0, Lcom/android/launcher/badge/BadgeDataProviderCompat;->mLauncher:Lcom/android/launcher/Launcher;

    if-eqz v1, :cond_31

    instance-of v2, p1, Lcom/android/launcher3/dot/DotUtils$ShortCutIdUserUidKey;

    if-eqz v2, :cond_28

    const-string v1, "delete a shortcut sbn"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher/badge/BadgeDataProviderCompat;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p0

    new-instance v0, Lcom/android/launcher/badge/e;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/launcher/badge/e;-><init>(Lcom/android/launcher3/util/PackageUserKey;I)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/OplusWorkspace;->updateNotificationDotsForShortcut(Ljava/util/function/Predicate;)V

    goto :goto_31

    :cond_28
    new-instance p0, Lcom/android/launcher/badge/e;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/launcher/badge/e;-><init>(Lcom/android/launcher3/util/PackageUserKey;I)V

    invoke-virtual {v1, p0}, Lcom/android/launcher/Launcher;->updateNotificationDots(Ljava/util/function/Predicate;)V

    :cond_31
    :goto_31
    return-void
.end method

.method private synthetic lambda$updateAppBadgeNum$4(IZLcom/android/launcher3/dot/DotUtils$PackageUserUidKey;Lcom/android/launcher3/dot/OplusDotInfo;)V
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateAppBadgeNum: newCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", forceUpdate: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Badge"

    const-string v0, "BadgeDataProviderCompat"

    invoke-static {p2, v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/android/launcher3/card/LauncherCardBadgeManager;->INSTANCE:Lcom/android/launcher3/card/LauncherCardBadgeManager;

    invoke-virtual {p1, p3, p4}, Lcom/android/launcher3/card/LauncherCardBadgeManager;->notifyBadgeChange(Lcom/android/launcher3/util/PackageUserKey;Lcom/android/launcher3/dot/OplusDotInfo;)V

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/android/launcher/badge/f;

    invoke-direct {p1, p3}, Lcom/android/launcher/badge/f;-><init>(Lcom/android/launcher3/dot/DotUtils$PackageUserUidKey;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher/badge/BadgeDataProviderCompat;->updateNotificationDots(Ljava/util/function/Predicate;)V

    return-void
.end method

.method private synthetic lambda$updateAppBadgeNumForShortcut$5(ILcom/android/launcher3/dot/DotUtils$ShortCutIdUserUidKey;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateAppBadgeNum: newCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Badge"

    const-string v1, "BadgeDataProviderCompat"

    invoke-static {v0, v1, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/android/launcher/badge/f;

    invoke-direct {p1, p2}, Lcom/android/launcher/badge/f;-><init>(Lcom/android/launcher3/dot/DotUtils$ShortCutIdUserUidKey;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher/badge/BadgeDataProviderCompat;->updateNotificationDots(Ljava/util/function/Predicate;)V

    return-void
.end method

.method private synthetic lambda$updateNotificationDots$0(Ljava/util/function/Predicate;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/badge/BadgeDataProviderCompat;->mLauncher:Lcom/android/launcher/Launcher;

    if-eqz p0, :cond_7

    invoke-virtual {p0, p1}, Lcom/android/launcher/Launcher;->updateNotificationDots(Ljava/util/function/Predicate;)V

    :cond_7
    return-void
.end method

.method private synthetic lambda$updateNotificationDotsForShortcut$1(Ljava/util/function/Predicate;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/badge/BadgeDataProviderCompat;->mLauncher:Lcom/android/launcher/Launcher;

    if-eqz p0, :cond_b

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/OplusWorkspace;->updateNotificationDotsForShortcut(Ljava/util/function/Predicate;)V

    :cond_b
    return-void
.end method

.method private registerNotificationListener()V
    .registers 6

    const-string v0, "Badge"

    const-string v1, "BadgeDataProviderCompat"

    const-string/jumbo v2, "registerNotificationListener start..."

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_a
    new-instance v0, Lcom/android/launcher3/notification/NotificationListener;

    invoke-direct {v0}, Lcom/android/launcher3/notification/NotificationListener;-><init>()V

    iget-object v2, p0, Lcom/android/launcher/badge/BadgeDataProviderCompat;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/android/launcher/badge/BadgeDataProviderCompat;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, v4, p0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p0

    invoke-virtual {v0, v2, v3, p0}, Landroid/service/notification/NotificationListenerService;->registerAsSystemService(Landroid/content/Context;Landroid/content/ComponentName;I)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_2b} :catch_2c

    goto :goto_32

    :catch_2c
    move-exception p0

    const-string v0, "Cannot register listener"

    invoke-static {v1, v0, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_32
    return-void
.end method


# virtual methods
.method public clearBadgeNumberForAppInfo(Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clearBadgeNumberForAppInfo removedApps = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BadgeDataProviderCompat"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_19

    return-void

    :cond_19
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1d
    :goto_1d
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/AppInfo;

    iget-object v1, v0, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1d

    iget-object v2, p0, Lcom/android/launcher/badge/BadgeDataProviderCompat;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/launcher/OplusLauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher/OplusLauncherAppsCompat;

    move-result-object v2

    iget-object v3, v0, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Lcom/android/launcher/OplusLauncherAppsCompat;->isPackageEnabledForProfile(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    if-nez v1, :cond_1d

    invoke-static {v0}, Lcom/android/launcher3/util/PackageUserKey;->fromItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/PackageUserKey;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/launcher/badge/BadgeDataProviderCompat;->clearBadgeNumberForPackageUser(Landroid/content/Context;Lcom/android/launcher3/util/PackageUserKey;Z)V

    goto :goto_1d

    :cond_4c
    return-void
.end method

.method public clearBadgeNumberForPackageUser(Landroid/content/Context;Lcom/android/launcher3/util/PackageUserKey;Z)V
    .registers 12

    const-string v0, "BadgeDataProviderCompat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearBadgeNumberForPackageUser -- packageUser = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_19

    return-void

    :cond_19
    sget-object v0, Lcom/android/launcher/badge/BadgeDataProviderCompat;->mPackageUserToBadgeInfos:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v0

    :try_start_1c
    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/dot/OplusDotInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_28

    invoke-virtual {v1, v2}, Lcom/android/launcher3/dot/OplusDotInfo;->setNumberCount(I)V

    :cond_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_1c .. :try_end_29} :catchall_f3

    if-nez p1, :cond_2c

    return-void

    :cond_2c
    iget-object v1, p2, Lcom/android/launcher3/util/PackageUserKey;->mPackageName:Ljava/lang/String;

    iget-object v3, p2, Lcom/android/launcher3/util/PackageUserKey;->mUser:Landroid/os/UserHandle;

    const/4 v4, 0x0

    :try_start_31
    const-string v5, "badge.db"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    const-string v5, "app_package_name=? AND user_id=?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    aput-object v1, v6, v2

    const/4 v1, 0x1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v1

    invoke-static {p1, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string p1, "badge"

    invoke-virtual {v4, p1, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    const-string p1, "BadgeDataProviderCompat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearBadgeNumberForPackageUser --  success packageUser = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", needUpdate = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_97

    sget-object p1, Lcom/android/launcher3/card/LauncherCardBadgeManager;->INSTANCE:Lcom/android/launcher3/card/LauncherCardBadgeManager;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/launcher3/dot/OplusDotInfo;

    invoke-virtual {p1, p2, p3}, Lcom/android/launcher3/card/LauncherCardBadgeManager;->notifyBadgeChange(Lcom/android/launcher3/util/PackageUserKey;Lcom/android/launcher3/dot/OplusDotInfo;)V

    invoke-virtual {p0, p2}, Lcom/android/launcher/badge/BadgeDataProviderCompat;->postOnBadgeInfoChanged(Lcom/android/launcher3/util/PackageUserKey;)V
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_97} :catch_a9
    .catchall {:try_start_31 .. :try_end_97} :catchall_a7

    :cond_97
    :try_start_97
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_9d} :catch_9e

    goto :goto_e0

    :catch_9e
    move-exception p0

    const-string p1, "BadgeDataProviderCompat"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_d1

    :catchall_a7
    move-exception p0

    goto :goto_e1

    :catch_a9
    move-exception p0

    :try_start_aa
    const-string p1, "BadgeDataProviderCompat"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "clearBadgeNumberForPackageUser --- e = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c0
    .catchall {:try_start_aa .. :try_end_c0} :catchall_a7

    if-eqz v4, :cond_e0

    :try_start_c2
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_c8
    .catch Ljava/lang/Exception; {:try_start_c2 .. :try_end_c8} :catch_c9

    goto :goto_e0

    :catch_c9
    move-exception p0

    const-string p1, "BadgeDataProviderCompat"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_d1
    const-string p3, "clearBadgeNumberForPackageUser e = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e0
    :goto_e0
    return-void

    :goto_e1
    if-eqz v4, :cond_f2

    :try_start_e3
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_e9
    .catch Ljava/lang/Exception; {:try_start_e3 .. :try_end_e9} :catch_ea

    goto :goto_f2

    :catch_ea
    move-exception p1

    const-string p2, "BadgeDataProviderCompat"

    const-string p3, "clearBadgeNumberForPackageUser e = "

    invoke-static {p3, p1, p2}, Lcom/android/launcher/e;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_f2
    :goto_f2
    throw p0

    :catchall_f3
    move-exception p0

    :try_start_f4
    monitor-exit v0
    :try_end_f5
    .catchall {:try_start_f4 .. :try_end_f5} :catchall_f3

    throw p0
.end method

.method public getAppUid(Landroid/content/pm/PackageManager;Ljava/lang/String;I)I
    .registers 5

    sget-boolean p0, Lcom/android/launcher3/Utilities;->ATLEAST_P:Z

    const/4 v0, -0x1

    if-nez p0, :cond_6

    return v0

    :cond_6
    if-eqz p1, :cond_13

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_13

    :try_start_e
    invoke-virtual {p1, p2, p3}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result p0
    :try_end_12
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_e .. :try_end_12} :catch_13

    return p0

    :catch_13
    :cond_13
    return v0
.end method

.method public abstract getBadgeInfo(Ljava/util/List;)Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/util/PackageUserKey;",
            ">;)",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/android/launcher3/util/PackageUserKey;",
            "Lcom/android/launcher3/dot/OplusDotInfo;",
            ">;"
        }
    .end annotation
.end method

.method public getBadgeNumberFromDataBase(Lcom/android/launcher3/util/PackageUserKey;)I
    .registers 12

    const-string v0, "app_badge_count"

    iget-object v1, p0, Lcom/android/launcher/badge/BadgeDataProviderCompat;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const-string v3, "BadgeDataProviderCompat"

    if-eqz v1, :cond_a4

    if-eqz p1, :cond_a4

    iget-object v1, p1, Lcom/android/launcher3/util/PackageUserKey;->mPackageName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_15

    goto/16 :goto_a4

    :cond_15
    const/4 v1, 0x0

    :try_start_16
    const-string v7, "app_package_name=? AND user_id=?"

    const/4 v4, 0x2

    new-array v8, v4, [Ljava/lang/String;

    iget-object v4, p1, Lcom/android/launcher3/util/PackageUserKey;->mPackageName:Ljava/lang/String;

    aput-object v4, v8, v2

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p1, Lcom/android/launcher3/util/PackageUserKey;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v4

    iget-object p0, p0, Lcom/android/launcher/badge/BadgeDataProviderCompat;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/launcher/BadgeProvider$BadgeItems;->CONTENT_URI:Landroid/net/Uri;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_7e

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result p0

    if-lez p0, :cond_7e

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_7e

    invoke-interface {v1, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2
    :try_end_60
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_16 .. :try_end_60} :catch_79
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_60} :catch_63
    .catchall {:try_start_16 .. :try_end_60} :catchall_61

    goto :goto_7e

    :catchall_61
    move-exception p0

    goto :goto_a0

    :catch_63
    move-exception p0

    :try_start_64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getBadgeNumberFromDataBase --- e = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7e

    :catch_79
    const-string p0, "Got CursorIndexOutOfBoundsException while getBadgeNumberFromDataBase."

    invoke-static {v3, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7e
    .catchall {:try_start_64 .. :try_end_7e} :catchall_61

    :cond_7e
    :goto_7e
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getBadgeNumberFromDataBase, key = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", count = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Badge"

    invoke-static {p1, v3, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :goto_a0
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw p0

    :cond_a4
    :goto_a4
    const-string v0, "getBadgeNumberFromDataBase  mContext = "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher/badge/BadgeDataProviderCompat;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", packageUserKey = "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public getBadgeNumberFromDataBaseForShortcut(Lcom/android/launcher3/dot/DotUtils$ShortCutIdUserUidKey;)I
    .registers 12

    const-string v0, "app_badge_count"

    iget-object v1, p0, Lcom/android/launcher/badge/BadgeDataProviderCompat;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const-string v3, "BadgeDataProviderCompat"

    if-eqz v1, :cond_9e

    if-eqz p1, :cond_9e

    iget-object v1, p1, Lcom/android/launcher3/util/PackageUserKey;->mPackageName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_15

    goto/16 :goto_9e

    :cond_15
    const/4 v1, 0x0

    :try_start_16
    const-string v7, "app_package_name=?"

    const/4 v4, 0x1

    new-array v8, v4, [Ljava/lang/String;

    iget-object v4, p1, Lcom/android/launcher3/util/PackageUserKey;->mPackageName:Ljava/lang/String;

    aput-object v4, v8, v2

    iget-object p0, p0, Lcom/android/launcher/badge/BadgeDataProviderCompat;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/launcher/BadgeProvider$BadgeItems;->CONTENT_URI:Landroid/net/Uri;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_78

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result p0

    if-lez p0, :cond_78

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_78

    invoke-interface {v1, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "get shortcut count "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5a
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_16 .. :try_end_5a} :catch_73
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_5a} :catch_5d
    .catchall {:try_start_16 .. :try_end_5a} :catchall_5b

    goto :goto_78

    :catchall_5b
    move-exception p0

    goto :goto_9a

    :catch_5d
    move-exception p0

    :try_start_5e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getBadgeNumberFromDataBase --- e = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_78

    :catch_73
    const-string p0, "Got CursorIndexOutOfBoundsException while getBadgeNumberFromDataBase."

    invoke-static {v3, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_78
    .catchall {:try_start_5e .. :try_end_78} :catchall_5b

    :cond_78
    :goto_78
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getBadgeNumberFromDataBase, key = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", count = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Badge"

    invoke-static {p1, v3, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :goto_9a
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw p0

    :cond_9e
    :goto_9e
    const-string v0, "getBadgeNumberFromDataBase  mContext = "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher/badge/BadgeDataProviderCompat;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", packageUserKey = "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public getDotInfoForItem(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/dot/OplusDotInfo;
    .registers 3

    invoke-static {p1}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->supportsDotInfo(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_11

    sget-object p0, Lcom/android/launcher3/shortcuts/NoBadgeShortcutHelper;->INSTANCE:Lcom/android/launcher3/shortcuts/NoBadgeShortcutHelper;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/shortcuts/NoBadgeShortcutHelper;->isHeytapMarketShortcutItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p0

    if-eqz p0, :cond_10

    goto :goto_11

    :cond_10
    return-object v0

    :cond_11
    :goto_11
    invoke-static {p1}, Lcom/android/launcher3/util/PackageUserKey;->fromItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/PackageUserKey;

    move-result-object p0

    if-eqz p0, :cond_20

    sget-object p1, Lcom/android/launcher/badge/BadgeDataProviderCompat;->mPackageUserToBadgeInfos:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/dot/OplusDotInfo;

    return-object p0

    :cond_20
    return-object v0
.end method

.method public getDotInfoForShortCutItem(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/dot/OplusDotInfo;
    .registers 6

    sget-object p0, Lcom/android/launcher/badge/BadgeDataProviderCompat;->mShortcutUserToBadgeInfos:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter p0

    :try_start_3
    sget-object v0, Lcom/android/launcher3/shortcuts/NoBadgeShortcutHelper;->INSTANCE:Lcom/android/launcher3/shortcuts/NoBadgeShortcutHelper;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/shortcuts/NoBadgeShortcutHelper;->isHeytapMarketShortcutItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    invoke-static {p1}, Lcom/android/launcher3/util/PackageUserKey;->fromItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/PackageUserKey;

    move-result-object p1

    if-eqz p1, :cond_1c

    sget-object v0, Lcom/android/launcher/badge/BadgeDataProviderCompat;->mPackageUserToBadgeInfos:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/dot/OplusDotInfo;

    monitor-exit p0

    return-object p1

    :cond_1c
    monitor-exit p0

    return-object v1

    :cond_1e
    invoke-static {p1}, Lcom/android/launcher3/dot/DotUtils$ShortCutIdUserUidKey;->fromItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/dot/DotUtils$ShortCutIdUserUidKey;

    move-result-object p1

    const-string v0, "BadgeDataProviderCompat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get a ShortCutIdUserUidKey: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_61

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/dot/OplusDotInfo;

    const-string v0, "BadgeDataProviderCompat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mShortcutUserToBadgeInfos is :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " OplusDotInfo is :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    return-object p1

    :cond_61
    monitor-exit p0

    return-object v1

    :catchall_63
    move-exception p1

    monitor-exit p0
    :try_end_65
    .catchall {:try_start_3 .. :try_end_65} :catchall_63

    throw p1
.end method

.method public abstract initBadgeNumTypeSupportAppList()V
.end method

.method public abstract isFold(Ljava/lang/String;ILjava/lang/String;)Z
.end method

.method public onBadgeSupportPackagesUpdated()V
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher/badge/BadgeDataProviderCompat;->initBadgeNumTypeSupportAppList()V

    invoke-virtual {p0}, Lcom/android/launcher/badge/BadgeDataProviderCompat;->registerBadgeSwitchContentObserver()V

    invoke-virtual {p0}, Lcom/android/launcher/badge/BadgeDataProviderCompat;->refreshAllBadgeInfos()V

    return-void
.end method

.method public onMultiPackageAdded(Ljava/lang/String;)V
    .registers 7

    invoke-static {p1}, Lcom/android/launcher3/dot/DotUtils;->isPackageInBadgeSupportList(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lcom/android/launcher/badge/BadgeDataProviderCompat;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v1, 0x3e7

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/launcher/badge/BadgeDataProviderCompat;->getAppUid(Landroid/content/pm/PackageManager;Ljava/lang/String;I)I

    move-result p0

    new-instance v0, Lcom/android/launcher3/dot/DotUtils$PackageUserUidKey;

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, v1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-direct {v0, p1, v2, p0}, Lcom/android/launcher3/dot/DotUtils$PackageUserUidKey;-><init>(Ljava/lang/String;Landroid/os/UserHandle;I)V

    const-string v1, "Badge"

    const-string v2, "BadgeDataProviderCompat"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onMultiPackageAdded -- add multiApp packageName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", multiUid = "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/android/launcher3/dot/OplusDotInfo;

    const/4 p1, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/launcher3/dot/OplusDotInfo;-><init>(II)V

    sget-object p1, Lcom/android/launcher/badge/BadgeDataProviderCompat;->mPackageUserToBadgeInfos:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter p1

    :try_start_43
    invoke-virtual {p1, v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p1

    goto :goto_4b

    :catchall_48
    move-exception p0

    monitor-exit p1
    :try_end_4a
    .catchall {:try_start_43 .. :try_end_4a} :catchall_48

    throw p0

    :cond_4b
    :goto_4b
    return-void
.end method

.method public onMultiPackageRemoved(Ljava/lang/String;)V
    .registers 7

    sget-object v0, Lcom/android/launcher/badge/BadgeDataProviderCompat;->mPackageUserToBadgeInfos:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v0

    :try_start_3
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/util/PackageUserKey;

    if-eqz v2, :cond_b

    invoke-static {}, Lcom/android/common/multiapp/MultiAppManager;->getInstance()Lcom/android/common/multiapp/MultiAppManager;

    move-result-object v3

    iget-object v4, v2, Lcom/android/launcher3/util/PackageUserKey;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/common/multiapp/MultiAppManager;->isMultiAppUserId(I)Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v2, v2, Lcom/android/launcher3/util/PackageUserKey;->mPackageName:Ljava/lang/String;

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    :cond_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_48

    iget-object v0, p0, Lcom/android/launcher/badge/BadgeDataProviderCompat;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/launcher3/util/PackageUserKey;

    new-instance v2, Landroid/os/UserHandle;

    const/16 v3, 0x3e7

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-direct {v1, p1, v2}, Lcom/android/launcher3/util/PackageUserKey;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    const/4 p1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/launcher/badge/BadgeDataProviderCompat;->clearBadgeNumberForPackageUser(Landroid/content/Context;Lcom/android/launcher3/util/PackageUserKey;Z)V

    return-void

    :catchall_48
    move-exception p0

    :try_start_49
    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_48

    throw p0
.end method

.method public abstract onNotificationCenterSettingChange(Landroid/content/Intent;)V
.end method

.method public abstract onPackageUpdate(Ljava/lang/String;Landroid/os/UserHandle;)V
.end method

.method public postOnBadgeInfoChanged(Lcom/android/launcher3/util/PackageUserKey;)V
    .registers 4

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Landroidx/constraintlayout/motion/widget/a;

    invoke-direct {v1, p0, p1}, Landroidx/constraintlayout/motion/widget/a;-><init>(Lcom/android/launcher/badge/BadgeDataProviderCompat;Lcom/android/launcher3/util/PackageUserKey;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/AbstractExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public refreshAllBadgeInfos()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/badge/BadgeDataProviderCompat;->mWorker:Landroid/os/Handler;

    if-nez v0, :cond_d

    const-string p0, "BadgeDataProviderCompat"

    const-string/jumbo v0, "refreshBadgeNumberInfo mWorker = null"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_d
    new-instance v1, Lcom/android/launcher/badge/BadgeDataProviderCompat$1;

    invoke-direct {v1, p0}, Lcom/android/launcher/badge/BadgeDataProviderCompat$1;-><init>(Lcom/android/launcher/badge/BadgeDataProviderCompat;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public abstract registerBadgeSwitchContentObserver()V
.end method

.method public setLauncher(Lcom/android/launcher/Launcher;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/badge/BadgeDataProviderCompat;->mLauncher:Lcom/android/launcher/Launcher;

    return-void
.end method

.method public updateAppBadgeNum(Ljava/lang/String;ILandroid/os/UserHandle;ZI)V
    .registers 19

    move-object v1, p0

    move-object v0, p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "BadgeDataProviderCompat"

    if-eqz v2, :cond_11

    const-string/jumbo v0, "updateAppBadgeNum packageName = null"

    invoke-static {v3, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_11
    new-instance v4, Lcom/android/launcher3/dot/DotUtils$PackageUserUidKey;

    move-object/from16 v2, p3

    move/from16 v5, p5

    invoke-direct {v4, p1, v2, v5}, Lcom/android/launcher3/dot/DotUtils$PackageUserUidKey;-><init>(Ljava/lang/String;Landroid/os/UserHandle;I)V

    invoke-static {v4}, Lcom/android/launcher/badge/BadgeDataProviderCompat;->getDotInfo(Lcom/android/launcher3/util/PackageUserKey;)Lcom/android/launcher3/dot/OplusDotInfo;

    move-result-object v6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateAppBadgeNum -- dotInfo = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "Badge"

    invoke-static {v5, v3, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-nez v6, :cond_4d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "no supported badge number type! key = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4d
    invoke-virtual {v6}, Lcom/android/launcher3/dot/OplusDotInfo;->getNumberCount()I

    move-result v2

    invoke-virtual {v6}, Lcom/android/launcher3/dot/OplusDotInfo;->showBadgeNumber()Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_60

    const/16 v5, 0x3e8

    move v7, p2

    invoke-static {p2, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto :goto_78

    :cond_60
    const-string/jumbo v7, "updateAppBadgeNum --- shortcut don\'t show number badge, packageName = "

    const-string v9, ", badgeType = "

    invoke-static {v7, p1, v9}, Landroidx/activity/result/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Lcom/android/launcher3/dot/OplusDotInfo;->getBadgeType()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v3, v7}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v5, v8

    :goto_78
    if-ne v2, v5, :cond_7c

    if-eqz p4, :cond_ca

    :cond_7c
    invoke-virtual {v6, v5}, Lcom/android/launcher3/dot/OplusDotInfo;->setNumberCount(I)V

    invoke-virtual {v6}, Lcom/android/launcher3/dot/OplusDotInfo;->getObject()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6}, Lcom/android/launcher3/dot/OplusDotInfo;->getObject()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_9f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateAppBadgeNum. obj = null, So return. packageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_9f
    iget-object v0, v1, Lcom/android/launcher/badge/BadgeDataProviderCompat;->mWorker:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v6}, Lcom/android/launcher3/dot/OplusDotInfo;->getLastUpdateNumberCountTime()J

    move-result-wide v2

    sub-long v2, v9, v2

    const-wide/16 v11, 0x320

    cmp-long v0, v2, v11

    if-gez v0, :cond_b6

    const/16 v8, 0x320

    :cond_b6
    iget-object v11, v1, Lcom/android/launcher/badge/BadgeDataProviderCompat;->mWorker:Landroid/os/Handler;

    new-instance v12, Lcom/android/launcher/badge/c;

    move-object v0, v12

    move-object v1, p0

    move v2, v5

    move/from16 v3, p4

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher/badge/c;-><init>(Lcom/android/launcher/badge/BadgeDataProviderCompat;IZLcom/android/launcher3/dot/DotUtils$PackageUserUidKey;Lcom/android/launcher3/dot/OplusDotInfo;)V

    int-to-long v0, v8

    invoke-virtual {v11, v12, v7, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    invoke-virtual {v6, v9, v10}, Lcom/android/launcher3/dot/OplusDotInfo;->setLastUpdateNumberCountTime(J)V

    :cond_ca
    return-void
.end method

.method public updateAppBadgeNumForShortcut(Ljava/lang/String;ILandroid/os/UserHandle;I)V
    .registers 14

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "BadgeDataProviderCompat"

    if-eqz v0, :cond_f

    const-string/jumbo p0, "updateAppBadgeNum packageName = null"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_f
    new-instance v0, Lcom/android/launcher3/dot/DotUtils$ShortCutIdUserUidKey;

    invoke-direct {v0, p1, p3, p4}, Lcom/android/launcher3/dot/DotUtils$ShortCutIdUserUidKey;-><init>(Ljava/lang/String;Landroid/os/UserHandle;I)V

    invoke-static {v0}, Lcom/android/launcher/badge/BadgeDataProviderCompat;->getDotInfoForShortcut(Lcom/android/launcher3/dot/DotUtils$ShortCutIdUserUidKey;)Lcom/android/launcher3/dot/OplusDotInfo;

    move-result-object p3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateAppBadgeNum -- dotInfo = "

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v2, "Badge"

    invoke-static {v2, v1, p4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-nez p3, :cond_47

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "no supported badge number type! key = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_47
    invoke-virtual {p3}, Lcom/android/launcher3/dot/OplusDotInfo;->getNumberCount()I

    move-result p4

    invoke-virtual {p3}, Lcom/android/launcher3/dot/OplusDotInfo;->showBadgeNumber()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_59

    const/16 v2, 0x3e8

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_71

    :cond_59
    const-string/jumbo p2, "updateAppBadgeNum --- shortcut don\'t show number badge, packageName = "

    const-string v3, ", badgeType = "

    invoke-static {p2, p1, v3}, Landroidx/activity/result/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p3}, Lcom/android/launcher3/dot/OplusDotInfo;->getBadgeType()I

    move-result v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, v1, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move p2, v4

    :goto_71
    if-eq p4, p2, :cond_bb

    invoke-virtual {p3, p2}, Lcom/android/launcher3/dot/OplusDotInfo;->setNumberCount(I)V

    invoke-virtual {p3}, Lcom/android/launcher3/dot/OplusDotInfo;->getObject()Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p3}, Lcom/android/launcher3/dot/OplusDotInfo;->getObject()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_96

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "updateAppBadgeNum. obj = null, So return. packageName = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_96
    iget-object p1, p0, Lcom/android/launcher/badge/BadgeDataProviderCompat;->mWorker:Landroid/os/Handler;

    invoke-virtual {p1, p4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p3}, Lcom/android/launcher3/dot/OplusDotInfo;->getLastUpdateNumberCountTime()J

    move-result-wide v5

    sub-long v5, v1, v5

    const-wide/16 v7, 0x320

    cmp-long p1, v5, v7

    if-gez p1, :cond_ad

    const/16 v4, 0x320

    :cond_ad
    iget-object p1, p0, Lcom/android/launcher/badge/BadgeDataProviderCompat;->mWorker:Landroid/os/Handler;

    new-instance v3, Lcom/android/launcher/badge/b;

    invoke-direct {v3, p0, p2, v0}, Lcom/android/launcher/badge/b;-><init>(Lcom/android/launcher/badge/BadgeDataProviderCompat;ILcom/android/launcher3/dot/DotUtils$ShortCutIdUserUidKey;)V

    int-to-long v4, v4

    invoke-virtual {p1, v3, p4, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    invoke-virtual {p3, v1, v2}, Lcom/android/launcher3/dot/OplusDotInfo;->setLastUpdateNumberCountTime(J)V

    :cond_bb
    return-void
.end method

.method public abstract updateBadgeSwitch(ZI)V
.end method

.method public updateNotificationDots(Ljava/util/function/Predicate;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/util/PackageUserKey;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/launcher/badge/a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/android/launcher/badge/a;-><init>(Lcom/android/launcher/badge/BadgeDataProviderCompat;Ljava/util/function/Predicate;I)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/AbstractExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public updateNotificationDotsForShortcut(Ljava/util/function/Predicate;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/dot/DotUtils$ShortCutIdUserUidKey;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/launcher/badge/a;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/android/launcher/badge/a;-><init>(Lcom/android/launcher/badge/BadgeDataProviderCompat;Ljava/util/function/Predicate;I)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/AbstractExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method
