.class public Lcom/android/launcher/filter/GameAccelerationBoxHelper;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final ACTION_COSA_GAME_LIST_CHANGE:Ljava/lang/String; = "oplus.intent.action.COSA_GAME_LIST_CHANGE"

.field private static final ACTION_GET_GAME_LIST:Ljava/lang/String; = "get_game_list"

.field private static final ACTION_LAUNCHER_GAME_FOLDER_CREATED:Ljava/lang/String; = "com.android.launcher.action.LAUNCHER_GAME_FOLDER_CREATED"

.field private static final FLAG_HIDE_GAME_ICON_GAME_APP:I = 0x1

.field private static final FLAG_HIDE_GAME_ICON_GAME_BOX:I = 0x2

.field private static final GAME_SPACE_DEFAULT_PACKAGE_NAME:Ljava/lang/String; = "com.nearme.gamecenter"

.field private static final INVALID_SETTING_VALUE:I = -0x1

.field private static final KEY_GAME_BOX_COMPONENT_NAME:Ljava/lang/String; = "game_box_component_name"

.field private static final KEY_GAME_LIST:Ljava/lang/String; = "game_list"

.field private static final KEY_HIDE_GAME_PKG_LIST:Ljava/lang/String; = "hide_pkg_list"

.field private static final KEY_TYPE:Ljava/lang/String; = "type"

.field private static final METHOD_GET_HIDE_PKG_LIST:Ljava/lang/String; = "getHidePkgList"

.field private static final NAME:Ljava/lang/String; = "com.oplus.cosa.exported"

.field private static final PREF_APP_SPLIT_CHAR:Ljava/lang/String; = "/"

.field private static final PREF_LOCAL_GAME_SPACE_PACKAGENAME:Ljava/lang/String; = "pref_local_game_space_packagename"

.field private static final PREF_LOCAL_HIDDEN_GAME_APPS:Ljava/lang/String; = "pref_local_hidden_game_apps"

.field private static final SETTING_HIDE_GAME_ICON_MODE:Ljava/lang/String; = "hide_game_icon_mode_flag"

.field private static final TAG:Ljava/lang/String; = "GameAccelerationBoxHelper"

.field private static final TYPE_ALL:I = 0x0

.field private static final TYPE_ONLY_USER_MARK:I = 0x2

.field private static final TYPE_ORIGIN:I = 0x1

.field private static final URI_GAME_SPACE_APP_LIST:Landroid/net/Uri;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static volatile sInstance:Lcom/android/launcher/filter/GameAccelerationBoxHelper;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mGameSpacePackageName:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final mGameSpaceSettingsObserver:Landroid/database/ContentObserver;

.field private final mHiddenGameApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHideGameAppIcon:Z

.field private final mHideGameAppIconListChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mIsGameSpaceHidden:Z

.field private mNewGameFolderCreated:Z

.field private mShouldHideGameApps:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-string v0, "content://com.oplus.cosa.provider.InterfaceProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->URI_GAME_SPACE_APP_LIST:Landroid/net/Uri;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->sInstance:Lcom/android/launcher/filter/GameAccelerationBoxHelper;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->mHiddenGameApps:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->mGameSpacePackageName:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->mIsGameSpaceHidden:Z

    iput-boolean v0, p0, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->mShouldHideGameApps:Z

    iput-boolean v0, p0, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->mNewGameFolderCreated:Z

    iput-boolean v0, p0, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->mHideGameAppIcon:Z

    new-instance v0, Lcom/android/launcher/filter/GameAccelerationBoxHelper$1;

    new-instance v1, Landroid/os/Handler;

    sget-object v2, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v2}, Lcom/android/launcher3/util/LooperExecutor;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/android/launcher/filter/GameAccelerationBoxHelper$1;-><init>(Lcom/android/launcher/filter/GameAccelerationBoxHelper;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->mGameSpaceSettingsObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/launcher/filter/GameAccelerationBoxHelper$2;

    invoke-direct {v0, p0}, Lcom/android/launcher/filter/GameAccelerationBoxHelper$2;-><init>(Lcom/android/launcher/filter/GameAccelerationBoxHelper;)V

    iput-object v0, p0, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->mHideGameAppIconListChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher/filter/GameAccelerationBoxHelper;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->lambda$changeGameAppsIconState$0()V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/launcher/filter/GameAccelerationBoxHelper;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$100(Landroid/content/Context;)I
    .registers 1

    invoke-static {p0}, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->getHideGameIconModeInSetting(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public static synthetic access$200(Lcom/android/launcher/filter/GameAccelerationBoxHelper;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->mHideGameAppIcon:Z

    return p0
.end method

.method public static synthetic access$202(Lcom/android/launcher/filter/GameAccelerationBoxHelper;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->mHideGameAppIcon:Z

    return p1
.end method

.method public static synthetic access$300(Lcom/android/launcher/filter/GameAccelerationBoxHelper;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->mIsGameSpaceHidden:Z

    return p0
.end method

.method public static synthetic access$302(Lcom/android/launcher/filter/GameAccelerationBoxHelper;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->mIsGameSpaceHidden:Z

    return p1
.end method

.method public static synthetic access$400(Lcom/android/launcher/filter/GameAccelerationBoxHelper;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->mShouldHideGameApps:Z

    return p0
.end method

.method public static synthetic access$402(Lcom/android/launcher/filter/GameAccelerationBoxHelper;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->mShouldHideGameApps:Z

    return p1
.end method

.method public static synthetic access$500(Landroid/content/Context;)Landroid/os/Bundle;
    .registers 1

    invoke-static {p0}, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->getBundleFromGameSpace(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$600(Lcom/android/launcher/filter/GameAccelerationBoxHelper;Landroid/os/Bundle;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->changeGameSpaceIconState(Landroid/os/Bundle;Z)V

    return-void
.end method

.method public static synthetic access$700(Lcom/android/launcher/filter/GameAccelerationBoxHelper;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->changeGameAppsIconState()V

    return-void
.end method

.method public static synthetic access$800(Lcom/android/launcher/filter/GameAccelerationBoxHelper;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->showAllGameAppIcon()V

    return-void
.end method

.method public static synthetic access$900(Lcom/android/launcher/filter/GameAccelerationBoxHelper;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->saveHideGameAppsToSharedPref()V

    return-void
.end method

.method private changeGameAppsIconState()V
    .registers 3

    sget-object v0, Lcom/oplus/util/OplusExecutors;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Landroidx/constraintlayout/helper/widget/a;

    invoke-direct {v1, p0}, Landroidx/constraintlayout/helper/widget/a;-><init>(Lcom/android/launcher/filter/GameAccelerationBoxHelper;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private changeGameSpaceIconState(Landroid/os/Bundle;Z)V
    .registers 7

    iget-object v0, p0, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->mGameSpacePackageName:Ljava/lang/String;

    if-nez v0, :cond_f

    invoke-static {p1}, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->getGameSpacePackageName(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->mGameSpacePackageName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->saveGameSpacePackages(Landroid/content/Context;Ljava/lang/String;)V

    :cond_f
    iget-object p1, p0, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->mGameSpacePackageName:Ljava/lang/String;

    if-eqz p1, :cond_52

    iget-object p1, p0, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object p1

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_36

    new-instance p2, Lcom/android/launcher3/model/OplusPackageUpdatedTask;

    const/16 v3, 0x11

    new-array v2, v2, [Ljava/lang/String;

    iget-object p0, p0, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->mGameSpacePackageName:Ljava/lang/String;

    aput-object p0, v2, v1

    invoke-direct {p2, v3, v0, v2}, Lcom/android/launcher3/model/OplusPackageUpdatedTask;-><init>(ILandroid/os/UserHandle;[Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$ModelUpdateTask;)V

    goto :goto_52

    :cond_36
    iget-object p2, p0, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/filter/DeepProtectedAppsManager;

    move-result-object p2

    iget-object v3, p0, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->mGameSpacePackageName:Ljava/lang/String;

    invoke-virtual {p2, v3, v0}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->isPackageProtected(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p2

    if-nez p2, :cond_52

    new-instance p2, Lcom/android/launcher3/model/OplusPackageUpdatedTask;

    new-array v3, v2, [Ljava/lang/String;

    iget-object p0, p0, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->mGameSpacePackageName:Ljava/lang/String;

    aput-object p0, v3, v1

    invoke-direct {p2, v2, v0, v3}, Lcom/android/launcher3/model/OplusPackageUpdatedTask;-><init>(ILandroid/os/UserHandle;[Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$ModelUpdateTask;)V

    :cond_52
    :goto_52
    return-void
.end method

.method private static getBundleFromGameSpace(Landroid/content/Context;)Landroid/os/Bundle;
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v1, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->URI_GAME_SPACE_APP_LIST:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object p0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_21
    .catchall {:try_start_1 .. :try_end_b} :catchall_1c

    if-eqz p0, :cond_16

    :try_start_d
    const-string v1, "getHidePkgList"

    invoke-virtual {p0, v1, v0, v0}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_13} :catch_14
    .catchall {:try_start_d .. :try_end_13} :catchall_3d

    goto :goto_16

    :catch_14
    move-exception v1

    goto :goto_23

    :cond_16
    :goto_16
    if-eqz p0, :cond_3c

    :goto_18
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->close()V

    goto :goto_3c

    :catchall_1c
    move-exception p0

    move-object v5, v0

    move-object v0, p0

    move-object p0, v5

    goto :goto_3e

    :catch_21
    move-exception v1

    move-object p0, v0

    :goto_23
    :try_start_23
    const-string v2, "GameAccelerationBoxHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getBundleFromGameSpace Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_39
    .catchall {:try_start_23 .. :try_end_39} :catchall_3d

    if-eqz p0, :cond_3c

    goto :goto_18

    :cond_3c
    :goto_3c
    return-object v0

    :catchall_3d
    move-exception v0

    :goto_3e
    if-eqz p0, :cond_43

    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->close()V

    :cond_43
    throw v0
.end method

.method private static getGameSpacePackageName(Landroid/os/Bundle;)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_1f

    const-string v0, "game_box_component_name"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "getGameSpacePackageName: "

    const-string v1, "GameAccelerationBoxHelper"

    invoke-static {v0, p0, v1}, Lcom/android/common/multiapp/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_1f

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1f

    const/4 v0, 0x0

    aget-object p0, p0, v0

    return-object p0

    :cond_1f
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getHideGameIconModeInSetting(Landroid/content/Context;)I
    .registers 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "hide_game_icon_mode_flag"

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const-string v0, "getHideGameIconModeInSetting: result: "

    const-string v1, "GameAccelerationBoxHelper"

    invoke-static {v0, p0, v1}, Lcom/android/common/util/h;->a(Ljava/lang/String;ILjava/lang/String;)V

    return p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/launcher/filter/GameAccelerationBoxHelper;
    .registers 3

    sget-object v0, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->sInstance:Lcom/android/launcher/filter/GameAccelerationBoxHelper;

    if-nez v0, :cond_17

    const-class v0, Lcom/android/launcher/filter/GameAccelerationBoxHelper;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->sInstance:Lcom/android/launcher/filter/GameAccelerationBoxHelper;

    if-nez v1, :cond_12

    new-instance v1, Lcom/android/launcher/filter/GameAccelerationBoxHelper;

    invoke-direct {v1, p0}, Lcom/android/launcher/filter/GameAccelerationBoxHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->sInstance:Lcom/android/launcher/filter/GameAccelerationBoxHelper;

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
    sget-object p0, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->sInstance:Lcom/android/launcher/filter/GameAccelerationBoxHelper;

    return-object p0
.end method

.method private getStateChangedPackages(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_1e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_1e
    iget-object p1, p0, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->mHiddenGameApps:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_24
    :goto_24
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3f

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_24

    :cond_3f
    iget-object v3, p0, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/filter/DeepProtectedAppsManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->isPackageProtected(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_24

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_24

    :cond_4f
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_57
    :goto_57
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_8b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_57

    iget-object v0, p0, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/filter/DeepProtectedAppsManager;

    move-result-object v0

    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->isPackageProtected(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_57

    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_57

    :cond_8b
    return-void
.end method

.method private initFromGameSpaceProvider()V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->getBundleFromGameSpace(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_12

    iget-boolean v1, p0, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->mIsGameSpaceHidden:Z

    if-eqz v1, :cond_12

    invoke-static {v0}, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->getGameSpacePackageName(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->mGameSpacePackageName:Ljava/lang/String;

    :cond_12
    iget-boolean v0, p0, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->mShouldHideGameApps:Z

    if-eqz v0, :cond_3f

    invoke-static {}, Lcom/android/launcher/filter/GameListHelper;->getGameList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_28

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_23

    goto :goto_28

    :cond_23
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    goto :goto_29

    :cond_28
    :goto_28
    const/4 v1, 0x0

    :goto_29
    const-string v2, "GameAccelerationBoxHelper"

    const-string v3, "initGameSpaceAppList: count: "

    invoke-static {v3, v1, v2}, Lcom/android/common/util/h;->a(Ljava/lang/String;ILjava/lang/String;)V

    if-lez v1, :cond_3f

    iget-object v1, p0, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->mHiddenGameApps:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_35
    iget-object v2, p0, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->mHiddenGameApps:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    monitor-exit v1

    goto :goto_3f

    :catchall_3c
    move-exception p0

    monitor-exit v1
    :try_end_3e
    .catchall {:try_start_35 .. :try_end_3e} :catchall_3c

    throw p0

    :cond_3f
    :goto_3f
    invoke-direct {p0}, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->saveHideGameAppsToSharedPref()V

    return-void
.end method

.method private initFromLocalSharedPref()V
    .registers 7

    iget-boolean v0, p0, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->mIsGameSpaceHidden:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "pref_local_game_space_packagename"

    const-string v2, "com.nearme.gamecenter"

    invoke-static {v0, v1, v2}, Lcom/android/common/util/LauncherSharedPrefs;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->mGameSpacePackageName:Ljava/lang/String;

    :cond_11
    iget-boolean v0, p0, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->mShouldHideGameApps:Z

    if-eqz v0, :cond_63

    iget-object v0, p0, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "pref_local_hidden_game_apps"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/common/util/LauncherSharedPrefs;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->mHiddenGameApps:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_22
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5e

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_30
    if-ge v3, v2, :cond_42

    aget-object v4, v0, v3

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3f

    iget-object v5, p0, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->mHiddenGameApps:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3f
    add-int/lit8 v3, v3, 0x1

    goto :goto_30

    :cond_42
    const-string v0, "GameAccelerationBoxHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initFromLocalSharedPref -- hiddenGameApps.size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->mHiddenGameApps:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5e
    monitor-exit v1

    goto :goto_63

    :catchall_60
    move-exception p0

    monitor-exit v1
    :try_end_62
    .catchall {:try_start_22 .. :try_end_62} :catchall_60

    throw p0

    :cond_63
    :goto_63
    return-void
.end method

.method private synthetic lambda$changeGameAppsIconState$0()V
    .registers 10

    invoke-virtual {p0}, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->getHiddenGameApps()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_ee

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    goto/16 :goto_ee

    :cond_e
    const-string v1, "GameAccelerationBoxHelper"

    const-string v2, "changeGameAppsIconState: hide apps count: "

    invoke-static {v2}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/android/launcher/f;->a(Ljava/util/ArrayList;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/util/Preconditions;->assertNotNull(Ljava/lang/Object;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->mHiddenGameApps:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_33
    iget-object v5, p0, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->mHiddenGameApps:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_61

    move v5, v6

    :goto_3d
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v5, v7, :cond_64

    iget-object v7, p0, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/filter/DeepProtectedAppsManager;

    move-result-object v7

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->isPackageProtected(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5e

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5e
    add-int/lit8 v5, v5, 0x1

    goto :goto_3d

    :cond_61
    invoke-direct {p0, v0, v2, v3}, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->getStateChangedPackages(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_64
    iget-object v5, p0, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->mHiddenGameApps:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    iget-object v5, p0, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->mHiddenGameApps:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    monitor-exit v4
    :try_end_6f
    .catchall {:try_start_33 .. :try_end_6f} :catchall_eb

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_a1

    new-array v4, v6, [Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    const-string v4, "GameAccelerationBoxHelper"

    const-string v5, "changeGameAppsIconState: hide apps: "

    invoke-static {v5}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lcom/android/launcher3/model/OplusPackageUpdatedTask;

    const/16 v5, 0x11

    invoke-direct {v4, v5, v0, v2}, Lcom/android/launcher3/model/OplusPackageUpdatedTask;-><init>(ILandroid/os/UserHandle;[Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$ModelUpdateTask;)V

    :cond_a1
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_e7

    const-string v2, "GameAccelerationBoxHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "changeGameAppsIconState: show apps: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/filter/DeepProtectedAppsManager;

    move-result-object v2

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_c7
    :goto_c7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4, v0}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->isPackageProtected(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v5

    if-nez v5, :cond_c7

    new-instance v5, Lcom/android/launcher3/model/OplusPackageUpdatedTask;

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/String;

    aput-object v4, v8, v6

    invoke-direct {v5, v7, v0, v8}, Lcom/android/launcher3/model/OplusPackageUpdatedTask;-><init>(ILandroid/os/UserHandle;[Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$ModelUpdateTask;)V

    goto :goto_c7

    :cond_e7
    invoke-direct {p0}, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->saveHideGameAppsToSharedPref()V

    return-void

    :catchall_eb
    move-exception p0

    :try_start_ec
    monitor-exit v4
    :try_end_ed
    .catchall {:try_start_ec .. :try_end_ed} :catchall_eb

    throw p0

    :cond_ee
    :goto_ee
    const-string v0, "GameAccelerationBoxHelper"

    const-string v1, "changeGameAppsIconState: no hide apps, show all apps!"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->showAllGameAppIcon()V

    return-void
.end method

.method private static saveGameSpacePackages(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    const-string/jumbo v0, "pref_local_game_space_packagename"

    invoke-static {p0, v0, p1}, Lcom/android/common/util/LauncherSharedPrefs;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private saveHideGameAppsToSharedPref()V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->mHiddenGameApps:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_8
    iget-object v2, p0, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->mHiddenGameApps:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e

    :cond_23
    monitor-exit v1
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_48

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "pref_local_hidden_game_apps"

    invoke-static {p0, v1, v0}, Lcom/android/common/util/LauncherSharedPrefs;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "GameAccelerationBoxHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "saveHideGameAppsToSharedPref: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_48
    move-exception p0

    :try_start_49
    monitor-exit v1
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_48

    throw p0
.end method

.method private showAllGameAppIcon()V
    .registers 8

    iget-object v0, p0, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/util/Preconditions;->assertNotNull(Ljava/lang/Object;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->mHiddenGameApps:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_19
    iget-object v4, p0, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->mHiddenGameApps:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/filter/DeepProtectedAppsManager;

    move-result-object v6

    invoke-virtual {v6, v5, v2}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->isPackageProtected(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v6

    if-eqz v6, :cond_38

    goto :goto_1f

    :cond_38
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    :cond_3c
    iget-object p0, p0, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->mHiddenGameApps:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    monitor-exit v3
    :try_end_42
    .catchall {:try_start_19 .. :try_end_42} :catchall_68

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_67

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_67

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v3, Lcom/android/launcher3/model/OplusPackageUpdatedTask;

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-direct {v3, v4, v2, v5}, Lcom/android/launcher3/model/OplusPackageUpdatedTask;-><init>(ILandroid/os/UserHandle;[Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$ModelUpdateTask;)V

    goto :goto_4c

    :cond_67
    return-void

    :catchall_68
    move-exception p0

    :try_start_69
    monitor-exit v3
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_68

    throw p0
.end method


# virtual methods
.method public checkHiddenGameAppsOnUserUnlocked()V
    .registers 4

    iget-boolean v0, p0, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->mIsGameSpaceHidden:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->mShouldHideGameApps:Z

    if-eqz v0, :cond_2c

    :cond_8
    iget-object v0, p0, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->getBundleFromGameSpace(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->getGameSpacePackageName(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->mIsGameSpaceHidden:Z

    if-eqz v2, :cond_25

    iget-object v2, p0, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->mGameSpacePackageName:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_25

    iput-object v1, p0, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->mGameSpacePackageName:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->mIsGameSpaceHidden:Z

    invoke-direct {p0, v0, v1}, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->changeGameSpaceIconState(Landroid/os/Bundle;Z)V

    :cond_25
    iget-boolean v0, p0, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->mShouldHideGameApps:Z

    if-eqz v0, :cond_2c

    invoke-direct {p0}, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->changeGameAppsIconState()V

    :cond_2c
    return-void
.end method

.method public clearNewGameFolderCreatedFlag()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->mNewGameFolderCreated:Z

    return-void
.end method

.method public getHiddenGameAppSize()I
    .registers 2

    iget-object v0, p0, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->mHiddenGameApps:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_3
    iget-object p0, p0, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->mHiddenGameApps:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public getHiddenGameApps()Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/android/launcher/filter/GameListHelper;->getGameList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3b

    const-string v1, "GameAccelerationBoxHelper"

    const-string v2, "getHiddenGameApps hideGamePkgList is null"

    invoke-static {v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "pref_local_hidden_game_apps"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/android/common/util/LauncherSharedPrefs;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3a

    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_29
    if-ge v2, v1, :cond_39

    aget-object v3, p0, v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_36

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    :cond_39
    return-object v0

    :cond_3a
    return-object v2

    :cond_3b
    return-object v0
.end method

.method public init()V
    .registers 6

    const-string v0, "GameAccelerationBoxHelper"

    :try_start_2
    iget-object v1, p0, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "hide_game_icon_mode_flag"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->mGameSpaceSettingsObserver:Landroid/database/ContentObserver;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "oplus.intent.action.COSA_GAME_LIST_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->mHideGameAppIconListChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->getHideGameIconModeInSetting(Landroid/content/Context;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_33

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_30

    goto :goto_31

    :cond_30
    const/4 v4, 0x0

    :goto_31
    iput-boolean v4, p0, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->mHideGameAppIcon:Z

    :cond_33
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init: mHideGameAppIcon: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->mHideGameAppIcon:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_49} :catch_4a

    goto :goto_51

    :catch_4a
    move-exception p0

    const-string/jumbo v1, "register observer fail! e = "

    invoke-static {v1, p0, v0}, Lcom/android/common/config/i;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_51
    return-void
.end method

.method public initGameSpaceAppList()V
    .registers 6

    iget-object v0, p0, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->getHideGameIconModeInSetting(Landroid/content/Context;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    return-void

    :cond_a
    iget-object v1, p0, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->mHiddenGameApps:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_d
    iget-object v2, p0, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->mHiddenGameApps:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_d .. :try_end_13} :catchall_5f

    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v1, v3, :cond_1c

    move v1, v4

    goto :goto_1d

    :cond_1c
    move v1, v2

    :goto_1d
    iput-boolean v1, p0, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->mIsGameSpaceHidden:Z

    and-int/2addr v0, v4

    if-ne v0, v4, :cond_23

    move v2, v4

    :cond_23
    iput-boolean v2, p0, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->mShouldHideGameApps:Z

    const-string v0, "GameAccelerationBoxHelper"

    const-string v1, "initGameSpaceAppList: hide GameSpace: "

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->mIsGameSpaceHidden:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", hide apps in game space: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->mShouldHideGameApps:Z

    invoke-static {v1, v2, v0}, Lcom/android/common/config/b;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->mIsGameSpaceHidden:Z

    if-nez v0, :cond_44

    iget-boolean v0, p0, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->mShouldHideGameApps:Z

    if-eqz v0, :cond_5e

    :cond_44
    iget-object v0, p0, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    if-eqz v0, :cond_5e

    invoke-virtual {v0}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v0

    if-eqz v0, :cond_5b

    invoke-direct {p0}, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->initFromGameSpaceProvider()V

    goto :goto_5e

    :cond_5b
    invoke-direct {p0}, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->initFromLocalSharedPref()V

    :cond_5e
    :goto_5e
    return-void

    :catchall_5f
    move-exception p0

    :try_start_60
    monitor-exit v1
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_5f

    throw p0
.end method

.method public isGamePackageHide(Ljava/lang/String;)Z
    .registers 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    iget-boolean v0, p0, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->mIsGameSpaceHidden:Z

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->mGameSpacePackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_16
    iget-object v0, p0, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->mHiddenGameApps:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_19
    iget-object p0, p0, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->mHiddenGameApps:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_21
    move-exception p0

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_19 .. :try_end_23} :catchall_21

    throw p0
.end method

.method public isGamePackageHide(Ljava/lang/String;Landroid/os/UserHandle;)Z
    .registers 3

    invoke-virtual {p0, p1}, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->isGamePackageHide(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public onNewGameFolderCreated()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->mNewGameFolderCreated:Z

    return-void
.end method

.method public onPackageNameChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->mHiddenGameApps:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->mHiddenGameApps:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    iget-object v1, p0, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->mHiddenGameApps:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->mHiddenGameApps:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p0, "GameAccelerationBoxHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPackageNameChanged, o = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", n = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_34
    monitor-exit v0

    return-void

    :catchall_36
    move-exception p0

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_3 .. :try_end_38} :catchall_36

    throw p0
.end method

.method public removePackage(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->mHiddenGameApps:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_3
    iget-object p0, p0, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->mHiddenGameApps:Ljava/util/ArrayList;

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

.method public sendGameFolderCreatedBroadcastIfNeed(Landroid/content/Context;)V
    .registers 5

    invoke-static {p1}, Lcom/android/launcher3/util/Preconditions;->assertNotNull(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendGameFolderCreatedBroadcastIfNeed: mNewGameFolderCreated: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->mNewGameFolderCreated:Z

    const-string v2, "GameAccelerationBoxHelper"

    invoke-static {v0, v1, v2}, Lcom/android/common/config/b;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->mNewGameFolderCreated:Z

    if-eqz v0, :cond_29

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.launcher.action.LAUNCHER_GAME_FOLDER_CREATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "oplus.permission.OPLUS_COMPONENT_SAFE"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->mNewGameFolderCreated:Z

    :cond_29
    return-void
.end method
