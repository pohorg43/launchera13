.class public Lcom/oplus/putt/OplusPuttManager;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final PUTT_SERVICE_ACTION:Ljava/lang/String; = "oplus.intent.action.PUTT_SERVICE"

.field private static volatile sInstance:Lcom/oplus/putt/OplusPuttManager;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/oplus/putt/OplusPuttManager;
    .registers 2

    sget-object v0, Lcom/oplus/putt/OplusPuttManager;->sInstance:Lcom/oplus/putt/OplusPuttManager;

    if-nez v0, :cond_17

    const-class v0, Lcom/oplus/putt/OplusPuttManager;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/oplus/putt/OplusPuttManager;->sInstance:Lcom/oplus/putt/OplusPuttManager;

    if-nez v1, :cond_12

    new-instance v1, Lcom/oplus/putt/OplusPuttManager;

    invoke-direct {v1}, Lcom/oplus/putt/OplusPuttManager;-><init>()V

    sput-object v1, Lcom/oplus/putt/OplusPuttManager;->sInstance:Lcom/oplus/putt/OplusPuttManager;

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
    sget-object v0, Lcom/oplus/putt/OplusPuttManager;->sInstance:Lcom/oplus/putt/OplusPuttManager;

    return-object v0
.end method


# virtual methods
.method public getEnterPuttAppInfos()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oplus/putt/OplusPuttEnterInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public registerPuttObserver(Lcom/oplus/putt/IPuttObserver;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public unregisterPuttObserver(Lcom/oplus/putt/IPuttObserver;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method
