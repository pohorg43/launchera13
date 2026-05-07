.class public Lcom/android/launcher/backup/cloudsync/LauncherCloudSyncAgent;
.super Lcom/android/launcher/backup/cloudsync/LauncherCloudSyncService;
.source ""


# static fields
.field public static final KEY_HANDLE_MSG:Ljava/lang/String; = "handle_msg_result_msg"

.field public static final KEY_HANDLE_MSG_RESULT:Ljava/lang/String; = "handle_msg_result"

.field private static final TAG:Ljava/lang/String;

.field private static sCloudRestoreStarted:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsRestoreSucceed:Z

.field private mIsStartSucceed:Z

.field private mLauncherRestoreHelper:Lcom/android/launcher/backup/restore/LayoutRestoreHelper;

.field private mOnlyHasStandardData:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/android/launcher/backup/cloudsync/LauncherCloudSyncAgent;

    const-string v0, "BR-Launcher_LauncherCloudSyncAgent"

    sput-object v0, Lcom/android/launcher/backup/cloudsync/LauncherCloudSyncAgent;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher/backup/cloudsync/LauncherCloudSyncAgent;->sCloudRestoreStarted:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/android/launcher/backup/cloudsync/LauncherCloudSyncService;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher/backup/cloudsync/LauncherCloudSyncAgent;->mOnlyHasStandardData:Z

    iput-boolean v0, p0, Lcom/android/launcher/backup/cloudsync/LauncherCloudSyncAgent;->mIsStartSucceed:Z

    iput-boolean v0, p0, Lcom/android/launcher/backup/cloudsync/LauncherCloudSyncAgent;->mIsRestoreSucceed:Z

    return-void
.end method

.method private getBackupDataModeMapFromDB()Landroid/util/ArrayMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Lcom/android/launcher/mode/LauncherMode;",
            "Lcom/android/launcher/backup/mode/BackupDataModel;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher/backup/cloudsync/LauncherCloudSyncAgent;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/launcher/backup/backup/LauncherDBParser;->getBackupDataModeMapFromDB(Landroid/content/Context;)Landroid/util/ArrayMap;

    move-result-object p0

    return-object p0
.end method

.method private getRestoreDataModeListFromJson(Lcom/google/gson/JsonObject;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/JsonObject;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/launcher/backup/mode/BackupDataModel;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/android/launcher/backup/cloudsync/CloudDataParser;

    iget-object v1, p0, Lcom/android/launcher/backup/cloudsync/LauncherCloudSyncAgent;->mContext:Landroid/content/Context;

    invoke-direct {v0, p1, v1}, Lcom/android/launcher/backup/cloudsync/CloudDataParser;-><init>(Lcom/google/gson/JsonObject;Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/launcher/backup/cloudsync/CloudDataParser;->getRestoreModeDataList()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher/backup/cloudsync/LauncherCloudSyncAgent;->mOnlyHasStandardData:Z

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_55

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/backup/mode/BackupDataModel;

    sget-object v1, Lcom/android/launcher/mode/LauncherMode;->Standard:Lcom/android/launcher/mode/LauncherMode;

    invoke-virtual {v0}, Lcom/android/launcher/backup/mode/BackupDataModel;->getMode()Lcom/android/launcher/mode/LauncherMode;

    move-result-object v3

    if-ne v1, v3, :cond_55

    sget-object v1, Lcom/android/launcher/backup/cloudsync/LauncherCloudSyncAgent;->TAG:Ljava/lang/String;

    const-string v3, "getRestoreDataFromJson，No drawer table, use standard table data as drawer data."

    invoke-static {v1, v3}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/android/launcher/backup/mode/BackupDataModel;

    invoke-direct {v1}, Lcom/android/launcher/backup/mode/BackupDataModel;-><init>()V

    sget-object v3, Lcom/android/launcher/mode/LauncherMode;->Drawer:Lcom/android/launcher/mode/LauncherMode;

    invoke-virtual {v1, v3}, Lcom/android/launcher/backup/mode/BackupDataModel;->setMode(Lcom/android/launcher/mode/LauncherMode;)V

    invoke-virtual {v0}, Lcom/android/launcher/backup/mode/BackupDataModel;->getDeviceLayoutParameter()Lcom/android/launcher/backup/mode/BackupRestoreContract$DeviceLayoutParameter;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/launcher/backup/mode/BackupDataModel;->setDeviceLayoutParameter(Lcom/android/launcher/backup/mode/BackupRestoreContract$DeviceLayoutParameter;)V

    invoke-virtual {v0}, Lcom/android/launcher/backup/mode/BackupDataModel;->getDrawerModeSetting()Lcom/android/launcher/backup/mode/BackupRestoreContract$DrawerModeSetting;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/launcher/backup/mode/BackupDataModel;->setDrawerModeSetting(Lcom/android/launcher/backup/mode/BackupRestoreContract$DrawerModeSetting;)V

    invoke-virtual {v0}, Lcom/android/launcher/backup/mode/BackupDataModel;->getModeLayoutParameter()Lcom/android/launcher/backup/mode/BackupRestoreContract$ModeLayoutParameter;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/launcher/backup/mode/BackupDataModel;->setModeLayoutParameter(Lcom/android/launcher/backup/mode/BackupRestoreContract$ModeLayoutParameter;)V

    invoke-virtual {v0}, Lcom/android/launcher/backup/mode/BackupDataModel;->getLayoutMap()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/launcher/backup/mode/BackupDataModel;->setLayoutMap(Landroid/util/SparseArray;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-boolean v2, p0, Lcom/android/launcher/backup/cloudsync/LauncherCloudSyncAgent;->mOnlyHasStandardData:Z

    :cond_55
    return-object p1
.end method

.method public static isCloudRestoreStarted()Z
    .registers 1

    sget-boolean v0, Lcom/android/launcher/backup/cloudsync/LauncherCloudSyncAgent;->sCloudRestoreStarted:Z

    return v0
.end method


# virtual methods
.method public cancel(Lcom/heytap/cloud/sdk/account/Account;)V
    .registers 2

    sget-object p0, Lcom/android/launcher/backup/cloudsync/LauncherCloudSyncAgent;->TAG:Ljava/lang/String;

    const-string p1, "cancel! "

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getAllData(Lcom/heytap/cloud/sdk/account/Account;)Landroid/os/Bundle;
    .registers 5

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p1

    if-eqz p1, :cond_d

    sget-object p1, Lcom/android/launcher/backup/cloudsync/LauncherCloudSyncAgent;->TAG:Ljava/lang/String;

    const-string v0, "getAllData -- begin!"

    invoke-static {p1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    invoke-direct {p0}, Lcom/android/launcher/backup/cloudsync/LauncherCloudSyncAgent;->getBackupDataModeMapFromDB()Landroid/util/ArrayMap;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_20

    sget-object p0, Lcom/android/launcher/backup/cloudsync/LauncherCloudSyncAgent;->TAG:Ljava/lang/String;

    const-string p1, "getAllData -- end! No data found to backup!"

    invoke-static {p0, p1}, Lcom/android/launcher3/logging/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_20
    new-instance v0, Lcom/android/launcher/backup/cloudsync/CloudDataGenerator;

    iget-object v2, p0, Lcom/android/launcher/backup/cloudsync/LauncherCloudSyncAgent;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/android/launcher/backup/cloudsync/CloudDataGenerator;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/launcher/backup/cloudsync/LauncherCloudSyncService;->getModuleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lcom/android/launcher/backup/cloudsync/CloudDataGenerator;->generatorAppLayoutToJson(Landroid/util/ArrayMap;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_73

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object p0, p0, Lcom/android/launcher/backup/cloudsync/LauncherCloudSyncAgent;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Li1/c;->e(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_50

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "add_metadata_uri"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "add_metadata_md5"

    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_50
    sget-object p0, Lcom/android/launcher/backup/cloudsync/LauncherCloudSyncAgent;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAllData -- end! backupBundle:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", size:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/Bundle;->getSize()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_73
    sget-object p0, Lcom/android/launcher/backup/cloudsync/LauncherCloudSyncAgent;->TAG:Ljava/lang/String;

    const-string p1, "getAllData -- end! GeneratorAppLayoutJsonData failed!"

    invoke-static {p0, p1}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public onCreate()V
    .registers 2

    invoke-super {p0}, Lcom/heytap/cloud/sdk/AgentService;->onCreate()V

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher/backup/cloudsync/LauncherCloudSyncAgent;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onMetaDataBackupEnd(Landroid/os/Bundle;Lcom/heytap/cloud/sdk/account/Account;)V
    .registers 5

    if-eqz p1, :cond_32

    const-string p0, "handle_msg_result"

    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    sget-object p2, Lcom/android/launcher/backup/cloudsync/LauncherCloudSyncAgent;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onMetaDataBackupEnd -- result = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_3a

    const-string p0, "handle_msg_result_msg"

    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "onMetaDataBackupEnd -- msg = "

    invoke-static {p1, p0, p2}, Lcom/android/common/multiapp/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3a

    :cond_32
    sget-object p0, Lcom/android/launcher/backup/cloudsync/LauncherCloudSyncAgent;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "onMetaDataBackupEnd -- result = false"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3a
    :goto_3a
    return-void
.end method

.method public onMetaDataBackupStart(Landroid/os/Bundle;Lcom/heytap/cloud/sdk/account/Account;)V
    .registers 3

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_e

    sget-object p0, Lcom/android/launcher/backup/cloudsync/LauncherCloudSyncAgent;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "onMetaDataBackupStart"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    return-void
.end method

.method public onMetaDataRecoveryEnd(Landroid/os/Bundle;Lcom/heytap/cloud/sdk/account/Account;)Z
    .registers 5

    if-eqz p1, :cond_11

    const-string p2, "handle_msg_result"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    sget-object p2, Lcom/android/launcher/backup/cloudsync/LauncherCloudSyncAgent;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onMetaDataRecoveryEnd -- result = "

    invoke-static {v0, p1, p2}, Lcom/android/common/rus/a;->a(Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_19

    :cond_11
    sget-object p1, Lcom/android/launcher/backup/cloudsync/LauncherCloudSyncAgent;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "onMetaDataRecoveryEnd -- result = false"

    invoke-static {p1, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_19
    iget-boolean p1, p0, Lcom/android/launcher/backup/cloudsync/LauncherCloudSyncAgent;->mIsStartSucceed:Z

    const/4 p2, 0x1

    if-eqz p1, :cond_27

    iget-object p1, p0, Lcom/android/launcher/backup/cloudsync/LauncherCloudSyncAgent;->mLauncherRestoreHelper:Lcom/android/launcher/backup/restore/LayoutRestoreHelper;

    iget-object v0, p0, Lcom/android/launcher/backup/cloudsync/LauncherCloudSyncAgent;->mContext:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/android/launcher/backup/cloudsync/LauncherCloudSyncAgent;->mIsRestoreSucceed:Z

    invoke-virtual {p1, v0, v1, p2}, Lcom/android/launcher/backup/restore/LayoutRestoreHelper;->onRestoreEnd(Landroid/content/Context;ZZ)V

    :cond_27
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/launcher/backup/cloudsync/LauncherCloudSyncAgent;->mLauncherRestoreHelper:Lcom/android/launcher/backup/restore/LayoutRestoreHelper;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher/backup/cloudsync/LauncherCloudSyncAgent;->mOnlyHasStandardData:Z

    iput-boolean p1, p0, Lcom/android/launcher/backup/cloudsync/LauncherCloudSyncAgent;->mIsStartSucceed:Z

    iput-boolean p1, p0, Lcom/android/launcher/backup/cloudsync/LauncherCloudSyncAgent;->mIsRestoreSucceed:Z

    iget-object p0, p0, Lcom/android/launcher/backup/cloudsync/LauncherCloudSyncAgent;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "restore_started"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "cloudRecoveryStatusChanged"

    invoke-static {p0, v1, v0}, Lcom/android/launcher3/LauncherSettings$Settings;->call(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    sput-boolean p1, Lcom/android/launcher/backup/cloudsync/LauncherCloudSyncAgent;->sCloudRestoreStarted:Z

    return p2
.end method

.method public onMetaDataRecoveryStart(Landroid/os/Bundle;Lcom/heytap/cloud/sdk/account/Account;)V
    .registers 4

    const/4 p1, 0x1

    sput-boolean p1, Lcom/android/launcher/backup/cloudsync/LauncherCloudSyncAgent;->sCloudRestoreStarted:Z

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p2

    if-eqz p2, :cond_11

    sget-object p2, Lcom/android/launcher/backup/cloudsync/LauncherCloudSyncAgent;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onMetaDataRecoveryStart"

    invoke-static {p2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    new-instance p2, Lcom/android/launcher/backup/restore/LayoutRestoreHelper;

    invoke-direct {p2}, Lcom/android/launcher/backup/restore/LayoutRestoreHelper;-><init>()V

    iput-object p2, p0, Lcom/android/launcher/backup/cloudsync/LauncherCloudSyncAgent;->mLauncherRestoreHelper:Lcom/android/launcher/backup/restore/LayoutRestoreHelper;

    iget-object p0, p0, Lcom/android/launcher/backup/cloudsync/LauncherCloudSyncAgent;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "restore_started"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "cloudRecoveryStatusChanged"

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/LauncherSettings$Settings;->call(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method

.method public processBackupResultFromServer(Ljava/lang/String;Lcom/google/gson/JsonArray;Lcom/heytap/cloud/sdk/account/Account;)V
    .registers 4

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_e

    sget-object p0, Lcom/android/launcher/backup/cloudsync/LauncherCloudSyncAgent;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "processBackupResultFromServer, opType:"

    invoke-static {p2, p1, p0}, Lcom/android/common/multiapp/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    return-void
.end method

.method public processRecoveryDataFromServer(Ljava/lang/String;Lcom/google/gson/JsonArray;Lcom/heytap/cloud/sdk/account/Account;)Lcom/google/gson/JsonArray;
    .registers 6

    const/4 p1, 0x0

    :try_start_1
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p3

    if-eqz p3, :cond_f

    sget-object p3, Lcom/android/launcher/backup/cloudsync/LauncherCloudSyncAgent;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "processRecoveryDataFromServer -- begin!"

    invoke-static {p3, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    if-eqz p2, :cond_65

    invoke-virtual {p2}, Lcom/google/gson/JsonArray;->size()I

    move-result p3

    if-nez p3, :cond_18

    goto :goto_65

    :cond_18
    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object p3

    check-cast p3, Lcom/google/gson/JsonObject;

    if-nez p3, :cond_2a

    sget-object p0, Lcom/android/launcher/backup/cloudsync/LauncherCloudSyncAgent;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "processRecoveryDataFromServer -- end! appLayoutData is null!"

    invoke-static {p0, p2}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_2a
    invoke-direct {p0, p3}, Lcom/android/launcher/backup/cloudsync/LauncherCloudSyncAgent;->getRestoreDataModeListFromJson(Lcom/google/gson/JsonObject;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_3d

    sget-object p0, Lcom/android/launcher/backup/cloudsync/LauncherCloudSyncAgent;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "processRecoveryDataFromServer -- end! restore mode data list is empty!"

    invoke-static {p0, p2}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_3d
    iget-object v0, p0, Lcom/android/launcher/backup/cloudsync/LauncherCloudSyncAgent;->mLauncherRestoreHelper:Lcom/android/launcher/backup/restore/LayoutRestoreHelper;

    invoke-virtual {v0, p3}, Lcom/android/launcher/backup/restore/LayoutRestoreHelper;->setRestoreData(Ljava/util/List;)V

    iget-object p3, p0, Lcom/android/launcher/backup/cloudsync/LauncherCloudSyncAgent;->mLauncherRestoreHelper:Lcom/android/launcher/backup/restore/LayoutRestoreHelper;

    iget-object v0, p0, Lcom/android/launcher/backup/cloudsync/LauncherCloudSyncAgent;->mContext:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/android/launcher/backup/cloudsync/LauncherCloudSyncAgent;->mOnlyHasStandardData:Z

    invoke-virtual {p3, v0, v1}, Lcom/android/launcher/backup/restore/LayoutRestoreHelper;->onRestoreStart(Landroid/content/Context;Z)Z

    move-result p3

    iput-boolean p3, p0, Lcom/android/launcher/backup/cloudsync/LauncherCloudSyncAgent;->mIsStartSucceed:Z

    if-eqz p3, :cond_86

    iget-object p3, p0, Lcom/android/launcher/backup/cloudsync/LauncherCloudSyncAgent;->mLauncherRestoreHelper:Lcom/android/launcher/backup/restore/LayoutRestoreHelper;

    iget-object v0, p0, Lcom/android/launcher/backup/cloudsync/LauncherCloudSyncAgent;->mContext:Landroid/content/Context;

    invoke-virtual {p3, v0}, Lcom/android/launcher/backup/restore/LayoutRestoreHelper;->onRestoring(Landroid/content/Context;)Z

    move-result p3

    iput-boolean p3, p0, Lcom/android/launcher/backup/cloudsync/LauncherCloudSyncAgent;->mIsRestoreSucceed:Z

    if-eqz p3, :cond_86

    sget-object p0, Lcom/android/launcher/backup/cloudsync/LauncherCloudSyncAgent;->TAG:Ljava/lang/String;

    const-string/jumbo p3, "processRecoveryDataFromServer -- end! mIsRestoreSucceed true!"

    invoke-static {p0, p3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    :cond_65
    :goto_65
    sget-object p0, Lcom/android/launcher/backup/cloudsync/LauncherCloudSyncAgent;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "processRecoveryDataFromServer -- end! jsonArray is null!"

    invoke-static {p0, p2}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6d} :catch_6e

    return-object p1

    :catch_6e
    move-exception p0

    sget-object p2, Lcom/android/launcher/backup/cloudsync/LauncherCloudSyncAgent;->TAG:Ljava/lang/String;

    const-string/jumbo p3, "processRecoveryDataFromServer -- end! e: "

    invoke-static {p3}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/android/launcher3/logging/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_86
    sget-object p0, Lcom/android/launcher/backup/cloudsync/LauncherCloudSyncAgent;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "processRecoveryDataFromServer -- end! mIsRestoreSucceed false!"

    invoke-static {p0, p2}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method
