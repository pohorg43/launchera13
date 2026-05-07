.class Lcom/oplus/settingslib/service/RecoveryService$RecoveryTask;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/settingslib/service/RecoveryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RecoveryTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Landroid/os/Messenger;",
        "Landroid/os/Messenger;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMessenger:Landroid/os/Messenger;

.field public final synthetic this$0:Lcom/oplus/settingslib/service/RecoveryService;


# direct methods
.method public constructor <init>(Lcom/oplus/settingslib/service/RecoveryService;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/oplus/settingslib/service/RecoveryService$RecoveryTask;->this$0:Lcom/oplus/settingslib/service/RecoveryService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/oplus/settingslib/service/RecoveryService$RecoveryTask;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public varargs doInBackground([Landroid/os/Messenger;)Ljava/lang/Boolean;
    .registers 3

    const/4 v0, 0x0

    aget-object p1, p1, v0

    iput-object p1, p0, Lcom/oplus/settingslib/service/RecoveryService$RecoveryTask;->mMessenger:Landroid/os/Messenger;

    iget-object p1, p0, Lcom/oplus/settingslib/service/RecoveryService$RecoveryTask;->this$0:Lcom/oplus/settingslib/service/RecoveryService;

    iget-object p0, p0, Lcom/oplus/settingslib/service/RecoveryService$RecoveryTask;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/oplus/settingslib/service/RecoveryService;->doRecoveryOperation(Landroid/content/Context;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, [Landroid/os/Messenger;

    invoke-virtual {p0, p1}, Lcom/oplus/settingslib/service/RecoveryService$RecoveryTask;->doInBackground([Landroid/os/Messenger;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public onPostExecute(Ljava/lang/Boolean;)V
    .registers 3

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_8

    const/4 p1, 0x2

    goto :goto_9

    :cond_8
    const/4 p1, 0x3

    :goto_9
    const/4 v0, 0x0

    invoke-static {v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    :try_start_e
    iget-object p0, p0, Lcom/oplus/settingslib/service/RecoveryService$RecoveryTask;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {p0, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_13} :catch_14

    goto :goto_18

    :catch_14
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_18
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/oplus/settingslib/service/RecoveryService$RecoveryTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
