.class public Lcom/android/launcher/widget/AppWidgetListenHelper;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/widget/AppWidgetListenHelper$ListenConsumerTask;
    }
.end annotation


# static fields
.field private static final CONSUME_DELAY:I = 0x32

.field private static final CONSUME_TASK_DELAY:I = 0x320

.field private static final TAG:Ljava/lang/String; = "AppWidgetListenHelper"

.field private static final sSingleton:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Lcom/android/launcher/widget/AppWidgetListenHelper;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCanConsumeDirectly:Z

.field private mConsumerTask:Lcom/android/launcher/widget/AppWidgetListenHelper$ListenConsumerTask;

.field private mLocale:Ljava/util/Locale;

.field private mReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/launcher3/Launcher;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher/widget/AppWidgetListenHelper$1;

    invoke-direct {v0}, Lcom/android/launcher/widget/AppWidgetListenHelper$1;-><init>()V

    sput-object v0, Lcom/android/launcher/widget/AppWidgetListenHelper;->sSingleton:Landroid/util/Singleton;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher/widget/AppWidgetListenHelper$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/launcher/widget/AppWidgetListenHelper;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher/widget/AppWidgetListenHelper;Ljava/util/function/Consumer;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/widget/AppWidgetListenHelper;->lambda$consumeAsync$1(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/android/launcher/widget/AppWidgetListenHelper;)Lcom/android/launcher3/Launcher;
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/widget/AppWidgetListenHelper;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/launcher/widget/AppWidgetListenHelper;Ljava/util/function/Consumer;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/widget/AppWidgetListenHelper;->consumeAsync(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic access$300(Lcom/android/launcher/widget/AppWidgetListenHelper;)Landroid/os/Handler;
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/widget/AppWidgetListenHelper;->getUiHandler()Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/android/launcher/widget/AppWidgetListenHelper;Ljava/util/function/Consumer;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/widget/AppWidgetListenHelper;->lambda$consumeAsync$0(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private consume(Ljava/util/function/Consumer;)V
    .registers 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 p0, 0x0

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "consume, time cost "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AppWidgetListenHelper"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private consumeAsync(Ljava/util/function/Consumer;)V
    .registers 5

    invoke-direct {p0}, Lcom/android/launcher/widget/AppWidgetListenHelper;->removeConsumerTask()V

    const-string v0, "AppWidgetListenHelper"

    const-string v1, "consumeAsync "

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/util/Executors;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/android/launcher/widget/a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/android/launcher/widget/a;-><init>(Lcom/android/launcher/widget/AppWidgetListenHelper;Ljava/util/function/Consumer;I)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static getInstance()Lcom/android/launcher/widget/AppWidgetListenHelper;
    .registers 1

    sget-object v0, Lcom/android/launcher/widget/AppWidgetListenHelper;->sSingleton:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/widget/AppWidgetListenHelper;

    return-object v0
.end method

.method private getLauncher()Lcom/android/launcher3/Launcher;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/widget/AppWidgetListenHelper;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/Launcher;

    return-object p0
.end method

.method private getUiHandler()Landroid/os/Handler;
    .registers 1

    sget-object p0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {p0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$consumeAsync$0(Ljava/util/function/Consumer;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/widget/AppWidgetListenHelper;->consume(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private synthetic lambda$consumeAsync$1(Ljava/util/function/Consumer;)V
    .registers 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/common/util/OplusAppWidgetUtils;->getAllProviders(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;Lcom/android/launcher3/util/PackageUserKey;)Ljava/util/List;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "consumeAsync getAllProviders cost "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppWidgetListenHelper"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher/widget/AppWidgetListenHelper;->mCanConsumeDirectly:Z

    sget-object v1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v1}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/launcher/widget/a;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/launcher/widget/a;-><init>(Lcom/android/launcher/widget/AppWidgetListenHelper;Ljava/util/function/Consumer;I)V

    const-wide/16 p0, 0x32

    invoke-virtual {v1, v2, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private removeConsumerTask()V
    .registers 3

    const-string v0, "AppWidgetListenHelper"

    const-string/jumbo v1, "removeConsumerTask"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/launcher/widget/AppWidgetListenHelper;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object v1

    if-nez v1, :cond_14

    const-string p0, "launcher is null"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_14
    iget-object v0, p0, Lcom/android/launcher/widget/AppWidgetListenHelper;->mConsumerTask:Lcom/android/launcher/widget/AppWidgetListenHelper$ListenConsumerTask;

    if-eqz v0, :cond_24

    invoke-direct {p0}, Lcom/android/launcher/widget/AppWidgetListenHelper;->getUiHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher/widget/AppWidgetListenHelper;->mConsumerTask:Lcom/android/launcher/widget/AppWidgetListenHelper$ListenConsumerTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher/widget/AppWidgetListenHelper;->mConsumerTask:Lcom/android/launcher/widget/AppWidgetListenHelper$ListenConsumerTask;

    :cond_24
    return-void
.end method


# virtual methods
.method public inject(Ljava/util/function/Consumer;)V
    .registers 9

    invoke-direct {p0}, Lcom/android/launcher/widget/AppWidgetListenHelper;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object v0

    const-string v1, "AppWidgetListenHelper"

    if-nez v0, :cond_e

    const-string p0, "launcher is null"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_e
    iget-boolean v2, v0, Lcom/android/launcher3/Launcher;->mReCreated:Z

    invoke-static {v0}, Lcom/android/common/util/UserUtils;->isUserUnlocked(Landroid/content/Context;)Z

    move-result v0

    const-string v3, "inject mCanConsumeDirectly = "

    invoke-static {v3}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/launcher/widget/AppWidgetListenHelper;->mCanConsumeDirectly:Z

    const-string v5, ", userUnlocked = "

    const-string v6, ", recreate = "

    invoke-static {v3, v4, v5, v0, v6}, Lcom/android/launcher/g0;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    invoke-static {v3, v2, v1}, Lcom/android/common/config/b;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    if-eqz v0, :cond_34

    iget-boolean v0, p0, Lcom/android/launcher/widget/AppWidgetListenHelper;->mCanConsumeDirectly:Z

    if-eqz v0, :cond_30

    invoke-direct {p0, p1}, Lcom/android/launcher/widget/AppWidgetListenHelper;->consume(Ljava/util/function/Consumer;)V

    goto :goto_55

    :cond_30
    invoke-direct {p0, p1}, Lcom/android/launcher/widget/AppWidgetListenHelper;->consumeAsync(Ljava/util/function/Consumer;)V

    goto :goto_55

    :cond_34
    iget-boolean v0, p0, Lcom/android/launcher/widget/AppWidgetListenHelper;->mCanConsumeDirectly:Z

    if-eqz v0, :cond_3b

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher/widget/AppWidgetListenHelper;->mCanConsumeDirectly:Z

    :cond_3b
    invoke-direct {p0}, Lcom/android/launcher/widget/AppWidgetListenHelper;->removeConsumerTask()V

    new-instance v0, Lcom/android/launcher/widget/AppWidgetListenHelper$ListenConsumerTask;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher/widget/AppWidgetListenHelper$ListenConsumerTask;-><init>(Lcom/android/launcher/widget/AppWidgetListenHelper;Ljava/util/function/Consumer;)V

    iput-object v0, p0, Lcom/android/launcher/widget/AppWidgetListenHelper;->mConsumerTask:Lcom/android/launcher/widget/AppWidgetListenHelper$ListenConsumerTask;

    invoke-direct {p0}, Lcom/android/launcher/widget/AppWidgetListenHelper;->getUiHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher/widget/AppWidgetListenHelper;->mConsumerTask:Lcom/android/launcher/widget/AppWidgetListenHelper$ListenConsumerTask;

    if-eqz v2, :cond_50

    const-wide/16 v0, 0x0

    goto :goto_52

    :cond_50
    const-wide/16 v0, 0x320

    :goto_52
    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_55
    return-void
.end method

.method public setLauncher(Lcom/android/launcher3/Launcher;)V
    .registers 3

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/launcher/widget/AppWidgetListenHelper;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v0, p0, Lcom/android/launcher/widget/AppWidgetListenHelper;->mLocale:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    iput-object p1, p0, Lcom/android/launcher/widget/AppWidgetListenHelper;->mLocale:Ljava/util/Locale;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher/widget/AppWidgetListenHelper;->mCanConsumeDirectly:Z

    :cond_1e
    return-void
.end method
