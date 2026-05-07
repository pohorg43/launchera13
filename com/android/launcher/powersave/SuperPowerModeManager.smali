.class public Lcom/android/launcher/powersave/SuperPowerModeManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/powersave/SuperPowerModeManager$OnModelStateUpdate;,
        Lcom/android/launcher/powersave/SuperPowerModeManager$SuperPowerSavePackageUserKey;
    }
.end annotation


# static fields
.field private static final AVAILABLE_TIME_ALPHA:F = 0.55f

.field private static final CLOSE_SUPER_POWER_SAVE_ANIM_DELAY:J = 0x190L

.field private static final MAX_SUPER_POWER_SAVE_EXIT_SYSTEM_COUNT:I = 0x3

.field private static final OPEN_SUPER_POWER_SAVE_ANIM:Ljava/lang/String; = "OpenSuperPowerSaveBatteryIconAnim.json"

.field private static final OPEN_SUPER_POWER_SAVE_ANIM_AVAILABLETIME_DELAY:J = 0x53L

.field private static final OPEN_SUPER_POWER_SAVE_ANIM_BG_DURATION:J = 0x29aL

.field private static final OPEN_SUPER_POWER_SAVE_ANIM_TEXT_DURATION:J = 0x14dL

.field private static final PATHINTERPOLATOR_CONTROL_X1:F = 0.3f

.field private static final PATHINTERPOLATOR_CONTROL_X2:F = 0.1f

.field private static final POWERSAVEHOME_COMPONENT:Landroid/content/ComponentName;

.field private static final START_SUPER_POWER_SAVE_LAUNCHER_DELAY:J = 0xc8L

.field private static final SUPER_POWERSAVE_LAUNCHER_ENTER:Ljava/lang/String; = "super_powersave_launcher_enter"

.field public static final SUPER_POWERSAVE_LAUNCHER_EXIT:Ljava/lang/String; = "super_powersave_launcher_exit"

.field private static final SUPER_POWERSAVE_MODE_STATE:Ljava/lang/String; = "super_powersave_mode_state"

.field public static final SUPER_POWER_DEFAULT_APP_COUNT:I = 0x3

.field private static final SUPER_POWER_MAX_ICON_NUM:I = 0x6

.field private static final SUPER_POWER_SAVE_DESKTOP_APP_LIST:Ljava/lang/String; = "super_power_save_desktop_app_list"

.field private static final SUPER_POWER_SAVE_EXIT_SYSTEM_COUNT_KEY:Ljava/lang/String; = "super_power_save_exit_system_count_key"

.field public static final SUPER_POWER_SAVE_LAUNCHER_APP_COUNT_KEY:Ljava/lang/String; = "super_power_save_launcher_app_count"

.field public static final SUPER_POWER_SAVE_LAUNCHER_APP_LIST_KEY:Ljava/lang/String; = "super_power_save_launcher_app_list"

.field private static final TAG:Ljava/lang/String; = "SuperPowerModeManager"

.field private static final UNIHOME_COMPONENT:Landroid/content/ComponentName;

.field private static final UNLOCK_WAIT_DURATION:J = 0x1388L

.field private static volatile sInstance:Lcom/android/launcher/powersave/SuperPowerModeManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHasRegisterObserver:Z

.field private mInSuperPowerMode:Z

.field private mIsIconBrightBackground:Z

.field private final mModelStateListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher/powersave/SuperPowerModeManager$OnModelStateUpdate;",
            ">;"
        }
    .end annotation
.end field

.field private mOpenanimLayout:Landroid/view/View;

.field private mSuperPowerModeEnterObserver:Landroid/database/ContentObserver;

.field private mUnlockLastTime:J


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.launcher"

    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher/powersave/SuperPowerModeManager;->POWERSAVEHOME_COMPONENT:Landroid/content/ComponentName;

    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher/powersave/SuperPowerModeManager;->UNIHOME_COMPONENT:Landroid/content/ComponentName;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher/powersave/SuperPowerModeManager;->mModelStateListeners:Ljava/util/ArrayList;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/launcher/powersave/SuperPowerModeManager;->mUnlockLastTime:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher/powersave/SuperPowerModeManager;->mIsIconBrightBackground:Z

    new-instance v0, Lcom/android/launcher/powersave/SuperPowerModeManager$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/launcher/powersave/SuperPowerModeManager$1;-><init>(Lcom/android/launcher/powersave/SuperPowerModeManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/launcher/powersave/SuperPowerModeManager;->mSuperPowerModeEnterObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher/powersave/SuperPowerModeManager;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/launcher/powersave/SuperPowerModeManager;->getSuperPowerEnterState()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/launcher/powersave/SuperPowerModeManager;->mInSuperPowerMode:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x1388

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/launcher/powersave/SuperPowerModeManager;->mUnlockLastTime:J

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher/powersave/SuperPowerModeManager;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/powersave/SuperPowerModeManager;->lambda$showOpenSuperPowerSaveModeAnim$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/launcher/powersave/SuperPowerModeManager;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher/powersave/SuperPowerModeManager;->mInSuperPowerMode:Z

    return p0
.end method

.method public static synthetic access$002(Lcom/android/launcher/powersave/SuperPowerModeManager;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher/powersave/SuperPowerModeManager;->mInSuperPowerMode:Z

    return p1
.end method

.method public static synthetic access$100(Lcom/android/launcher/powersave/SuperPowerModeManager;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/powersave/SuperPowerModeManager;->getSuperPowerEnterState()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$1000(Lcom/android/launcher/powersave/SuperPowerModeManager;)Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/powersave/SuperPowerModeManager;->getSuperPowerSaveModeLauncher()Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/launcher/powersave/SuperPowerModeManager;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/powersave/SuperPowerModeManager;->getSuperPowerModeState()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$300(Lcom/android/launcher/powersave/SuperPowerModeManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/powersave/SuperPowerModeManager;->showOpenSuperPowerSaveModeAnim()V

    return-void
.end method

.method public static synthetic access$400(Lcom/android/launcher/powersave/SuperPowerModeManager;Ljava/lang/Runnable;J)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher/powersave/SuperPowerModeManager;->runOnWorkerThreadDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public static synthetic access$500(Lcom/android/launcher/powersave/SuperPowerModeManager;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/powersave/SuperPowerModeManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/android/launcher/powersave/SuperPowerModeManager;Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/powersave/SuperPowerModeManager;->exitSuperPowerMode(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic access$900(Lcom/android/launcher/powersave/SuperPowerModeManager;)Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/powersave/SuperPowerModeManager;->mOpenanimLayout:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$902(Lcom/android/launcher/powersave/SuperPowerModeManager;Landroid/view/View;)Landroid/view/View;
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/powersave/SuperPowerModeManager;->mOpenanimLayout:Landroid/view/View;

    return-object p1
.end method

.method public static synthetic b(Lcom/android/launcher/powersave/SuperPowerModeManager;Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/powersave/SuperPowerModeManager;->lambda$exit$0(Landroid/content/Context;)V

    return-void
.end method

.method private static disableMode(Landroid/content/Context;Landroid/content/ComponentName;)V
    .registers 4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    return-void
.end method

.method private static enableMode(Landroid/content/Context;Landroid/content/ComponentName;)V
    .registers 3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, v0}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    return-void
.end method

.method private exitSuperPowerMode(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher/powersave/SuperPowerModeManager;->exitSuperPowerMode(Landroid/content/Context;Z)V

    return-void
.end method

.method private exitSuperPowerMode(Landroid/content/Context;Z)V
    .registers 7

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string v0, "exitSuperPowerMode : "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher/powersave/SuperPowerModeManager;->isInSuperPowerMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SuperPowerModeManager"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c
    invoke-virtual {p0, p1}, Lcom/android/launcher/powersave/SuperPowerModeManager;->resetDataState(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/launcher/powersave/utils/SuperPowerSaveUtils;->disableRotateSuggestions(Landroid/content/Context;Z)V

    iget-object v1, p0, Lcom/android/launcher/powersave/SuperPowerModeManager;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/launcher/powersave/SuperPowerModeManager;->UNIHOME_COMPONENT:Landroid/content/ComponentName;

    invoke-static {v1, v2}, Lcom/android/launcher/powersave/SuperPowerModeManager;->enableMode(Landroid/content/Context;Landroid/content/ComponentName;)V

    iget-object v1, p0, Lcom/android/launcher/powersave/SuperPowerModeManager;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/launcher/powersave/SuperPowerModeManager;->POWERSAVEHOME_COMPONENT:Landroid/content/ComponentName;

    invoke-static {v1, v3}, Lcom/android/launcher/powersave/SuperPowerModeManager;->disableMode(Landroid/content/Context;Landroid/content/ComponentName;)V

    invoke-static {p1}, Lcom/android/launcher/powersave/utils/SuperPowerSaveUtils;->recoveryDefaultHome(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_38

    goto :goto_39

    :cond_38
    move-object v2, v1

    :goto_39
    invoke-direct {p0, v0}, Lcom/android/launcher/powersave/SuperPowerModeManager;->notifyDefaultComponentChanged(Z)V

    xor-int/lit8 p2, p2, 0x1

    invoke-direct {p0, p1, v2, p2}, Lcom/android/launcher/powersave/SuperPowerModeManager;->moveToHomeActivity(Landroid/content/Context;Landroid/content/ComponentName;Z)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/launcher/powersave/SuperPowerModeManager;
    .registers 3

    sget-object v0, Lcom/android/launcher/powersave/SuperPowerModeManager;->sInstance:Lcom/android/launcher/powersave/SuperPowerModeManager;

    if-nez v0, :cond_17

    const-class v0, Lcom/android/launcher/powersave/SuperPowerModeManager;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/android/launcher/powersave/SuperPowerModeManager;->sInstance:Lcom/android/launcher/powersave/SuperPowerModeManager;

    if-nez v1, :cond_12

    new-instance v1, Lcom/android/launcher/powersave/SuperPowerModeManager;

    invoke-direct {v1, p0}, Lcom/android/launcher/powersave/SuperPowerModeManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/launcher/powersave/SuperPowerModeManager;->sInstance:Lcom/android/launcher/powersave/SuperPowerModeManager;

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
    sget-object p0, Lcom/android/launcher/powersave/SuperPowerModeManager;->sInstance:Lcom/android/launcher/powersave/SuperPowerModeManager;

    return-object p0
.end method

.method private getSuperPowerEnterState()Z
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/powersave/SuperPowerModeManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher/powersave/utils/SuperPowerSaveUtils;->checkSystemUser(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    :cond_a
    iget-object p0, p0, Lcom/android/launcher/powersave/SuperPowerModeManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "super_powersave_launcher_enter"

    invoke-static {p0, v0, v1, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1b

    move v1, v0

    :cond_1b
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Get SuperPower mode state: inSuperPowerMode: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SuperPowerModeManager"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private getSuperPowerModeState()Z
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/powersave/SuperPowerModeManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher/powersave/utils/SuperPowerSaveUtils;->checkSystemUser(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    :cond_a
    iget-object p0, p0, Lcom/android/launcher/powersave/SuperPowerModeManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "super_powersave_mode_state"

    invoke-static {p0, v0, v1, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1b

    move v1, v0

    :cond_1b
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getSuperPowerModeState, inSuperPowerMode = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SuperPowerModeManager"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private getSuperPowerSaveModeLauncher()Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;
    .registers 3

    iget-object p0, p0, Lcom/android/launcher/powersave/SuperPowerModeManager;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object p0

    if-eqz p0, :cond_17

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherModel;->getSuperPowerSaveModeLauncher()Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherModel;->getSuperPowerSaveModeLauncher()Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;

    move-result-object p0

    goto :goto_18

    :cond_17
    const/4 p0, 0x0

    :goto_18
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_34

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSuperPowerSaveModeLauncher, activity = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SuperPowerModeManager"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_34
    return-object p0
.end method

.method private synthetic lambda$exit$0(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/powersave/SuperPowerModeManager;->exitSuperPowerMode(Landroid/content/Context;)V

    return-void
.end method

.method private synthetic lambda$showOpenSuperPowerSaveModeAnim$1(Landroid/animation/ValueAnimator;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/powersave/SuperPowerModeManager;->mOpenanimLayout:Landroid/view/View;

    if-eqz p0, :cond_11

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_11
    return-void
.end method

.method private moveToHomeActivity(Landroid/content/Context;Landroid/content/ComponentName;)V
    .registers 4

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher/powersave/SuperPowerModeManager;->moveToHomeActivity(Landroid/content/Context;Landroid/content/ComponentName;Z)V

    return-void
.end method

.method private moveToHomeActivity(Landroid/content/Context;Landroid/content/ComponentName;Z)V
    .registers 5

    :try_start_0
    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string p2, "android.intent.category.HOME"

    invoke-virtual {p0, p2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p2, 0x34000000

    invoke-virtual {p0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo p2, "super_powersave_launcher_exit"

    invoke-virtual {p0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1e

    goto :goto_26

    :catch_1e
    const-string p0, "SuperPowerModeManager"

    const-string/jumbo p1, "moveToHomeActivity failed."

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_26
    return-void
.end method

.method private final notifyDefaultComponentChanged(Z)V
    .registers 3

    const-string p0, "SuperPowerModeManager"

    const-string/jumbo v0, "notifyDefaultComponentChanged"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/oplus/quickstep/events/EventBus;->getDefault()Lcom/oplus/quickstep/events/EventBus;

    move-result-object p0

    new-instance v0, Lcom/oplus/quickstep/events/ui/SuperPowerModeSaveEvent;

    invoke-direct {v0, p1}, Lcom/oplus/quickstep/events/ui/SuperPowerModeSaveEvent;-><init>(Z)V

    invoke-virtual {p0, v0}, Lcom/oplus/quickstep/events/EventBus;->post(Lcom/oplus/quickstep/events/EventBus$Event;)V

    return-void
.end method

.method private runOnWorkerThreadDelayed(Ljava/lang/Runnable;J)V
    .registers 4

    sget-object p0, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {p0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private setSuperPowerModeState(Z)V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher/powersave/SuperPowerModeManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher/powersave/utils/SuperPowerSaveUtils;->checkSystemUser(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    iget-object p0, p0, Lcom/android/launcher/powersave/SuperPowerModeManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string/jumbo v1, "super_powersave_mode_state"

    invoke-static {p0, v1, p1, v0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method private showOpenSuperPowerSaveModeAnim()V
    .registers 13

    iget-object v0, p0, Lcom/android/launcher/powersave/SuperPowerModeManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    const-string v1, "SuperPowerModeManager"

    if-nez v0, :cond_16

    const-string/jumbo p0, "showOpenSuperPowerSaveModeAnim windowManager is null"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_16
    iget-object v2, p0, Lcom/android/launcher/powersave/SuperPowerModeManager;->mOpenanimLayout:Landroid/view/View;

    const/4 v3, 0x0

    if-eqz v2, :cond_20

    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iput-object v3, p0, Lcom/android/launcher/powersave/SuperPowerModeManager;->mOpenanimLayout:Landroid/view/View;

    :cond_20
    iget-object v2, p0, Lcom/android/launcher/powersave/SuperPowerModeManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v4, 0x7f0d01e2

    invoke-virtual {v2, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher/powersave/SuperPowerModeManager;->mOpenanimLayout:Landroid/view/View;

    const v4, 0x7f0a00c7

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/launcher/powersave/SuperPowerModeManager;->mOpenanimLayout:Landroid/view/View;

    const v5, 0x7f0a0596

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/launcher/powersave/SuperPowerModeManager;->mOpenanimLayout:Landroid/view/View;

    const v6, 0x7f0a01fb

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/oplus/anim/EffectiveAnimationView;

    iget-object v6, p0, Lcom/android/launcher/powersave/SuperPowerModeManager;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/launcher/powersave/utils/SuperPowerSaveUtils;->getSuperPowerModeAvailableTime(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v6, "OpenSuperPowerSaveBatteryIconAnim.json"

    invoke-virtual {v5, v6}, Lcom/oplus/anim/EffectiveAnimationView;->setAnimation(Ljava/lang/String;)V

    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v6}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/16 v7, 0x7f6

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0x30

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget v7, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v8, 0xe000700

    or-int/2addr v7, v8

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v7, 0x1

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->format:I

    const/4 v8, 0x4

    iput v8, v6, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    iget-object v8, p0, Lcom/android/launcher/powersave/SuperPowerModeManager;->mOpenanimLayout:Landroid/view/View;

    invoke-interface {v0, v8, v6}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string/jumbo v6, "showOpenSuperPowerSaveModeAnim: start open SuperPowerSaveMode anim"

    invoke-static {v1, v6}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v6, 0x0

    iget-object v8, p0, Lcom/android/launcher/powersave/SuperPowerModeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f060424

    invoke-virtual {v8, v9, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v8

    aput v8, v1, v6

    iget-object v6, p0, Lcom/android/launcher/powersave/SuperPowerModeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f060423

    invoke-virtual {v6, v8, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    aput v3, v1, v7

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofArgb([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v6, 0x29a

    invoke-virtual {v1, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v3, Landroid/view/animation/PathInterpolator;

    const v6, 0x3e99999a  # 0.3f

    const/4 v7, 0x0

    const v8, 0x3dcccccd  # 0.1f

    const/high16 v9, 0x3f800000  # 1.0f

    invoke-direct {v3, v6, v7, v8, v9}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v3, Lcom/android/launcher/batchdrag/a;

    invoke-direct {v3, p0}, Lcom/android/launcher/batchdrag/a;-><init>(Lcom/android/launcher/powersave/SuperPowerModeManager;)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    invoke-virtual {v5}, Lcom/oplus/anim/EffectiveAnimationView;->playAnimation()V

    invoke-virtual {v4}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v3, Landroid/view/animation/PathInterpolator;

    invoke-direct {v3, v7, v7, v8, v9}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v3, 0x14d

    invoke-virtual {v1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v10, 0x0

    invoke-virtual {v1, v10, v11}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    invoke-virtual {v2}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const v2, 0x3f0ccccd  # 0.55f

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Landroid/view/animation/PathInterpolator;

    invoke-direct {v2, v7, v7, v8, v9}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x53

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    new-instance v1, Lcom/android/launcher/powersave/SuperPowerModeManager$2;

    invoke-direct {v1, p0, v0}, Lcom/android/launcher/powersave/SuperPowerModeManager$2;-><init>(Lcom/android/launcher/powersave/SuperPowerModeManager;Landroid/view/WindowManager;)V

    invoke-virtual {v5, v1}, Lcom/oplus/anim/EffectiveAnimationView;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private toJsonInfos(Ljava/util/List;)Ljava/lang/String;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher/powersave/model/SuperPowerSaveItemInfo;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Lcom/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/google/gson/JsonArray;-><init>()V

    if-eqz p1, :cond_69

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_e

    goto :goto_69

    :cond_e
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x6

    const/4 v4, 0x0

    if-le v2, v3, :cond_1f

    invoke-interface {p1, v4, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    :cond_1f
    move v2, v4

    :goto_20
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4c

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/data/AppInfo;

    invoke-virtual {v3}, Lcom/android/launcher3/model/data/AppInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v5

    if-eqz v5, :cond_49

    new-instance v5, Lcom/android/launcher/powersave/SuperPowerModeManager$SuperPowerSavePackageUserKey;

    invoke-virtual {v3}, Lcom/android/launcher3/model/data/AppInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iget-object v3, v3, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    const/4 v7, 0x0

    invoke-direct {v5, p0, v6, v3, v7}, Lcom/android/launcher/powersave/SuperPowerModeManager$SuperPowerSavePackageUserKey;-><init>(Lcom/android/launcher/powersave/SuperPowerModeManager;Ljava/lang/String;ILcom/android/launcher/powersave/SuperPowerModeManager$1;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_49
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    :cond_4c
    :goto_4c
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-ge v4, p0, :cond_64

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher/powersave/SuperPowerModeManager$SuperPowerSavePackageUserKey;

    invoke-static {p0}, Lcom/android/launcher/powersave/SuperPowerModeManager$SuperPowerSavePackageUserKey;->access$800(Lcom/android/launcher/powersave/SuperPowerModeManager$SuperPowerSavePackageUserKey;)Lcom/google/gson/JsonObject;

    move-result-object p0

    if-eqz p0, :cond_61

    invoke-virtual {v0, p0}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    :cond_61
    add-int/lit8 v4, v4, 0x1

    goto :goto_4c

    :cond_64
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_69
    :goto_69
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "toJsonInfos, appInfos = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SuperPowerModeManager"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addModelStateListener(Lcom/android/launcher/powersave/SuperPowerModeManager$OnModelStateUpdate;)V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher/powersave/SuperPowerModeManager;->mModelStateListeners:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/launcher/powersave/SuperPowerModeManager;->mModelStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    iget-object p0, p0, Lcom/android/launcher/powersave/SuperPowerModeManager;->mModelStateListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public checkedException(Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0}, Lcom/android/launcher/powersave/SuperPowerModeManager;->getSuperPowerModeState()Z

    move-result v0

    if-nez v0, :cond_2d

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.launcher"

    const-string v2, "com.android.launcher.Launcher"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2d

    const-string v0, "SuperPowerModeManager"

    const-string v2, "launcher start error....."

    invoke-static {v0, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher/powersave/SuperPowerModeManager;->mInSuperPowerMode:Z

    invoke-direct {p0, v0}, Lcom/android/launcher/powersave/SuperPowerModeManager;->setSuperPowerModeState(Z)V

    invoke-virtual {p0, v0}, Lcom/android/launcher/powersave/SuperPowerModeManager;->setSuperPowerEnterState(Z)V

    invoke-direct {p0, p1, v1}, Lcom/android/launcher/powersave/SuperPowerModeManager;->exitSuperPowerMode(Landroid/content/Context;Z)V

    :cond_2d
    return-void
.end method

.method public enterSuperPowerMode(Landroid/content/Context;)V
    .registers 5

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string v0, "enterSuperPowerMode, isInSuperPowerMode = "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher/powersave/SuperPowerModeManager;->isInSuperPowerMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SuperPowerModeManager"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/launcher/powersave/utils/SuperPowerSaveUtils;->disableRotateSuggestions(Landroid/content/Context;Z)V

    invoke-static {p1}, Lcom/android/launcher/powersave/utils/SuperPowerSaveUtils;->saveDefaultHomeComponent(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/launcher/powersave/SuperPowerModeManager;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/launcher/powersave/SuperPowerModeManager;->UNIHOME_COMPONENT:Landroid/content/ComponentName;

    invoke-static {v1, v2}, Lcom/android/launcher/powersave/SuperPowerModeManager;->disableMode(Landroid/content/Context;Landroid/content/ComponentName;)V

    iget-object v1, p0, Lcom/android/launcher/powersave/SuperPowerModeManager;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/launcher/powersave/SuperPowerModeManager;->POWERSAVEHOME_COMPONENT:Landroid/content/ComponentName;

    invoke-static {v1, v2}, Lcom/android/launcher/powersave/SuperPowerModeManager;->enableMode(Landroid/content/Context;Landroid/content/ComponentName;)V

    invoke-direct {p0, v0}, Lcom/android/launcher/powersave/SuperPowerModeManager;->notifyDefaultComponentChanged(Z)V

    invoke-static {p1, v2}, Lcom/android/launcher/powersave/utils/SuperPowerSaveUtils;->setDefaultHomeByComponent(Landroid/content/Context;Landroid/content/ComponentName;)V

    invoke-direct {p0, p1, v2}, Lcom/android/launcher/powersave/SuperPowerModeManager;->moveToHomeActivity(Landroid/content/Context;Landroid/content/ComponentName;)V

    return-void
.end method

.method public exit(Landroid/content/Context;)V
    .registers 6

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    const-string v1, "SuperPowerModeManager"

    if-eqz v0, :cond_1c

    const-string v0, "exit start = "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher/powersave/SuperPowerModeManager;->isInSuperPowerMode()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher/powersave/SuperPowerModeManager;->mInSuperPowerMode:Z

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v2

    if-eqz v2, :cond_39

    const-string v2, "exit, mInSuperPowerMode = "

    invoke-static {v2}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/launcher/powersave/SuperPowerModeManager;->isInSuperPowerMode()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_39
    invoke-direct {p0, v0}, Lcom/android/launcher/powersave/SuperPowerModeManager;->setSuperPowerModeState(Z)V

    invoke-virtual {p0, v0}, Lcom/android/launcher/powersave/SuperPowerModeManager;->setSuperPowerEnterState(Z)V

    new-instance v0, Lcom/android/launcher/powersave/b;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher/powersave/b;-><init>(Lcom/android/launcher/powersave/SuperPowerModeManager;Landroid/content/Context;)V

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/launcher/powersave/SuperPowerModeManager;->runOnWorkerThreadDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public exitable()Z
    .registers 10

    iget-object v0, p0, Lcom/android/launcher/powersave/SuperPowerModeManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroidx/core/os/UserManagerCompat;->isUserUnlocked(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "exitable, isUserUnlocked = "

    const-string v2, "SuperPowerModeManager"

    invoke-static {v1, v0, v2}, Lcom/android/common/rus/a;->a(Ljava/lang/String;ZLjava/lang/String;)V

    const/4 v1, 0x0

    if-nez v0, :cond_11

    return v1

    :cond_11
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/launcher/powersave/SuperPowerModeManager;->mUnlockLastTime:J

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-nez v0, :cond_26

    const-string v0, "exitable, mUnlockLastTime = 0."

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher/powersave/SuperPowerModeManager;->recordUnlockTime()V

    return v1

    :cond_26
    sub-long v5, v3, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    const-string v0, "exitable, mUnlockLastTime = "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v7, p0, Lcom/android/launcher/powersave/SuperPowerModeManager;->mUnlockLastTime:J

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ", curTime = "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ", duration = "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, 0x1388

    cmp-long p0, v5, v2

    if-lez p0, :cond_55

    const/4 v1, 0x1

    :cond_55
    return v1
.end method

.method public getModelStateListeners()[Lcom/android/launcher/powersave/SuperPowerModeManager$OnModelStateUpdate;
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/powersave/SuperPowerModeManager;->mModelStateListeners:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_3
    iget-object p0, p0, Lcom/android/launcher/powersave/SuperPowerModeManager;->mModelStateListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/launcher/powersave/SuperPowerModeManager$OnModelStateUpdate;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/android/launcher/powersave/SuperPowerModeManager$OnModelStateUpdate;

    monitor-exit v0

    return-object p0

    :catchall_13
    move-exception p0

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw p0
.end method

.method public getSuperPowerList()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/powersave/SuperPowerModeManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher/powersave/utils/SuperPowerSaveUtils;->checkSystemUser(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string p0, ""

    return-object p0

    :cond_b
    iget-object p0, p0, Lcom/android/launcher/powersave/SuperPowerModeManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string/jumbo v1, "super_power_save_desktop_app_list"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public initEnableActivity()V
    .registers 3

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string v0, "initEnableActivity , isInSuperPowerMode = "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher/powersave/SuperPowerModeManager;->isInSuperPowerMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SuperPowerModeManager"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c
    invoke-virtual {p0}, Lcom/android/launcher/powersave/SuperPowerModeManager;->isInSuperPowerMode()Z

    move-result v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/android/launcher/powersave/SuperPowerModeManager;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/launcher/powersave/SuperPowerModeManager;->POWERSAVEHOME_COMPONENT:Landroid/content/ComponentName;

    invoke-static {v0, v1}, Lcom/android/launcher/powersave/SuperPowerModeManager;->enableMode(Landroid/content/Context;Landroid/content/ComponentName;)V

    iget-object p0, p0, Lcom/android/launcher/powersave/SuperPowerModeManager;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/android/launcher/powersave/SuperPowerModeManager;->UNIHOME_COMPONENT:Landroid/content/ComponentName;

    invoke-static {p0, v0}, Lcom/android/launcher/powersave/SuperPowerModeManager;->disableMode(Landroid/content/Context;Landroid/content/ComponentName;)V

    goto :goto_3f

    :cond_31
    iget-object v0, p0, Lcom/android/launcher/powersave/SuperPowerModeManager;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/launcher/powersave/SuperPowerModeManager;->UNIHOME_COMPONENT:Landroid/content/ComponentName;

    invoke-static {v0, v1}, Lcom/android/launcher/powersave/SuperPowerModeManager;->enableMode(Landroid/content/Context;Landroid/content/ComponentName;)V

    iget-object p0, p0, Lcom/android/launcher/powersave/SuperPowerModeManager;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/android/launcher/powersave/SuperPowerModeManager;->POWERSAVEHOME_COMPONENT:Landroid/content/ComponentName;

    invoke-static {p0, v0}, Lcom/android/launcher/powersave/SuperPowerModeManager;->disableMode(Landroid/content/Context;Landroid/content/ComponentName;)V

    :goto_3f
    return-void
.end method

.method public isInSuperPowerMode()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher/powersave/SuperPowerModeManager;->mInSuperPowerMode:Z

    return p0
.end method

.method public isIsIconBrightBackground()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher/powersave/SuperPowerModeManager;->mIsIconBrightBackground:Z

    return p0
.end method

.method public recordUnlockTime()V
    .registers 3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/launcher/powersave/SuperPowerModeManager;->mUnlockLastTime:J

    return-void
.end method

.method public registerSuperPowerModeObserver()V
    .registers 5

    const-string v0, "SuperPowerModeManager"

    const-string/jumbo v1, "registerSuperPowerModeObserver."

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_8
    iget-object v0, p0, Lcom/android/launcher/powersave/SuperPowerModeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "super_powersave_launcher_enter"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/launcher/powersave/SuperPowerModeManager;->mSuperPowerModeEnterObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher/powersave/SuperPowerModeManager;->mHasRegisterObserver:Z
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1e} :catch_1f

    goto :goto_23

    :catch_1f
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_23
    return-void
.end method

.method public removeModelStateListener(Lcom/android/launcher/powersave/SuperPowerModeManager$OnModelStateUpdate;)V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/powersave/SuperPowerModeManager;->mModelStateListeners:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_3
    iget-object p0, p0, Lcom/android/launcher/powersave/SuperPowerModeManager;->mModelStateListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public resetDataState(Landroid/content/Context;)V
    .registers 4

    instance-of v0, p1, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;

    if-eqz v0, :cond_7

    check-cast p1, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;

    goto :goto_b

    :cond_7
    invoke-direct {p0}, Lcom/android/launcher/powersave/SuperPowerModeManager;->getSuperPowerSaveModeLauncher()Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;

    move-result-object p1

    :goto_b
    const-string v0, "SuperPowerModeManager"

    const-string v1, "checkAndResetSuperPowerLauncherState"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_18

    invoke-virtual {p1}, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->resetDataState()V

    goto :goto_44

    :cond_18
    const-string p1, "checkAndResetSuperPowerLauncherState, the exit activity must clear data state! or the default launcher may error layout., isInSuperPowerModeState = "

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-direct {p0}, Lcom/android/launcher/powersave/SuperPowerModeManager;->getSuperPowerEnterState()Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", getSuperPowerModeState = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/launcher/powersave/SuperPowerModeManager;->getSuperPowerModeState()Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isInSuperPowerMode = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/launcher/powersave/SuperPowerModeManager;->isInSuperPowerMode()Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_44
    return-void
.end method

.method public resetErrorState()V
    .registers 3

    iget-object p0, p0, Lcom/android/launcher/powersave/SuperPowerModeManager;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "super_power_save_exit_system_count_key"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/launcher/powersave/utils/SuperPowerSaveUtils;->setSuperpowerErrorCount(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public resetLauncherIfNecessary()V
    .registers 8

    iget-object v0, p0, Lcom/android/launcher/powersave/SuperPowerModeManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "super_power_save_exit_system_count_key"

    invoke-static {v0, v1}, Lcom/android/launcher/powersave/utils/SuperPowerSaveUtils;->getSuperpowerErrorCount(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const-string v2, "exitLauncherSystem,  isInSuperPowerModeState = "

    invoke-static {v2}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/launcher/powersave/SuperPowerModeManager;->getSuperPowerEnterState()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " getSuperPowerModeState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/launcher/powersave/SuperPowerModeManager;->getSuperPowerModeState()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", isInSuperPowerMode = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/launcher/powersave/SuperPowerModeManager;->isInSuperPowerMode()Z

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", errorCount = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/Throwable;

    const-string v6, "exitLauncherSystem"

    invoke-direct {v5, v6}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    const-string v6, "SuperPowerModeManager"

    invoke-static {v6, v2, v5}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v2, 0x2

    if-ge v0, v2, :cond_51

    iget-object p0, p0, Lcom/android/launcher/powersave/SuperPowerModeManager;->mContext:Landroid/content/Context;

    add-int/lit8 v0, v0, 0x1

    invoke-static {p0, v1, v0}, Lcom/android/launcher/powersave/utils/SuperPowerSaveUtils;->setSuperpowerErrorCount(Landroid/content/Context;Ljava/lang/String;I)V

    return-void

    :cond_51
    iget-object v0, p0, Lcom/android/launcher/powersave/SuperPowerModeManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/launcher/powersave/utils/SuperPowerSaveUtils;->setSuperpowerErrorCount(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/launcher/powersave/SuperPowerModeManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/launcher/powersave/SuperPowerModeManager;->exit(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "the error activity in the different SuperPower\'s state!  isInSuperPowerModeState = "

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/launcher/powersave/SuperPowerModeManager;->getSuperPowerEnterState()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/launcher/powersave/SuperPowerModeManager;->getSuperPowerModeState()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/launcher/powersave/SuperPowerModeManager;->isInSuperPowerMode()Z

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setIconBrightBackground(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher/powersave/SuperPowerModeManager;->mIsIconBrightBackground:Z

    return-void
.end method

.method public setSuperPowerEnterState(Z)V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher/powersave/SuperPowerModeManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher/powersave/utils/SuperPowerSaveUtils;->checkSystemUser(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    iget-object p0, p0, Lcom/android/launcher/powersave/SuperPowerModeManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string/jumbo v1, "super_powersave_launcher_enter"

    invoke-static {p0, v1, p1, v0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method public setSuperPowerList(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher/powersave/model/SuperPowerSaveItemInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher/powersave/SuperPowerModeManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher/powersave/utils/SuperPowerSaveUtils;->checkSystemUser(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    if-nez p1, :cond_1c

    new-instance p0, Ljava/lang/Throwable;

    const-string/jumbo p1, "setSuperPowerList"

    invoke-direct {p0, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    const-string p1, "SuperPowerModeManager"

    const-string/jumbo v0, "setSuperPowerList, workSpaceAppList is null."

    invoke-static {p1, v0, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_1c
    iget-object v0, p0, Lcom/android/launcher/powersave/SuperPowerModeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/android/launcher/powersave/SuperPowerModeManager;->toJsonInfos(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    const-string/jumbo v1, "super_power_save_desktop_app_list"

    invoke-static {v0, v1, p0, p1}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    return-void
.end method

.method public stopOpenSuperPowerAnimIfNeeded()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher/powersave/SuperPowerModeManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    const-string v1, "SuperPowerModeManager"

    if-nez v0, :cond_16

    const-string/jumbo p0, "stopOpenSuperPowerAnimIfNeeded windowManager is null"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_16
    iget-object v2, p0, Lcom/android/launcher/powersave/SuperPowerModeManager;->mOpenanimLayout:Landroid/view/View;

    if-eqz v2, :cond_2e

    invoke-virtual {v2}, Landroid/view/View;->isShown()Z

    move-result v2

    if-eqz v2, :cond_2e

    const-string/jumbo v2, "remove open anim layout"

    invoke-static {v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher/powersave/SuperPowerModeManager;->mOpenanimLayout:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher/powersave/SuperPowerModeManager;->mOpenanimLayout:Landroid/view/View;

    :cond_2e
    return-void
.end method

.method public unregisterSuperPowerModeObserver()V
    .registers 3

    iget-boolean v0, p0, Lcom/android/launcher/powersave/SuperPowerModeManager;->mHasRegisterObserver:Z

    if-eqz v0, :cond_17

    :try_start_4
    iget-object v0, p0, Lcom/android/launcher/powersave/SuperPowerModeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher/powersave/SuperPowerModeManager;->mSuperPowerModeEnterObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_f} :catch_10

    goto :goto_14

    :catch_10
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher/powersave/SuperPowerModeManager;->mHasRegisterObserver:Z

    :cond_17
    return-void
.end method
