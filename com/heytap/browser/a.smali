.class public Lcom/heytap/browser/a;
.super Lcom/heytap/browser/ILauncherOverlayBrowserCallback$Stub;
.source ""

# interfaces
.implements Lp1/a;


# instance fields
.field public a:Lp1/c$a;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/heytap/browser/ILauncherOverlayBrowserCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public isPreloaded(I)V
    .registers 4

    const-string v0, "OverlayBrowserCallback isPreloaded status: "

    const-string v1, "OverlayBrowserCallback"

    invoke-static {v0, p1, v1}, Lcom/android/common/util/h;->a(Ljava/lang/String;ILjava/lang/String;)V

    iget-object p0, p0, Lcom/heytap/browser/a;->a:Lp1/c$a;

    iget-object p0, p0, Lp1/c$a;->a:Landroid/os/Handler;

    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onWindowEndScroll(I)V
    .registers 3

    iget-object p0, p0, Lcom/heytap/browser/a;->a:Lp1/c$a;

    iget-object p0, p0, Lp1/c$a;->a:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x7

    invoke-static {p0, v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public overlayScrollChanged(F)V
    .registers 4

    iget-object p0, p0, Lcom/heytap/browser/a;->a:Lp1/c$a;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_26

    invoke-static {p1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_26

    :cond_12
    iget-object v0, p0, Lp1/c$a;->a:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lp1/c$a;->a:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_41

    :cond_26
    :goto_26
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "overlayScrollChanged, progress:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " is NaN or Infinite"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BrowserLauncherClient-OverlayCallbackProxy"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_41
    return-void
.end method

.method public overlayStatusChanged(I)V
    .registers 4

    const-string v0, "overlayStatusChanged status: "

    const-string v1, "OverlayBrowserCallback"

    invoke-static {v0, p1, v1}, Lcom/android/common/util/h;->a(Ljava/lang/String;ILjava/lang/String;)V

    iget-object p0, p0, Lcom/heytap/browser/a;->a:Lp1/c$a;

    iget-object p0, p0, Lp1/c$a;->a:Landroid/os/Handler;

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public updateNewsParams(Landroid/os/Bundle;)V
    .registers 4

    const-string v0, "OverlayBrowserCallback"

    const-string v1, "OverlayBrowserCallback updateNewsParams"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/heytap/browser/a;->a:Lp1/c$a;

    iget-object p0, p0, Lp1/c$a;->a:Landroid/os/Handler;

    const/4 v0, 0x6

    invoke-static {p0, v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
