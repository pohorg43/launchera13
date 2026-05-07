.class public Lcom/heytap/cloud/sdk/AgentService$b;
.super Lu1/b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/cloud/sdk/AgentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu1/b<",
        "Lcom/heytap/cloud/sdk/AgentService;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/heytap/cloud/sdk/AgentService;Landroid/os/Looper;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lu1/b;-><init>(Ljava/lang/Object;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Message;Ljava/lang/Object;)V
    .registers 15

    check-cast p2, Lcom/heytap/cloud/sdk/AgentService;

    const-string p0, "method_key"

    const-string v0, "AgentService"

    :try_start_6
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-class v4, Lcom/heytap/cloud/sdk/AgentService$b;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v4, "ht_account"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    invoke-virtual {v3, p0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "KEY_METHOD_TIME_STAMP1 = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lt1/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_39

    move-object v2, v4

    check-cast v2, Lcom/heytap/cloud/sdk/account/Account;

    :cond_39
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleMessage() msg id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", msgType = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lt1/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget v6, p1, Landroid/os/Message;->what:I
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_60} :catch_1c7

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v9, "handle_msg_result"

    packed-switch v6, :pswitch_data_1d6

    packed-switch v6, :pswitch_data_200

    const-string/jumbo v10, "sync_module_name"

    const-string v11, ""

    packed-switch v6, :pswitch_data_210

    goto/16 :goto_192

    :pswitch_74  #0x12
    :try_start_74
    invoke-virtual {v4}, Landroid/os/Bundle;->clear()V

    invoke-static {p2, v2}, Lcom/heytap/cloud/sdk/AgentService;->access$100(Lcom/heytap/cloud/sdk/AgentService;Lcom/heytap/cloud/sdk/account/Account;)Landroid/os/Bundle;

    move-result-object v4

    goto/16 :goto_192

    :pswitch_7d  #0x11
    invoke-virtual {v4}, Landroid/os/Bundle;->clear()V

    invoke-static {p2, v2}, Lcom/heytap/cloud/sdk/AgentService;->access$000(Lcom/heytap/cloud/sdk/AgentService;Lcom/heytap/cloud/sdk/account/Account;)Landroid/os/Bundle;

    move-result-object v4

    goto/16 :goto_192

    :pswitch_86  #0x10
    invoke-virtual {p2, v2}, Lcom/heytap/cloud/sdk/AgentService;->onSmallBinaryFilesSyncEnd(Lcom/heytap/cloud/sdk/account/Account;)V

    goto/16 :goto_192

    :pswitch_8b  #0xf
    invoke-virtual {p2, v3, v2}, Lcom/heytap/cloud/sdk/AgentService;->processSmallBinaryFilesDownloadResult(Landroid/os/Bundle;Lcom/heytap/cloud/sdk/account/Account;)V

    goto/16 :goto_192

    :pswitch_90  #0xe
    invoke-virtual {v4}, Landroid/os/Bundle;->clear()V

    invoke-virtual {p2, v2}, Lcom/heytap/cloud/sdk/AgentService;->getSmallBinaryFilesDownloadRequestData(Lcom/heytap/cloud/sdk/account/Account;)Landroid/os/Bundle;

    move-result-object v4

    goto/16 :goto_192

    :pswitch_99  #0xd
    invoke-virtual {p2, v3, v2}, Lcom/heytap/cloud/sdk/AgentService;->processSmallBinaryFilesUploadResult(Landroid/os/Bundle;Lcom/heytap/cloud/sdk/account/Account;)V

    goto/16 :goto_192

    :pswitch_9e  #0xc
    invoke-virtual {v4}, Landroid/os/Bundle;->clear()V

    invoke-virtual {p2, v2}, Lcom/heytap/cloud/sdk/AgentService;->getSmallBinaryFilesUploadData(Lcom/heytap/cloud/sdk/account/Account;)Landroid/os/Bundle;

    move-result-object v4

    goto/16 :goto_192

    :pswitch_a7  #0xb
    invoke-virtual {p2, v2}, Lcom/heytap/cloud/sdk/AgentService;->onSmallBinaryFilesSyncStart(Lcom/heytap/cloud/sdk/account/Account;)V

    goto/16 :goto_192

    :pswitch_ac  #0xa
    const-string v6, "need_delete_data"

    invoke-virtual {v3, v6, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {p2, v3, v2}, Lcom/heytap/cloud/sdk/AgentService;->onAccountLogout(ZLcom/heytap/cloud/sdk/account/Account;)V

    goto/16 :goto_192

    :pswitch_b7  #0x9
    invoke-virtual {p2, v2}, Lcom/heytap/cloud/sdk/AgentService;->onAccountLogin(Lcom/heytap/cloud/sdk/account/Account;)V

    goto/16 :goto_192

    :pswitch_bc  #0x8
    invoke-virtual {p2, v3, v2}, Lcom/heytap/cloud/sdk/AgentService;->onMetaDataRecoveryEnd(Landroid/os/Bundle;Lcom/heytap/cloud/sdk/account/Account;)Z

    move-result v2

    invoke-virtual {v4}, Landroid/os/Bundle;->clear()V

    invoke-virtual {v4, v9, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_192

    :pswitch_c8  #0x7
    invoke-virtual {v4}, Landroid/os/Bundle;->clear()V

    invoke-virtual {p2, v3, v2}, Lcom/heytap/cloud/sdk/AgentService;->processRecoveryDataFromServer(Landroid/os/Bundle;Lcom/heytap/cloud/sdk/account/Account;)Landroid/os/Bundle;

    move-result-object v4

    goto/16 :goto_192

    :pswitch_d1  #0x6
    invoke-virtual {p2, v3, v2}, Lcom/heytap/cloud/sdk/AgentService;->onMetaDataRecoveryStart(Landroid/os/Bundle;Lcom/heytap/cloud/sdk/account/Account;)V

    goto/16 :goto_192

    :pswitch_d6  #0x5
    invoke-virtual {p2, v3, v2}, Lcom/heytap/cloud/sdk/AgentService;->onMetaDataBackupEnd(Landroid/os/Bundle;Lcom/heytap/cloud/sdk/account/Account;)V

    goto/16 :goto_192

    :pswitch_db  #0x4
    invoke-virtual {p2, v3, v2}, Lcom/heytap/cloud/sdk/AgentService;->processBackupResultFromServer(Landroid/os/Bundle;Lcom/heytap/cloud/sdk/account/Account;)V

    goto/16 :goto_192

    :pswitch_e0  #0x3
    invoke-virtual {v4}, Landroid/os/Bundle;->clear()V

    invoke-virtual {p2, v2}, Lcom/heytap/cloud/sdk/AgentService;->getDirtyData(Lcom/heytap/cloud/sdk/account/Account;)Landroid/os/Bundle;

    move-result-object v4

    goto/16 :goto_192

    :pswitch_e9  #0x2
    invoke-virtual {p2, v2}, Lcom/heytap/cloud/sdk/AgentService;->hasDirtyData(Lcom/heytap/cloud/sdk/account/Account;)Z

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hasDirtyData = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lt1/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/os/Bundle;->clear()V

    const-string v3, "has_dirty_data"

    invoke-virtual {v4, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_192

    :pswitch_10b  #0x1
    invoke-virtual {v4}, Landroid/os/Bundle;->clear()V

    invoke-virtual {p2, v2}, Lcom/heytap/cloud/sdk/AgentService;->getAllData(Lcom/heytap/cloud/sdk/account/Account;)Landroid/os/Bundle;

    move-result-object v4

    goto/16 :goto_192

    :pswitch_114  #0x0
    invoke-virtual {p2, v3, v2}, Lcom/heytap/cloud/sdk/AgentService;->onMetaDataBackupStart(Landroid/os/Bundle;Lcom/heytap/cloud/sdk/account/Account;)V

    goto/16 :goto_192

    :pswitch_119  #0x1e
    invoke-virtual {v4}, Landroid/os/Bundle;->clear()V

    invoke-static {p2, v4, v2}, Lcom/heytap/cloud/sdk/AgentService;->access$500(Lcom/heytap/cloud/sdk/AgentService;Landroid/os/Bundle;Lcom/heytap/cloud/sdk/account/Account;)V

    goto/16 :goto_192

    :pswitch_121  #0x1d
    invoke-virtual {v4}, Landroid/os/Bundle;->clear()V

    const-string v6, "key_boolean"

    invoke-static {p2, v3, v2}, Lcom/heytap/cloud/sdk/AgentService;->access$400(Lcom/heytap/cloud/sdk/AgentService;Landroid/os/Bundle;Lcom/heytap/cloud/sdk/account/Account;)Z

    move-result v2

    invoke-virtual {v4, v6, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_192

    :pswitch_12e  #0x1c
    invoke-virtual {v4}, Landroid/os/Bundle;->clear()V

    invoke-static {p2, v3, v2}, Lcom/heytap/cloud/sdk/AgentService;->access$300(Lcom/heytap/cloud/sdk/AgentService;Landroid/os/Bundle;Lcom/heytap/cloud/sdk/account/Account;)V

    goto :goto_192

    :pswitch_135  #0x1b
    invoke-virtual {v4}, Landroid/os/Bundle;->clear()V

    invoke-virtual {p2}, Lcom/heytap/cloud/sdk/AgentService;->isLocalDataClear()Z

    move-result v2

    const-string v3, "is_local_data_clear"

    invoke-virtual {v4, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_192

    :pswitch_142  #0x1a
    invoke-static {p2, v2}, Lcom/heytap/cloud/sdk/AgentService;->access$200(Lcom/heytap/cloud/sdk/AgentService;Lcom/heytap/cloud/sdk/account/Account;)Landroid/os/Bundle;

    move-result-object v4

    goto :goto_192

    :pswitch_147  #0x19
    invoke-virtual {p2, v2}, Lcom/heytap/cloud/sdk/AgentService;->cancel(Lcom/heytap/cloud/sdk/account/Account;)V

    goto :goto_192

    :pswitch_14b  #0x2b
    invoke-virtual {v4}, Landroid/os/Bundle;->clear()V

    invoke-virtual {v3, v10, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/heytap/cloud/sdk/AgentService;->getManifestConfig(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    goto :goto_192

    :pswitch_157  #0x2a
    invoke-virtual {v4}, Landroid/os/Bundle;->clear()V

    invoke-virtual {p2}, Lcom/heytap/cloud/sdk/AgentService;->getSupportModule()Landroid/os/Bundle;

    move-result-object v4

    goto :goto_192

    :pswitch_15f  #0x29
    invoke-virtual {v4}, Landroid/os/Bundle;->clear()V

    invoke-virtual {v3, v10, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v10, "key_sync_type"

    invoke-virtual {v3, v10, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {p2, v2, v6, v3}, Lcom/heytap/cloud/sdk/AgentService;->onGetSqence(Lcom/heytap/cloud/sdk/account/Account;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v4, v9, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v3, "sync_sequence"

    invoke-virtual {v4, v3, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_192

    :pswitch_17a  #0x28
    invoke-virtual {v4}, Landroid/os/Bundle;->clear()V

    const-string v6, "key_config"

    invoke-virtual {v3, v6, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Lcom/heytap/cloud/sdk/AgentService;->onConfigInfo(Lcom/heytap/cloud/sdk/account/Account;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v4, v9, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_192

    :pswitch_18b  #0x27
    invoke-virtual {v4}, Landroid/os/Bundle;->clear()V

    invoke-virtual {p2, v2, v3}, Lcom/heytap/cloud/sdk/AgentService;->getUrlAndVersion(Lcom/heytap/cloud/sdk/account/Account;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    :goto_192
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x32

    if-ge v2, v3, :cond_1d5

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-lt v2, v7, :cond_1d5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KEY_METHOD_TIME_STAMP2 = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lt1/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v4, :cond_1bc

    const-string v2, "returnAgr = null"

    invoke-static {v0, v2}, Lt1/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    :cond_1bc
    invoke-virtual {v4, p0, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget p0, p1, Landroid/os/Message;->what:I

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p2, v1, p0, v4, p1}, Lcom/heytap/cloud/sdk/AgentService;->returnMsg(Landroid/os/Messenger;ILandroid/os/Bundle;I)V
    :try_end_1c6
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_1c6} :catch_1c7

    goto :goto_1d5

    :catch_1c7
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "handleMessage Exception"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const-string p1, "Cloud.AgentService"

    const-string p2, "handleMessage"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1d5
    :goto_1d5
    return-void

    :pswitch_data_1d6
    .packed-switch 0x0
        :pswitch_114  #00000000
        :pswitch_10b  #00000001
        :pswitch_e9  #00000002
        :pswitch_e0  #00000003
        :pswitch_db  #00000004
        :pswitch_d6  #00000005
        :pswitch_d1  #00000006
        :pswitch_c8  #00000007
        :pswitch_bc  #00000008
        :pswitch_b7  #00000009
        :pswitch_ac  #0000000a
        :pswitch_a7  #0000000b
        :pswitch_9e  #0000000c
        :pswitch_99  #0000000d
        :pswitch_90  #0000000e
        :pswitch_8b  #0000000f
        :pswitch_86  #00000010
        :pswitch_7d  #00000011
        :pswitch_74  #00000012
    .end packed-switch

    :pswitch_data_200
    .packed-switch 0x19
        :pswitch_147  #00000019
        :pswitch_142  #0000001a
        :pswitch_135  #0000001b
        :pswitch_12e  #0000001c
        :pswitch_121  #0000001d
        :pswitch_119  #0000001e
    .end packed-switch

    :pswitch_data_210
    .packed-switch 0x27
        :pswitch_18b  #00000027
        :pswitch_17a  #00000028
        :pswitch_15f  #00000029
        :pswitch_157  #0000002a
        :pswitch_14b  #0000002b
    .end packed-switch
.end method
