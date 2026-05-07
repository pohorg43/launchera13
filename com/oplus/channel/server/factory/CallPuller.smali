.class public final Lcom/oplus/channel/server/factory/CallPuller;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/channel/server/IClientPuller;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/channel/server/factory/CallPuller$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/channel/server/factory/CallPuller$Companion;

.field public static final MAX_RETRY_COUNT:I = 0x5

.field public static final NOTIFY_NO_DELAY:I = 0x8000

.field public static final TAG:Ljava/lang/String; = "CallPuller"


# instance fields
.field private final aliveClientUtil$delegate:Ly2/e;

.field private final clientConfig:Lcom/oplus/channel/server/ClientConfig;

.field private final clientName:Ljava/lang/String;

.field private final contentUrl:Ljava/lang/String;

.field private final context$delegate:Ly2/e;

.field private providerClient:Landroid/content/ContentProviderClient;

.field private retryCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final serverAuthority:Ljava/lang/String;

.field private final userContext:Lcom/oplus/channel/server/IUserContext;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/channel/server/factory/CallPuller$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/channel/server/factory/CallPuller$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/channel/server/factory/CallPuller;->Companion:Lcom/oplus/channel/server/factory/CallPuller$Companion;

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

    iput-object p1, p0, Lcom/oplus/channel/server/factory/CallPuller;->serverAuthority:Ljava/lang/String;

    iput-object p2, p0, Lcom/oplus/channel/server/factory/CallPuller;->clientName:Ljava/lang/String;

    iput-object p3, p0, Lcom/oplus/channel/server/factory/CallPuller;->clientConfig:Lcom/oplus/channel/server/ClientConfig;

    sget-object p1, Lcom/oplus/channel/server/utils/ServerDI;->INSTANCE:Lcom/oplus/channel/server/utils/ServerDI;

    invoke-virtual {p1}, Lcom/oplus/channel/server/utils/ServerDI;->getSingleInstanceMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p2

    const-class p3, Landroid/content/Context;

    invoke-static {p3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Ln3/c;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    const-string p3, "the class are not injected"

    if-eqz p2, :cond_b0

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

    iput-object p2, p0, Lcom/oplus/channel/server/factory/CallPuller;->context$delegate:Ly2/e;

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

    iput-object p2, p0, Lcom/oplus/channel/server/factory/CallPuller;->userContext:Lcom/oplus/channel/server/IUserContext;

    iget-object p1, p0, Lcom/oplus/channel/server/factory/CallPuller;->serverAuthority:Ljava/lang/String;

    const-string p2, "content://"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/channel/server/factory/CallPuller;->contentUrl:Ljava/lang/String;

    sget-object p1, Lcom/oplus/channel/server/factory/CallPuller$aliveClientUtil$2;->INSTANCE:Lcom/oplus/channel/server/factory/CallPuller$aliveClientUtil$2;

    invoke-static {p1}, Ly2/f;->a(Lkotlin/jvm/functions/Function0;)Ly2/e;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/channel/server/factory/CallPuller;->aliveClientUtil$delegate:Ly2/e;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lcom/oplus/channel/server/factory/CallPuller;->retryCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void

    :cond_b0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, p3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final synthetic access$callPull(Lcom/oplus/channel/server/factory/CallPuller;)Z
    .registers 1

    invoke-direct {p0}, Lcom/oplus/channel/server/factory/CallPuller;->callPull()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$getClientConfig$p(Lcom/oplus/channel/server/factory/CallPuller;)Lcom/oplus/channel/server/ClientConfig;
    .registers 1

    iget-object p0, p0, Lcom/oplus/channel/server/factory/CallPuller;->clientConfig:Lcom/oplus/channel/server/ClientConfig;

    return-object p0
.end method

.method private final aliveClient()V
    .registers 3

    iget-object v0, p0, Lcom/oplus/channel/server/factory/CallPuller;->providerClient:Landroid/content/ContentProviderClient;

    if-nez v0, :cond_1d

    invoke-direct {p0}, Lcom/oplus/channel/server/factory/CallPuller;->getAliveClientUtil()Lcom/oplus/channel/server/utils/AliveClientUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/channel/server/factory/CallPuller;->clientConfig:Lcom/oplus/channel/server/ClientConfig;

    invoke-virtual {v1}, Lcom/oplus/channel/server/ClientConfig;->getClientPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/channel/server/utils/AliveClientUtil;->bindService(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-direct {p0}, Lcom/oplus/channel/server/factory/CallPuller;->changeProviderClient()V

    :cond_1d
    return-void
.end method

.method private final asyncCallPull()V
    .registers 4

    sget-object v0, Lcom/oplus/channel/server/utils/AsyncCallExecutor;->Companion:Lcom/oplus/channel/server/utils/AsyncCallExecutor$Companion;

    invoke-virtual {v0}, Lcom/oplus/channel/server/utils/AsyncCallExecutor$Companion;->getINSTANCE()Lcom/oplus/channel/server/utils/AsyncCallExecutor;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/channel/server/factory/CallPuller;->clientName:Ljava/lang/String;

    new-instance v2, Lcom/oplus/channel/server/factory/CallPuller$asyncCallPull$1;

    invoke-direct {v2, p0}, Lcom/oplus/channel/server/factory/CallPuller$asyncCallPull$1;-><init>(Lcom/oplus/channel/server/factory/CallPuller;)V

    invoke-virtual {v0, v1, v2}, Lcom/oplus/channel/server/utils/AsyncCallExecutor;->run(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private final callPull()Z
    .registers 7

    monitor-enter p0

    :try_start_1
    sget-object v0, Lcom/oplus/channel/server/utils/LogUtil;->INSTANCE:Lcom/oplus/channel/server/utils/LogUtil;

    const-string v1, "CallPuller"

    const-string v2, "callPull:"

    iget-object v3, p0, Lcom/oplus/channel/server/factory/CallPuller;->clientName:Ljava/lang/String;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oplus/channel/server/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_d2

    const/4 v1, 0x0

    :try_start_11
    invoke-direct {p0}, Lcom/oplus/channel/server/factory/CallPuller;->changeProviderClient()V

    invoke-direct {p0}, Lcom/oplus/channel/server/factory/CallPuller;->unfreezeClient()V

    invoke-direct {p0}, Lcom/oplus/channel/server/factory/CallPuller;->aliveClient()V

    iget-object v2, p0, Lcom/oplus/channel/server/factory/CallPuller;->providerClient:Landroid/content/ContentProviderClient;

    if-nez v2, :cond_52

    const-string v2, "CallPuller"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callPull:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oplus/channel/server/factory/CallPuller;->clientName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " == null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/oplus/channel/server/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_3b} :catch_77
    .catchall {:try_start_11 .. :try_end_3b} :catchall_75

    :try_start_3b
    const-string v2, "CallPuller"

    const-string v3, "callPull finally:"

    iget-object v4, p0, Lcom/oplus/channel/server/factory/CallPuller;->clientName:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/oplus/channel/server/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/channel/server/factory/CallPuller;->providerClient:Landroid/content/ContentProviderClient;

    if-nez v0, :cond_4d

    goto :goto_50

    :cond_4d
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->close()V
    :try_end_50
    .catchall {:try_start_3b .. :try_end_50} :catchall_d2

    :goto_50
    monitor-exit p0

    return v1

    :cond_52
    if-nez v2, :cond_55

    goto :goto_5d

    :cond_55
    :try_start_55
    const-string v3, "pull"

    iget-object v4, p0, Lcom/oplus/channel/server/factory/CallPuller;->clientName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_5d} :catch_77
    .catchall {:try_start_55 .. :try_end_5d} :catchall_75

    :goto_5d
    const/4 v1, 0x1

    :try_start_5e
    const-string v2, "CallPuller"

    const-string v3, "callPull finally:"

    iget-object v4, p0, Lcom/oplus/channel/server/factory/CallPuller;->clientName:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/oplus/channel/server/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/channel/server/factory/CallPuller;->providerClient:Landroid/content/ContentProviderClient;

    if-nez v0, :cond_70

    goto :goto_73

    :cond_70
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->close()V
    :try_end_73
    .catchall {:try_start_5e .. :try_end_73} :catchall_d2

    :goto_73
    monitor-exit p0

    return v1

    :catchall_75
    move-exception v0

    goto :goto_ba

    :catch_77
    move-exception v0

    :try_start_78
    sget-object v2, Lcom/oplus/channel/server/utils/LogUtil;->INSTANCE:Lcom/oplus/channel/server/utils/LogUtil;

    const-string v3, "CallPuller"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "callPull:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/oplus/channel/server/factory/CallPuller;->clientName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " error e = ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v0, 0x5d

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/oplus/channel/server/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a3
    .catchall {:try_start_78 .. :try_end_a3} :catchall_75

    :try_start_a3
    const-string v0, "CallPuller"

    const-string v3, "callPull finally:"

    iget-object v4, p0, Lcom/oplus/channel/server/factory/CallPuller;->clientName:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/oplus/channel/server/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/channel/server/factory/CallPuller;->providerClient:Landroid/content/ContentProviderClient;

    if-nez v0, :cond_b5

    goto :goto_b8

    :cond_b5
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->close()V
    :try_end_b8
    .catchall {:try_start_a3 .. :try_end_b8} :catchall_d2

    :goto_b8
    monitor-exit p0

    return v1

    :goto_ba
    :try_start_ba
    sget-object v1, Lcom/oplus/channel/server/utils/LogUtil;->INSTANCE:Lcom/oplus/channel/server/utils/LogUtil;

    const-string v2, "CallPuller"

    const-string v3, "callPull finally:"

    iget-object v4, p0, Lcom/oplus/channel/server/factory/CallPuller;->clientName:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/oplus/channel/server/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oplus/channel/server/factory/CallPuller;->providerClient:Landroid/content/ContentProviderClient;

    if-nez v1, :cond_ce

    goto :goto_d1

    :cond_ce
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->close()V

    :goto_d1
    throw v0
    :try_end_d2
    .catchall {:try_start_ba .. :try_end_d2} :catchall_d2

    :catchall_d2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final changeProviderClient()V
    .registers 3

    iget-object v0, p0, Lcom/oplus/channel/server/factory/CallPuller;->clientConfig:Lcom/oplus/channel/server/ClientConfig;

    invoke-virtual {v0}, Lcom/oplus/channel/server/ClientConfig;->getProviderAuthority()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/channel/server/factory/CallPuller;->userContext:Lcom/oplus/channel/server/IUserContext;

    if-nez v1, :cond_c

    const/4 v1, 0x0

    goto :goto_10

    :cond_c
    invoke-interface {v1, v0}, Lcom/oplus/channel/server/IUserContext;->acquireUnstableContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v1

    :goto_10
    if-nez v1, :cond_1e

    invoke-direct {p0}, Lcom/oplus/channel/server/factory/CallPuller;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v1

    :cond_1e
    iput-object v1, p0, Lcom/oplus/channel/server/factory/CallPuller;->providerClient:Landroid/content/ContentProviderClient;

    return-void
.end method

.method private final getAliveClientUtil()Lcom/oplus/channel/server/utils/AliveClientUtil;
    .registers 1

    iget-object p0, p0, Lcom/oplus/channel/server/factory/CallPuller;->aliveClientUtil$delegate:Ly2/e;

    invoke-interface {p0}, Ly2/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/channel/server/utils/AliveClientUtil;

    return-object p0
.end method

.method private final getContext()Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/oplus/channel/server/factory/CallPuller;->context$delegate:Ly2/e;

    invoke-interface {p0}, Ly2/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    return-object p0
.end method

.method private final unfreezeClient()V
    .registers 6

    iget-object v0, p0, Lcom/oplus/channel/server/factory/CallPuller;->providerClient:Landroid/content/ContentProviderClient;

    if-nez v0, :cond_25

    sget-object v0, Lcom/oplus/channel/server/ServerChannel;->INSTANCE:Lcom/oplus/channel/server/ServerChannel;

    invoke-virtual {v0}, Lcom/oplus/channel/server/ServerChannel;->getSystemApiClient()Lcom/oplus/channel/server/factory/SystemApiClient;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_f

    goto :goto_20

    :cond_f
    invoke-direct {p0}, Lcom/oplus/channel/server/factory/CallPuller;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/oplus/channel/server/factory/CallPuller;->clientConfig:Lcom/oplus/channel/server/ClientConfig;

    invoke-virtual {v4}, Lcom/oplus/channel/server/ClientConfig;->getClientPackage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lcom/oplus/channel/server/factory/SystemApiClient;->unfreezeClientPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v2, :cond_20

    move v1, v2

    :cond_20
    :goto_20
    if-eqz v1, :cond_25

    invoke-direct {p0}, Lcom/oplus/channel/server/factory/CallPuller;->changeProviderClient()V

    :cond_25
    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 1

    return-void
.end method

.method public pullClient(Z)Z
    .registers 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    sget-object v0, Lcom/oplus/channel/server/utils/LogUtil;->INSTANCE:Lcom/oplus/channel/server/utils/LogUtil;

    const-string v1, "fetchClient:ALIVE_TYPE_CALL shouldForceFetch = ["

    const-string v2, "] clientName = ["

    invoke-static {v1, p1, v2}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/channel/server/factory/CallPuller;->clientName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] clientConfig = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/channel/server/factory/CallPuller;->clientConfig:Lcom/oplus/channel/server/ClientConfig;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CallPuller"

    invoke-virtual {v0, v2, v1}, Lcom/oplus/channel/server/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_8a

    iget-object p1, p0, Lcom/oplus/channel/server/factory/CallPuller;->clientConfig:Lcom/oplus/channel/server/ClientConfig;

    invoke-virtual {p1}, Lcom/oplus/channel/server/ClientConfig;->getNeedNotify()Z

    move-result p1

    if-eqz p1, :cond_88

    iget-object p1, p0, Lcom/oplus/channel/server/factory/CallPuller;->userContext:Lcom/oplus/channel/server/IUserContext;

    const v0, 0x8000

    const-string v1, "/pull/"

    const/4 v2, 0x0

    if-nez p1, :cond_3d

    move-object p1, v2

    goto :goto_61

    :cond_3d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/oplus/channel/server/factory/CallPuller;->contentUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oplus/channel/server/factory/CallPuller;->clientName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "parse(\"$contentUrl/$METHOD_PULL/$clientName\")"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v3, v2, v0}, Lcom/oplus/channel/server/IUserContext;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;I)V

    sget-object p1, Ly2/p;->a:Ly2/p;

    :goto_61
    if-nez p1, :cond_88

    invoke-direct {p0}, Lcom/oplus/channel/server/factory/CallPuller;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/oplus/channel/server/factory/CallPuller;->contentUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/channel/server/factory/CallPuller;->clientName:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p1, p0, v2, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;I)V

    :cond_88
    const/4 p0, 0x0

    return p0

    :cond_8a
    invoke-direct {p0}, Lcom/oplus/channel/server/factory/CallPuller;->asyncCallPull()V

    const/4 p0, 0x1

    return p0
.end method
