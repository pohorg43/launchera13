.class public final Lcom/oplus/fancyicon/NotifierManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/fancyicon/NotifierManager$MultiBroadcastNotifier;,
        Lcom/oplus/fancyicon/NotifierManager$MobileDataNotifier;,
        Lcom/oplus/fancyicon/NotifierManager$BroadcastNotifier;,
        Lcom/oplus/fancyicon/NotifierManager$BaseNotifier;,
        Lcom/oplus/fancyicon/NotifierManager$OnNotifyListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "NotifierManager"

.field public static final TYPE_MOBILE_DATA:Ljava/lang/String; = "MobileData"

.field public static final TYPE_WIFI_STATE:Ljava/lang/String; = "WifiState"

.field private static sInstance:Lcom/oplus/fancyicon/NotifierManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mNotifiers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/oplus/fancyicon/NotifierManager$BaseNotifier;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oplus/fancyicon/NotifierManager;->mNotifiers:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/oplus/fancyicon/NotifierManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method private createNotifier(Ljava/lang/String;Landroid/content/Context;)Lcom/oplus/fancyicon/NotifierManager$BaseNotifier;
    .registers 5

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "createNotifier:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "NotifierManager"

    invoke-static {v0, p0}, Lcom/oplus/fancyicon/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "MobileData"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_24

    new-instance p0, Lcom/oplus/fancyicon/NotifierManager$MobileDataNotifier;

    invoke-direct {p0, p2}, Lcom/oplus/fancyicon/NotifierManager$MobileDataNotifier;-><init>(Landroid/content/Context;)V

    return-object p0

    :cond_24
    const-string p0, "WifiState"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3c

    new-instance p0, Lcom/oplus/fancyicon/NotifierManager$MultiBroadcastNotifier;

    const-string p1, "android.net.wifi.WIFI_STATE_CHANGED"

    const-string v0, "android.net.wifi.SCAN_RESULTS"

    const-string v1, "android.net.wifi.STATE_CHANGE"

    filled-new-array {p1, v0, v1}, [Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/oplus/fancyicon/NotifierManager$MultiBroadcastNotifier;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    return-object p0

    :cond_3c
    new-instance p0, Lcom/oplus/fancyicon/NotifierManager$BroadcastNotifier;

    invoke-direct {p0, p2, p1}, Lcom/oplus/fancyicon/NotifierManager$BroadcastNotifier;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object p0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/oplus/fancyicon/NotifierManager;
    .registers 3

    const-class v0, Lcom/oplus/fancyicon/NotifierManager;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/oplus/fancyicon/NotifierManager;->sInstance:Lcom/oplus/fancyicon/NotifierManager;

    if-nez v1, :cond_e

    new-instance v1, Lcom/oplus/fancyicon/NotifierManager;

    invoke-direct {v1, p0}, Lcom/oplus/fancyicon/NotifierManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/oplus/fancyicon/NotifierManager;->sInstance:Lcom/oplus/fancyicon/NotifierManager;

    :cond_e
    sget-object p0, Lcom/oplus/fancyicon/NotifierManager;->sInstance:Lcom/oplus/fancyicon/NotifierManager;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public declared-synchronized acquireNotifier(Ljava/lang/String;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    const-string v0, "NotifierManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "acquireNotifier:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/fancyicon/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/fancyicon/NotifierManager;->mNotifiers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/fancyicon/NotifierManager$BaseNotifier;

    if-nez v0, :cond_2e

    iget-object v0, p0, Lcom/oplus/fancyicon/NotifierManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1, v0}, Lcom/oplus/fancyicon/NotifierManager;->createNotifier(Ljava/lang/String;Landroid/content/Context;)Lcom/oplus/fancyicon/NotifierManager$BaseNotifier;

    move-result-object v0

    if-eqz v0, :cond_2e

    iget-object v1, p0, Lcom/oplus/fancyicon/NotifierManager;->mNotifiers:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_30

    :cond_2e
    monitor-exit p0

    return-void

    :catchall_30
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized pause(Ljava/lang/String;Lcom/oplus/fancyicon/NotifierManager$OnNotifyListener;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/oplus/fancyicon/NotifierManager;->mNotifiers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/fancyicon/NotifierManager$BaseNotifier;

    if-eqz p1, :cond_17

    invoke-virtual {p1, p2}, Lcom/oplus/fancyicon/NotifierManager$BaseNotifier;->removeListener(Lcom/oplus/fancyicon/NotifierManager$OnNotifyListener;)V

    invoke-virtual {p1}, Lcom/oplus/fancyicon/NotifierManager$BaseNotifier;->releaseActiveRef()I

    move-result p2

    if-nez p2, :cond_17

    invoke-virtual {p1}, Lcom/oplus/fancyicon/NotifierManager$BaseNotifier;->unregister()V
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    :cond_17
    monitor-exit p0

    return-void

    :catchall_19
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized releaseNotifier(Ljava/lang/String;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    const-string v0, "NotifierManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "releaseNotifier:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/fancyicon/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/fancyicon/NotifierManager;->mNotifiers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/fancyicon/NotifierManager$BaseNotifier;

    if-eqz v0, :cond_29

    invoke-virtual {v0}, Lcom/oplus/fancyicon/NotifierManager$BaseNotifier;->unregister()V

    iget-object v0, p0, Lcom/oplus/fancyicon/NotifierManager;->mNotifiers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_2b

    :cond_29
    monitor-exit p0

    return-void

    :catchall_2b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized resume(Ljava/lang/String;Lcom/oplus/fancyicon/NotifierManager$OnNotifyListener;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/oplus/fancyicon/NotifierManager;->mNotifiers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/fancyicon/NotifierManager$BaseNotifier;

    if-eqz p1, :cond_18

    invoke-virtual {p1, p2}, Lcom/oplus/fancyicon/NotifierManager$BaseNotifier;->addListener(Lcom/oplus/fancyicon/NotifierManager$OnNotifyListener;)V

    invoke-virtual {p1}, Lcom/oplus/fancyicon/NotifierManager$BaseNotifier;->addActiveRef()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_18

    invoke-virtual {p1}, Lcom/oplus/fancyicon/NotifierManager$BaseNotifier;->register()V
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1a

    :cond_18
    monitor-exit p0

    return-void

    :catchall_1a
    move-exception p1

    monitor-exit p0

    throw p1
.end method
