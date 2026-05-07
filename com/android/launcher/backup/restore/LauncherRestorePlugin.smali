.class public Lcom/android/launcher/backup/restore/LauncherRestorePlugin;
.super Lcom/android/launcher/backup/LauncherBRBasePlugin;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "BR-Launcher_LauncherRestorePlugin"

.field private static sLauncherRestoreStarted:Z


# instance fields
.field public mIsRestoreSucceed:Z

.field public mIsStartSucceed:Z

.field private mLauncherRestoreHelper:Lcom/android/launcher/backup/restore/LayoutRestoreHelper;

.field public mLauncherRestorePluginInjector:Lcom/android/launcher/backup/OplusCustomLauncherRestorePluginInjector;

.field private mOnlyHasStandardData:Z

.field private mSDLauncherRestorePath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/android/launcher/backup/LauncherBRBasePlugin;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher/backup/restore/LauncherRestorePlugin;->mOnlyHasStandardData:Z

    iput-boolean v0, p0, Lcom/android/launcher/backup/restore/LauncherRestorePlugin;->mIsStartSucceed:Z

    iput-boolean v0, p0, Lcom/android/launcher/backup/restore/LauncherRestorePlugin;->mIsRestoreSucceed:Z

    return-void
.end method

.method private getRestoreDataModeListFromXml()Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/launcher/backup/mode/BackupDataModel;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    invoke-direct {p0}, Lcom/android/launcher/backup/restore/LauncherRestorePlugin;->initModeRestoreLayoutFileName()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-static {}, Lcom/android/launcher/mode/LauncherMode;->values()[Lcom/android/launcher/mode/LauncherMode;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_10
    if-ge v5, v3, :cond_3e

    aget-object v6, v2, v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/launcher/backup/restore/LauncherRestorePlugin;->mSDLauncherRestorePath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/android/launcher/backup/restore/LauncherRestorePlugin;->getXmlModeRestoreFilePathCompact(Lcom/android/launcher/mode/LauncherMode;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/oplus/backup/sdk/component/plugin/AbstractPlugin;->getFileDescriptor(Ljava/lang/String;)Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    :cond_3e
    invoke-static {v0}, Lcom/android/launcher/backup/restore/LayoutXMLParser;->getRestoreModeDataList(Landroid/util/ArrayMap;)Ljava/util/List;

    move-result-object v0

    iput-boolean v4, p0, Lcom/android/launcher/backup/restore/LauncherRestorePlugin;->mOnlyHasStandardData:Z

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_84

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher/backup/mode/BackupDataModel;

    sget-object v3, Lcom/android/launcher/mode/LauncherMode;->Standard:Lcom/android/launcher/mode/LauncherMode;

    invoke-virtual {v1}, Lcom/android/launcher/backup/mode/BackupDataModel;->getMode()Lcom/android/launcher/mode/LauncherMode;

    move-result-object v4

    if-ne v3, v4, :cond_84

    sget-object v3, Lcom/android/launcher/backup/restore/LauncherRestorePlugin;->TAG:Ljava/lang/String;

    const-string v4, "getRestoreDataFromXml，No drawer table, use standard table data as drawer data."

    invoke-static {v3, v4}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/android/launcher/backup/mode/BackupDataModel;

    invoke-direct {v3}, Lcom/android/launcher/backup/mode/BackupDataModel;-><init>()V

    sget-object v4, Lcom/android/launcher/mode/LauncherMode;->Drawer:Lcom/android/launcher/mode/LauncherMode;

    invoke-virtual {v3, v4}, Lcom/android/launcher/backup/mode/BackupDataModel;->setMode(Lcom/android/launcher/mode/LauncherMode;)V

    invoke-virtual {v1}, Lcom/android/launcher/backup/mode/BackupDataModel;->getDrawerModeSetting()Lcom/android/launcher/backup/mode/BackupRestoreContract$DrawerModeSetting;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/launcher/backup/mode/BackupDataModel;->setDrawerModeSetting(Lcom/android/launcher/backup/mode/BackupRestoreContract$DrawerModeSetting;)V

    invoke-virtual {v1}, Lcom/android/launcher/backup/mode/BackupDataModel;->getModeLayoutParameter()Lcom/android/launcher/backup/mode/BackupRestoreContract$ModeLayoutParameter;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/launcher/backup/mode/BackupDataModel;->setModeLayoutParameter(Lcom/android/launcher/backup/mode/BackupRestoreContract$ModeLayoutParameter;)V

    invoke-virtual {v1}, Lcom/android/launcher/backup/mode/BackupDataModel;->getLayoutMap()Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/android/launcher/backup/mode/BackupDataModel;->setLayoutMap(Landroid/util/SparseArray;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-boolean v2, p0, Lcom/android/launcher/backup/restore/LauncherRestorePlugin;->mOnlyHasStandardData:Z

    :cond_84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/launcher/backup/restore/LauncherRestorePlugin;->mSDLauncherRestorePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    const-string v3, "launcher_layout_parameters.xml"

    invoke-static {v1, v2, v3}, Landroidx/concurrent/futures/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher/backup/LauncherBRBasePlugin;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/oplus/backup/sdk/component/plugin/AbstractPlugin;->getFileDescriptor(Ljava/lang/String;)Ljava/io/FileDescriptor;

    move-result-object v1

    iget-object p0, p0, Lcom/android/launcher/backup/restore/LauncherRestorePlugin;->mLauncherRestorePluginInjector:Lcom/android/launcher/backup/OplusCustomLauncherRestorePluginInjector;

    invoke-static {v2, v1, p0}, Lcom/android/launcher/backup/restore/LayoutXMLParser;->parseDeviceLayoutParameter(Landroid/content/Context;Ljava/io/FileDescriptor;Lcom/android/launcher/backup/OplusCustomLauncherRestorePluginInjector;)Lcom/android/launcher/backup/mode/BackupRestoreContract$DeviceLayoutParameter;

    move-result-object p0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher/backup/mode/BackupDataModel;

    invoke-virtual {v2, p0}, Lcom/android/launcher/backup/mode/BackupDataModel;->setDeviceLayoutParameter(Lcom/android/launcher/backup/mode/BackupRestoreContract$DeviceLayoutParameter;)V

    goto :goto_a6

    :cond_b6
    return-object v0
.end method

.method private getXmlModeRestoreFilePathCompact(Lcom/android/launcher/mode/LauncherMode;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    sget-object v0, Lcom/android/launcher/mode/LauncherMode;->Standard:Lcom/android/launcher/mode/LauncherMode;

    if-ne p1, v0, :cond_6f

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/android/launcher/backup/restore/LauncherRestorePlugin;->mSDLauncherRestorePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    const-string v1, "launcher_oplus50_layout.xml"

    invoke-static {p1, v0, v1}, Landroidx/concurrent/futures/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oplus/backup/sdk/component/plugin/AbstractPlugin;->getFileDescriptor(Ljava/lang/String;)Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher/backup/util/LayoutXMLUtils;->isXmlAvailable(Ljava/io/FileDescriptor;)Z

    move-result v1

    if-eqz v1, :cond_22

    move-object p2, p1

    goto :goto_29

    :cond_22
    sget-object p1, Lcom/android/launcher/backup/restore/LauncherRestorePlugin;->TAG:Ljava/lang/String;

    const-string v1, "getXmlModeRestoreFilePathCompact, Oplus 50 layout xml not found"

    invoke-static {p1, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_29
    sget-object p1, Lcom/android/launcher/backup/backup/LauncherBackupPlugin;->LAUNCHER_OLD50_LAYOUT_XML:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_58

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/launcher/backup/restore/LauncherRestorePlugin;->mSDLauncherRestorePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oplus/backup/sdk/component/plugin/AbstractPlugin;->getFileDescriptor(Ljava/lang/String;)Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher/backup/util/LayoutXMLUtils;->isXmlAvailable(Ljava/io/FileDescriptor;)Z

    move-result p0

    if-eqz p0, :cond_51

    move-object p2, p1

    goto :goto_58

    :cond_51
    sget-object p0, Lcom/android/launcher/backup/restore/LauncherRestorePlugin;->TAG:Ljava/lang/String;

    const-string p1, "getXmlModeRestoreFilePathCompact, Old 50 layout xml not found"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_58
    :goto_58
    sget-object p0, Lcom/android/launcher/backup/restore/LauncherRestorePlugin;->TAG:Ljava/lang/String;

    const-string p1, "getXmlModeRestoreFilePathCompact, mode:standard restoreXmlFile: "

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p2}, Lcom/oplus/backup/sdk/common/utils/BRLog;->getModifiedPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_91

    :cond_6f
    sget-object p0, Lcom/android/launcher/backup/restore/LauncherRestorePlugin;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getXmlModeRestoreFilePathCompact, mode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " restoreXmlFile: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/oplus/backup/sdk/common/utils/BRLog;->getModifiedPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_91
    return-object p2
.end method

.method private initModeRestoreLayoutFileName()Landroid/util/ArrayMap;
    .registers 3
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

    const-string v1, "launcher_layout.xml"

    invoke-virtual {p0, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/launcher/mode/LauncherMode;->Drawer:Lcom/android/launcher/mode/LauncherMode;

    const-string v1, "launcher_draw_layout.xml"

    invoke-virtual {p0, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/launcher/mode/LauncherMode;->Simple:Lcom/android/launcher/mode/LauncherMode;

    const-string v1, "launcher_simple_layout.xml"

    invoke-virtual {p0, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public static isLauncherRestoreStarted()Z
    .registers 1

    sget-boolean v0, Lcom/android/launcher/backup/restore/LauncherRestorePlugin;->sLauncherRestoreStarted:Z

    return v0
.end method


# virtual methods
.method public create(Landroid/content/Context;Lcom/oplus/backup/sdk/component/BRPluginHandler;Lcom/oplus/backup/sdk/common/host/BREngineConfig;)V
    .registers 5

    new-instance v0, Lcom/android/launcher/backup/OplusCustomLauncherRestorePluginInjector;

    invoke-direct {v0}, Lcom/android/launcher/backup/OplusCustomLauncherRestorePluginInjector;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/backup/restore/LauncherRestorePlugin;->mLauncherRestorePluginInjector:Lcom/android/launcher/backup/OplusCustomLauncherRestorePluginInjector;

    invoke-virtual {v0, p1, p2, p3, p0}, Lcom/android/launcher3/backup/OplusBaseCustomLauncherRestorePluginInjector;->onCreate(Landroid/content/Context;Lcom/oplus/backup/sdk/component/BRPluginHandler;Lcom/oplus/backup/sdk/common/host/BREngineConfig;Lcom/android/launcher/backup/restore/LauncherRestorePlugin;)V

    new-instance p1, Lcom/android/launcher/backup/restore/LayoutRestoreHelper;

    invoke-direct {p1}, Lcom/android/launcher/backup/restore/LayoutRestoreHelper;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/backup/restore/LauncherRestorePlugin;->mLauncherRestoreHelper:Lcom/android/launcher/backup/restore/LayoutRestoreHelper;

    return-void
.end method

.method public destroy(Landroid/os/Bundle;)V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher/backup/restore/LauncherRestorePlugin;->mLauncherRestorePluginInjector:Lcom/android/launcher/backup/OplusCustomLauncherRestorePluginInjector;

    iget-object v1, p0, Lcom/android/launcher/backup/LauncherBRBasePlugin;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1, p0, v1}, Lcom/android/launcher3/backup/OplusBaseCustomLauncherRestorePluginInjector;->onDestroy(Landroid/os/Bundle;Lcom/android/launcher/backup/restore/LauncherRestorePlugin;Landroid/content/Context;)V

    sget-object p1, Lcom/android/launcher/backup/restore/LauncherRestorePlugin;->TAG:Ljava/lang/String;

    const-string v0, "destroy mIsRestoreSucceed = "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher/backup/restore/LauncherRestorePlugin;->mIsRestoreSucceed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/launcher/backup/restore/LauncherRestorePlugin;->mIsStartSucceed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3b

    iget-object p1, p0, Lcom/android/launcher/backup/restore/LauncherRestorePlugin;->mLauncherRestoreHelper:Lcom/android/launcher/backup/restore/LayoutRestoreHelper;

    iget-object v0, p0, Lcom/android/launcher/backup/LauncherBRBasePlugin;->mContext:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/android/launcher/backup/restore/LauncherRestorePlugin;->mIsRestoreSucceed:Z

    invoke-virtual {p1, v0, v2, v1}, Lcom/android/launcher/backup/restore/LayoutRestoreHelper;->onRestoreEnd(Landroid/content/Context;ZZ)V

    invoke-static {}, Lcom/android/launcher3/pullup/PullUpOperatorManager;->getInstance()Lcom/android/launcher3/pullup/PullUpOperatorManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/pullup/PullUpOperatorManager;->isSupportPullUp()Z

    move-result p1

    if-eqz p1, :cond_40

    invoke-static {}, Lcom/android/launcher3/pullup/PullUpOperatorManager;->getInstance()Lcom/android/launcher3/pullup/PullUpOperatorManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/pullup/PullUpOperatorManager;->refreshPullUpOpenState()V

    goto :goto_40

    :cond_3b
    const-string v0, "destroy, can\'t restore from xml file, xml file parse error, just return!"

    invoke-static {p1, v0}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_40
    :goto_40
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/launcher/backup/restore/LauncherRestorePlugin;->mLauncherRestorePluginInjector:Lcom/android/launcher/backup/OplusCustomLauncherRestorePluginInjector;

    iput-object p1, p0, Lcom/android/launcher/backup/restore/LauncherRestorePlugin;->mLauncherRestoreHelper:Lcom/android/launcher/backup/restore/LayoutRestoreHelper;

    iput-object p1, p0, Lcom/android/launcher/backup/restore/LauncherRestorePlugin;->mSDLauncherRestorePath:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/launcher/backup/restore/LauncherRestorePlugin;->mOnlyHasStandardData:Z

    iput-boolean v1, p0, Lcom/android/launcher/backup/restore/LauncherRestorePlugin;->mIsStartSucceed:Z

    iput-boolean v1, p0, Lcom/android/launcher/backup/restore/LauncherRestorePlugin;->mIsRestoreSucceed:Z

    sput-boolean v1, Lcom/android/launcher/backup/restore/LauncherRestorePlugin;->sLauncherRestoreStarted:Z

    invoke-static {}, Lcom/android/launcher/backup/restore/AppRestoreGuardian;->getInstance()Lcom/android/launcher/backup/restore/AppRestoreGuardian;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/backup/restore/AppRestoreGuardian;->onLayoutRestoreEnd()V

    return-void
.end method

.method public getBREngineConfig()Lcom/oplus/backup/sdk/common/host/BREngineConfig;
    .registers 1

    invoke-super {p0}, Lcom/oplus/backup/sdk/component/plugin/AbstractPlugin;->getBREngineConfig()Lcom/oplus/backup/sdk/common/host/BREngineConfig;

    move-result-object p0

    return-object p0
.end method

.method public prepare(Landroid/os/Bundle;)V
    .registers 4

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher/backup/restore/LauncherRestorePlugin;->sLauncherRestoreStarted:Z

    iget-object v0, p0, Lcom/android/launcher/backup/restore/LauncherRestorePlugin;->mLauncherRestorePluginInjector:Lcom/android/launcher/backup/OplusCustomLauncherRestorePluginInjector;

    iget-object v1, p0, Lcom/android/launcher/backup/LauncherBRBasePlugin;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1, p0, v1}, Lcom/android/launcher3/backup/OplusBaseCustomLauncherRestorePluginInjector;->onPrepare(Landroid/os/Bundle;Lcom/android/launcher/backup/restore/LauncherRestorePlugin;Landroid/content/Context;)Landroid/os/Bundle;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher/backup/restore/LauncherRestorePlugin;->getBREngineConfig()Lcom/oplus/backup/sdk/common/host/BREngineConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/backup/sdk/common/host/BREngineConfig;->getRestoreRootPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    const-string v1, "Layout"

    invoke-static {p1, v0, v1}, Landroidx/concurrent/futures/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher/backup/restore/LauncherRestorePlugin;->mSDLauncherRestorePath:Ljava/lang/String;

    sget-object p1, Lcom/android/launcher/backup/restore/LauncherRestorePlugin;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "prepare restorePath = "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher/backup/restore/LauncherRestorePlugin;->mSDLauncherRestorePath:Ljava/lang/String;

    invoke-static {v1}, Lcom/oplus/backup/sdk/common/utils/BRLog;->getModifiedPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/launcher/backup/restore/LauncherRestorePlugin;->getRestoreDataModeListFromXml()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4e

    const-string/jumbo p0, "prepare restoreDataMode failed, restoreDataModeList is empty"

    invoke-static {p1, p0}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4e
    iget-object p1, p0, Lcom/android/launcher/backup/restore/LauncherRestorePlugin;->mLauncherRestoreHelper:Lcom/android/launcher/backup/restore/LayoutRestoreHelper;

    invoke-virtual {p1, v0}, Lcom/android/launcher/backup/restore/LayoutRestoreHelper;->setRestoreData(Ljava/util/List;)V

    iget-object p1, p0, Lcom/android/launcher/backup/restore/LauncherRestorePlugin;->mLauncherRestoreHelper:Lcom/android/launcher/backup/restore/LayoutRestoreHelper;

    iget-object v0, p0, Lcom/android/launcher/backup/LauncherBRBasePlugin;->mContext:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/android/launcher/backup/restore/LauncherRestorePlugin;->mOnlyHasStandardData:Z

    invoke-virtual {p1, v0, v1}, Lcom/android/launcher/backup/restore/LayoutRestoreHelper;->onRestoreStart(Landroid/content/Context;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/launcher/backup/restore/LauncherRestorePlugin;->mIsStartSucceed:Z

    return-void
.end method

.method public restore(Landroid/os/Bundle;)V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher/backup/restore/LauncherRestorePlugin;->mLauncherRestorePluginInjector:Lcom/android/launcher/backup/OplusCustomLauncherRestorePluginInjector;

    iget-object v1, p0, Lcom/android/launcher/backup/LauncherBRBasePlugin;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1, p0, v1}, Lcom/android/launcher3/backup/OplusBaseCustomLauncherRestorePluginInjector;->onRestore(Landroid/os/Bundle;Lcom/android/launcher/backup/restore/LauncherRestorePlugin;Landroid/content/Context;)V

    sget-object p1, Lcom/android/launcher/backup/restore/LauncherRestorePlugin;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "restore mIsStartSucceed = "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher/backup/restore/LauncherRestorePlugin;->mIsStartSucceed:Z

    invoke-static {v0, v1, p1}, Lcom/android/common/config/b;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/launcher/backup/restore/LauncherRestorePlugin;->mIsStartSucceed:Z

    if-eqz p1, :cond_28

    iget-object p1, p0, Lcom/android/launcher/backup/restore/LauncherRestorePlugin;->mLauncherRestoreHelper:Lcom/android/launcher/backup/restore/LayoutRestoreHelper;

    iget-object v0, p0, Lcom/android/launcher/backup/LauncherBRBasePlugin;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/android/launcher/backup/restore/LayoutRestoreHelper;->onRestoring(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/launcher/backup/restore/LauncherRestorePlugin;->mIsRestoreSucceed:Z

    if-eqz p1, :cond_28

    const/4 p1, 0x1

    iput p1, p0, Lcom/android/launcher/backup/LauncherBRBasePlugin;->mCompletedCount:I

    :cond_28
    return-void
.end method
