.class public Lcom/oplus/epona/internal/BinderCache;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "Epona->BinderCache"

.field private static volatile sInstance:Lcom/oplus/epona/internal/BinderCache;


# instance fields
.field private final mCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oplus/epona/internal/BinderCache;->mCache:Ljava/util/Map;

    return-void
.end method

.method public static synthetic a(Lcom/oplus/epona/internal/BinderCache;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/epona/internal/BinderCache;->lambda$put$0(Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance()Lcom/oplus/epona/internal/BinderCache;
    .registers 2

    sget-object v0, Lcom/oplus/epona/internal/BinderCache;->sInstance:Lcom/oplus/epona/internal/BinderCache;

    if-nez v0, :cond_17

    const-class v0, Lcom/oplus/epona/internal/BinderCache;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/oplus/epona/internal/BinderCache;->sInstance:Lcom/oplus/epona/internal/BinderCache;

    if-nez v1, :cond_12

    new-instance v1, Lcom/oplus/epona/internal/BinderCache;

    invoke-direct {v1}, Lcom/oplus/epona/internal/BinderCache;-><init>()V

    sput-object v1, Lcom/oplus/epona/internal/BinderCache;->sInstance:Lcom/oplus/epona/internal/BinderCache;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    :cond_17
    :goto_17
    sget-object v0, Lcom/oplus/epona/internal/BinderCache;->sInstance:Lcom/oplus/epona/internal/BinderCache;

    return-object v0
.end method

.method private synthetic lambda$put$0(Ljava/lang/String;)V
    .registers 3

    iget-object p0, p0, Lcom/oplus/epona/internal/BinderCache;->mCache:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unregister cached binder： "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "Epona->BinderCache"

    invoke-static {v0, p0, p1}, Lcom/oplus/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Landroid/os/IBinder;
    .registers 2

    iget-object p0, p0, Lcom/oplus/epona/internal/BinderCache;->mCache:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/IBinder;

    return-object p0
.end method

.method public put(Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 5

    iget-object v0, p0, Lcom/oplus/epona/internal/BinderCache;->mCache:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    :try_start_6
    new-instance v1, Lcom/android/wm/shell/transition/e;

    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/transition/e;-><init>(Lcom/oplus/epona/internal/BinderCache;Ljava/lang/String;)V

    invoke-interface {p2, v1, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_f

    goto :goto_1b

    :catch_f
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "Epona->BinderCache"

    invoke-static {p2, p0, p1}, Lcom/oplus/utils/Logger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1b
    return-void
.end method
