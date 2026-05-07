.class public Lcom/android/launcher3/uioverrides/DejankBinderTracker;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Binder$ProxyTransactListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "DejankBinderTracker"

.field private static final sLock:Ljava/lang/Object;

.field private static sTemporarilyIgnoreTracking:Z

.field private static sTrackingAllowed:Z

.field private static final sWhitelistedFrameworkClasses:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mIsTracking:Z

.field private mUnexpectedTransactionCallback:Ljava/util/function/BiConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/launcher3/uioverrides/DejankBinderTracker;->sLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/launcher3/uioverrides/DejankBinderTracker;->sWhitelistedFrameworkClasses:Ljava/util/HashSet;

    const-string v1, "android.view.IWindowSession"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "android.os.IPowerManager"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher3/uioverrides/DejankBinderTracker;->sTemporarilyIgnoreTracking:Z

    sput-boolean v0, Lcom/android/launcher3/uioverrides/DejankBinderTracker;->sTrackingAllowed:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/function/BiConsumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/uioverrides/DejankBinderTracker;->mIsTracking:Z

    iput-object p1, p0, Lcom/android/launcher3/uioverrides/DejankBinderTracker;->mUnexpectedTransactionCallback:Ljava/util/function/BiConsumer;

    return-void
.end method

.method public static allowBinderTrackingInTests()V
    .registers 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher3/uioverrides/DejankBinderTracker;->sTrackingAllowed:Z

    return-void
.end method

.method public static disallowBinderTrackingInTests()V
    .registers 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher3/uioverrides/DejankBinderTracker;->sTrackingAllowed:Z

    return-void
.end method

.method public static isMainThread()Z
    .registers 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public static whitelistIpcs(Ljava/util/function/Supplier;)Ljava/lang/Object;
    .registers 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Supplier<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher3/uioverrides/DejankBinderTracker;->sTemporarilyIgnoreTracking:Z

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher3/uioverrides/DejankBinderTracker;->sTemporarilyIgnoreTracking:Z

    return-object p0
.end method

.method public static whitelistIpcs(Ljava/lang/Runnable;)V
    .registers 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher3/uioverrides/DejankBinderTracker;->sTemporarilyIgnoreTracking:Z

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    const/4 p0, 0x0

    sput-boolean p0, Lcom/android/launcher3/uioverrides/DejankBinderTracker;->sTemporarilyIgnoreTracking:Z

    return-void
.end method


# virtual methods
.method public onTransactEnded(Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public onTransactStarted(Landroid/os/IBinder;I)Ljava/lang/Object;
    .registers 3

    const/4 p0, 0x0

    return-object p0
.end method

.method public declared-synchronized onTransactStarted(Landroid/os/IBinder;II)Ljava/lang/Object;
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/android/launcher3/uioverrides/DejankBinderTracker;->mIsTracking:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3e

    sget-boolean v0, Lcom/android/launcher3/uioverrides/DejankBinderTracker;->sTrackingAllowed:Z

    if-eqz v0, :cond_3e

    sget-boolean v0, Lcom/android/launcher3/uioverrides/DejankBinderTracker;->sTemporarilyIgnoreTracking:Z

    if-nez v0, :cond_3e

    const/4 v0, 0x1

    and-int/2addr p3, v0

    if-eq p3, v0, :cond_3e

    invoke-static {}, Lcom/android/launcher3/uioverrides/DejankBinderTracker;->isMainThread()Z

    move-result p3
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_40

    if-nez p3, :cond_19

    goto :goto_3e

    :cond_19
    :try_start_19
    invoke-interface {p1}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object p3

    sget-object v0, Lcom/android/launcher3/uioverrides/DejankBinderTracker;->sWhitelistedFrameworkClasses:Ljava/util/HashSet;

    invoke-virtual {v0, p3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_23} :catch_27
    .catchall {:try_start_19 .. :try_end_23} :catchall_40

    if-eqz p1, :cond_33

    monitor-exit p0

    return-object v1

    :catch_27
    move-exception p3

    :try_start_28
    invoke-virtual {p3}, Landroid/os/RemoteException;->printStackTrace()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    :cond_33
    iget-object p1, p0, Lcom/android/launcher3/uioverrides/DejankBinderTracker;->mUnexpectedTransactionCallback:Ljava/util/function/BiConsumer;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p3, p2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3c
    .catchall {:try_start_28 .. :try_end_3c} :catchall_40

    monitor-exit p0

    return-object v1

    :cond_3e
    :goto_3e
    monitor-exit p0

    return-object v1

    :catchall_40
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public startTracking()V
    .registers 5
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "debug"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_29

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "eng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    new-instance p0, Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const-string v0, "DejankBinderTracker"

    const-string v1, "Unexpected use of binder tracker in non-debug build"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_29
    iget-boolean v0, p0, Lcom/android/launcher3/uioverrides/DejankBinderTracker;->mIsTracking:Z

    if-eqz v0, :cond_2e

    return-void

    :cond_2e
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/uioverrides/DejankBinderTracker;->mIsTracking:Z

    invoke-static {p0}, Landroid/os/Binder;->setProxyTransactListener(Landroid/os/Binder$ProxyTransactListener;)V

    return-void
.end method

.method public stopTracking()V
    .registers 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iget-boolean v0, p0, Lcom/android/launcher3/uioverrides/DejankBinderTracker;->mIsTracking:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/uioverrides/DejankBinderTracker;->mIsTracking:Z

    const/4 p0, 0x0

    invoke-static {p0}, Landroid/os/Binder;->setProxyTransactListener(Landroid/os/Binder$ProxyTransactListener;)V

    return-void
.end method
