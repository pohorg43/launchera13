.class Lcom/oplus/backup/sdk/component/BRPluginService$WorkHandler;
.super Lcom/oplus/backup/sdk/common/utils/StaticHandler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/backup/sdk/component/BRPluginService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WorkHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oplus/backup/sdk/common/utils/StaticHandler<",
        "Lcom/oplus/backup/sdk/component/BRPluginService;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/oplus/backup/sdk/component/BRPluginService;Landroid/os/Looper;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/oplus/backup/sdk/common/utils/StaticHandler;-><init>(Ljava/lang/Object;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;Lcom/oplus/backup/sdk/component/BRPluginService;)V
    .registers 14

    iget-object p0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    const-string v0, "BRPluginService"

    if-eqz p0, :cond_174

    invoke-static {p2, p0}, Lcom/oplus/backup/sdk/component/BRPluginService;->access$002(Lcom/oplus/backup/sdk/component/BRPluginService;Landroid/os/Messenger;)Landroid/os/Messenger;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v2, 0x0

    if-eqz v1, :cond_1d

    check-cast v1, Landroid/os/Bundle;

    const-string v2, "args"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "method"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1e

    :cond_1d
    move-object v1, v2

    :goto_1e
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "WorkHandler handleMessage "

    invoke-static {v4}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", msg.arg1:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", method:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/oplus/backup/sdk/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/oplus/backup/sdk/component/BRPluginService;->access$100(Lcom/oplus/backup/sdk/component/BRPluginService;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2}, Lcom/oplus/backup/sdk/component/BRPluginService;->access$200(Lcom/oplus/backup/sdk/component/BRPluginService;)Ljava/lang/Class;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    const/4 v7, 0x0

    const-string v8, "config"

    const/4 v9, 0x1

    const-string v10, "return"

    if-eqz v6, :cond_14a

    if-eq v6, v9, :cond_13e

    const/4 v1, 0x2

    if-eq v6, v1, :cond_133

    packed-switch v6, :pswitch_data_17a

    goto/16 :goto_16a

    :pswitch_6b  #0xd
    if-eqz v4, :cond_16a

    const-string v0, "onPreview"

    invoke-static {p2, v4, v5, v0, v2}, Lcom/oplus/backup/sdk/component/BRPluginService;->access$500(Lcom/oplus/backup/sdk/component/BRPluginService;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    invoke-virtual {v3, v10, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_16a

    :pswitch_7a  #0xc
    if-eqz v4, :cond_16a

    const-string v0, "onDestroy"

    invoke-static {p2, v4, v5, v0, v2}, Lcom/oplus/backup/sdk/component/BRPluginService;->access$500(Lcom/oplus/backup/sdk/component/BRPluginService;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    invoke-virtual {v3, v10, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_16a

    :pswitch_89  #0xb
    invoke-static {p2}, Lcom/oplus/backup/sdk/component/BRPluginService;->access$700(Lcom/oplus/backup/sdk/component/BRPluginService;)Landroid/os/HandlerThread;

    move-result-object v1

    if-eqz v1, :cond_a3

    const-string v6, "before onCancel, Thread state = "

    invoke-static {v6}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getState()Ljava/lang/Thread$State;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/backup/sdk/common/utils/BRLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a3
    if-eqz v4, :cond_aa

    const-string v1, "onCancel"

    invoke-static {p2, v4, v5, v1, v2}, Lcom/oplus/backup/sdk/component/BRPluginService;->access$500(Lcom/oplus/backup/sdk/component/BRPluginService;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/Object;

    :cond_aa
    invoke-static {p2}, Lcom/oplus/backup/sdk/component/BRPluginService;->access$700(Lcom/oplus/backup/sdk/component/BRPluginService;)Landroid/os/HandlerThread;

    move-result-object v1

    if-eqz v1, :cond_16a

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getState()Ljava/lang/Thread$State;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "after onCancel, Thread state = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/oplus/backup/sdk/common/utils/BRLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Ljava/lang/Thread$State;->BLOCKED:Ljava/lang/Thread$State;

    if-eq v4, v2, :cond_d0

    sget-object v4, Ljava/lang/Thread$State;->WAITING:Ljava/lang/Thread$State;

    if-ne v4, v2, :cond_16a

    :cond_d0
    const-string v2, "getStackTrace:\n"

    invoke-static {v2}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    invoke-static {v1}, Lcom/oplus/backup/sdk/component/BRPluginService;->access$800([Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/backup/sdk/common/utils/BRLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_16a

    :pswitch_ea  #0xa
    if-eqz v4, :cond_16a

    const-string v0, "onContinue"

    invoke-static {p2, v4, v5, v0, v2}, Lcom/oplus/backup/sdk/component/BRPluginService;->access$500(Lcom/oplus/backup/sdk/component/BRPluginService;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/Object;

    goto/16 :goto_16a

    :pswitch_f3  #0x9
    if-eqz v4, :cond_16a

    const-string v0, "onPause"

    invoke-static {p2, v4, v5, v0, v2}, Lcom/oplus/backup/sdk/component/BRPluginService;->access$500(Lcom/oplus/backup/sdk/component/BRPluginService;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/Object;

    goto/16 :goto_16a

    :pswitch_fc  #0x8
    if-eqz v4, :cond_16a

    const-string v0, "onRestore"

    invoke-static {p2, v4, v5, v0, v2}, Lcom/oplus/backup/sdk/component/BRPluginService;->access$500(Lcom/oplus/backup/sdk/component/BRPluginService;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/Object;

    goto :goto_16a

    :pswitch_104  #0x7
    if-eqz v4, :cond_16a

    const-string v0, "onBackup"

    invoke-static {p2, v4, v5, v0, v2}, Lcom/oplus/backup/sdk/component/BRPluginService;->access$500(Lcom/oplus/backup/sdk/component/BRPluginService;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/Object;

    goto :goto_16a

    :pswitch_10c  #0x6
    const-string v1, ""

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v6, Lcom/oplus/backup/sdk/common/host/BREngineConfig;

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    invoke-direct {v6, v8}, Lcom/oplus/backup/sdk/common/host/BREngineConfig;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/backup/sdk/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_16a

    const-string v0, "onPrepare"

    invoke-static {p2, v4, v5, v0, v2}, Lcom/oplus/backup/sdk/component/BRPluginService;->access$500(Lcom/oplus/backup/sdk/component/BRPluginService;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    invoke-virtual {v3, v10, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_16a

    :cond_133
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_139

    move v0, v9

    goto :goto_13a

    :cond_139
    move v0, v7

    :goto_13a
    invoke-static {p2, v2, v0}, Lcom/oplus/backup/sdk/component/BRPluginService;->access$600(Lcom/oplus/backup/sdk/component/BRPluginService;Landroid/os/Bundle;Z)V

    goto :goto_16a

    :cond_13e
    if-eqz v4, :cond_16a

    invoke-static {p2, v4, v5, v1, v2}, Lcom/oplus/backup/sdk/component/BRPluginService;->access$500(Lcom/oplus/backup/sdk/component/BRPluginService;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    invoke-virtual {v3, v10, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_16a

    :cond_14a
    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_163

    new-instance v1, Lcom/oplus/backup/sdk/common/host/BREngineConfig;

    invoke-direct {v1, v0}, Lcom/oplus/backup/sdk/common/host/BREngineConfig;-><init>(Landroid/os/Bundle;)V

    invoke-static {p2, v1}, Lcom/oplus/backup/sdk/component/BRPluginService;->access$302(Lcom/oplus/backup/sdk/component/BRPluginService;Lcom/oplus/backup/sdk/common/host/BREngineConfig;)Lcom/oplus/backup/sdk/common/host/BREngineConfig;

    invoke-static {p2}, Lcom/oplus/backup/sdk/component/BRPluginService;->access$300(Lcom/oplus/backup/sdk/component/BRPluginService;)Lcom/oplus/backup/sdk/common/host/BREngineConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/backup/sdk/common/host/BREngineConfig;->getLogLevel()I

    move-result v0

    invoke-static {v0}, Lcom/oplus/backup/sdk/common/utils/BRLog;->setLogLevel(I)V

    :cond_163
    invoke-static {p2, v2}, Lcom/oplus/backup/sdk/component/BRPluginService;->access$400(Lcom/oplus/backup/sdk/component/BRPluginService;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v3, v10, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_16a
    :goto_16a
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v9, :cond_173

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-static {p2, p0, p1, v3, v7}, Lcom/oplus/backup/sdk/component/BRPluginService;->access$900(Lcom/oplus/backup/sdk/component/BRPluginService;Landroid/os/Messenger;ILandroid/os/Bundle;Z)V

    :cond_173
    return-void

    :cond_174
    const-string p0, "handleMessage, messenger is null, return"

    invoke-static {v0, p0}, Lcom/oplus/backup/sdk/common/utils/BRLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_data_17a
    .packed-switch 0x6
        :pswitch_10c  #00000006
        :pswitch_104  #00000007
        :pswitch_fc  #00000008
        :pswitch_f3  #00000009
        :pswitch_ea  #0000000a
        :pswitch_89  #0000000b
        :pswitch_7a  #0000000c
        :pswitch_6b  #0000000d
    .end packed-switch
.end method

.method public bridge synthetic handleMessage(Landroid/os/Message;Ljava/lang/Object;)V
    .registers 3

    check-cast p2, Lcom/oplus/backup/sdk/component/BRPluginService;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/backup/sdk/component/BRPluginService$WorkHandler;->handleMessage(Landroid/os/Message;Lcom/oplus/backup/sdk/component/BRPluginService;)V

    return-void
.end method
