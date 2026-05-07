.class public Lcom/android/launcher/folder/recommend/market/RequestMarketManager;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher/folder/download/MarketServiceManager$IMarketServiceClient;


# static fields
.field public static final synthetic $assertionsDisabled:Z = false

.field private static final MARKET_RECOMMEND_SERVICE_ACTION:Ljava/lang/String; = "com.oplus.market.action.EXTERNAL_API_SERVICE"

.field private static final TAG:Ljava/lang/String; = "RequestMarketManager"

.field private static volatile sInstance:Lcom/android/launcher/folder/recommend/market/RequestMarketManager;


# instance fields
.field private mAutoUnbindService:Ljava/lang/Runnable;

.field private mCallMarket:Lcom/android/launcher/folder/recommend/market/CallMarket;

.field private mCallbackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher/folder/recommend/DestroyCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mCallbackRegistered:Z

.field private final mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private final mMarketCallback:Lcom/oplus/market/aidl/IApiResponse;

.field private mMarketService:Lcom/oplus/market/aidl/IApiEngine;

.field private mMarketServiceIntent:Landroid/content/Intent;

.field private mServiceDied:Z

.field private mWorkHandler:Lcom/android/launcher/folder/recommend/FooterController$H;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->mCallbackList:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->mCallbackRegistered:Z

    new-instance v1, Lcom/android/launcher/folder/recommend/market/RequestMarketManager$1;

    invoke-direct {v1, p0}, Lcom/android/launcher/folder/recommend/market/RequestMarketManager$1;-><init>(Lcom/android/launcher/folder/recommend/market/RequestMarketManager;)V

    iput-object v1, p0, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->mMarketCallback:Lcom/oplus/market/aidl/IApiResponse;

    new-instance v1, Lcom/android/launcher/folder/recommend/market/RequestMarketManager$2;

    invoke-direct {v1, p0}, Lcom/android/launcher/folder/recommend/market/RequestMarketManager$2;-><init>(Lcom/android/launcher/folder/recommend/market/RequestMarketManager;)V

    iput-object v1, p0, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->mConnection:Landroid/content/ServiceConnection;

    new-instance v1, Lcom/android/launcher/folder/recommend/market/RequestMarketManager$3;

    invoke-direct {v1, p0}, Lcom/android/launcher/folder/recommend/market/RequestMarketManager$3;-><init>(Lcom/android/launcher/folder/recommend/market/RequestMarketManager;)V

    iput-object v1, p0, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->mAutoUnbindService:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->getMarketPkgName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-static {p1}, Lcom/android/launcher/folder/recommend/SwitchManageHelper;->getInstance(Landroid/content/Context;)Lcom/android/launcher/folder/recommend/SwitchManageHelper;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/launcher/folder/recommend/SwitchManageHelper;->setAppStorePreEnable(Z)V

    return-void

    :cond_36
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->mMarketServiceIntent:Landroid/content/Intent;

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->mMarketServiceIntent:Landroid/content/Intent;

    const-string v0, "com.oplus.market.action.EXTERNAL_API_SERVICE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance p1, Landroid/os/HandlerThread;

    const-string/jumbo v0, "recommendApp"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    new-instance p1, Lcom/android/launcher/folder/recommend/market/CallMarketImpl;

    invoke-direct {p1}, Lcom/android/launcher/folder/recommend/market/CallMarketImpl;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->mCallMarket:Lcom/android/launcher/folder/recommend/market/CallMarket;

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher/folder/recommend/market/RequestMarketManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->lambda$notifyLauncherFolderHide$0()V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/launcher/folder/recommend/market/RequestMarketManager;)Lcom/android/launcher/folder/recommend/market/CallMarket;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->mCallMarket:Lcom/android/launcher/folder/recommend/market/CallMarket;

    return-object p0
.end method

.method public static synthetic access$102(Lcom/android/launcher/folder/recommend/market/RequestMarketManager;Lcom/oplus/market/aidl/IApiEngine;)Lcom/oplus/market/aidl/IApiEngine;
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->mMarketService:Lcom/oplus/market/aidl/IApiEngine;

    return-object p1
.end method

.method public static synthetic access$200()Lcom/android/launcher/folder/recommend/market/RequestMarketManager;
    .registers 1

    sget-object v0, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->sInstance:Lcom/android/launcher/folder/recommend/market/RequestMarketManager;

    return-object v0
.end method

.method public static synthetic access$300(Lcom/android/launcher/folder/recommend/market/RequestMarketManager;)Lcom/android/launcher/folder/recommend/FooterController$H;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->mWorkHandler:Lcom/android/launcher/folder/recommend/FooterController$H;

    return-object p0
.end method

.method public static synthetic access$402(Lcom/android/launcher/folder/recommend/market/RequestMarketManager;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->mServiceDied:Z

    return p1
.end method

.method public static synthetic b(Lcom/android/launcher/folder/recommend/market/RequestMarketManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->loadRecommendDataListImpl()V

    return-void
.end method

.method public static synthetic c(Lcom/android/launcher/folder/recommend/market/RequestMarketManager;Landroid/util/Pair;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->lambda$doRecommendAppsStat$2(Landroid/util/Pair;)V

    return-void
.end method

.method public static synthetic d(Lcom/android/launcher/folder/recommend/market/RequestMarketManager;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->lambda$notifyUploadAppsExposure$1(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic e(Lcom/android/launcher/folder/recommend/market/RequestMarketManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->registerCallbackImpl()V

    return-void
.end method

.method public static synthetic f(Lcom/android/launcher/folder/recommend/market/RequestMarketManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->startMarketServiceImpl()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/launcher/folder/recommend/market/RequestMarketManager;
    .registers 3

    sget-object v0, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->sInstance:Lcom/android/launcher/folder/recommend/market/RequestMarketManager;

    if-nez v0, :cond_1b

    const-class v0, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->sInstance:Lcom/android/launcher/folder/recommend/market/RequestMarketManager;

    if-nez v1, :cond_16

    new-instance v1, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->sInstance:Lcom/android/launcher/folder/recommend/market/RequestMarketManager;

    :cond_16
    monitor-exit v0

    goto :goto_1b

    :catchall_18
    move-exception p0

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_18

    throw p0

    :cond_1b
    :goto_1b
    sget-object p0, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->sInstance:Lcom/android/launcher/folder/recommend/market/RequestMarketManager;

    return-object p0
.end method

.method private static getMarketPkgName()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/android/common/util/PackageCompatUtils;->getMarketPackage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isInstance()Z
    .registers 1

    sget-object v0, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->sInstance:Lcom/android/launcher/folder/recommend/market/RequestMarketManager;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private synthetic lambda$doRecommendAppsStat$2(Landroid/util/Pair;)V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->mMarketService:Lcom/oplus/market/aidl/IApiEngine;

    if-eqz v0, :cond_13

    :try_start_4
    iget-object p0, p0, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->mCallMarket:Lcom/android/launcher/folder/recommend/market/CallMarket;

    invoke-interface {p0, p1}, Lcom/android/launcher/folder/recommend/market/CallMarket;->getClickAppsStatUri(Landroid/util/Pair;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {v0, p0, p1}, Lcom/oplus/market/aidl/IApiEngine;->request(Ljava/lang/String;Lcom/oplus/market/aidl/IApiResponse;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_e} :catch_f

    goto :goto_13

    :catch_f
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_13
    :goto_13
    return-void
.end method

.method private synthetic lambda$notifyLauncherFolderHide$0()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->mMarketService:Lcom/oplus/market/aidl/IApiEngine;

    if-eqz v0, :cond_13

    :try_start_4
    iget-object p0, p0, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->mCallMarket:Lcom/android/launcher/folder/recommend/market/CallMarket;

    invoke-interface {p0}, Lcom/android/launcher/folder/recommend/market/CallMarket;->getNotifyFolderHideUri()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/oplus/market/aidl/IApiEngine;->request(Ljava/lang/String;Lcom/oplus/market/aidl/IApiResponse;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_e} :catch_f

    goto :goto_13

    :catch_f
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_13
    :goto_13
    return-void
.end method

.method private synthetic lambda$notifyUploadAppsExposure$1(Ljava/util/List;)V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->mMarketService:Lcom/oplus/market/aidl/IApiEngine;

    if-eqz v0, :cond_13

    :try_start_4
    iget-object p0, p0, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->mCallMarket:Lcom/android/launcher/folder/recommend/market/CallMarket;

    invoke-interface {p0, p1}, Lcom/android/launcher/folder/recommend/market/CallMarket;->getAppsExposureArg(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {v0, p0, p1}, Lcom/oplus/market/aidl/IApiEngine;->request(Ljava/lang/String;Lcom/oplus/market/aidl/IApiResponse;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_e} :catch_f

    goto :goto_13

    :catch_f
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_13
    :goto_13
    return-void
.end method

.method private loadRecommendDataListImpl()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->mMarketService:Lcom/oplus/market/aidl/IApiEngine;

    const-string v1, "RequestMarketManager"

    if-eqz v0, :cond_2e

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_27

    :try_start_10
    const-string v0, "loadRecommendDataListImpl"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->mMarketService:Lcom/oplus/market/aidl/IApiEngine;

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->mCallMarket:Lcom/android/launcher/folder/recommend/market/CallMarket;

    invoke-interface {p0}, Lcom/android/launcher/folder/recommend/market/CallMarket;->getRecommendDataUri()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/oplus/market/aidl/IApiEngine;->request(Ljava/lang/String;Lcom/oplus/market/aidl/IApiResponse;)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_21} :catch_22
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_21} :catch_22

    goto :goto_33

    :catch_22
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_33

    :cond_27
    invoke-virtual {p0}, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->unbindService()V

    invoke-direct {p0}, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->startMarketServiceImpl()V

    goto :goto_33

    :cond_2e
    const-string p0, "getRecommendDataList called, but mMarketService is null"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_33
    return-void
.end method

.method private registerCallbackImpl()V
    .registers 4

    const-string v0, "RequestMarketManager"

    iget-object v1, p0, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->mMarketService:Lcom/oplus/market/aidl/IApiEngine;

    if-nez v1, :cond_7

    return-void

    :cond_7
    :try_start_7
    const-string/jumbo v1, "registerCallbackImpl: "

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->mMarketService:Lcom/oplus/market/aidl/IApiEngine;

    iget-object v2, p0, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->mCallMarket:Lcom/android/launcher/folder/recommend/market/CallMarket;

    invoke-interface {v2}, Lcom/android/launcher/folder/recommend/market/CallMarket;->getRegisterCallbackUri()Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->mMarketCallback:Lcom/oplus/market/aidl/IApiResponse;

    invoke-interface {v1, v2, p0}, Lcom/oplus/market/aidl/IApiEngine;->request(Ljava/lang/String;Lcom/oplus/market/aidl/IApiResponse;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_1a} :catch_1b

    goto :goto_22

    :catch_1b
    move-exception p0

    const-string/jumbo v1, "registerCallback exception -- "

    invoke-static {v0, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_22
    return-void
.end method

.method private static shutdown()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->sInstance:Lcom/android/launcher/folder/recommend/market/RequestMarketManager;

    return-void
.end method

.method private startMarketServiceImpl()V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->mMarketServiceIntent:Landroid/content/Intent;

    if-nez v0, :cond_c

    const-string p0, "RequestMarketManager"

    const-string v0, "Not found market package."

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_c
    iget-object v1, p0, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/common/util/PackageUtils;->getExplicitIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_27

    const-string v0, "RequestMarketManager"

    const-string/jumbo v1, "startMarketServiceImpl not found MarketServiceIntent."

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/launcher/folder/recommend/SwitchManageHelper;->getInstance(Landroid/content/Context;)Lcom/android/launcher/folder/recommend/SwitchManageHelper;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher/folder/recommend/SwitchManageHelper;->setAppStorePreEnable(Z)V

    return-void

    :cond_27
    monitor-enter p0

    :try_start_28
    iget-object v0, p0, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->mMarketService:Lcom/oplus/market/aidl/IApiEngine;
    :try_end_2a
    .catchall {:try_start_28 .. :try_end_2a} :catchall_43

    if-nez v0, :cond_41

    :try_start_2c
    iget-object v0, p0, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->mMarketServiceIntent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->mConnection:Landroid/content/ServiceConnection;

    const/16 v3, 0x21

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_37} :catch_38
    .catchall {:try_start_2c .. :try_end_37} :catchall_43

    goto :goto_41

    :catch_38
    move-exception v0

    :try_start_39
    const-string v1, "RequestMarketManager"

    const-string/jumbo v2, "startMarketServiceImpl e:"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_41
    :goto_41
    monitor-exit p0

    return-void

    :catchall_43
    move-exception v0

    monitor-exit p0
    :try_end_45
    .catchall {:try_start_39 .. :try_end_45} :catchall_43

    throw v0
.end method


# virtual methods
.method public addCallback(Lcom/android/launcher/folder/recommend/DestroyCallback;)V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->mCallbackList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->mCallbackList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    return-void
.end method

.method public cancelLoadRecommendData()V
    .registers 3

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->mCallMarket:Lcom/android/launcher/folder/recommend/market/CallMarket;

    const-wide/16 v0, -0x1

    invoke-interface {p0, v0, v1}, Lcom/android/launcher/folder/recommend/market/CallMarket;->setCurrentTimeStamp(J)V

    return-void
.end method

.method public clearCallBack()V
    .registers 2

    const-class v0, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;

    monitor-enter v0

    :try_start_3
    iget-object p0, p0, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->mCallbackList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public destroy()V
    .registers 4

    const-class v0, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0}, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->unbindService()V

    invoke-virtual {p0}, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->removeUnbindCallback()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->mWorkHandler:Lcom/android/launcher/folder/recommend/FooterController$H;

    if-eqz v2, :cond_15

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->mWorkHandler:Lcom/android/launcher/folder/recommend/FooterController$H;

    :cond_15
    iget-object v1, p0, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->mCallbackList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_33

    iget-object v1, p0, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->mCallbackList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_23
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher/folder/recommend/DestroyCallback;

    invoke-interface {v2}, Lcom/android/launcher/folder/recommend/DestroyCallback;->onDestroy()V

    goto :goto_23

    :cond_33
    iget-object v1, p0, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->mCallbackList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz p0, :cond_3f

    invoke-virtual {p0}, Landroid/os/HandlerThread;->quit()Z

    :cond_3f
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3 .. :try_end_40} :catchall_44

    invoke-static {}, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->shutdown()V

    return-void

    :catchall_44
    move-exception p0

    :try_start_45
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    throw p0
.end method

.method public doRecommendAppsStat(Landroid/util/Pair;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Lcom/android/launcher/folder/recommend/bean/DataBean;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->mWorkHandler:Lcom/android/launcher/folder/recommend/FooterController$H;

    new-instance v1, Landroidx/constraintlayout/motion/widget/a;

    invoke-direct {v1, p0, p1}, Landroidx/constraintlayout/motion/widget/a;-><init>(Lcom/android/launcher/folder/recommend/market/RequestMarketManager;Landroid/util/Pair;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getCallMarket()Lcom/android/launcher/folder/recommend/market/CallMarket;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->mCallMarket:Lcom/android/launcher/folder/recommend/market/CallMarket;

    return-object p0
.end method

.method public declared-synchronized getCallbackRegistered()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->mCallbackRegistered:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getHandlerThread()Landroid/os/HandlerThread;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->mHandlerThread:Landroid/os/HandlerThread;

    return-object p0
.end method

.method public getMarketService()Lcom/oplus/market/aidl/IApiEngine;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->mMarketService:Lcom/oplus/market/aidl/IApiEngine;

    return-object p0
.end method

.method public isBinding()Z
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->mMarketService:Lcom/oplus/market/aidl/IApiEngine;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public isServiceDied()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->mServiceDied:Z

    return p0
.end method

.method public loadRecommendDataList()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->mWorkHandler:Lcom/android/launcher/folder/recommend/FooterController$H;

    new-instance v1, Lcom/android/launcher/folder/recommend/market/a;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lcom/android/launcher/folder/recommend/market/a;-><init>(Lcom/android/launcher/folder/recommend/market/RequestMarketManager;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public notifyLauncherFolderHide()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->mWorkHandler:Lcom/android/launcher/folder/recommend/FooterController$H;

    new-instance v1, Lcom/android/launcher/folder/recommend/market/a;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/launcher/folder/recommend/market/a;-><init>(Lcom/android/launcher/folder/recommend/market/RequestMarketManager;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public notifyUploadAppsExposure(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher/folder/recommend/bean/AppStatBean;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->mWorkHandler:Lcom/android/launcher/folder/recommend/FooterController$H;

    new-instance v1, Landroidx/constraintlayout/motion/widget/a;

    invoke-direct {v1, p0, p1}, Landroidx/constraintlayout/motion/widget/a;-><init>(Lcom/android/launcher/folder/recommend/market/RequestMarketManager;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public registerCallback()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->mWorkHandler:Lcom/android/launcher/folder/recommend/FooterController$H;

    new-instance v1, Lcom/android/launcher/folder/recommend/market/a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/launcher/folder/recommend/market/a;-><init>(Lcom/android/launcher/folder/recommend/market/RequestMarketManager;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public registerUnbindCallback()V
    .registers 4

    const-string v0, "RequestMarketManager"

    const-string/jumbo v1, "registerUnbindCallback"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_26

    invoke-virtual {v1}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->mAutoUnbindService:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->mAutoUnbindService:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1d
    iget-object p0, p0, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->mAutoUnbindService:Ljava/lang/Runnable;

    const-wide/32 v1, 0x1d4c0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2c

    :cond_26
    const-string/jumbo p0, "registerUnbindCallback, mContext is null"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2c
    return-void
.end method

.method public removeUnbindCallback()V
    .registers 3

    const-string v0, "RequestMarketManager"

    const-string/jumbo v1, "removeUnbindCallbacks"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_1e

    invoke-virtual {v1}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->mAutoUnbindService:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_24

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->mAutoUnbindService:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_24

    :cond_1e
    const-string/jumbo p0, "removeUnbindCallbacks, mContext is null"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_24
    :goto_24
    return-void
.end method

.method public setCallbackRegisterFailed()V
    .registers 3

    const-string v0, "RequestMarketManager"

    const-string/jumbo v1, "setCallbackRegisterFailed:"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->setCallbackRegistered(Z)V

    invoke-virtual {p0}, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->unbindService()V

    return-void
.end method

.method public declared-synchronized setCallbackRegistered(Z)V
    .registers 2

    monitor-enter p0

    :try_start_1
    iput-boolean p1, p0, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->mCallbackRegistered:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setHandler(Lcom/android/launcher/folder/recommend/FooterController$H;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->mWorkHandler:Lcom/android/launcher/folder/recommend/FooterController$H;

    return-void
.end method

.method public startMarketService()Z
    .registers 4

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->mMarketService:Lcom/oplus/market/aidl/IApiEngine;

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->mWorkHandler:Lcom/android/launcher/folder/recommend/FooterController$H;

    if-eqz v0, :cond_1d

    const-string v0, "RequestMarketManager"

    const-string/jumbo v1, "startMarketService:"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->mWorkHandler:Lcom/android/launcher/folder/recommend/FooterController$H;

    new-instance v1, Lcom/android/launcher/folder/recommend/market/a;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/android/launcher/folder/recommend/market/a;-><init>(Lcom/android/launcher/folder/recommend/market/RequestMarketManager;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p0, 0x1

    return p0

    :cond_1d
    const/4 p0, 0x0

    return p0
.end method

.method public unbindService()V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->mMarketService:Lcom/oplus/market/aidl/IApiEngine;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_3b

    if-eqz v0, :cond_32

    :try_start_5
    iget-object v0, p0, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_c} :catch_d
    .catchall {:try_start_5 .. :try_end_c} :catchall_3b

    goto :goto_25

    :catch_d
    move-exception v0

    :try_start_e
    const-string v1, "RequestMarketManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unBindService: unbind unsuccessful because: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->mMarketService:Lcom/oplus/market/aidl/IApiEngine;

    invoke-static {}, Lcom/android/launcher/folder/download/MarketServiceManager;->getInstance()Lcom/android/launcher/folder/download/MarketServiceManager;

    move-result-object v0

    sget-object v1, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->sInstance:Lcom/android/launcher/folder/recommend/market/RequestMarketManager;

    invoke-virtual {v0, v1}, Lcom/android/launcher/folder/download/MarketServiceManager;->removeServiceClient(Lcom/android/launcher/folder/download/MarketServiceManager$IMarketServiceClient;)V

    goto :goto_39

    :cond_32
    const-string v0, "RequestMarketManager"

    const-string v1, "mMarketService is null, unnecessary to unbind."

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_39
    monitor-exit p0

    return-void

    :catchall_3b
    move-exception v0

    monitor-exit p0
    :try_end_3d
    .catchall {:try_start_e .. :try_end_3d} :catchall_3b

    throw v0
.end method
