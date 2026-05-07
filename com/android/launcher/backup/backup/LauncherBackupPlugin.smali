.class public Lcom/android/launcher/backup/backup/LauncherBackupPlugin;
.super Lcom/android/launcher/backup/LauncherBRBasePlugin;
.source ""


# static fields
.field public static final LAUNCHER_LAYOUT_DRAW_XML:Ljava/lang/String; = "launcher_draw_layout.xml"

.field public static final LAUNCHER_LAYOUT_PARAMETERS_XML:Ljava/lang/String; = "launcher_layout_parameters.xml"

.field public static final LAUNCHER_LAYOUT_SIMPLE_XML:Ljava/lang/String; = "launcher_simple_layout.xml"

.field public static final LAUNCHER_LAYOUT_XML:Ljava/lang/String; = "launcher_layout.xml"

.field public static final LAUNCHER_OLD50_LAYOUT_XML:Ljava/lang/String;

.field public static final LAUNCHER_OPLUS50_LAYOUT_XML:Ljava/lang/String; = "launcher_oplus50_layout.xml"

.field public static final LAUNCHER_PACKAGE_NAME:Ljava/lang/String; = "com.android.launcher"

.field public static final MAX_COUNT:I = 0x1

.field public static final SDCARD_TARGET_FOLDER:Ljava/lang/String; = "Layout"

.field private static final TAG:Ljava/lang/String; = "BR-Launcher_LauncherBackupPlugin"

.field public static final TYPE_LAUNCHER:I = 0x160


# instance fields
.field private mIsBackupOneXmlOnly:Z

.field private mIsBackupSucceed:Z
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mLauncherBackupStarted:Z

.field private mLayoutBackupHelper:Lcom/android/launcher/backup/backup/LayoutBackupHelper;

.field public mSDLauncherBackupPath:Ljava/lang/String;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const v0, 0x7f12002c

    invoke-static {v0}, Lcom/android/common/util/BrandComponentUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher/backup/backup/LauncherBackupPlugin;->LAUNCHER_OLD50_LAYOUT_XML:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/android/launcher/backup/LauncherBRBasePlugin;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher/backup/backup/LauncherBackupPlugin;->mIsBackupOneXmlOnly:Z

    iput-boolean v0, p0, Lcom/android/launcher/backup/backup/LauncherBackupPlugin;->mLauncherBackupStarted:Z

    iput-boolean v0, p0, Lcom/android/launcher/backup/backup/LauncherBackupPlugin;->mIsBackupSucceed:Z

    return-void
.end method

.method private getBackupDataModeMapFromDB()Landroid/util/ArrayMap;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Lcom/android/launcher/mode/LauncherMode;",
            "Lcom/android/launcher/backup/mode/BackupDataModel;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher/backup/LauncherBRBasePlugin;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher/backup/backup/LauncherDBParser;->getBackupDataModeMapFromDB(Landroid/content/Context;)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher/backup/mode/BackupDataModel;

    invoke-virtual {v1}, Lcom/android/launcher/backup/mode/BackupDataModel;->getDeviceLayoutParameter()Lcom/android/launcher/backup/mode/BackupRestoreContract$DeviceLayoutParameter;

    move-result-object v1

    iget v2, v1, Lcom/android/launcher/backup/mode/BackupRestoreContract$ModeLayoutParameter;->mCellXCount:I

    iget v1, v1, Lcom/android/launcher/backup/mode/BackupRestoreContract$ModeLayoutParameter;->mCellYCount:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_35

    const/4 v2, 0x6

    if-eq v1, v2, :cond_2b

    const/4 v2, 0x5

    if-ne v1, v2, :cond_35

    :cond_2b
    sget-object v1, Lcom/android/launcher/backup/backup/LauncherBackupPlugin;->TAG:Ljava/lang/String;

    const-string v2, "getBackupDataFromDB，only need backup LAUNCHER_LAYOUT_XML for all phone."

    invoke-static {v1, v2}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher/backup/backup/LauncherBackupPlugin;->mIsBackupOneXmlOnly:Z

    :cond_35
    return-object v0
.end method

.method private getXmlBackupFilePathMap()Landroid/util/ArrayMap;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Lcom/android/launcher/mode/LauncherMode;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher/backup/backup/LauncherBackupPlugin;->initXmlModeBackupFileNames()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-static {}, Lcom/android/launcher/mode/LauncherMode;->values()[Lcom/android/launcher/mode/LauncherMode;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_f
    if-ge v4, v3, :cond_39

    aget-object v5, v2, v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/launcher/backup/backup/LauncherBackupPlugin;->mSDLauncherBackupPath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/android/launcher/backup/backup/LauncherBackupPlugin;->getXmlModeBackupFilePathCompact(Lcom/android/launcher/mode/LauncherMode;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    :cond_39
    return-object v0
.end method

.method private getXmlModeBackupFilePathCompact(Lcom/android/launcher/mode/LauncherMode;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    sget-object v0, Lcom/android/launcher/mode/LauncherMode;->Standard:Lcom/android/launcher/mode/LauncherMode;

    if-ne p1, v0, :cond_3c

    iget-boolean v0, p0, Lcom/android/launcher/backup/backup/LauncherBackupPlugin;->mIsBackupOneXmlOnly:Z

    if-eqz v0, :cond_3c

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/launcher/backup/backup/LauncherBackupPlugin;->mSDLauncherBackupPath:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    const-string v0, "launcher_layout.xml"

    invoke-static {p2, p0, v0}, Landroidx/concurrent/futures/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    sget-object p0, Lcom/android/launcher/backup/backup/LauncherBackupPlugin;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getXmlModeBackupFilePathCompact, mode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " backupXmlFile: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/oplus/backup/sdk/common/utils/BRLog;->getModifiedPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3c
    return-object p2
.end method


# virtual methods
.method public backup(Landroid/os/Bundle;)V
    .registers 4

    sget-object p1, Lcom/android/launcher/backup/backup/LauncherBackupPlugin;->TAG:Ljava/lang/String;

    const-string v0, "backup mLauncherBackupStarted = "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher/backup/backup/LauncherBackupPlugin;->mLauncherBackupStarted:Z

    invoke-static {v0, v1, p1}, Lcom/android/common/config/b;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/launcher/backup/backup/LauncherBackupPlugin;->mLauncherBackupStarted:Z

    if-eqz p1, :cond_20

    iget-object p1, p0, Lcom/android/launcher/backup/backup/LauncherBackupPlugin;->mLayoutBackupHelper:Lcom/android/launcher/backup/backup/LayoutBackupHelper;

    iget-object v0, p0, Lcom/android/launcher/backup/LauncherBRBasePlugin;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/android/launcher/backup/backup/LayoutBackupHelper;->onBackingUp(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/launcher/backup/backup/LauncherBackupPlugin;->mIsBackupSucceed:Z

    if-eqz p1, :cond_20

    const/4 p1, 0x1

    iput p1, p0, Lcom/android/launcher/backup/LauncherBRBasePlugin;->mCompletedCount:I

    :cond_20
    return-void
.end method

.method public create(Landroid/content/Context;Lcom/oplus/backup/sdk/component/BRPluginHandler;Lcom/oplus/backup/sdk/common/host/BREngineConfig;)V
    .registers 4

    new-instance p1, Lcom/android/launcher/backup/backup/LayoutBackupHelper;

    invoke-direct {p1}, Lcom/android/launcher/backup/backup/LayoutBackupHelper;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/backup/backup/LauncherBackupPlugin;->mLayoutBackupHelper:Lcom/android/launcher/backup/backup/LayoutBackupHelper;

    return-void
.end method

.method public destroy(Landroid/os/Bundle;)V
    .registers 4

    sget-object p1, Lcom/android/launcher/backup/backup/LauncherBackupPlugin;->TAG:Ljava/lang/String;

    const-string v0, "destroy mIsBackupSucceed = "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher/backup/backup/LauncherBackupPlugin;->mIsBackupSucceed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/launcher/backup/backup/LauncherBackupPlugin;->mLauncherBackupStarted:Z

    if-eqz v0, :cond_22

    iget-object p1, p0, Lcom/android/launcher/backup/backup/LauncherBackupPlugin;->mLayoutBackupHelper:Lcom/android/launcher/backup/backup/LayoutBackupHelper;

    invoke-direct {p0}, Lcom/android/launcher/backup/backup/LauncherBackupPlugin;->getXmlBackupFilePathMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/launcher/backup/backup/LayoutBackupHelper;->onBackupEnd(Landroid/util/ArrayMap;)V

    goto :goto_27

    :cond_22
    const-string v0, "destroy, can\'t backup from db, db query error, just return!"

    invoke-static {p1, v0}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_27
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/launcher/backup/backup/LauncherBackupPlugin;->mLayoutBackupHelper:Lcom/android/launcher/backup/backup/LayoutBackupHelper;

    iput-object p1, p0, Lcom/android/launcher/backup/backup/LauncherBackupPlugin;->mSDLauncherBackupPath:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher/backup/backup/LauncherBackupPlugin;->mIsBackupOneXmlOnly:Z

    iput-boolean p1, p0, Lcom/android/launcher/backup/backup/LauncherBackupPlugin;->mLauncherBackupStarted:Z

    iput-boolean p1, p0, Lcom/android/launcher/backup/backup/LauncherBackupPlugin;->mIsBackupSucceed:Z

    return-void
.end method

.method public initXmlModeBackupFileNames()Landroid/util/ArrayMap;
    .registers 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Lcom/android/launcher/mode/LauncherMode;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance p0, Landroid/util/ArrayMap;

    invoke-direct {p0}, Landroid/util/ArrayMap;-><init>()V

    sget-object v0, Lcom/android/launcher/mode/LauncherMode;->Standard:Lcom/android/launcher/mode/LauncherMode;

    const-string v1, "launcher_oplus50_layout.xml"

    invoke-virtual {p0, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/launcher/mode/LauncherMode;->Drawer:Lcom/android/launcher/mode/LauncherMode;

    const-string v1, "launcher_draw_layout.xml"

    invoke-virtual {p0, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/launcher/mode/LauncherMode;->Simple:Lcom/android/launcher/mode/LauncherMode;

    const-string v1, "launcher_simple_layout.xml"

    invoke-virtual {p0, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public prepare(Landroid/os/Bundle;)V
    .registers 4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/oplus/backup/sdk/component/plugin/AbstractPlugin;->getBREngineConfig()Lcom/oplus/backup/sdk/common/host/BREngineConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/backup/sdk/common/host/BREngineConfig;->getBackupRootPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    const-string v1, "Layout"

    invoke-static {p1, v0, v1}, Landroidx/concurrent/futures/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher/backup/backup/LauncherBackupPlugin;->mSDLauncherBackupPath:Ljava/lang/String;

    sget-object p1, Lcom/android/launcher/backup/backup/LauncherBackupPlugin;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "prepare backupPath = "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher/backup/backup/LauncherBackupPlugin;->mSDLauncherBackupPath:Ljava/lang/String;

    invoke-static {v1}, Lcom/oplus/backup/sdk/common/utils/BRLog;->getModifiedPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/launcher/backup/backup/LauncherBackupPlugin;->getBackupDataModeMapFromDB()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_44

    const-string/jumbo p0, "prepare backupDataMode failed, backupDataModelMap is empty"

    invoke-static {p1, p0}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_44
    iget-object p1, p0, Lcom/android/launcher/backup/backup/LauncherBackupPlugin;->mLayoutBackupHelper:Lcom/android/launcher/backup/backup/LayoutBackupHelper;

    iget-object v1, p0, Lcom/android/launcher/backup/backup/LauncherBackupPlugin;->mSDLauncherBackupPath:Ljava/lang/String;

    invoke-virtual {p1, p0, v1}, Lcom/android/launcher/backup/backup/LayoutBackupHelper;->setBackupFilePath(Lcom/oplus/backup/sdk/component/plugin/AbstractPlugin;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher/backup/backup/LauncherBackupPlugin;->mLayoutBackupHelper:Lcom/android/launcher/backup/backup/LayoutBackupHelper;

    invoke-virtual {p1, v0}, Lcom/android/launcher/backup/backup/LayoutBackupHelper;->setBackupData(Landroid/util/ArrayMap;)V

    iget-object p1, p0, Lcom/android/launcher/backup/backup/LauncherBackupPlugin;->mLayoutBackupHelper:Lcom/android/launcher/backup/backup/LayoutBackupHelper;

    iget-boolean v0, p0, Lcom/android/launcher/backup/backup/LauncherBackupPlugin;->mIsBackupOneXmlOnly:Z

    invoke-virtual {p1, v0}, Lcom/android/launcher/backup/backup/LayoutBackupHelper;->onBackupStart(Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/launcher/backup/backup/LauncherBackupPlugin;->mLauncherBackupStarted:Z

    return-void
.end method
