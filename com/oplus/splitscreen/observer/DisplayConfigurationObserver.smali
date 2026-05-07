.class public Lcom/oplus/splitscreen/observer/DisplayConfigurationObserver;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/splitscreen/observer/DisplayConfigurationObserver$LazyHolder;,
        Lcom/oplus/splitscreen/observer/DisplayConfigurationObserver$OnDisplayConfigChangeListener;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mListeners:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/oplus/splitscreen/observer/DisplayConfigurationObserver$OnDisplayConfigChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mRegistered:Z

.field private mRotation:I

.field private final mSyncRoot:Ljava/lang/Object;

.field private mUiMode:I


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/oplus/splitscreen/observer/DisplayConfigurationObserver;->mListeners:Ljava/util/Vector;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oplus/splitscreen/observer/DisplayConfigurationObserver;->mSyncRoot:Ljava/lang/Object;

    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/splitscreen/observer/DisplayConfigurationObserver;->mContext:Landroid/content/Context;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/splitscreen/observer/DisplayConfigurationObserver$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/oplus/splitscreen/observer/DisplayConfigurationObserver;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/oplus/splitscreen/observer/DisplayConfigurationObserver;
    .registers 1

    invoke-static {}, Lcom/oplus/splitscreen/observer/DisplayConfigurationObserver$LazyHolder;->access$000()Lcom/oplus/splitscreen/observer/DisplayConfigurationObserver;

    move-result-object v0

    return-object v0
.end method

.method private registerReceiver()V
    .registers 2

    iget-object v0, p0, Lcom/oplus/splitscreen/observer/DisplayConfigurationObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v0

    iput v0, p0, Lcom/oplus/splitscreen/observer/DisplayConfigurationObserver;->mRotation:I

    iget-object v0, p0, Lcom/oplus/splitscreen/observer/DisplayConfigurationObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    iput v0, p0, Lcom/oplus/splitscreen/observer/DisplayConfigurationObserver;->mUiMode:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/splitscreen/observer/DisplayConfigurationObserver;->mRegistered:Z

    return-void
.end method

.method private unregisterReceiver()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/splitscreen/observer/DisplayConfigurationObserver;->mRegistered:Z

    return-void
.end method


# virtual methods
.method public addListener(Lcom/oplus/splitscreen/observer/DisplayConfigurationObserver$OnDisplayConfigChangeListener;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/oplus/splitscreen/observer/DisplayConfigurationObserver;->mSyncRoot:Ljava/lang/Object;

    monitor-enter v0

    :try_start_6
    iget-object v1, p0, Lcom/oplus/splitscreen/observer/DisplayConfigurationObserver;->mListeners:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-nez v1, :cond_11

    invoke-direct {p0}, Lcom/oplus/splitscreen/observer/DisplayConfigurationObserver;->registerReceiver()V

    :cond_11
    iget-object v1, p0, Lcom/oplus/splitscreen/observer/DisplayConfigurationObserver;->mListeners:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    iget-object p0, p0, Lcom/oplus/splitscreen/observer/DisplayConfigurationObserver;->mListeners:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_1e
    monitor-exit v0

    return-void

    :catchall_20
    move-exception p0

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_6 .. :try_end_22} :catchall_20

    throw p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 7
    .param p1  # Landroid/content/res/Configuration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-boolean v0, p0, Lcom/oplus/splitscreen/observer/DisplayConfigurationObserver;->mRegistered:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget v0, p0, Lcom/oplus/splitscreen/observer/DisplayConfigurationObserver;->mRotation:I

    iget-object v1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v1

    if-eq v0, v1, :cond_2f

    iput v1, p0, Lcom/oplus/splitscreen/observer/DisplayConfigurationObserver;->mRotation:I

    iget-object v2, p0, Lcom/oplus/splitscreen/observer/DisplayConfigurationObserver;->mSyncRoot:Ljava/lang/Object;

    monitor-enter v2

    :try_start_14
    iget-object v3, p0, Lcom/oplus/splitscreen/observer/DisplayConfigurationObserver;->mListeners:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oplus/splitscreen/observer/DisplayConfigurationObserver$OnDisplayConfigChangeListener;

    invoke-interface {v4, v0, v1}, Lcom/oplus/splitscreen/observer/DisplayConfigurationObserver$OnDisplayConfigChangeListener;->onDisplayRotationChange(II)V

    goto :goto_1a

    :cond_2a
    monitor-exit v2

    goto :goto_2f

    :catchall_2c
    move-exception p0

    monitor-exit v2
    :try_end_2e
    .catchall {:try_start_14 .. :try_end_2e} :catchall_2c

    throw p0

    :cond_2f
    :goto_2f
    iget v0, p0, Lcom/oplus/splitscreen/observer/DisplayConfigurationObserver;->mUiMode:I

    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    if-eq v0, p1, :cond_55

    iput p1, p0, Lcom/oplus/splitscreen/observer/DisplayConfigurationObserver;->mUiMode:I

    iget-object v1, p0, Lcom/oplus/splitscreen/observer/DisplayConfigurationObserver;->mSyncRoot:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3a
    iget-object p0, p0, Lcom/oplus/splitscreen/observer/DisplayConfigurationObserver;->mListeners:Ljava/util/Vector;

    invoke-virtual {p0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_40
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_50

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/splitscreen/observer/DisplayConfigurationObserver$OnDisplayConfigChangeListener;

    invoke-interface {v2, v0, p1}, Lcom/oplus/splitscreen/observer/DisplayConfigurationObserver$OnDisplayConfigChangeListener;->onDisplayUiModeChange(II)V

    goto :goto_40

    :cond_50
    monitor-exit v1

    goto :goto_55

    :catchall_52
    move-exception p0

    monitor-exit v1
    :try_end_54
    .catchall {:try_start_3a .. :try_end_54} :catchall_52

    throw p0

    :cond_55
    :goto_55
    return-void
.end method

.method public removeListener(Lcom/oplus/splitscreen/observer/DisplayConfigurationObserver$OnDisplayConfigChangeListener;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/oplus/splitscreen/observer/DisplayConfigurationObserver;->mSyncRoot:Ljava/lang/Object;

    monitor-enter v0

    :try_start_6
    iget-object v1, p0, Lcom/oplus/splitscreen/observer/DisplayConfigurationObserver;->mListeners:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_19

    iget-object p1, p0, Lcom/oplus/splitscreen/observer/DisplayConfigurationObserver;->mListeners:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result p1

    if-nez p1, :cond_19

    invoke-direct {p0}, Lcom/oplus/splitscreen/observer/DisplayConfigurationObserver;->unregisterReceiver()V

    :cond_19
    monitor-exit v0

    return-void

    :catchall_1b
    move-exception p0

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_6 .. :try_end_1d} :catchall_1b

    throw p0
.end method
