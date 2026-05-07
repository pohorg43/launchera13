.class public Lcom/oplus/quickstep/applock/OplusLockManager;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final BACK_UP_INSTALLED_DEFAULT_APPS:Ljava/lang/String; = "back_up_installed_default_apps"

.field public static final BACK_UP_LOCK_APPS:Ljava/lang/String; = "back_up_lock_apps"

.field private static final CONFIG_NAME_LOCK_APP:Ljava/lang/String; = "default_recent_lock_app"

.field private static final CONFIG_PREFERENCE:Ljava/lang/String; = "Configuration"

.field private static final CONFIG_VERSION:Ljava/lang/String; = "config_version"

.field private static final DEFAULT_LOCK_APP_LIMIT:I = 0x5

.field public static final IS_SMART_ENABLE:Ljava/lang/String; = "low_power"

.field private static final KEY_OF_GET_DEFAULT_LOCK_APP_TYPE:Ljava/lang/String; = "key_of_get_default_lock_app_type"

.field private static final SINSTANCE_LOCK:Ljava/lang/Object;

.field private static final SMART_ENABLE_OFF:I = 0x0

.field private static final SMART_ENABLE_ON:I = 0x1

.field public static final SMART_ENABLE_URI:Landroid/net/Uri;

.field private static final SP_KEY_LOCK_APP_LIMIT:Ljava/lang/String; = "lock_app_limit"

.field private static final TAG:Ljava/lang/String; = "OplusLockManager"

.field private static final TYPE_OF_GET_BY_OPLUS_CONFIG:I = 0x2

.field private static final TYPE_OF_GET_FROM_RUS:I = 0x1

.field private static volatile sInstance:Lcom/oplus/quickstep/applock/OplusLockManager;


# instance fields
.field private final mAppLockModel:Lcom/oplus/quickstep/applock/AppLockModel;

.field private final mConfig:Landroid/content/SharedPreferences;

.field private final mContentObserver:Landroid/database/ContentObserver;

.field private final mContext:Landroid/content/Context;

.field private mIsSmartEnableOn:Z

.field private mLockAppLimit:I

.field private mOldPhoneInstalledDefaultApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-string v0, "low_power"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oplus/quickstep/applock/OplusLockManager;->SMART_ENABLE_URI:Landroid/net/Uri;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/oplus/quickstep/applock/OplusLockManager;->SINSTANCE_LOCK:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/oplus/quickstep/applock/OplusLockManager$1;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/oplus/quickstep/applock/OplusLockManager$1;-><init>(Lcom/oplus/quickstep/applock/OplusLockManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/oplus/quickstep/applock/OplusLockManager;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/quickstep/applock/OplusLockManager;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/oplus/quickstep/applock/AppLockModel;

    invoke-direct {v0}, Lcom/oplus/quickstep/applock/AppLockModel;-><init>()V

    iput-object v0, p0, Lcom/oplus/quickstep/applock/OplusLockManager;->mAppLockModel:Lcom/oplus/quickstep/applock/AppLockModel;

    const-string v1, "Configuration"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/quickstep/applock/OplusLockManager;->mConfig:Landroid/content/SharedPreferences;

    const-string v2, "lock_app_limit"

    const/4 v3, 0x5

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/oplus/quickstep/applock/OplusLockManager;->mLockAppLimit:I

    invoke-virtual {v0}, Lcom/oplus/quickstep/applock/AppLockModel;->restoreLockApps()V

    invoke-direct {p0}, Lcom/oplus/quickstep/applock/OplusLockManager;->updateTypeOfGetDefaultLock()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/oplus/quickstep/applock/OplusLockManager;->updateFromXmlIfNeeded(Z)V

    invoke-virtual {v0, p1}, Lcom/oplus/quickstep/applock/AppLockModel;->verifyLockedPkgsAsync(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/oplus/quickstep/applock/OplusLockManager;->initContentObserver()V

    invoke-direct {p0}, Lcom/oplus/quickstep/applock/OplusLockManager;->initPackageRemovedBroad()V

    return-void
.end method

.method public static synthetic a(Lcom/oplus/quickstep/applock/OplusLockManager;Ljava/util/ArrayList;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/applock/OplusLockManager;->lambda$checkAndUnlockRemovedApps$0(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/oplus/quickstep/applock/OplusLockManager;)I
    .registers 1

    invoke-direct {p0}, Lcom/oplus/quickstep/applock/OplusLockManager;->getPowerModeState()I

    move-result p0

    return p0
.end method

.method public static synthetic access$100(Lcom/oplus/quickstep/applock/OplusLockManager;)Lcom/oplus/quickstep/applock/AppLockModel;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/applock/OplusLockManager;->mAppLockModel:Lcom/oplus/quickstep/applock/AppLockModel;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/oplus/quickstep/applock/OplusLockManager;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/quickstep/applock/OplusLockManager;->mIsSmartEnableOn:Z

    return p0
.end method

.method public static synthetic access$202(Lcom/oplus/quickstep/applock/OplusLockManager;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/quickstep/applock/OplusLockManager;->mIsSmartEnableOn:Z

    return p1
.end method

.method public static synthetic access$300(Lcom/oplus/quickstep/applock/OplusLockManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/quickstep/applock/OplusLockManager;->updateLockViews()V

    return-void
.end method

.method private getDefaultAppCache(Ljava/util/List;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/oplus/quickstep/applock/OplusLockManager;->mAppLockModel:Lcom/oplus/quickstep/applock/AppLockModel;

    invoke-virtual {v2, v1}, Lcom/oplus/quickstep/applock/AppLockModel;->isDefaultLockApp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_21
    return-object v0
.end method

.method private getDefaultLockAppsFromConfig()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string p0, "default_recent_lock_app"

    const-string v0, "OplusLockManager"

    const/4 v1, 0x0

    :try_start_5
    invoke-static {}, Lcom/oplus/util/OplusCommonConfig;->getInstance()Lcom/oplus/util/OplusCommonConfig;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p0, v3}, Lcom/oplus/util/OplusCommonConfig;->getConfigInfo(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_16

    const-string p0, "getDefaultLockAppsFromConfig fail, bundle is null"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_16
    invoke-virtual {v2, p0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDefaultLockAppsFromConfig, result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_2e} :catch_2f

    return-object p0

    :catch_2f
    move-exception p0

    const-string v2, "getDefaultLockAppsFromConfig, e: "

    invoke-static {v2}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/oplus/quickstep/applock/OplusLockManager;
    .registers 3

    sget-object v0, Lcom/oplus/quickstep/applock/OplusLockManager;->sInstance:Lcom/oplus/quickstep/applock/OplusLockManager;

    if-nez v0, :cond_17

    sget-object v0, Lcom/oplus/quickstep/applock/OplusLockManager;->SINSTANCE_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/oplus/quickstep/applock/OplusLockManager;->sInstance:Lcom/oplus/quickstep/applock/OplusLockManager;

    if-nez v1, :cond_12

    new-instance v1, Lcom/oplus/quickstep/applock/OplusLockManager;

    invoke-direct {v1, p0}, Lcom/oplus/quickstep/applock/OplusLockManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/oplus/quickstep/applock/OplusLockManager;->sInstance:Lcom/oplus/quickstep/applock/OplusLockManager;

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
    sget-object p0, Lcom/oplus/quickstep/applock/OplusLockManager;->sInstance:Lcom/oplus/quickstep/applock/OplusLockManager;

    return-object p0
.end method

.method private getPowerModeState()I
    .registers 4

    sget-object v0, Lcom/oplus/quickstep/common/MultiUserContentHelper;->Companion:Lcom/oplus/quickstep/common/MultiUserContentHelper$Companion;

    iget-object p0, p0, Lcom/oplus/quickstep/applock/OplusLockManager;->mContext:Landroid/content/Context;

    const-string v1, "low_power"

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/oplus/quickstep/common/MultiUserContentHelper$Companion;->getGlobalIntValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private initContentObserver()V
    .registers 6

    const-string v0, "OplusLockManager"

    :try_start_2
    iget-object v1, p0, Lcom/oplus/quickstep/applock/OplusLockManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/oplus/quickstep/applock/OplusLockManager;->SMART_ENABLE_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/oplus/quickstep/applock/OplusLockManager;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-direct {p0}, Lcom/oplus/quickstep/applock/OplusLockManager;->getPowerModeState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v2, v1, :cond_1e

    iget-object v1, p0, Lcom/oplus/quickstep/applock/OplusLockManager;->mAppLockModel:Lcom/oplus/quickstep/applock/AppLockModel;

    invoke-virtual {v1}, Lcom/oplus/quickstep/applock/AppLockModel;->backupLockAppsAsync()V

    iput-boolean v2, p0, Lcom/oplus/quickstep/applock/OplusLockManager;->mIsSmartEnableOn:Z

    :cond_1e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initContentObserver end, mIsSmartEnableOn:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/oplus/quickstep/applock/OplusLockManager;->mIsSmartEnableOn:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_34} :catch_35

    goto :goto_3b

    :catch_35
    move-exception p0

    const-string v1, "initContentObserver error: "

    invoke-static {v1, p0, v0}, Lcom/android/common/config/i;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_3b
    return-void
.end method

.method private initPackageRemovedBroad()V
    .registers 4

    new-instance v0, Lcom/oplus/quickstep/applock/OplusLockManager$2;

    invoke-direct {v0, p0}, Lcom/oplus/quickstep/applock/OplusLockManager$2;-><init>(Lcom/oplus/quickstep/applock/OplusLockManager;)V

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/quickstep/applock/OplusLockManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private isExcludedFromRecents(Landroid/content/Intent;)Z
    .registers 3

    const/4 p0, 0x0

    if-nez p1, :cond_4

    return p0

    :cond_4
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result p1

    const/high16 v0, 0x800000

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_e

    const/4 p0, 0x1

    :cond_e
    return p0
.end method

.method private synthetic lambda$checkAndUnlockRemovedApps$0(Ljava/util/ArrayList;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/applock/OplusLockManager;->checkAndUnlockRemovedApps(Ljava/util/ArrayList;)V

    return-void
.end method

.method private removeLockApp(Ljava/lang/String;)V
    .registers 3

    iget-boolean v0, p0, Lcom/oplus/quickstep/applock/OplusLockManager;->mIsSmartEnableOn:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/oplus/quickstep/applock/OplusLockManager;->mAppLockModel:Lcom/oplus/quickstep/applock/AppLockModel;

    invoke-virtual {v0, p1}, Lcom/oplus/quickstep/applock/AppLockModel;->removeBackupLockedApp(Ljava/lang/String;)V

    goto :goto_f

    :cond_a
    iget-object v0, p0, Lcom/oplus/quickstep/applock/OplusLockManager;->mAppLockModel:Lcom/oplus/quickstep/applock/AppLockModel;

    invoke-virtual {v0, p1}, Lcom/oplus/quickstep/applock/AppLockModel;->removeLockApp(Ljava/lang/String;)V

    :goto_f
    iget-object p0, p0, Lcom/oplus/quickstep/applock/OplusLockManager;->mAppLockModel:Lcom/oplus/quickstep/applock/AppLockModel;

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/applock/AppLockModel;->addfixedLockApp(Ljava/lang/String;)V

    return-void
.end method

.method private updateFromXmlIfNeeded(Z)V
    .registers 9

    invoke-virtual {p0}, Lcom/oplus/quickstep/applock/OplusLockManager;->getConfigVersion()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/quickstep/applock/OplusLockManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1202c7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_22

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_20

    goto :goto_22

    :cond_20
    move v0, v3

    goto :goto_23

    :cond_22
    :goto_22
    move v0, v4

    :goto_23
    invoke-virtual {p0}, Lcom/oplus/quickstep/applock/OplusLockManager;->canGetDefaultLockByConfig()Z

    move-result v2

    if-eqz p1, :cond_2c

    if-nez v2, :cond_2c

    move v3, v4

    :cond_2c
    const-string v4, "updateFromXmlIfNeeded, isHeightVersionOfLocal: "

    const-string v5, "; isChangedOfGetDefaultLockType: "

    const-string v6, "; canGetDefaultLockByConfig: "

    invoke-static {v4, v0, v5, p1, v6}, Lcom/android/common/util/b0;->a(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v4, "OplusLockManager"

    invoke-static {p1, v2, v4}, Lcom/android/common/config/b;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    if-nez v3, :cond_46

    if-eqz v0, :cond_40

    goto :goto_46

    :cond_40
    if-eqz v2, :cond_45

    invoke-virtual {p0}, Lcom/oplus/quickstep/applock/OplusLockManager;->updateDefaultLockByGetFromConfig()V

    :cond_45
    return-void

    :cond_46
    :goto_46
    invoke-virtual {p0, v1}, Lcom/oplus/quickstep/applock/OplusLockManager;->updateConfigVerstion(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oplus/quickstep/applock/OplusLockManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    if-eqz v2, :cond_56

    invoke-direct {p0}, Lcom/oplus/quickstep/applock/OplusLockManager;->getDefaultLockAppsFromConfig()Ljava/util/List;

    move-result-object v0

    goto :goto_6d

    :cond_56
    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isExp:Z

    if-eqz v0, :cond_62

    const v0, 0x7f030033

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_69

    :cond_62
    const v0, 0x7f030032

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    :goto_69
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_6d
    const v1, 0x7f030022

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const v2, 0x7f0b0067

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/oplus/quickstep/applock/OplusLockManager;->setLockAppConfs(Ljava/util/List;Ljava/util/List;I)V

    return-void
.end method

.method private updateLockViews()V
    .registers 2

    invoke-static {}, Lcom/oplus/quickstep/events/EventBus;->getDefault()Lcom/oplus/quickstep/events/EventBus;

    move-result-object p0

    new-instance v0, Lcom/oplus/quickstep/events/ui/UpdateLockViewEvent;

    invoke-direct {v0}, Lcom/oplus/quickstep/events/ui/UpdateLockViewEvent;-><init>()V

    invoke-virtual {p0, v0}, Lcom/oplus/quickstep/events/EventBus;->post(Lcom/oplus/quickstep/events/EventBus$Event;)V

    return-void
.end method

.method private updateTypeOfGetDefaultLock()Z
    .registers 8

    invoke-direct {p0}, Lcom/oplus/quickstep/applock/OplusLockManager;->getDefaultLockAppsFromConfig()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_10

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    move v0, v2

    goto :goto_11

    :cond_10
    move v0, v1

    :goto_11
    iget-object v3, p0, Lcom/oplus/quickstep/applock/OplusLockManager;->mConfig:Landroid/content/SharedPreferences;

    const-string v4, "key_of_get_default_lock_app_type"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/4 v5, 0x2

    if-eqz v0, :cond_1e

    move v6, v5

    goto :goto_1f

    :cond_1e
    move v6, v2

    :goto_1f
    if-eq v3, v6, :cond_22

    move v1, v2

    :cond_22
    if-eqz v1, :cond_34

    iget-object p0, p0, Lcom/oplus/quickstep/applock/OplusLockManager;->mConfig:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    if-eqz v0, :cond_2d

    move v2, v5

    :cond_2d
    invoke-interface {p0, v4, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_34
    return v1
.end method


# virtual methods
.method public canGetDefaultLockByConfig()Z
    .registers 3

    iget-object p0, p0, Lcom/oplus/quickstep/applock/OplusLockManager;->mConfig:Landroid/content/SharedPreferences;

    const-string v0, "key_of_get_default_lock_app_type"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_d

    const/4 v1, 0x1

    :cond_d
    return v1
.end method

.method public canLockAppNow(Ljava/lang/String;ILandroid/content/Intent;ZZ)Z
    .registers 8

    invoke-virtual {p0, p1, p3}, Lcom/oplus/quickstep/applock/OplusLockManager;->isAppLockable(Ljava/lang/String;Landroid/content/Intent;)Z

    move-result p3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p3, :cond_17

    if-eqz p4, :cond_16

    iget-object p0, p0, Lcom/oplus/quickstep/applock/OplusLockManager;->mContext:Landroid/content/Context;

    const p1, 0x7f120389

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_16
    return v1

    :cond_17
    iget-boolean p3, p0, Lcom/oplus/quickstep/applock/OplusLockManager;->mIsSmartEnableOn:Z

    if-eqz p3, :cond_2a

    if-eqz p4, :cond_29

    iget-object p0, p0, Lcom/oplus/quickstep/applock/OplusLockManager;->mContext:Landroid/content/Context;

    const p1, 0x7f1203af

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_29
    return v1

    :cond_2a
    iget-object p3, p0, Lcom/oplus/quickstep/applock/OplusLockManager;->mAppLockModel:Lcom/oplus/quickstep/applock/AppLockModel;

    invoke-virtual {p3, p1, p2}, Lcom/oplus/quickstep/applock/AppLockModel;->isDefaultLockApp(Ljava/lang/String;I)Z

    move-result p1

    if-nez p1, :cond_7d

    iget-object p1, p0, Lcom/oplus/quickstep/applock/OplusLockManager;->mAppLockModel:Lcom/oplus/quickstep/applock/AppLockModel;

    invoke-virtual {p1}, Lcom/oplus/quickstep/applock/AppLockModel;->getLockedCount()I

    move-result p1

    iget p2, p0, Lcom/oplus/quickstep/applock/OplusLockManager;->mLockAppLimit:I

    if-lt p1, p2, :cond_7d

    if-eqz p4, :cond_7c

    if-eqz p5, :cond_4d

    iget-object p0, p0, Lcom/oplus/quickstep/applock/OplusLockManager;->mContext:Landroid/content/Context;

    const p1, 0x7f120398

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_7c

    :cond_4d
    sget-object p0, Lcom/android/launcher3/Launcher;->ACTIVITY_TRACKER:Lcom/android/launcher3/util/ActivityTracker;

    invoke-virtual {p0}, Lcom/android/launcher3/util/ActivityTracker;->getCreatedActivity()Lcom/android/launcher3/BaseActivity;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/BaseDraggingActivity;

    sget-object p1, Lcom/android/quickstep/RecentsActivity;->ACTIVITY_TRACKER:Lcom/android/launcher3/util/ActivityTracker;

    invoke-virtual {p1}, Lcom/android/launcher3/util/ActivityTracker;->getCreatedActivity()Lcom/android/launcher3/BaseActivity;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/BaseDraggingActivity;

    if-eqz p0, :cond_6d

    invoke-virtual {p0}, Landroid/app/Activity;->isResumed()Z

    move-result p2

    if-eqz p2, :cond_6d

    invoke-virtual {p0}, Lcom/android/launcher3/BaseDraggingActivity;->getOverviewPanel()Landroid/view/View;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/oplus/quickstep/locksetting/LockSettingPopupUtil;->show(Landroid/content/Context;Landroid/view/View;)V

    goto :goto_7c

    :cond_6d
    if-eqz p1, :cond_7c

    invoke-virtual {p1}, Landroid/app/Activity;->isResumed()Z

    move-result p0

    if-eqz p0, :cond_7c

    invoke-virtual {p1}, Lcom/android/launcher3/BaseDraggingActivity;->getOverviewPanel()Landroid/view/View;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/oplus/quickstep/locksetting/LockSettingPopupUtil;->show(Landroid/content/Context;Landroid/view/View;)V

    :cond_7c
    :goto_7c
    return v1

    :cond_7d
    return v0
.end method

.method public checkAndUnlockRemovedApps()V
    .registers 3

    sget-object v0, Lcom/android/quickstep/RecentsModel;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v1, p0, Lcom/oplus/quickstep/applock/OplusLockManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/RecentsModel;

    new-instance v1, Lcom/android/quickstep/fallback/a;

    invoke-direct {v1, p0}, Lcom/android/quickstep/fallback/a;-><init>(Lcom/oplus/quickstep/applock/OplusLockManager;)V

    invoke-virtual {v0, v1}, Lcom/android/quickstep/RecentsModel;->getTasks(Ljava/util/function/Consumer;)I

    return-void
.end method

.method public checkAndUnlockRemovedApps(Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/quickstep/util/GroupTask;",
            ">;)V"
        }
    .end annotation

    const-string v0, "checkAndUnlockRemovedApps:  getLockedCount:"

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/quickstep/applock/OplusLockManager;->mAppLockModel:Lcom/oplus/quickstep/applock/AppLockModel;

    invoke-virtual {v1}, Lcom/oplus/quickstep/applock/AppLockModel;->getLockedCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",mLockAppLimit:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/quickstep/applock/OplusLockManager;->mLockAppLimit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", tasks:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusLockManager"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/quickstep/applock/OplusLockManager;->mAppLockModel:Lcom/oplus/quickstep/applock/AppLockModel;

    invoke-virtual {v0}, Lcom/oplus/quickstep/applock/AppLockModel;->getLockedCount()I

    move-result v0

    iget v1, p0, Lcom/oplus/quickstep/applock/OplusLockManager;->mLockAppLimit:I

    if-gt v0, v1, :cond_43

    if-eqz p1, :cond_43

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3d

    goto :goto_43

    :cond_3d
    iget-object p0, p0, Lcom/oplus/quickstep/applock/OplusLockManager;->mAppLockModel:Lcom/oplus/quickstep/applock/AppLockModel;

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/applock/AppLockModel;->removeLockedAppsNotInTasks(Ljava/util/ArrayList;)V

    goto :goto_48

    :cond_43
    :goto_43
    iget-object p0, p0, Lcom/oplus/quickstep/applock/OplusLockManager;->mAppLockModel:Lcom/oplus/quickstep/applock/AppLockModel;

    invoke-virtual {p0}, Lcom/oplus/quickstep/applock/AppLockModel;->removeAllLockedAppsExceptDefults()V

    :goto_48
    return-void
.end method

.method public getConfigVersion()Ljava/lang/String;
    .registers 3

    iget-object p0, p0, Lcom/oplus/quickstep/applock/OplusLockManager;->mConfig:Landroid/content/SharedPreferences;

    const-string v0, "config_version"

    const-string v1, ""

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLockedApps()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/quickstep/applock/OplusLockManager;->mAppLockModel:Lcom/oplus/quickstep/applock/AppLockModel;

    invoke-virtual {p0}, Lcom/oplus/quickstep/applock/AppLockModel;->getLockedApps()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getLockedAppsListString()Ljava/lang/String;
    .registers 4

    new-instance v0, Lcom/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/google/gson/JsonArray;-><init>()V

    const/4 v1, 0x0

    :goto_6
    iget-object v2, p0, Lcom/oplus/quickstep/applock/OplusLockManager;->mAppLockModel:Lcom/oplus/quickstep/applock/AppLockModel;

    invoke-virtual {v2}, Lcom/oplus/quickstep/applock/AppLockModel;->getLockedApps()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_24

    iget-object v2, p0, Lcom/oplus/quickstep/applock/OplusLockManager;->mAppLockModel:Lcom/oplus/quickstep/applock/AppLockModel;

    invoke-virtual {v2}, Lcom/oplus/quickstep/applock/AppLockModel;->getLockedApps()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonArray;->add(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_24
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getOldPhoneInstallAppsListString()Ljava/lang/String;
    .registers 4

    new-instance v0, Lcom/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/google/gson/JsonArray;-><init>()V

    iget-object v1, p0, Lcom/oplus/quickstep/applock/OplusLockManager;->mAppLockModel:Lcom/oplus/quickstep/applock/AppLockModel;

    iget-object p0, p0, Lcom/oplus/quickstep/applock/OplusLockManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0}, Lcom/oplus/quickstep/applock/AppLockModel;->loadAllInstalledApp(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    const/4 v1, 0x0

    :goto_e
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_20

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonArray;->add(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_20
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isAppLockable(Ljava/lang/String;Landroid/content/Intent;)Z
    .registers 4

    iget-object v0, p0, Lcom/oplus/quickstep/applock/OplusLockManager;->mAppLockModel:Lcom/oplus/quickstep/applock/AppLockModel;

    invoke-virtual {v0, p1}, Lcom/oplus/quickstep/applock/AppLockModel;->forbidLockAppsContains(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1a

    invoke-static {}, Lcom/oplus/quickstep/memory/OplusSpecialListHelper;->getInstance()Lcom/oplus/quickstep/memory/OplusSpecialListHelper;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/oplus/quickstep/memory/OplusSpecialListHelper;->isRedundantTask(Landroid/content/Intent;)Z

    move-result p1

    if-nez p1, :cond_1a

    invoke-direct {p0, p2}, Lcom/oplus/quickstep/applock/OplusLockManager;->isExcludedFromRecents(Landroid/content/Intent;)Z

    move-result p0

    if-nez p0, :cond_1a

    const/4 p0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    :goto_1b
    return p0
.end method

.method public isApplocked(Lcom/android/quickstep/views/OplusTaskViewImpl;)Z
    .registers 2

    iget-object p0, p0, Lcom/oplus/quickstep/applock/OplusLockManager;->mAppLockModel:Lcom/oplus/quickstep/applock/AppLockModel;

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/applock/AppLockModel;->isApplocked(Lcom/android/quickstep/views/OplusTaskViewImpl;)Z

    move-result p0

    return p0
.end method

.method public isApplocked(Ljava/lang/String;)Z
    .registers 2

    iget-object p0, p0, Lcom/oplus/quickstep/applock/OplusLockManager;->mAppLockModel:Lcom/oplus/quickstep/applock/AppLockModel;

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/applock/AppLockModel;->isApplocked(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isApplocked(Ljava/lang/String;I)Z
    .registers 3

    iget-object p0, p0, Lcom/oplus/quickstep/applock/OplusLockManager;->mAppLockModel:Lcom/oplus/quickstep/applock/AppLockModel;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/quickstep/applock/AppLockModel;->isApplocked(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public lockApp(Ljava/lang/String;I)V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/oplus/quickstep/applock/OplusLockManager;->lockApp(Ljava/lang/String;ILandroid/content/Intent;Z)V

    return-void
.end method

.method public lockApp(Ljava/lang/String;ILandroid/content/Intent;)V
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/oplus/quickstep/applock/OplusLockManager;->lockApp(Ljava/lang/String;ILandroid/content/Intent;Z)V

    return-void
.end method

.method public lockApp(Ljava/lang/String;ILandroid/content/Intent;Z)V
    .registers 14

    const-string v0, "lockApp: mLockAppLimit:"

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oplus/quickstep/applock/OplusLockManager;->mLockAppLimit:I

    const-string v2, "OplusLockManager"

    invoke-static {v0, v1, v2}, Lcom/android/common/config/h;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    const/4 v7, 0x1

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    move v8, p4

    invoke-virtual/range {v3 .. v8}, Lcom/oplus/quickstep/applock/OplusLockManager;->canLockAppNow(Ljava/lang/String;ILandroid/content/Intent;ZZ)Z

    move-result p3

    if-nez p3, :cond_1a

    return-void

    :cond_1a
    iget-object p3, p0, Lcom/oplus/quickstep/applock/OplusLockManager;->mAppLockModel:Lcom/oplus/quickstep/applock/AppLockModel;

    invoke-virtual {p3, p1, p2}, Lcom/oplus/quickstep/applock/AppLockModel;->toFormatLockedAppStr(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/oplus/quickstep/applock/OplusLockManager;->mAppLockModel:Lcom/oplus/quickstep/applock/AppLockModel;

    invoke-virtual {p2, p1}, Lcom/oplus/quickstep/applock/AppLockModel;->lockApp(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/quickstep/applock/OplusLockManager;->updateLockViews()V

    return-void
.end method

.method public resetInstalledDefaultApps(Ljava/lang/String;)V
    .registers 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_5
    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_35

    new-instance v1, Lcom/google/gson/JsonParser;

    invoke-direct {v1}, Lcom/google/gson/JsonParser;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object p1

    if-eqz p1, :cond_35

    const/4 v1, 0x0

    :goto_1d
    invoke-virtual {p1}, Lcom/google/gson/JsonArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_35

    invoke-virtual {p1, v1}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2e
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_5 .. :try_end_2e} :catch_31

    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    :catch_31
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->printStackTrace()V

    :cond_35
    iput-object v0, p0, Lcom/oplus/quickstep/applock/OplusLockManager;->mOldPhoneInstalledDefaultApps:Ljava/util/List;

    return-void
.end method

.method public resetLockModel(Ljava/lang/String;)V
    .registers 12

    const-string v0, "OplusLockManager"

    const-string v1, "#"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/oplus/quickstep/applock/OplusLockManager;->mAppLockModel:Lcom/oplus/quickstep/applock/AppLockModel;

    iget-object v4, p0, Lcom/oplus/quickstep/applock/OplusLockManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/oplus/quickstep/applock/AppLockModel;->loadAllInstalledApp(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0}, Lcom/oplus/quickstep/applock/OplusLockManager;->getLockedApps()Ljava/util/List;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/oplus/quickstep/applock/OplusLockManager;->getDefaultAppCache(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    :try_start_1a
    const-string v6, ""

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_74

    new-instance v6, Lcom/google/gson/JsonParser;

    invoke-direct {v6}, Lcom/google/gson/JsonParser;-><init>()V

    invoke-virtual {v6, p1}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object p1

    if-eqz p1, :cond_74

    move v6, v5

    :goto_32
    invoke-virtual {p1}, Lcom/google/gson/JsonArray;->size()I

    move-result v7

    if-ge v6, v7, :cond_74

    invoke-virtual {p1, v6}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v7

    if-eqz v7, :cond_5c

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v5, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_55

    goto :goto_5c

    :cond_55
    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5c
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_1a .. :try_end_5c} :catch_5f

    :cond_5c
    :goto_5c
    add-int/lit8 v6, v6, 0x1

    goto :goto_32

    :catch_5f
    move-exception p1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "resetLockModel error, e: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_74
    invoke-virtual {p0}, Lcom/oplus/quickstep/applock/OplusLockManager;->getLockedApps()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Lcom/oplus/quickstep/applock/OplusLockManager;->getLockedApps()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_d4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8c
    :goto_8c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v4, p0, Lcom/oplus/quickstep/applock/OplusLockManager;->mOldPhoneInstalledDefaultApps:Ljava/util/List;

    if-nez v4, :cond_a4

    invoke-virtual {p0}, Lcom/oplus/quickstep/applock/OplusLockManager;->getLockedApps()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8c

    :cond_a4
    invoke-virtual {p0}, Lcom/oplus/quickstep/applock/OplusLockManager;->getLockedApps()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8c

    iget-object v4, p0, Lcom/oplus/quickstep/applock/OplusLockManager;->mOldPhoneInstalledDefaultApps:Ljava/util/List;

    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_cc

    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8c

    :cond_cc
    invoke-virtual {p0}, Lcom/oplus/quickstep/applock/OplusLockManager;->getLockedApps()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8c

    :cond_d4
    iget-object p1, p0, Lcom/oplus/quickstep/applock/OplusLockManager;->mAppLockModel:Lcom/oplus/quickstep/applock/AppLockModel;

    invoke-virtual {p1}, Lcom/oplus/quickstep/applock/AppLockModel;->saveLockedApps()V

    invoke-virtual {p0}, Lcom/oplus/quickstep/applock/OplusLockManager;->getLockedApps()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setLockAppConfs(Ljava/util/List;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/oplus/quickstep/applock/OplusLockManager;->mAppLockModel:Lcom/oplus/quickstep/applock/AppLockModel;

    iget-boolean v1, p0, Lcom/oplus/quickstep/applock/OplusLockManager;->mIsSmartEnableOn:Z

    invoke-virtual {v0, p1, v1}, Lcom/oplus/quickstep/applock/AppLockModel;->updateLockedAppsByForbidLock(Ljava/util/List;Z)V

    iput p2, p0, Lcom/oplus/quickstep/applock/OplusLockManager;->mLockAppLimit:I

    iget-object p0, p0, Lcom/oplus/quickstep/applock/OplusLockManager;->mConfig:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "lock_app_limit"

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setLockAppConfs(Ljava/util/List;Ljava/util/List;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "setLockAppConfs: lockLimit:"

    const-string v1, ",mLockAppLimit:"

    invoke-static {v0, p3, v1}, Landroidx/appcompat/widget/d;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oplus/quickstep/applock/OplusLockManager;->mLockAppLimit:I

    const-string v2, "OplusLockManager"

    invoke-static {v0, v1, v2}, Lcom/android/common/config/h;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-boolean v0, p0, Lcom/oplus/quickstep/applock/OplusLockManager;->mIsSmartEnableOn:Z

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/oplus/quickstep/applock/OplusLockManager;->mAppLockModel:Lcom/oplus/quickstep/applock/AppLockModel;

    invoke-virtual {v0, p1, p2}, Lcom/oplus/quickstep/applock/AppLockModel;->updateBackupLockedApps(Ljava/util/List;Ljava/util/List;)V

    goto :goto_1e

    :cond_19
    iget-object v0, p0, Lcom/oplus/quickstep/applock/OplusLockManager;->mAppLockModel:Lcom/oplus/quickstep/applock/AppLockModel;

    invoke-virtual {v0, p1, p2}, Lcom/oplus/quickstep/applock/AppLockModel;->updateLockedApps(Ljava/util/List;Ljava/util/List;)V

    :goto_1e
    iput p3, p0, Lcom/oplus/quickstep/applock/OplusLockManager;->mLockAppLimit:I

    iget-object p0, p0, Lcom/oplus/quickstep/applock/OplusLockManager;->mConfig:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "lock_app_limit"

    invoke-interface {p0, p1, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public switchRUSToConfig()V
    .registers 3

    invoke-direct {p0}, Lcom/oplus/quickstep/applock/OplusLockManager;->updateTypeOfGetDefaultLock()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/oplus/quickstep/applock/OplusLockManager;->canGetDefaultLockByConfig()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    const-string v1, "OplusLockManager"

    if-nez v0, :cond_19

    const-string p0, "switchRUSToConfig fail"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_19
    const-string v0, "switchRUSToConfig"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/applock/OplusLockManager;->updateDefaultLockByGetFromConfig()V

    return-void
.end method

.method public toFormatedLockedAppString(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3

    iget-object p0, p0, Lcom/oplus/quickstep/applock/OplusLockManager;->mAppLockModel:Lcom/oplus/quickstep/applock/AppLockModel;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/quickstep/applock/AppLockModel;->toFormatLockedAppStr(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public unlockApp(Lcom/android/systemui/shared/recents/model/Task;)V
    .registers 4

    iget-object v0, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget p1, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    iget-object v1, p0, Lcom/oplus/quickstep/applock/OplusLockManager;->mAppLockModel:Lcom/oplus/quickstep/applock/AppLockModel;

    invoke-virtual {v1, v0, p1}, Lcom/oplus/quickstep/applock/AppLockModel;->isDefaultLockApp(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_13

    return-void

    :cond_13
    invoke-virtual {p0, v0, p1}, Lcom/oplus/quickstep/applock/OplusLockManager;->unlockApp(Ljava/lang/String;I)V

    return-void
.end method

.method public unlockApp(Ljava/lang/String;I)V
    .registers 4

    iget-object v0, p0, Lcom/oplus/quickstep/applock/OplusLockManager;->mAppLockModel:Lcom/oplus/quickstep/applock/AppLockModel;

    invoke-virtual {v0, p1, p2}, Lcom/oplus/quickstep/applock/AppLockModel;->isApplocked(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/oplus/quickstep/applock/OplusLockManager;->mAppLockModel:Lcom/oplus/quickstep/applock/AppLockModel;

    invoke-virtual {v0, p1, p2}, Lcom/oplus/quickstep/applock/AppLockModel;->toFormatLockedAppStr(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/applock/OplusLockManager;->removeLockApp(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/quickstep/applock/OplusLockManager;->updateLockViews()V

    return-void
.end method

.method public unlockAppExceptDefault(Ljava/lang/String;I)V
    .registers 4

    iget-object v0, p0, Lcom/oplus/quickstep/applock/OplusLockManager;->mAppLockModel:Lcom/oplus/quickstep/applock/AppLockModel;

    invoke-virtual {v0, p1, p2}, Lcom/oplus/quickstep/applock/AppLockModel;->isDefaultLockApp(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p0, p1, p2}, Lcom/oplus/quickstep/applock/OplusLockManager;->unlockApp(Ljava/lang/String;I)V

    :cond_b
    return-void
.end method

.method public unlockPackageRemovedApp(Ljava/lang/String;I)V
    .registers 5

    iget-object v0, p0, Lcom/oplus/quickstep/applock/OplusLockManager;->mAppLockModel:Lcom/oplus/quickstep/applock/AppLockModel;

    invoke-virtual {v0, p1, p2}, Lcom/oplus/quickstep/applock/AppLockModel;->isApplocked(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/oplus/quickstep/applock/OplusLockManager;->mAppLockModel:Lcom/oplus/quickstep/applock/AppLockModel;

    invoke-virtual {v0, p1, p2}, Lcom/oplus/quickstep/applock/AppLockModel;->isDefaultLockApp(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_12

    return-void

    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeLockAppAsync packageName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusLockManager"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/quickstep/applock/OplusLockManager;->mAppLockModel:Lcom/oplus/quickstep/applock/AppLockModel;

    invoke-virtual {v0, p1, p2}, Lcom/oplus/quickstep/applock/AppLockModel;->toFormatLockedAppStr(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    iget-boolean p2, p0, Lcom/oplus/quickstep/applock/OplusLockManager;->mIsSmartEnableOn:Z

    if-eqz p2, :cond_40

    iget-object p0, p0, Lcom/oplus/quickstep/applock/OplusLockManager;->mAppLockModel:Lcom/oplus/quickstep/applock/AppLockModel;

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/applock/AppLockModel;->removeBackupLockedApp(Ljava/lang/String;)V

    goto :goto_45

    :cond_40
    iget-object p0, p0, Lcom/oplus/quickstep/applock/OplusLockManager;->mAppLockModel:Lcom/oplus/quickstep/applock/AppLockModel;

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/applock/AppLockModel;->removeLockApp(Ljava/lang/String;)V

    :goto_45
    return-void
.end method

.method public updateConfigVerstion(Ljava/lang/String;)V
    .registers 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object p0, p0, Lcom/oplus/quickstep/applock/OplusLockManager;->mConfig:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "config_version"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public updateDefaultLockByGetFromConfig()V
    .registers 3

    iget-object v0, p0, Lcom/oplus/quickstep/applock/OplusLockManager;->mAppLockModel:Lcom/oplus/quickstep/applock/AppLockModel;

    invoke-direct {p0}, Lcom/oplus/quickstep/applock/OplusLockManager;->getDefaultLockAppsFromConfig()Ljava/util/List;

    move-result-object v1

    iget-boolean p0, p0, Lcom/oplus/quickstep/applock/OplusLockManager;->mIsSmartEnableOn:Z

    invoke-virtual {v0, v1, p0}, Lcom/oplus/quickstep/applock/AppLockModel;->updateLockedAppsByDefaultLock(Ljava/util/List;Z)V

    return-void
.end method
