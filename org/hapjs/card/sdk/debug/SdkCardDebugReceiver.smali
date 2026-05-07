.class public final Lorg/hapjs/card/sdk/debug/SdkCardDebugReceiver;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/hapjs/card/sdk/debug/SdkCardDebugReceiver$MsgData;
    }
.end annotation


# static fields
.field private static final ACTION_DEBUG:Ljava/lang/String; = "org.hapjs.intent.action.DEBUG_CARD"

.field private static final MSG_ON_RECEIVE:I = 0x0

.field private static final PERMISSION_DEBUG:Ljava/lang/String; = "org.hapjs.permission.DEBUG_CARD"

.field private static final TAG:Ljava/lang/String; = "SdkCardDebugReceiver"

.field private static sCardDebugHost:Lorg/hapjs/card/api/debug/CardDebugHost;

.field private static sHandler:Landroid/os/Handler;

.field private static sIsAsyncInitializing:Z

.field private static sPendingMsg:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/hapjs/card/sdk/debug/SdkCardDebugReceiver$MsgData;",
            ">;"
        }
    .end annotation
.end field

.field private static sSdkCardDebugReceiver:Lorg/hapjs/card/sdk/debug/SdkCardDebugReceiver;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/hapjs/card/sdk/debug/SdkCardDebugReceiver;->sPendingMsg:Ljava/util/Set;

    new-instance v0, Lorg/hapjs/card/sdk/debug/SdkCardDebugReceiver$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/hapjs/card/sdk/debug/SdkCardDebugReceiver$1;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lorg/hapjs/card/sdk/debug/SdkCardDebugReceiver;->sHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Ljava/util/Set;
    .registers 1

    sget-object v0, Lorg/hapjs/card/sdk/debug/SdkCardDebugReceiver;->sPendingMsg:Ljava/util/Set;

    return-object v0
.end method

.method public static synthetic access$100(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 2

    invoke-static {p0, p1}, Lorg/hapjs/card/sdk/debug/SdkCardDebugReceiver;->handleReceive(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private static getReceiverInfo(Landroid/content/Context;)Landroid/content/pm/ActivityInfo;
    .registers 4

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lorg/hapjs/card/sdk/debug/SdkCardDebugReceiver;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 p0, 0x200

    invoke-virtual {v0, v1, p0}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object p0
    :try_end_11
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_11} :catch_12

    return-object p0

    :catch_12
    const/4 p0, 0x0

    return-object p0
.end method

.method private static handleReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    const-string v0, "SdkCardDebugReceiver"

    if-eqz p1, :cond_53

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_53

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_15

    goto :goto_53

    :cond_15
    sget-object v1, Lorg/hapjs/card/sdk/debug/SdkCardDebugReceiver;->sCardDebugHost:Lorg/hapjs/card/api/debug/CardDebugHost;

    if-nez v1, :cond_1f

    const-string p0, "debug is disable"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1f
    invoke-static {}, Lcom/nearme/instant/xcard/CardClient;->getInstance()Lcom/nearme/instant/xcard/CardClient;

    move-result-object v1

    if-nez v1, :cond_2b

    const-string p0, "cardClient hasn\'t init"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2b
    invoke-static {p0}, Lorg/hapjs/card/sdk/utils/CardServiceLoader;->load(Landroid/content/Context;)Lorg/hapjs/card/api/CardService;

    move-result-object v1

    if-nez v1, :cond_37

    const-string p0, "cardClient init fail"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_37
    const/4 v2, 0x0

    :try_start_38
    invoke-interface {v1}, Lorg/hapjs/card/api/CardService;->getCardDebugController()Lorg/hapjs/card/api/debug/CardDebugController;

    move-result-object v2
    :try_end_3c
    .catch Ljava/lang/AbstractMethodError; {:try_start_38 .. :try_end_3c} :catch_3d

    goto :goto_42

    :catch_3d
    const-string v1, "getCardDebugController error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_42
    if-eqz v2, :cond_4d

    sget-object v0, Lorg/hapjs/card/sdk/debug/SdkCardDebugReceiver;->sCardDebugHost:Lorg/hapjs/card/api/debug/CardDebugHost;

    invoke-interface {v2, v0}, Lorg/hapjs/card/api/debug/CardDebugController;->setCardDebugHost(Lorg/hapjs/card/api/debug/CardDebugHost;)V

    invoke-interface {v2, p0, p1}, Lorg/hapjs/card/api/debug/CardDebugController;->handleDebugMessage(Landroid/content/Context;Landroid/content/Intent;)V

    return-void

    :cond_4d
    const-string p0, "the core platform unsupport debug"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_53
    :goto_53
    const-string p0, "handleReceive intent is null"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static declared-synchronized onAsyncInitStatus(Z)V
    .registers 5

    const-class v0, Lorg/hapjs/card/sdk/debug/SdkCardDebugReceiver;

    monitor-enter v0

    :try_start_3
    sput-boolean p0, Lorg/hapjs/card/sdk/debug/SdkCardDebugReceiver;->sIsAsyncInitializing:Z

    if-nez p0, :cond_31

    sget-object p0, Lorg/hapjs/card/sdk/debug/SdkCardDebugReceiver;->sHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p0

    if-eqz p0, :cond_31

    sget-object p0, Lorg/hapjs/card/sdk/debug/SdkCardDebugReceiver;->sHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    sget-object p0, Lorg/hapjs/card/sdk/debug/SdkCardDebugReceiver;->sPendingMsg:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/hapjs/card/sdk/debug/SdkCardDebugReceiver$MsgData;

    sget-object v3, Lorg/hapjs/card/sdk/debug/SdkCardDebugReceiver;->sHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_33

    goto :goto_1b

    :cond_31
    monitor-exit v0

    return-void

    :catchall_33
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized register(Landroid/content/Context;)V
    .registers 9

    const-class v0, Lorg/hapjs/card/sdk/debug/SdkCardDebugReceiver;

    monitor-enter v0

    :try_start_3
    invoke-static {p0}, Lorg/hapjs/card/sdk/debug/SdkCardDebugReceiver;->getReceiverInfo(Landroid/content/Context;)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    if-eqz v1, :cond_f

    const/4 v1, 0x1

    invoke-static {p0, v1}, Lorg/hapjs/card/sdk/debug/SdkCardDebugReceiver;->setReceiverEnabled(Landroid/content/Context;Z)V
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_35

    monitor-exit v0

    return-void

    :cond_f
    :try_start_f
    new-instance v1, Lorg/hapjs/card/sdk/debug/SdkCardDebugReceiver;

    invoke-direct {v1}, Lorg/hapjs/card/sdk/debug/SdkCardDebugReceiver;-><init>()V

    sput-object v1, Lorg/hapjs/card/sdk/debug/SdkCardDebugReceiver;->sSdkCardDebugReceiver:Lorg/hapjs/card/sdk/debug/SdkCardDebugReceiver;
    :try_end_16
    .catchall {:try_start_f .. :try_end_16} :catchall_35

    :try_start_16
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lorg/hapjs/card/sdk/debug/SdkCardDebugReceiver;->sSdkCardDebugReceiver:Lorg/hapjs/card/sdk/debug/SdkCardDebugReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string p0, "org.hapjs.intent.action.DEBUG_CARD"

    invoke-direct {v4, p0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v5, "org.hapjs.permission.DEBUG_CARD"

    const/4 v6, 0x0

    const/4 v7, 0x2

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_2a} :catch_2b
    .catchall {:try_start_16 .. :try_end_2a} :catchall_35

    goto :goto_33

    :catch_2b
    move-exception p0

    :try_start_2c
    const-string v1, "SdkCardDebugReceiver"

    const-string v2, "registerReceiver error"

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_33
    .catchall {:try_start_2c .. :try_end_33} :catchall_35

    :goto_33
    monitor-exit v0

    return-void

    :catchall_35
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static setCardDebugHost(Lorg/hapjs/card/api/debug/CardDebugHost;)V
    .registers 1

    sput-object p0, Lorg/hapjs/card/sdk/debug/SdkCardDebugReceiver;->sCardDebugHost:Lorg/hapjs/card/api/debug/CardDebugHost;

    return-void
.end method

.method private static setReceiverEnabled(Landroid/content/Context;Z)V
    .registers 5

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lorg/hapjs/card/sdk/debug/SdkCardDebugReceiver;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 p0, 0x1

    if-eqz p1, :cond_10

    move p1, p0

    goto :goto_11

    :cond_10
    const/4 p1, 0x2

    :goto_11
    invoke-virtual {v0, v1, p1, p0}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_15

    goto :goto_1d

    :catch_15
    move-exception p0

    const-string p1, "SdkCardDebugReceiver"

    const-string v0, "set debug enable"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1d
    return-void
.end method

.method public static declared-synchronized unregister(Landroid/content/Context;)V
    .registers 4

    const-class v0, Lorg/hapjs/card/sdk/debug/SdkCardDebugReceiver;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lorg/hapjs/card/sdk/debug/SdkCardDebugReceiver;->sSdkCardDebugReceiver:Lorg/hapjs/card/sdk/debug/SdkCardDebugReceiver;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_29

    if-eqz v1, :cond_1d

    :try_start_7
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sget-object v1, Lorg/hapjs/card/sdk/debug/SdkCardDebugReceiver;->sSdkCardDebugReceiver:Lorg/hapjs/card/sdk/debug/SdkCardDebugReceiver;

    invoke-virtual {p0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_10} :catch_11
    .catchall {:try_start_7 .. :try_end_10} :catchall_29

    goto :goto_19

    :catch_11
    move-exception p0

    :try_start_12
    const-string v1, "SdkCardDebugReceiver"

    const-string v2, "unregisterReceiver error"

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_19
    const/4 p0, 0x0

    sput-object p0, Lorg/hapjs/card/sdk/debug/SdkCardDebugReceiver;->sSdkCardDebugReceiver:Lorg/hapjs/card/sdk/debug/SdkCardDebugReceiver;

    goto :goto_27

    :cond_1d
    invoke-static {p0}, Lorg/hapjs/card/sdk/debug/SdkCardDebugReceiver;->getReceiverInfo(Landroid/content/Context;)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    if-eqz v1, :cond_27

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lorg/hapjs/card/sdk/debug/SdkCardDebugReceiver;->setReceiverEnabled(Landroid/content/Context;Z)V
    :try_end_27
    .catchall {:try_start_12 .. :try_end_27} :catchall_29

    :cond_27
    :goto_27
    monitor-exit v0

    return-void

    :catchall_29
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    const-class p0, Lorg/hapjs/card/sdk/debug/SdkCardDebugReceiver;

    monitor-enter p0

    :try_start_3
    sget-boolean v0, Lorg/hapjs/card/sdk/debug/SdkCardDebugReceiver;->sIsAsyncInitializing:Z

    if-eqz v0, :cond_20

    new-instance v0, Lorg/hapjs/card/sdk/debug/SdkCardDebugReceiver$MsgData;

    invoke-direct {v0, p1, p2}, Lorg/hapjs/card/sdk/debug/SdkCardDebugReceiver$MsgData;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    sget-object p1, Lorg/hapjs/card/sdk/debug/SdkCardDebugReceiver;->sPendingMsg:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object p1, Lorg/hapjs/card/sdk/debug/SdkCardDebugReceiver;->sHandler:Landroid/os/Handler;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    sget-object p2, Lorg/hapjs/card/sdk/debug/SdkCardDebugReceiver;->sHandler:Landroid/os/Handler;

    const-wide/16 v0, 0x1388

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_23

    :cond_20
    invoke-static {p1, p2}, Lorg/hapjs/card/sdk/debug/SdkCardDebugReceiver;->handleReceive(Landroid/content/Context;Landroid/content/Intent;)V

    :goto_23
    monitor-exit p0

    return-void

    :catchall_25
    move-exception p1

    monitor-exit p0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw p1
.end method
