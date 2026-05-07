.class public abstract Lcom/heytap/cloud/sdk/AgentService;
.super Landroid/app/Service;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heytap/cloud/sdk/AgentService$b;,
        Lcom/heytap/cloud/sdk/AgentService$a;
    }
.end annotation


# static fields
.field private static final DEFAULT_JSON_PARSE_BATCH_SIZE:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "AgentService"


# instance fields
.field public mAsyncThread:Landroid/os/HandlerThread;

.field private mBinder:Landroid/os/IBinder;

.field public mHandler:Landroid/os/Handler;

.field private mMessenger:Landroid/os/Messenger;

.field public mSyncFileThread:Landroid/os/HandlerThread;

.field public mSyncNotFileThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Lcom/heytap/cloud/sdk/AgentService;Lcom/heytap/cloud/sdk/account/Account;)Landroid/os/Bundle;
    .registers 2

    invoke-direct {p0, p1}, Lcom/heytap/cloud/sdk/AgentService;->getModuleMetaDataCount(Lcom/heytap/cloud/sdk/account/Account;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$100(Lcom/heytap/cloud/sdk/AgentService;Lcom/heytap/cloud/sdk/account/Account;)Landroid/os/Bundle;
    .registers 2

    invoke-direct {p0, p1}, Lcom/heytap/cloud/sdk/AgentService;->getModuleMetaDataVersion(Lcom/heytap/cloud/sdk/account/Account;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$200(Lcom/heytap/cloud/sdk/AgentService;Lcom/heytap/cloud/sdk/account/Account;)Landroid/os/Bundle;
    .registers 2

    invoke-direct {p0, p1}, Lcom/heytap/cloud/sdk/AgentService;->getModuleNotSyncMetaDataCount(Lcom/heytap/cloud/sdk/account/Account;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$300(Lcom/heytap/cloud/sdk/AgentService;Landroid/os/Bundle;Lcom/heytap/cloud/sdk/account/Account;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/heytap/cloud/sdk/AgentService;->onSyncSwitchStatusChange(Landroid/os/Bundle;Lcom/heytap/cloud/sdk/account/Account;)V

    return-void
.end method

.method public static synthetic access$400(Lcom/heytap/cloud/sdk/AgentService;Landroid/os/Bundle;Lcom/heytap/cloud/sdk/account/Account;)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/heytap/cloud/sdk/AgentService;->getAppAuthorizationStatus(Landroid/os/Bundle;Lcom/heytap/cloud/sdk/account/Account;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$500(Lcom/heytap/cloud/sdk/AgentService;Landroid/os/Bundle;Lcom/heytap/cloud/sdk/account/Account;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/heytap/cloud/sdk/AgentService;->isCanCloseSyncSwitch(Landroid/os/Bundle;Lcom/heytap/cloud/sdk/account/Account;)V

    return-void
.end method

.method private getAppAuthorizationStatus(Landroid/os/Bundle;Lcom/heytap/cloud/sdk/account/Account;)Z
    .registers 5

    const-string p2, "AgentService"

    const-string v0, "getAppAuthorizationStatus#"

    invoke-static {p2, v0}, Lt1/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_29

    const/4 v0, 0x0

    const-string v1, "key_boolean"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAppAuthorizationStatus# needShowGrantDialog = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lt1/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/heytap/cloud/sdk/AgentService;->getAppAuthorizationStatus(Z)Z

    move-result p0

    return p0

    :cond_29
    const-string p0, "getAppAuthorizationStatus# bundle is null."

    invoke-static {p2, p0}, Lt1/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method private getModuleMetaDataCount(Lcom/heytap/cloud/sdk/account/Account;)Landroid/os/Bundle;
    .registers 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, p1}, Lcom/heytap/cloud/sdk/AgentService;->getMetaDataCount(Lcom/heytap/cloud/sdk/account/Account;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "meta_data_count"

    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private getModuleMetaDataVersion(Lcom/heytap/cloud/sdk/account/Account;)Landroid/os/Bundle;
    .registers 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, p1}, Lcom/heytap/cloud/sdk/AgentService;->getMetaDataVersion(Lcom/heytap/cloud/sdk/account/Account;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "module_meta_data_version"

    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private getModuleNotSyncMetaDataCount(Lcom/heytap/cloud/sdk/account/Account;)Landroid/os/Bundle;
    .registers 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, p1}, Lcom/heytap/cloud/sdk/AgentService;->getNotSyncMetaDataCount(Lcom/heytap/cloud/sdk/account/Account;)I

    move-result p0

    const-string p1, "not_sync_meta_data_count"

    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method private isCanCloseSyncSwitch(Landroid/os/Bundle;Lcom/heytap/cloud/sdk/account/Account;)V
    .registers 3

    invoke-virtual {p0, p2}, Lcom/heytap/cloud/sdk/AgentService;->isCanCloseSyncSwitch(Lcom/heytap/cloud/sdk/account/Account;)I

    move-result p0

    const-string p2, "key_int"

    invoke-virtual {p1, p2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method private onSyncSwitchStatusChange(Landroid/os/Bundle;Lcom/heytap/cloud/sdk/account/Account;)V
    .registers 5

    const-string p2, "AgentService"

    const-string v0, "onSyncSwitchStatusChange#"

    invoke-static {p2, v0}, Lt1/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_27

    const/4 v0, 0x0

    const-string v1, "key_boolean"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSyncSwitchStatusChange# isOpen = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lt1/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/heytap/cloud/sdk/AgentService;->onSyncSwitchStatusChange(Z)V

    :cond_27
    return-void
.end method


# virtual methods
.method public abstract cancel(Lcom/heytap/cloud/sdk/account/Account;)V
.end method

.method public abstract getAllData(Lcom/heytap/cloud/sdk/account/Account;)Landroid/os/Bundle;
.end method

.method public abstract getAppAuthorizationStatus(Z)Z
.end method

.method public abstract getDirtyData(Lcom/heytap/cloud/sdk/account/Account;)Landroid/os/Bundle;
.end method

.method public getJsonParseBatchSize()I
    .registers 1

    const/16 p0, 0x1f4

    return p0
.end method

.method public abstract getManifestConfig(Ljava/lang/String;)Landroid/os/Bundle;
.end method

.method public abstract getMetaDataCount(Lcom/heytap/cloud/sdk/account/Account;)Ljava/lang/String;
.end method

.method public abstract getMetaDataVersion(Lcom/heytap/cloud/sdk/account/Account;)Ljava/lang/String;
.end method

.method public abstract getModuleName()Ljava/lang/String;
.end method

.method public abstract getNotSyncMetaDataCount(Lcom/heytap/cloud/sdk/account/Account;)I
.end method

.method public getSmallBinaryFilesDownloadRequestData(Lcom/heytap/cloud/sdk/account/Account;)Landroid/os/Bundle;
    .registers 2

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    return-object p0
.end method

.method public getSmallBinaryFilesUploadData(Lcom/heytap/cloud/sdk/account/Account;)Landroid/os/Bundle;
    .registers 2

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    return-object p0
.end method

.method public abstract getSupportModule()Landroid/os/Bundle;
.end method

.method public abstract getUrlAndVersion(Lcom/heytap/cloud/sdk/account/Account;Landroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method public abstract hasDirtyData(Lcom/heytap/cloud/sdk/account/Account;)Z
.end method

.method public initHandler()V
    .registers 8

    new-instance v3, Lcom/heytap/cloud/sdk/AgentService$b;

    iget-object v0, p0, Lcom/heytap/cloud/sdk/AgentService;->mAsyncThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v3, p0, v0}, Lcom/heytap/cloud/sdk/AgentService$b;-><init>(Lcom/heytap/cloud/sdk/AgentService;Landroid/os/Looper;)V

    new-instance v4, Lcom/heytap/cloud/sdk/AgentService$b;

    iget-object v0, p0, Lcom/heytap/cloud/sdk/AgentService;->mSyncFileThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v4, p0, v0}, Lcom/heytap/cloud/sdk/AgentService$b;-><init>(Lcom/heytap/cloud/sdk/AgentService;Landroid/os/Looper;)V

    new-instance v5, Lcom/heytap/cloud/sdk/AgentService$b;

    iget-object v0, p0, Lcom/heytap/cloud/sdk/AgentService;->mSyncNotFileThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v5, p0, v0}, Lcom/heytap/cloud/sdk/AgentService$b;-><init>(Lcom/heytap/cloud/sdk/AgentService;Landroid/os/Looper;)V

    new-instance v6, Lcom/heytap/cloud/sdk/AgentService$a;

    invoke-virtual {p0}, Landroid/app/Service;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/heytap/cloud/sdk/AgentService$a;-><init>(Lcom/heytap/cloud/sdk/AgentService;Landroid/os/Looper;Landroid/os/Handler;Landroid/os/Handler;Landroid/os/Handler;)V

    iput-object v6, p0, Lcom/heytap/cloud/sdk/AgentService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public abstract isCanCloseSyncSwitch(Lcom/heytap/cloud/sdk/account/Account;)I
.end method

.method public abstract isLocalDataClear()Z
.end method

.method public abstract onAccountLogin(Lcom/heytap/cloud/sdk/account/Account;)V
.end method

.method public abstract onAccountLogout(ZLcom/heytap/cloud/sdk/account/Account;)V
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    invoke-static {p0}, Lu1/c;->b(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    iget-object p1, p0, Lcom/heytap/cloud/sdk/AgentService;->mBinder:Landroid/os/IBinder;

    if-nez p1, :cond_1b

    const-string p1, "AgentService"

    const-string v0, "onBind"

    invoke-static {p1, v0}, Lt1/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/heytap/cloud/sdk/AgentService;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {p1}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object p1

    iput-object p1, p0, Lcom/heytap/cloud/sdk/AgentService;->mBinder:Landroid/os/IBinder;

    :cond_1b
    iget-object p0, p0, Lcom/heytap/cloud/sdk/AgentService;->mBinder:Landroid/os/IBinder;

    return-object p0
.end method

.method public abstract onConfigInfo(Lcom/heytap/cloud/sdk/account/Account;Ljava/lang/String;)Z
.end method

.method public onCreate()V
    .registers 3

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-static {p0}, Lu1/c;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    :cond_a
    const-string v0, "AgentService"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lt1/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "cloud_sync_file_thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/heytap/cloud/sdk/AgentService;->mSyncFileThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "cloud_async_thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/heytap/cloud/sdk/AgentService;->mAsyncThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "cloud_sync_not_file_thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/heytap/cloud/sdk/AgentService;->mSyncNotFileThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {p0}, Lcom/heytap/cloud/sdk/AgentService;->initHandler()V

    iget-object v0, p0, Lcom/heytap/cloud/sdk/AgentService;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_45

    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/heytap/cloud/sdk/AgentService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/heytap/cloud/sdk/AgentService;->mMessenger:Landroid/os/Messenger;

    :cond_45
    return-void
.end method

.method public onDestroy()V
    .registers 3

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    invoke-static {p0}, Lu1/c;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    :cond_a
    const-string v0, "AgentService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lt1/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/heytap/cloud/sdk/AgentService;->mSyncFileThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    :cond_18
    iget-object v0, p0, Lcom/heytap/cloud/sdk/AgentService;->mAsyncThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    :cond_1f
    iget-object p0, p0, Lcom/heytap/cloud/sdk/AgentService;->mSyncNotFileThread:Landroid/os/HandlerThread;

    if-eqz p0, :cond_26

    invoke-virtual {p0}, Landroid/os/HandlerThread;->quitSafely()Z

    :cond_26
    return-void
.end method

.method public abstract onGetSqence(Lcom/heytap/cloud/sdk/account/Account;Ljava/lang/String;I)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/heytap/cloud/sdk/account/Account;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList<",
            "Lcom/heytap/cloud/sdk/order/Operation;",
            ">;"
        }
    .end annotation
.end method

.method public abstract onMetaDataBackupEnd(Landroid/os/Bundle;Lcom/heytap/cloud/sdk/account/Account;)V
.end method

.method public abstract onMetaDataBackupStart(Landroid/os/Bundle;Lcom/heytap/cloud/sdk/account/Account;)V
.end method

.method public abstract onMetaDataRecoveryEnd(Landroid/os/Bundle;Lcom/heytap/cloud/sdk/account/Account;)Z
.end method

.method public abstract onMetaDataRecoveryStart(Landroid/os/Bundle;Lcom/heytap/cloud/sdk/account/Account;)V
.end method

.method public onSmallBinaryFilesSyncEnd(Lcom/heytap/cloud/sdk/account/Account;)V
    .registers 2

    return-void
.end method

.method public onSmallBinaryFilesSyncStart(Lcom/heytap/cloud/sdk/account/Account;)V
    .registers 2

    const-string p0, "AgentService"

    const-string p1, "onSmallBinaryFilesSyncStart call."

    invoke-static {p0, p1}, Lt1/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public abstract onSyncSwitchStatusChange(Z)V
.end method

.method public processBackupResultFromServer(Landroid/os/Bundle;Lcom/heytap/cloud/sdk/account/Account;)V
    .registers 5

    const-string v0, "processBackupResultFromServer bundle = "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AgentService"

    invoke-static {v1, v0}, Lt1/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1}, Ll0/b;->c(Landroid/content/Context;Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_75

    const-string v0, "add_metadata_uri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_31

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "add"

    invoke-virtual {p0, v1, v0, p2}, Lcom/heytap/cloud/sdk/AgentService;->processBackupResultFromServer(Ljava/lang/String;Landroid/net/Uri;Lcom/heytap/cloud/sdk/account/Account;)V

    :cond_31
    const-string/jumbo v0, "update_metadata_uri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_48

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string/jumbo v1, "update"

    invoke-virtual {p0, v1, v0, p2}, Lcom/heytap/cloud/sdk/AgentService;->processBackupResultFromServer(Ljava/lang/String;Landroid/net/Uri;Lcom/heytap/cloud/sdk/account/Account;)V

    :cond_48
    const-string v0, "delete_metadata_uri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5d

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "delete"

    invoke-virtual {p0, v1, v0, p2}, Lcom/heytap/cloud/sdk/AgentService;->processBackupResultFromServer(Ljava/lang/String;Landroid/net/Uri;Lcom/heytap/cloud/sdk/account/Account;)V

    :cond_5d
    const-string/jumbo v0, "syncdelete_metadata_uri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7a

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string/jumbo v0, "syncdelete"

    invoke-virtual {p0, v0, p1, p2}, Lcom/heytap/cloud/sdk/AgentService;->processBackupResultFromServer(Ljava/lang/String;Landroid/net/Uri;Lcom/heytap/cloud/sdk/account/Account;)V

    goto :goto_7a

    :cond_75
    const-string p0, "processBackupResultFromServer checkDataMD5 failed"

    invoke-static {v1, p0}, Lt1/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7a
    :goto_7a
    return-void
.end method

.method public processBackupResultFromServer(Ljava/lang/String;Landroid/net/Uri;Lcom/heytap/cloud/sdk/account/Account;)V
    .registers 7

    if-nez p2, :cond_3

    return-void

    :cond_3
    new-instance v0, Lu1/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lu1/a;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, p2}, Lu1/a;->d(Landroid/net/Uri;)Z

    move-result p2

    if-eqz p2, :cond_46

    new-instance p2, Lcom/google/gson/JsonArray;

    invoke-direct {p2}, Lcom/google/gson/JsonArray;-><init>()V

    :cond_14
    :goto_14
    invoke-virtual {v0}, Lu1/a;->c()Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-virtual {v0}, Lu1/a;->e()Lcom/google/gson/JsonObject;

    move-result-object v1

    if-eqz v1, :cond_36

    invoke-virtual {p2, v1}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    invoke-virtual {p2}, Lcom/google/gson/JsonArray;->size()I

    move-result v1

    invoke-virtual {p0}, Lcom/heytap/cloud/sdk/AgentService;->getJsonParseBatchSize()I

    move-result v2

    if-le v1, v2, :cond_14

    invoke-virtual {p0, p1, p2, p3}, Lcom/heytap/cloud/sdk/AgentService;->processBackupResultFromServer(Ljava/lang/String;Lcom/google/gson/JsonArray;Lcom/heytap/cloud/sdk/account/Account;)V

    new-instance p2, Lcom/google/gson/JsonArray;

    invoke-direct {p2}, Lcom/google/gson/JsonArray;-><init>()V

    goto :goto_14

    :cond_36
    const-string v1, "AgentService"

    const-string v2, "processBackupResultFromServer error"

    invoke-static {v1, v2}, Lt1/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3d
    invoke-virtual {p2}, Lcom/google/gson/JsonArray;->size()I

    move-result v1

    if-lez v1, :cond_46

    invoke-virtual {p0, p1, p2, p3}, Lcom/heytap/cloud/sdk/AgentService;->processBackupResultFromServer(Ljava/lang/String;Lcom/google/gson/JsonArray;Lcom/heytap/cloud/sdk/account/Account;)V

    :cond_46
    invoke-virtual {v0}, Lu1/a;->b()V

    return-void
.end method

.method public abstract processBackupResultFromServer(Ljava/lang/String;Lcom/google/gson/JsonArray;Lcom/heytap/cloud/sdk/account/Account;)V
.end method

.method public processRecoveryDataFromServer(Ljava/lang/String;Landroid/net/Uri;Lcom/heytap/cloud/sdk/account/Account;)Landroid/net/Uri;
    .registers 10

    const/4 v0, 0x0

    if-nez p2, :cond_4

    return-object v0

    :cond_4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    return-object v0

    :cond_b
    new-instance v1, Lu1/a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lu1/a;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, p2}, Lu1/a;->d(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_f7

    new-instance v2, Lu1/a;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lu1/a;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0}, Lcom/heytap/cloud/sdk/AgentService;->getModuleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "recovery"

    invoke-static {v4, v5, p1, v3}, Ll0/b;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/net/Uri;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processRecoveryDataFromServer resultUri = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "AgentService"

    invoke-static {v5, v4}, Lt1/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_e3

    invoke-virtual {v2, v3}, Lu1/a;->d(Landroid/net/Uri;)Z

    move-result p2

    if-eqz p2, :cond_ce

    new-instance p2, Lcom/google/gson/JsonArray;

    invoke-direct {p2}, Lcom/google/gson/JsonArray;-><init>()V

    :cond_4a
    :goto_4a
    invoke-virtual {v1}, Lu1/a;->c()Z

    move-result v0

    if-eqz v0, :cond_9e

    invoke-virtual {v1}, Lu1/a;->e()Lcom/google/gson/JsonObject;

    move-result-object v0

    if-eqz v0, :cond_99

    invoke-virtual {p2, v0}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processRecoveryDataFromServer size = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/google/gson/JsonArray;->size()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "  opType="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lt1/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/google/gson/JsonArray;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/heytap/cloud/sdk/AgentService;->getJsonParseBatchSize()I

    move-result v4

    if-le v0, v4, :cond_4a

    invoke-virtual {p0, p1, p2, p3}, Lcom/heytap/cloud/sdk/AgentService;->processRecoveryDataFromServer(Ljava/lang/String;Lcom/google/gson/JsonArray;Lcom/heytap/cloud/sdk/account/Account;)Lcom/google/gson/JsonArray;

    move-result-object p2

    new-instance v0, Lcom/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/google/gson/JsonArray;-><init>()V

    if-eqz p2, :cond_97

    invoke-virtual {p2}, Lcom/google/gson/JsonArray;->size()I

    move-result v4

    if-lez v4, :cond_97

    invoke-virtual {v2, p2}, Lu1/a;->a(Lcom/google/gson/JsonArray;)Z

    :cond_97
    move-object p2, v0

    goto :goto_4a

    :cond_99
    const-string v0, "processRecoveryDataFromServer error"

    invoke-static {v5, v0}, Lt1/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9e
    const-string v0, "processRecoveryDataFromServer jsonArray.size() === "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/gson/JsonArray;->size()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lt1/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/google/gson/JsonArray;->size()I

    move-result v0

    if-lez v0, :cond_c7

    invoke-virtual {p0, p1, p2, p3}, Lcom/heytap/cloud/sdk/AgentService;->processRecoveryDataFromServer(Ljava/lang/String;Lcom/google/gson/JsonArray;Lcom/heytap/cloud/sdk/account/Account;)Lcom/google/gson/JsonArray;

    move-result-object p0

    if-eqz p0, :cond_c7

    invoke-virtual {p0}, Lcom/google/gson/JsonArray;->size()I

    move-result p1

    if-lez p1, :cond_c7

    invoke-virtual {v2, p0}, Lu1/a;->a(Lcom/google/gson/JsonArray;)Z

    :cond_c7
    invoke-virtual {v2}, Lu1/a;->b()V

    invoke-virtual {v1}, Lu1/a;->b()V

    return-object v3

    :cond_ce
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "processRecoveryDataFromServer open uri failed, resultUri = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Lt1/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f7

    :cond_e3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "processRecoveryDataFromServer makeRecoveryResultDataUri failed, dataUri = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Lt1/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f7
    :goto_f7
    invoke-virtual {v1}, Lu1/a;->b()V

    return-object v0
.end method

.method public processRecoveryDataFromServer(Landroid/os/Bundle;Lcom/heytap/cloud/sdk/account/Account;)Landroid/os/Bundle;
    .registers 9

    const/4 v0, 0x0

    if-eqz p1, :cond_ef

    const-string v1, "processRecoveryDataFromServer(Bundle bundle, Account account) bundle = "

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AgentService"

    invoke-static {v2, v1}, Lt1/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1}, Ll0/b;->c(Landroid/content/Context;Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_ea

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "add_metadata_uri"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_52

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "add"

    invoke-virtual {p0, v4, v3, p2}, Lcom/heytap/cloud/sdk/AgentService;->processRecoveryDataFromServer(Ljava/lang/String;Landroid/net/Uri;Lcom/heytap/cloud/sdk/account/Account;)Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_52

    invoke-static {p0, v3}, Li1/c;->e(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_52

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "add_metadata_md5"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_52
    const-string/jumbo v2, "update_metadata_uri"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_83

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string/jumbo v4, "update"

    invoke-virtual {p0, v4, v3, p2}, Lcom/heytap/cloud/sdk/AgentService;->processRecoveryDataFromServer(Ljava/lang/String;Landroid/net/Uri;Lcom/heytap/cloud/sdk/account/Account;)Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_83

    invoke-static {p0, v3}, Li1/c;->e(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_83

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "update_metadata_md5"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_83
    const-string v2, "delete_metadata_uri"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_b1

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "delete"

    invoke-virtual {p0, v4, v3, p2}, Lcom/heytap/cloud/sdk/AgentService;->processRecoveryDataFromServer(Ljava/lang/String;Landroid/net/Uri;Lcom/heytap/cloud/sdk/account/Account;)Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_b1

    invoke-static {p0, v3}, Li1/c;->e(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_b1

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "delete_metadata_md5"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b1
    const-string/jumbo v2, "syncdelete_metadata_uri"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_e2

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string/jumbo v3, "syncdelete"

    invoke-virtual {p0, v3, p1, p2}, Lcom/heytap/cloud/sdk/AgentService;->processRecoveryDataFromServer(Ljava/lang/String;Landroid/net/Uri;Lcom/heytap/cloud/sdk/account/Account;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_e2

    invoke-static {p0, p1}, Li1/c;->e(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_e2

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "syncdelete_metadata_md5"

    invoke-virtual {v1, p1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e2
    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_e9

    return-object v0

    :cond_e9
    return-object v1

    :cond_ea
    const-string p0, "processRecoveryDataFromServer checkDataMD5 failed"

    invoke-static {v2, p0}, Lt1/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_ef
    return-object v0
.end method

.method public abstract processRecoveryDataFromServer(Ljava/lang/String;Lcom/google/gson/JsonArray;Lcom/heytap/cloud/sdk/account/Account;)Lcom/google/gson/JsonArray;
.end method

.method public processSmallBinaryFilesDownloadResult(Landroid/os/Bundle;Lcom/heytap/cloud/sdk/account/Account;)V
    .registers 6

    const-string v0, "processSmallBinaryFilesDownloadResult bundle = "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AgentService"

    invoke-static {v1, v0}, Lt1/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1d

    return-void

    :cond_1d
    invoke-static {p0, p1}, Ll0/b;->c(Landroid/content/Context;Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_29

    const-string p0, "processSmallBinaryFilesDownloadResult checkDataMD5 failed"

    invoke-static {v1, p0}, Lt1/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_29
    const-string v0, "download_small_binary_file_uri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3b

    const-string p0, "processSmallBinaryFilesDownloadResult uriStr is empty"

    invoke-static {v1, p0}, Lt1/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3b
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_42

    return-void

    :cond_42
    new-instance v0, Lu1/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lu1/a;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, p1}, Lu1/a;->d(Landroid/net/Uri;)Z

    move-result p1

    if-eqz p1, :cond_7e

    new-instance p1, Lcom/google/gson/JsonArray;

    invoke-direct {p1}, Lcom/google/gson/JsonArray;-><init>()V

    :cond_53
    :goto_53
    invoke-virtual {v0}, Lu1/a;->c()Z

    move-result v1

    if-eqz v1, :cond_75

    invoke-virtual {v0}, Lu1/a;->e()Lcom/google/gson/JsonObject;

    move-result-object v1

    if-eqz v1, :cond_62

    invoke-virtual {p1, v1}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    :cond_62
    invoke-virtual {p1}, Lcom/google/gson/JsonArray;->size()I

    move-result v1

    invoke-virtual {p0}, Lcom/heytap/cloud/sdk/AgentService;->getJsonParseBatchSize()I

    move-result v2

    if-le v1, v2, :cond_53

    invoke-virtual {p0, p1, p2}, Lcom/heytap/cloud/sdk/AgentService;->processSmallBinaryFilesDownloadResult(Lcom/google/gson/JsonArray;Lcom/heytap/cloud/sdk/account/Account;)V

    new-instance p1, Lcom/google/gson/JsonArray;

    invoke-direct {p1}, Lcom/google/gson/JsonArray;-><init>()V

    goto :goto_53

    :cond_75
    invoke-virtual {p1}, Lcom/google/gson/JsonArray;->size()I

    move-result v1

    if-lez v1, :cond_7e

    invoke-virtual {p0, p1, p2}, Lcom/heytap/cloud/sdk/AgentService;->processSmallBinaryFilesDownloadResult(Lcom/google/gson/JsonArray;Lcom/heytap/cloud/sdk/account/Account;)V

    :cond_7e
    invoke-virtual {v0}, Lu1/a;->b()V

    return-void
.end method

.method public processSmallBinaryFilesDownloadResult(Lcom/google/gson/JsonArray;Lcom/heytap/cloud/sdk/account/Account;)V
    .registers 3

    return-void
.end method

.method public processSmallBinaryFilesUploadResult(Lcom/google/gson/JsonArray;Lcom/heytap/cloud/sdk/account/Account;)Lcom/google/gson/JsonArray;
    .registers 3

    const/4 p0, 0x0

    return-object p0
.end method

.method public processSmallBinaryFilesUploadResult(Landroid/os/Bundle;Lcom/heytap/cloud/sdk/account/Account;)V
    .registers 6

    const-string v0, "processSmallBinaryFilesUploadResult bundle = "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AgentService"

    invoke-static {v1, v0}, Lt1/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1d

    return-void

    :cond_1d
    invoke-static {p0, p1}, Ll0/b;->c(Landroid/content/Context;Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_29

    const-string p0, "processSmallBinaryFilesUploadResult checkDataMD5 failed"

    invoke-static {v1, p0}, Lt1/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_29
    const-string/jumbo v0, "upload_small_binary_file_uri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3c

    const-string p0, "processSmallBinaryFilesUploadResult uriStr is empty"

    invoke-static {v1, p0}, Lt1/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3c
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_43

    return-void

    :cond_43
    new-instance v0, Lu1/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lu1/a;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, p1}, Lu1/a;->d(Landroid/net/Uri;)Z

    move-result p1

    if-eqz p1, :cond_7f

    new-instance p1, Lcom/google/gson/JsonArray;

    invoke-direct {p1}, Lcom/google/gson/JsonArray;-><init>()V

    :cond_54
    :goto_54
    invoke-virtual {v0}, Lu1/a;->c()Z

    move-result v1

    if-eqz v1, :cond_76

    invoke-virtual {v0}, Lu1/a;->e()Lcom/google/gson/JsonObject;

    move-result-object v1

    if-eqz v1, :cond_63

    invoke-virtual {p1, v1}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    :cond_63
    invoke-virtual {p1}, Lcom/google/gson/JsonArray;->size()I

    move-result v1

    invoke-virtual {p0}, Lcom/heytap/cloud/sdk/AgentService;->getJsonParseBatchSize()I

    move-result v2

    if-le v1, v2, :cond_54

    invoke-virtual {p0, p1, p2}, Lcom/heytap/cloud/sdk/AgentService;->processSmallBinaryFilesUploadResult(Lcom/google/gson/JsonArray;Lcom/heytap/cloud/sdk/account/Account;)Lcom/google/gson/JsonArray;

    new-instance p1, Lcom/google/gson/JsonArray;

    invoke-direct {p1}, Lcom/google/gson/JsonArray;-><init>()V

    goto :goto_54

    :cond_76
    invoke-virtual {p1}, Lcom/google/gson/JsonArray;->size()I

    move-result v1

    if-lez v1, :cond_7f

    invoke-virtual {p0, p1, p2}, Lcom/heytap/cloud/sdk/AgentService;->processSmallBinaryFilesUploadResult(Lcom/google/gson/JsonArray;Lcom/heytap/cloud/sdk/account/Account;)Lcom/google/gson/JsonArray;

    :cond_7f
    invoke-virtual {v0}, Lu1/a;->b()V

    return-void
.end method

.method public returnMsg(Landroid/os/Messenger;ILandroid/os/Bundle;I)V
    .registers 8

    const-string v0, "AgentService"

    if-nez p1, :cond_a

    const-string p0, "returnMsg messenger is null, cloud app send message must has some problem!"

    invoke-static {v0, p0}, Lt1/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_a
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v1, p2, p4, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p0}, Landroid/app/Service;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const/4 p0, 0x1

    const-string p4, "aaaaa"

    invoke-virtual {p3, p4, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p2, p3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    :try_start_20
    invoke-virtual {p1, p2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_23} :catch_24

    goto :goto_39

    :catch_24
    move-exception p0

    const-string p1, "returnMsg messenger.send get exception: "

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lt1/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_39
    return-void
.end method
