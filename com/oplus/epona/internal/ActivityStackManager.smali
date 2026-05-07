.class public Lcom/oplus/epona/internal/ActivityStackManager;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final mActivityLifecycleCallback:Landroid/app/Application$ActivityLifecycleCallbacks;

.field private final mActivityStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/oplus/epona/internal/ActivityStackManager;->mActivityStack:Ljava/util/Stack;

    new-instance v0, Lcom/oplus/epona/internal/ActivityStackManager$1;

    invoke-direct {v0, p0}, Lcom/oplus/epona/internal/ActivityStackManager$1;-><init>(Lcom/oplus/epona/internal/ActivityStackManager;)V

    iput-object v0, p0, Lcom/oplus/epona/internal/ActivityStackManager;->mActivityLifecycleCallback:Landroid/app/Application$ActivityLifecycleCallbacks;

    return-void
.end method

.method public static synthetic access$000(Lcom/oplus/epona/internal/ActivityStackManager;Landroid/app/Activity;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/epona/internal/ActivityStackManager;->pushTask(Landroid/app/Activity;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/oplus/epona/internal/ActivityStackManager;Landroid/app/Activity;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/epona/internal/ActivityStackManager;->removeTask(Landroid/app/Activity;)V

    return-void
.end method

.method private declared-synchronized pushTask(Landroid/app/Activity;)V
    .registers 4

    monitor-enter p0

    if-nez p1, :cond_5

    monitor-exit p0

    return-void

    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/oplus/epona/internal/ActivityStackManager;->mActivityStack:Ljava/util/Stack;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_11

    monitor-exit p0

    return-void

    :catchall_11
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized removeTask(Landroid/app/Activity;)V
    .registers 5

    monitor-enter p0

    if-nez p1, :cond_5

    monitor-exit p0

    return-void

    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/oplus/epona/internal/ActivityStackManager;->mActivityStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_43

    add-int/lit8 v0, v0, -0x1

    :goto_d
    if-ltz v0, :cond_41

    :try_start_f
    iget-object v1, p0, Lcom/oplus/epona/internal/ActivityStackManager;->mActivityStack:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_3e

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    if-nez v1, :cond_22

    goto :goto_3e

    :cond_22
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    iget-object v1, p0, Lcom/oplus/epona/internal/ActivityStackManager;->mActivityStack:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->remove(I)Ljava/lang/Object;
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_3d} :catch_3e
    .catchall {:try_start_f .. :try_end_3d} :catchall_43

    goto :goto_41

    :catch_3e
    :cond_3e
    :goto_3e
    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    :cond_41
    :goto_41
    monitor-exit p0

    return-void

    :catchall_43
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public attach(Landroid/app/Application;)V
    .registers 2

    if-eqz p1, :cond_7

    iget-object p0, p0, Lcom/oplus/epona/internal/ActivityStackManager;->mActivityLifecycleCallback:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {p1, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_7
    return-void
.end method

.method public getCurrentActivity()Landroid/app/Activity;
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/oplus/epona/internal/ActivityStackManager;->mActivityStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-lez v0, :cond_1d

    iget-object p0, p0, Lcom/oplus/epona/internal/ActivityStackManager;->mActivityStack:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_1d

    return-object p0

    :catch_1d
    :cond_1d
    const/4 p0, 0x0

    return-object p0
.end method
