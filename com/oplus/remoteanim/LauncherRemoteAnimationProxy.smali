.class public final Lcom/oplus/remoteanim/LauncherRemoteAnimationProxy;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final INSTANCE:Lcom/oplus/remoteanim/LauncherRemoteAnimationProxy;

.field private static final TAG:Ljava/lang/String; = "LauncherRemoteAnimationProxy"

.field private static launcherRemoteProxy:Lcom/oplus/remoteanim/proxyinterface/ILauncherRemoteProxy;

.field private static final launcherRemoteProxyDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private static mainHandler:Landroid/os/Handler;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/remoteanim/LauncherRemoteAnimationProxy;

    invoke-direct {v0}, Lcom/oplus/remoteanim/LauncherRemoteAnimationProxy;-><init>()V

    sput-object v0, Lcom/oplus/remoteanim/LauncherRemoteAnimationProxy;->INSTANCE:Lcom/oplus/remoteanim/LauncherRemoteAnimationProxy;

    sget-object v0, Lb2/a;->a:Lb2/a;

    sput-object v0, Lcom/oplus/remoteanim/LauncherRemoteAnimationProxy;->launcherRemoteProxyDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()V
    .registers 0

    invoke-static {}, Lcom/oplus/remoteanim/LauncherRemoteAnimationProxy;->launcherRemoteProxyDeathRecipient$lambda-0()V

    return-void
.end method

.method private final checkIfProxyNull()V
    .registers 2

    sget-object p0, Lcom/oplus/remoteanim/LauncherRemoteAnimationProxy;->launcherRemoteProxy:Lcom/oplus/remoteanim/proxyinterface/ILauncherRemoteProxy;

    if-eqz p0, :cond_5

    return-void

    :cond_5
    const-string p0, "LauncherRemoteAnimationProxy"

    const-string v0, "checkIfProxyNull: launcherRemoteProxy is NULL."

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private final clearRemoteAnimationViewInfo(Lcom/oplus/remoteanim/data/RemoteAnimationViewInfo;)V
    .registers 3

    invoke-direct {p0}, Lcom/oplus/remoteanim/LauncherRemoteAnimationProxy;->checkIfProxyNull()V

    sget-object p0, Lcom/oplus/remoteanim/LauncherRemoteAnimationProxy;->launcherRemoteProxy:Lcom/oplus/remoteanim/proxyinterface/ILauncherRemoteProxy;

    const-string v0, "LauncherRemoteAnimationProxy"

    if-nez p0, :cond_b

    const/4 p0, 0x0

    goto :goto_22

    :cond_b
    :try_start_b
    invoke-interface {p0, p1}, Lcom/oplus/remoteanim/proxyinterface/ILauncherRemoteProxy;->clearRemoteAnimationViewInfo(Lcom/oplus/remoteanim/data/RemoteAnimationViewInfo;)V

    sget-object p1, Ly2/p;->a:Ly2/p;
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_11

    goto :goto_16

    :catchall_11
    move-exception p1

    invoke-static {p1}, Lq/d;->h(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    :goto_16
    invoke-static {p1}, Ly2/j;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_1d

    goto :goto_22

    :cond_1d
    const-string p1, "Failed call clearRemoteAnimationViewInfo"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_22
    if-nez p0, :cond_29

    const-string p0, "clearRemoteAnimationViewInfo: maybe launcherRemoteProxy is null"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    return-void
.end method

.method private static final launcherRemoteProxyDeathRecipient$lambda-0()V
    .registers 3

    const-string v0, "LauncherRemoteAnimationProxy"

    const-string v1, "launcherRemoteProxy maybe died, so we should clear proxy now"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/oplus/remoteanim/LauncherRemoteAnimationProxy;->mainHandler:Landroid/os/Handler;

    if-nez v0, :cond_c

    goto :goto_16

    :cond_c
    sget-object v1, Lcom/oplus/remoteanim/LauncherRemoteAnimationProxy;->INSTANCE:Lcom/oplus/remoteanim/LauncherRemoteAnimationProxy;

    new-instance v2, Lcom/oplus/quickstep/common/observers/a;

    invoke-direct {v2, v1}, Lcom/oplus/quickstep/common/observers/a;-><init>(Lcom/oplus/remoteanim/LauncherRemoteAnimationProxy;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_16
    return-void
.end method

.method private final linkToDeath()V
    .registers 5

    invoke-direct {p0}, Lcom/oplus/remoteanim/LauncherRemoteAnimationProxy;->checkIfProxyNull()V

    sget-object p0, Lcom/oplus/remoteanim/LauncherRemoteAnimationProxy;->launcherRemoteProxy:Lcom/oplus/remoteanim/proxyinterface/ILauncherRemoteProxy;

    const-string v0, "LauncherRemoteAnimationProxy"

    if-nez p0, :cond_b

    const/4 p0, 0x0

    goto :goto_29

    :cond_b
    :try_start_b
    invoke-interface {p0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    sget-object v2, Lcom/oplus/remoteanim/LauncherRemoteAnimationProxy;->launcherRemoteProxyDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    sget-object v1, Ly2/p;->a:Ly2/p;
    :try_end_17
    .catchall {:try_start_b .. :try_end_17} :catchall_18

    goto :goto_1d

    :catchall_18
    move-exception v1

    invoke-static {v1}, Lq/d;->h(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    :goto_1d
    invoke-static {v1}, Ly2/j;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_24

    goto :goto_29

    :cond_24
    const-string v1, "Failed to link remote animation proxy death recipient"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_29
    if-nez p0, :cond_30

    const-string p0, "linkToDeath: maybe launcherRemoteProxy is null"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_30
    return-void
.end method

.method private final notifyTransaction(Landroid/os/Bundle;)V
    .registers 3

    invoke-direct {p0}, Lcom/oplus/remoteanim/LauncherRemoteAnimationProxy;->checkIfProxyNull()V

    sget-object p0, Lcom/oplus/remoteanim/LauncherRemoteAnimationProxy;->launcherRemoteProxy:Lcom/oplus/remoteanim/proxyinterface/ILauncherRemoteProxy;

    const-string v0, "LauncherRemoteAnimationProxy"

    if-nez p0, :cond_b

    const/4 p0, 0x0

    goto :goto_22

    :cond_b
    :try_start_b
    invoke-interface {p0, p1}, Lcom/oplus/remoteanim/proxyinterface/ILauncherRemoteProxy;->notifyTransaction(Landroid/os/Bundle;)V

    sget-object p1, Ly2/p;->a:Ly2/p;
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_11

    goto :goto_16

    :catchall_11
    move-exception p1

    invoke-static {p1}, Lq/d;->h(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    :goto_16
    invoke-static {p1}, Ly2/j;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_1d

    goto :goto_22

    :cond_1d
    const-string p1, "Failed call clearRemoteAnimationViewInfo"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_22
    if-nez p0, :cond_29

    const-string p0, "clearRemoteAnimationViewInfo: maybe launcherRemoteProxy is null"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    return-void
.end method

.method private final sendRemoteAnimationViewInfo(Lcom/oplus/remoteanim/data/RemoteAnimationViewInfo;)V
    .registers 4

    invoke-direct {p0}, Lcom/oplus/remoteanim/LauncherRemoteAnimationProxy;->checkIfProxyNull()V

    sget-object p0, Lcom/oplus/remoteanim/LauncherRemoteAnimationProxy;->launcherRemoteProxy:Lcom/oplus/remoteanim/proxyinterface/ILauncherRemoteProxy;

    const-string v0, "LauncherRemoteAnimationProxy"

    if-nez p0, :cond_b

    const/4 p0, 0x0

    goto :goto_2b

    :cond_b
    :try_start_b
    const-string v1, "sendRemoteAnimationViewInfo: "

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p0, p1}, Lcom/oplus/remoteanim/proxyinterface/ILauncherRemoteProxy;->sendRemoteAnimationViewInfo(Lcom/oplus/remoteanim/data/RemoteAnimationViewInfo;)V

    sget-object p1, Ly2/p;->a:Ly2/p;
    :try_end_19
    .catchall {:try_start_b .. :try_end_19} :catchall_1a

    goto :goto_1f

    :catchall_1a
    move-exception p1

    invoke-static {p1}, Lq/d;->h(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    :goto_1f
    invoke-static {p1}, Ly2/j;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_26

    goto :goto_2b

    :cond_26
    const-string p1, "Failed call sendRemoteAnimationViewInfo"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2b
    if-nez p0, :cond_32

    const-string p0, "sendRemoteAnimationViewInfo: maybe launcherRemoteProxy is null"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_32
    return-void
.end method

.method private final unlinkToDeath()V
    .registers 5

    invoke-direct {p0}, Lcom/oplus/remoteanim/LauncherRemoteAnimationProxy;->checkIfProxyNull()V

    sget-object p0, Lcom/oplus/remoteanim/LauncherRemoteAnimationProxy;->launcherRemoteProxy:Lcom/oplus/remoteanim/proxyinterface/ILauncherRemoteProxy;

    const-string v0, "LauncherRemoteAnimationProxy"

    if-nez p0, :cond_b

    const/4 p0, 0x0

    goto :goto_2c

    :cond_b
    :try_start_b
    invoke-interface {p0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    sget-object v2, Lcom/oplus/remoteanim/LauncherRemoteAnimationProxy;->launcherRemoteProxyDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1
    :try_end_1a
    .catchall {:try_start_b .. :try_end_1a} :catchall_1b

    goto :goto_20

    :catchall_1b
    move-exception v1

    invoke-static {v1}, Lq/d;->h(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    :goto_20
    invoke-static {v1}, Ly2/j;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_27

    goto :goto_2c

    :cond_27
    const-string v1, "Failed to unlink remote animation proxy death recipient"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2c
    if-nez p0, :cond_33

    const-string p0, "unlinkToDeath: maybe launcherRemoteProxy is null"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_33
    return-void
.end method


# virtual methods
.method public final clearProxy()V
    .registers 3

    const-string v0, "LauncherRemoteAnimationProxy"

    const-string v1, "clearProxy()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oplus/remoteanim/LauncherRemoteAnimationProxy;->setProxy(Lcom/oplus/remoteanim/proxyinterface/ILauncherRemoteProxy;)V

    return-void
.end method

.method public final setProxy(Lcom/oplus/remoteanim/proxyinterface/ILauncherRemoteProxy;)V
    .registers 4

    const-string v0, "setProxy: proxy="

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "LauncherRemoteAnimationProxy"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/oplus/remoteanim/LauncherRemoteAnimationProxy;->unlinkToDeath()V

    sput-object p1, Lcom/oplus/remoteanim/LauncherRemoteAnimationProxy;->launcherRemoteProxy:Lcom/oplus/remoteanim/proxyinterface/ILauncherRemoteProxy;

    invoke-direct {p0}, Lcom/oplus/remoteanim/LauncherRemoteAnimationProxy;->linkToDeath()V

    return-void
.end method
