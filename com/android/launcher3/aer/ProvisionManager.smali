.class public Lcom/android/launcher3/aer/ProvisionManager;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final FIRST_LOAD_DRAWER_LAUNCHER_DATA:Ljava/lang/String; = "first_load_launcher_data"

.field private static final FIRST_WORK_PROFILE_OWNER_COPE:Ljava/lang/String; = "first_work_profile_owner_cope"

.field private static final HAS_INIT_PROVISION_LAYOUT:Ljava/lang/String; = "hasInitProvisionLayout"

.field private static final KEY_LEGACY_WORK_EDU_SEEN:Ljava/lang/String; = "showed_bottom_user_education"

.field private static final TAG:Ljava/lang/String; = "ProvisionManager"

.field private static final WORK_EDU_NOT_STARTED:I = 0x0

.field private static final WORK_EDU_SHOWED:I = 0x3

.field private static volatile sInstance:Lcom/android/launcher3/aer/ProvisionManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsAlreadyInDrawerMode:Z

.field private mIsDeviceManage:Z

.field private mIsManage:Z

.field private mIsProfileManage:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/aer/ProvisionManager;->mIsManage:Z

    iput-boolean v0, p0, Lcom/android/launcher3/aer/ProvisionManager;->mIsDeviceManage:Z

    iput-boolean v0, p0, Lcom/android/launcher3/aer/ProvisionManager;->mIsProfileManage:Z

    iput-boolean v0, p0, Lcom/android/launcher3/aer/ProvisionManager;->mIsAlreadyInDrawerMode:Z

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/aer/ProvisionManager;Lcom/android/launcher3/LauncherModel;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/aer/ProvisionManager;->lambda$onManagedStateChange$0(Lcom/android/launcher3/LauncherModel;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher3/LauncherModel;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/aer/ProvisionManager;->lambda$onManagedStateChange$1(Lcom/android/launcher3/LauncherModel;)V

    return-void
.end method

.method private clearWorkEduShowed()V
    .registers 3

    iget-object p0, p0, Lcom/android/launcher3/aer/ProvisionManager;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string/jumbo v0, "showed_work_profile_edu"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static getInstance()Lcom/android/launcher3/aer/ProvisionManager;
    .registers 2

    sget-object v0, Lcom/android/launcher3/aer/ProvisionManager;->sInstance:Lcom/android/launcher3/aer/ProvisionManager;

    if-nez v0, :cond_17

    const-class v0, Lcom/android/launcher3/aer/ProvisionManager;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/android/launcher3/aer/ProvisionManager;->sInstance:Lcom/android/launcher3/aer/ProvisionManager;

    if-nez v1, :cond_12

    new-instance v1, Lcom/android/launcher3/aer/ProvisionManager;

    invoke-direct {v1}, Lcom/android/launcher3/aer/ProvisionManager;-><init>()V

    sput-object v1, Lcom/android/launcher3/aer/ProvisionManager;->sInstance:Lcom/android/launcher3/aer/ProvisionManager;

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
    sget-object v0, Lcom/android/launcher3/aer/ProvisionManager;->sInstance:Lcom/android/launcher3/aer/ProvisionManager;

    return-object v0
.end method

.method private getWorkEduShowed()Z
    .registers 3

    invoke-direct {p0}, Lcom/android/launcher3/aer/ProvisionManager;->hasSeenLegacyEdu()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_16

    iget-object p0, p0, Lcom/android/launcher3/aer/ProvisionManager;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string/jumbo v0, "showed_work_profile_edu"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_17

    :cond_16
    const/4 v1, 0x1

    :cond_17
    return v1
.end method

.method private hasInitLayout()Z
    .registers 3

    iget-object p0, p0, Lcom/android/launcher3/aer/ProvisionManager;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/common/util/LauncherSharedPrefs;->getRecentsPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "hasInitProvisionLayout"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private hasSeenLegacyEdu()Z
    .registers 3

    iget-object p0, p0, Lcom/android/launcher3/aer/ProvisionManager;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string/jumbo v0, "showed_bottom_user_education"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private initCurrentState()V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/aer/ProvisionManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/aer/ProvisioningStateUtil;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "ProvisionManager"

    if-nez v0, :cond_f

    const-string v2, "initCurrentState not provisioned"

    invoke-static {v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    const/4 v2, 0x0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/android/launcher3/aer/ProvisionManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/aer/ProvisioningStateUtil;->isDeviceOwner(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/aer/ProvisionManager;->mIsDeviceManage:Z

    iget-object v0, p0, Lcom/android/launcher3/aer/ProvisionManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/aer/ProvisioningStateUtil;->isProfileOwner(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/aer/ProvisionManager;->mIsProfileManage:Z

    iget-boolean v3, p0, Lcom/android/launcher3/aer/ProvisionManager;->mIsDeviceManage:Z

    if-nez v3, :cond_28

    if-eqz v0, :cond_29

    :cond_28
    const/4 v2, 0x1

    :cond_29
    iput-boolean v2, p0, Lcom/android/launcher3/aer/ProvisionManager;->mIsManage:Z

    goto :goto_32

    :cond_2c
    iput-boolean v2, p0, Lcom/android/launcher3/aer/ProvisionManager;->mIsDeviceManage:Z

    iput-boolean v2, p0, Lcom/android/launcher3/aer/ProvisionManager;->mIsProfileManage:Z

    iput-boolean v2, p0, Lcom/android/launcher3/aer/ProvisionManager;->mIsManage:Z

    :goto_32
    const-string v0, "initCurrentState mIsManage = "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/launcher3/aer/ProvisionManager;->mIsManage:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",mIsDeviceManage:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/launcher3/aer/ProvisionManager;->mIsDeviceManage:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",mIsProfileManage:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/launcher3/aer/ProvisionManager;->mIsProfileManage:Z

    invoke-static {v0, p0, v1}, Lcom/android/common/config/b;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onManagedStateChange$0(Lcom/android/launcher3/LauncherModel;)V
    .registers 4

    const-string v0, "ProvisionManager"

    const-string/jumbo v1, "onManagedStateChange is ProfileManage, model forceReload!"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/launcher3/aer/ProvisionManager;->clearWorkEduShowed()V

    iget-object p0, p0, Lcom/android/launcher3/aer/ProvisionManager;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/common/util/LauncherSharedPrefs;->setFirstLoadDrawerLauncherDataFlag(Landroid/content/Context;Z)V

    invoke-virtual {p1}, Lcom/android/launcher3/LauncherModel;->forceReload()V

    return-void
.end method

.method private static synthetic lambda$onManagedStateChange$1(Lcom/android/launcher3/LauncherModel;)V
    .registers 3

    const-string v0, "ProvisionManager"

    const-string/jumbo v1, "onManagedStateChange not profileManage, model forceReload!"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherModel;->forceReload()V

    return-void
.end method

.method private loadProfileManagedLayout()V
    .registers 3

    const-string v0, "ProvisionManager"

    const-string v1, "loadProfileManagedLayout"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/launcher3/aer/ProvisionManager;->setHasInitLayout()V

    iget-object v0, p0, Lcom/android/launcher3/aer/ProvisionManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher3/aer/ProvisionManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/android/common/util/LauncherSharedPrefs;->setFirstLoadDrawerLauncherDataFlag(Landroid/content/Context;Z)V

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->forceReload()V

    return-void
.end method

.method private setHasInitLayout()V
    .registers 3

    iget-object p0, p0, Lcom/android/launcher3/aer/ProvisionManager;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/common/util/LauncherSharedPrefs;->getRecentsPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "hasInitProvisionLayout"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private setWorkEduShowed()V
    .registers 3

    iget-object p0, p0, Lcom/android/launcher3/aer/ProvisionManager;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string/jumbo v0, "showed_work_profile_edu"

    const/4 v1, 0x3

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private switchDrawerModeWhenFirstCOPE()V
    .registers 5

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/mode/LauncherModeManager;->isStandardMode()Z

    move-result v0

    const-string/jumbo v1, "switchDrawerModeWhenFirstCOPE when work profile first cope! switch "

    const-string v2, "ProvisionManager"

    invoke-static {v1, v0, v2}, Lcom/android/common/rus/a;->a(Ljava/lang/String;ZLjava/lang/String;)V

    const/4 v1, 0x1

    if-eqz v0, :cond_1f

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v0

    sget-object v2, Lcom/android/launcher/mode/LauncherMode;->Drawer:Lcom/android/launcher/mode/LauncherMode;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher/mode/LauncherModeManager;->setCurLauncherMode(Lcom/android/launcher/mode/LauncherMode;Z)V

    iput-boolean v1, p0, Lcom/android/launcher3/aer/ProvisionManager;->mIsAlreadyInDrawerMode:Z

    :cond_1f
    iget-object p0, p0, Lcom/android/launcher3/aer/ProvisionManager;->mContext:Landroid/content/Context;

    const-string v0, "first_load_launcher_data"

    invoke-static {p0, v0, v1}, Lcom/android/common/util/LauncherSharedPrefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public checkManagedStatus(Lcom/android/launcher3/OplusAppFilter;)V
    .registers 5

    const-string v0, "ProvisionManager"

    if-nez p1, :cond_a

    const-string p0, "checkManagedStatus, appFilter is null"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_a
    invoke-direct {p0}, Lcom/android/launcher3/aer/ProvisionManager;->hasInitLayout()Z

    move-result v1

    const-string v2, "hasInitLayout: "

    invoke-static {v2, v1, v0}, Lcom/android/common/rus/a;->a(Ljava/lang/String;ZLjava/lang/String;)V

    if-nez v1, :cond_3c

    invoke-virtual {p0}, Lcom/android/launcher3/aer/ProvisionManager;->isProfileManage()Z

    move-result v1

    if-eqz v1, :cond_29

    const-string v1, "Load need to init Provision and initDefaultHiddenApps"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/aer/ProvisionManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/OplusAppFilter;->initDefaultHiddenApps(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/android/launcher3/aer/ProvisionManager;->loadProfileManagedLayout()V

    goto :goto_3c

    :cond_29
    invoke-virtual {p0}, Lcom/android/launcher3/aer/ProvisionManager;->isDeviceManage()Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-direct {p0}, Lcom/android/launcher3/aer/ProvisionManager;->setHasInitLayout()V

    const-string v1, "Device managed and initDefaultHiddenApps"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/aer/ProvisionManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/OplusAppFilter;->initDefaultHiddenApps(Landroid/content/Context;)V

    :cond_3c
    :goto_3c
    return-void
.end method

.method public getWorkProfile()Landroid/os/UserHandle;
    .registers 3

    sget-object v0, Lcom/android/launcher3/pm/UserCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object p0, p0, Lcom/android/launcher3/aer/ProvisionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/pm/UserCache;

    invoke-virtual {p0}, Lcom/android/launcher3/pm/UserCache;->getUserProfiles()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    sget-object v1, Lcom/android/common/multiapp/MultiAppManager;->MULTI_USER_HANDLE:Landroid/os/UserHandle;

    invoke-virtual {v1, v0}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    return-object v0

    :cond_31
    const-string p0, "ProvisionManager"

    const-string v0, "getWorkProfile no work useHandle"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public init(Landroid/content/Context;)V
    .registers 2

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/aer/ProvisionManager;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/launcher3/aer/ProvisionManager;->initCurrentState()V

    return-void
.end method

.method public isAlreadyInDrawerMode()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/aer/ProvisionManager;->mIsAlreadyInDrawerMode:Z

    return p0
.end method

.method public isDeviceManage()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/aer/ProvisionManager;->mIsDeviceManage:Z

    return p0
.end method

.method public isManage()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/aer/ProvisionManager;->mIsManage:Z

    return p0
.end method

.method public isProfileManage()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/aer/ProvisionManager;->mIsProfileManage:Z

    return p0
.end method

.method public isUninstallDisallow(ILjava/lang/String;)Z
    .registers 7

    invoke-virtual {p0}, Lcom/android/launcher3/aer/ProvisionManager;->isProfileManage()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, p1}, Landroid/os/UserHandle;-><init>(I)V

    iget-object p0, p0, Lcom/android/launcher3/aer/ProvisionManager;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p0

    const-string/jumbo v2, "no_uninstall_apps"

    invoke-virtual {p0, v2, v0}, Landroid/os/UserManager;->hasUserRestrictionForUser(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p0

    const-string v2, "ProvisionManager"

    if-eqz p0, :cond_20

    const/4 v1, 0x1

    goto :goto_3e

    :cond_20
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    :try_start_24
    invoke-interface {v3, p2, p1}, Landroid/content/pm/IPackageManager;->getBlockUninstallForUser(Ljava/lang/String;I)Z

    move-result v1
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_28} :catch_29

    goto :goto_3e

    :catch_29
    move-exception p1

    const-string p2, "isUninstallDisallow() exp= "

    invoke-static {p2}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3e
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "isUninstallDisallow() hasUserRestrictionForUser= "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " userHandle= "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " isUninstallDisallow= "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, v1, v2}, Lcom/android/common/config/b;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    return v1
.end method

.method public isWorkFolder(Landroid/content/Context;I)Z
    .registers 5

    invoke-virtual {p0}, Lcom/android/launcher3/aer/ProvisionManager;->isProfileManage()Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_8

    return v0

    :cond_8
    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/mode/LauncherModeManager;->isInDrawerMode()Z

    move-result p0

    if-eqz p0, :cond_13

    return v0

    :cond_13
    invoke-static {p1}, Lcom/android/common/util/LauncherSharedPrefs;->getRecentsPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-static {}, Lcom/android/launcher3/aer/ProvisioningStateUtil;->getCurrentWorkFolderIdKey()Ljava/lang/String;

    move-result-object p1

    const/4 v1, -0x1

    invoke-interface {p0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    if-lez p0, :cond_25

    if-ne p0, p2, :cond_25

    const/4 v0, 0x1

    :cond_25
    return v0
.end method

.method public isWorkFolderOpen(Lcom/android/launcher3/Launcher;)Z
    .registers 3

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/launcher3/AbstractFloatingView;->getOpenView(Lcom/android/launcher3/views/ActivityContext;I)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object p1

    instance-of v0, p1, Lcom/android/launcher3/folder/Folder;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/launcher3/aer/ProvisionManager;->mContext:Landroid/content/Context;

    check-cast p1, Lcom/android/launcher3/folder/Folder;

    iget-object p1, p1, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/aer/ProvisionManager;->isWorkFolder(Landroid/content/Context;I)Z

    move-result p0

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method public onManagedStateChange()V
    .registers 5

    const-string v0, "ProvisionManager"

    const-string/jumbo v1, "onManagedStateChange"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/launcher3/aer/ProvisionManager;->initCurrentState()V

    iget-object v0, p0, Lcom/android/launcher3/aer/ProvisionManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/aer/ProvisionManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/launcher3/OplusAppFilter;->newInstance(Landroid/content/Context;)Lcom/android/launcher3/OplusAppFilter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/aer/ProvisionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/OplusAppFilter;->initDefaultHiddenApps(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/launcher3/aer/ProvisionManager;->isProfileManage()Z

    move-result v1

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_34

    new-instance v1, Lcom/android/launcher/guide/c;

    invoke-direct {v1, p0, v0}, Lcom/android/launcher/guide/c;-><init>(Lcom/android/launcher3/aer/ProvisionManager;Lcom/android/launcher3/LauncherModel;)V

    invoke-static {v1, v2, v3}, Lcom/android/launcher3/LauncherModel;->runOnWorkerThreadDelayed(Ljava/lang/Runnable;J)V

    invoke-direct {p0}, Lcom/android/launcher3/aer/ProvisionManager;->setHasInitLayout()V

    return-void

    :cond_34
    new-instance v1, Landroidx/constraintlayout/helper/widget/a;

    invoke-direct {v1, v0}, Landroidx/constraintlayout/helper/widget/a;-><init>(Lcom/android/launcher3/LauncherModel;)V

    invoke-static {v1, v2, v3}, Lcom/android/launcher3/LauncherModel;->runOnWorkerThreadDelayed(Ljava/lang/Runnable;J)V

    invoke-virtual {p0}, Lcom/android/launcher3/aer/ProvisionManager;->isDeviceManage()Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-direct {p0}, Lcom/android/launcher3/aer/ProvisionManager;->setHasInitLayout()V

    :cond_45
    return-void
.end method

.method public saveWorkFolderId(Landroid/content/Context;I)V
    .registers 3

    invoke-static {p1}, Lcom/android/common/util/LauncherSharedPrefs;->getRecentsPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-static {}, Lcom/android/launcher3/aer/ProvisioningStateUtil;->getCurrentWorkFolderIdKey()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setAlreadyInDrawerMode(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/aer/ProvisionManager;->mIsAlreadyInDrawerMode:Z

    return-void
.end method

.method public setIsFirstWorkProfileCOPE()V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/aer/ProvisionManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/aer/ProvisioningStateUtil;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_51

    iget-object v0, p0, Lcom/android/launcher3/aer/ProvisionManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/aer/ProvisioningStateUtil;->isProfileOwner(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/android/launcher3/aer/ProvisionManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/aer/ProvisioningStateUtil;->isDeviceOwner(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_51

    :cond_18
    const-string/jumbo v0, "setIsFirstWorkProfileCOPE FIRST_WORK_PROFILE_OWNER_COPE: "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/aer/ProvisionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "first_work_profile_owner_cope"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProvisionManager"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/aer/ProvisionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_51

    invoke-direct {p0}, Lcom/android/launcher3/aer/ProvisionManager;->switchDrawerModeWhenFirstCOPE()V

    iget-object p0, p0, Lcom/android/launcher3/aer/ProvisionManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_51
    return-void
.end method

.method public showEduGuideWhenWorkProfileBYOD(Lcom/android/launcher/Launcher;I)V
    .registers 5

    invoke-direct {p0}, Lcom/android/launcher3/aer/ProvisionManager;->getWorkEduShowed()Z

    move-result v0

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher/mode/LauncherModeManager;->isInDrawerMode()Z

    move-result v1

    if-nez v1, :cond_37

    if-eqz v0, :cond_11

    goto :goto_37

    :cond_11
    invoke-virtual {p0}, Lcom/android/launcher3/aer/ProvisionManager;->isProfileManage()Z

    move-result v0

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/android/launcher3/aer/ProvisionManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p2}, Lcom/android/launcher3/aer/ProvisionManager;->isWorkFolder(Landroid/content/Context;I)Z

    move-result p2

    if-eqz p2, :cond_36

    new-instance p2, Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/launcher3/aer/ProvisionManager;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/launcher/guide/GuidePanelActivity;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v0, 0x3

    const-string v1, "guide_type"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v0, 0x4e21

    invoke-virtual {p1, p2, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    invoke-direct {p0}, Lcom/android/launcher3/aer/ProvisionManager;->setWorkEduShowed()V

    :cond_36
    return-void

    :cond_37
    :goto_37
    const-string/jumbo p0, "showEduGuideWhenWorkProfileBYOD failed! , isInDrawerMode="

    invoke-static {p0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher/mode/LauncherModeManager;->isInDrawerMode()Z

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", hasWorkEduShowed="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ProvisionManager"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public statsDeployWhenWorkProfileBYOD(Landroid/content/Intent;)V
    .registers 3

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_39

    iget-object p1, p0, Lcom/android/launcher3/aer/ProvisionManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/launcher3/aer/ProvisioningStateUtil;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_39

    iget-object p1, p0, Lcom/android/launcher3/aer/ProvisionManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/launcher3/aer/ProvisioningStateUtil;->isProfileOwner(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_39

    const-string p1, "ProvisionManager"

    const-string/jumbo v0, "need statsDeployWhenWorkProfileBYOD!"

    invoke-static {p1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher3/aer/ProvisionManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/statistics/LauncherStatistics;->statsDeployWhenWorkProfileBYOD()V

    iget-object p0, p0, Lcom/android/launcher3/aer/ProvisionManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p1, 0x1

    const-string v0, "first_work_profile_owner_cope"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_39
    return-void
.end method
