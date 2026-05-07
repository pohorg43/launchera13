.class public Lcom/oplus/statistics/record/AppLifecycleCallbacks;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/statistics/record/AppLifecycleCallbacks$Holder;
    }
.end annotation


# instance fields
.field private hasInit:Z

.field private mActivityCount:I


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/statistics/record/AppLifecycleCallbacks;->mActivityCount:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/statistics/record/AppLifecycleCallbacks$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/oplus/statistics/record/AppLifecycleCallbacks;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/oplus/statistics/record/AppLifecycleCallbacks;
    .registers 1

    invoke-static {}, Lcom/oplus/statistics/record/AppLifecycleCallbacks$Holder;->access$100()Lcom/oplus/statistics/record/AppLifecycleCallbacks;

    move-result-object v0

    return-object v0
.end method

.method private isAppBoot()Z
    .registers 2

    iget p0, p0, Lcom/oplus/statistics/record/AppLifecycleCallbacks;->mActivityCount:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private isAppExit()Z
    .registers 1

    iget p0, p0, Lcom/oplus/statistics/record/AppLifecycleCallbacks;->mActivityCount:I

    if-nez p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method


# virtual methods
.method public declared-synchronized init(Landroid/app/Application;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/oplus/statistics/record/AppLifecycleCallbacks;->hasInit:Z

    if-nez v0, :cond_b

    invoke-virtual {p1, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oplus/statistics/record/AppLifecycleCallbacks;->hasInit:Z
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    :cond_b
    monitor-exit p0

    return-void

    :catchall_d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .registers 2

    invoke-direct {p0}, Lcom/oplus/statistics/record/AppLifecycleCallbacks;->isAppBoot()Z

    move-result p0

    if-eqz p0, :cond_11

    invoke-static {}, Lcom/oplus/statistics/record/StatIdManager;->getInstance()Lcom/oplus/statistics/record/StatIdManager;

    move-result-object p0

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oplus/statistics/record/StatIdManager;->refreshAppSessionIdIfNeed(Landroid/content/Context;)V

    :cond_11
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .registers 2

    iget p1, p0, Lcom/oplus/statistics/record/AppLifecycleCallbacks;->mActivityCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/oplus/statistics/record/AppLifecycleCallbacks;->mActivityCount:I

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .registers 3

    iget v0, p0, Lcom/oplus/statistics/record/AppLifecycleCallbacks;->mActivityCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/oplus/statistics/record/AppLifecycleCallbacks;->mActivityCount:I

    invoke-direct {p0}, Lcom/oplus/statistics/record/AppLifecycleCallbacks;->isAppExit()Z

    move-result p0

    if-eqz p0, :cond_17

    invoke-static {}, Lcom/oplus/statistics/record/StatIdManager;->getInstance()Lcom/oplus/statistics/record/StatIdManager;

    move-result-object p0

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oplus/statistics/record/StatIdManager;->onAppExit(Landroid/content/Context;)V

    :cond_17
    return-void
.end method
