.class public Lcom/heytap/cloud/sdk/AgentService$a;
.super Lu1/b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/cloud/sdk/AgentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu1/b<",
        "Lcom/heytap/cloud/sdk/AgentService;",
        ">;"
    }
.end annotation


# instance fields
.field public b:Landroid/os/Handler;

.field public c:Landroid/os/Handler;

.field public d:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/heytap/cloud/sdk/AgentService;Landroid/os/Looper;Landroid/os/Handler;Landroid/os/Handler;Landroid/os/Handler;)V
    .registers 6

    invoke-direct {p0, p1, p2}, Lu1/b;-><init>(Ljava/lang/Object;Landroid/os/Looper;)V

    iput-object p3, p0, Lcom/heytap/cloud/sdk/AgentService$a;->b:Landroid/os/Handler;

    iput-object p4, p0, Lcom/heytap/cloud/sdk/AgentService$a;->c:Landroid/os/Handler;

    iput-object p5, p0, Lcom/heytap/cloud/sdk/AgentService$a;->d:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Message;Ljava/lang/Object;)V
    .registers 6

    check-cast p2, Lcom/heytap/cloud/sdk/AgentService;

    const-string v0, "MessengerHandler handleMessage "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", msg.arg1:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AgentService"

    invoke-static {v1, v0}, Lt1/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->sendingUid:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_31

    invoke-static {p2, v0}, Lu1/c;->a(Landroid/content/Context;I)Z

    move-result p2

    if-nez p2, :cond_31

    const-string p0, "cloudServiceCall: false"

    invoke-static {v1, p0}, Lt1/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5e

    :cond_31
    const-string p2, "cloudServiceCall: true"

    invoke-static {v1, p2}, Lt1/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget p2, p1, Landroid/os/Message;->arg1:I

    if-eqz p2, :cond_55

    const/4 v0, 0x1

    if-eq p2, v0, :cond_4b

    const/4 v0, 0x2

    if-eq p2, v0, :cond_41

    goto :goto_5e

    :cond_41
    iget-object p0, p0, Lcom/heytap/cloud/sdk/AgentService$a;->d:Landroid/os/Handler;

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_5e

    :cond_4b
    iget-object p0, p0, Lcom/heytap/cloud/sdk/AgentService$a;->c:Landroid/os/Handler;

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_5e

    :cond_55
    iget-object p0, p0, Lcom/heytap/cloud/sdk/AgentService$a;->b:Landroid/os/Handler;

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_5e
    return-void
.end method
