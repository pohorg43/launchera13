.class public abstract Lcom/heytap/cloud/sdk/PushAgentService;
.super Landroid/app/Service;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heytap/cloud/sdk/PushAgentService$a;
    }
.end annotation


# instance fields
.field public a:Landroid/os/Handler;

.field public b:Landroid/os/HandlerThread;

.field public c:Landroid/os/IBinder;

.field public d:Landroid/os/Messenger;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;)V
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    invoke-static {p0}, Lu1/c;->b(Landroid/content/Context;)Z

    move-result p1

    const-string v0, "PushAgentService"

    if-nez p1, :cond_f

    const-string p0, "CloudService Not Legal"

    invoke-static {v0, p0}, Lt1/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_f
    iget-object p1, p0, Lcom/heytap/cloud/sdk/PushAgentService;->c:Landroid/os/IBinder;

    if-nez p1, :cond_20

    const-string p1, "onBind"

    invoke-static {v0, p1}, Lt1/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/heytap/cloud/sdk/PushAgentService;->d:Landroid/os/Messenger;

    invoke-virtual {p1}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object p1

    iput-object p1, p0, Lcom/heytap/cloud/sdk/PushAgentService;->c:Landroid/os/IBinder;

    :cond_20
    iget-object p0, p0, Lcom/heytap/cloud/sdk/PushAgentService;->c:Landroid/os/IBinder;

    return-object p0
.end method

.method public onCreate()V
    .registers 3

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-static {p0}, Lu1/c;->b(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "PushAgentService"

    if-nez v0, :cond_11

    const-string p0, "CloudService Not Legal"

    invoke-static {v1, p0}, Lt1/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_11
    const-string v0, "onCreate"

    invoke-static {v1, v0}, Lt1/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "cloud_async_thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/heytap/cloud/sdk/PushAgentService;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/heytap/cloud/sdk/PushAgentService$a;

    invoke-virtual {p0}, Landroid/app/Service;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/heytap/cloud/sdk/PushAgentService$a;-><init>(Lcom/heytap/cloud/sdk/PushAgentService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/heytap/cloud/sdk/PushAgentService;->a:Landroid/os/Handler;

    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/heytap/cloud/sdk/PushAgentService;->a:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/heytap/cloud/sdk/PushAgentService;->d:Landroid/os/Messenger;

    return-void
.end method

.method public onDestroy()V
    .registers 3

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    invoke-static {p0}, Lu1/c;->b(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "PushAgentService"

    if-nez v0, :cond_11

    const-string p0, "CloudService Not Legal"

    invoke-static {v1, p0}, Lt1/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_11
    const-string v0, "onDestroy"

    invoke-static {v1, v0}, Lt1/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/heytap/cloud/sdk/PushAgentService;->b:Landroid/os/HandlerThread;

    if-eqz p0, :cond_1d

    invoke-virtual {p0}, Landroid/os/HandlerThread;->quitSafely()Z

    :cond_1d
    return-void
.end method
