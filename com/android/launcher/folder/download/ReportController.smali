.class public final Lcom/android/launcher/folder/download/ReportController;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher/folder/download/MarketServiceManager$IMarketServiceClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/folder/download/ReportController$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher/folder/download/ReportController$Companion;

.field private static final MARKET_RECOMMEND_SERVICE_ACTION:Ljava/lang/String; = "com.oplus.market.action.EXTERNAL_API_SERVICE"

.field public static final REPORT_POST_DELAY:J = 0x3e8L

.field public static final TAG:Ljava/lang/String; = "ReportController"

.field private static final sInstance$delegate:Ly2/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly2/e<",
            "Lcom/android/launcher/folder/download/ReportController;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBizType:I

.field private final mCallMarket:Lcom/android/launcher/folder/recommend/market/CallMarketImpl;

.field private mClickReqId:Ljava/lang/String;

.field private mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mExposedApps:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mReportConnection:Lcom/android/launcher/folder/download/ReportController$mReportConnection$1;

.field private mReportService:Lcom/oplus/market/aidl/IApiEngine;

.field private final mWaitToReportTaskList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher/folder/download/ReportController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher/folder/download/ReportController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher/folder/download/ReportController;->Companion:Lcom/android/launcher/folder/download/ReportController$Companion;

    sget-object v0, Ly2/g;->a:Ly2/g;

    sget-object v1, Lcom/android/launcher/folder/download/ReportController$Companion$sInstance$2;->INSTANCE:Lcom/android/launcher/folder/download/ReportController$Companion$sInstance$2;

    invoke-static {v0, v1}, Ly2/f;->b(Ly2/g;Lkotlin/jvm/functions/Function0;)Ly2/e;

    move-result-object v0

    sput-object v0, Lcom/android/launcher/folder/download/ReportController;->sInstance$delegate:Ly2/e;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/launcher/folder/recommend/market/CallMarketImpl;

    invoke-direct {v0}, Lcom/android/launcher/folder/recommend/market/CallMarketImpl;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/folder/download/ReportController;->mCallMarket:Lcom/android/launcher/folder/recommend/market/CallMarketImpl;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/folder/download/ReportController;->mExposedApps:Ljava/util/Set;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/launcher/folder/download/ReportController;->mClickReqId:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/folder/download/ReportController;->mWaitToReportTaskList:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Lcom/android/launcher/folder/download/ReportController$mReportConnection$1;

    invoke-direct {v0, p0}, Lcom/android/launcher/folder/download/ReportController$mReportConnection$1;-><init>(Lcom/android/launcher/folder/download/ReportController;)V

    iput-object v0, p0, Lcom/android/launcher/folder/download/ReportController;->mReportConnection:Lcom/android/launcher/folder/download/ReportController$mReportConnection$1;

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher/folder/download/ReportController;Landroid/content/Context;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/folder/download/ReportController;->unbindService$lambda-11$lambda-10(Lcom/android/launcher/folder/download/ReportController;Landroid/content/Context;)V

    return-void
.end method

.method public static final synthetic access$getMBizType$p(Lcom/android/launcher/folder/download/ReportController;)I
    .registers 1

    iget p0, p0, Lcom/android/launcher/folder/download/ReportController;->mBizType:I

    return p0
.end method

.method public static final synthetic access$getMCallMarket$p(Lcom/android/launcher/folder/download/ReportController;)Lcom/android/launcher/folder/recommend/market/CallMarketImpl;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/folder/download/ReportController;->mCallMarket:Lcom/android/launcher/folder/recommend/market/CallMarketImpl;

    return-object p0
.end method

.method public static final synthetic access$getMClickReqId$p(Lcom/android/launcher/folder/download/ReportController;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/folder/download/ReportController;->mClickReqId:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getMReportService$p(Lcom/android/launcher/folder/download/ReportController;)Lcom/oplus/market/aidl/IApiEngine;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/folder/download/ReportController;->mReportService:Lcom/oplus/market/aidl/IApiEngine;

    return-object p0
.end method

.method public static final synthetic access$getMWaitToReportTaskList$p(Lcom/android/launcher/folder/download/ReportController;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/folder/download/ReportController;->mWaitToReportTaskList:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method public static final synthetic access$getSInstance$delegate$cp()Ly2/e;
    .registers 1

    sget-object v0, Lcom/android/launcher/folder/download/ReportController;->sInstance$delegate:Ly2/e;

    return-object v0
.end method

.method public static final synthetic access$setMBizType$p(Lcom/android/launcher/folder/download/ReportController;I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher/folder/download/ReportController;->mBizType:I

    return-void
.end method

.method public static final synthetic access$setMClickReqId$p(Lcom/android/launcher/folder/download/ReportController;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/folder/download/ReportController;->mClickReqId:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setMReportService$p(Lcom/android/launcher/folder/download/ReportController;Lcom/oplus/market/aidl/IApiEngine;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/folder/download/ReportController;->mReportService:Lcom/oplus/market/aidl/IApiEngine;

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher/folder/download/ReportController;IILjava/lang/String;Lcom/android/launcher/folder/recommend/bean/AppStatBean;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/launcher/folder/download/ReportController;->notifyTailClickAppStatUri$lambda-5(Lcom/android/launcher/folder/download/ReportController;IILjava/lang/String;Lcom/android/launcher/folder/recommend/bean/AppStatBean;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/launcher/folder/download/ReportController;IILjava/lang/String;Ljava/util/List;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/launcher/folder/download/ReportController;->notifyTailMultiAppsExposure$lambda-3$lambda-2(Lcom/android/launcher/folder/download/ReportController;IILjava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic d(Lcom/android/launcher/folder/download/ReportController;IILjava/lang/String;Ljava/util/List;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/launcher/folder/download/ReportController;->notifyTailMultiAppsExposure$lambda-3(Lcom/android/launcher/folder/download/ReportController;IILjava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic e(Lcom/android/launcher/folder/download/ReportController;IILjava/lang/String;Lcom/android/launcher/folder/recommend/bean/AppStatBean;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/launcher/folder/download/ReportController;->notifyTailClickAppStatUri$lambda-5$lambda-4(Lcom/android/launcher/folder/download/ReportController;IILjava/lang/String;Lcom/android/launcher/folder/recommend/bean/AppStatBean;)V

    return-void
.end method

.method private static final notifyTailClickAppStatUri$lambda-5(Lcom/android/launcher/folder/download/ReportController;IILjava/lang/String;Lcom/android/launcher/folder/recommend/bean/AppStatBean;)V
    .registers 13

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$reqId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportFolderContentRecommend()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/launcher/folder/download/ReportController;->mReportService:Lcom/oplus/market/aidl/IApiEngine;

    if-nez v0, :cond_18

    invoke-virtual {p0}, Lcom/android/launcher/folder/download/ReportController;->startReportService()V

    :cond_18
    new-instance v0, Lcom/android/launcher/folder/download/b;

    const/4 v7, 0x1

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/launcher/folder/download/b;-><init>(Lcom/android/launcher/folder/download/ReportController;IILjava/lang/String;Lcom/android/launcher/folder/recommend/bean/AppStatBean;I)V

    invoke-direct {p0, v0}, Lcom/android/launcher/folder/download/ReportController;->notifyTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final notifyTailClickAppStatUri$lambda-5$lambda-4(Lcom/android/launcher/folder/download/ReportController;IILjava/lang/String;Lcom/android/launcher/folder/recommend/bean/AppStatBean;)V
    .registers 8

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$reqId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_c
    iget-object v1, p0, Lcom/android/launcher/folder/download/ReportController;->mReportService:Lcom/oplus/market/aidl/IApiEngine;

    if-nez v1, :cond_11

    goto :goto_2a

    :cond_11
    iget-object v2, p0, Lcom/android/launcher/folder/download/ReportController;->mCallMarket:Lcom/android/launcher/folder/recommend/market/CallMarketImpl;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/android/launcher/folder/recommend/market/CallMarketImpl;->getTailClickAppStatUri(IILjava/lang/String;Lcom/android/launcher/folder/recommend/bean/AppStatBean;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Lcom/oplus/market/aidl/IApiEngine;->request(Ljava/lang/String;Lcom/oplus/market/aidl/IApiResponse;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1a} :catch_1b

    goto :goto_2a

    :catch_1b
    move-exception p1

    iput-object v0, p0, Lcom/android/launcher/folder/download/ReportController;->mReportService:Lcom/oplus/market/aidl/IApiEngine;

    const-string/jumbo p0, "notifyTailClickAppStatUri: "

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "ReportController"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2a
    return-void
.end method

.method private static final notifyTailMultiAppsExposure$lambda-3(Lcom/android/launcher/folder/download/ReportController;IILjava/lang/String;Ljava/util/List;)V
    .registers 13

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$reqId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportFolderContentRecommend()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/launcher/folder/download/ReportController;->mReportService:Lcom/oplus/market/aidl/IApiEngine;

    if-nez v0, :cond_18

    invoke-virtual {p0}, Lcom/android/launcher/folder/download/ReportController;->startReportService()V

    :cond_18
    new-instance v0, Lcom/android/launcher/folder/download/c;

    const/4 v7, 0x1

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/launcher/folder/download/c;-><init>(Lcom/android/launcher/folder/download/ReportController;IILjava/lang/String;Ljava/util/List;I)V

    invoke-direct {p0, v0}, Lcom/android/launcher/folder/download/ReportController;->notifyTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final notifyTailMultiAppsExposure$lambda-3$lambda-2(Lcom/android/launcher/folder/download/ReportController;IILjava/lang/String;Ljava/util/List;)V
    .registers 8

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$reqId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_c
    iget-object v1, p0, Lcom/android/launcher/folder/download/ReportController;->mReportService:Lcom/oplus/market/aidl/IApiEngine;

    if-nez v1, :cond_11

    goto :goto_2a

    :cond_11
    iget-object v2, p0, Lcom/android/launcher/folder/download/ReportController;->mCallMarket:Lcom/android/launcher/folder/recommend/market/CallMarketImpl;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/android/launcher/folder/recommend/market/CallMarketImpl;->getReCommendAppExposureArg(IILjava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Lcom/oplus/market/aidl/IApiEngine;->request(Ljava/lang/String;Lcom/oplus/market/aidl/IApiResponse;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1a} :catch_1b

    goto :goto_2a

    :catch_1b
    move-exception p1

    iput-object v0, p0, Lcom/android/launcher/folder/download/ReportController;->mReportService:Lcom/oplus/market/aidl/IApiEngine;

    const-string/jumbo p0, "notifyTailMultiAppsExposure: "

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "ReportController"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2a
    return-void
.end method

.method private final notifyTask(Ljava/lang/Runnable;)V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher/folder/download/ReportController;->mReportService:Lcom/oplus/market/aidl/IApiEngine;

    if-eqz v0, :cond_1d

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_a

    :cond_8
    :goto_8
    move v1, v2

    goto :goto_17

    :cond_a
    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_11

    goto :goto_8

    :cond_11
    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-ne v0, v1, :cond_8

    :goto_17
    if-eqz v1, :cond_1d

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_22

    :cond_1d
    iget-object p0, p0, Lcom/android/launcher/folder/download/ReportController;->mWaitToReportTaskList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :goto_22
    return-void
.end method

.method private static final unbindService$lambda-11$lambda-10(Lcom/android/launcher/folder/download/ReportController;Landroid/content/Context;)V
    .registers 5

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    monitor-enter p0

    :try_start_c
    iget-object v0, p0, Lcom/android/launcher/folder/download/ReportController;->mReportService:Lcom/oplus/market/aidl/IApiEngine;

    if-eqz v0, :cond_82

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_16

    :cond_14
    :goto_14
    move v1, v2

    goto :goto_23

    :cond_16
    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_1d

    goto :goto_14

    :cond_1d
    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0
    :try_end_21
    .catchall {:try_start_c .. :try_end_21} :catchall_8c

    if-ne v0, v1, :cond_14

    :goto_23
    if-eqz v1, :cond_82

    const/4 v0, 0x0

    :try_start_26
    iget-object v1, p0, Lcom/android/launcher/folder/download/ReportController;->mReportConnection:Lcom/android/launcher/folder/download/ReportController$mReportConnection$1;

    invoke-virtual {p1, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_2b} :catch_46
    .catchall {:try_start_26 .. :try_end_2b} :catchall_44

    :try_start_2b
    iput-object v0, p0, Lcom/android/launcher/folder/download/ReportController;->mReportService:Lcom/oplus/market/aidl/IApiEngine;

    iput-object v0, p0, Lcom/android/launcher/folder/download/ReportController;->mContext:Ljava/lang/ref/WeakReference;

    iget-object p1, p0, Lcom/android/launcher/folder/download/ReportController;->mWaitToReportTaskList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    sget-object p1, Lcom/android/launcher/folder/download/MarketServiceManager;->Companion:Lcom/android/launcher/folder/download/MarketServiceManager$Companion;

    invoke-virtual {p1}, Lcom/android/launcher/folder/download/MarketServiceManager$Companion;->getInstance()Lcom/android/launcher/folder/download/MarketServiceManager;

    move-result-object p1

    sget-object v0, Lcom/android/launcher/folder/download/ReportController;->Companion:Lcom/android/launcher/folder/download/ReportController$Companion;

    invoke-virtual {v0}, Lcom/android/launcher/folder/download/ReportController$Companion;->getSInstance()Lcom/android/launcher/folder/download/ReportController;

    move-result-object v0

    :goto_40
    invoke-virtual {p1, v0}, Lcom/android/launcher/folder/download/MarketServiceManager;->removeServiceClient(Lcom/android/launcher/folder/download/MarketServiceManager$IMarketServiceClient;)V
    :try_end_43
    .catchall {:try_start_2b .. :try_end_43} :catchall_8c

    goto :goto_8a

    :catchall_44
    move-exception p1

    goto :goto_69

    :catch_46
    move-exception p1

    :try_start_47
    const-string v1, "ReportController"

    const-string/jumbo v2, "unBindService: unbind unsuccessful because: "

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_53
    .catchall {:try_start_47 .. :try_end_53} :catchall_44

    :try_start_53
    iput-object v0, p0, Lcom/android/launcher/folder/download/ReportController;->mReportService:Lcom/oplus/market/aidl/IApiEngine;

    iput-object v0, p0, Lcom/android/launcher/folder/download/ReportController;->mContext:Ljava/lang/ref/WeakReference;

    iget-object p1, p0, Lcom/android/launcher/folder/download/ReportController;->mWaitToReportTaskList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    sget-object p1, Lcom/android/launcher/folder/download/MarketServiceManager;->Companion:Lcom/android/launcher/folder/download/MarketServiceManager$Companion;

    invoke-virtual {p1}, Lcom/android/launcher/folder/download/MarketServiceManager$Companion;->getInstance()Lcom/android/launcher/folder/download/MarketServiceManager;

    move-result-object p1

    sget-object v0, Lcom/android/launcher/folder/download/ReportController;->Companion:Lcom/android/launcher/folder/download/ReportController$Companion;

    invoke-virtual {v0}, Lcom/android/launcher/folder/download/ReportController$Companion;->getSInstance()Lcom/android/launcher/folder/download/ReportController;

    move-result-object v0

    goto :goto_40

    :goto_69
    iput-object v0, p0, Lcom/android/launcher/folder/download/ReportController;->mReportService:Lcom/oplus/market/aidl/IApiEngine;

    iput-object v0, p0, Lcom/android/launcher/folder/download/ReportController;->mContext:Ljava/lang/ref/WeakReference;

    iget-object v0, p0, Lcom/android/launcher/folder/download/ReportController;->mWaitToReportTaskList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    sget-object v0, Lcom/android/launcher/folder/download/MarketServiceManager;->Companion:Lcom/android/launcher/folder/download/MarketServiceManager$Companion;

    invoke-virtual {v0}, Lcom/android/launcher/folder/download/MarketServiceManager$Companion;->getInstance()Lcom/android/launcher/folder/download/MarketServiceManager;

    move-result-object v0

    sget-object v1, Lcom/android/launcher/folder/download/ReportController;->Companion:Lcom/android/launcher/folder/download/ReportController$Companion;

    invoke-virtual {v1}, Lcom/android/launcher/folder/download/ReportController$Companion;->getSInstance()Lcom/android/launcher/folder/download/ReportController;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher/folder/download/MarketServiceManager;->removeServiceClient(Lcom/android/launcher/folder/download/MarketServiceManager$IMarketServiceClient;)V

    throw p1

    :cond_82
    const-string p1, "ReportController"

    const-string/jumbo v0, "mReportService is null, unnecessary to unbind."

    invoke-static {p1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8a
    .catchall {:try_start_53 .. :try_end_8a} :catchall_8c

    :goto_8a
    monitor-exit p0

    return-void

    :catchall_8c
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final clearExposedApps()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/folder/download/ReportController;->mExposedApps:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public final findCurrentPageItems(Lcom/android/launcher3/folder/OplusFolder;)Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/folder/OplusFolder;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            ">;"
        }
    .end annotation

    const-string p0, "folder"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/launcher3/folder/OplusFolder;->getContent()Lcom/android/launcher3/folder/FolderPagedView;

    move-result-object p0

    iget p0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    iget-object v0, p1, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v0, v0, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/android/launcher3/folder/OplusFolder;->getContent()Lcom/android/launcher3/folder/FolderPagedView;

    move-result-object p1

    const-string/jumbo v2, "null cannot be cast to non-null type com.android.launcher3.folder.OplusFolderPagedView"

    invoke-static {p1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lcom/android/launcher3/folder/OplusFolderPagedView;

    invoke-virtual {p1}, Lcom/android/launcher3/folder/OplusFolderPagedView;->getOrganizer()Lcom/android/launcher3/folder/FolderGridOrganizer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/folder/FolderGridOrganizer;->getMaxItemsPerPage()I

    move-result p1

    mul-int/2addr p0, p1

    add-int/2addr p1, p0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    :goto_32
    if-ge p0, p1, :cond_3e

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p0, p0, 0x1

    goto :goto_32

    :cond_3e
    return-object v1
.end method

.method public isBinding()Z
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/folder/download/ReportController;->mReportService:Lcom/oplus/market/aidl/IApiEngine;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public final isExposedApp(Ljava/lang/String;)Z
    .registers 4

    iget-object v0, p0, Lcom/android/launcher/folder/download/ReportController;->mExposedApps:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2a

    if-nez p1, :cond_c

    goto :goto_2a

    :cond_c
    iget-object p0, p0, Lcom/android/launcher/folder/download/ReportController;->mExposedApps:Ljava/util/Set;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_2a
    :goto_2a
    return v1
.end method

.method public final notifyLauncherFolderHide()V
    .registers 8

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportFolderContentRecommend()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/launcher/folder/download/ReportController;->mReportService:Lcom/oplus/market/aidl/IApiEngine;

    if-nez v0, :cond_b

    goto :goto_1f

    :cond_b
    sget-object v0, Lq3/q0;->a:Lq3/b0;

    invoke-static {v0}, Lq3/c1;->a(Lb3/f;)Lq3/f0;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v4, Lcom/android/launcher/folder/download/ReportController$notifyLauncherFolderHide$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Lcom/android/launcher/folder/download/ReportController$notifyLauncherFolderHide$1;-><init>(Lcom/android/launcher/folder/download/ReportController;Lb3/d;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lq3/g;->e(Lq3/f0;Lb3/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lq3/i1;

    return-void

    :cond_1f
    :goto_1f
    const-string p0, "ReportController"

    const-string/jumbo v0, "notifyLauncherFolderHide: service is not connection!!!"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final notifyTailClickAppStatUri(IILjava/lang/String;Lcom/android/launcher/folder/recommend/bean/AppStatBean;)V
    .registers 14

    const-string/jumbo v0, "reqId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v8, Lcom/android/launcher/folder/download/b;

    const/4 v7, 0x0

    move-object v1, v8

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/launcher/folder/download/b;-><init>(Lcom/android/launcher/folder/download/ReportController;IILjava/lang/String;Lcom/android/launcher/folder/recommend/bean/AppStatBean;I)V

    invoke-virtual {v0, v8}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final notifyTailMultiAppsExposure(IILjava/lang/String;Ljava/util/List;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lcom/android/launcher/folder/recommend/bean/AppStatBean;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "reqId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v8, Lcom/android/launcher/folder/download/c;

    const/4 v7, 0x0

    move-object v1, v8

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/launcher/folder/download/c;-><init>(Lcom/android/launcher/folder/download/ReportController;IILjava/lang/String;Ljava/util/List;I)V

    invoke-virtual {v0, v8}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final reportAppClicked(ILcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .registers 5

    const-string v0, "itemInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p2, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->mMarketRecommendAppInfo:Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;

    invoke-virtual {v0}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->getMRecommendId()I

    move-result v0

    sget-object v1, Lcom/android/launcher/folder/recommend/market/ApiConstant$BizType;->INVERTED_TAIL_MAP_FOLDER:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-nez v1, :cond_1e

    const-string/jumbo p0, "reportAppClicked: Unknown recommend id = "

    const-string p1, "ReportController"

    invoke-static {v0, p0, p1}, Lcom/android/common/config/f;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1e
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/launcher/folder/download/ReportController;->mBizType:I

    iget-object v0, p2, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->mMarketRecommendAppInfo:Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;

    invoke-virtual {v0}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->getMReqId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher/folder/download/ReportController;->mClickReqId:Ljava/lang/String;

    new-instance v0, Lcom/android/launcher/folder/recommend/bean/AppStatBean;

    iget-object v1, p2, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->mMarketRecommendAppInfo:Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;

    invoke-virtual {v1}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->getMPkgName()Ljava/lang/String;

    move-result-object v1

    iget p2, p2, Lcom/android/launcher3/model/data/ItemInfo;->rank:I

    invoke-direct {v0, v1, p2}, Lcom/android/launcher/folder/recommend/bean/AppStatBean;-><init>(Ljava/lang/String;I)V

    iget p2, p0, Lcom/android/launcher/folder/download/ReportController;->mBizType:I

    iget-object v1, p0, Lcom/android/launcher/folder/download/ReportController;->mClickReqId:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/android/launcher/folder/download/ReportController;->notifyTailClickAppStatUri(IILjava/lang/String;Lcom/android/launcher/folder/recommend/bean/AppStatBean;)V

    return-void
.end method

.method public final reportAppsExposed(ILjava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "+",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "itemInfoList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_e
    :goto_e
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_39

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    sget-object v4, Lcom/android/launcher/folder/download/FolderRecommendUtils;->Companion:Lcom/android/launcher/folder/download/FolderRecommendUtils$Companion;

    invoke-virtual {v4}, Lcom/android/launcher/folder/download/FolderRecommendUtils$Companion;->getSInstance()Lcom/android/launcher/folder/download/FolderRecommendUtils;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->isRecommendItemInfo(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)Z

    move-result v4

    if-eqz v4, :cond_33

    invoke-virtual {v3}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/launcher/folder/download/ReportController;->isExposedApp(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_33

    const/4 v2, 0x1

    :cond_33
    if-eqz v2, :cond_e

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_39
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p2

    const-string v1, "ReportController"

    if-eqz p2, :cond_62

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_45
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_62

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    iget-object v3, v3, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->mMarketRecommendAppInfo:Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;

    invoke-virtual {v3}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->getMAppName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "reportAppsExposed: it = "

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_45

    :cond_62
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_6f

    const-string/jumbo p0, "reportAppsExposed: recommendInfos == null"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_6f
    iget-object p2, p0, Lcom/android/launcher/folder/download/ReportController;->mExposedApps:Ljava/util/Set;

    invoke-interface {p2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_ab

    move v4, v2

    :goto_82
    add-int/lit8 v5, v4, 0x1

    new-instance v6, Lcom/android/launcher/folder/recommend/bean/AppStatBean;

    invoke-direct {v6}, Lcom/android/launcher/folder/recommend/bean/AppStatBean;-><init>()V

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    iget v7, v7, Lcom/android/launcher3/model/data/ItemInfo;->rank:I

    invoke-virtual {v6, v7}, Lcom/android/launcher/folder/recommend/bean/AppStatBean;->setPos(I)V

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    iget-object v4, v4, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->mMarketRecommendAppInfo:Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;

    invoke-virtual {v4}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->getMPkgName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/android/launcher/folder/recommend/bean/AppStatBean;->setPkg(Ljava/lang/String;)V

    invoke-interface {p2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-le v5, v3, :cond_a9

    goto :goto_ab

    :cond_a9
    move v4, v5

    goto :goto_82

    :cond_ab
    :goto_ab
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    iget-object v3, v3, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->mMarketRecommendAppInfo:Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;

    invoke-virtual {v3}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->getMRecommendId()I

    move-result v3

    sget-object v4, Lcom/android/launcher/folder/recommend/market/ApiConstant$BizType;->INVERTED_TAIL_MAP_FOLDER:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-nez v4, :cond_c8

    const-string/jumbo p0, "reportAppsExposed: Unknown recommend id = "

    invoke-static {v3, p0, v1}, Lcom/android/common/config/f;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_c8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "reportAppsExposed: currentPage = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", bizType = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    iget-object v0, v0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->mMarketRecommendAppInfo:Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;

    invoke-virtual {v0}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->getMReqId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v1, v0, p2}, Lcom/android/launcher/folder/download/ReportController;->notifyTailMultiAppsExposure(IILjava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public final startReportService()V
    .registers 4

    sget-object v0, Lcom/android/launcher3/Launcher;->ACTIVITY_TRACKER:Lcom/android/launcher3/util/ActivityTracker;

    invoke-virtual {v0}, Lcom/android/launcher3/util/ActivityTracker;->getCreatedActivity()Lcom/android/launcher3/BaseActivity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/Launcher;

    if-nez v0, :cond_b

    goto :goto_49

    :cond_b
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/launcher/folder/download/ReportController;->mContext:Ljava/lang/ref/WeakReference;

    sget-object v1, Lcom/android/common/util/PackageCompatUtils;->Companion:Lcom/android/common/util/PackageCompatUtils$Companion;

    invoke-virtual {v1}, Lcom/android/common/util/PackageCompatUtils$Companion;->getMarketPackage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-static {v0}, Lcom/android/launcher/folder/recommend/SwitchManageHelper;->getInstance(Landroid/content/Context;)Lcom/android/launcher/folder/recommend/SwitchManageHelper;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher/folder/recommend/SwitchManageHelper;->setAppStorePreEnable(Z)V

    goto :goto_49

    :cond_27
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.oplus.market.action.EXTERNAL_API_SERVICE"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_34
    iget-object p0, p0, Lcom/android/launcher/folder/download/ReportController;->mReportConnection:Lcom/android/launcher/folder/download/ReportController$mReportConnection$1;

    const/16 v1, 0x21

    invoke-virtual {v0, v2, p0, v1}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_3b
    .catch Ljava/lang/SecurityException; {:try_start_34 .. :try_end_3b} :catch_3c

    goto :goto_49

    :catch_3c
    move-exception p0

    const-string/jumbo v0, "startReportService: e = "

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "ReportController"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_49
    return-void
.end method

.method public unbindService()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher/folder/download/ReportController;->mContext:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_5

    goto :goto_18

    :cond_5
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_e

    goto :goto_18

    :cond_e
    sget-object v1, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v2, Landroidx/constraintlayout/motion/widget/a;

    invoke-direct {v2, p0, v0}, Landroidx/constraintlayout/motion/widget/a;-><init>(Lcom/android/launcher/folder/download/ReportController;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :goto_18
    return-void
.end method
