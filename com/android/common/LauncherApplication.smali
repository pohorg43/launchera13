.class public Lcom/android/common/LauncherApplication;
.super Landroid/app/Application;
.source ""


# static fields
.field private static final PREF_ICON_DARK_FLAG:Ljava/lang/String; = "icon_dark_flag"

.field private static final TAG:Ljava/lang/String; = "LauncherApplication"

.field private static sAppContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/common/LauncherApplication;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/common/LauncherApplication;->lambda$onCreate$0()V

    return-void
.end method

.method public static getAppConfig()Landroid/content/res/Configuration;
    .registers 1

    sget-object v0, Lcom/android/common/LauncherApplication;->sAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    return-object v0
.end method

.method public static getAppConfigInfo(Landroid/content/res/Configuration;)Ljava/lang/String;
    .registers 3

    iget v0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_15

    const-string v0, "land winConfig="

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_15
    const/4 v1, 0x1

    if-ne v0, v1, :cond_29

    const-string/jumbo v0, "port winConfig="

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " winConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAppContext()Landroid/content/Context;
    .registers 1

    sget-object v0, Lcom/android/common/LauncherApplication;->sAppContext:Landroid/content/Context;

    return-object v0
.end method

.method private synthetic lambda$onCreate$0()V
    .registers 2

    invoke-static {p0}, Lcom/android/launcher/powersave/SuperPowerModeManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/powersave/SuperPowerModeManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher/powersave/SuperPowerModeManager;->checkedException(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public attachBaseContext(Landroid/content/Context;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->attachBaseContext(Landroid/content/Context;)V

    sget-object v0, Lcom/android/common/util/TemporaryCacheHelper;->INSTANCE:Lcom/android/common/util/TemporaryCacheHelper;

    invoke-virtual {v0}, Lcom/android/common/util/TemporaryCacheHelper;->startTemporaryCache()V

    sput-object p0, Lcom/android/common/LauncherApplication;->sAppContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/oplus/ext/core/ExtLoader;->init(Landroid/content/Context;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 8

    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string/jumbo v0, "onConfigurationChanged: newConfig="

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/common/LauncherApplication;->getAppConfigInfo(Landroid/content/res/Configuration;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LauncherApplication"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher/theme/LauncherIconConfig;->isIconConfigLoaded()Z

    move-result v0

    if-nez v0, :cond_27

    const-string/jumbo p0, "onConfigurationChanged: Icon config don`t loaded"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_27
    invoke-virtual {p1}, Landroid/content/res/Configuration;->isNightModeActive()Z

    move-result p1

    invoke-virtual {p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher/theme/LauncherIconConfig;->getInstance(Landroid/content/res/Resources;)Lcom/android/launcher/theme/LauncherIconConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/theme/LauncherIconConfig;->getIconConfig()Lcom/oplus/uxicon/helper/IconConfig;

    move-result-object v0

    if-nez v0, :cond_3a

    return-void

    :cond_3a
    const-string v2, "icon_dark_flag"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/android/common/util/LauncherSharedPrefs;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x1

    if-eqz p1, :cond_4c

    invoke-virtual {v0}, Lcom/oplus/uxicon/helper/IconConfig;->isDarkModeIcon()Z

    move-result p1

    if-eqz p1, :cond_4c

    move p1, v4

    goto :goto_4d

    :cond_4c
    move p1, v3

    :goto_4d
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const-string v5, " prevDarkIconFlag="

    aput-object v5, v0, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v4

    const/4 v3, 0x2

    const-string v4, "; currentDarkIconFlag="

    aput-object v4, v0, v3

    const/4 v3, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eq p1, v2, :cond_9f

    const-class p1, Landroid/os/PowerManager;

    invoke-virtual {p0, p1}, Landroid/app/Application;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    invoke-virtual {p0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onConfigurationChanged: isInteractive="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/android/launcher3/LauncherAppState;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->getNoCreate()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/LauncherAppState;

    if-eqz p1, :cond_9f

    if-nez p0, :cond_9f

    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherModel;->forceReload()V

    :cond_9f
    return-void
.end method

.method public onCreate()V
    .registers 4

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    sget-object v0, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Landroidx/constraintlayout/helper/widget/a;

    invoke-direct {v1, p0}, Landroidx/constraintlayout/helper/widget/a;-><init>(Lcom/android/common/LauncherApplication;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    invoke-static {p0}, Lcom/oplus/launcher/overlay/RROverlayManager;->init(Landroid/content/Context;)V

    sget-object v0, Lcom/oplus/launcher/overlay/RROverlayManager;->INSTANCE:Lcom/oplus/launcher/overlay/RROverlayManager;

    invoke-virtual {v0}, Lcom/oplus/launcher/overlay/RROverlayManager;->initOverlayState()V

    invoke-static {}, Lcom/android/common/util/LaterInitHelper;->initOnWorker()V

    sget-object v0, Lcom/android/common/util/LauncherBooster;->INSTANCE:Lcom/android/common/util/LauncherBooster;

    invoke-virtual {v0}, Lcom/android/common/util/LauncherBooster;->getCpu()Lcom/android/common/util/LauncherBooster$CpuBoost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/util/LauncherBooster$CpuBoost;->setUxImFlag()V

    invoke-virtual {v0}, Lcom/android/common/util/LauncherBooster;->getCpu()Lcom/android/common/util/LauncherBooster$CpuBoost;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/android/common/util/LauncherBooster$CpuBoost;->setUx(ZI)V

    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isExp:Z

    if-eqz v0, :cond_51

    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isRLMDevice:Z

    if-eqz v0, :cond_41

    invoke-static {p0}, Lcom/android/launcher3/allapps/branch/BranchManagerInjector;->initBranchStatus(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/launcher3/allapps/branch/BranchManager;->featureSupport()Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-static {p0}, Lcom/android/launcher3/allapps/branch/BranchManagerInjector;->initBranchManager(Landroid/content/Context;)V

    :cond_41
    invoke-static {}, Lcom/android/launcher3/allapps/branch/games/RecommendGamesManager;->featureSupport()Z

    move-result v0

    if-eqz v0, :cond_4c

    sget-object v0, Lcom/android/launcher3/allapps/branch/games/RecommendGamesManagerInjector;->INSTANCE:Lcom/android/launcher3/allapps/branch/games/RecommendGamesManagerInjector;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/allapps/branch/games/RecommendGamesManagerInjector;->init(Landroid/content/Context;)V

    :cond_4c
    sget-object v0, Lcom/android/launcher/folder/recommend/RFolderRecommendInject;->INSTANCE:Lcom/android/launcher/folder/recommend/RFolderRecommendInject;

    invoke-virtual {v0, p0}, Lcom/android/launcher/folder/recommend/RFolderRecommendInject;->init(Landroid/content/Context;)V

    :cond_51
    invoke-static {p0}, Lcom/android/launcher/effect/EffectSetting;->initLauncherEffect(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/android/common/LauncherAssetManager;->getInstance(Landroid/content/Context;)Lcom/android/common/LauncherAssetManager;

    invoke-static {}, Lcom/coui/appcompat/darkmode/COUIDarkModeHelper;->c()Lcom/coui/appcompat/darkmode/COUIDarkModeHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/coui/appcompat/darkmode/COUIDarkModeHelper;->a(Landroid/app/Application;)V

    invoke-static {p0}, Lcom/oplus/compat/utils/util/AdapterHelper;->init(Landroid/content/Context;)V

    sget-object v0, Lcom/oplus/card/di/DI;->INSTANCE:Lcom/oplus/card/di/DI;

    invoke-virtual {v0}, Lcom/oplus/card/di/DI;->load()V

    invoke-static {}, Lcom/android/common/config/FeatureOption;->isSupportCard()Z

    move-result v0

    if-eqz v0, :cond_82

    invoke-static {}, Lcom/android/launcher3/card/CardPermissionManager;->getInstance()Lcom/android/launcher3/card/CardPermissionManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/card/CardPermissionManager;->initPermissionState(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/launcher3/card/CardPermissionManager;->getInstance()Lcom/android/launcher3/card/CardPermissionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/card/CardPermissionManager;->isPermissionAllowed()Z

    move-result v0

    if-eqz v0, :cond_82

    sget-object v0, Lcom/oplus/card/server/CardServiceProxyManager;->INSTANCE:Lcom/oplus/card/server/CardServiceProxyManager;

    invoke-virtual {v0, p0}, Lcom/oplus/card/server/CardServiceProxyManager;->init(Landroid/content/Context;)V

    :cond_82
    invoke-static {}, Lcom/android/launcher3/card/seed/SeedEntranceHelper;->isSupportSeedContainerCard()Z

    move-result v0

    if-eqz v0, :cond_8d

    sget-object v0, Lcom/android/launcher3/card/seed/SeedCardClient;->INSTANCE:Lcom/android/launcher3/card/seed/SeedCardClient;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/card/seed/SeedCardClient;->setup(Landroid/app/Application;)V

    :cond_8d
    sget-boolean v0, Lcom/android/common/config/FeatureOption;->sIsSupportDynamicDeepShortcut:Z

    if-eqz v0, :cond_96

    sget-object v0, Lcom/android/launcher3/shortcuts/NoBadgeShortcutHelper;->INSTANCE:Lcom/android/launcher3/shortcuts/NoBadgeShortcutHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/shortcuts/NoBadgeShortcutHelper;->initHeytapMarketShortcut()V

    :cond_96
    sget-object v0, Lcom/android/launcher3/dot/SmallAppUtils;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/dot/SmallAppUtils;

    invoke-virtual {p0}, Lcom/android/launcher3/dot/SmallAppUtils;->registerObserverOnUIThread()V

    return-void
.end method
