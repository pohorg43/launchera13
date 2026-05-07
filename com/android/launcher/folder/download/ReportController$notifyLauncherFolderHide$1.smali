.class final Lcom/android/launcher/folder/download/ReportController$notifyLauncherFolderHide$1;
.super Ld3/i;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Ld3/e;
    c = "com.android.launcher.folder.download.ReportController$notifyLauncherFolderHide$1"
    f = "ReportController.kt"
    l = {}
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/folder/download/ReportController;->notifyLauncherFolderHide()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ld3/i;",
        "Lkotlin/jvm/functions/Function2<",
        "Lq3/f0;",
        "Lb3/d<",
        "-",
        "Ly2/p;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public label:I

.field public final synthetic this$0:Lcom/android/launcher/folder/download/ReportController;


# direct methods
.method public constructor <init>(Lcom/android/launcher/folder/download/ReportController;Lb3/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher/folder/download/ReportController;",
            "Lb3/d<",
            "-",
            "Lcom/android/launcher/folder/download/ReportController$notifyLauncherFolderHide$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/launcher/folder/download/ReportController$notifyLauncherFolderHide$1;->this$0:Lcom/android/launcher/folder/download/ReportController;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ld3/i;-><init>(ILb3/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lb3/d;)Lb3/d;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lb3/d<",
            "*>;)",
            "Lb3/d<",
            "Ly2/p;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/android/launcher/folder/download/ReportController$notifyLauncherFolderHide$1;

    iget-object p0, p0, Lcom/android/launcher/folder/download/ReportController$notifyLauncherFolderHide$1;->this$0:Lcom/android/launcher/folder/download/ReportController;

    invoke-direct {p1, p0, p2}, Lcom/android/launcher/folder/download/ReportController$notifyLauncherFolderHide$1;-><init>(Lcom/android/launcher/folder/download/ReportController;Lb3/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lq3/f0;

    check-cast p2, Lb3/d;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/folder/download/ReportController$notifyLauncherFolderHide$1;->invoke(Lq3/f0;Lb3/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lq3/f0;Lb3/d;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq3/f0;",
            "Lb3/d<",
            "-",
            "Ly2/p;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/folder/download/ReportController$notifyLauncherFolderHide$1;->create(Ljava/lang/Object;Lb3/d;)Lb3/d;

    move-result-object p0

    check-cast p0, Lcom/android/launcher/folder/download/ReportController$notifyLauncherFolderHide$1;

    sget-object p1, Ly2/p;->a:Ly2/p;

    invoke-virtual {p0, p1}, Lcom/android/launcher/folder/download/ReportController$notifyLauncherFolderHide$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    const-string v0, ""

    const-string v1, "ReportController"

    iget v2, p0, Lcom/android/launcher/folder/download/ReportController$notifyLauncherFolderHide$1;->label:I

    if-nez v2, :cond_ac

    invoke-static {p1}, Lq/d;->p(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/launcher/folder/download/ReportController$notifyLauncherFolderHide$1;->this$0:Lcom/android/launcher/folder/download/ReportController;

    invoke-static {p1}, Lcom/android/launcher/folder/download/ReportController;->access$getMReportService$p(Lcom/android/launcher/folder/download/ReportController;)Lcom/oplus/market/aidl/IApiEngine;

    move-result-object p1

    if-eqz p1, :cond_a9

    iget-object p1, p0, Lcom/android/launcher/folder/download/ReportController$notifyLauncherFolderHide$1;->this$0:Lcom/android/launcher/folder/download/ReportController;

    invoke-static {p1}, Lcom/android/launcher/folder/download/ReportController;->access$getMReportService$p(Lcom/android/launcher/folder/download/ReportController;)Lcom/oplus/market/aidl/IApiEngine;

    move-result-object p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_1f

    :cond_1d
    :goto_1d
    move v2, v3

    goto :goto_2c

    :cond_1f
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_26

    goto :goto_1d

    :cond_26
    invoke-interface {p1}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result p1

    if-ne p1, v2, :cond_1d

    :goto_2c
    if-eqz v2, :cond_a9

    const/4 p1, 0x0

    :try_start_2f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notifyLauncherFolderHide: mBizType = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/launcher/folder/download/ReportController$notifyLauncherFolderHide$1;->this$0:Lcom/android/launcher/folder/download/ReportController;

    invoke-static {v4}, Lcom/android/launcher/folder/download/ReportController;->access$getMBizType$p(Lcom/android/launcher/folder/download/ReportController;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mClickReqId = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/launcher/folder/download/ReportController$notifyLauncherFolderHide$1;->this$0:Lcom/android/launcher/folder/download/ReportController;

    invoke-static {v4}, Lcom/android/launcher/folder/download/ReportController;->access$getMClickReqId$p(Lcom/android/launcher/folder/download/ReportController;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/launcher/folder/download/ReportController$notifyLauncherFolderHide$1;->this$0:Lcom/android/launcher/folder/download/ReportController;

    invoke-static {v2}, Lcom/android/launcher/folder/download/ReportController;->access$getMBizType$p(Lcom/android/launcher/folder/download/ReportController;)I

    move-result v2

    if-eqz v2, :cond_a9

    iget-object v2, p0, Lcom/android/launcher/folder/download/ReportController$notifyLauncherFolderHide$1;->this$0:Lcom/android/launcher/folder/download/ReportController;

    invoke-static {v2}, Lcom/android/launcher/folder/download/ReportController;->access$getMClickReqId$p(Lcom/android/launcher/folder/download/ReportController;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a9

    iget-object v2, p0, Lcom/android/launcher/folder/download/ReportController$notifyLauncherFolderHide$1;->this$0:Lcom/android/launcher/folder/download/ReportController;

    invoke-static {v2}, Lcom/android/launcher/folder/download/ReportController;->access$getMReportService$p(Lcom/android/launcher/folder/download/ReportController;)Lcom/oplus/market/aidl/IApiEngine;

    move-result-object v2

    if-nez v2, :cond_75

    goto :goto_8e

    :cond_75
    iget-object v4, p0, Lcom/android/launcher/folder/download/ReportController$notifyLauncherFolderHide$1;->this$0:Lcom/android/launcher/folder/download/ReportController;

    invoke-static {v4}, Lcom/android/launcher/folder/download/ReportController;->access$getMCallMarket$p(Lcom/android/launcher/folder/download/ReportController;)Lcom/android/launcher/folder/recommend/market/CallMarketImpl;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher/folder/download/ReportController$notifyLauncherFolderHide$1;->this$0:Lcom/android/launcher/folder/download/ReportController;

    invoke-static {v5}, Lcom/android/launcher/folder/download/ReportController;->access$getMBizType$p(Lcom/android/launcher/folder/download/ReportController;)I

    move-result v5

    iget-object v6, p0, Lcom/android/launcher/folder/download/ReportController$notifyLauncherFolderHide$1;->this$0:Lcom/android/launcher/folder/download/ReportController;

    invoke-static {v6}, Lcom/android/launcher/folder/download/ReportController;->access$getMClickReqId$p(Lcom/android/launcher/folder/download/ReportController;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/launcher/folder/recommend/market/CallMarketImpl;->getNotifyFolderHideUri(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4, p1}, Lcom/oplus/market/aidl/IApiEngine;->request(Ljava/lang/String;Lcom/oplus/market/aidl/IApiResponse;)V

    :goto_8e
    iget-object v2, p0, Lcom/android/launcher/folder/download/ReportController$notifyLauncherFolderHide$1;->this$0:Lcom/android/launcher/folder/download/ReportController;

    invoke-static {v2, v3}, Lcom/android/launcher/folder/download/ReportController;->access$setMBizType$p(Lcom/android/launcher/folder/download/ReportController;I)V

    iget-object v2, p0, Lcom/android/launcher/folder/download/ReportController$notifyLauncherFolderHide$1;->this$0:Lcom/android/launcher/folder/download/ReportController;

    invoke-static {v2, v0}, Lcom/android/launcher/folder/download/ReportController;->access$setMClickReqId$p(Lcom/android/launcher/folder/download/ReportController;Ljava/lang/String;)V
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_98} :catch_99

    goto :goto_a9

    :catch_99
    move-exception v0

    iget-object p0, p0, Lcom/android/launcher/folder/download/ReportController$notifyLauncherFolderHide$1;->this$0:Lcom/android/launcher/folder/download/ReportController;

    invoke-static {p0, p1}, Lcom/android/launcher/folder/download/ReportController;->access$setMReportService$p(Lcom/android/launcher/folder/download/ReportController;Lcom/oplus/market/aidl/IApiEngine;)V

    const-string/jumbo p0, "notifyLauncherFolderHide: "

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a9
    :goto_a9
    sget-object p0, Ly2/p;->a:Ly2/p;

    return-object p0

    :cond_ac
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
