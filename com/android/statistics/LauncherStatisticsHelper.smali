.class public Lcom/android/statistics/LauncherStatisticsHelper;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/statistics/LauncherStatisticsHelper$DateChangeBroadCastReceiver;
    }
.end annotation


# static fields
.field public static final ACTION_DATE_CHANGED:Ljava/lang/String; = "android.intent.action.DATE_CHANGED"

.field private static final APP_STARTUP_ANIM_DEFAULT:I = 0x0

.field private static final INLAY_WALLPAPERS:Ljava/lang/String; = "inlay_wallpapers"

.field private static final INLAY_WALLPAPERS_NAME:Ljava/lang/String; = "inlay_wallpapers_name"

.field private static final KEY_LAST_UPLOAD_TIME:Ljava/lang/String; = "key_last_upload_time"

.field private static final TAG:Ljava/lang/String; = "LauncherStatisticsHelper"

.field private static final WALLPAPERS_PACKAGE_NAME:Ljava/lang/String; = "com.oplus.wallpapers"

.field private static volatile sInstance:Lcom/android/statistics/LauncherStatisticsHelper;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDateChangeBroadCastReceiver:Lcom/android/statistics/LauncherStatisticsHelper$DateChangeBroadCastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/statistics/LauncherStatisticsHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/model/data/ItemInfo;)I
    .registers 2

    invoke-static {p0, p1}, Lcom/android/statistics/LauncherStatisticsHelper;->lambda$filterHotSeatItems$0(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/model/data/ItemInfo;)I

    move-result p0

    return p0
.end method

.method public static getAppNameByItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Ljava/lang/String;
    .registers 3

    const-string v0, ""

    if-nez p0, :cond_5

    return-object v0

    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_c

    goto :goto_12

    :cond_c
    iget-object p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_12
    return-object v0
.end method

.method public static getAppStartupAnimSpeedIndex(Ljava/lang/String;)I
    .registers 4

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    :try_start_8
    const-string v0, "-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_22

    array-length v0, p0

    if-lez v0, :cond_22

    aget-object p0, p0, v1

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_19} :catch_1a

    return p0

    :catch_1a
    move-exception p0

    const-string v0, "getAppStartupAnimSpeedIndex, e:"

    const-string v2, "LauncherStatisticsHelper"

    invoke-static {v0, p0, v2}, Ls/b;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_22
    return v1
.end method

.method public static getAppStartupAnimSpeedStatusText(Landroid/content/Context;I)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_13

    array-length v0, p0

    if-le v0, p1, :cond_13

    aget-object p0, p0, p1

    return-object p0

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatisticsHelper;
    .registers 3

    sget-object v0, Lcom/android/statistics/LauncherStatisticsHelper;->sInstance:Lcom/android/statistics/LauncherStatisticsHelper;

    if-nez v0, :cond_17

    const-class v0, Lcom/android/statistics/LauncherStatisticsHelper;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/android/statistics/LauncherStatisticsHelper;->sInstance:Lcom/android/statistics/LauncherStatisticsHelper;

    if-nez v1, :cond_12

    new-instance v1, Lcom/android/statistics/LauncherStatisticsHelper;

    invoke-direct {v1, p0}, Lcom/android/statistics/LauncherStatisticsHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/statistics/LauncherStatisticsHelper;->sInstance:Lcom/android/statistics/LauncherStatisticsHelper;

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
    sget-object p0, Lcom/android/statistics/LauncherStatisticsHelper;->sInstance:Lcom/android/statistics/LauncherStatisticsHelper;

    return-object p0
.end method

.method public static getPkgNameByItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Ljava/lang/String;
    .registers 3

    const-string v0, ""

    if-nez p0, :cond_5

    return-object v0

    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_c

    goto :goto_14

    :cond_c
    invoke-virtual {p0}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :goto_14
    return-object v0
.end method

.method public static getWidgetClassByItemInfo(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)Ljava/lang/String;
    .registers 1

    if-eqz p0, :cond_c

    iget-object p0, p0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    if-nez p0, :cond_7

    goto :goto_c

    :cond_7
    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_c
    :goto_c
    const-string p0, ""

    return-object p0
.end method

.method public static getWidgetNameByItemInfo(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)Ljava/lang/String;
    .registers 1

    if-eqz p0, :cond_a

    iget-object p0, p0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    if-nez p0, :cond_7

    goto :goto_a

    :cond_7
    iget-object p0, p0, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    return-object p0

    :cond_a
    :goto_a
    const-string p0, ""

    return-object p0
.end method

.method public static getWidgetPkgByItemInfo(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)Ljava/lang/String;
    .registers 1

    if-eqz p0, :cond_c

    iget-object p0, p0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    if-nez p0, :cond_7

    goto :goto_c

    :cond_7
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_c
    :goto_c
    const-string p0, ""

    return-object p0
.end method

.method private static synthetic lambda$filterHotSeatItems$0(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/model/data/ItemInfo;)I
    .registers 2

    iget p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    iget p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method

.method private static releaseInstance()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/statistics/LauncherStatisticsHelper;->sInstance:Lcom/android/statistics/LauncherStatisticsHelper;

    return-void
.end method


# virtual methods
.method public filterHotSeatItems(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">(",
            "Ljava/util/ArrayList<",
            "TT;>;",
            "Ljava/util/ArrayList<",
            "TT;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfo;

    if-nez v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_4

    :cond_16
    new-instance p0, Lcom/android/launcher3/util/IntSet;

    invoke-direct {p0}, Lcom/android/launcher3/util/IntSet;-><init>()V

    sget-object v0, Lu/c;->c:Lu/c;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_24
    :goto_24
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfo;

    iget v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v2, -0x65

    if-ne v1, v2, :cond_24

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, v0, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/IntSet;->add(I)V

    goto :goto_24

    :cond_3f
    return-void
.end method

.method public getDefaultWallpaperDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const-string v0, "array"

    const-string v1, "LauncherStatisticsHelper"

    const-string v2, "com.oplus.wallpapers"

    const/4 v3, 0x0

    :try_start_7
    iget-object p0, p0, Lcom/android/statistics/LauncherStatisticsHelper;->mContext:Landroid/content/Context;

    const/4 v4, 0x3

    invoke-virtual {p0, v2, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_4a

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string v4, "inlay_wallpapers"

    invoke-virtual {p0, v4, v0, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "string"

    invoke-virtual {p0, p1, v5, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v5, "inlay_wallpapers_name"

    invoke-virtual {p0, v5, v0, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    :goto_34
    array-length v2, v4

    const/4 v5, -0x1

    if-ge v0, v2, :cond_44

    aget-object v2, v4, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    goto :goto_45

    :cond_41
    add-int/lit8 v0, v0, 0x1

    goto :goto_34

    :cond_44
    move v0, v5

    :goto_45
    if-eq v0, v5, :cond_56

    aget-object v3, p0, v0

    goto :goto_56

    :cond_4a
    const-string p0, "getDefaultWallpaperDisplayName. createPackageContextcom.oplus.wallpapers error!"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_4f} :catch_50

    goto :goto_56

    :catch_50
    move-exception p0

    const-string p1, "getDefaultWallpaperDisplayName. e = "

    invoke-static {p1, p0, v1}, Lcom/android/common/config/i;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_56
    :goto_56
    return-object v3
.end method

.method public getTotalUsageTime(JJ)J
    .registers 7

    :try_start_0
    iget-object v0, p0, Lcom/android/statistics/LauncherStatisticsHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "usagestats"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/app/usage/UsageStatsManager;->queryAndAggregateUsageStats(JJ)Ljava/util/Map;

    move-result-object p1

    iget-object p0, p0, Lcom/android/statistics/LauncherStatisticsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/usage/UsageStats;

    invoke-virtual {p0}, Landroid/app/usage/UsageStats;->getTotalTimeInForeground()J

    move-result-wide p0
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1f} :catch_20

    return-wide p0

    :catch_20
    move-exception p0

    const-string p1, "ex:"

    const-string p2, "LauncherStatisticsHelper"

    invoke-static {p1, p0, p2}, Lcom/android/common/config/i;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public registerDateChangeListener(Landroid/content/Context;)V
    .registers 11

    invoke-static {p1}, Lcom/oapm/perftest/PerfTest;->isOapmProcess(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "LauncherStatisticsHelper"

    if-eqz v0, :cond_e

    const-string p0, "oapm proc, ignore"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_e
    iget-object v0, p0, Lcom/android/statistics/LauncherStatisticsHelper;->mDateChangeBroadCastReceiver:Lcom/android/statistics/LauncherStatisticsHelper$DateChangeBroadCastReceiver;

    if-nez v0, :cond_1a

    new-instance v0, Lcom/android/statistics/LauncherStatisticsHelper$DateChangeBroadCastReceiver;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/android/statistics/LauncherStatisticsHelper$DateChangeBroadCastReceiver;-><init>(Lcom/android/statistics/LauncherStatisticsHelper$1;)V

    iput-object v0, p0, Lcom/android/statistics/LauncherStatisticsHelper;->mDateChangeBroadCastReceiver:Lcom/android/statistics/LauncherStatisticsHelper$DateChangeBroadCastReceiver;

    :cond_1a
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerDateChangeListener, context = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/statistics/LauncherStatisticsHelper;->mDateChangeBroadCastReceiver:Lcom/android/statistics/LauncherStatisticsHelper$DateChangeBroadCastReceiver;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public release()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/statistics/LauncherStatisticsHelper;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/statistics/LauncherStatisticsHelper;->releaseInstance()V

    return-void
.end method

.method public unregisterDateChangeListener(Landroid/content/Context;)V
    .registers 4

    iget-object v0, p0, Lcom/android/statistics/LauncherStatisticsHelper;->mDateChangeBroadCastReceiver:Lcom/android/statistics/LauncherStatisticsHelper$DateChangeBroadCastReceiver;

    if-eqz v0, :cond_3a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unregisterDateChangeListener, context = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LauncherStatisticsHelper"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1b
    iget-object v0, p0, Lcom/android/statistics/LauncherStatisticsHelper;->mDateChangeBroadCastReceiver:Lcom/android/statistics/LauncherStatisticsHelper$DateChangeBroadCastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/statistics/LauncherStatisticsHelper;->mDateChangeBroadCastReceiver:Lcom/android/statistics/LauncherStatisticsHelper$DateChangeBroadCastReceiver;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_23} :catch_24

    goto :goto_3a

    :catch_24
    move-exception p0

    const-string/jumbo p1, "unregisterDateChangeListener, Exception = "

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3a
    :goto_3a
    return-void
.end method
