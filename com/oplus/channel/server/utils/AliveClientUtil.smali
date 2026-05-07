.class public final Lcom/oplus/channel/server/utils/AliveClientUtil;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/channel/server/utils/AliveClientUtil$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/channel/server/utils/AliveClientUtil$Companion;

.field public static final PULL_ALIVE_SERVICE_NAME:Ljava/lang/String; = "com.oplus.channel.client.service.PullAliveService"

.field public static final TAG:Ljava/lang/String; = "AliveClientUtil"


# instance fields
.field private final context$delegate:Ly2/e;

.field private countDownLatch:Ljava/util/concurrent/CountDownLatch;

.field private mConnection:Landroid/content/ServiceConnection;

.field private final userContext:Lcom/oplus/channel/server/IUserContext;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/channel/server/utils/AliveClientUtil$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/channel/server/utils/AliveClientUtil$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/channel/server/utils/AliveClientUtil;->Companion:Lcom/oplus/channel/server/utils/AliveClientUtil$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 8

    const-class v0, Lcom/oplus/channel/server/IUserContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Lcom/oplus/channel/server/utils/ServerDI;->INSTANCE:Lcom/oplus/channel/server/utils/ServerDI;

    invoke-virtual {v1}, Lcom/oplus/channel/server/utils/ServerDI;->getSingleInstanceMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    const-class v3, Landroid/content/Context;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Ln3/c;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "the class are not injected"

    if-eqz v2, :cond_88

    invoke-virtual {v1}, Lcom/oplus/channel/server/utils/ServerDI;->getSingleInstanceMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    const-class v4, Landroid/content/Context;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Ln3/c;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v4, "null cannot be cast to non-null type kotlin.Lazy<T of com.oplus.channel.server.utils.ServerDI.injectSingle>"

    invoke-static {v2, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v2, Ly2/e;

    iput-object v2, p0, Lcom/oplus/channel/server/utils/AliveClientUtil;->context$delegate:Ly2/e;

    const/4 v2, 0x0

    :try_start_31
    invoke-virtual {v1}, Lcom/oplus/channel/server/utils/ServerDI;->getSingleInstanceMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v5

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Ln3/c;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_5a

    invoke-virtual {v1}, Lcom/oplus/channel/server/utils/ServerDI;->getSingleInstanceMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Ln3/c;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_54

    check-cast v0, Ly2/e;

    invoke-static {v0}, Lcom/oplus/channel/server/utils/ServerDI;->access$injectNullable$lambda-1$lambda-0(Ly2/e;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_7c

    :cond_54
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5a
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_60
    .catchall {:try_start_31 .. :try_end_60} :catchall_60

    :catchall_60
    move-exception v0

    invoke-static {v0}, Lq/d;->h(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ly2/j;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_7c

    sget-object v1, Lcom/oplus/channel/server/utils/LogUtil;->INSTANCE:Lcom/oplus/channel/server/utils/LogUtil;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v3, "injectNullable：iUserContext exception "

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "ServerDI"

    invoke-virtual {v1, v3, v0}, Lcom/oplus/channel/server/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7c
    :goto_7c
    check-cast v2, Lcom/oplus/channel/server/IUserContext;

    iput-object v2, p0, Lcom/oplus/channel/server/utils/AliveClientUtil;->userContext:Lcom/oplus/channel/server/IUserContext;

    new-instance v0, Lcom/oplus/channel/server/utils/AliveClientUtil$mConnection$1;

    invoke-direct {v0, p0}, Lcom/oplus/channel/server/utils/AliveClientUtil$mConnection$1;-><init>(Lcom/oplus/channel/server/utils/AliveClientUtil;)V

    iput-object v0, p0, Lcom/oplus/channel/server/utils/AliveClientUtil;->mConnection:Landroid/content/ServiceConnection;

    return-void

    :cond_88
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final synthetic access$getCountDownLatch$p(Lcom/oplus/channel/server/utils/AliveClientUtil;)Ljava/util/concurrent/CountDownLatch;
    .registers 1

    iget-object p0, p0, Lcom/oplus/channel/server/utils/AliveClientUtil;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method public static final synthetic access$unbindService(Lcom/oplus/channel/server/utils/AliveClientUtil;)V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/channel/server/utils/AliveClientUtil;->unbindService()V

    return-void
.end method

.method private final getContext()Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/oplus/channel/server/utils/AliveClientUtil;->context$delegate:Ly2/e;

    invoke-interface {p0}, Ly2/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    return-object p0
.end method

.method private final unbindService()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/oplus/channel/server/utils/AliveClientUtil;->userContext:Lcom/oplus/channel/server/IUserContext;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_d

    :cond_6
    iget-object v1, p0, Lcom/oplus/channel/server/utils/AliveClientUtil;->mConnection:Landroid/content/ServiceConnection;

    invoke-interface {v0, v1}, Lcom/oplus/channel/server/IUserContext;->unbindService(Landroid/content/ServiceConnection;)V

    sget-object v0, Ly2/p;->a:Ly2/p;

    :goto_d
    if-nez v0, :cond_18

    invoke-direct {p0}, Lcom/oplus/channel/server/utils/AliveClientUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/channel/server/utils/AliveClientUtil;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_18
    sget-object p0, Ly2/p;->a:Ly2/p;
    :try_end_1a
    .catchall {:try_start_0 .. :try_end_1a} :catchall_1b

    goto :goto_20

    :catchall_1b
    move-exception p0

    invoke-static {p0}, Lq/d;->h(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_20
    invoke-static {p0}, Ly2/j;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_37

    sget-object v0, Lcom/oplus/channel/server/utils/LogUtil;->INSTANCE:Lcom/oplus/channel/server/utils/LogUtil;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v1, "unbindService() e:"

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "AliveClientUtil"

    invoke-virtual {v0, v1, p0}, Lcom/oplus/channel/server/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_37
    return-void
.end method


# virtual methods
.method public final bindService(Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 7

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/channel/server/utils/LogUtil;->INSTANCE:Lcom/oplus/channel/server/utils/LogUtil;

    const-string v1, "bindService: "

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "AliveClientUtil"

    invoke-virtual {v0, v2, v1}, Lcom/oplus/channel/server/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/oplus/channel/server/utils/PullAliveServiceAboutUtil;->INSTANCE:Lcom/oplus/channel/server/utils/PullAliveServiceAboutUtil;

    invoke-virtual {v1}, Lcom/oplus/channel/server/utils/PullAliveServiceAboutUtil;->isLessThanVersionQ()Z

    move-result v1

    if-nez v1, :cond_22

    const-string p0, "bindService is not op"

    invoke-virtual {v0, v2, p0}, Lcom/oplus/channel/server/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_22
    :try_start_22
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/oplus/channel/server/utils/AliveClientUtil;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.oplus.channel.client.service.PullAliveService"

    invoke-direct {v3, p1, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/oplus/channel/server/utils/AliveClientUtil;->userContext:Lcom/oplus/channel/server/IUserContext;

    const/4 v3, 0x0

    if-nez p1, :cond_40

    move-object p1, v3

    goto :goto_47

    :cond_40
    iget-object v4, p0, Lcom/oplus/channel/server/utils/AliveClientUtil;->mConnection:Landroid/content/ServiceConnection;

    invoke-interface {p1, v0, v4, v1}, Lcom/oplus/channel/server/IUserContext;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)V

    sget-object p1, Ly2/p;->a:Ly2/p;

    :goto_47
    if-nez p1, :cond_52

    invoke-direct {p0}, Lcom/oplus/channel/server/utils/AliveClientUtil;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v4, p0, Lcom/oplus/channel/server/utils/AliveClientUtil;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0, v4, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :cond_52
    iget-object p0, p0, Lcom/oplus/channel/server/utils/AliveClientUtil;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    if-nez p0, :cond_57

    goto :goto_63

    :cond_57
    const-wide/16 v0, 0x5

    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, p1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3
    :try_end_63
    .catchall {:try_start_22 .. :try_end_63} :catchall_64

    :goto_63
    return-object v3

    :catchall_64
    move-exception p0

    invoke-static {p0}, Lq/d;->h(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ly2/j;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_7e

    sget-object p1, Lcom/oplus/channel/server/utils/LogUtil;->INSTANCE:Lcom/oplus/channel/server/utils/LogUtil;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "bindService() e:"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v2, p0}, Lcom/oplus/channel/server/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7e
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method
