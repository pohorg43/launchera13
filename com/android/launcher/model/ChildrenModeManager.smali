.class public Lcom/android/launcher/model/ChildrenModeManager;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final ACTION_SWITCH_CHILDREN_MODE:Ljava/lang/String; = "oplus.intent.action.SWITCH_CHILDREN_MODE"

.field private static final CHILDREN_PROVIDER_URI:Landroid/net/Uri;

.field private static final ENTER_DELAY_LOAD_DATA_TIME:I = 0xc8

.field private static final EXIT_DELAY_LOAD_DATA_TIME:I = 0x258

.field private static final KEY_RESULT:Ljava/lang/String; = "result"

.field private static final METHOD_GET_CHILDREN_APPS:Ljava/lang/String; = "getChildrenApps"

.field private static final SAFE_PROVIDER_URI:Landroid/net/Uri;

.field private static final SETTING_CHILDREN_MODE:Ljava/lang/String; = "children_mode_on"

.field private static final TAG:Ljava/lang/String; = "ChildrenModeManager"

.field private static volatile sInstance:Lcom/android/launcher/model/ChildrenModeManager;


# instance fields
.field private final mChildrenModeApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mChildrenModeObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private mHasRegisterObserver:Z

.field private mInChildrenMode:Z

.field private mIsEnteringChildrenMode:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-string v0, "content://com.oplus.provider.SafeProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/launcher/model/ChildrenModeManager;->SAFE_PROVIDER_URI:Landroid/net/Uri;

    const-string v0, "content://com.oplus.childrenspace.ChildrenProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/launcher/model/ChildrenModeManager;->CHILDREN_PROVIDER_URI:Landroid/net/Uri;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher/model/ChildrenModeManager;->sInstance:Lcom/android/launcher/model/ChildrenModeManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/model/ChildrenModeManager;->mChildrenModeApps:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/launcher/model/ChildrenModeManager$1;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/android/launcher/model/ChildrenModeManager$1;-><init>(Lcom/android/launcher/model/ChildrenModeManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/launcher/model/ChildrenModeManager;->mChildrenModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher/model/ChildrenModeManager;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/launcher/model/ChildrenModeManager;->getChildrenModeState()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/launcher/model/ChildrenModeManager;->mInChildrenMode:Z

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher/model/ChildrenModeManager;Lcom/android/launcher/Launcher;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/model/ChildrenModeManager;->lambda$updateChildrenMode$0(Lcom/android/launcher/Launcher;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/launcher/model/ChildrenModeManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/model/ChildrenModeManager;->updateChildrenMode()V

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher/model/ChildrenModeManager;Lcom/android/launcher3/LauncherModel;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/model/ChildrenModeManager;->lambda$updateChildrenMode$1(Lcom/android/launcher3/LauncherModel;)V

    return-void
.end method

.method private getChildrenModeState()Z
    .registers 3

    iget-object p0, p0, Lcom/android/launcher/model/ChildrenModeManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "children_mode_on"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_11

    move v1, v0

    :cond_11
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Get children mode state: inChildrenMode: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ChildrenModeManager"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/launcher/model/ChildrenModeManager;
    .registers 3

    sget-object v0, Lcom/android/launcher/model/ChildrenModeManager;->sInstance:Lcom/android/launcher/model/ChildrenModeManager;

    if-nez v0, :cond_17

    const-class v0, Lcom/android/launcher/model/ChildrenModeManager;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/android/launcher/model/ChildrenModeManager;->sInstance:Lcom/android/launcher/model/ChildrenModeManager;

    if-nez v1, :cond_12

    new-instance v1, Lcom/android/launcher/model/ChildrenModeManager;

    invoke-direct {v1, p0}, Lcom/android/launcher/model/ChildrenModeManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/launcher/model/ChildrenModeManager;->sInstance:Lcom/android/launcher/model/ChildrenModeManager;

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
    sget-object p0, Lcom/android/launcher/model/ChildrenModeManager;->sInstance:Lcom/android/launcher/model/ChildrenModeManager;

    return-object p0
.end method

.method private synthetic lambda$updateChildrenMode$0(Lcom/android/launcher/Launcher;)V
    .registers 2

    iget-boolean p0, p0, Lcom/android/launcher/model/ChildrenModeManager;->mInChildrenMode:Z

    if-nez p0, :cond_1b

    if-eqz p1, :cond_1b

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->isStarted()Z

    move-result p0

    if-eqz p0, :cond_1b

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object p0

    if-eqz p0, :cond_1b

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object p0

    const/high16 p1, 0x3f800000  # 1.0f

    invoke-virtual {p0, p1}, Lcom/android/launcher3/OplusDragLayer;->setAlpha(F)V

    :cond_1b
    return-void
.end method

.method private synthetic lambda$updateChildrenMode$1(Lcom/android/launcher3/LauncherModel;)V
    .registers 6

    iget-boolean v0, p0, Lcom/android/launcher/model/ChildrenModeManager;->mInChildrenMode:Z

    invoke-direct {p0}, Lcom/android/launcher/model/ChildrenModeManager;->getChildrenModeState()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/launcher/model/ChildrenModeManager;->mInChildrenMode:Z

    iput-boolean v1, p0, Lcom/android/launcher/model/ChildrenModeManager;->mIsEnteringChildrenMode:Z

    if-eq v1, v0, :cond_4c

    const-string v0, "ChildrenModeManager"

    const-string/jumbo v1, "updateChildrenMode. Force launchermodel to reload."

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/launcher3/LauncherModel;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v1

    if-eqz v1, :cond_1e

    invoke-virtual {v1}, Lcom/android/launcher/Launcher;->onChildrenModeChanged()V

    goto :goto_24

    :cond_1e
    const-string/jumbo v2, "updateChildrenMode, launcher is null!"

    invoke-static {v0, v2}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_24
    const/16 v2, 0x258

    :try_start_26
    iget-boolean v3, p0, Lcom/android/launcher/model/ChildrenModeManager;->mInChildrenMode:Z

    if-eqz v3, :cond_2c

    const/16 v2, 0xc8

    :cond_2c
    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_30
    .catch Ljava/lang/InterruptedException; {:try_start_26 .. :try_end_30} :catch_36
    .catchall {:try_start_26 .. :try_end_30} :catchall_34

    :goto_30
    invoke-virtual {p1}, Lcom/android/launcher3/LauncherModel;->forceReload()V

    goto :goto_3d

    :catchall_34
    move-exception p0

    goto :goto_48

    :catch_36
    :try_start_36
    const-string/jumbo v2, "updateChildrenMode, InterruptedException!"

    invoke-static {v0, v2}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3c
    .catchall {:try_start_36 .. :try_end_3c} :catchall_34

    goto :goto_30

    :goto_3d
    sget-object p1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v0, Lcom/android/launcher/guide/c;

    invoke-direct {v0, p0, v1}, Lcom/android/launcher/guide/c;-><init>(Lcom/android/launcher/model/ChildrenModeManager;Lcom/android/launcher/Launcher;)V

    invoke-virtual {p1, v0}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_4c

    :goto_48
    invoke-virtual {p1}, Lcom/android/launcher3/LauncherModel;->forceReload()V

    throw p0

    :cond_4c
    :goto_4c
    return-void
.end method

.method private updateChildrenMode()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/model/ChildrenModeManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v0

    if-eqz v0, :cond_14

    new-instance v1, Lcom/android/launcher/guide/c;

    invoke-direct {v1, p0, v0}, Lcom/android/launcher/guide/c;-><init>(Lcom/android/launcher/model/ChildrenModeManager;Lcom/android/launcher3/LauncherModel;)V

    invoke-static {v1}, Lcom/android/launcher3/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    :cond_14
    return-void
.end method


# virtual methods
.method public exitChildrenMode()V
    .registers 3

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "oplus.intent.action.SWITCH_CHILDREN_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_d
    iget-object p0, p0, Lcom/android/launcher/model/ChildrenModeManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const-string p0, "ChildrenModeManager"

    const-string v0, "exitChildrenMode."

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_19} :catch_1a

    goto :goto_1e

    :catch_1a
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1e
    return-void
.end method

.method public getChildrenModeApps()Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher/model/ChildrenModeManager;->mChildrenModeApps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-boolean v0, p0, Lcom/android/launcher/model/ChildrenModeManager;->mInChildrenMode:Z

    const-string v1, "ChildrenModeManager"

    if-eqz v0, :cond_87

    const/4 v0, 0x0

    :try_start_c
    iget-object v2, p0, Lcom/android/launcher/model/ChildrenModeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/launcher/model/ChildrenModeManager;->CHILDREN_PROVIDER_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v3
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_18} :catch_36
    .catchall {:try_start_c .. :try_end_18} :catchall_34

    if-nez v3, :cond_29

    :try_start_1a
    const-string v4, "getChildrenModeApps: New uri is not available. Try old one."

    invoke-static {v1, v4}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/android/launcher/model/ChildrenModeManager;->SAFE_PROVIDER_URI:Landroid/net/Uri;

    invoke-virtual {v2, v4}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v2

    move-object v3, v2

    goto :goto_29

    :catch_27
    move-exception v2

    goto :goto_38

    :cond_29
    :goto_29
    if-eqz v3, :cond_31

    const-string v2, "getChildrenApps"

    invoke-virtual {v3, v2, v0, v0}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_31} :catch_27
    .catchall {:try_start_1a .. :try_end_31} :catchall_7f

    :cond_31
    if-eqz v3, :cond_40

    goto :goto_3d

    :catchall_34
    move-exception p0

    goto :goto_81

    :catch_36
    move-exception v2

    move-object v3, v0

    :goto_38
    :try_start_38
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_7f

    if-eqz v3, :cond_40

    :goto_3d
    invoke-virtual {v3}, Landroid/content/ContentProviderClient;->close()V

    :cond_40
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getChildrenModeApps. result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_87

    const-string/jumbo v2, "result"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_87

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getChildrenModeApps: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_87

    iget-object v2, p0, Lcom/android/launcher/model/ChildrenModeManager;->mChildrenModeApps:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_87

    :catchall_7f
    move-exception p0

    move-object v0, v3

    :goto_81
    if-eqz v0, :cond_86

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->close()V

    :cond_86
    throw p0

    :cond_87
    :goto_87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher/model/ChildrenModeManager;->mIsEnteringChildrenMode:Z

    const-string v0, "getChildrenModeApps: count: "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/launcher/model/ChildrenModeManager;->mChildrenModeApps:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher/model/ChildrenModeManager;->mChildrenModeApps:Ljava/util/ArrayList;

    return-object p0
.end method

.method public inChildrenModeApps(Ljava/lang/String;)Z
    .registers 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object p0, p0, Lcom/android/launcher/model/ChildrenModeManager;->mChildrenModeApps:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method public isEnteringChildrenMode()Z
    .registers 3

    const-string v0, "isEnteringChildrenMode: mInChildrenMode: "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher/model/ChildrenModeManager;->mInChildrenMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mIsEnteringChildrenMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/launcher/model/ChildrenModeManager;->mIsEnteringChildrenMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ChildrenModeManager"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/launcher/model/ChildrenModeManager;->mInChildrenMode:Z

    if-eqz v0, :cond_28

    iget-boolean p0, p0, Lcom/android/launcher/model/ChildrenModeManager;->mIsEnteringChildrenMode:Z

    if-eqz p0, :cond_28

    const/4 p0, 0x1

    goto :goto_29

    :cond_28
    const/4 p0, 0x0

    :goto_29
    return p0
.end method

.method public isInChildrenMode()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher/model/ChildrenModeManager;->mInChildrenMode:Z

    return p0
.end method

.method public registerChildrenModeObserver()V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/android/launcher/model/ChildrenModeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "children_mode_on"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher/model/ChildrenModeManager;->mChildrenModeObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iput-boolean v3, p0, Lcom/android/launcher/model/ChildrenModeManager;->mHasRegisterObserver:Z
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_15

    goto :goto_19

    :catch_15
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_19
    return-void
.end method

.method public unregisterChildrenModeObserver()V
    .registers 2

    iget-boolean v0, p0, Lcom/android/launcher/model/ChildrenModeManager;->mHasRegisterObserver:Z

    if-eqz v0, :cond_14

    :try_start_4
    iget-object v0, p0, Lcom/android/launcher/model/ChildrenModeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher/model/ChildrenModeManager;->mChildrenModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_f} :catch_10

    goto :goto_14

    :catch_10
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_14
    :goto_14
    return-void
.end method
