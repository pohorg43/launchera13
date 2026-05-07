.class public final Lcom/oplus/seedling/sdk/unlock/UserUnlockManager;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final INSTANCE:Lcom/oplus/seedling/sdk/unlock/UserUnlockManager;

.field private static final TAG:Ljava/lang/String; = "UserUnlockManager"

.field private static hasInit:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final observers$delegate:Ly2/e;

.field private static final userUnlockReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/seedling/sdk/unlock/UserUnlockManager;

    invoke-direct {v0}, Lcom/oplus/seedling/sdk/unlock/UserUnlockManager;-><init>()V

    sput-object v0, Lcom/oplus/seedling/sdk/unlock/UserUnlockManager;->INSTANCE:Lcom/oplus/seedling/sdk/unlock/UserUnlockManager;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/oplus/seedling/sdk/unlock/UserUnlockManager;->hasInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    sget-object v0, Lcom/oplus/seedling/sdk/unlock/UserUnlockManager$observers$2;->INSTANCE:Lcom/oplus/seedling/sdk/unlock/UserUnlockManager$observers$2;

    invoke-static {v0}, Ly2/f;->a(Lkotlin/jvm/functions/Function0;)Ly2/e;

    move-result-object v0

    sput-object v0, Lcom/oplus/seedling/sdk/unlock/UserUnlockManager;->observers$delegate:Ly2/e;

    new-instance v0, Lcom/oplus/seedling/sdk/unlock/UserUnlockManager$userUnlockReceiver$1;

    invoke-direct {v0}, Lcom/oplus/seedling/sdk/unlock/UserUnlockManager$userUnlockReceiver$1;-><init>()V

    sput-object v0, Lcom/oplus/seedling/sdk/unlock/UserUnlockManager;->userUnlockReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getObservers(Lcom/oplus/seedling/sdk/unlock/UserUnlockManager;)Ljava/util/List;
    .registers 1

    invoke-direct {p0}, Lcom/oplus/seedling/sdk/unlock/UserUnlockManager;->getObservers()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$notifyAllObserver(Lcom/oplus/seedling/sdk/unlock/UserUnlockManager;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/seedling/sdk/unlock/UserUnlockManager;->notifyAllObserver(Z)V

    return-void
.end method

.method private final getObservers()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Ly2/p;",
            ">;>;"
        }
    .end annotation

    sget-object p0, Lcom/oplus/seedling/sdk/unlock/UserUnlockManager;->observers$delegate:Ly2/e;

    invoke-interface {p0}, Ly2/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private final notifyAllObserver(Z)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyAllObserver finally to entrancePkgName isSupport:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UserUnlockManager"

    invoke-static {v1, v0}, Lcom/oplus/seedling/sdk/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/seedling/sdk/unlock/UserUnlockManager;->getObservers()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1e

    :cond_32
    return-void
.end method


# virtual methods
.method public final init(Lkotlin/jvm/functions/Function1;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Ly2/p;",
            ">;)V"
        }
    .end annotation

    const-string p0, "onConditionChange"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/oplus/seedling/sdk/unlock/UserUnlockManager;->hasInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p0

    const-string v1, "UserUnlockManager"

    if-eqz p0, :cond_69

    :try_start_11
    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {p0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v2, Lcom/oplus/seedling/sdk/SeedlingSdk;->INSTANCE:Lcom/oplus/seedling/sdk/SeedlingSdk;

    invoke-virtual {v2}, Lcom/oplus/seedling/sdk/SeedlingSdk;->getCurUserContext$pantanal_client_release()Lcom/oplus/channel/server/IUserContext;

    move-result-object v3

    if-eqz v3, :cond_35

    const-string v3, "interface init, registerReceiver with userContext"

    invoke-static {v1, v3}, Lcom/oplus/seedling/sdk/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/oplus/seedling/sdk/SeedlingSdk;->getCurUserContext$pantanal_client_release()Lcom/oplus/channel/server/IUserContext;

    move-result-object v2

    if-nez v2, :cond_2f

    goto :goto_43

    :cond_2f
    sget-object v3, Lcom/oplus/seedling/sdk/unlock/UserUnlockManager;->userUnlockReceiver:Landroid/content/BroadcastReceiver;

    invoke-interface {v2, v3, p0}, Lcom/oplus/channel/server/IUserContext;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    goto :goto_43

    :cond_35
    const-string v3, "interface init, registerReceiver with normal context"

    invoke-static {v1, v3}, Lcom/oplus/seedling/sdk/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/oplus/seedling/sdk/SeedlingSdk;->getSAppContext$pantanal_client_release()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/oplus/seedling/sdk/unlock/UserUnlockManager;->userUnlockReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_43
    sget-object p0, Lcom/oplus/seedling/sdk/unlock/UserUnlockManager;->INSTANCE:Lcom/oplus/seedling/sdk/unlock/UserUnlockManager;

    invoke-direct {p0}, Lcom/oplus/seedling/sdk/unlock/UserUnlockManager;->getObservers()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_51
    .catchall {:try_start_11 .. :try_end_51} :catchall_52

    goto :goto_57

    :catchall_52
    move-exception p0

    invoke-static {p0}, Lq/d;->h(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_57
    invoke-static {p0}, Ly2/j;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_5e

    goto :goto_6e

    :cond_5e
    sget-object p0, Lcom/oplus/seedling/sdk/unlock/UserUnlockManager;->hasInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-string p0, "interface init error"

    invoke-static {v1, p0}, Lcom/oplus/seedling/sdk/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6e

    :cond_69
    const-string p0, "interface init has already init, just ignore"

    invoke-static {v1, p0}, Lcom/oplus/seedling/sdk/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_6e
    return-void
.end method

.method public final release()V
    .registers 4

    sget-object p0, Lcom/oplus/seedling/sdk/unlock/UserUnlockManager;->hasInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p0

    const-string v1, "UserUnlockManager"

    if-eqz p0, :cond_6f

    :try_start_c
    sget-object p0, Lcom/oplus/seedling/sdk/SeedlingSdk;->INSTANCE:Lcom/oplus/seedling/sdk/SeedlingSdk;

    invoke-virtual {p0}, Lcom/oplus/seedling/sdk/SeedlingSdk;->getCurUserContext$pantanal_client_release()Lcom/oplus/channel/server/IUserContext;

    move-result-object v2

    if-eqz v2, :cond_26

    const-string v2, "interface release, unregisterReceiver with userContext"

    invoke-static {v1, v2}, Lcom/oplus/seedling/sdk/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/seedling/sdk/SeedlingSdk;->getCurUserContext$pantanal_client_release()Lcom/oplus/channel/server/IUserContext;

    move-result-object p0

    if-nez p0, :cond_20

    goto :goto_34

    :cond_20
    sget-object v2, Lcom/oplus/seedling/sdk/unlock/UserUnlockManager;->userUnlockReceiver:Landroid/content/BroadcastReceiver;

    invoke-interface {p0, v2}, Lcom/oplus/channel/server/IUserContext;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_34

    :cond_26
    const-string v2, "interface release, unregisterReceiver with normal context"

    invoke-static {v1, v2}, Lcom/oplus/seedling/sdk/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/seedling/sdk/SeedlingSdk;->getSAppContext$pantanal_client_release()Landroid/content/Context;

    move-result-object p0

    sget-object v2, Lcom/oplus/seedling/sdk/unlock/UserUnlockManager;->userUnlockReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :goto_34
    sget-object p0, Lcom/oplus/seedling/sdk/unlock/UserUnlockManager;->INSTANCE:Lcom/oplus/seedling/sdk/unlock/UserUnlockManager;

    invoke-direct {p0}, Lcom/oplus/seedling/sdk/unlock/UserUnlockManager;->getObservers()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->clear()V

    sget-object p0, Ly2/p;->a:Ly2/p;
    :try_end_3f
    .catchall {:try_start_c .. :try_end_3f} :catchall_40

    goto :goto_45

    :catchall_40
    move-exception p0

    invoke-static {p0}, Lq/d;->h(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_45
    invoke-static {p0}, Ly2/j;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_4c

    goto :goto_74

    :cond_4c
    sget-object v2, Lcom/oplus/seedling/sdk/unlock/UserUnlockManager;->hasInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "interface release"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " error,msg = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/oplus/seedling/sdk/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_74

    :cond_6f
    const-string p0, "interface release has not init, just ignore"

    invoke-static {v1, p0}, Lcom/oplus/seedling/sdk/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_74
    return-void
.end method
