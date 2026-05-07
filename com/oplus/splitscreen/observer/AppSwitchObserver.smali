.class public Lcom/oplus/splitscreen/observer/AppSwitchObserver;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/app/OplusAppSwitchManager$OnAppSwitchObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/splitscreen/observer/AppSwitchObserver$LazyHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Split-AppSwitchObserver"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMainExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/splitscreen/observer/AppSwitchObserver$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/oplus/splitscreen/observer/AppSwitchObserver;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/oplus/splitscreen/observer/AppSwitchObserver;Lcom/oplus/app/OplusAppEnterInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/splitscreen/observer/AppSwitchObserver;->lambda$onAppEnter$0(Lcom/oplus/app/OplusAppEnterInfo;)V

    return-void
.end method

.method public static synthetic b(Lcom/oplus/splitscreen/observer/AppSwitchObserver;)V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/splitscreen/observer/AppSwitchObserver;->lambda$onAppExit$1()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/oplus/splitscreen/observer/AppSwitchObserver;
    .registers 2

    invoke-static {}, Lcom/oplus/splitscreen/observer/AppSwitchObserver$LazyHolder;->access$000()Lcom/oplus/splitscreen/observer/AppSwitchObserver;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/oplus/splitscreen/observer/AppSwitchObserver;->init(Landroid/content/Context;)V

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .registers 3

    iget-object v0, p0, Lcom/oplus/splitscreen/observer/AppSwitchObserver;->mContext:Landroid/content/Context;

    if-nez v0, :cond_c

    iput-object p1, p0, Lcom/oplus/splitscreen/observer/AppSwitchObserver;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/splitscreen/observer/AppSwitchObserver;->mMainExecutor:Ljava/util/concurrent/Executor;

    :cond_c
    return-void
.end method

.method private synthetic lambda$onAppEnter$0(Lcom/oplus/app/OplusAppEnterInfo;)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/splitscreen/observer/AppSwitchObserver;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/wm/shell/splitscreen/tips/GestureGuideManager;->getInstance(Landroid/content/Context;)Lcom/android/wm/shell/splitscreen/tips/GestureGuideManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/tips/GestureGuideManager;->showGestureGuideIfNeed(Lcom/oplus/app/OplusAppEnterInfo;)V

    return-void
.end method

.method private synthetic lambda$onAppExit$1()V
    .registers 1

    iget-object p0, p0, Lcom/oplus/splitscreen/observer/AppSwitchObserver;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/wm/shell/splitscreen/tips/GestureGuideManager;->getInstance(Landroid/content/Context;)Lcom/android/wm/shell/splitscreen/tips/GestureGuideManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/tips/GestureGuideManager;->removeGestureGuideIfNeed()V

    return-void
.end method


# virtual methods
.method public onActivityEnter(Lcom/oplus/app/OplusAppEnterInfo;)V
    .registers 2

    return-void
.end method

.method public onActivityExit(Lcom/oplus/app/OplusAppExitInfo;)V
    .registers 2

    return-void
.end method

.method public onAppEnter(Lcom/oplus/app/OplusAppEnterInfo;)V
    .registers 4

    iget-object v0, p0, Lcom/oplus/splitscreen/observer/AppSwitchObserver;->mMainExecutor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_c

    const-string p0, "Split-AppSwitchObserver"

    const-string p1, "onAppEnter, null executor"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    new-instance v1, Lcom/android/wm/shell/bubbles/animation/o;

    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/bubbles/animation/o;-><init>(Lcom/oplus/splitscreen/observer/AppSwitchObserver;Lcom/oplus/app/OplusAppEnterInfo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAppExit(Lcom/oplus/app/OplusAppExitInfo;)V
    .registers 3

    iget-object p1, p0, Lcom/oplus/splitscreen/observer/AppSwitchObserver;->mMainExecutor:Ljava/util/concurrent/Executor;

    if-nez p1, :cond_c

    const-string p0, "Split-AppSwitchObserver"

    const-string p1, "onAppExit, null executor"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    new-instance v0, Lcom/oplus/quickstep/common/observers/a;

    invoke-direct {v0, p0}, Lcom/oplus/quickstep/common/observers/a;-><init>(Lcom/oplus/splitscreen/observer/AppSwitchObserver;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public register()V
    .registers 4

    sget-object v0, Le2/b;->e:Ljava/util/ArrayList;

    sget-object v0, Le2/b$a;->a:Le2/b;

    iget-object v1, p0, Lcom/oplus/splitscreen/observer/AppSwitchObserver;->mContext:Landroid/content/Context;

    monitor-enter v0

    :try_start_7
    iget-object v2, v0, Le2/b;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-nez v2, :cond_12

    invoke-virtual {v0, v1}, Le2/b;->a(Landroid/content/Context;)V

    :cond_12
    iget-object v1, v0, Le2/b;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_19

    monitor-exit v0

    return-void

    :catchall_19
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public unregister()V
    .registers 4

    sget-object v0, Le2/b;->e:Ljava/util/ArrayList;

    sget-object v0, Le2/b$a;->a:Le2/b;

    iget-object v1, p0, Lcom/oplus/splitscreen/observer/AppSwitchObserver;->mContext:Landroid/content/Context;

    monitor-enter v0

    :try_start_7
    iget-object v2, v0, Le2/b;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p0, v0, Le2/b;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p0

    if-nez p0, :cond_2e

    monitor-enter v0
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_30

    :try_start_15
    iget-object p0, v0, Le2/b;->a:Lcom/oplus/app/OplusAppSwitchManager;

    iget-object v2, v0, Le2/b;->b:Lcom/oplus/app/OplusAppSwitchManager$OnAppSwitchObserver;

    invoke-virtual {p0, v1, v2}, Lcom/oplus/app/OplusAppSwitchManager;->unregisterAppSwitchObserver(Landroid/content/Context;Lcom/oplus/app/OplusAppSwitchManager$OnAppSwitchObserver;)Z
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1c} :catch_1f
    .catchall {:try_start_15 .. :try_end_1c} :catchall_1d

    goto :goto_2a

    :catchall_1d
    move-exception p0

    goto :goto_2c

    :catch_1f
    move-exception p0

    :try_start_20
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, "OplusAppSwitchManagerWrapper"

    const-string v1, "unRegisterAppSwitchObserver failed"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a
    .catchall {:try_start_20 .. :try_end_2a} :catchall_1d

    :goto_2a
    :try_start_2a
    monitor-exit v0

    goto :goto_2e

    :goto_2c
    monitor-exit v0

    throw p0
    :try_end_2e
    .catchall {:try_start_2a .. :try_end_2e} :catchall_30

    :cond_2e
    :goto_2e
    monitor-exit v0

    return-void

    :catchall_30
    move-exception p0

    monitor-exit v0

    throw p0
.end method
