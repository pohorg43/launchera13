.class public Lcom/oplus/backup/sdk/common/host/BREngineConfig;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final BACKUP_ROOT_PATH:Ljava/lang/String; = "backup_root_path"

.field public static final BACKUP_TYPE:I = 0x0

.field private static final BR_TYPE:Ljava/lang/String; = "br_type"

.field public static final CACHE_APP_DATA_FOLDER:Ljava/lang/String; = "cache_app_data_folder"

.field private static final LOG_LEVEL:Ljava/lang/String; = "log_level"

.field private static final PAIRED_PHONE_ANDROID_VERSION:Ljava/lang/String; = "paired_phone_android_version"

.field private static final PAIRED_PHONE_OS_VERSION:Ljava/lang/String; = "paired_phone_os_version"

.field private static final RESTORE_ROOT_PATH:Ljava/lang/String; = "restore_root_path"

.field public static final RESTORE_TYPE:I = 0x1

.field private static final SOURCE:Ljava/lang/String; = "source"

.field public static final SUPPORT_DIR_MIGRATION:Ljava/lang/String; = "support_dir_migration"


# instance fields
.field private mBundle:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/oplus/backup/sdk/common/host/BREngineConfig;->mBundle:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/backup/sdk/common/host/BREngineConfig;->mBundle:Landroid/os/Bundle;

    return-void
.end method

.method public static parse(Landroid/os/Bundle;)Lcom/oplus/backup/sdk/common/host/BREngineConfig;
    .registers 2

    new-instance v0, Lcom/oplus/backup/sdk/common/host/BREngineConfig;

    invoke-direct {v0, p0}, Lcom/oplus/backup/sdk/common/host/BREngineConfig;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public getBRType()I
    .registers 2

    iget-object p0, p0, Lcom/oplus/backup/sdk/common/host/BREngineConfig;->mBundle:Landroid/os/Bundle;

    const-string v0, "br_type"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getBackupRootPath()Ljava/lang/String;
    .registers 2

    iget-object p0, p0, Lcom/oplus/backup/sdk/common/host/BREngineConfig;->mBundle:Landroid/os/Bundle;

    const-string v0, "backup_root_path"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getBundle()Landroid/os/Bundle;
    .registers 1

    iget-object p0, p0, Lcom/oplus/backup/sdk/common/host/BREngineConfig;->mBundle:Landroid/os/Bundle;

    return-object p0
.end method

.method public getCacheAppDataFolder()Ljava/lang/String;
    .registers 2

    iget-object p0, p0, Lcom/oplus/backup/sdk/common/host/BREngineConfig;->mBundle:Landroid/os/Bundle;

    const-string v0, "cache_app_data_folder"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLogLevel()I
    .registers 3

    iget-object p0, p0, Lcom/oplus/backup/sdk/common/host/BREngineConfig;->mBundle:Landroid/os/Bundle;

    const-string v0, "log_level"

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getOldPhoneAndroidVersion()Ljava/lang/String;
    .registers 2

    iget-object p0, p0, Lcom/oplus/backup/sdk/common/host/BREngineConfig;->mBundle:Landroid/os/Bundle;

    const-string v0, "paired_phone_android_version"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getOldPhoneOSVersion()I
    .registers 2

    iget-object p0, p0, Lcom/oplus/backup/sdk/common/host/BREngineConfig;->mBundle:Landroid/os/Bundle;

    const-string v0, "paired_phone_os_version"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getRestoreRootPath()Ljava/lang/String;
    .registers 2

    iget-object p0, p0, Lcom/oplus/backup/sdk/common/host/BREngineConfig;->mBundle:Landroid/os/Bundle;

    const-string v0, "restore_root_path"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSource()Ljava/lang/String;
    .registers 2

    iget-object p0, p0, Lcom/oplus/backup/sdk/common/host/BREngineConfig;->mBundle:Landroid/os/Bundle;

    const-string v0, "source"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSupportMigration()Z
    .registers 3

    iget-object p0, p0, Lcom/oplus/backup/sdk/common/host/BREngineConfig;->mBundle:Landroid/os/Bundle;

    const-string v0, "support_dir_migration"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public putValue(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    iget-object p0, p0, Lcom/oplus/backup/sdk/common/host/BREngineConfig;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public putValue(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 3

    iget-object p0, p0, Lcom/oplus/backup/sdk/common/host/BREngineConfig;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public setBRType(I)V
    .registers 3

    iget-object p0, p0, Lcom/oplus/backup/sdk/common/host/BREngineConfig;->mBundle:Landroid/os/Bundle;

    const-string v0, "br_type"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setBackupRootPath(Ljava/lang/String;)V
    .registers 3

    iget-object p0, p0, Lcom/oplus/backup/sdk/common/host/BREngineConfig;->mBundle:Landroid/os/Bundle;

    const-string v0, "backup_root_path"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setLogLevel(I)V
    .registers 3

    iget-object p0, p0, Lcom/oplus/backup/sdk/common/host/BREngineConfig;->mBundle:Landroid/os/Bundle;

    const-string v0, "log_level"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setRestoreRootPath(Ljava/lang/String;)V
    .registers 3

    iget-object p0, p0, Lcom/oplus/backup/sdk/common/host/BREngineConfig;->mBundle:Landroid/os/Bundle;

    const-string v0, "restore_root_path"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .registers 3

    iget-object p0, p0, Lcom/oplus/backup/sdk/common/host/BREngineConfig;->mBundle:Landroid/os/Bundle;

    const-string v0, "source"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSupportMigration(Z)V
    .registers 3

    iget-object p0, p0, Lcom/oplus/backup/sdk/common/host/BREngineConfig;->mBundle:Landroid/os/Bundle;

    const-string v0, "support_dir_migration"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const-string v0, "BREngineConfig:["

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oplus/backup/sdk/common/host/BREngineConfig;->getBRType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/backup/sdk/common/host/BREngineConfig;->getBackupRootPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/oplus/backup/sdk/common/utils/BRLog;->getModifiedPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/backup/sdk/common/host/BREngineConfig;->getRestoreRootPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/oplus/backup/sdk/common/utils/BRLog;->getModifiedPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/backup/sdk/common/host/BREngineConfig;->getSource()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/backup/sdk/common/host/BREngineConfig;->getLogLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",OSVersion "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/backup/sdk/common/host/BREngineConfig;->getOldPhoneOSVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", androidVersion "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/backup/sdk/common/host/BREngineConfig;->getOldPhoneAndroidVersion()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
