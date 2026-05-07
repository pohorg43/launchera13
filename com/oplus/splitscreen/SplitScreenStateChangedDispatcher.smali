.class public Lcom/oplus/splitscreen/SplitScreenStateChangedDispatcher;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/splitscreen/SplitScreenStateChangedDispatcher$SplitStatusListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SplitScreenStateChangedDispatcher"

.field private static final sInstance:Lcom/oplus/splitscreen/SplitScreenStateChangedDispatcher;


# instance fields
.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oplus/splitscreen/SplitScreenStateChangedDispatcher$SplitStatusListener;",
            ">;"
        }
    .end annotation
.end field

.field private mListenersLock:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/splitscreen/SplitScreenStateChangedDispatcher;

    invoke-direct {v0}, Lcom/oplus/splitscreen/SplitScreenStateChangedDispatcher;-><init>()V

    sput-object v0, Lcom/oplus/splitscreen/SplitScreenStateChangedDispatcher;->sInstance:Lcom/oplus/splitscreen/SplitScreenStateChangedDispatcher;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oplus/splitscreen/SplitScreenStateChangedDispatcher;->mListenersLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/splitscreen/SplitScreenStateChangedDispatcher;->mListeners:Ljava/util/ArrayList;

    return-void
.end method

.method public static getInstance()Lcom/oplus/splitscreen/SplitScreenStateChangedDispatcher;
    .registers 1

    sget-object v0, Lcom/oplus/splitscreen/SplitScreenStateChangedDispatcher;->sInstance:Lcom/oplus/splitscreen/SplitScreenStateChangedDispatcher;

    return-object v0
.end method


# virtual methods
.method public addListener(Lcom/oplus/splitscreen/SplitScreenStateChangedDispatcher$SplitStatusListener;)V
    .registers 4

    iget-object v0, p0, Lcom/oplus/splitscreen/SplitScreenStateChangedDispatcher;->mListenersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/oplus/splitscreen/SplitScreenStateChangedDispatcher;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    monitor-exit v0

    return-void

    :cond_d
    iget-object p0, p0, Lcom/oplus/splitscreen/SplitScreenStateChangedDispatcher;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw p0
.end method

.method public notifyEnterMinimizedFinish(I)V
    .registers 5

    iget-object v0, p0, Lcom/oplus/splitscreen/SplitScreenStateChangedDispatcher;->mListenersLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :goto_4
    :try_start_4
    iget-object v2, p0, Lcom/oplus/splitscreen/SplitScreenStateChangedDispatcher;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1a

    iget-object v2, p0, Lcom/oplus/splitscreen/SplitScreenStateChangedDispatcher;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/splitscreen/SplitScreenStateChangedDispatcher$SplitStatusListener;

    invoke-interface {v2, p1}, Lcom/oplus/splitscreen/SplitScreenStateChangedDispatcher$SplitStatusListener;->onEnterMinimizedFinish(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_1a
    monitor-exit v0

    return-void

    :catchall_1c
    move-exception p0

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_4 .. :try_end_1e} :catchall_1c

    throw p0
.end method

.method public notifySplitScreenModeChanged(Z)V
    .registers 6

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "notifySplitScreenModeChanged isInSplitScreenMode: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SplitScreenStateChangedDispatcher"

    invoke-static {v0, p0}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "isInSplitScreenMode"

    invoke-virtual {p0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :try_start_20
    invoke-static {}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->getInstance()Lcom/oplus/splitscreen/OplusSplitScreenManager;

    move-result-object v1

    const-string v2, "splitScreenModeChange"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p0, v3}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->notifySplitScreenStateChanged(Ljava/lang/String;Landroid/os/Bundle;Z)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_2a} :catch_2b
    .catch Ljava/lang/Error; {:try_start_20 .. :try_end_2a} :catch_2b

    goto :goto_40

    :catch_2b
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifySplitScreenModeChanged error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_40
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/oplus/splitscreen/util/StackDividerStatisticUtils;->onDockedStackExistsChanged(Landroid/content/Context;Z)V

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/splitscreen/SplitToggleHelper;->onSplitScreenModeChanged(Z)V

    return-void
.end method

.method public notifySplitScreenModeMinimizedChanged(Z)V
    .registers 5

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "notifySplitScreenModeChanged isInMinimized: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SplitScreenStateChangedDispatcher"

    invoke-static {v0, p0}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "isMinimized"

    invoke-virtual {p0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :try_start_20
    invoke-static {}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->getInstance()Lcom/oplus/splitscreen/OplusSplitScreenManager;

    move-result-object p1

    const-string v1, "splitScreenMinimizedChange"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, p0, v2}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->notifySplitScreenStateChanged(Ljava/lang/String;Landroid/os/Bundle;Z)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_2a} :catch_2b
    .catch Ljava/lang/Error; {:try_start_20 .. :try_end_2a} :catch_2b

    goto :goto_40

    :catch_2b
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifySplitScreenModeChanged error: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_40
    return-void
.end method

.method public removeListener(Lcom/oplus/splitscreen/SplitScreenStateChangedDispatcher$SplitStatusListener;)V
    .registers 3

    iget-object v0, p0, Lcom/oplus/splitscreen/SplitScreenStateChangedDispatcher;->mListenersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object p0, p0, Lcom/oplus/splitscreen/SplitScreenStateChangedDispatcher;->mListeners:Ljava/util/ArrayList;

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
