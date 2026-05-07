.class public Lcom/android/launcher/backup/mode/BackupDataModel;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private mDeviceLayoutParameter:Lcom/android/launcher/backup/mode/BackupRestoreContract$DeviceLayoutParameter;

.field private mDrawerModeSetting:Lcom/android/launcher/backup/mode/BackupRestoreContract$DrawerModeSetting;

.field private mLayoutMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/ArrayList<",
            "*>;>;"
        }
    .end annotation
.end field

.field private mMode:Lcom/android/launcher/mode/LauncherMode;

.field private mModeLayoutParameter:Lcom/android/launcher/backup/mode/BackupRestoreContract$ModeLayoutParameter;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/backup/mode/BackupDataModel;->mLayoutMap:Landroid/util/SparseArray;

    return-void
.end method

.method public static checkLayoutMapEmpty(Lcom/android/launcher/backup/mode/BackupDataModel;)Z
    .registers 2

    const/4 v0, 0x1

    if-nez p0, :cond_4

    return v0

    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher/backup/mode/BackupDataModel;->getLayoutMap()Landroid/util/SparseArray;

    move-result-object p0

    if-eqz p0, :cond_12

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p0

    if-nez p0, :cond_11

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :cond_12
    :goto_12
    return v0
.end method

.method public static isLayoutMapContentEmpty(Lcom/android/launcher/backup/mode/BackupDataModel;)Z
    .registers 3

    invoke-static {p0}, Lcom/android/launcher/backup/mode/BackupDataModel;->checkLayoutMapEmpty(Lcom/android/launcher/backup/mode/BackupDataModel;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    :cond_8
    invoke-virtual {p0}, Lcom/android/launcher/backup/mode/BackupDataModel;->getLayoutMap()Landroid/util/SparseArray;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    if-eqz p0, :cond_1d

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-nez p0, :cond_1c

    goto :goto_1d

    :cond_1c
    move v1, v0

    :cond_1d
    :goto_1d
    return v1
.end method


# virtual methods
.method public getDeviceLayoutParameter()Lcom/android/launcher/backup/mode/BackupRestoreContract$DeviceLayoutParameter;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/backup/mode/BackupDataModel;->mDeviceLayoutParameter:Lcom/android/launcher/backup/mode/BackupRestoreContract$DeviceLayoutParameter;

    return-object p0
.end method

.method public getDrawerModeSetting()Lcom/android/launcher/backup/mode/BackupRestoreContract$DrawerModeSetting;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/backup/mode/BackupDataModel;->mDrawerModeSetting:Lcom/android/launcher/backup/mode/BackupRestoreContract$DrawerModeSetting;

    return-object p0
.end method

.method public getLayoutMap()Landroid/util/SparseArray;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Ljava/util/ArrayList<",
            "*>;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher/backup/mode/BackupDataModel;->mLayoutMap:Landroid/util/SparseArray;

    return-object p0
.end method

.method public getMode()Lcom/android/launcher/mode/LauncherMode;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/backup/mode/BackupDataModel;->mMode:Lcom/android/launcher/mode/LauncherMode;

    return-object p0
.end method

.method public getModeLayoutParameter()Lcom/android/launcher/backup/mode/BackupRestoreContract$ModeLayoutParameter;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/backup/mode/BackupDataModel;->mModeLayoutParameter:Lcom/android/launcher/backup/mode/BackupRestoreContract$ModeLayoutParameter;

    return-object p0
.end method

.method public isTheModeTobeRestored()Z
    .registers 2

    iget-object v0, p0, Lcom/android/launcher/backup/mode/BackupDataModel;->mDeviceLayoutParameter:Lcom/android/launcher/backup/mode/BackupRestoreContract$DeviceLayoutParameter;

    if-eqz v0, :cond_c

    iget-object p0, p0, Lcom/android/launcher/backup/mode/BackupDataModel;->mMode:Lcom/android/launcher/mode/LauncherMode;

    iget-object v0, v0, Lcom/android/launcher/backup/mode/BackupRestoreContract$DeviceLayoutParameter;->mCurrentMode:Lcom/android/launcher/mode/LauncherMode;

    if-ne p0, v0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public setDeviceLayoutParameter(Lcom/android/launcher/backup/mode/BackupRestoreContract$DeviceLayoutParameter;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/backup/mode/BackupDataModel;->mDeviceLayoutParameter:Lcom/android/launcher/backup/mode/BackupRestoreContract$DeviceLayoutParameter;

    return-void
.end method

.method public setDrawerModeSetting(Lcom/android/launcher/backup/mode/BackupRestoreContract$DrawerModeSetting;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/backup/mode/BackupDataModel;->mDrawerModeSetting:Lcom/android/launcher/backup/mode/BackupRestoreContract$DrawerModeSetting;

    return-void
.end method

.method public setLayoutMap(Landroid/util/SparseArray;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/util/ArrayList<",
            "*>;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/launcher/backup/mode/BackupDataModel;->mLayoutMap:Landroid/util/SparseArray;

    return-void
.end method

.method public setMode(Lcom/android/launcher/mode/LauncherMode;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/backup/mode/BackupDataModel;->mMode:Lcom/android/launcher/mode/LauncherMode;

    return-void
.end method

.method public setModeLayoutParameter(Lcom/android/launcher/backup/mode/BackupRestoreContract$ModeLayoutParameter;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/backup/mode/BackupDataModel;->mModeLayoutParameter:Lcom/android/launcher/backup/mode/BackupRestoreContract$ModeLayoutParameter;

    return-void
.end method
