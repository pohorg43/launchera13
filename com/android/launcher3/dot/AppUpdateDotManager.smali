.class public Lcom/android/launcher3/dot/AppUpdateDotManager;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final DEFAULT_STATE:Z = true

.field public static final KEY_UPDATE_DOT_SWITCH_STATE:Ljava/lang/String; = "update_dot_switch_state"

.field private static volatile sInstance:Lcom/android/launcher3/dot/AppUpdateDotManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsAppUpdateDotSwitchOpen:Z

.field private mListenerSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/dot/AppUpdateDotManager;->mIsAppUpdateDotSwitchOpen:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/dot/AppUpdateDotManager;->mContext:Landroid/content/Context;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/dot/AppUpdateDotManager;->mListenerSet:Ljava/util/Set;

    invoke-direct {p0}, Lcom/android/launcher3/dot/AppUpdateDotManager;->initAppUpdateDotSwitchState()V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/dot/AppUpdateDotManager;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/dot/AppUpdateDotManager;->lambda$onAppUpdateDotChange$0(Z)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/launcher3/dot/AppUpdateDotManager;
    .registers 3

    sget-object v0, Lcom/android/launcher3/dot/AppUpdateDotManager;->sInstance:Lcom/android/launcher3/dot/AppUpdateDotManager;

    if-nez v0, :cond_17

    const-class v0, Lcom/android/launcher3/dot/AppUpdateDotManager;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/android/launcher3/dot/AppUpdateDotManager;->sInstance:Lcom/android/launcher3/dot/AppUpdateDotManager;

    if-nez v1, :cond_12

    new-instance v1, Lcom/android/launcher3/dot/AppUpdateDotManager;

    invoke-direct {v1, p0}, Lcom/android/launcher3/dot/AppUpdateDotManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/launcher3/dot/AppUpdateDotManager;->sInstance:Lcom/android/launcher3/dot/AppUpdateDotManager;

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
    sget-object p0, Lcom/android/launcher3/dot/AppUpdateDotManager;->sInstance:Lcom/android/launcher3/dot/AppUpdateDotManager;

    return-object p0
.end method

.method private initAppUpdateDotSwitchState()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/dot/AppUpdateDotManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "update_dot_switch_state"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/dot/AppUpdateDotManager;->setIsAppUpdateDotSwitchOpen(Z)V

    return-void
.end method

.method private synthetic lambda$onAppUpdateDotChange$0(Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/dot/AppUpdateDotManager;->onAppUpdateDotChangeOnMainThread(Z)V

    return-void
.end method

.method private onAppUpdateDotChangeOnMainThread(Z)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/launcher3/dot/AppUpdateDotManager;->setIsAppUpdateDotSwitchOpen(Z)V

    iget-object p0, p0, Lcom/android/launcher3/dot/AppUpdateDotManager;->mListenerSet:Ljava/util/Set;

    if-eqz p0, :cond_1c

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/function/Consumer;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_b

    :cond_1c
    return-void
.end method

.method private setIsAppUpdateDotSwitchOpen(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/dot/AppUpdateDotManager;->mIsAppUpdateDotSwitchOpen:Z

    return-void
.end method


# virtual methods
.method public addOnChangeListener(Ljava/util/function/Consumer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/dot/AppUpdateDotManager;->mListenerSet:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public isAppUpdateDotSwitchOpen()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/dot/AppUpdateDotManager;->mIsAppUpdateDotSwitchOpen:Z

    return p0
.end method

.method public onAppUpdateDotChange(Z)V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/dot/AppUpdateDotManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/common/util/g0;

    invoke-direct {v1, p0, p1}, Lcom/android/common/util/g0;-><init>(Lcom/android/launcher3/dot/AppUpdateDotManager;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public removeListener(Ljava/util/function/Consumer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/dot/AppUpdateDotManager;->mListenerSet:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
