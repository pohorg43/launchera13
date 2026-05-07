.class public final Lcom/oplus/remoteanim/LauncherRemoteProxyHelper$LRPBinder;
.super Lcom/oplus/remoteanim/proxyinterface/ILauncherRemoteProxy$Stub;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/remoteanim/LauncherRemoteProxyHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LRPBinder"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/remoteanim/proxyinterface/ILauncherRemoteProxy$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public clearRemoteAnimationViewInfo(Lcom/oplus/remoteanim/data/RemoteAnimationViewInfo;)V
    .registers 3
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    const-string p0, "clearRemoteAnimationViewInfo: info = "

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "LauncherRemoteProxyHelper"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/oplus/remoteanim/RemoteAnimationUtils;->clearRemoteAnimationViewInfo(Lcom/oplus/remoteanim/data/RemoteAnimationViewInfo;)V

    return-void
.end method

.method public notifyTransaction(Landroid/os/Bundle;)V
    .registers 3
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    const-string p0, "notifyTransaction: transaction = "

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "LauncherRemoteProxyHelper"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/oplus/remoteanim/RemoteAnimationUtils;->notifyTransaction(Landroid/os/Bundle;)V

    return-void
.end method

.method public sendRemoteAnimationViewInfo(Lcom/oplus/remoteanim/data/RemoteAnimationViewInfo;)V
    .registers 4
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    const-string p0, "sendRemoteAnimationViewInfo: info = "

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "LauncherRemoteProxyHelper"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p1, p0, v0, v1}, Lcom/oplus/remoteanim/RemoteAnimationUtils;->setRemoteAnimationViewInfo$default(Lcom/oplus/remoteanim/data/RemoteAnimationViewInfo;ZILjava/lang/Object;)V

    return-void
.end method
