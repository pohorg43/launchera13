.class public Lcom/android/launcher/operators/AppWidgetReloadHelper;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/operators/AppWidgetReloadHelper$UpdateHandler;
    }
.end annotation


# static fields
.field public static final MESSAGE_START_LISTENING:I = 0x1

.field public static final RE_STARTLISTENING:J = 0xbb8L

.field public static final TAG:Ljava/lang/String; = "AppWidgetReloadHelper"

.field private static volatile sInstance:Lcom/android/launcher/operators/AppWidgetReloadHelper;


# instance fields
.field private mNonRebootPackageAddedReceiver:Landroid/content/BroadcastReceiver;

.field private mOperatorsWidgetData:Lcom/android/launcher/bean/OperatorsWidgetData;

.field private mPackageCount:I


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher/operators/AppWidgetReloadHelper;->mNonRebootPackageAddedReceiver:Landroid/content/BroadcastReceiver;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher/operators/AppWidgetReloadHelper;->mPackageCount:I

    return-void
.end method

.method public static synthetic access$000(Lcom/android/launcher/operators/AppWidgetReloadHelper;)I
    .registers 1

    iget p0, p0, Lcom/android/launcher/operators/AppWidgetReloadHelper;->mPackageCount:I

    return p0
.end method

.method public static synthetic access$008(Lcom/android/launcher/operators/AppWidgetReloadHelper;)I
    .registers 3

    iget v0, p0, Lcom/android/launcher/operators/AppWidgetReloadHelper;->mPackageCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/launcher/operators/AppWidgetReloadHelper;->mPackageCount:I

    return v0
.end method

.method public static synthetic access$102(Lcom/android/launcher/operators/AppWidgetReloadHelper;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/operators/AppWidgetReloadHelper;->mNonRebootPackageAddedReceiver:Landroid/content/BroadcastReceiver;

    return-object p1
.end method

.method public static getInstance()Lcom/android/launcher/operators/AppWidgetReloadHelper;
    .registers 2

    sget-object v0, Lcom/android/launcher/operators/AppWidgetReloadHelper;->sInstance:Lcom/android/launcher/operators/AppWidgetReloadHelper;

    if-nez v0, :cond_17

    const-class v0, Lcom/android/launcher/operators/AppWidgetReloadHelper;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/android/launcher/operators/AppWidgetReloadHelper;->sInstance:Lcom/android/launcher/operators/AppWidgetReloadHelper;

    if-nez v1, :cond_12

    new-instance v1, Lcom/android/launcher/operators/AppWidgetReloadHelper;

    invoke-direct {v1}, Lcom/android/launcher/operators/AppWidgetReloadHelper;-><init>()V

    sput-object v1, Lcom/android/launcher/operators/AppWidgetReloadHelper;->sInstance:Lcom/android/launcher/operators/AppWidgetReloadHelper;

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
    sget-object v0, Lcom/android/launcher/operators/AppWidgetReloadHelper;->sInstance:Lcom/android/launcher/operators/AppWidgetReloadHelper;

    return-object v0
.end method

.method private initReceiver(Lcom/android/launcher/bean/OperatorsWidgetData;)V
    .registers 3

    new-instance v0, Lcom/android/launcher/operators/AppWidgetReloadHelper$1;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher/operators/AppWidgetReloadHelper$1;-><init>(Lcom/android/launcher/operators/AppWidgetReloadHelper;Lcom/android/launcher/bean/OperatorsWidgetData;)V

    iput-object v0, p0, Lcom/android/launcher/operators/AppWidgetReloadHelper;->mNonRebootPackageAddedReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method public addOperatorWidget(ILcom/android/launcher3/model/data/LauncherAppWidgetInfo;Lcom/android/launcher3/widget/PendingAddWidgetInfo;)V
    .registers 7

    iget-object v0, p0, Lcom/android/launcher/operators/AppWidgetReloadHelper;->mOperatorsWidgetData:Lcom/android/launcher/bean/OperatorsWidgetData;

    const-string v1, "AppWidgetReloadHelper"

    if-nez v0, :cond_d

    const-string/jumbo p0, "operatorWidgetConfig is null"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_d
    invoke-virtual {v0}, Lcom/android/launcher/bean/OperatorsWidgetData;->getOperatorWidgetLocation()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_70

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1a

    goto :goto_70

    :cond_1a
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ne p1, v1, :cond_26

    invoke-virtual {p0}, Lcom/android/launcher/operators/AppWidgetReloadHelper;->unregisterCotaNonRebootPackageAddedReceiver()V

    invoke-virtual {p0}, Lcom/android/launcher/operators/AppWidgetReloadHelper;->resetPackageCount()V

    :cond_26
    iget-object p0, p0, Lcom/android/launcher/operators/AppWidgetReloadHelper;->mOperatorsWidgetData:Lcom/android/launcher/bean/OperatorsWidgetData;

    invoke-virtual {p2}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/launcher/bean/OperatorsWidgetData;->carrierPackageIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string p1, ","

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    iget p1, p3, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iput p1, p2, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget p1, p3, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iput p1, p2, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iget p1, p3, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    iput p1, p2, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    iget p1, p3, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    iput p1, p2, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    iget-object p1, p3, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    iput-object p1, p2, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    const/16 p1, -0x64

    iput p1, p2, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/4 p1, 0x1

    aget-object p1, p0, p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p2, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    const/4 p1, 0x2

    aget-object p1, p0, p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p2, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    const/4 p1, 0x0

    aget-object p0, p0, p1

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    iput p0, p2, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    return-void

    :cond_70
    :goto_70
    const-string p0, "call, operatorWidgetLocation is null"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getPackageCount()I
    .registers 1

    iget p0, p0, Lcom/android/launcher/operators/AppWidgetReloadHelper;->mPackageCount:I

    return p0
.end method

.method public registerPackageAddedReceiver(Lcom/android/launcher/bean/OperatorsWidgetData;)V
    .registers 8

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    sget-boolean v1, Lcom/android/common/config/FeatureOption;->isExp:Z

    const-string v2, "AppWidgetReloadHelper"

    if-nez v1, :cond_10

    const-string p0, "domestic version, do not register cota receiver."

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_10
    const-string/jumbo v1, "non_reboot_cota_layout_reloaded"

    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_53

    invoke-static {v0}, Lcom/android/launcher/layout/LayoutPrefsUtils;->getLauncherCotaLayoutVersion(Landroid/content/Context;)I

    move-result v1

    if-lez v1, :cond_21

    goto :goto_53

    :cond_21
    const-string/jumbo v1, "non_reboot_cota_extra_workspace_loaded"

    invoke-static {v0, v1, v3}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_30

    const-string p0, "already trigger load extra_workspace.xml for non reboot cota, don\'t register it again."

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_30
    const-string/jumbo v1, "register packageadded receiver for non-reboot cota."

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher/operators/AppWidgetReloadHelper;->mOperatorsWidgetData:Lcom/android/launcher/bean/OperatorsWidgetData;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v2, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "package"

    invoke-virtual {v2, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/launcher/operators/AppWidgetReloadHelper;->initReceiver(Lcom/android/launcher/bean/OperatorsWidgetData;)V

    iget-object v1, p0, Lcom/android/launcher/operators/AppWidgetReloadHelper;->mNonRebootPackageAddedReceiver:Landroid/content/BroadcastReceiver;

    const/4 v4, 0x0

    const/4 v5, 0x2

    const-string/jumbo v3, "oplus.permission.OPLUS_COMPONENT_SAFE"

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    return-void

    :cond_53
    :goto_53
    const-string p0, "already trigger the cota reload event or cota loaded. don\'t register it again."

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public resetPackageCount()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher/operators/AppWidgetReloadHelper;->mPackageCount:I

    return-void
.end method

.method public unregisterCotaNonRebootPackageAddedReceiver()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/operators/AppWidgetReloadHelper;->mNonRebootPackageAddedReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_18

    const-string v0, "AppWidgetReloadHelper"

    const-string/jumbo v1, "unregister non-reboot cota reload layout packageadded receiver"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher/operators/AppWidgetReloadHelper;->mNonRebootPackageAddedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher/operators/AppWidgetReloadHelper;->mNonRebootPackageAddedReceiver:Landroid/content/BroadcastReceiver;

    :cond_18
    return-void
.end method
