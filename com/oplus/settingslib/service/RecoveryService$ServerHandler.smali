.class Lcom/oplus/settingslib/service/RecoveryService$ServerHandler;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/settingslib/service/RecoveryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ServerHandler"
.end annotation


# instance fields
.field private mTask:Lcom/oplus/settingslib/service/RecoveryService$RecoveryTask;


# direct methods
.method public constructor <init>(Lcom/oplus/settingslib/service/RecoveryService$RecoveryTask;)V
    .registers 2

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/oplus/settingslib/service/RecoveryService$ServerHandler;->mTask:Lcom/oplus/settingslib/service/RecoveryService$RecoveryTask;

    return-void
.end method

.method private doInbackground(Landroid/os/Message;)V
    .registers 4

    iget-object p0, p0, Lcom/oplus/settingslib/service/RecoveryService$ServerHandler;->mTask:Lcom/oplus/settingslib/service/RecoveryService$RecoveryTask;

    if-eqz p0, :cond_14

    const/4 v0, 0x1

    :try_start_5
    new-array v0, v0, [Landroid/os/Messenger;

    const/4 v1, 0x0

    iget-object p1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_f
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_f} :catch_10

    goto :goto_14

    :catch_10
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :cond_14
    :goto_14
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_9

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_c

    :cond_9
    invoke-direct {p0, p1}, Lcom/oplus/settingslib/service/RecoveryService$ServerHandler;->doInbackground(Landroid/os/Message;)V

    :goto_c
    return-void
.end method
