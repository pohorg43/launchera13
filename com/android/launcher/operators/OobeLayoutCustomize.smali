.class public Lcom/android/launcher/operators/OobeLayoutCustomize;
.super Lcom/android/launcher/operators/Customizer;
.source ""


# static fields
.field public static final FEATURE_LAYOUT_RESET_BY_OOBE:Ljava/lang/String; = "com.android.launcher.layout.reset_by_oobe"

.field private static final HAS_INIT_LAYOUT:Ljava/lang/String; = "hasInitVodafoneLayout"

.field public static final INSTANCE:Lcom/android/launcher/operators/Customizer;

.field public static final SIM_OPERATOR_FEATURE:Ljava/lang/String; = "oplus_operator_launcher_sim_operator_featrue"

.field public static final SIM_OPERATOR_MYVDF_PACKAGE_FEATURE:Ljava/lang/String; = "oplus_operator_launcher_myvodafone_packagename_featrue"

.field private static final SIM_SWITCH_WHILE_SETUPWIEZARD:Ljava/lang/String; = "sim_switch_while_setupwizard"

.field private static final TAG:Ljava/lang/String; = "VodafoneCotaCustomize"

.field private static final VDF_COTA_RESET_KEY:Ljava/lang/String; = "vodafone_cota_reset"

.field public static final VODAFONE_COTA_OPERATOR:Ljava/lang/String; = "VODAFONE-COTA"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCotaPackageApp:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMyVdfComponent:Lcom/android/launcher3/util/ComponentKey;

.field private mPoint:[I

.field private mSimSwitchSetupWizard:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher/operators/OobeLayoutCustomize;

    invoke-direct {v0}, Lcom/android/launcher/operators/OobeLayoutCustomize;-><init>()V

    sput-object v0, Lcom/android/launcher/operators/OobeLayoutCustomize;->INSTANCE:Lcom/android/launcher/operators/Customizer;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/android/launcher/operators/Customizer;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher/operators/OobeLayoutCustomize;->mMyVdfComponent:Lcom/android/launcher3/util/ComponentKey;

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_1a

    iput-object v0, p0, Lcom/android/launcher/operators/OobeLayoutCustomize;->mPoint:[I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher/operators/OobeLayoutCustomize;->mSimSwitchSetupWizard:I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/operators/OobeLayoutCustomize;->mCotaPackageApp:Ljava/util/Set;

    return-void

    nop

    :array_1a
    .array-data 4
        0x0
        0x2
        0x4
    .end array-data
.end method

.method public static synthetic a(Lcom/android/launcher/operators/OobeLayoutCustomize;Lcom/android/launcher/OplusLauncherAppsCompat;Lcom/android/launcher3/allapps/AllAppsStore;Lcom/android/launcher3/LauncherModel;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher/operators/OobeLayoutCustomize;->lambda$onActivityCreated$0(Lcom/android/launcher/OplusLauncherAppsCompat;Lcom/android/launcher3/allapps/AllAppsStore;Lcom/android/launcher3/LauncherModel;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/launcher/operators/OobeLayoutCustomize;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/operators/OobeLayoutCustomize;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic b(Landroid/content/Context;Lcom/android/launcher3/LauncherModel;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/operators/OobeLayoutCustomize;->lambda$resetDatabaseAndReload$1(Landroid/content/Context;Lcom/android/launcher3/LauncherModel;)V

    return-void
.end method

.method private getMyVodafoneApp(Landroid/content/Context;)Lcom/android/launcher3/util/ComponentKey;
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v1, "oplus_operator_launcher_myvodafone_packagename_featrue"

    const-string v2, ""

    invoke-static {p1, v1, v2}, Lcom/oplus/coreapp/appfeature/AppFeatureProviderUtils;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_e} :catch_f

    goto :goto_14

    :catch_f
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    move-object p1, v0

    :goto_14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMyVodafoneApp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VodafoneCotaCustomize"

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3f

    new-instance v0, Lcom/android/launcher3/util/ComponentKey;

    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    iput-object v0, p0, Lcom/android/launcher/operators/OobeLayoutCustomize;->mMyVdfComponent:Lcom/android/launcher3/util/ComponentKey;

    :cond_3f
    return-object v0
.end method

.method private synthetic lambda$onActivityCreated$0(Lcom/android/launcher/OplusLauncherAppsCompat;Lcom/android/launcher3/allapps/AllAppsStore;Lcom/android/launcher3/LauncherModel;)V
    .registers 12

    const-string v0, "VodafoneCotaCustomize"

    const-string/jumbo v1, "on all apps update"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher/operators/OobeLayoutCustomize;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "vodafone_cota_reset"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1b

    const-string/jumbo p0, "on all apps update, reset return"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1b
    iget-object v1, p0, Lcom/android/launcher/operators/OobeLayoutCustomize;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/android/launcher/operators/OobeLayoutCustomize;->getMyVodafoneApp(Landroid/content/Context;)Lcom/android/launcher3/util/ComponentKey;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher/operators/OobeLayoutCustomize;->mMyVdfComponent:Lcom/android/launcher3/util/ComponentKey;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/android/launcher/operators/OobeLayoutCustomize;->mCotaPackageApp:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2e
    :goto_2e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_79

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lcom/android/launcher/OplusLauncherAppsCompat;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2e

    new-instance v5, Lcom/android/launcher3/util/ComponentKey;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {v6}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    invoke-virtual {p2, v5}, Lcom/android/launcher3/allapps/AllAppsStore;->getApp(Lcom/android/launcher3/util/ComponentKey;)Lcom/android/launcher3/model/data/AppInfo;

    move-result-object v5

    if-eqz v5, :cond_2e

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "add "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2e

    :cond_79
    new-instance p1, Lcom/android/launcher/operators/OobeLayoutCustomize$2;

    invoke-direct {p1, p0, v1}, Lcom/android/launcher/operators/OobeLayoutCustomize$2;-><init>(Lcom/android/launcher/operators/OobeLayoutCustomize;Ljava/util/ArrayList;)V

    invoke-virtual {p3, p1}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$ModelUpdateTask;)V

    return-void
.end method

.method private static synthetic lambda$resetDatabaseAndReload$1(Landroid/content/Context;Lcom/android/launcher3/LauncherModel;)V
    .registers 4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "create_empty_db"

    invoke-static {v0, v1}, Lcom/android/launcher3/LauncherSettings$Settings;->call(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/os/Bundle;

    invoke-virtual {p1}, Lcom/android/launcher3/LauncherModel;->forceReload()V

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/common/util/LauncherSharedPrefs;->setFirstLoadDrawerLauncherDataFlag(Landroid/content/Context;Z)V

    return-void
.end method

.method private resetDatabaseAndReload(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/android/launcher/operators/OobeLayoutCustomize;->setHasInitVodafoneLayout(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object p0

    new-instance v0, Lcom/android/launcher/operators/c;

    const/4 v1, 0x2

    invoke-direct {v0, p1, p0, v1}, Lcom/android/launcher/operators/c;-><init>(Landroid/content/Context;Lcom/android/launcher3/LauncherModel;I)V

    const-wide/16 p0, 0x0

    invoke-static {v0, p0, p1}, Lcom/android/launcher3/LauncherModel;->runOnWorkerThreadDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private setHasInitVodafoneLayout(Landroid/content/Context;)V
    .registers 3

    const-string p0, "VodafoneCotaCustomize"

    const-string/jumbo v0, "setHasInitVodafoneLayout"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/common/util/LauncherSharedPrefs;->getLauncherPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "hasInitVodafoneLayout"

    const/4 v0, 0x1

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public getPreferredPosition(Lcom/android/launcher3/model/data/ItemInfo;)[I
    .registers 5

    iget-object v0, p0, Lcom/android/launcher/operators/OobeLayoutCustomize;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher/layout/LayoutPrefsUtils;->getLauncherLayoutVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    return-object v1

    :cond_e
    iget v0, p0, Lcom/android/launcher/operators/OobeLayoutCustomize;->mSimSwitchSetupWizard:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_14

    return-object v1

    :cond_14
    iget-object v0, p0, Lcom/android/launcher/operators/OobeLayoutCustomize;->mMyVdfComponent:Lcom/android/launcher3/util/ComponentKey;

    if-eqz v0, :cond_29

    if-eqz p1, :cond_29

    iget-object v0, v0, Lcom/android/launcher3/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_29

    iget-object p0, p0, Lcom/android/launcher/operators/OobeLayoutCustomize;->mPoint:[I

    return-object p0

    :cond_29
    return-object v1
.end method

.method public hasInitVodafoneLayout(Landroid/content/Context;)Z
    .registers 3

    invoke-static {p1}, Lcom/android/common/util/LauncherSharedPrefs;->getLauncherPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string p1, "hasInitVodafoneLayout"

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isInsertCorrectSimCard(Landroid/content/Context;)Z
    .registers 4

    sget-object p1, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {p1}, Lcom/android/common/util/AppFeatureUtils;->getSimCarrierName()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isInsertCorrectSimCard==currentSimOperator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VodafoneCotaCustomize"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_28

    iget p0, p0, Lcom/android/launcher/operators/OobeLayoutCustomize;->mSimSwitchSetupWizard:I

    const/4 p1, 0x1

    if-ne p0, p1, :cond_28

    return p1

    :cond_28
    const/4 p0, 0x0

    return p0
.end method

.method public onActivityCreated(Landroid/app/Activity;)V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher/operators/OobeLayoutCustomize;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "vodafone_cota_reset"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_d

    return-void

    :cond_d
    instance-of v0, p1, Lcom/android/launcher/Launcher;

    if-nez v0, :cond_12

    return-void

    :cond_12
    invoke-virtual {p0}, Lcom/android/launcher/operators/OobeLayoutCustomize;->readCotaPackageApp()V

    iget-object v0, p0, Lcom/android/launcher/operators/OobeLayoutCustomize;->mCotaPackageApp:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e

    return-void

    :cond_1e
    const-string v0, "VodafoneCotaCustomize"

    const-string/jumbo v1, "vodafone cota customize"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    check-cast p1, Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getAppsStore()Lcom/android/launcher3/allapps/OplusAllAppsStore;

    move-result-object p1

    iget-object v1, p0, Lcom/android/launcher/operators/OobeLayoutCustomize;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/launcher/OplusLauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher/OplusLauncherAppsCompat;

    move-result-object v1

    new-instance v2, Lcom/android/launcher/operators/f;

    invoke-direct {v2, p0, v1, p1, v0}, Lcom/android/launcher/operators/f;-><init>(Lcom/android/launcher/operators/OobeLayoutCustomize;Lcom/android/launcher/OplusLauncherAppsCompat;Lcom/android/launcher3/allapps/AllAppsStore;Lcom/android/launcher3/LauncherModel;)V

    invoke-virtual {p1, v2}, Lcom/android/launcher3/allapps/AllAppsStore;->addUpdateListener(Lcom/android/launcher3/allapps/AllAppsStore$OnUpdateListener;)V

    return-void
.end method

.method public onAddApp(Lcom/android/launcher/Launcher;Ljava/util/List;)V
    .registers 8
    .param p2  # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher/Launcher;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "onAddApp myVdf "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher/operators/OobeLayoutCustomize;->mMyVdfComponent:Lcom/android/launcher3/util/ComponentKey;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", apps "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VodafoneCotaCustomize"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher/operators/OobeLayoutCustomize;->mMyVdfComponent:Lcom/android/launcher3/util/ComponentKey;

    if-eqz v0, :cond_26

    iget-object v0, v0, Lcom/android/launcher3/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    :cond_26
    iget-object v0, p0, Lcom/android/launcher/operators/OobeLayoutCustomize;->mCotaPackageApp:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_37

    iget-object v0, p0, Lcom/android/launcher/operators/OobeLayoutCustomize;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    const-string/jumbo v2, "vodafone_cota_reset"

    invoke-static {v0, v2, v1}, Lcom/android/common/util/LauncherSharedPrefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_37
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_40
    :goto_40
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/AppInfo;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v3

    iget-object v3, v3, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v4, p0, Lcom/android/launcher/operators/OobeLayoutCustomize;->mContext:Landroid/content/Context;

    invoke-static {v3, v2, v4}, Lcom/android/launcher/DefaultWorkspaceHelper;->placeGooglePaiAppInGoogleFolderIfNeeded(Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/data/ItemInfo;Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_40

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_40

    :cond_5e
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_67

    invoke-interface {p2, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    :cond_67
    return-void
.end method

.method public onApplicationCreated(Landroid/content/Context;)V
    .registers 5

    iput-object p1, p0, Lcom/android/launcher/operators/OobeLayoutCustomize;->mContext:Landroid/content/Context;

    :try_start_2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sim_switch_while_setupwizard"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher/operators/OobeLayoutCustomize;->mSimSwitchSetupWizard:I

    const-string v0, "VodafoneCotaCustomize"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onApplicationCreated==mSimSwitchSetupWizard="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/launcher/operators/OobeLayoutCustomize;->mSimSwitchSetupWizard:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_29} :catch_2a

    goto :goto_2e

    :catch_2a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2e
    invoke-virtual {p0, p1}, Lcom/android/launcher/operators/OobeLayoutCustomize;->hasInitVodafoneLayout(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_35

    return-void

    :cond_35
    sget-object p1, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    new-instance v0, Lcom/android/launcher/operators/OobeLayoutCustomize$1;

    invoke-direct {v0, p0}, Lcom/android/launcher/operators/OobeLayoutCustomize$1;-><init>(Lcom/android/launcher/operators/OobeLayoutCustomize;)V

    invoke-virtual {p1, v0}, Lcom/android/common/util/AppFeatureUtils;->setSimCarrierChangedListener(Lcom/android/common/util/OnFeatureChangedListener;)V

    return-void
.end method

.method public onSimCarrierChanged()V
    .registers 3

    const-string v0, "VodafoneCotaCustomize"

    const-string/jumbo v1, "sim feature observer: sim=LOADED"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher/operators/OobeLayoutCustomize;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/launcher/operators/OobeLayoutCustomize;->simStateChangedToReLoadLauncher(Landroid/content/Context;)Z

    return-void
.end method

.method public readCotaPackageApp()V
    .registers 9

    const-string/jumbo v0, "readCotaPackageApp exception"

    const-string v1, "VodafoneCotaCustomize"

    :try_start_5
    const-string v2, "android.operator.OplusOperatorManager"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getInstance"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v6, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v6, "getCotaAppPackageNameList"

    new-array v7, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_6a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "==tempList.size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/launcher/operators/OobeLayoutCustomize;->mCotaPackageApp:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    iget-object p0, p0, Lcom/android/launcher/operators/OobeLayoutCustomize;->mCotaPackageApp:Ljava/util/Set;

    invoke-interface {p0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_55
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_55} :catch_66
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_55} :catch_66
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_55} :catch_5e
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5 .. :try_end_55} :catch_56

    goto :goto_6a

    :catch_56
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    invoke-static {v1, v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6a

    :catch_5e
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    invoke-static {v1, v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6a

    :catch_66
    move-exception p0

    invoke-static {v1, v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6a
    :goto_6a
    return-void
.end method

.method public simStateChangedToReLoadLauncher(Landroid/content/Context;)Z
    .registers 5

    invoke-virtual {p0, p1}, Lcom/android/launcher/operators/OobeLayoutCustomize;->hasInitVodafoneLayout(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "VodafoneCotaCustomize"

    if-eqz v0, :cond_10

    const-string/jumbo p0, "simStateChangedToReLoadLauncher has reset just return!"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_10
    invoke-virtual {p0, p1}, Lcom/android/launcher/operators/OobeLayoutCustomize;->isInsertCorrectSimCard(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_21

    const-string/jumbo v0, "simStateChangedToReLoadLauncher resetDatabaseAndReload"

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/launcher/operators/OobeLayoutCustomize;->resetDatabaseAndReload(Landroid/content/Context;)V

    const/4 p0, 0x1

    return p0

    :cond_21
    return v1
.end method
