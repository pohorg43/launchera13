.class public Lcom/android/launcher/backup/cloudsync/LauncherCloudSyncService;
.super Lcom/heytap/cloud/sdk/AgentService;
.source ""


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/heytap/cloud/sdk/AgentService;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel(Lcom/heytap/cloud/sdk/account/Account;)V
    .registers 2

    return-void
.end method

.method public getAllData(Lcom/heytap/cloud/sdk/account/Account;)Landroid/os/Bundle;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public getAppAuthorizationStatus(Z)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public getDirtyData(Lcom/heytap/cloud/sdk/account/Account;)Landroid/os/Bundle;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/launcher/backup/cloudsync/LauncherCloudSyncService;->getAllData(Lcom/heytap/cloud/sdk/account/Account;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public getManifestConfig(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public getMetaDataCount(Lcom/heytap/cloud/sdk/account/Account;)Ljava/lang/String;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public getMetaDataVersion(Lcom/heytap/cloud/sdk/account/Account;)Ljava/lang/String;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public getModuleName()Ljava/lang/String;
    .registers 1

    const-string p0, "app_layout"

    return-object p0
.end method

.method public getNotSyncMetaDataCount(Lcom/heytap/cloud/sdk/account/Account;)I
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public getSupportModule()Landroid/os/Bundle;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getUrlAndVersion(Lcom/heytap/cloud/sdk/account/Account;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 3

    const/4 p0, 0x0

    return-object p0
.end method

.method public hasDirtyData(Lcom/heytap/cloud/sdk/account/Account;)Z
    .registers 2

    const/4 p0, 0x1

    return p0
.end method

.method public isCanCloseSyncSwitch(Lcom/heytap/cloud/sdk/account/Account;)I
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public isLocalDataClear()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public onAccountLogin(Lcom/heytap/cloud/sdk/account/Account;)V
    .registers 2

    return-void
.end method

.method public onAccountLogout(ZLcom/heytap/cloud/sdk/account/Account;)V
    .registers 3

    return-void
.end method

.method public onConfigInfo(Lcom/heytap/cloud/sdk/account/Account;Ljava/lang/String;)Z
    .registers 3

    const/4 p0, 0x0

    return p0
.end method

.method public onGetSqence(Lcom/heytap/cloud/sdk/account/Account;Ljava/lang/String;I)Ljava/util/ArrayList;
    .registers 4
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

    const/4 p0, 0x0

    return-object p0
.end method

.method public onMetaDataBackupEnd(Landroid/os/Bundle;Lcom/heytap/cloud/sdk/account/Account;)V
    .registers 3

    return-void
.end method

.method public onMetaDataBackupStart(Landroid/os/Bundle;Lcom/heytap/cloud/sdk/account/Account;)V
    .registers 3

    return-void
.end method

.method public onMetaDataRecoveryEnd(Landroid/os/Bundle;Lcom/heytap/cloud/sdk/account/Account;)Z
    .registers 3

    const/4 p0, 0x1

    return p0
.end method

.method public onMetaDataRecoveryStart(Landroid/os/Bundle;Lcom/heytap/cloud/sdk/account/Account;)V
    .registers 3

    return-void
.end method

.method public onSyncSwitchStatusChange(Z)V
    .registers 2

    return-void
.end method

.method public processBackupResultFromServer(Ljava/lang/String;Lcom/google/gson/JsonArray;Lcom/heytap/cloud/sdk/account/Account;)V
    .registers 4

    return-void
.end method

.method public processRecoveryDataFromServer(Ljava/lang/String;Lcom/google/gson/JsonArray;Lcom/heytap/cloud/sdk/account/Account;)Lcom/google/gson/JsonArray;
    .registers 4

    const/4 p0, 0x0

    return-object p0
.end method
