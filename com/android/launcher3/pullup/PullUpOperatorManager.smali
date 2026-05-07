.class public Lcom/android/launcher3/pullup/PullUpOperatorManager;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/pullup/IPullUpOperatorItf;
.implements Lcom/android/launcher/ILauncherLifecycleObserver;


# static fields
.field private static volatile sInstance:Lcom/android/launcher3/pullup/PullUpOperatorManager;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/launcher3/pullup/PullUpOperatorManager;
    .registers 2

    sget-object v0, Lcom/android/launcher3/pullup/PullUpOperatorManager;->sInstance:Lcom/android/launcher3/pullup/PullUpOperatorManager;

    if-nez v0, :cond_17

    const-class v0, Lcom/android/launcher3/pullup/PullUpOperatorManager;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/android/launcher3/pullup/PullUpOperatorManager;->sInstance:Lcom/android/launcher3/pullup/PullUpOperatorManager;

    if-nez v1, :cond_12

    new-instance v1, Lcom/android/launcher3/pullup/PullUpOperatorManager;

    invoke-direct {v1}, Lcom/android/launcher3/pullup/PullUpOperatorManager;-><init>()V

    sput-object v1, Lcom/android/launcher3/pullup/PullUpOperatorManager;->sInstance:Lcom/android/launcher3/pullup/PullUpOperatorManager;

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
    sget-object v0, Lcom/android/launcher3/pullup/PullUpOperatorManager;->sInstance:Lcom/android/launcher3/pullup/PullUpOperatorManager;

    return-object v0
.end method


# virtual methods
.method public checkNewsPageIsExit(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 4

    return-void
.end method

.method public fastPullUp(F)V
    .registers 2

    return-void
.end method

.method public getResourceId(I)I
    .registers 2

    const/4 p0, -0x1

    return p0
.end method

.method public getShimmerValue()F
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public init(Lcom/android/launcher/Launcher;)V
    .registers 2

    return-void
.end method

.method public initPullUpCategoryView(Landroidx/preference/PreferenceScreen;)Lcom/coui/appcompat/preference/COUISwitchPreference;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public isAnimating()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public isCanShowUpArrow()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isEnableUpArrow()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isFirstUsePullUpMode()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isNormalState()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isOpenPullUpMode()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportPullUp()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public recoveryData(Landroid/content/Context;)V
    .registers 2

    return-void
.end method

.method public refreshPullUpOpenState()V
    .registers 1

    return-void
.end method

.method public resetViewState()V
    .registers 1

    return-void
.end method

.method public startShimmer()V
    .registers 1

    return-void
.end method

.method public stopShimmer()V
    .registers 1

    return-void
.end method

.method public updateAppInfo(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .registers 2

    return-void
.end method
