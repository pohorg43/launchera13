.class public Lcom/android/launcher/mode/LauncherModeManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/mode/LauncherModeManager$LauncherModelChangeCallback;
    }
.end annotation


# static fields
.field private static final DEFAULT_LAUNCHER_LAYOUT_LOCKED:Z = false

.field public static final DEFAULT_SHOW_INDICATED_APP_FOR_DRAWER_MODE:Z = false

.field private static final DRAWER_MODE:I = 0x2

.field public static final DRAW_MODE:Ljava/lang/String; = "oplus_drawer_mode_apply"

.field public static final LAST_DRAW_MODE_CELLX:Ljava/lang/String; = "LastDrawModeCellX"

.field public static final LAST_DRAW_MODE_CELLY:Ljava/lang/String; = "LastDrawModeCellY"

.field private static final LAST_LAUNCHER_MODE_BEFORE_CHANGE_TO_SIMPLE:Ljava/lang/String; = "last_mode_before_change_to_simple"

.field public static final LAST_SIMPLE_MODE_CELLX:Ljava/lang/String; = "LastSimpleModeCellX"

.field public static final LAST_SIMPLE_MODE_CELLY:Ljava/lang/String; = "LastSimpleModeCellY"

.field public static final LAST_STANDARD_MODE_CELLX:Ljava/lang/String; = "LastStandardModeCellX"

.field public static final LAST_STANDARD_MODE_CELLY:Ljava/lang/String; = "LastStandardModeCellY"

.field public static final LAUNCHER_MODE:Ljava/lang/String; = "launcher_mode"

.field private static final NONE_MODE:I = -0x1

.field private static final NORMAL_MODE:I = 0x0

.field public static final NOT_SHOW_TOOL_TIPS:I = 0x0

.field public static final SHOULD_SHOW_TOOL_TIPS:Ljava/lang/String; = "shouldShowToolTips"

.field public static final SHOW_TOOL_TIPS:I = 0x1

.field private static final SIMPLE_MODE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "LauncherModeManager"

.field private static sDefaultLauncherModeType:I

.field private static volatile sInstance:Lcom/android/launcher/mode/LauncherModeManager;

.field private static sIsDefaultAddNewAppsToWorkspaceInDrawerMode:Z

.field private static sIsOtaVersionUpdate:Z

.field private static sIsSotaUpdate:Z


# instance fields
.field private mAbsLauncherMode:Lcom/android/launcher/mode/AbsLauncherMode;

.field private mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher/mode/LauncherModeManager$LauncherModelChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCurrentLauncherMode:Lcom/android/launcher/mode/LauncherMode;

.field private mIsChangingMode:Z

.field private mLastLauncherMode:Lcom/android/launcher/mode/LauncherMode;

.field private mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher/mode/LauncherModeManager;->mIsChangingMode:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/mode/LauncherModeManager;->mCallbacks:Ljava/util/List;

    return-void
.end method

.method private checkAndInitModeCellData()V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/mode/LauncherModeManager;->initDrawModeCellData()V

    invoke-direct {p0}, Lcom/android/launcher/mode/LauncherModeManager;->initStandardCellData()V

    return-void
.end method

.method private getCurType()I
    .registers 3

    invoke-direct {p0}, Lcom/android/launcher/mode/LauncherModeManager;->getSp()Landroid/content/SharedPreferences;

    move-result-object p0

    sget v0, Lcom/android/launcher/mode/LauncherModeManager;->sDefaultLauncherModeType:I

    const-string v1, "launcher_mode"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getInstance()Lcom/android/launcher/mode/LauncherModeManager;
    .registers 2

    sget-object v0, Lcom/android/launcher/mode/LauncherModeManager;->sInstance:Lcom/android/launcher/mode/LauncherModeManager;

    if-nez v0, :cond_17

    const-class v0, Lcom/android/launcher/mode/LauncherModeManager;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/android/launcher/mode/LauncherModeManager;->sInstance:Lcom/android/launcher/mode/LauncherModeManager;

    if-nez v1, :cond_12

    new-instance v1, Lcom/android/launcher/mode/LauncherModeManager;

    invoke-direct {v1}, Lcom/android/launcher/mode/LauncherModeManager;-><init>()V

    sput-object v1, Lcom/android/launcher/mode/LauncherModeManager;->sInstance:Lcom/android/launcher/mode/LauncherModeManager;

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
    sget-object v0, Lcom/android/launcher/mode/LauncherModeManager;->sInstance:Lcom/android/launcher/mode/LauncherModeManager;

    return-object v0
.end method

.method public static getItemContentUri(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;)Landroid/net/Uri;
    .registers 3

    new-instance v0, Lcom/android/launcher/mode/AbsLauncherMode$Builder;

    invoke-direct {v0, p0}, Lcom/android/launcher/mode/AbsLauncherMode$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/android/launcher/mode/AbsLauncherMode$Builder;->mode(Lcom/android/launcher/mode/LauncherMode;)Lcom/android/launcher/mode/AbsLauncherMode$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/mode/AbsLauncherMode$Builder;->build()Lcom/android/launcher/mode/AbsLauncherMode;

    move-result-object p0

    const-string p1, "content://com.android.launcher.settings/"

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/launcher/mode/AbsLauncherMode;->itemTableName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static getScreenContentUri(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;)Landroid/net/Uri;
    .registers 3

    new-instance v0, Lcom/android/launcher/mode/AbsLauncherMode$Builder;

    invoke-direct {v0, p0}, Lcom/android/launcher/mode/AbsLauncherMode$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/android/launcher/mode/AbsLauncherMode$Builder;->mode(Lcom/android/launcher/mode/LauncherMode;)Lcom/android/launcher/mode/AbsLauncherMode$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/mode/AbsLauncherMode$Builder;->build()Lcom/android/launcher/mode/AbsLauncherMode;

    move-result-object p0

    const-string p1, "content://com.android.launcher.settings/"

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/launcher/mode/AbsLauncherMode;->screenTableName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private getSp()Landroid/content/SharedPreferences;
    .registers 2

    iget-object v0, p0, Lcom/android/launcher/mode/LauncherModeManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/android/launcher/mode/LauncherModeManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/common/util/LauncherSharedPrefs;->getLauncherPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher/mode/LauncherModeManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    :cond_c
    iget-object p0, p0, Lcom/android/launcher/mode/LauncherModeManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method private initDrawModeCellData()V
    .registers 6

    invoke-direct {p0}, Lcom/android/launcher/mode/LauncherModeManager;->getSp()Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "LastDrawModeCellX"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "LastDrawModeCellY"

    invoke-interface {p0, v3, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-eqz v2, :cond_15

    if-nez v4, :cond_31

    :cond_15
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {}, Lcom/android/launcher/UiConfig;->getDefaultLayout()[I

    move-result-object v2

    aget v1, v2, v1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {}, Lcom/android/launcher/UiConfig;->getDefaultLayout()[I

    move-result-object v0

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-interface {p0, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_31
    return-void
.end method

.method private static initParams(Landroid/content/Context;)V
    .registers 5

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/android/launcher/mode/LauncherModeManager;->sDefaultLauncherModeType:I

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isDefaultDrawerMode()Z

    move-result v1

    if-eqz v1, :cond_1d

    sget-object v1, Lcom/android/launcher/mode/LauncherMode;->Drawer:Lcom/android/launcher/mode/LauncherMode;

    invoke-virtual {v1}, Lcom/android/launcher/mode/LauncherMode;->getValue()I

    move-result v1

    sput v1, Lcom/android/launcher/mode/LauncherModeManager;->sDefaultLauncherModeType:I

    :cond_1d
    invoke-static {p0}, Lcom/android/common/util/LauncherSharedPrefs;->initOtaVersionUpdate(Landroid/content/Context;)Z

    move-result v1

    sput-boolean v1, Lcom/android/launcher/mode/LauncherModeManager;->sIsOtaVersionUpdate:Z

    const-string/jumbo v1, "persist.sys.sota.state"

    const-string/jumbo v2, "none"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Active"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/launcher/mode/LauncherModeManager;->sIsSotaUpdate:Z

    invoke-static {p0}, Lcom/android/launcher/mode/LauncherModeManager;->injectInitOtaVersionUpdateParam(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/launcher3/aer/ProvisionManager;->getInstance()Lcom/android/launcher3/aer/ProvisionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/aer/ProvisionManager;->isAlreadyInDrawerMode()Z

    move-result v1

    const-string v2, "LauncherModeManager"

    if-eqz v1, :cond_59

    const-string v1, "keep defaultLauncherModeType Drawer!"

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/android/launcher/mode/LauncherMode;->Drawer:Lcom/android/launcher/mode/LauncherMode;

    invoke-virtual {v1}, Lcom/android/launcher/mode/LauncherMode;->getValue()I

    move-result v1

    sput v1, Lcom/android/launcher/mode/LauncherModeManager;->sDefaultLauncherModeType:I

    invoke-static {}, Lcom/android/launcher3/aer/ProvisionManager;->getInstance()Lcom/android/launcher3/aer/ProvisionManager;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/launcher3/aer/ProvisionManager;->setAlreadyInDrawerMode(Z)V

    :cond_59
    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isDefaultSimpleMode()Z

    move-result v1

    if-eqz v1, :cond_67

    sget-object v1, Lcom/android/launcher/mode/LauncherMode;->Simple:Lcom/android/launcher/mode/LauncherMode;

    invoke-virtual {v1}, Lcom/android/launcher/mode/LauncherMode;->getValue()I

    move-result v1

    sput v1, Lcom/android/launcher/mode/LauncherModeManager;->sDefaultLauncherModeType:I

    :cond_67
    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isDefaultAddToWorkspace()Z

    move-result v0

    if-eqz v0, :cond_7a

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher/mode/LauncherModeManager;->sIsDefaultAddNewAppsToWorkspaceInDrawerMode:Z

    :cond_7a
    invoke-static {}, Lcom/android/launcher3/allapps/branch/BranchManager;->featureSupport()Z

    move-result v0

    if-eqz v0, :cond_83

    invoke-static {p0}, Lcom/android/launcher3/allapps/branch/BranchManager;->syncDrawModeSettingSwitchStatus(Landroid/content/Context;)V

    :cond_83
    const-string p0, "DefaultLauncherModeType is "

    invoke-static {p0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget v0, Lcom/android/launcher/mode/LauncherModeManager;->sDefaultLauncherModeType:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", sIsOtaVersionUpdate="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/android/launcher/mode/LauncherModeManager;->sIsOtaVersionUpdate:Z

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isSotaUpdate="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/android/launcher/mode/LauncherModeManager;->sIsSotaUpdate:Z

    invoke-static {p0, v0, v2}, Lcom/android/common/config/b;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    return-void
.end method

.method private initStandardCellData()V
    .registers 6

    invoke-direct {p0}, Lcom/android/launcher/mode/LauncherModeManager;->getSp()Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "LastStandardModeCellX"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "LastStandardModeCellY"

    invoke-interface {p0, v3, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-eqz v2, :cond_15

    if-nez v4, :cond_31

    :cond_15
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {}, Lcom/android/launcher/UiConfig;->getDefaultLayout()[I

    move-result-object v2

    aget v1, v2, v1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {}, Lcom/android/launcher/UiConfig;->getDefaultLayout()[I

    move-result-object v0

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-interface {p0, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_31
    return-void
.end method

.method private static injectInitOtaVersionUpdateParam(Landroid/content/Context;)V
    .registers 4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "shouldShowToolTips"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_23

    sget-boolean v0, Lcom/android/launcher/mode/LauncherModeManager;->sIsOtaVersionUpdate:Z

    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_23

    :cond_1b
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_23
    :goto_23
    return-void
.end method

.method public static isDefaultAddNewAppsToWorkspaceInDrawerMode()Z
    .registers 1

    sget-boolean v0, Lcom/android/launcher/mode/LauncherModeManager;->sIsDefaultAddNewAppsToWorkspaceInDrawerMode:Z

    return v0
.end method

.method public static isOtaVersionUpdate()Z
    .registers 1

    sget-boolean v0, Lcom/android/launcher/mode/LauncherModeManager;->sIsOtaVersionUpdate:Z

    return v0
.end method

.method public static isSotaUpdate()Z
    .registers 1

    sget-boolean v0, Lcom/android/launcher/mode/LauncherModeManager;->sIsSotaUpdate:Z

    return v0
.end method

.method public static resetSotaUpdate()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher/mode/LauncherModeManager;->sIsSotaUpdate:Z

    return-void
.end method


# virtual methods
.method public canShowHotseatCenterMode()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public changedMode()V
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher/mode/LauncherModeManager;->getLauncherMode()Lcom/android/launcher/mode/AbsLauncherMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/mode/AbsLauncherMode;->change()V

    iget-object p0, p0, Lcom/android/launcher/mode/LauncherModeManager;->mCallbacks:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/mode/LauncherModeManager$LauncherModelChangeCallback;

    invoke-interface {v0}, Lcom/android/launcher/mode/LauncherModeManager$LauncherModelChangeCallback;->onChange()V

    goto :goto_d

    :cond_1d
    return-void
.end method

.method public checkAndUpdateIconConfigSize()V
    .registers 5

    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isRLMDevice:Z

    const-string v1, "LauncherModeManager"

    if-eqz v0, :cond_2b

    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isExp:Z

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/android/launcher/mode/LauncherModeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/launcher/mode/LauncherModeManager;->getCurType()I

    move-result v2

    const-string/jumbo v3, "oplus_drawer_mode_apply"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "change mode: value="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/launcher/mode/LauncherModeManager;->getCurType()I

    move-result v2

    invoke-static {v0, v2, v1}, Lcom/android/common/config/h;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_2b
    const-string v0, "checkAndUpdateIconConfigSize mCurrentLauncherMode:"

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/launcher/mode/LauncherModeManager;->mCurrentLauncherMode:Lcom/android/launcher/mode/LauncherMode;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",mLastLauncherMode:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/launcher/mode/LauncherModeManager;->mLastLauncherMode:Lcom/android/launcher/mode/LauncherMode;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher/mode/LauncherModeManager;->mCurrentLauncherMode:Lcom/android/launcher/mode/LauncherMode;

    sget-object v1, Lcom/android/launcher/mode/LauncherMode;->Simple:Lcom/android/launcher/mode/LauncherMode;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_5c

    iget-object v3, p0, Lcom/android/launcher/mode/LauncherModeManager;->mLastLauncherMode:Lcom/android/launcher/mode/LauncherMode;

    if-eq v3, v1, :cond_5c

    invoke-static {}, Lcom/android/launcher/LauncherSimpleModeHelper;->getInstance()Lcom/android/launcher/LauncherSimpleModeHelper;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher/mode/LauncherModeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0, v2, v2}, Lcom/android/launcher/LauncherSimpleModeHelper;->updateCurUxIconConfigSize(Landroid/content/Context;ZZ)V

    goto :goto_6c

    :cond_5c
    if-eq v0, v1, :cond_6c

    iget-object v0, p0, Lcom/android/launcher/mode/LauncherModeManager;->mLastLauncherMode:Lcom/android/launcher/mode/LauncherMode;

    if-ne v0, v1, :cond_6c

    invoke-static {}, Lcom/android/launcher/LauncherSimpleModeHelper;->getInstance()Lcom/android/launcher/LauncherSimpleModeHelper;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher/mode/LauncherModeManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/launcher/LauncherSimpleModeHelper;->updateCurUxIconConfigSize(Landroid/content/Context;ZZ)V

    :cond_6c
    :goto_6c
    return-void
.end method

.method public getCurLauncherMode()Lcom/android/launcher/mode/LauncherMode;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/mode/LauncherModeManager;->mCurrentLauncherMode:Lcom/android/launcher/mode/LauncherMode;

    return-object p0
.end method

.method public getCurrentLauncherModeType()I
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher/mode/LauncherModeManager;->getLauncherMode()Lcom/android/launcher/mode/AbsLauncherMode;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/mode/AbsLauncherMode;->indexOfLauncherMode()I

    move-result p0

    return p0
.end method

.method public getCurrentModeLayout()[I
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher/mode/LauncherModeManager;->getLauncherMode()Lcom/android/launcher/mode/AbsLauncherMode;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/mode/AbsLauncherMode;->getCurrentModeLayoutSetting()[I

    move-result-object p0

    return-object p0
.end method

.method public getDefaultLauncherModeType()I
    .registers 1

    sget p0, Lcom/android/launcher/mode/LauncherModeManager;->sDefaultLauncherModeType:I

    return p0
.end method

.method public getFlagOfEmptyDatabaseCreated()Ljava/lang/String;
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher/mode/LauncherModeManager;->getLauncherMode()Lcom/android/launcher/mode/AbsLauncherMode;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/mode/AbsLauncherMode;->flagOfEmptyDatabaseCreated()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getGlobalLayoutSettings()[I
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher/mode/LauncherModeManager;->getLauncherMode()Lcom/android/launcher/mode/AbsLauncherMode;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/mode/AbsLauncherMode;->getTargetGlobalLayoutSettings()[I

    move-result-object p0

    return-object p0
.end method

.method public getItemTableName()Ljava/lang/String;
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher/mode/LauncherModeManager;->getLauncherMode()Lcom/android/launcher/mode/AbsLauncherMode;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/mode/AbsLauncherMode;->itemTableName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLastLauncherMode()Lcom/android/launcher/mode/LauncherMode;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/mode/LauncherModeManager;->mLastLauncherMode:Lcom/android/launcher/mode/LauncherMode;

    return-object p0
.end method

.method public getLastModeBeforeChangeToSimpleMode(Z)Lcom/android/launcher/mode/LauncherMode;
    .registers 5

    invoke-direct {p0}, Lcom/android/launcher/mode/LauncherModeManager;->getSp()Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "last_mode_before_change_to_simple"

    const/4 v1, -0x1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLastModeBeforeChangeToSimpleMode: value="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "LauncherModeManager"

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p0, :cond_26

    sget-object p0, Lcom/android/launcher/mode/LauncherMode;->Standard:Lcom/android/launcher/mode/LauncherMode;

    return-object p0

    :cond_26
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2c

    sget-object p0, Lcom/android/launcher/mode/LauncherMode;->Drawer:Lcom/android/launcher/mode/LauncherMode;

    return-object p0

    :cond_2c
    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isDefaultSimpleMode()Z

    move-result v0

    if-eqz v0, :cond_3e

    if-eqz p1, :cond_3e

    if-eq p0, v1, :cond_3b

    const/4 p1, 0x3

    if-ne p0, p1, :cond_3e

    :cond_3b
    sget-object p0, Lcom/android/launcher/mode/LauncherMode;->Standard:Lcom/android/launcher/mode/LauncherMode;

    return-object p0

    :cond_3e
    sget p0, Lcom/android/launcher/mode/LauncherModeManager;->sDefaultLauncherModeType:I

    invoke-static {p0}, Lcom/android/launcher/mode/LauncherMode;->create(I)Lcom/android/launcher/mode/LauncherMode;

    move-result-object p0

    return-object p0
.end method

.method public getLauncherMode()Lcom/android/launcher/mode/AbsLauncherMode;
    .registers 4

    iget-object v0, p0, Lcom/android/launcher/mode/LauncherModeManager;->mAbsLauncherMode:Lcom/android/launcher/mode/AbsLauncherMode;

    if-nez v0, :cond_49

    iget-object v0, p0, Lcom/android/launcher/mode/LauncherModeManager;->mContext:Landroid/content/Context;

    const-string v1, "LauncherModeManager"

    if-nez v0, :cond_1a

    const-string v0, "getLauncherMode mContext is null,Reinit"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher/mode/LauncherModeManager;->init(Landroid/content/Context;)V

    :cond_1a
    iget-object v0, p0, Lcom/android/launcher/mode/LauncherModeManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_44

    const-string v0, "getLauncherMode mAbsLauncherMode = "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/launcher/mode/LauncherModeManager;->mAbsLauncherMode:Lcom/android/launcher/mode/AbsLauncherMode;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/launcher/mode/AbsLauncherMode$Builder;

    iget-object v1, p0, Lcom/android/launcher/mode/LauncherModeManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/launcher/mode/AbsLauncherMode$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/launcher/mode/LauncherModeManager;->mCurrentLauncherMode:Lcom/android/launcher/mode/LauncherMode;

    invoke-virtual {v0, v1}, Lcom/android/launcher/mode/AbsLauncherMode$Builder;->mode(Lcom/android/launcher/mode/LauncherMode;)Lcom/android/launcher/mode/AbsLauncherMode$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/mode/AbsLauncherMode$Builder;->build()Lcom/android/launcher/mode/AbsLauncherMode;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher/mode/LauncherModeManager;->mAbsLauncherMode:Lcom/android/launcher/mode/AbsLauncherMode;

    goto :goto_49

    :cond_44
    const-string v0, "getLauncherMode and context is null"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_49
    :goto_49
    iget-object p0, p0, Lcom/android/launcher/mode/LauncherModeManager;->mAbsLauncherMode:Lcom/android/launcher/mode/AbsLauncherMode;

    return-object p0
.end method

.method public getLauncherModeForString()Ljava/lang/String;
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher/mode/LauncherModeManager;->getLauncherMode()Lcom/android/launcher/mode/AbsLauncherMode;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/mode/AbsLauncherMode;->getLauncherModeForString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLoaderResults(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/AllAppsList;I[Lcom/android/launcher3/model/BgDataModel$Callbacks;)Lcom/android/launcher3/model/LoaderResults;
    .registers 12

    invoke-virtual {p0}, Lcom/android/launcher/mode/LauncherModeManager;->getLauncherMode()Lcom/android/launcher/mode/AbsLauncherMode;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher/mode/AbsLauncherMode;->createLoaderResults(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/AllAppsList;I[Lcom/android/launcher3/model/BgDataModel$Callbacks;)Lcom/android/launcher3/model/LoaderResults;

    move-result-object p0

    return-object p0
.end method

.method public getLoadertask(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/AllAppsList;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/ModelDelegate;Lcom/android/launcher3/model/LoaderResults;)Lcom/android/launcher3/model/LoaderTask;
    .registers 12

    invoke-virtual {p0}, Lcom/android/launcher/mode/LauncherModeManager;->getLauncherMode()Lcom/android/launcher/mode/AbsLauncherMode;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher/mode/AbsLauncherMode;->createLoadertask(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/AllAppsList;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/ModelDelegate;Lcom/android/launcher3/model/LoaderResults;)Lcom/android/launcher3/model/LoaderTask;

    move-result-object p0

    return-object p0
.end method

.method public getMaxFolderPages()I
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher/mode/LauncherModeManager;->getLauncherMode()Lcom/android/launcher/mode/AbsLauncherMode;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/mode/AbsLauncherMode;->maxFolderPages()I

    move-result p0

    return p0
.end method

.method public getMaxWorkspacePages()I
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher/mode/LauncherModeManager;->getLauncherMode()Lcom/android/launcher/mode/AbsLauncherMode;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/mode/AbsLauncherMode;->maxWorkspacePages()I

    move-result p0

    return p0
.end method

.method public getScreenTableName()Ljava/lang/String;
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher/mode/LauncherModeManager;->getLauncherMode()Lcom/android/launcher/mode/AbsLauncherMode;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/mode/AbsLauncherMode;->screenTableName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public init(Landroid/content/Context;)V
    .registers 6

    iput-object p1, p0, Lcom/android/launcher/mode/LauncherModeManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/launcher/mode/LauncherModeManager;->initParams(Landroid/content/Context;)V

    sget v0, Lcom/android/launcher/mode/LauncherModeManager;->sDefaultLauncherModeType:I

    invoke-direct {p0}, Lcom/android/launcher/mode/LauncherModeManager;->getSp()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "launcher_mode"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x3

    if-eqz v1, :cond_19

    invoke-direct {p0}, Lcom/android/launcher/mode/LauncherModeManager;->getCurType()I

    move-result v0

    goto :goto_24

    :cond_19
    sget-object v1, Lcom/android/common/util/LauncherModeUtil;->INSTANCE:Lcom/android/common/util/LauncherModeUtil;

    iget-object v1, p0, Lcom/android/launcher/mode/LauncherModeManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/common/util/LauncherModeUtil;->isInSceneSimpleMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_24

    move v0, v2

    :cond_24
    :goto_24
    sget-boolean v1, Lcom/android/common/config/FeatureOption;->isRLMDevice:Z

    if-eqz v1, :cond_4e

    sget-boolean v1, Lcom/android/common/config/FeatureOption;->isExp:Z

    if-eqz v1, :cond_4e

    iget-object v1, p0, Lcom/android/launcher/mode/LauncherModeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "oplus_drawer_mode_apply"

    invoke-static {v1, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current desk mode values is"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "LauncherModeManager"

    invoke-static {v3, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4e
    if-ne v0, v2, :cond_60

    invoke-static {}, Lcom/android/launcher/LauncherSimpleModeHelper;->getInstance()Lcom/android/launcher/LauncherSimpleModeHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher/mode/LauncherModeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/launcher/LauncherSimpleModeHelper;->resetCurUxIconConfigDefaultSimpleSize(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/launcher/LauncherSimpleModeHelper;->getInstance()Lcom/android/launcher/LauncherSimpleModeHelper;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/launcher/LauncherSimpleModeHelper;->notifySceneModeToChangeSimpleStateIfNecessary(Landroid/content/Context;)V

    :cond_60
    invoke-static {v0}, Lcom/android/launcher/mode/LauncherMode;->create(I)Lcom/android/launcher/mode/LauncherMode;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher/mode/LauncherModeManager;->setCurLauncherMode(Lcom/android/launcher/mode/LauncherMode;Z)V

    invoke-direct {p0}, Lcom/android/launcher/mode/LauncherModeManager;->checkAndInitModeCellData()V

    return-void
.end method

.method public initTargetIdpGrid()V
    .registers 3

    sget-object v0, Lcom/android/launcher3/InvariantDeviceProfile;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v1, p0, Lcom/android/launcher/mode/LauncherModeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/InvariantDeviceProfile;

    if-nez v0, :cond_14

    const-string p0, "LauncherModeManager"

    const-string v0, "initTargetIdpGrid but idp is null"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_14
    iget-object p0, p0, Lcom/android/launcher/mode/LauncherModeManager;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/launcher3/InvariantDeviceProfile;->getCurrentGridName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/launcher3/InvariantDeviceProfile;->initGrid(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public isAddAppToWorkspace()Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher/mode/LauncherModeManager;->getLauncherMode()Lcom/android/launcher/mode/AbsLauncherMode;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/mode/AbsLauncherMode;->needAddAppToWorkspace()Z

    move-result p0

    return p0
.end method

.method public isChangingMode()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher/mode/LauncherModeManager;->mIsChangingMode:Z

    return p0
.end method

.method public isExitSimpleMode()Z
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/mode/LauncherModeManager;->mLastLauncherMode:Lcom/android/launcher/mode/LauncherMode;

    sget-object v1, Lcom/android/launcher/mode/LauncherMode;->Simple:Lcom/android/launcher/mode/LauncherMode;

    if-ne v0, v1, :cond_12

    iget-object v0, p0, Lcom/android/launcher/mode/LauncherModeManager;->mCurrentLauncherMode:Lcom/android/launcher/mode/LauncherMode;

    if-eq v0, v1, :cond_12

    invoke-virtual {p0}, Lcom/android/launcher/mode/LauncherModeManager;->isChangingMode()Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public isInBigSimpleMode()Z
    .registers 2

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isBigSimpleModeSupport()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/android/launcher/mode/LauncherModeManager;->isInSimpleMode()Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method public isInDrawerMode()Z
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher/mode/LauncherModeManager;->getCurLauncherMode()Lcom/android/launcher/mode/LauncherMode;

    move-result-object p0

    sget-object v0, Lcom/android/launcher/mode/LauncherMode;->Drawer:Lcom/android/launcher/mode/LauncherMode;

    if-ne p0, v0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public isInSimpleMode()Z
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher/mode/LauncherModeManager;->getCurLauncherMode()Lcom/android/launcher/mode/LauncherMode;

    move-result-object p0

    sget-object v0, Lcom/android/launcher/mode/LauncherMode;->Simple:Lcom/android/launcher/mode/LauncherMode;

    if-ne p0, v0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public isStandardMode()Z
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher/mode/LauncherModeManager;->getCurLauncherMode()Lcom/android/launcher/mode/LauncherMode;

    move-result-object p0

    sget-object v0, Lcom/android/launcher/mode/LauncherMode;->Standard:Lcom/android/launcher/mode/LauncherMode;

    if-ne p0, v0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public isSupportSimpleModeSpeedDialWidget()Z
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher/mode/LauncherModeManager;->isInBigSimpleMode()Z

    move-result v0

    if-eqz v0, :cond_18

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isSupportSimpleModeSpeedDialWidget()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object p0, p0, Lcom/android/launcher/mode/LauncherModeManager;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/common/util/SpeedDialWidgetUtils;->isSpeedDialWidgetInstalled(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_18

    const/4 p0, 0x1

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    :goto_19
    return p0
.end method

.method public launcherMode2Type(Lcom/android/launcher/mode/LauncherMode;)I
    .registers 2

    invoke-virtual {p1}, Lcom/android/launcher/mode/LauncherMode;->getValue()I

    move-result p0

    return p0
.end method

.method public needSwitchDataWhenModeChanged()Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher/mode/LauncherModeManager;->getLauncherMode()Lcom/android/launcher/mode/AbsLauncherMode;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/mode/AbsLauncherMode;->needSwitchDataWhenModeChanged()Z

    move-result p0

    return p0
.end method

.method public notifySceneModeToChangeState()V
    .registers 2

    sget-object v0, Lcom/android/common/util/LauncherModeUtil;->INSTANCE:Lcom/android/common/util/LauncherModeUtil;

    iget-object p0, p0, Lcom/android/launcher/mode/LauncherModeManager;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/common/util/LauncherModeUtil;->notifySceneModeToChangeState(Landroid/content/Context;)V

    return-void
.end method

.method public refreshMaxId(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher/mode/LauncherModeManager;->getLauncherMode()Lcom/android/launcher/mode/AbsLauncherMode;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/launcher/mode/AbsLauncherMode;->refreshMaxId(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public registerChangeCallback(Lcom/android/launcher/mode/LauncherModeManager$LauncherModelChangeCallback;)V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/mode/LauncherModeManager;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object p0, p0, Lcom/android/launcher/mode/LauncherModeManager;->mCallbacks:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    return-void
.end method

.method public saveCurrentModeLayout(II)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "saveCurrentModeLayout x= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "y = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LauncherModeManager"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher/mode/LauncherModeManager;->getLauncherMode()Lcom/android/launcher/mode/AbsLauncherMode;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/mode/AbsLauncherMode;->setCurrentModeLayoutSetting(II)V

    return-void
.end method

.method public saveLastModeBeforeChangeToSimpleMode(Lcom/android/launcher/mode/LauncherMode;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-virtual {p1}, Lcom/android/launcher/mode/LauncherMode;->getValue()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setLastModeBeforeChangeToSimpleMode: value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LauncherModeManager"

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/android/launcher/mode/LauncherMode;->Simple:Lcom/android/launcher/mode/LauncherMode;

    if-ne p1, v1, :cond_24

    sget v0, Lcom/android/launcher/mode/LauncherModeManager;->sDefaultLauncherModeType:I

    :cond_24
    invoke-direct {p0}, Lcom/android/launcher/mode/LauncherModeManager;->getSp()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "last_mode_before_change_to_simple"

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setChangingMode(Z)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isChangingMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LauncherModeManager"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/android/launcher/mode/LauncherModeManager;->mIsChangingMode:Z

    return-void
.end method

.method public setCurLauncherMode(Lcom/android/launcher/mode/LauncherMode;Z)V
    .registers 4

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher/mode/LauncherModeManager;->setCurLauncherMode(Lcom/android/launcher/mode/LauncherMode;ZZ)V

    return-void
.end method

.method public setCurLauncherMode(Lcom/android/launcher/mode/LauncherMode;ZZ)V
    .registers 4

    iget-object p2, p0, Lcom/android/launcher/mode/LauncherModeManager;->mCurrentLauncherMode:Lcom/android/launcher/mode/LauncherMode;

    iput-object p2, p0, Lcom/android/launcher/mode/LauncherModeManager;->mLastLauncherMode:Lcom/android/launcher/mode/LauncherMode;

    iput-object p1, p0, Lcom/android/launcher/mode/LauncherModeManager;->mCurrentLauncherMode:Lcom/android/launcher/mode/LauncherMode;

    if-eqz p3, :cond_f

    sget-object p3, Lcom/android/launcher/mode/LauncherMode;->Simple:Lcom/android/launcher/mode/LauncherMode;

    if-ne p1, p3, :cond_f

    invoke-virtual {p0, p2}, Lcom/android/launcher/mode/LauncherModeManager;->saveLastModeBeforeChangeToSimpleMode(Lcom/android/launcher/mode/LauncherMode;)V

    :cond_f
    new-instance p1, Lcom/android/launcher/mode/AbsLauncherMode$Builder;

    iget-object p2, p0, Lcom/android/launcher/mode/LauncherModeManager;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/android/launcher/mode/AbsLauncherMode$Builder;-><init>(Landroid/content/Context;)V

    iget-object p2, p0, Lcom/android/launcher/mode/LauncherModeManager;->mCurrentLauncherMode:Lcom/android/launcher/mode/LauncherMode;

    invoke-virtual {p1, p2}, Lcom/android/launcher/mode/AbsLauncherMode$Builder;->mode(Lcom/android/launcher/mode/LauncherMode;)Lcom/android/launcher/mode/AbsLauncherMode$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher/mode/AbsLauncherMode$Builder;->build()Lcom/android/launcher/mode/AbsLauncherMode;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher/mode/LauncherModeManager;->mAbsLauncherMode:Lcom/android/launcher/mode/AbsLauncherMode;

    invoke-virtual {p1}, Lcom/android/launcher/mode/AbsLauncherMode;->saveCurrentModeType()V

    invoke-static {}, Lcom/android/common/util/OplusLauncherDbUtils;->updateScreenContentUri()V

    invoke-static {}, Lcom/android/common/util/OplusLauncherDbUtils;->updateFavoritesContentUri()V

    iget-object p1, p0, Lcom/android/launcher/mode/LauncherModeManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lo1/e;->f(Landroid/content/Context;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "setCurLauncherMode mode = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/launcher/mode/LauncherModeManager;->mAbsLauncherMode:Lcom/android/launcher/mode/AbsLauncherMode;

    invoke-virtual {p0}, Lcom/android/launcher/mode/AbsLauncherMode;->indexOfLauncherMode()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LauncherModeManager"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setLastLauncherMode(Lcom/android/launcher/mode/LauncherMode;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/mode/LauncherModeManager;->mLastLauncherMode:Lcom/android/launcher/mode/LauncherMode;

    return-void
.end method

.method public shouldShowToolTips()Z
    .registers 4

    iget-object p0, p0, Lcom/android/launcher/mode/LauncherModeManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "shouldShowToolTips"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const-string/jumbo v0, "shouldShowToolTips flag="

    const-string v2, "LauncherModeManager"

    invoke-static {v0, p0, v2}, Lcom/android/common/util/h;->a(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1a

    move v1, v0

    :cond_1a
    return v1
.end method

.method public unregisterChangeCallback(Lcom/android/launcher/mode/LauncherModeManager$LauncherModelChangeCallback;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/mode/LauncherModeManager;->mCallbacks:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
