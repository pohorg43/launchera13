.class public Lcom/android/launcher/backup/restore/LayoutRestoreHelper;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final RESTORE_APP_END:Ljava/lang/String; = "com.oplus.backuprestore.restore_app_end"

.field public static final RESTORE_APP_START:Ljava/lang/String; = "com.oplus.backuprestore.restore_app_start"

.field private static final TAG:Ljava/lang/String; = "BR-Launcher_LayoutRestoreHelper"

.field private static sIsRestoreToFirstPage:Z


# instance fields
.field private mIsRestoreSucceed:Z

.field private mNewCellCountX:I

.field private mNewCellCountY:I

.field private mNewIsCompactLayout:Z

.field private mNewIsExpandDockOn:Z

.field private mNewIsIconFallenOn:Z

.field private mOnlyHasStandardData:Z

.field private mRestoreDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher/backup/mode/BackupDataModel;",
            ">;"
        }
    .end annotation
.end field

.field private mRestoreMode:Lcom/android/launcher/mode/LauncherMode;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/backup/restore/LayoutRestoreHelper;->mRestoreDataList:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher/backup/restore/LayoutRestoreHelper;->mOnlyHasStandardData:Z

    iput-boolean v0, p0, Lcom/android/launcher/backup/restore/LayoutRestoreHelper;->mIsRestoreSucceed:Z

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher/backup/restore/LayoutRestoreHelper;->lambda$reloadLauncherMode$2(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic b(Landroid/content/Context;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher/backup/restore/LayoutRestoreHelper;->lambda$onRestoreEnd$1(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic c(Landroid/content/Context;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher/backup/restore/LayoutRestoreHelper;->lambda$onRestoreStart$0(Landroid/content/Context;)V

    return-void
.end method

.method private deleteInvalidApplications(Landroid/content/Context;)V
    .registers 9

    iget-object p0, p0, Lcom/android/launcher/backup/restore/LayoutRestoreHelper;->mRestoreDataList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/backup/mode/BackupDataModel;

    invoke-virtual {v0}, Lcom/android/launcher/backup/mode/BackupDataModel;->getMode()Lcom/android/launcher/mode/LauncherMode;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/launcher/backup/util/BackupRestoreUtils;->deleteInvalidAppsWhenRestore(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sget-object v4, Lcom/android/launcher/backup/restore/LayoutRestoreHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "onRestoring: deleteInvalidApplications mode:"

    invoke-static {v5}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/launcher/backup/mode/BackupDataModel;->getMode()Lcom/android/launcher/mode/LauncherMode;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", deleteId in db: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1e

    :cond_4e
    return-void
.end method

.method public static getRestoreToFirstPage()Z
    .registers 1

    sget-boolean v0, Lcom/android/launcher/backup/restore/LayoutRestoreHelper;->sIsRestoreToFirstPage:Z

    return v0
.end method

.method private static synthetic lambda$onRestoreEnd$1(Landroid/content/Context;)V
    .registers 3

    sget-object v0, Lcom/android/launcher/backup/restore/LayoutRestoreHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onRestoreEnd: AddCardManager.onRestoreStateEnd start!"

    invoke-static {v0, v1}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher3/ota/AddCardManager;->onRestoreStateEnd(Landroid/content/Context;)V

    const-string/jumbo p0, "onRestoreEnd: AddCardManager.onRestoreStateEnd end!"

    invoke-static {v0, p0}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$onRestoreStart$0(Landroid/content/Context;)V
    .registers 3

    sget-object v0, Lcom/android/launcher/backup/restore/LayoutRestoreHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onRestoreStart: AddCardManager.onRestoreStateStart start!"

    invoke-static {v0, v1}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher3/ota/AddCardManager;->onRestoreStateStart(Landroid/content/Context;)V

    const-string/jumbo p0, "onRestoreStart: AddCardManager.onRestoreStateStart end!"

    invoke-static {v0, p0}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$reloadLauncherMode$2(Landroid/content/Context;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherModel;->resetLoadedFlag()V

    return-void
.end method

.method private reloadLauncherMode(Landroid/content/Context;Z)V
    .registers 5

    sget-object p0, Lcom/android/launcher/backup/restore/LayoutRestoreHelper;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onRestoreEnd: reloadLauncherMode isRestoreSucceed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/android/launcher/backup/restore/LayoutRestoreHelper;->setRestoreToFirstPage(Z)V

    sget-object p0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v0, Ls/c;

    const/4 v1, 0x3

    invoke-direct {v0, p1, v1}, Ls/c;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    if-eqz p2, :cond_2a

    invoke-static {p1}, Lcom/android/launcher/layout/LayoutUtilsManager;->initLayoutArrangementType(Landroid/content/Context;)V

    :cond_2a
    sget-boolean p0, Lcom/android/common/config/FeatureOption;->isRLMDevice:Z

    if-eqz p0, :cond_39

    sget-object p0, Lcom/android/launcher/bottomsearch/BottomSearchManager;->INSTANCE:Lcom/android/launcher/bottomsearch/BottomSearchManager;

    invoke-virtual {p0}, Lcom/android/launcher/bottomsearch/BottomSearchManager;->featureSupport()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/bottomsearch/BottomSearchManager;->onRestoreLauncher(Landroid/content/Context;Z)V

    :cond_39
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "restore_result"

    invoke-virtual {p0, v0, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "checkAfterRestore"

    invoke-static {p1, p2, p0}, Lcom/android/launcher3/LauncherSettings$Settings;->call(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/mode/LauncherModeManager;->changedMode()V

    return-void
.end method

.method private restoreDrawerModeSetting(Landroid/content/Context;)V
    .registers 5

    iget-object p0, p0, Lcom/android/launcher/backup/restore/LayoutRestoreHelper;->mRestoreDataList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/backup/mode/BackupDataModel;

    if-eqz v0, :cond_6

    sget-object v1, Lcom/android/launcher/mode/LauncherMode;->Drawer:Lcom/android/launcher/mode/LauncherMode;

    invoke-virtual {v0}, Lcom/android/launcher/backup/mode/BackupDataModel;->getMode()Lcom/android/launcher/mode/LauncherMode;

    move-result-object v2

    if-ne v1, v2, :cond_6

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x0

    :goto_1e
    if-eqz v0, :cond_27

    invoke-virtual {v0}, Lcom/android/launcher/backup/mode/BackupDataModel;->getDrawerModeSetting()Lcom/android/launcher/backup/mode/BackupRestoreContract$DrawerModeSetting;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/launcher/backup/restore/LayoutRestoreUtils;->setDrawerModeSetting(Landroid/content/Context;Lcom/android/launcher/backup/mode/BackupRestoreContract$DrawerModeSetting;)V

    :cond_27
    return-void
.end method

.method private restoreLauncherModeLayout(Landroid/content/Context;)V
    .registers 8

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/mode/LauncherModeManager;->getCurLauncherMode()Lcom/android/launcher/mode/LauncherMode;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher/backup/restore/LayoutRestoreHelper;->mRestoreMode:Lcom/android/launcher/mode/LauncherMode;

    invoke-static {p1, v1, v0}, Lcom/android/launcher/backup/restore/LayoutRestoreUtils;->notifyChangeSimpleModeStateIfNeeded(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;Lcom/android/launcher/mode/LauncherMode;)V

    iget-object v1, p0, Lcom/android/launcher/backup/restore/LayoutRestoreHelper;->mRestoreDataList:Ljava/util/List;

    iget-object v2, p0, Lcom/android/launcher/backup/restore/LayoutRestoreHelper;->mRestoreMode:Lcom/android/launcher/mode/LauncherMode;

    iget v3, p0, Lcom/android/launcher/backup/restore/LayoutRestoreHelper;->mNewCellCountX:I

    iget v4, p0, Lcom/android/launcher/backup/restore/LayoutRestoreHelper;->mNewCellCountY:I

    invoke-static {v1, v2, v3, v4}, Lcom/android/launcher/backup/restore/LayoutRestoreUtils;->restoreToDefaultModeWhenNotSupportInLocal(Ljava/util/List;Lcom/android/launcher/mode/LauncherMode;II)Ly2/m;

    move-result-object v1

    iget-object v2, v1, Ly2/m;->a:Ljava/lang/Object;

    check-cast v2, Lcom/android/launcher/mode/LauncherMode;

    iput-object v2, p0, Lcom/android/launcher/backup/restore/LayoutRestoreHelper;->mRestoreMode:Lcom/android/launcher/mode/LauncherMode;

    iget-object v2, v1, Ly2/m;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/android/launcher/backup/restore/LayoutRestoreHelper;->mNewCellCountX:I

    iget-object v1, v1, Ly2/m;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/android/launcher/backup/restore/LayoutRestoreHelper;->mNewCellCountY:I

    iget v2, p0, Lcom/android/launcher/backup/restore/LayoutRestoreHelper;->mNewCellCountX:I

    invoke-static {v2, v1}, Lcom/android/launcher/backup/restore/OplusRestoreCellLayoutCompat;->getDrawerAndStandardCompatibleCellForRestore(II)[I

    move-result-object v1

    const-string/jumbo v2, "onRestoring: restoreLauncherModeLayout:"

    const-string v3, " mNewCellCountX: "

    invoke-static {v2, v3}, Landroid/support/v4/media/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/launcher/backup/restore/LayoutRestoreHelper;->mNewCellCountX:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mNewCellCountY: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/launcher/backup/restore/LayoutRestoreHelper;->mNewCellCountY:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", drawerAndStandardCompatibleCellXY: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", mRestoreMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/launcher/backup/restore/LayoutRestoreHelper;->mRestoreMode:Lcom/android/launcher/mode/LauncherMode;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", currentMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", mOnlyHasStandardData: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/launcher/backup/restore/LayoutRestoreHelper;->mOnlyHasStandardData:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/launcher/backup/restore/LayoutRestoreHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/launcher/backup/restore/LayoutRestoreHelper;->mRestoreMode:Lcom/android/launcher/mode/LauncherMode;

    const/4 v3, 0x0

    if-eq v0, v2, :cond_90

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/launcher/backup/restore/LayoutRestoreHelper;->mRestoreMode:Lcom/android/launcher/mode/LauncherMode;

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher/mode/LauncherModeManager;->setCurLauncherMode(Lcom/android/launcher/mode/LauncherMode;Z)V

    :cond_90
    iget-object v0, p0, Lcom/android/launcher/backup/restore/LayoutRestoreHelper;->mRestoreMode:Lcom/android/launcher/mode/LauncherMode;

    sget-object v2, Lcom/android/launcher/mode/LauncherMode;->Simple:Lcom/android/launcher/mode/LauncherMode;

    const/4 v4, 0x1

    if-ne v0, v2, :cond_a9

    iget-object v2, p0, Lcom/android/launcher/backup/restore/LayoutRestoreHelper;->mRestoreDataList:Ljava/util/List;

    invoke-static {v2, v0}, Lcom/android/launcher/backup/restore/OplusRestoreCellLayoutCompat;->getSimpleCompatibleCellForRestore(Ljava/util/List;Lcom/android/launcher/mode/LauncherMode;)[I

    move-result-object v0

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v2

    aget v5, v0, v3

    aget v0, v0, v4

    invoke-virtual {v2, v5, v0}, Lcom/android/launcher/mode/LauncherModeManager;->saveCurrentModeLayout(II)V

    goto :goto_b4

    :cond_a9
    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v0

    aget v2, v1, v3

    aget v5, v1, v4

    invoke-virtual {v0, v2, v5}, Lcom/android/launcher/mode/LauncherModeManager;->saveCurrentModeLayout(II)V

    :goto_b4
    iget-boolean v0, p0, Lcom/android/launcher/backup/restore/LayoutRestoreHelper;->mOnlyHasStandardData:Z

    if-eqz v0, :cond_c0

    aget p0, v1, v3

    aget v0, v1, v4

    invoke-static {p1, p0, v0}, Lcom/android/launcher/backup/restore/LayoutRestoreUtils;->saveDrawerAndStandardModeLayoutOldOS(Landroid/content/Context;II)V

    return-void

    :cond_c0
    iget-object v0, p0, Lcom/android/launcher/backup/restore/LayoutRestoreHelper;->mRestoreDataList:Ljava/util/List;

    iget-object p0, p0, Lcom/android/launcher/backup/restore/LayoutRestoreHelper;->mRestoreMode:Lcom/android/launcher/mode/LauncherMode;

    invoke-static {p1, v0, p0}, Lcom/android/launcher/backup/restore/LayoutRestoreUtils;->saveOtherModeLayoutNewOS(Landroid/content/Context;Ljava/util/List;Lcom/android/launcher/mode/LauncherMode;)V

    return-void
.end method

.method private restoreParameter(Landroid/content/Context;)V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher/backup/restore/LayoutRestoreHelper;->mRestoreDataList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/backup/mode/BackupDataModel;

    invoke-virtual {v0}, Lcom/android/launcher/backup/mode/BackupDataModel;->getDeviceLayoutParameter()Lcom/android/launcher/backup/mode/BackupRestoreContract$DeviceLayoutParameter;

    move-result-object v0

    if-nez v0, :cond_13

    invoke-static {p1}, Lcom/android/launcher/backup/backup/LauncherDBParser;->parseDeviceLayoutParameter(Landroid/content/Context;)Lcom/android/launcher/backup/mode/BackupRestoreContract$DeviceLayoutParameter;

    move-result-object v0

    :cond_13
    iget p1, v0, Lcom/android/launcher/backup/mode/BackupRestoreContract$ModeLayoutParameter;->mCellXCount:I

    iput p1, p0, Lcom/android/launcher/backup/restore/LayoutRestoreHelper;->mNewCellCountX:I

    iget p1, v0, Lcom/android/launcher/backup/mode/BackupRestoreContract$ModeLayoutParameter;->mCellYCount:I

    iput p1, p0, Lcom/android/launcher/backup/restore/LayoutRestoreHelper;->mNewCellCountY:I

    iget-boolean p1, v0, Lcom/android/launcher/backup/mode/BackupRestoreContract$DeviceLayoutParameter;->mIsCompact:Z

    iput-boolean p1, p0, Lcom/android/launcher/backup/restore/LayoutRestoreHelper;->mNewIsCompactLayout:Z

    iget-boolean p1, v0, Lcom/android/launcher/backup/mode/BackupRestoreContract$DeviceLayoutParameter;->mIsIconFallenOn:Z

    iput-boolean p1, p0, Lcom/android/launcher/backup/restore/LayoutRestoreHelper;->mNewIsIconFallenOn:Z

    iget-boolean p1, v0, Lcom/android/launcher/backup/mode/BackupRestoreContract$DeviceLayoutParameter;->mIsDockExpandOn:Z

    iput-boolean p1, p0, Lcom/android/launcher/backup/restore/LayoutRestoreHelper;->mNewIsExpandDockOn:Z

    iget-object p1, v0, Lcom/android/launcher/backup/mode/BackupRestoreContract$DeviceLayoutParameter;->mCurrentMode:Lcom/android/launcher/mode/LauncherMode;

    iput-object p1, p0, Lcom/android/launcher/backup/restore/LayoutRestoreHelper;->mRestoreMode:Lcom/android/launcher/mode/LauncherMode;

    const-string/jumbo p1, "onRestoring: restoreParameter:"

    const-string v0, " mNewCellCountX: "

    invoke-static {p1, v0}, Landroid/support/v4/media/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/android/launcher/backup/restore/LayoutRestoreHelper;->mNewCellCountX:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mNewCellCountY: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/launcher/backup/restore/LayoutRestoreHelper;->mNewCellCountY:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mNewIsCompactLayout: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/launcher/backup/restore/LayoutRestoreHelper;->mNewIsCompactLayout:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mNewIsIconFallenOn: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/launcher/backup/restore/LayoutRestoreHelper;->mNewIsIconFallenOn:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mNewIsExpandDockOn: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/launcher/backup/restore/LayoutRestoreHelper;->mNewIsExpandDockOn:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mRestoreMode: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/launcher/backup/restore/LayoutRestoreHelper;->mRestoreMode:Lcom/android/launcher/mode/LauncherMode;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/android/launcher/backup/restore/LayoutRestoreHelper;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setRestoreToFirstPage(Z)V
    .registers 1

    sput-boolean p0, Lcom/android/launcher/backup/restore/LayoutRestoreHelper;->sIsRestoreToFirstPage:Z

    return-void
.end method

.method private switchDrawerAndStandardLayout(Landroid/content/Context;)V
    .registers 17

    move-object v0, p0

    move-object/from16 v7, p1

    const-string v1, "layout_is_compact"

    const/4 v8, 0x0

    invoke-static {v7, v1, v8}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    sget-object v2, Lcom/android/launcher/settings/LauncherIconFallenFragment;->ICON_FALLEN_DEFAULT_VALUE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const-string/jumbo v3, "sp_key_icon_fallen_switch"

    invoke-static {v7, v3, v2}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    sget-object v3, Lcom/android/launcher/settings/LauncherDockExpandFragment;->DOCK_EXPAND_DEFAULT_VALUE:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const-string/jumbo v4, "sp_key_dock_expand_switch"

    invoke-static {v7, v4, v3}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    iget-object v4, v0, Lcom/android/launcher/backup/restore/LayoutRestoreHelper;->mRestoreDataList:Ljava/util/List;

    iget-object v5, v0, Lcom/android/launcher/backup/restore/LayoutRestoreHelper;->mRestoreMode:Lcom/android/launcher/mode/LauncherMode;

    iget v6, v0, Lcom/android/launcher/backup/restore/LayoutRestoreHelper;->mNewCellCountX:I

    iget v9, v0, Lcom/android/launcher/backup/restore/LayoutRestoreHelper;->mNewCellCountY:I

    invoke-static {v4, v5, v6, v9}, Lcom/android/launcher/backup/restore/LayoutRestoreUtils;->getDrawerAndStandardBackupLayout(Ljava/util/List;Lcom/android/launcher/mode/LauncherMode;II)[I

    move-result-object v4

    iget v5, v0, Lcom/android/launcher/backup/restore/LayoutRestoreHelper;->mNewCellCountX:I

    iget v6, v0, Lcom/android/launcher/backup/restore/LayoutRestoreHelper;->mNewCellCountY:I

    invoke-static {v5, v6}, Lcom/android/launcher/backup/restore/OplusRestoreCellLayoutCompat;->getDrawerAndStandardCompatibleCellForRestore(II)[I

    move-result-object v9

    invoke-static/range {p1 .. p1}, Lcom/android/launcher/UiConfig;->getCurDrawerAndStandardLayoutSettings(Landroid/content/Context;)[I

    move-result-object v5

    aget v6, v4, v8

    const/4 v10, 0x1

    aget v11, v4, v10

    invoke-static {v6, v11}, Lcom/android/launcher/backup/restore/OplusRestoreCellLayoutCompat;->isLayoutSupportInLocalForCompatOtaAndRestore(II)Z

    move-result v6

    aget v11, v5, v8

    aget v12, v9, v8

    if-ne v11, v12, :cond_54

    aget v11, v5, v10

    aget v12, v9, v10

    if-eq v11, v12, :cond_52

    goto :goto_54

    :cond_52
    move v11, v8

    goto :goto_55

    :cond_54
    :goto_54
    move v11, v10

    :goto_55
    if-eqz v6, :cond_5c

    if-eqz v11, :cond_5a

    goto :goto_5c

    :cond_5a
    move v12, v8

    goto :goto_5d

    :cond_5c
    :goto_5c
    move v12, v10

    :goto_5d
    const-string/jumbo v13, "onRestoring: switchDrawerAndStandardLayout:"

    const-string v14, " backupCellXY: "

    invoke-static {v13, v14}, Landroid/support/v4/media/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v4}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ", targetCellXY: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ", currentCellXY: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", isBackupLayoutSupportInLocal: "

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", isTargetLayoutNotSameAsCurrent: "

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", isNeedSwitchLayout: "

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", mNewIsCompactLayout: "

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v0, Lcom/android/launcher/backup/restore/LayoutRestoreHelper;->mNewIsCompactLayout:Z

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", mNewIsIconFallenOn: "

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v0, Lcom/android/launcher/backup/restore/LayoutRestoreHelper;->mNewIsIconFallenOn:Z

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", mNewIsExpandDockOn: "

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v0, Lcom/android/launcher/backup/restore/LayoutRestoreHelper;->mNewIsExpandDockOn:Z

    const-string v11, ", isCurrentCompactLayout: "

    const-string v14, ", isCurrentIconFallenOn: "

    invoke-static {v13, v5, v11, v1, v14}, Lcom/android/launcher/g0;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isCurrentDockExpandOn: "

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/launcher/backup/restore/LayoutRestoreHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v3, v0, Lcom/android/launcher/backup/restore/LayoutRestoreHelper;->mNewIsCompactLayout:Z

    if-eqz v3, :cond_10c

    if-eqz v12, :cond_fd

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onRestoring: switchCellsLayout when isCompact and needSwitch! isBackupLayoutSupportInLocal: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v6, :cond_f5

    invoke-static {v7, v9, v4, v8}, Lcom/android/common/util/LauncherLayoutUtils;->switchCellsLayout(Landroid/content/Context;[I[IZ)Z

    move-result v1

    goto :goto_f9

    :cond_f5
    invoke-static {v7, v9, v8}, Lcom/android/common/util/LauncherLayoutUtils;->switchCellsLayout(Landroid/content/Context;[IZ)Z

    move-result v1

    :goto_f9
    iput-boolean v1, v0, Lcom/android/launcher/backup/restore/LayoutRestoreHelper;->mIsRestoreSucceed:Z

    goto/16 :goto_16d

    :cond_fd
    if-nez v1, :cond_16d

    const-string/jumbo v1, "onRestoring: doAutoFill when isCompact but no needSwitch!"

    invoke-static {v2, v1}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Lcom/android/common/util/LauncherLayoutUtils;->doAutoFill(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/launcher/backup/restore/LayoutRestoreHelper;->mIsRestoreSucceed:Z

    goto :goto_16d

    :cond_10c
    if-eqz v12, :cond_16d

    if-nez v6, :cond_143

    iget-object v1, v0, Lcom/android/launcher/backup/restore/LayoutRestoreHelper;->mRestoreDataList:Ljava/util/List;

    iget-object v3, v0, Lcom/android/launcher/backup/restore/LayoutRestoreHelper;->mRestoreMode:Lcom/android/launcher/mode/LauncherMode;

    invoke-static {v1, v3}, Lcom/android/launcher/backup/restore/LayoutRestoreUtils;->getAnotherRestoreModesExceptSimple(Ljava/util/List;Lcom/android/launcher/mode/LauncherMode;)Lcom/android/launcher/mode/LauncherMode;

    move-result-object v5

    const-string/jumbo v1, "onRestoring: switchCellsLayout when noCompact but needSwitch, and is not supportInLocal, we need fill "

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v0, Lcom/android/launcher/backup/restore/LayoutRestoreHelper;->mRestoreMode:Lcom/android/launcher/mode/LauncherMode;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " and "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x1

    const/4 v11, 0x0

    move-object/from16 v1, p1

    move-object v2, v9

    move-object v3, v4

    move-object v4, v5

    move v5, v6

    move v6, v11

    invoke-static/range {v1 .. v6}, Lcom/android/common/util/LauncherLayoutUtils;->switchCellsLayout(Landroid/content/Context;[I[ILcom/android/launcher/mode/LauncherMode;ZZ)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/launcher/backup/restore/LayoutRestoreHelper;->mIsRestoreSucceed:Z

    goto :goto_16d

    :cond_143
    const-string/jumbo v1, "onRestoring: do nothing when noCompact but needSwitch, and is supportInLocal"

    invoke-static {v2, v1}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/launcher/backup/restore/LayoutRestoreHelper;->mRestoreDataList:Ljava/util/List;

    if-eqz v1, :cond_16d

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_16d

    iget-object v1, v0, Lcom/android/launcher/backup/restore/LayoutRestoreHelper;->mRestoreDataList:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher/backup/mode/BackupDataModel;

    invoke-static {v1}, Lcom/android/launcher/backup/mode/BackupDataModel;->isLayoutMapContentEmpty(Lcom/android/launcher/backup/mode/BackupDataModel;)Z

    move-result v1

    if-eqz v1, :cond_16d

    const-string/jumbo v1, "onRestoring: BackupData is Empty, Rescue out range item with switch layout!"

    invoke-static {v2, v1}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v7, v9, v10}, Lcom/android/common/util/LauncherLayoutUtils;->switchCellsLayout(Landroid/content/Context;[IZ)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/launcher/backup/restore/LayoutRestoreHelper;->mIsRestoreSucceed:Z

    :cond_16d
    :goto_16d
    iget-boolean v1, v0, Lcom/android/launcher/backup/restore/LayoutRestoreHelper;->mIsRestoreSucceed:Z

    aget v2, v9, v8

    aget v3, v9, v10

    iget-boolean v4, v0, Lcom/android/launcher/backup/restore/LayoutRestoreHelper;->mNewIsCompactLayout:Z

    iget-boolean v5, v0, Lcom/android/launcher/backup/restore/LayoutRestoreHelper;->mNewIsIconFallenOn:Z

    iget-boolean v6, v0, Lcom/android/launcher/backup/restore/LayoutRestoreHelper;->mNewIsExpandDockOn:Z

    move-object/from16 v0, p1

    invoke-static/range {v0 .. v6}, Lcom/android/launcher/backup/restore/LayoutRestoreUtils;->saveDrawerAndStandardSwitchedLayoutInfo(Landroid/content/Context;ZIIZZZ)V

    return-void
.end method


# virtual methods
.method public onRestoreEnd(Landroid/content/Context;ZZ)V
    .registers 8

    sget-object v0, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Ls/c;

    const/4 v2, 0x4

    invoke-direct {v1, p1, v2}, Ls/c;-><init>(Landroid/content/Context;I)V

    const-wide/16 v2, 0x1e

    invoke-static {v0, v1, v2, v3}, Lcom/android/launcher3/ota/AddCardUtils;->runTaskBlockAndWait(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;J)V

    sget-object v0, Lcom/android/launcher/backup/restore/LayoutRestoreHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onRestoreEnd: AddCardManager.onRestoreStateEnd done!"

    invoke-static {v0, v1}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/android/launcher/backup/restore/LayoutRestoreHelper;->reloadLauncherMode(Landroid/content/Context;Z)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onRestoreEnd: Success: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", isFromCloud: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher/backup/restore/LayoutRestoreHelper;->mRestoreDataList:Ljava/util/List;

    const/4 p2, 0x0

    if-eqz p1, :cond_3f

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iput-object p2, p0, Lcom/android/launcher/backup/restore/LayoutRestoreHelper;->mRestoreDataList:Ljava/util/List;

    :cond_3f
    iput-object p2, p0, Lcom/android/launcher/backup/restore/LayoutRestoreHelper;->mRestoreMode:Lcom/android/launcher/mode/LauncherMode;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher/backup/restore/LayoutRestoreHelper;->mOnlyHasStandardData:Z

    iput-boolean p1, p0, Lcom/android/launcher/backup/restore/LayoutRestoreHelper;->mIsRestoreSucceed:Z

    sget-object p0, Lcom/android/common/util/LauncherModeUtil;->INSTANCE:Lcom/android/common/util/LauncherModeUtil;

    invoke-virtual {p0, p1}, Lcom/android/common/util/LauncherModeUtil;->setMSimpleModeChangedFromRestore(Z)V

    sget-object p0, Lcom/android/launcher/backup/restore/OplusRestoreComponentCompat;->Companion:Lcom/android/launcher/backup/restore/OplusRestoreComponentCompat$Companion;

    invoke-virtual {p0}, Lcom/android/launcher/backup/restore/OplusRestoreComponentCompat$Companion;->getInstance()Lcom/android/launcher/backup/restore/OplusRestoreComponentCompat;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/backup/restore/OplusRestoreComponentCompat;->clear()V

    return-void
.end method

.method public onRestoreStart(Landroid/content/Context;Z)Z
    .registers 6

    iget-object v0, p0, Lcom/android/launcher/backup/restore/LayoutRestoreHelper;->mRestoreDataList:Ljava/util/List;

    if-eqz v0, :cond_57

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_57

    :cond_b
    iput-boolean p2, p0, Lcom/android/launcher/backup/restore/LayoutRestoreHelper;->mOnlyHasStandardData:Z

    invoke-static {p1}, Lcom/android/launcher/backup/restore/LayoutRestoreUtils;->clearAllWidgetsInWidgetHost(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/android/launcher/backup/restore/LayoutRestoreUtils;->stopCurrentLoadTask(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/android/launcher/backup/restore/LayoutRestoreUtils;->deleteDataInTableNewInstall(Landroid/content/Context;)V

    sget-object p2, Lcom/android/launcher/backup/restore/OplusRestoreComponentCompat;->Companion:Lcom/android/launcher/backup/restore/OplusRestoreComponentCompat$Companion;

    invoke-virtual {p2}, Lcom/android/launcher/backup/restore/OplusRestoreComponentCompat$Companion;->getInstance()Lcom/android/launcher/backup/restore/OplusRestoreComponentCompat;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/launcher/backup/restore/OplusRestoreComponentCompat;->init(Landroid/content/Context;)V

    sget-object p2, Lcom/android/launcher/backup/restore/LayoutRestoreHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onRestoreStart: mOnlyHasStandardData: "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher/backup/restore/LayoutRestoreHelper;->mOnlyHasStandardData:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mRestoreDataList.size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/launcher/backup/restore/LayoutRestoreHelper;->mRestoreDataList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v0, Ls/c;

    const/4 v1, 0x5

    invoke-direct {v0, p1, v1}, Ls/c;-><init>(Landroid/content/Context;I)V

    const-wide/16 v1, 0x1e

    invoke-static {p0, v0, v1, v2}, Lcom/android/launcher3/ota/AddCardUtils;->runTaskBlockAndWait(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;J)V

    const-string/jumbo p0, "onRestoreStart: AddCardManager.onRestoreStateStart done! return true!"

    invoke-static {p2, p0}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_57
    :goto_57
    sget-object p0, Lcom/android/launcher/backup/restore/LayoutRestoreHelper;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "onRestoreStart: No data to restore, return."

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public onRestoring(Landroid/content/Context;)Z
    .registers 4

    iget-object v0, p0, Lcom/android/launcher/backup/restore/LayoutRestoreHelper;->mRestoreDataList:Ljava/util/List;

    if-eqz v0, :cond_33

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_33

    :cond_b
    invoke-direct {p0, p1}, Lcom/android/launcher/backup/restore/LayoutRestoreHelper;->restoreParameter(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher/backup/restore/LayoutRestoreHelper;->restoreDatabase(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher/backup/restore/LayoutRestoreHelper;->mIsRestoreSucceed:Z

    if-eqz v0, :cond_30

    sget-object v0, Lcom/android/launcher/backup/restore/LayoutRestoreHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onRestoring: verify launch components."

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/launcher/LaunchComponentAliasVerifier;->forceVerifyApplications(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/android/launcher/LaunchComponentAliasVerifier;->deleteInvalidDeepShortcuts(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/android/launcher/backup/restore/LayoutRestoreHelper;->restoreLauncherModeLayout(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/android/launcher/backup/restore/LayoutRestoreHelper;->deleteInvalidApplications(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/android/launcher/backup/restore/LayoutRestoreHelper;->restoreDrawerModeSetting(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/android/launcher/backup/restore/LayoutRestoreHelper;->switchDrawerAndStandardLayout(Landroid/content/Context;)V

    :cond_30
    iget-boolean p0, p0, Lcom/android/launcher/backup/restore/LayoutRestoreHelper;->mIsRestoreSucceed:Z

    return p0

    :cond_33
    :goto_33
    sget-object p1, Lcom/android/launcher/backup/restore/LayoutRestoreHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onRestoring: No restore data, return."

    invoke-static {p1, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher/backup/restore/LayoutRestoreHelper;->mIsRestoreSucceed:Z

    return p1
.end method

.method public restoreDatabase(Landroid/content/Context;)Z
    .registers 8
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/launcher/backup/restore/LayoutRestoreHelper;->mRestoreDataList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher/backup/mode/BackupDataModel;

    invoke-virtual {v2}, Lcom/android/launcher/backup/mode/BackupDataModel;->getMode()Lcom/android/launcher/mode/LauncherMode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher/mode/LauncherMode;->getValue()I

    move-result v3

    iget-object v4, p0, Lcom/android/launcher/backup/restore/LayoutRestoreHelper;->mRestoreMode:Lcom/android/launcher/mode/LauncherMode;

    invoke-virtual {v4}, Lcom/android/launcher/mode/LauncherMode;->getValue()I

    move-result v4

    if-ne v3, v4, :cond_b

    goto :goto_29

    :cond_28
    const/4 v2, 0x0

    :goto_29
    if-eqz v2, :cond_42

    iget-object v1, p0, Lcom/android/launcher/backup/restore/LayoutRestoreHelper;->mRestoreDataList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/launcher/backup/restore/LayoutRestoreHelper;->mRestoreDataList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/android/launcher/backup/restore/LayoutRestoreHelper;->mRestoreDataList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/android/launcher/backup/restore/LayoutRestoreHelper;->mRestoreDataList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_42
    iget-object v0, p0, Lcom/android/launcher/backup/restore/LayoutRestoreHelper;->mRestoreDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_49
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher/backup/mode/BackupDataModel;

    invoke-static {v2}, Lcom/android/launcher/backup/mode/BackupDataModel;->checkLayoutMapEmpty(Lcom/android/launcher/backup/mode/BackupDataModel;)Z

    move-result v3

    const-string/jumbo v4, "onRestoring: restoreDatabase: Mode: "

    if-eqz v3, :cond_78

    sget-object v3, Lcom/android/launcher/backup/restore/LayoutRestoreHelper;->TAG:Ljava/lang/String;

    invoke-static {v4}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/launcher/backup/mode/BackupDataModel;->getMode()Lcom/android/launcher/mode/LauncherMode;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " failed, No layoutMap data, continue."

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_49

    :cond_78
    invoke-static {v2}, Lcom/android/launcher/backup/mode/BackupDataModel;->isLayoutMapContentEmpty(Lcom/android/launcher/backup/mode/BackupDataModel;)Z

    move-result v3

    if-eqz v3, :cond_99

    sget-object p0, Lcom/android/launcher/backup/restore/LayoutRestoreHelper;->TAG:Ljava/lang/String;

    invoke-static {v4}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v2}, Lcom/android/launcher/backup/mode/BackupDataModel;->getMode()Lcom/android/launcher/mode/LauncherMode;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " success, layoutMap\'s content is empty, return."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_99
    invoke-virtual {v2}, Lcom/android/launcher/backup/mode/BackupDataModel;->getMode()Lcom/android/launcher/mode/LauncherMode;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/android/launcher/backup/util/LauncherDBUtils;->deleteTableContentIfExist(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;)Z

    move-result v3

    if-nez v3, :cond_bd

    sget-object p0, Lcom/android/launcher/backup/restore/LayoutRestoreHelper;->TAG:Ljava/lang/String;

    invoke-static {v4}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v2}, Lcom/android/launcher/backup/mode/BackupDataModel;->getMode()Lcom/android/launcher/mode/LauncherMode;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " failed, deleteTableContentIfExist error, break."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f9

    :cond_bd
    sget-object v1, Lcom/android/launcher/backup/restore/LayoutRestoreHelper;->TAG:Ljava/lang/String;

    const-string v3, "\nonRestoring: restoreDatabase: Mode: "

    invoke-static {v3}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/launcher/backup/mode/BackupDataModel;->getMode()Lcom/android/launcher/mode/LauncherMode;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v3, p0, Lcom/android/launcher/backup/restore/LayoutRestoreHelper;->mNewCellCountX:I

    iget v5, p0, Lcom/android/launcher/backup/restore/LayoutRestoreHelper;->mNewCellCountY:I

    invoke-static {p1, v2, v3, v5}, Lcom/android/launcher/backup/restore/LauncherDBGenerator;->generateBackupDataModeToDB(Landroid/content/Context;Lcom/android/launcher/backup/mode/BackupDataModel;II)Z

    move-result v3

    if-nez v3, :cond_f6

    invoke-static {v4}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v2}, Lcom/android/launcher/backup/mode/BackupDataModel;->getMode()Lcom/android/launcher/mode/LauncherMode;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " failed, generateDatabase error, break."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v3

    goto :goto_f9

    :cond_f6
    move v1, v3

    goto/16 :goto_49

    :cond_f9
    :goto_f9
    return v1
.end method

.method public setRestoreData(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher/backup/mode/BackupDataModel;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_4

    iput-object p1, p0, Lcom/android/launcher/backup/restore/LayoutRestoreHelper;->mRestoreDataList:Ljava/util/List;

    :cond_4
    return-void
.end method
