.class public Lcom/nearme/instant/xcard/CardClient;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nearme/instant/xcard/CardClient$InitStatus;
    }
.end annotation


# static fields
.field private static final ENGINE_CHANGE_ACTION:Ljava/lang/String; = "com.nearme.instant.action.CARD_ENGINE_CHANGED"

.field private static final TAG:Ljava/lang/String; = "CardClient"

.field private static sDebugReceiver:Lorg/hapjs/card/sdk/debug/SdkCardDebugReceiver;

.field private static volatile sInstance:Lcom/nearme/instant/xcard/CardClient;


# instance fields
.field private mCEChangeLister:Landroid/content/BroadcastReceiver;

.field private final mCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/nearme/instant/xcard/ICardEngineCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mCards:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lorg/hapjs/card/api/Card;",
            ">;>;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mEngineCallback:Lcom/nearme/instant/xcard/ICardEngineCallback;

.field private mEngineListener:Lcom/nearme/instant/xcard/ICardEngineListener;

.field private volatile mInitStatus:Lcom/nearme/instant/xcard/CardClient$InitStatus;

.field private mLoadServiceCallback:Lcom/nearme/instant/xcard/ICardEngineCallback;

.field private mPkgListener:Lcom/nearme/instant/xcard/OnPackageChangeListener;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mService:Lorg/hapjs/card/api/CardService;

.field private needInjectResource:Z


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/nearme/instant/xcard/CardClient$InitStatus;->NONE:Lcom/nearme/instant/xcard/CardClient$InitStatus;

    iput-object v0, p0, Lcom/nearme/instant/xcard/CardClient;->mInitStatus:Lcom/nearme/instant/xcard/CardClient$InitStatus;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/nearme/instant/xcard/CardClient;->mCards:Ljava/util/List;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/nearme/instant/xcard/CardClient;->mCallbacks:Ljava/util/Set;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nearme/instant/xcard/CardClient;->needInjectResource:Z

    return-void
.end method

.method public static synthetic a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/nearme/instant/xcard/CardClient;->lambda$wrapCard$1(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$000(Lcom/nearme/instant/xcard/CardClient;)V
    .registers 1

    invoke-direct {p0}, Lcom/nearme/instant/xcard/CardClient;->notifySuccess()V

    return-void
.end method

.method public static synthetic access$100(Lcom/nearme/instant/xcard/CardClient;ILjava/lang/Throwable;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/nearme/instant/xcard/CardClient;->notifyFailed(ILjava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic access$202(Lcom/nearme/instant/xcard/CardClient;Lcom/nearme/instant/xcard/ICardEngineListener;)Lcom/nearme/instant/xcard/ICardEngineListener;
    .registers 2

    iput-object p1, p0, Lcom/nearme/instant/xcard/CardClient;->mEngineListener:Lcom/nearme/instant/xcard/ICardEngineListener;

    return-object p1
.end method

.method public static synthetic access$300(Lcom/nearme/instant/xcard/CardClient;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/nearme/instant/xcard/CardClient;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/nearme/instant/xcard/CardClient;)Lcom/nearme/instant/xcard/OnPackageChangeListener;
    .registers 1

    iget-object p0, p0, Lcom/nearme/instant/xcard/CardClient;->mPkgListener:Lcom/nearme/instant/xcard/OnPackageChangeListener;

    return-object p0
.end method

.method public static synthetic b(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/nearme/instant/xcard/CardClient;->lambda$wrapInset$2(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Landroid/content/Context;Lcom/nearme/instant/xcard/ICardEngineCallback;Z)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/nearme/instant/xcard/CardClient;->lambda$initAsync$0(Landroid/content/Context;Lcom/nearme/instant/xcard/ICardEngineCallback;Z)V

    return-void
.end method

.method private checkNeededInjectRes(Lorg/hapjs/card/api/CardService;)Z
    .registers 7

    const-string p0, "CardClient"

    const/4 v0, 0x1

    if-eqz p1, :cond_2c

    :try_start_5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "needInjectResource"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_24

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_21} :catch_26

    if-eqz p1, :cond_24

    goto :goto_2c

    :cond_24
    move v0, v3

    goto :goto_2c

    :catch_26
    const-string/jumbo p1, "not found needInjectResource func."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2c
    :goto_2c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "needInjectResource "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static synthetic d(Lorg/hapjs/card/api/CardService;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/nearme/instant/xcard/CardClient;->lambda$wrapService$3(Lorg/hapjs/card/api/CardService;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private deInitCardEngineChangeListener()V
    .registers 3

    iget-object v0, p0, Lcom/nearme/instant/xcard/CardClient;->mCEChangeLister:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_e

    iget-object v1, p0, Lcom/nearme/instant/xcard/CardClient;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_e

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nearme/instant/xcard/CardClient;->mCEChangeLister:Landroid/content/BroadcastReceiver;

    :cond_e
    return-void
.end method

.method private deInitPlatformPackageListener()V
    .registers 3

    iget-object v0, p0, Lcom/nearme/instant/xcard/CardClient;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_e

    iget-object v1, p0, Lcom/nearme/instant/xcard/CardClient;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_e

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nearme/instant/xcard/CardClient;->mReceiver:Landroid/content/BroadcastReceiver;

    :cond_e
    return-void
.end method

.method public static getCardPlatformVersion(Landroid/content/Context;)I
    .registers 3

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {p0}, Lorg/hapjs/card/common/utils/CardConfigHelper;->getPlatform(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x80

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v0, "cardPlatformVersion"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0
    :try_end_16
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_16} :catch_17
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_16} :catch_17
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_16} :catch_17

    goto :goto_1c

    :catch_17
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    :goto_1c
    return p0
.end method

.method private static getDefaultValue(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_7

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_7
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_11

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    :cond_11
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_1a

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    :cond_1a
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_23

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    return-object p0

    :cond_23
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_2c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_2c
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_37

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_37
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_41

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :cond_41
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_4c

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_4c
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getInstance()Lcom/nearme/instant/xcard/CardClient;
    .registers 2

    sget-object v0, Lcom/nearme/instant/xcard/CardClient;->sInstance:Lcom/nearme/instant/xcard/CardClient;

    if-nez v0, :cond_17

    const-class v0, Lcom/nearme/instant/xcard/CardClient;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/nearme/instant/xcard/CardClient;->sInstance:Lcom/nearme/instant/xcard/CardClient;

    if-nez v1, :cond_12

    new-instance v1, Lcom/nearme/instant/xcard/CardClient;

    invoke-direct {v1}, Lcom/nearme/instant/xcard/CardClient;-><init>()V

    sput-object v1, Lcom/nearme/instant/xcard/CardClient;->sInstance:Lcom/nearme/instant/xcard/CardClient;

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
    sget-object v0, Lcom/nearme/instant/xcard/CardClient;->sInstance:Lcom/nearme/instant/xcard/CardClient;

    return-object v0
.end method

.method public static declared-synchronized init(Landroid/content/Context;Lcom/nearme/instant/xcard/ICardEngineCallback;)Z
    .registers 4

    const-class v0, Lcom/nearme/instant/xcard/CardClient;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    invoke-static {p0, p1, v1}, Lcom/nearme/instant/xcard/CardClient;->init(Landroid/content/Context;Lcom/nearme/instant/xcard/ICardEngineCallback;Z)Z

    move-result p0
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_a

    monitor-exit v0

    return p0

    :catchall_a
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized init(Landroid/content/Context;Lcom/nearme/instant/xcard/ICardEngineCallback;Z)Z
    .registers 12

    const-class v0, Lcom/nearme/instant/xcard/CardClient;

    monitor-enter v0

    const/4 v1, 0x0

    if-nez p0, :cond_8

    monitor-exit v0

    return v1

    :cond_8
    :try_start_8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {}, Lcom/nearme/instant/xcard/CardClient;->getInstance()Lcom/nearme/instant/xcard/CardClient;

    move-result-object v4

    if-eqz p1, :cond_17

    iget-object v5, v4, Lcom/nearme/instant/xcard/CardClient;->mCallbacks:Ljava/util/Set;

    invoke-interface {v5, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_17
    const-string p1, "CardClient"

    const-string v5, "init forceUpdateEngine : %b"

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {v4, p0, p2, v2, v3}, Lcom/nearme/instant/xcard/CardClient;->initInternal(Landroid/content/Context;ZJ)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p0

    sub-long/2addr p0, v2

    const-string p2, "CardClient"

    const-string v2, "init duration : %d"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, v4, Lcom/nearme/instant/xcard/CardClient;->mInitStatus:Lcom/nearme/instant/xcard/CardClient$InitStatus;

    sget-object p1, Lcom/nearme/instant/xcard/CardClient$InitStatus;->SUCCESS:Lcom/nearme/instant/xcard/CardClient$InitStatus;
    :try_end_4a
    .catchall {:try_start_8 .. :try_end_4a} :catchall_4f

    if-ne p0, p1, :cond_4d

    move v1, v6

    :cond_4d
    monitor-exit v0

    return v1

    :catchall_4f
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static initAsync(Landroid/content/Context;Lcom/nearme/instant/xcard/ICardEngineCallback;)V
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/nearme/instant/xcard/CardClient;->initAsync(Landroid/content/Context;Lcom/nearme/instant/xcard/ICardEngineCallback;Z)V

    return-void
.end method

.method public static initAsync(Landroid/content/Context;Lcom/nearme/instant/xcard/ICardEngineCallback;Z)V
    .registers 5

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/launcher3/z1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/launcher3/z1;-><init>(Landroid/content/Context;Lcom/nearme/instant/xcard/ICardEngineCallback;Z)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private initCardEngineChangeListener()V
    .registers 4

    iget-object v0, p0, Lcom/nearme/instant/xcard/CardClient;->mCEChangeLister:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/nearme/instant/xcard/CardClient;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1f

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.nearme.instant.action.CARD_ENGINE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lcom/nearme/instant/xcard/CardClient$5;

    invoke-direct {v1, p0}, Lcom/nearme/instant/xcard/CardClient$5;-><init>(Lcom/nearme/instant/xcard/CardClient;)V

    iput-object v1, p0, Lcom/nearme/instant/xcard/CardClient;->mCEChangeLister:Landroid/content/BroadcastReceiver;

    iget-object p0, p0, Lcom/nearme/instant/xcard/CardClient;->mContext:Landroid/content/Context;

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    :cond_1f
    return-void
.end method

.method private initInternal(Landroid/content/Context;ZJ)V
    .registers 11

    iget-object v0, p0, Lcom/nearme/instant/xcard/CardClient;->mService:Lorg/hapjs/card/api/CardService;

    const-string v1, "CardClient"

    if-eqz v0, :cond_15

    const-string v0, "client has init"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/nearme/instant/xcard/CardClient;->mInitStatus:Lcom/nearme/instant/xcard/CardClient$InitStatus;

    sget-object v2, Lcom/nearme/instant/xcard/CardClient$InitStatus;->SUCCESS:Lcom/nearme/instant/xcard/CardClient$InitStatus;

    if-ne v0, v2, :cond_15

    invoke-direct {p0}, Lcom/nearme/instant/xcard/CardClient;->notifySuccess()V

    return-void

    :cond_15
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {p1}, Lcom/nearme/instant/xcard/utils/PublicPrefUtil;->init(Landroid/content/Context;)V

    const/4 v0, 0x1

    if-nez p2, :cond_34

    invoke-static {}, Lcom/nearme/instant/xcard/utils/PublicPrefUtil;->getCardInitStatus()I

    move-result v4

    if-ne v4, v0, :cond_34

    const-string p2, "Initialization terminated abnormally last time, try forceUpdate"

    invoke-static {v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "lastInitFail"

    const-string/jumbo v4, "true"

    invoke-static {p2, v4}, Lcom/nearme/instant/xcard/CardUtils;->addTrace(Ljava/lang/String;Ljava/lang/String;)V

    move p2, v0

    goto :goto_37

    :cond_34
    invoke-static {v0}, Lcom/nearme/instant/xcard/utils/PublicPrefUtil;->setCardInitStatus(I)V

    :goto_37
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "pref_init"

    invoke-static {v2, v0}, Lcom/nearme/instant/xcard/CardUtils;->addTrace(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v2, "force_update"

    invoke-static {v2, v0}, Lcom/nearme/instant/xcard/CardUtils;->addTrace(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/nearme/instant/xcard/CardClient;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/nearme/instant/xcard/CardClient$1;

    invoke-direct {v0, p0}, Lcom/nearme/instant/xcard/CardClient$1;-><init>(Lcom/nearme/instant/xcard/CardClient;)V

    iput-object v0, p0, Lcom/nearme/instant/xcard/CardClient;->mLoadServiceCallback:Lcom/nearme/instant/xcard/ICardEngineCallback;

    invoke-static {p1, p2, v0}, Lorg/hapjs/card/sdk/utils/CardServiceLoader;->load(Landroid/content/Context;ZLcom/nearme/instant/xcard/ICardEngineCallback;)Lorg/hapjs/card/api/CardService;

    move-result-object p2

    if-eqz p2, :cond_6e

    invoke-direct {p0, p2}, Lcom/nearme/instant/xcard/CardClient;->checkNeededInjectRes(Lorg/hapjs/card/api/CardService;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nearme/instant/xcard/CardClient;->needInjectResource:Z

    invoke-direct {p0, p2}, Lcom/nearme/instant/xcard/CardClient;->wrapService(Lorg/hapjs/card/api/CardService;)Lorg/hapjs/card/api/CardService;

    move-result-object p2

    iput-object p2, p0, Lcom/nearme/instant/xcard/CardClient;->mService:Lorg/hapjs/card/api/CardService;

    :cond_6e
    iget-object p2, p0, Lcom/nearme/instant/xcard/CardClient;->mService:Lorg/hapjs/card/api/CardService;

    if-nez p2, :cond_73

    return-void

    :cond_73
    sget-object p2, Lorg/hapjs/card/sdk/BuildConfig;->LITE_MODE:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const/4 v0, 0x2

    if-eqz p2, :cond_8f

    iget-boolean p2, p0, Lcom/nearme/instant/xcard/CardClient;->needInjectResource:Z

    if-eqz p2, :cond_8f

    invoke-static {p1}, Lorg/hapjs/card/sdk/utils/CardServiceLoader;->getSourcePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/hapjs/card/sdk/utils/ResourceInjector;->inject(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_8f

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Lcom/nearme/instant/xcard/CardClient;->notifyFailed(ILjava/lang/Throwable;)V

    return-void

    :cond_8f
    const/4 p2, 0x0

    :try_start_90
    iget-object v2, p0, Lcom/nearme/instant/xcard/CardClient;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/nearme/instant/xcard/CardClient;->getCardPlatformVersion(Landroid/content/Context;)I

    move-result v2

    const/4 v3, 0x4

    if-ge v2, v3, :cond_ac

    new-instance p3, Lcom/nearme/instant/xcard/CardClient$2;

    invoke-direct {p3, p0}, Lcom/nearme/instant/xcard/CardClient$2;-><init>(Lcom/nearme/instant/xcard/CardClient;)V

    iput-object p3, p0, Lcom/nearme/instant/xcard/CardClient;->mEngineListener:Lcom/nearme/instant/xcard/ICardEngineListener;

    iget-object p3, p0, Lcom/nearme/instant/xcard/CardClient;->mService:Lorg/hapjs/card/api/CardService;

    invoke-static {p1}, Lorg/hapjs/card/common/utils/CardConfigHelper;->getPlatform(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p4

    iget-object v2, p0, Lcom/nearme/instant/xcard/CardClient;->mEngineListener:Lcom/nearme/instant/xcard/ICardEngineListener;

    invoke-interface {p3, p1, p4, v2}, Lcom/nearme/instant/xcard/InstantCardService;->init(Landroid/content/Context;Ljava/lang/String;Lcom/nearme/instant/xcard/ICardEngineListener;)V
    :try_end_ab
    .catchall {:try_start_90 .. :try_end_ab} :catchall_dc

    goto :goto_e5

    :cond_ac
    const/16 v3, 0x16

    if-lt v2, v3, :cond_c9

    :try_start_b0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "PARAM_SDK_INIT_START_TIME"

    invoke-virtual {v2, v3, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-static {v2}, Lcom/nearme/instant/xcard/CardUtils;->putTrace(Landroid/os/Bundle;)V

    iget-object p3, p0, Lcom/nearme/instant/xcard/CardClient;->mService:Lorg/hapjs/card/api/CardService;

    invoke-interface {p3, v2}, Lcom/nearme/instant/xcard/InstantCardService;->setSdkInitTimeParams(Landroid/os/Bundle;)V
    :try_end_c2
    .catch Ljava/lang/Exception; {:try_start_b0 .. :try_end_c2} :catch_c3
    .catchall {:try_start_b0 .. :try_end_c2} :catchall_dc

    goto :goto_c9

    :catch_c3
    move-exception p3

    :try_start_c4
    const-string p4, "function setSdkInitTimeParams not found."

    invoke-static {v1, p4, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_c9
    :goto_c9
    new-instance p3, Lcom/nearme/instant/xcard/CardClient$3;

    invoke-direct {p3, p0}, Lcom/nearme/instant/xcard/CardClient$3;-><init>(Lcom/nearme/instant/xcard/CardClient;)V

    iput-object p3, p0, Lcom/nearme/instant/xcard/CardClient;->mEngineCallback:Lcom/nearme/instant/xcard/ICardEngineCallback;

    iget-object p3, p0, Lcom/nearme/instant/xcard/CardClient;->mService:Lorg/hapjs/card/api/CardService;

    invoke-static {p1}, Lorg/hapjs/card/common/utils/CardConfigHelper;->getPlatform(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p4

    iget-object v2, p0, Lcom/nearme/instant/xcard/CardClient;->mEngineCallback:Lcom/nearme/instant/xcard/ICardEngineCallback;

    invoke-interface {p3, p1, p4, v2}, Lorg/hapjs/card/api/CardService;->init(Landroid/content/Context;Ljava/lang/String;Lcom/nearme/instant/xcard/ICardEngineCallback;)V
    :try_end_db
    .catchall {:try_start_c4 .. :try_end_db} :catchall_dc

    goto :goto_e5

    :catchall_dc
    move-exception p1

    const-string p3, "Fail to init service"

    invoke-static {v1, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {p0, p2, p1}, Lcom/nearme/instant/xcard/CardClient;->notifyFailed(ILjava/lang/Throwable;)V

    :goto_e5
    invoke-static {v0}, Lcom/nearme/instant/xcard/utils/PublicPrefUtil;->setCardInitStatus(I)V

    sget-object p1, Lorg/hapjs/card/sdk/BuildConfig;->LITE_MODE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_fb

    invoke-direct {p0}, Lcom/nearme/instant/xcard/CardClient;->initPlatformPackageListener()V

    invoke-direct {p0}, Lcom/nearme/instant/xcard/CardClient;->initCardEngineChangeListener()V

    iget-object p0, p0, Lcom/nearme/instant/xcard/CardClient;->mContext:Landroid/content/Context;

    invoke-static {p0, p2}, Lorg/hapjs/card/sdk/utils/CardServiceLoader;->checkEngineUpdateAsync(Landroid/content/Context;Z)V

    :cond_fb
    return-void
.end method

.method private initPlatformPackageListener()V
    .registers 4

    iget-object v0, p0, Lcom/nearme/instant/xcard/CardClient;->mReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_2f

    iget-object v0, p0, Lcom/nearme/instant/xcard/CardClient;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_2f

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    new-instance v1, Lcom/nearme/instant/xcard/CardClient$4;

    invoke-direct {v1, p0}, Lcom/nearme/instant/xcard/CardClient$4;-><init>(Lcom/nearme/instant/xcard/CardClient;)V

    iput-object v1, p0, Lcom/nearme/instant/xcard/CardClient;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object p0, p0, Lcom/nearme/instant/xcard/CardClient;->mContext:Landroid/content/Context;

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    :cond_2f
    return-void
.end method

.method private static synthetic lambda$initAsync$0(Landroid/content/Context;Lcom/nearme/instant/xcard/ICardEngineCallback;Z)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/nearme/instant/xcard/CardClient;->init(Landroid/content/Context;Lcom/nearme/instant/xcard/ICardEngineCallback;Z)Z

    return-void
.end method

.method private static synthetic lambda$wrapCard$1(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p2, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    const-string p0, "InvocationTargetException: invoke "

    invoke-static {p0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " fail"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CardClient"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lcom/nearme/instant/xcard/CardClient;->getDefaultValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$wrapInset$2(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p2, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    move-exception p0

    const-string p1, "InvocationTargetException "

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CardClient"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lcom/nearme/instant/xcard/CardClient;->getDefaultValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$wrapService$3(Lorg/hapjs/card/api/CardService;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p2, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    const-string p0, "InvocationTargetException: invoke "

    invoke-static {p0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " fail"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CardClient"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lcom/nearme/instant/xcard/CardClient;->getDefaultValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private declared-synchronized notifyFailed(ILjava/lang/Throwable;)V
    .registers 6

    monitor-enter p0

    :try_start_1
    sget-object v0, Lcom/nearme/instant/xcard/CardClient$InitStatus;->FAIL:Lcom/nearme/instant/xcard/CardClient$InitStatus;

    iput-object v0, p0, Lcom/nearme/instant/xcard/CardClient;->mInitStatus:Lcom/nearme/instant/xcard/CardClient$InitStatus;

    iget-object v0, p0, Lcom/nearme/instant/xcard/CardClient;->mCallbacks:Ljava/util/Set;

    monitor-enter v0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_2b

    :try_start_8
    iget-object v1, p0, Lcom/nearme/instant/xcard/CardClient;->mCallbacks:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_e
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nearme/instant/xcard/ICardEngineCallback;

    if-eqz v2, :cond_e

    invoke-interface {v2, p1, p2}, Lcom/nearme/instant/xcard/ICardEngineCallback;->onInitFailure(ILjava/lang/Throwable;)V

    goto :goto_e

    :cond_20
    iget-object p1, p0, Lcom/nearme/instant/xcard/CardClient;->mCallbacks:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_28

    monitor-exit p0

    return-void

    :catchall_28
    move-exception p1

    :try_start_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    :try_start_2a
    throw p1
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_2b

    :catchall_2b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized notifySuccess()V
    .registers 4

    monitor-enter p0

    :try_start_1
    sget-object v0, Lcom/nearme/instant/xcard/CardClient$InitStatus;->SUCCESS:Lcom/nearme/instant/xcard/CardClient$InitStatus;

    iput-object v0, p0, Lcom/nearme/instant/xcard/CardClient;->mInitStatus:Lcom/nearme/instant/xcard/CardClient$InitStatus;

    iget-object v0, p0, Lcom/nearme/instant/xcard/CardClient;->mCallbacks:Ljava/util/Set;

    monitor-enter v0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_2b

    :try_start_8
    iget-object v1, p0, Lcom/nearme/instant/xcard/CardClient;->mCallbacks:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_e
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nearme/instant/xcard/ICardEngineCallback;

    if-eqz v2, :cond_e

    invoke-interface {v2}, Lcom/nearme/instant/xcard/ICardEngineCallback;->onInitSuccess()V

    goto :goto_e

    :cond_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_28

    :try_start_21
    iget-object v0, p0, Lcom/nearme/instant/xcard/CardClient;->mCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V
    :try_end_26
    .catchall {:try_start_21 .. :try_end_26} :catchall_2b

    monitor-exit p0

    return-void

    :catchall_28
    move-exception v1

    :try_start_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    :try_start_2a
    throw v1
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_2b

    :catchall_2b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static declared-synchronized registerDebugReceiver(Landroid/content/Context;)V
    .registers 6

    const-class v0, Lcom/nearme/instant/xcard/CardClient;

    monitor-enter v0

    :try_start_3
    const-string v1, "CardClient"

    const-string/jumbo v2, "registerDebugReceiver: "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/nearme/instant/xcard/CardClient;->sDebugReceiver:Lorg/hapjs/card/sdk/debug/SdkCardDebugReceiver;

    if-nez v1, :cond_16

    new-instance v1, Lorg/hapjs/card/sdk/debug/SdkCardDebugReceiver;

    invoke-direct {v1}, Lorg/hapjs/card/sdk/debug/SdkCardDebugReceiver;-><init>()V

    sput-object v1, Lcom/nearme/instant/xcard/CardClient;->sDebugReceiver:Lorg/hapjs/card/sdk/debug/SdkCardDebugReceiver;

    :cond_16
    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "org.hapjs.intent.action.DEBUG_CARD"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/nearme/instant/xcard/CardClient;->sDebugReceiver:Lorg/hapjs/card/sdk/debug/SdkCardDebugReceiver;

    const-string/jumbo v3, "org.hapjs.permission.DEBUG_CARD"

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v1, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_29

    monitor-exit v0

    return-void

    :catchall_29
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static reset()V
    .registers 2

    const-class v0, Lcom/nearme/instant/xcard/CardClient;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/nearme/instant/xcard/CardClient;->sInstance:Lcom/nearme/instant/xcard/CardClient;

    if-eqz v1, :cond_1b

    sget-object v1, Lcom/nearme/instant/xcard/CardClient;->sInstance:Lcom/nearme/instant/xcard/CardClient;

    invoke-virtual {v1}, Lcom/nearme/instant/xcard/CardClient;->removeAllCard()V

    sget-object v1, Lcom/nearme/instant/xcard/CardClient;->sInstance:Lcom/nearme/instant/xcard/CardClient;

    invoke-virtual {v1}, Lcom/nearme/instant/xcard/CardClient;->unregisterEnginePackageListener()V

    sget-object v1, Lcom/nearme/instant/xcard/CardClient;->sInstance:Lcom/nearme/instant/xcard/CardClient;

    invoke-direct {v1}, Lcom/nearme/instant/xcard/CardClient;->deInitPlatformPackageListener()V

    sget-object v1, Lcom/nearme/instant/xcard/CardClient;->sInstance:Lcom/nearme/instant/xcard/CardClient;

    invoke-direct {v1}, Lcom/nearme/instant/xcard/CardClient;->deInitCardEngineChangeListener()V

    :cond_1b
    const/4 v1, 0x0

    sput-object v1, Lcom/nearme/instant/xcard/CardClient;->sInstance:Lcom/nearme/instant/xcard/CardClient;

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_26

    invoke-static {}, Lcom/nearme/instant/xcard/CardUtils;->restore()V

    invoke-static {}, Lorg/hapjs/card/sdk/utils/CardServiceLoader;->clearCardServiceClass()V

    return-void

    :catchall_26
    move-exception v1

    :try_start_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw v1
.end method

.method public static declared-synchronized unregisterDebugReceiver(Landroid/content/Context;)V
    .registers 4

    const-class v0, Lcom/nearme/instant/xcard/CardClient;

    monitor-enter v0

    :try_start_3
    const-string v1, "CardClient"

    const-string/jumbo v2, "unregisterDebugReceiver: "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/nearme/instant/xcard/CardClient;->sDebugReceiver:Lorg/hapjs/card/sdk/debug/SdkCardDebugReceiver;

    if-eqz v1, :cond_15

    invoke-virtual {p0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p0, 0x0

    sput-object p0, Lcom/nearme/instant/xcard/CardClient;->sDebugReceiver:Lorg/hapjs/card/sdk/debug/SdkCardDebugReceiver;
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_17

    :cond_15
    monitor-exit v0

    return-void

    :catchall_17
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private wrapCard(Ljava/lang/Object;)Lorg/hapjs/card/api/Card;
    .registers 6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lorg/hapjs/card/api/Card;

    aput-object v3, v1, v2

    new-instance v2, Lcom/nearme/instant/xcard/b;

    invoke-direct {v2, p1, v0}, Lcom/nearme/instant/xcard/b;-><init>(Ljava/lang/Object;I)V

    invoke-static {p0, v1, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/hapjs/card/api/Card;

    return-object p0
.end method

.method private wrapInset(Ljava/lang/Object;)Lorg/hapjs/card/api/Inset;
    .registers 6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Lorg/hapjs/card/api/Inset;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-class v3, Lorg/hapjs/card/api/Card;

    aput-object v3, v0, v1

    new-instance v1, Lcom/nearme/instant/xcard/b;

    invoke-direct {v1, p1, v2}, Lcom/nearme/instant/xcard/b;-><init>(Ljava/lang/Object;I)V

    invoke-static {p0, v0, v1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/hapjs/card/api/Inset;

    return-object p0
.end method

.method private wrapService(Lorg/hapjs/card/api/CardService;)Lorg/hapjs/card/api/CardService;
    .registers 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lorg/hapjs/card/api/CardService;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lcom/nearme/instant/xcard/InstantCardService;

    aput-object v2, v0, v1

    new-instance v1, Lcom/nearme/instant/xcard/a;

    invoke-direct {v1, p1}, Lcom/nearme/instant/xcard/a;-><init>(Lorg/hapjs/card/api/CardService;)V

    invoke-static {p0, v0, v1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/hapjs/card/api/CardService;

    return-object p0
.end method


# virtual methods
.method public clearImageCache()V
    .registers 2

    iget-object v0, p0, Lcom/nearme/instant/xcard/CardClient;->mService:Lorg/hapjs/card/api/CardService;

    if-nez v0, :cond_17

    iget-object p0, p0, Lcom/nearme/instant/xcard/CardClient;->mInitStatus:Lcom/nearme/instant/xcard/CardClient$InitStatus;

    sget-object v0, Lcom/nearme/instant/xcard/CardClient$InitStatus;->NONE:Lcom/nearme/instant/xcard/CardClient$InitStatus;

    if-ne p0, v0, :cond_e

    const-string/jumbo p0, "sdk is not init"

    goto :goto_11

    :cond_e
    const-string/jumbo p0, "sdk init failed"

    :goto_11
    const-string v0, "CardClient"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_17
    :try_start_17
    invoke-interface {v0}, Lorg/hapjs/card/api/CardService;->clearImageCache()V
    :try_end_1a
    .catch Ljava/lang/AbstractMethodError; {:try_start_17 .. :try_end_1a} :catch_1a

    :catch_1a
    return-void
.end method

.method public createCard(Landroid/content/Context;)Lorg/hapjs/card/api/Card;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/nearme/instant/xcard/CardClient;->createCard(Landroid/content/Context;Ljava/lang/String;)Lorg/hapjs/card/api/Card;

    move-result-object p0

    return-object p0
.end method

.method public createCard(Landroid/content/Context;Ljava/lang/String;)Lorg/hapjs/card/api/Card;
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/nearme/instant/xcard/CardClient;->mService:Lorg/hapjs/card/api/CardService;

    const/4 v1, 0x0

    const-string v2, "CardClient"

    if-nez v0, :cond_d

    const-string p0, "CardService is null, call init first"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_d
    invoke-virtual {p0}, Lcom/nearme/instant/xcard/CardClient;->isSetStatConfig()Z

    move-result v0

    if-nez v0, :cond_19

    const-string/jumbo v0, "stat config is null, it should be set"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19
    iget-boolean v0, p0, Lcom/nearme/instant/xcard/CardClient;->needInjectResource:Z

    if-eqz v0, :cond_24

    invoke-static {p1}, Lorg/hapjs/card/sdk/utils/CardServiceLoader;->getSourcePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/hapjs/card/sdk/utils/ResourceInjector;->inject(Landroid/content/Context;Ljava/lang/String;)Z

    :cond_24
    if-nez p2, :cond_2d

    iget-object p2, p0, Lcom/nearme/instant/xcard/CardClient;->mService:Lorg/hapjs/card/api/CardService;

    invoke-interface {p2, p1}, Lorg/hapjs/card/api/CardService;->createCard(Landroid/content/Context;)Lorg/hapjs/card/api/Card;

    move-result-object p1

    goto :goto_33

    :cond_2d
    iget-object v0, p0, Lcom/nearme/instant/xcard/CardClient;->mService:Lorg/hapjs/card/api/CardService;

    invoke-interface {v0, p1, p2}, Lorg/hapjs/card/api/CardService;->createCard(Landroid/content/Context;Ljava/lang/String;)Lorg/hapjs/card/api/Card;

    move-result-object p1

    :goto_33
    if-nez p1, :cond_36

    return-object v1

    :cond_36
    invoke-direct {p0, p1}, Lcom/nearme/instant/xcard/CardClient;->wrapCard(Ljava/lang/Object;)Lorg/hapjs/card/api/Card;

    move-result-object p1

    iget-object p0, p0, Lcom/nearme/instant/xcard/CardClient;->mCards:Ljava/util/List;

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public createCardOnActivity(Landroid/app/Activity;)Lorg/hapjs/card/api/Card;
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/nearme/instant/xcard/CardClient;->createCardOnActivity(Landroid/app/Activity;Ljava/lang/String;)Lorg/hapjs/card/api/Card;

    move-result-object p0

    return-object p0
.end method

.method public createCardOnActivity(Landroid/app/Activity;Ljava/lang/String;)Lorg/hapjs/card/api/Card;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/nearme/instant/xcard/CardClient;->createCard(Landroid/content/Context;Ljava/lang/String;)Lorg/hapjs/card/api/Card;

    move-result-object p0

    return-object p0
.end method

.method public createCardOnWindow(Landroid/content/Context;)Lorg/hapjs/card/api/Card;
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/nearme/instant/xcard/CardClient;->createCardOnWindow(Landroid/content/Context;Ljava/lang/String;Landroid/view/Window;)Lorg/hapjs/card/api/Card;

    move-result-object p0

    return-object p0
.end method

.method public createCardOnWindow(Landroid/content/Context;Ljava/lang/String;Landroid/view/Window;)Lorg/hapjs/card/api/Card;
    .registers 5

    new-instance v0, Lorg/hapjs/card/sdk/MockActivity;

    invoke-direct {v0, p1, p3}, Lorg/hapjs/card/sdk/MockActivity;-><init>(Landroid/content/Context;Landroid/view/Window;)V

    invoke-virtual {p0, v0, p2}, Lcom/nearme/instant/xcard/CardClient;->createCardOnActivity(Landroid/app/Activity;Ljava/lang/String;)Lorg/hapjs/card/api/Card;

    move-result-object p0

    return-object p0
.end method

.method public createInsetOnActivity(Landroid/app/Activity;)Lorg/hapjs/card/api/Inset;
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/nearme/instant/xcard/CardClient;->createInsetOnActivity(Landroid/app/Activity;Ljava/lang/String;)Lorg/hapjs/card/api/Inset;

    move-result-object p0

    return-object p0
.end method

.method public createInsetOnActivity(Landroid/app/Activity;Ljava/lang/String;)Lorg/hapjs/card/api/Inset;
    .registers 6

    iget-object v0, p0, Lcom/nearme/instant/xcard/CardClient;->mService:Lorg/hapjs/card/api/CardService;

    const/4 v1, 0x0

    const-string v2, "CardClient"

    if-nez v0, :cond_d

    const-string p0, "CardService is null, call init first"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_d
    invoke-virtual {p0}, Lcom/nearme/instant/xcard/CardClient;->isSetStatConfig()Z

    move-result v0

    if-nez v0, :cond_19

    const-string/jumbo v0, "stat config is null, it should be set"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19
    iget-boolean v0, p0, Lcom/nearme/instant/xcard/CardClient;->needInjectResource:Z

    if-eqz v0, :cond_24

    invoke-static {p1}, Lorg/hapjs/card/sdk/utils/CardServiceLoader;->getSourcePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/hapjs/card/sdk/utils/ResourceInjector;->inject(Landroid/content/Context;Ljava/lang/String;)Z

    :cond_24
    iget-object v0, p0, Lcom/nearme/instant/xcard/CardClient;->mService:Lorg/hapjs/card/api/CardService;

    invoke-interface {v0, p1, p2}, Lorg/hapjs/card/api/CardService;->createInset(Landroid/app/Activity;Ljava/lang/String;)Lorg/hapjs/card/api/Inset;

    move-result-object p1

    if-nez p1, :cond_2d

    return-object v1

    :cond_2d
    invoke-direct {p0, p1}, Lcom/nearme/instant/xcard/CardClient;->wrapInset(Ljava/lang/Object;)Lorg/hapjs/card/api/Inset;

    move-result-object p1

    iget-object p0, p0, Lcom/nearme/instant/xcard/CardClient;->mCards:Ljava/util/List;

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public destroy()V
    .registers 2

    iget-object v0, p0, Lcom/nearme/instant/xcard/CardClient;->mService:Lorg/hapjs/card/api/CardService;

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/nearme/instant/xcard/CardClient;->removeAllCard()V

    :cond_7
    return-void
.end method

.method public download(Ljava/lang/String;ILorg/hapjs/card/api/DownloadListener;)V
    .registers 4

    iget-object p0, p0, Lcom/nearme/instant/xcard/CardClient;->mService:Lorg/hapjs/card/api/CardService;

    if-nez p0, :cond_12

    const/4 p0, 0x1

    const/16 p2, 0x6a

    invoke-interface {p3, p1, p0, p2}, Lorg/hapjs/card/api/DownloadListener;->onDownloadResult(Ljava/lang/String;II)V

    const-string p0, "CardClient"

    const-string p1, "CardService is null, call init first"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_12
    :try_start_12
    invoke-interface {p0, p1, p2, p3}, Lorg/hapjs/card/api/CardService;->download(Ljava/lang/String;ILorg/hapjs/card/api/DownloadListener;)V
    :try_end_15
    .catch Ljava/lang/AbstractMethodError; {:try_start_12 .. :try_end_15} :catch_15

    :catch_15
    return-void
.end method

.method public download(Ljava/lang/String;Ljava/lang/String;Lorg/hapjs/card/api/DownloadListener;)V
    .registers 4

    iget-object p0, p0, Lcom/nearme/instant/xcard/CardClient;->mService:Lorg/hapjs/card/api/CardService;

    if-nez p0, :cond_12

    const/4 p0, 0x1

    const/16 p2, 0x6a

    invoke-interface {p3, p1, p0, p2}, Lorg/hapjs/card/api/DownloadListener;->onDownloadResult(Ljava/lang/String;II)V

    const-string p0, "CardClient"

    const-string p1, "CardService is null, call init first"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_12
    :try_start_12
    invoke-interface {p0, p1, p2, p3}, Lorg/hapjs/card/api/CardService;->download(Ljava/lang/String;Ljava/lang/String;Lorg/hapjs/card/api/DownloadListener;)V
    :try_end_15
    .catch Ljava/lang/AbstractMethodError; {:try_start_12 .. :try_end_15} :catch_15

    :catch_15
    return-void
.end method

.method public getAppInfo(Ljava/lang/String;)Lorg/hapjs/card/api/AppInfo;
    .registers 3

    iget-object v0, p0, Lcom/nearme/instant/xcard/CardClient;->mService:Lorg/hapjs/card/api/CardService;

    if-nez v0, :cond_18

    iget-object p0, p0, Lcom/nearme/instant/xcard/CardClient;->mInitStatus:Lcom/nearme/instant/xcard/CardClient$InitStatus;

    sget-object p1, Lcom/nearme/instant/xcard/CardClient$InitStatus;->NONE:Lcom/nearme/instant/xcard/CardClient$InitStatus;

    if-ne p0, p1, :cond_e

    const-string/jumbo p0, "sdk is not init"

    goto :goto_11

    :cond_e
    const-string/jumbo p0, "sdk init failed"

    :goto_11
    const-string p1, "CardClient"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_18
    invoke-interface {v0, p1}, Lorg/hapjs/card/api/CardService;->getAppInfo(Ljava/lang/String;)Lorg/hapjs/card/api/AppInfo;

    move-result-object p0

    return-object p0
.end method

.method public getCardEngineVersion()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/nearme/instant/xcard/CardClient;->mService:Lorg/hapjs/card/api/CardService;

    const-string v1, ""

    if-nez v0, :cond_19

    iget-object p0, p0, Lcom/nearme/instant/xcard/CardClient;->mInitStatus:Lcom/nearme/instant/xcard/CardClient$InitStatus;

    sget-object v0, Lcom/nearme/instant/xcard/CardClient$InitStatus;->NONE:Lcom/nearme/instant/xcard/CardClient$InitStatus;

    if-ne p0, v0, :cond_10

    const-string/jumbo p0, "sdk is not init"

    goto :goto_13

    :cond_10
    const-string/jumbo p0, "sdk init failed"

    :goto_13
    const-string v0, "CardClient"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_19
    :try_start_19
    invoke-interface {v0}, Lorg/hapjs/card/api/CardService;->getCardEngineVersion()Ljava/lang/String;

    move-result-object p0
    :try_end_1d
    .catch Ljava/lang/AbstractMethodError; {:try_start_19 .. :try_end_1d} :catch_1e

    return-object p0

    :catch_1e
    return-object v1
.end method

.method public getCardEngineVersionCode()I
    .registers 3

    iget-object v0, p0, Lcom/nearme/instant/xcard/CardClient;->mService:Lorg/hapjs/card/api/CardService;

    const/4 v1, -0x1

    if-nez v0, :cond_18

    iget-object p0, p0, Lcom/nearme/instant/xcard/CardClient;->mInitStatus:Lcom/nearme/instant/xcard/CardClient$InitStatus;

    sget-object v0, Lcom/nearme/instant/xcard/CardClient$InitStatus;->NONE:Lcom/nearme/instant/xcard/CardClient$InitStatus;

    if-ne p0, v0, :cond_f

    const-string/jumbo p0, "sdk is not init"

    goto :goto_12

    :cond_f
    const-string/jumbo p0, "sdk init failed"

    :goto_12
    const-string v0, "CardClient"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_18
    :try_start_18
    invoke-interface {v0}, Lorg/hapjs/card/api/CardService;->getCardEngineVersionCode()I

    move-result v0
    :try_end_1c
    .catch Ljava/lang/AbstractMethodError; {:try_start_18 .. :try_end_1c} :catch_1f

    if-lez v0, :cond_1f

    return v0

    :catch_1f
    :cond_1f
    invoke-virtual {p0}, Lcom/nearme/instant/xcard/CardClient;->getCardEngineVersion()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2e

    invoke-static {p0}, Lorg/hapjs/card/sdk/utils/CardUtils;->extractVersion(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_2e
    return v1
.end method

.method public getCardInfo(Ljava/lang/String;)Lorg/hapjs/card/api/CardInfo;
    .registers 3

    iget-object v0, p0, Lcom/nearme/instant/xcard/CardClient;->mService:Lorg/hapjs/card/api/CardService;

    if-nez v0, :cond_18

    iget-object p0, p0, Lcom/nearme/instant/xcard/CardClient;->mInitStatus:Lcom/nearme/instant/xcard/CardClient$InitStatus;

    sget-object p1, Lcom/nearme/instant/xcard/CardClient$InitStatus;->NONE:Lcom/nearme/instant/xcard/CardClient$InitStatus;

    if-ne p0, p1, :cond_e

    const-string/jumbo p0, "sdk is not init"

    goto :goto_11

    :cond_e
    const-string/jumbo p0, "sdk init failed"

    :goto_11
    const-string p1, "CardClient"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_18
    invoke-interface {v0, p1}, Lorg/hapjs/card/api/CardService;->getCardInfo(Ljava/lang/String;)Lorg/hapjs/card/api/CardInfo;

    move-result-object p0

    return-object p0
.end method

.method public getPermissionDescriptions(Ljava/lang/String;)Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/nearme/instant/xcard/CardClient;->mService:Lorg/hapjs/card/api/CardService;

    if-nez p0, :cond_d

    const-string p0, "CardClient"

    const-string p1, "CardService is null, call init first"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_d
    invoke-interface {p0, p1}, Lcom/nearme/instant/xcard/InstantCardService;->getPermissionDescriptions(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public getPlatformVersion()I
    .registers 2

    iget-object v0, p0, Lcom/nearme/instant/xcard/CardClient;->mService:Lorg/hapjs/card/api/CardService;

    if-nez v0, :cond_18

    iget-object p0, p0, Lcom/nearme/instant/xcard/CardClient;->mInitStatus:Lcom/nearme/instant/xcard/CardClient$InitStatus;

    sget-object v0, Lcom/nearme/instant/xcard/CardClient$InitStatus;->NONE:Lcom/nearme/instant/xcard/CardClient$InitStatus;

    if-ne p0, v0, :cond_e

    const-string/jumbo p0, "sdk is not init"

    goto :goto_11

    :cond_e
    const-string/jumbo p0, "sdk init failed"

    :goto_11
    const-string v0, "CardClient"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0

    :cond_18
    invoke-interface {v0}, Lorg/hapjs/card/api/CardService;->getPlatformVersion()I

    move-result p0

    return p0
.end method

.method public grantPermissions(Ljava/lang/String;)Z
    .registers 2

    iget-object p0, p0, Lcom/nearme/instant/xcard/CardClient;->mService:Lorg/hapjs/card/api/CardService;

    if-nez p0, :cond_d

    const-string p0, "CardClient"

    const-string p1, "CardService is null, call init first"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_d
    invoke-interface {p0, p1}, Lorg/hapjs/card/api/CardService;->grantPermissions(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public initOaps(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    iget-object p0, p0, Lcom/nearme/instant/xcard/CardClient;->mService:Lorg/hapjs/card/api/CardService;

    if-nez p0, :cond_c

    const-string p0, "CardClient"

    const-string p1, "CardService is null, call init first"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    invoke-interface {p0, p1, p2}, Lcom/nearme/instant/xcard/InstantCardService;->initOaps(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public install(Ljava/lang/String;Ljava/lang/String;Lorg/hapjs/card/api/InstallListener;)V
    .registers 4

    iget-object p0, p0, Lcom/nearme/instant/xcard/CardClient;->mService:Lorg/hapjs/card/api/CardService;

    if-nez p0, :cond_c

    const-string p0, "CardClient"

    const-string p1, "CardService is null, call init first"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    invoke-interface {p0, p1, p2, p3}, Lorg/hapjs/card/api/CardService;->install(Ljava/lang/String;Ljava/lang/String;Lorg/hapjs/card/api/InstallListener;)V

    return-void
.end method

.method public isSetStatConfig()Z
    .registers 2

    iget-object p0, p0, Lcom/nearme/instant/xcard/CardClient;->mService:Lorg/hapjs/card/api/CardService;

    if-nez p0, :cond_d

    const-string p0, "CardClient"

    const-string v0, "CardService is null, call init first"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_d
    :try_start_d
    invoke-interface {p0}, Lcom/nearme/instant/xcard/InstantCardService;->isSetStatConfig()Z

    move-result p0
    :try_end_11
    .catch Ljava/lang/AbstractMethodError; {:try_start_d .. :try_end_11} :catch_12

    return p0

    :catch_12
    const/4 p0, 0x1

    return p0
.end method

.method public isSupport(I)Z
    .registers 3

    iget-object p0, p0, Lcom/nearme/instant/xcard/CardClient;->mService:Lorg/hapjs/card/api/CardService;

    const/4 v0, 0x0

    if-nez p0, :cond_d

    const-string p0, "CardClient"

    const-string p1, "CardService is null, call init first"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_d
    :try_start_d
    invoke-interface {p0, p1}, Lcom/nearme/instant/xcard/InstantCardService;->isSupport(I)Z
    :try_end_10
    .catch Ljava/lang/AbstractMethodError; {:try_start_d .. :try_end_10} :catch_12

    const/4 p0, 0x1

    return p0

    :catch_12
    return v0
.end method

.method public varargs queryStatus(Landroid/content/Context;Lcom/nearme/instant/xcard/ICardStatusListener;[Ljava/lang/String;)V
    .registers 4

    iget-object p0, p0, Lcom/nearme/instant/xcard/CardClient;->mService:Lorg/hapjs/card/api/CardService;

    if-nez p0, :cond_c

    const-string p0, "CardClient"

    const-string p1, "CardService is null, call init first"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    invoke-interface {p0, p1, p2, p3}, Lcom/nearme/instant/xcard/InstantCardService;->queryStatus(Landroid/content/Context;Lcom/nearme/instant/xcard/ICardStatusListener;[Ljava/lang/String;)V

    return-void
.end method

.method public registerEnginePackageListener(Lcom/nearme/instant/xcard/OnPackageChangeListener;)V
    .registers 2

    iput-object p1, p0, Lcom/nearme/instant/xcard/CardClient;->mPkgListener:Lcom/nearme/instant/xcard/OnPackageChangeListener;

    return-void
.end method

.method public removeAllCard()V
    .registers 4

    iget-object v0, p0, Lcom/nearme/instant/xcard/CardClient;->mCards:Ljava/util/List;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/nearme/instant/xcard/CardClient;->mCards:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/hapjs/card/api/Card;

    if-eqz v2, :cond_9

    invoke-interface {v2}, Lorg/hapjs/card/api/Card;->destroy()V

    goto :goto_9

    :cond_23
    iget-object p0, p0, Lcom/nearme/instant/xcard/CardClient;->mCards:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    monitor-exit v0

    return-void

    :catchall_2a
    move-exception p0

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_2a

    throw p0
.end method

.method public setCardDebugHost(Lorg/hapjs/card/api/debug/CardDebugHost;)V
    .registers 2

    invoke-static {p1}, Lorg/hapjs/card/sdk/debug/SdkCardDebugReceiver;->setCardDebugHost(Lorg/hapjs/card/api/debug/CardDebugHost;)V

    return-void
.end method

.method public setCardInterceptor(Lcom/nearme/instant/xcard/IInterceptor;)Z
    .registers 3

    iget-object p0, p0, Lcom/nearme/instant/xcard/CardClient;->mService:Lorg/hapjs/card/api/CardService;

    const/4 v0, 0x0

    if-nez p0, :cond_d

    const-string p0, "CardClient"

    const-string p1, "CardService is null, call init first"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_d
    :try_start_d
    invoke-interface {p0, p1}, Lcom/nearme/instant/xcard/InstantCardService;->setCardInterceptor(Lcom/nearme/instant/xcard/IInterceptor;)V
    :try_end_10
    .catch Ljava/lang/AbstractMethodError; {:try_start_d .. :try_end_10} :catch_12

    const/4 p0, 0x1

    return p0

    :catch_12
    return v0
.end method

.method public setCardMemoryInfoCallback(Lcom/nearme/instant/xcard/ICardMessageCallback;)V
    .registers 3

    iget-object p0, p0, Lcom/nearme/instant/xcard/CardClient;->mService:Lorg/hapjs/card/api/CardService;

    const-string v0, "CardClient"

    if-nez p0, :cond_c

    const-string p0, "CardService is null, call init first"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    :try_start_c
    invoke-interface {p0}, Lorg/hapjs/card/api/CardService;->getCardMessageManager()Lcom/nearme/instant/xcard/CardMessageManager;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/nearme/instant/xcard/CardMessageManager;->setCallback(Lcom/nearme/instant/xcard/ICardMessageCallback;)V
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_14

    goto :goto_19

    :catchall_14
    const-string p0, "Current card engine not support CardMessageManager"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_19
    return-void
.end method

.method public setLaunchInterceptor(Lcom/nearme/instant/xcard/ILaunchInterceptor;)V
    .registers 2

    iget-object p0, p0, Lcom/nearme/instant/xcard/CardClient;->mService:Lorg/hapjs/card/api/CardService;

    if-nez p0, :cond_c

    const-string p0, "CardClient"

    const-string p1, "CardService is null, call init first"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    :try_start_c
    invoke-interface {p0, p1}, Lcom/nearme/instant/xcard/InstantCardService;->setLaunchInterceptor(Lcom/nearme/instant/xcard/ILaunchInterceptor;)V
    :try_end_f
    .catch Ljava/lang/AbstractMethodError; {:try_start_c .. :try_end_f} :catch_10

    goto :goto_14

    :catch_10
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/AbstractMethodError;->printStackTrace()V

    :goto_14
    return-void
.end method

.method public setLaunchInterceptorV1(Lcom/nearme/instant/xcard/ILaunchInterceptorV1;)V
    .registers 2

    iget-object p0, p0, Lcom/nearme/instant/xcard/CardClient;->mService:Lorg/hapjs/card/api/CardService;

    if-nez p0, :cond_c

    const-string p0, "CardClient"

    const-string p1, "CardService is null, call init first"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    :try_start_c
    invoke-interface {p0, p1}, Lcom/nearme/instant/xcard/InstantCardService;->setLaunchInterceptorV1(Lcom/nearme/instant/xcard/ILaunchInterceptorV1;)V
    :try_end_f
    .catch Ljava/lang/AbstractMethodError; {:try_start_c .. :try_end_f} :catch_10

    goto :goto_14

    :catch_10
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/AbstractMethodError;->printStackTrace()V

    :goto_14
    return-void
.end method

.method public setLocationProvider(Lcom/nearme/instant/xcard/provider/HostLocationProvider;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lcom/nearme/instant/xcard/CardClient;->mService:Lorg/hapjs/card/api/CardService;

    if-nez p0, :cond_c

    const-string p0, "CardClient"

    const-string p1, "CardService is null, call init first"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    invoke-interface {p0, p1}, Lcom/nearme/instant/xcard/InstantCardService;->setLocationProvider(Lcom/nearme/instant/xcard/provider/HostLocationProvider;)V

    return-void
.end method

.method public setLocationProvider(Lcom/nearme/instant/xcard/provider/HostLocationAsyncProvider;)Z
    .registers 3

    iget-object p0, p0, Lcom/nearme/instant/xcard/CardClient;->mService:Lorg/hapjs/card/api/CardService;

    const/4 v0, 0x0

    if-nez p0, :cond_d

    const-string p0, "CardClient"

    const-string p1, "CardService is null, call init first"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_d
    :try_start_d
    invoke-interface {p0, p1}, Lcom/nearme/instant/xcard/InstantCardService;->setLocationAsyncProvider(Lcom/nearme/instant/xcard/provider/HostLocationAsyncProvider;)V
    :try_end_10
    .catch Ljava/lang/AbstractMethodError; {:try_start_d .. :try_end_10} :catch_12

    const/4 p0, 0x1

    return p0

    :catch_12
    return v0
.end method

.method public setMaxFontScale(F)V
    .registers 3

    iget-object p0, p0, Lcom/nearme/instant/xcard/CardClient;->mService:Lorg/hapjs/card/api/CardService;

    const-string v0, "CardClient"

    if-nez p0, :cond_c

    const-string p0, "CardService is null, call init first"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    :try_start_c
    invoke-interface {p0, p1}, Lcom/nearme/instant/xcard/InstantCardService;->setMaxFontScale(F)V
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_10

    goto :goto_15

    :catchall_10
    const-string p0, "Current card engine not support setMaxFontScale"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_15
    return-void
.end method

.method public setMinFontScale(F)V
    .registers 3

    iget-object p0, p0, Lcom/nearme/instant/xcard/CardClient;->mService:Lorg/hapjs/card/api/CardService;

    const-string v0, "CardClient"

    if-nez p0, :cond_c

    const-string p0, "CardService is null, call init first"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    :try_start_c
    invoke-interface {p0, p1}, Lcom/nearme/instant/xcard/InstantCardService;->setMinFontScale(F)V
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_10

    goto :goto_15

    :catchall_10
    const-string p0, "Current card engine not support setMinFontScale"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_15
    return-void
.end method

.method public setStatConfig(Lcom/nearme/instant/xcard/statitics/StatConfig;)V
    .registers 2

    iget-object p0, p0, Lcom/nearme/instant/xcard/CardClient;->mService:Lorg/hapjs/card/api/CardService;

    if-nez p0, :cond_c

    const-string p0, "CardClient"

    const-string p1, "CardService is null, call init first"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    :try_start_c
    invoke-interface {p0, p1}, Lcom/nearme/instant/xcard/InstantCardService;->setStatConfig(Lcom/nearme/instant/xcard/statitics/StatConfig;)V
    :try_end_f
    .catch Ljava/lang/AbstractMethodError; {:try_start_c .. :try_end_f} :catch_f

    :catch_f
    return-void
.end method

.method public setSupportBlurBackground(ZLjava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/nearme/instant/xcard/CardClient;->mService:Lorg/hapjs/card/api/CardService;

    const-string v0, "CardClient"

    if-nez p0, :cond_c

    const-string p0, "CardService is null, call init first"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    :try_start_c
    invoke-interface {p0, p1, p2}, Lcom/nearme/instant/xcard/InstantCardService;->setSupportBlurBackground(ZLjava/util/Map;)V
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_10

    goto :goto_15

    :catchall_10
    const-string p0, "Current card engine not support setSupportBlurBackground"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_15
    return-void
.end method

.method public setTheme(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    iget-object p0, p0, Lcom/nearme/instant/xcard/CardClient;->mService:Lorg/hapjs/card/api/CardService;

    if-nez p0, :cond_c

    const-string p0, "CardClient"

    const-string p1, "CardService is null, call init first"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    invoke-interface {p0, p1, p2}, Lorg/hapjs/card/api/CardService;->setTheme(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public startDebug(Landroid/content/Context;)V
    .registers 2

    invoke-static {p1}, Lorg/hapjs/card/sdk/debug/SdkCardDebugReceiver;->register(Landroid/content/Context;)V

    return-void
.end method

.method public stopDebug(Landroid/content/Context;)V
    .registers 2

    invoke-static {p1}, Lorg/hapjs/card/sdk/debug/SdkCardDebugReceiver;->unregister(Landroid/content/Context;)V

    return-void
.end method

.method public suppressPermissionDialog(Z)V
    .registers 2

    iget-object p0, p0, Lcom/nearme/instant/xcard/CardClient;->mService:Lorg/hapjs/card/api/CardService;

    if-nez p0, :cond_c

    const-string p0, "CardClient"

    const-string p1, "CardService is null, call init first"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    invoke-interface {p0, p1}, Lcom/nearme/instant/xcard/InstantCardService;->suppressPermissionDialog(Z)V

    return-void
.end method

.method public unregisterEnginePackageListener()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nearme/instant/xcard/CardClient;->mPkgListener:Lcom/nearme/instant/xcard/OnPackageChangeListener;

    return-void
.end method
