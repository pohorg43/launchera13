.class public final Lcom/oplus/channel/server/factory/AlwaysPuller;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/channel/server/IClientPuller;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/channel/server/factory/AlwaysPuller$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/channel/server/factory/AlwaysPuller$Companion;

.field public static final INTERVAL_REBIND:J = 0x7d0L

.field public static final MAX_REBIND_COUNT:I = 0x5

.field public static final NOTIFY_NO_DELAY:I = 0x8000

.field public static final TAG:Ljava/lang/String; = "AlwaysPuller"


# instance fields
.field private volatile checkRebindCount:I

.field private final clientConfig:Lcom/oplus/channel/server/ClientConfig;

.field private final clientName:Ljava/lang/String;

.field private final connection:Lcom/oplus/channel/server/factory/AlwaysPuller$connection$1;

.field private final contentUrl:Ljava/lang/String;

.field private final context$delegate:Ly2/e;

.field private handler:Landroid/os/Handler;

.field private final handlerThread:Landroid/os/HandlerThread;

.field private volatile isDestroyed:Z

.field private volatile rebindCount:I

.field private final serverAuthority:Ljava/lang/String;

.field private final userContext:Lcom/oplus/channel/server/IUserContext;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/channel/server/factory/AlwaysPuller$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/channel/server/factory/AlwaysPuller$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/channel/server/factory/AlwaysPuller;->Companion:Lcom/oplus/channel/server/factory/AlwaysPuller$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/oplus/channel/server/ClientConfig;)V
    .registers 8

    const-class v0, Lcom/oplus/channel/server/IUserContext;

    const-string v1, "serverAuthority"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "clientName"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "clientConfig"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/channel/server/factory/AlwaysPuller;->serverAuthority:Ljava/lang/String;

    iput-object p2, p0, Lcom/oplus/channel/server/factory/AlwaysPuller;->clientName:Ljava/lang/String;

    iput-object p3, p0, Lcom/oplus/channel/server/factory/AlwaysPuller;->clientConfig:Lcom/oplus/channel/server/ClientConfig;

    sget-object p1, Lcom/oplus/channel/server/utils/ServerDI;->INSTANCE:Lcom/oplus/channel/server/utils/ServerDI;

    invoke-virtual {p1}, Lcom/oplus/channel/server/utils/ServerDI;->getSingleInstanceMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p2

    const-class p3, Landroid/content/Context;

    invoke-static {p3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Ln3/c;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    const-string p3, "the class are not injected"

    if-eqz p2, :cond_c1

    invoke-virtual {p1}, Lcom/oplus/channel/server/utils/ServerDI;->getSingleInstanceMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p2

    const-class v1, Landroid/content/Context;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Ln3/c;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    const-string v1, "null cannot be cast to non-null type kotlin.Lazy<T of com.oplus.channel.server.utils.ServerDI.injectSingle>"

    invoke-static {p2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Ly2/e;

    iput-object p2, p0, Lcom/oplus/channel/server/factory/AlwaysPuller;->context$delegate:Ly2/e;

    const/4 p2, 0x0

    :try_start_46
    invoke-virtual {p1}, Lcom/oplus/channel/server/utils/ServerDI;->getSingleInstanceMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Ln3/c;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_6f

    invoke-virtual {p1}, Lcom/oplus/channel/server/utils/ServerDI;->getSingleInstanceMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Ln3/c;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_69

    check-cast p1, Ly2/e;

    invoke-static {p1}, Lcom/oplus/channel/server/utils/ServerDI;->access$injectNullable$lambda-1$lambda-0(Ly2/e;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_91

    :cond_69
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6f
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_75
    .catchall {:try_start_46 .. :try_end_75} :catchall_75

    :catchall_75
    move-exception p1

    invoke-static {p1}, Lq/d;->h(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ly2/j;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_91

    sget-object p3, Lcom/oplus/channel/server/utils/LogUtil;->INSTANCE:Lcom/oplus/channel/server/utils/LogUtil;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "injectNullable：iUserContext exception "

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "ServerDI"

    invoke-virtual {p3, v0, p1}, Lcom/oplus/channel/server/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_91
    :goto_91
    check-cast p2, Lcom/oplus/channel/server/IUserContext;

    iput-object p2, p0, Lcom/oplus/channel/server/factory/AlwaysPuller;->userContext:Lcom/oplus/channel/server/IUserContext;

    iget-object p1, p0, Lcom/oplus/channel/server/factory/AlwaysPuller;->serverAuthority:Ljava/lang/String;

    const-string p2, "content://"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/channel/server/factory/AlwaysPuller;->contentUrl:Ljava/lang/String;

    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "AlwaysPuller"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/channel/server/factory/AlwaysPuller;->handlerThread:Landroid/os/HandlerThread;

    new-instance p2, Lcom/oplus/channel/server/factory/AlwaysPuller$connection$1;

    invoke-direct {p2, p0}, Lcom/oplus/channel/server/factory/AlwaysPuller$connection$1;-><init>(Lcom/oplus/channel/server/factory/AlwaysPuller;)V

    iput-object p2, p0, Lcom/oplus/channel/server/factory/AlwaysPuller;->connection:Lcom/oplus/channel/server/factory/AlwaysPuller$connection$1;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    new-instance p2, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/oplus/channel/server/factory/AlwaysPuller;->handler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/oplus/channel/server/factory/AlwaysPuller;->rebindClient()V

    return-void

    :cond_c1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, p3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic a(Lcom/oplus/channel/server/factory/AlwaysPuller;)V
    .registers 1

    invoke-static {p0}, Lcom/oplus/channel/server/factory/AlwaysPuller;->checkRebindClient$lambda-0(Lcom/oplus/channel/server/factory/AlwaysPuller;)V

    return-void
.end method

.method public static final synthetic access$checkRebindClient(Lcom/oplus/channel/server/factory/AlwaysPuller;)V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/channel/server/factory/AlwaysPuller;->checkRebindClient()V

    return-void
.end method

.method public static final synthetic access$getHandler$p(Lcom/oplus/channel/server/factory/AlwaysPuller;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/oplus/channel/server/factory/AlwaysPuller;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method public static final synthetic access$getRebindCount$p(Lcom/oplus/channel/server/factory/AlwaysPuller;)I
    .registers 1

    iget p0, p0, Lcom/oplus/channel/server/factory/AlwaysPuller;->rebindCount:I

    return p0
.end method

.method public static final synthetic access$isDestroyed$p(Lcom/oplus/channel/server/factory/AlwaysPuller;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/channel/server/factory/AlwaysPuller;->isDestroyed:Z

    return p0
.end method

.method public static final synthetic access$rebindClient(Lcom/oplus/channel/server/factory/AlwaysPuller;)V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/channel/server/factory/AlwaysPuller;->rebindClient()V

    return-void
.end method

.method public static final synthetic access$setCheckRebindCount$p(Lcom/oplus/channel/server/factory/AlwaysPuller;I)V
    .registers 2

    iput p1, p0, Lcom/oplus/channel/server/factory/AlwaysPuller;->checkRebindCount:I

    return-void
.end method

.method public static final synthetic access$setRebindCount$p(Lcom/oplus/channel/server/factory/AlwaysPuller;I)V
    .registers 2

    iput p1, p0, Lcom/oplus/channel/server/factory/AlwaysPuller;->rebindCount:I

    return-void
.end method

.method private final checkRebindClient()V
    .registers 7

    iget v0, p0, Lcom/oplus/channel/server/factory/AlwaysPuller;->checkRebindCount:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_26

    iget v0, p0, Lcom/oplus/channel/server/factory/AlwaysPuller;->rebindCount:I

    if-nez v0, :cond_a

    goto :goto_26

    :cond_a
    iget-object v0, p0, Lcom/oplus/channel/server/factory/AlwaysPuller;->handler:Landroid/os/Handler;

    if-nez v0, :cond_14

    const-string v0, "handler"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_14
    new-instance v1, Lcom/oplus/channel/server/factory/a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/oplus/channel/server/factory/a;-><init>(Lcom/oplus/channel/server/factory/AlwaysPuller;I)V

    iget p0, p0, Lcom/oplus/channel/server/factory/AlwaysPuller;->checkRebindCount:I

    add-int/lit8 p0, p0, 0x1

    int-to-long v2, p0

    const-wide/16 v4, 0x7d0

    mul-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_26
    :goto_26
    sget-object p0, Lcom/oplus/channel/server/utils/LogUtil;->INSTANCE:Lcom/oplus/channel/server/utils/LogUtil;

    const-string v0, "AlwaysPuller"

    const-string v1, "checkRebindClient: reach the max rebind count, return"

    invoke-virtual {p0, v0, v1}, Lcom/oplus/channel/server/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static final checkRebindClient$lambda-0(Lcom/oplus/channel/server/factory/AlwaysPuller;)V
    .registers 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/channel/server/utils/LogUtil;->INSTANCE:Lcom/oplus/channel/server/utils/LogUtil;

    iget v1, p0, Lcom/oplus/channel/server/factory/AlwaysPuller;->checkRebindCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "checkRebindClient, checkRebindCount="

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "AlwaysPuller"

    invoke-virtual {v0, v2, v1}, Lcom/oplus/channel/server/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/oplus/channel/server/factory/AlwaysPuller;->isDestroyed:Z

    if-nez v0, :cond_36

    invoke-virtual {p0}, Lcom/oplus/channel/server/factory/AlwaysPuller;->getClientConfig()Lcom/oplus/channel/server/ClientConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/channel/server/ClientConfig;->getNeedKeepAlive()Z

    move-result v0

    if-eqz v0, :cond_36

    iget v0, p0, Lcom/oplus/channel/server/factory/AlwaysPuller;->rebindCount:I

    if-lez v0, :cond_36

    invoke-direct {p0}, Lcom/oplus/channel/server/factory/AlwaysPuller;->rebindClient()V

    iget v0, p0, Lcom/oplus/channel/server/factory/AlwaysPuller;->checkRebindCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oplus/channel/server/factory/AlwaysPuller;->checkRebindCount:I

    invoke-direct {p0}, Lcom/oplus/channel/server/factory/AlwaysPuller;->checkRebindClient()V

    :cond_36
    return-void
.end method

.method private final getContext()Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/oplus/channel/server/factory/AlwaysPuller;->context$delegate:Ly2/e;

    invoke-interface {p0}, Ly2/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    return-object p0
.end method

.method private final rebindClient()V
    .registers 5

    sget-object v0, Lcom/oplus/channel/server/utils/LogUtil;->INSTANCE:Lcom/oplus/channel/server/utils/LogUtil;

    const-string v1, "rebindClient, clientName="

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/channel/server/factory/AlwaysPuller;->clientName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", aliveType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/channel/server/factory/AlwaysPuller;->clientConfig:Lcom/oplus/channel/server/ClientConfig;

    invoke-virtual {v2}, Lcom/oplus/channel/server/ClientConfig;->getAliveType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", needKeepAlive="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/channel/server/factory/AlwaysPuller;->clientConfig:Lcom/oplus/channel/server/ClientConfig;

    invoke-virtual {v2}, Lcom/oplus/channel/server/ClientConfig;->getNeedKeepAlive()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AlwaysPuller"

    invoke-virtual {v0, v2, v1}, Lcom/oplus/channel/server/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/oplus/channel/server/factory/AlwaysPuller;->clientConfig:Lcom/oplus/channel/server/ClientConfig;

    invoke-virtual {v2}, Lcom/oplus/channel/server/ClientConfig;->getClientPackage()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/oplus/channel/server/factory/AlwaysPuller;->clientConfig:Lcom/oplus/channel/server/ClientConfig;

    invoke-virtual {v3}, Lcom/oplus/channel/server/ClientConfig;->getServiceComponent()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/oplus/channel/server/factory/AlwaysPuller;->clientConfig:Lcom/oplus/channel/server/ClientConfig;

    invoke-virtual {v1}, Lcom/oplus/channel/server/ClientConfig;->getAliveType()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-ne v1, v3, :cond_6f

    iget-object v1, p0, Lcom/oplus/channel/server/factory/AlwaysPuller;->userContext:Lcom/oplus/channel/server/IUserContext;

    const/16 v3, 0x41

    if-nez v1, :cond_5c

    goto :goto_63

    :cond_5c
    iget-object v2, p0, Lcom/oplus/channel/server/factory/AlwaysPuller;->connection:Lcom/oplus/channel/server/factory/AlwaysPuller$connection$1;

    invoke-interface {v1, v0, v2, v3}, Lcom/oplus/channel/server/IUserContext;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)V

    sget-object v2, Ly2/p;->a:Ly2/p;

    :goto_63
    if-nez v2, :cond_88

    invoke-direct {p0}, Lcom/oplus/channel/server/factory/AlwaysPuller;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/oplus/channel/server/factory/AlwaysPuller;->connection:Lcom/oplus/channel/server/factory/AlwaysPuller$connection$1;

    invoke-virtual {v1, v0, p0, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_88

    :cond_6f
    iget-object v1, p0, Lcom/oplus/channel/server/factory/AlwaysPuller;->userContext:Lcom/oplus/channel/server/IUserContext;

    const/16 v3, 0x21

    if-nez v1, :cond_76

    goto :goto_7d

    :cond_76
    iget-object v2, p0, Lcom/oplus/channel/server/factory/AlwaysPuller;->connection:Lcom/oplus/channel/server/factory/AlwaysPuller$connection$1;

    invoke-interface {v1, v0, v2, v3}, Lcom/oplus/channel/server/IUserContext;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)V

    sget-object v2, Ly2/p;->a:Ly2/p;

    :goto_7d
    if-nez v2, :cond_88

    invoke-direct {p0}, Lcom/oplus/channel/server/factory/AlwaysPuller;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/oplus/channel/server/factory/AlwaysPuller;->connection:Lcom/oplus/channel/server/factory/AlwaysPuller$connection$1;

    invoke-virtual {v1, v0, p0, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :cond_88
    :goto_88
    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 6

    sget-object v0, Lcom/oplus/channel/server/utils/LogUtil;->INSTANCE:Lcom/oplus/channel/server/utils/LogUtil;

    const-string v1, "AlwaysPuller"

    const-string v2, "destroy"

    invoke-virtual {v0, v1, v2}, Lcom/oplus/channel/server/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/channel/server/factory/AlwaysPuller;->isDestroyed:Z

    const/4 v0, 0x0

    :try_start_d
    iget-object v2, p0, Lcom/oplus/channel/server/factory/AlwaysPuller;->connection:Lcom/oplus/channel/server/factory/AlwaysPuller$connection$1;

    iget-object v3, p0, Lcom/oplus/channel/server/factory/AlwaysPuller;->userContext:Lcom/oplus/channel/server/IUserContext;

    if-nez v3, :cond_15

    move-object v3, v0

    goto :goto_1a

    :cond_15
    invoke-interface {v3, v2}, Lcom/oplus/channel/server/IUserContext;->unbindService(Landroid/content/ServiceConnection;)V

    sget-object v3, Ly2/p;->a:Ly2/p;

    :goto_1a
    if-nez v3, :cond_29

    invoke-direct {p0}, Lcom/oplus/channel/server/factory/AlwaysPuller;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_23
    .catchall {:try_start_d .. :try_end_23} :catchall_24

    goto :goto_29

    :catchall_24
    move-exception v2

    invoke-static {v2}, Lq/d;->h(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v2

    :cond_29
    :goto_29
    invoke-static {v2}, Ly2/j;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_3e

    sget-object v3, Lcom/oplus/channel/server/utils/LogUtil;->INSTANCE:Lcom/oplus/channel/server/utils/LogUtil;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v4, "destroy, unbindService error:"

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Lcom/oplus/channel/server/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3e
    iget-object v1, p0, Lcom/oplus/channel/server/factory/AlwaysPuller;->handler:Landroid/os/Handler;

    if-nez v1, :cond_48

    const-string v1, "handler"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v0

    :cond_48
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/oplus/channel/server/factory/AlwaysPuller;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->quitSafely()Z

    return-void
.end method

.method public final getClientConfig()Lcom/oplus/channel/server/ClientConfig;
    .registers 1

    iget-object p0, p0, Lcom/oplus/channel/server/factory/AlwaysPuller;->clientConfig:Lcom/oplus/channel/server/ClientConfig;

    return-object p0
.end method

.method public final getClientName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/channel/server/factory/AlwaysPuller;->clientName:Ljava/lang/String;

    return-object p0
.end method

.method public pullClient(Z)Z
    .registers 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    sget-object v0, Lcom/oplus/channel/server/utils/LogUtil;->INSTANCE:Lcom/oplus/channel/server/utils/LogUtil;

    const-string v1, "fetchClient:ALIVE_TYPE_ALWAYS shouldForceFetch = ["

    const-string v2, "] clientName = ["

    invoke-static {v1, p1, v2}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/channel/server/factory/AlwaysPuller;->clientName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "AlwaysPuller"

    invoke-virtual {v0, v3, v1}, Lcom/oplus/channel/server/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_62

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/oplus/channel/server/factory/AlwaysPuller;->contentUrl:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/pull/"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/channel/server/factory/AlwaysPuller;->clientName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/oplus/channel/server/factory/AlwaysPuller;->userContext:Lcom/oplus/channel/server/IUserContext;

    const v3, 0x8000

    if-nez v2, :cond_42

    move-object v2, v1

    goto :goto_50

    :cond_42
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string v5, "parse(uri)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v4, v1, v3}, Lcom/oplus/channel/server/IUserContext;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;I)V

    sget-object v2, Ly2/p;->a:Ly2/p;

    :goto_50
    if-nez v2, :cond_61

    invoke-direct {p0}, Lcom/oplus/channel/server/factory/AlwaysPuller;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1, v1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;I)V

    :cond_61
    return v0

    :cond_62
    const/4 p1, 0x0

    :try_start_63
    iget-object v4, p0, Lcom/oplus/channel/server/factory/AlwaysPuller;->userContext:Lcom/oplus/channel/server/IUserContext;

    if-nez v4, :cond_69

    move-object v4, v1

    goto :goto_73

    :cond_69
    iget-object v5, p0, Lcom/oplus/channel/server/factory/AlwaysPuller;->clientConfig:Lcom/oplus/channel/server/ClientConfig;

    invoke-virtual {v5}, Lcom/oplus/channel/server/ClientConfig;->getProviderAuthority()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/oplus/channel/server/IUserContext;->acquireUnstableContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v4

    :goto_73
    if-nez v4, :cond_87

    invoke-direct {p0}, Lcom/oplus/channel/server/factory/AlwaysPuller;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/oplus/channel/server/factory/AlwaysPuller;->clientConfig:Lcom/oplus/channel/server/ClientConfig;

    invoke-virtual {v5}, Lcom/oplus/channel/server/ClientConfig;->getProviderAuthority()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v4
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_87} :catch_a5
    .catchall {:try_start_63 .. :try_end_87} :catchall_a3

    :cond_87
    if-nez v4, :cond_8a

    goto :goto_92

    :cond_8a
    :try_start_8a
    const-string v5, "pull"

    iget-object p0, p0, Lcom/oplus/channel/server/factory/AlwaysPuller;->clientName:Ljava/lang/String;

    invoke-virtual {v4, v5, p0, v1}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_92} :catch_a0
    .catchall {:try_start_8a .. :try_end_92} :catchall_9e

    :goto_92
    if-eqz v1, :cond_95

    goto :goto_96

    :cond_95
    move v0, p1

    :goto_96
    if-nez v4, :cond_99

    goto :goto_9c

    :cond_99
    invoke-virtual {v4}, Landroid/content/ContentProviderClient;->close()V

    :goto_9c
    move p1, v0

    goto :goto_c5

    :catchall_9e
    move-exception p0

    goto :goto_c7

    :catch_a0
    move-exception p0

    move-object v1, v4

    goto :goto_a6

    :catchall_a3
    move-exception p0

    goto :goto_c6

    :catch_a5
    move-exception p0

    :goto_a6
    :try_start_a6
    sget-object v0, Lcom/oplus/channel/server/utils/LogUtil;->INSTANCE:Lcom/oplus/channel/server/utils/LogUtil;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pullClient error e = ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v3, p0}, Lcom/oplus/channel/server/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_bf
    .catchall {:try_start_a6 .. :try_end_bf} :catchall_a3

    if-nez v1, :cond_c2

    goto :goto_c5

    :cond_c2
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->close()V

    :goto_c5
    return p1

    :goto_c6
    move-object v4, v1

    :goto_c7
    if-nez v4, :cond_ca

    goto :goto_cd

    :cond_ca
    invoke-virtual {v4}, Landroid/content/ContentProviderClient;->close()V

    :goto_cd
    throw p0
.end method
