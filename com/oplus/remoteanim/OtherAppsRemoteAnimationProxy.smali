.class public final Lcom/oplus/remoteanim/OtherAppsRemoteAnimationProxy;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final INSTANCE:Lcom/oplus/remoteanim/OtherAppsRemoteAnimationProxy;

.field private static final TAG:Ljava/lang/String; = "OtherAppsRemoteAnimationProxy"

.field private static deathRecipientMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/os/IBinder$DeathRecipient;",
            ">;"
        }
    .end annotation
.end field

.field private static mainHandler:Landroid/os/Handler;

.field private static otherAppsProxies:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/oplus/remoteanim/proxyinterface/IOtherAppsRemoteProxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/remoteanim/OtherAppsRemoteAnimationProxy;

    invoke-direct {v0}, Lcom/oplus/remoteanim/OtherAppsRemoteAnimationProxy;-><init>()V

    sput-object v0, Lcom/oplus/remoteanim/OtherAppsRemoteAnimationProxy;->INSTANCE:Lcom/oplus/remoteanim/OtherAppsRemoteAnimationProxy;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/oplus/remoteanim/OtherAppsRemoteAnimationProxy;->otherAppsProxies:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/oplus/remoteanim/OtherAppsRemoteAnimationProxy;->deathRecipientMap:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Lcom/oplus/remoteanim/OtherAppsRemoteAnimationProxy;->linkToDeath$lambda-25$lambda-22$lambda-21(Ljava/lang/String;)V

    return-void
.end method

.method private final addDeathRecipient(Ljava/lang/String;Landroid/os/IBinder$DeathRecipient;)V
    .registers 4

    const-string p0, "addDeathRecipient: remotePackage = "

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "OtherAppsRemoteAnimationProxy"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/oplus/remoteanim/OtherAppsRemoteAnimationProxy;->deathRecipientMap:Ljava/util/HashMap;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic b(Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Lcom/oplus/remoteanim/OtherAppsRemoteAnimationProxy;->linkToDeath$lambda-25$lambda-22(Ljava/lang/String;)V

    return-void
.end method

.method private final checkIfProxyNull(Lcom/oplus/remoteanim/proxyinterface/IOtherAppsRemoteProxy;)V
    .registers 2

    if-eqz p1, :cond_3

    return-void

    :cond_3
    const-string p0, "OtherAppsRemoteAnimationProxy"

    const-string p1, "checkIfProxyNull: remoteAnimationProxy is NULL."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private final linkToDeath(Ljava/lang/String;Lcom/oplus/remoteanim/proxyinterface/IOtherAppsRemoteProxy;)V
    .registers 6

    invoke-direct {p0, p2}, Lcom/oplus/remoteanim/OtherAppsRemoteAnimationProxy;->checkIfProxyNull(Lcom/oplus/remoteanim/proxyinterface/IOtherAppsRemoteProxy;)V

    const-string p0, "OtherAppsRemoteAnimationProxy"

    if-nez p2, :cond_9

    const/4 p2, 0x0

    goto :goto_2f

    :cond_9
    new-instance v0, Lcom/android/quickstep/b1;

    invoke-direct {v0, p1}, Lcom/android/quickstep/b1;-><init>(Ljava/lang/String;)V

    :try_start_e
    invoke-interface {p2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    sget-object v1, Lcom/oplus/remoteanim/OtherAppsRemoteAnimationProxy;->INSTANCE:Lcom/oplus/remoteanim/OtherAppsRemoteAnimationProxy;

    invoke-direct {v1, p1, v0}, Lcom/oplus/remoteanim/OtherAppsRemoteAnimationProxy;->addDeathRecipient(Ljava/lang/String;Landroid/os/IBinder$DeathRecipient;)V

    sget-object p1, Ly2/p;->a:Ly2/p;
    :try_end_1d
    .catchall {:try_start_e .. :try_end_1d} :catchall_1e

    goto :goto_23

    :catchall_1e
    move-exception p1

    invoke-static {p1}, Lq/d;->h(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    :goto_23
    invoke-static {p1}, Ly2/j;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_2a

    goto :goto_2f

    :cond_2a
    const-string p1, "Failed to link remote animation proxy death recipient"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2f
    if-nez p2, :cond_36

    const-string p1, "linkToDeath: maybe remoteAnimationProxy is null"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_36
    return-void
.end method

.method private static final linkToDeath$lambda-25$lambda-22(Ljava/lang/String;)V
    .registers 4

    const-string v0, "$remotePackage"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "remoteAnimationProxy("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") maybe died, so we should clear proxy now"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OtherAppsRemoteAnimationProxy"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/oplus/remoteanim/OtherAppsRemoteAnimationProxy;->mainHandler:Landroid/os/Handler;

    if-nez v0, :cond_25

    goto :goto_2e

    :cond_25
    new-instance v1, Lcom/android/launcher/download/e;

    const/4 v2, 0x5

    invoke-direct {v1, p0, v2}, Lcom/android/launcher/download/e;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_2e
    return-void
.end method

.method private static final linkToDeath$lambda-25$lambda-22$lambda-21(Ljava/lang/String;)V
    .registers 2

    const-string v0, "$remotePackage"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/remoteanim/OtherAppsRemoteAnimationProxy;->INSTANCE:Lcom/oplus/remoteanim/OtherAppsRemoteAnimationProxy;

    invoke-virtual {v0, p0}, Lcom/oplus/remoteanim/OtherAppsRemoteAnimationProxy;->clearProxy(Ljava/lang/String;)V

    return-void
.end method

.method private final onRecentsAnimationFinished(Landroid/os/Bundle;Lcom/oplus/remoteanim/proxyinterface/IOtherAppsRemoteProxy;)V
    .registers 3

    invoke-direct {p0, p2}, Lcom/oplus/remoteanim/OtherAppsRemoteAnimationProxy;->checkIfProxyNull(Lcom/oplus/remoteanim/proxyinterface/IOtherAppsRemoteProxy;)V

    const-string p0, "OtherAppsRemoteAnimationProxy"

    if-nez p2, :cond_9

    const/4 p2, 0x0

    goto :goto_20

    :cond_9
    :try_start_9
    invoke-interface {p2, p1}, Lcom/oplus/remoteanim/proxyinterface/IOtherAppsRemoteProxy;->onRecentsAnimationFinished(Landroid/os/Bundle;)V

    sget-object p1, Ly2/p;->a:Ly2/p;
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_f

    goto :goto_14

    :catchall_f
    move-exception p1

    invoke-static {p1}, Lq/d;->h(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    :goto_14
    invoke-static {p1}, Ly2/j;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_1b

    goto :goto_20

    :cond_1b
    const-string p1, "Failed call onRecentsAnimationFinished"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_20
    if-nez p2, :cond_27

    const-string p1, "onRecentsAnimationFinished: maybe remoteAnimationProxy is null"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27
    return-void
.end method

.method private final onRecentsAnimationStart(Landroid/os/Bundle;Lcom/oplus/remoteanim/proxyinterface/IOtherAppsRemoteProxy;)V
    .registers 3

    invoke-direct {p0, p2}, Lcom/oplus/remoteanim/OtherAppsRemoteAnimationProxy;->checkIfProxyNull(Lcom/oplus/remoteanim/proxyinterface/IOtherAppsRemoteProxy;)V

    const-string p0, "OtherAppsRemoteAnimationProxy"

    if-nez p2, :cond_9

    const/4 p2, 0x0

    goto :goto_20

    :cond_9
    :try_start_9
    invoke-interface {p2, p1}, Lcom/oplus/remoteanim/proxyinterface/IOtherAppsRemoteProxy;->onRecentsAnimationStart(Landroid/os/Bundle;)V

    sget-object p1, Ly2/p;->a:Ly2/p;
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_f

    goto :goto_14

    :catchall_f
    move-exception p1

    invoke-static {p1}, Lq/d;->h(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    :goto_14
    invoke-static {p1}, Ly2/j;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_1b

    goto :goto_20

    :cond_1b
    const-string p1, "Failed call onRecentsAnimationStart"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_20
    if-nez p2, :cond_27

    const-string p1, "onRecentsAnimationStart: maybe remoteAnimationProxy is null"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27
    return-void
.end method

.method private final onRecentsAnimationSurfaceSave(Landroid/os/Bundle;Lcom/oplus/remoteanim/proxyinterface/IOtherAppsRemoteProxy;)V
    .registers 3

    invoke-direct {p0, p2}, Lcom/oplus/remoteanim/OtherAppsRemoteAnimationProxy;->checkIfProxyNull(Lcom/oplus/remoteanim/proxyinterface/IOtherAppsRemoteProxy;)V

    const-string p0, "OtherAppsRemoteAnimationProxy"

    if-nez p2, :cond_9

    const/4 p2, 0x0

    goto :goto_20

    :cond_9
    :try_start_9
    invoke-interface {p2, p1}, Lcom/oplus/remoteanim/proxyinterface/IOtherAppsRemoteProxy;->onRecentsAnimationSurfaceSave(Landroid/os/Bundle;)V

    sget-object p1, Ly2/p;->a:Ly2/p;
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_f

    goto :goto_14

    :catchall_f
    move-exception p1

    invoke-static {p1}, Lq/d;->h(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    :goto_14
    invoke-static {p1}, Ly2/j;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_1b

    goto :goto_20

    :cond_1b
    const-string p1, "Failed call onRecentsAnimationSurfaceSave"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_20
    if-nez p2, :cond_27

    const-string p1, "onRecentsAnimationSurfaceSave: maybe remoteAnimationProxy is null"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27
    return-void
.end method

.method private final onViewAlphaChanged(FLcom/oplus/remoteanim/proxyinterface/IOtherAppsRemoteProxy;)V
    .registers 3

    invoke-direct {p0, p2}, Lcom/oplus/remoteanim/OtherAppsRemoteAnimationProxy;->checkIfProxyNull(Lcom/oplus/remoteanim/proxyinterface/IOtherAppsRemoteProxy;)V

    const-string p0, "OtherAppsRemoteAnimationProxy"

    if-nez p2, :cond_9

    const/4 p2, 0x0

    goto :goto_20

    :cond_9
    :try_start_9
    invoke-interface {p2, p1}, Lcom/oplus/remoteanim/proxyinterface/IOtherAppsRemoteProxy;->onViewAlphaChanged(F)V

    sget-object p1, Ly2/p;->a:Ly2/p;
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_f

    goto :goto_14

    :catchall_f
    move-exception p1

    invoke-static {p1}, Lq/d;->h(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    :goto_14
    invoke-static {p1}, Ly2/j;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_1b

    goto :goto_20

    :cond_1b
    const-string p1, "Failed call onViewAlphaChanged"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_20
    if-nez p2, :cond_27

    const-string p1, "onViewAlphaChanged: maybe remoteAnimationProxy is null"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27
    return-void
.end method

.method private final removeDeathRecipient(Ljava/lang/String;)V
    .registers 3

    const-string p0, "removeDeathRecipient: remotePackage = "

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "OtherAppsRemoteAnimationProxy"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/oplus/remoteanim/OtherAppsRemoteAnimationProxy;->deathRecipientMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final unlinkToDeath(Ljava/lang/String;)V
    .registers 6

    sget-object v0, Lcom/oplus/remoteanim/OtherAppsRemoteAnimationProxy;->otherAppsProxies:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/remoteanim/proxyinterface/IOtherAppsRemoteProxy;

    invoke-direct {p0, v0}, Lcom/oplus/remoteanim/OtherAppsRemoteAnimationProxy;->checkIfProxyNull(Lcom/oplus/remoteanim/proxyinterface/IOtherAppsRemoteProxy;)V

    const-string p0, "OtherAppsRemoteAnimationProxy"

    if-nez v0, :cond_11

    const/4 v0, 0x0

    goto :goto_40

    :cond_11
    sget-object v1, Lcom/oplus/remoteanim/OtherAppsRemoteAnimationProxy;->deathRecipientMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder$DeathRecipient;

    if-nez v1, :cond_1c

    goto :goto_3b

    :cond_1c
    :try_start_1c
    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1
    :try_end_29
    .catchall {:try_start_1c .. :try_end_29} :catchall_2a

    goto :goto_2f

    :catchall_2a
    move-exception v1

    invoke-static {v1}, Lq/d;->h(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    :goto_2f
    invoke-static {v1}, Ly2/j;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_36

    goto :goto_3b

    :cond_36
    const-string v1, "Failed to unlink remote animation proxy death recipient"

    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3b
    sget-object v1, Lcom/oplus/remoteanim/OtherAppsRemoteAnimationProxy;->INSTANCE:Lcom/oplus/remoteanim/OtherAppsRemoteAnimationProxy;

    invoke-direct {v1, p1}, Lcom/oplus/remoteanim/OtherAppsRemoteAnimationProxy;->removeDeathRecipient(Ljava/lang/String;)V

    :goto_40
    if-nez v0, :cond_47

    const-string p1, "unlinkToDeath: maybe remoteAnimationProxy is null"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_47
    return-void
.end method


# virtual methods
.method public final addProxy(Ljava/lang/String;Lcom/oplus/remoteanim/proxyinterface/IOtherAppsRemoteProxy;)V
    .registers 5

    const-string v0, "remotePackage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "addProxy: proxy="

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "OtherAppsRemoteAnimationProxy"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/oplus/remoteanim/OtherAppsRemoteAnimationProxy;->unlinkToDeath(Ljava/lang/String;)V

    if-nez p2, :cond_16

    goto :goto_20

    :cond_16
    sget-object p0, Lcom/oplus/remoteanim/OtherAppsRemoteAnimationProxy;->otherAppsProxies:Ljava/util/HashMap;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/oplus/remoteanim/OtherAppsRemoteAnimationProxy;->INSTANCE:Lcom/oplus/remoteanim/OtherAppsRemoteAnimationProxy;

    invoke-direct {p0, p1, p2}, Lcom/oplus/remoteanim/OtherAppsRemoteAnimationProxy;->linkToDeath(Ljava/lang/String;Lcom/oplus/remoteanim/proxyinterface/IOtherAppsRemoteProxy;)V

    :goto_20
    return-void
.end method

.method public final clearProxy(Ljava/lang/String;)V
    .registers 4

    const-string v0, "remotePackage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clearProxy: "

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "OtherAppsRemoteAnimationProxy"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/oplus/remoteanim/OtherAppsRemoteAnimationProxy;->unlinkToDeath(Ljava/lang/String;)V

    sget-object p0, Lcom/oplus/remoteanim/OtherAppsRemoteAnimationProxy;->otherAppsProxies:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final onRecentsAnimationFinished(Landroid/os/Bundle;)V
    .registers 4

    const-string p0, "OtherAppsRemoteAnimationProxy"

    const-string v0, "onRecentsAnimationFinished()"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/oplus/remoteanim/OtherAppsRemoteAnimationProxy;->otherAppsProxies:Ljava/util/HashMap;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_11
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/remoteanim/proxyinterface/IOtherAppsRemoteProxy;

    sget-object v1, Lcom/oplus/remoteanim/OtherAppsRemoteAnimationProxy;->INSTANCE:Lcom/oplus/remoteanim/OtherAppsRemoteAnimationProxy;

    invoke-direct {v1, p1, v0}, Lcom/oplus/remoteanim/OtherAppsRemoteAnimationProxy;->onRecentsAnimationFinished(Landroid/os/Bundle;Lcom/oplus/remoteanim/proxyinterface/IOtherAppsRemoteProxy;)V

    goto :goto_11

    :cond_2f
    return-void
.end method

.method public final onRecentsAnimationStart(Landroid/os/Bundle;)V
    .registers 6

    const-string p0, "OtherAppsRemoteAnimationProxy"

    const-string v0, "onRecentsAnimationStart()"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/oplus/remoteanim/OtherAppsRemoteAnimationProxy;->otherAppsProxies:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/remoteanim/proxyinterface/IOtherAppsRemoteProxy;

    const-string v3, "onRecentsAnimationStart: pkg = "

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/oplus/remoteanim/OtherAppsRemoteAnimationProxy;->INSTANCE:Lcom/oplus/remoteanim/OtherAppsRemoteAnimationProxy;

    invoke-direct {v2, p1, v1}, Lcom/oplus/remoteanim/OtherAppsRemoteAnimationProxy;->onRecentsAnimationStart(Landroid/os/Bundle;Lcom/oplus/remoteanim/proxyinterface/IOtherAppsRemoteProxy;)V

    goto :goto_11

    :cond_38
    return-void
.end method

.method public final onRecentsAnimationSurfaceSave(Landroid/os/Bundle;)V
    .registers 4

    const-string p0, "OtherAppsRemoteAnimationProxy"

    const-string v0, "onRecentsAnimationSurfaceSave()"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/oplus/remoteanim/OtherAppsRemoteAnimationProxy;->otherAppsProxies:Ljava/util/HashMap;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_11
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/remoteanim/proxyinterface/IOtherAppsRemoteProxy;

    sget-object v1, Lcom/oplus/remoteanim/OtherAppsRemoteAnimationProxy;->INSTANCE:Lcom/oplus/remoteanim/OtherAppsRemoteAnimationProxy;

    invoke-direct {v1, p1, v0}, Lcom/oplus/remoteanim/OtherAppsRemoteAnimationProxy;->onRecentsAnimationSurfaceSave(Landroid/os/Bundle;Lcom/oplus/remoteanim/proxyinterface/IOtherAppsRemoteProxy;)V

    goto :goto_11

    :cond_2f
    return-void
.end method

.method public final onViewAlphaChanged(F)V
    .registers 4

    sget-object p0, Lcom/oplus/remoteanim/OtherAppsRemoteAnimationProxy;->otherAppsProxies:Ljava/util/HashMap;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/remoteanim/proxyinterface/IOtherAppsRemoteProxy;

    sget-object v1, Lcom/oplus/remoteanim/OtherAppsRemoteAnimationProxy;->INSTANCE:Lcom/oplus/remoteanim/OtherAppsRemoteAnimationProxy;

    invoke-direct {v1, p1, v0}, Lcom/oplus/remoteanim/OtherAppsRemoteAnimationProxy;->onViewAlphaChanged(FLcom/oplus/remoteanim/proxyinterface/IOtherAppsRemoteProxy;)V

    goto :goto_a

    :cond_28
    return-void
.end method
