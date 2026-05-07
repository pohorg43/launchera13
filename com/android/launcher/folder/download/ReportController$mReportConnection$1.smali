.class public final Lcom/android/launcher/folder/download/ReportController$mReportConnection$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/folder/download/ReportController;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/folder/download/ReportController;


# direct methods
.method public constructor <init>(Lcom/android/launcher/folder/download/ReportController;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/folder/download/ReportController$mReportConnection$1;->this$0:Lcom/android/launcher/folder/download/ReportController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher/folder/download/ReportController;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher/folder/download/ReportController$mReportConnection$1;->onServiceConnected$lambda-1(Lcom/android/launcher/folder/download/ReportController;)V

    return-void
.end method

.method private static final onServiceConnected$lambda-1(Lcom/android/launcher/folder/download/ReportController;)V
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/launcher/folder/download/ReportController;->access$getMWaitToReportTaskList$p(Lcom/android/launcher/folder/download/ReportController;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_e

    :cond_1e
    invoke-static {p0}, Lcom/android/launcher/folder/download/ReportController;->access$getMWaitToReportTaskList$p(Lcom/android/launcher/folder/download/ReportController;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    return-void
.end method


# virtual methods
.method public onBindingDied(Landroid/content/ComponentName;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/folder/download/ReportController$mReportConnection$1;->this$0:Lcom/android/launcher/folder/download/ReportController;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/launcher/folder/download/ReportController;->access$setMReportService$p(Lcom/android/launcher/folder/download/ReportController;Lcom/oplus/market/aidl/IApiEngine;)V

    sget-object p0, Lcom/android/launcher/folder/download/MarketServiceManager;->Companion:Lcom/android/launcher/folder/download/MarketServiceManager$Companion;

    invoke-virtual {p0}, Lcom/android/launcher/folder/download/MarketServiceManager$Companion;->getInstance()Lcom/android/launcher/folder/download/MarketServiceManager;

    move-result-object p0

    sget-object p1, Lcom/android/launcher/folder/download/ReportController;->Companion:Lcom/android/launcher/folder/download/ReportController$Companion;

    invoke-virtual {p1}, Lcom/android/launcher/folder/download/ReportController$Companion;->getSInstance()Lcom/android/launcher/folder/download/ReportController;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/launcher/folder/download/MarketServiceManager;->removeServiceClient(Lcom/android/launcher/folder/download/MarketServiceManager$IMarketServiceClient;)V

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 3

    iget-object p1, p0, Lcom/android/launcher/folder/download/ReportController$mReportConnection$1;->this$0:Lcom/android/launcher/folder/download/ReportController;

    invoke-static {p2}, Lcom/oplus/market/aidl/IApiEngine$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/market/aidl/IApiEngine;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/launcher/folder/download/ReportController;->access$setMReportService$p(Lcom/android/launcher/folder/download/ReportController;Lcom/oplus/market/aidl/IApiEngine;)V

    sget-object p1, Lcom/android/launcher/folder/download/MarketServiceManager;->Companion:Lcom/android/launcher/folder/download/MarketServiceManager$Companion;

    invoke-virtual {p1}, Lcom/android/launcher/folder/download/MarketServiceManager$Companion;->getInstance()Lcom/android/launcher/folder/download/MarketServiceManager;

    move-result-object p1

    sget-object p2, Lcom/android/launcher/folder/download/ReportController;->Companion:Lcom/android/launcher/folder/download/ReportController$Companion;

    invoke-virtual {p2}, Lcom/android/launcher/folder/download/ReportController$Companion;->getSInstance()Lcom/android/launcher/folder/download/ReportController;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/launcher/folder/download/MarketServiceManager;->addServiceClient(Lcom/android/launcher/folder/download/MarketServiceManager$IMarketServiceClient;)V

    sget-object p1, Lcom/android/launcher3/util/Executors;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object p0, p0, Lcom/android/launcher/folder/download/ReportController$mReportConnection$1;->this$0:Lcom/android/launcher/folder/download/ReportController;

    new-instance p2, Landroidx/constraintlayout/helper/widget/a;

    invoke-direct {p2, p0}, Landroidx/constraintlayout/helper/widget/a;-><init>(Lcom/android/launcher/folder/download/ReportController;)V

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/folder/download/ReportController$mReportConnection$1;->this$0:Lcom/android/launcher/folder/download/ReportController;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/launcher/folder/download/ReportController;->access$setMReportService$p(Lcom/android/launcher/folder/download/ReportController;Lcom/oplus/market/aidl/IApiEngine;)V

    sget-object p0, Lcom/android/launcher/folder/download/MarketServiceManager;->Companion:Lcom/android/launcher/folder/download/MarketServiceManager$Companion;

    invoke-virtual {p0}, Lcom/android/launcher/folder/download/MarketServiceManager$Companion;->getInstance()Lcom/android/launcher/folder/download/MarketServiceManager;

    move-result-object p0

    sget-object p1, Lcom/android/launcher/folder/download/ReportController;->Companion:Lcom/android/launcher/folder/download/ReportController$Companion;

    invoke-virtual {p1}, Lcom/android/launcher/folder/download/ReportController$Companion;->getSInstance()Lcom/android/launcher/folder/download/ReportController;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/launcher/folder/download/MarketServiceManager;->removeServiceClient(Lcom/android/launcher/folder/download/MarketServiceManager$IMarketServiceClient;)V

    return-void
.end method
