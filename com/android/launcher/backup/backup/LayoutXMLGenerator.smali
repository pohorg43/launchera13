.class public Lcom/android/launcher/backup/backup/LayoutXMLGenerator;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final TAG:Ljava/lang/String; = "BR-Launcher_LayoutXMLGenerator"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateBackupDataModeToXml(Lcom/android/launcher/backup/backup/LayoutXMLComposer;Lcom/android/launcher/backup/mode/BackupDataModel;)Z
    .registers 9

    sget-object v0, Lcom/android/launcher/backup/backup/LayoutXMLGenerator;->TAG:Ljava/lang/String;

    const-string v1, "\ngenerate backup data to xml -- mode:"

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/launcher/backup/mode/BackupDataModel;->getMode()Lcom/android/launcher/mode/LauncherMode;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/common/debug/OplusFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/launcher/backup/mode/BackupDataModel;->getDrawerModeSetting()Lcom/android/launcher/backup/mode/BackupRestoreContract$DrawerModeSetting;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/launcher/backup/mode/BackupDataModel;->getModeLayoutParameter()Lcom/android/launcher/backup/mode/BackupRestoreContract$ModeLayoutParameter;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/launcher/backup/mode/BackupDataModel;->getLayoutMap()Landroid/util/SparseArray;

    move-result-object v3

    const/4 v4, 0x0

    if-nez p0, :cond_2b

    const-string p0, "generate backup data to xml failed, xmlComposer is null!"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_2b
    if-nez v3, :cond_33

    const-string p0, "generate backup data to xml failed, layoutMap is null!"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_33
    if-eqz v1, :cond_49

    sget-object v5, Lcom/android/launcher/mode/LauncherMode;->Drawer:Lcom/android/launcher/mode/LauncherMode;

    invoke-virtual {p1}, Lcom/android/launcher/backup/mode/BackupDataModel;->getMode()Lcom/android/launcher/mode/LauncherMode;

    move-result-object v6

    if-ne v5, v6, :cond_49

    invoke-static {p0, v1}, Lcom/android/launcher/backup/backup/LayoutXMLGenerator;->generateDrawerModeSetting(Lcom/android/launcher/backup/backup/LayoutXMLComposer;Lcom/android/launcher/backup/mode/BackupRestoreContract$DrawerModeSetting;)Z

    move-result v1

    if-nez v1, :cond_49

    const-string p0, "generate backup data to xml failed, generate drawerModeSetting error!"

    invoke-static {v0, p0}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_49
    if-eqz v2, :cond_5b

    invoke-virtual {p1}, Lcom/android/launcher/backup/mode/BackupDataModel;->getMode()Lcom/android/launcher/mode/LauncherMode;

    move-result-object p1

    invoke-static {p0, v2, p1}, Lcom/android/launcher/backup/backup/LayoutXMLGenerator;->generateModeLayoutParameter(Lcom/android/launcher/backup/backup/LayoutXMLComposer;Lcom/android/launcher/backup/mode/BackupRestoreContract$ModeLayoutParameter;Lcom/android/launcher/mode/LauncherMode;)Z

    move-result p1

    if-nez p1, :cond_5b

    const-string p0, "generate backup data to xml failed, generate modeLayoutParameter error!"

    invoke-static {v0, p0}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_5b
    invoke-static {p0, v3}, Lcom/android/launcher/backup/backup/LayoutXMLGenerator;->generateModeLayoutMap(Lcom/android/launcher/backup/backup/LayoutXMLComposer;Landroid/util/SparseArray;)Z

    move-result p0

    if-nez p0, :cond_67

    const-string p0, "generate backup data to xml failed, generate layoutMap error!"

    invoke-static {v0, p0}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_67
    const/4 p0, 0x1

    return p0
.end method

.method public static generateDeviceLayoutParameter(Landroid/content/Context;Lcom/android/launcher/backup/backup/LayoutXMLComposer;Lcom/android/launcher/backup/mode/BackupRestoreContract$DeviceLayoutParameter;)Z
    .registers 3

    invoke-virtual {p1, p0, p2}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->startDeviceLayoutParameterTag(Landroid/content/Context;Lcom/android/launcher/backup/mode/BackupRestoreContract$DeviceLayoutParameter;)Z

    move-result p0

    if-eqz p0, :cond_e

    invoke-virtual {p1}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->endDeviceLayoutParameterTag()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method private static generateDrawerModeSetting(Lcom/android/launcher/backup/backup/LayoutXMLComposer;Lcom/android/launcher/backup/mode/BackupRestoreContract$DrawerModeSetting;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->startDrawerModeSettingTag(Lcom/android/launcher/backup/mode/BackupRestoreContract$DrawerModeSetting;)Z

    move-result p0

    return p0
.end method

.method private static generateModeLayoutMap(Lcom/android/launcher/backup/backup/LayoutXMLComposer;Landroid/util/SparseArray;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher/backup/backup/LayoutXMLComposer;",
            "Landroid/util/SparseArray<",
            "Ljava/util/ArrayList<",
            "*>;>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_d3

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-eqz v2, :cond_cf

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_18

    goto/16 :goto_cf

    :cond_18
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v3

    if-eqz v3, :cond_2b

    sget-object v3, Lcom/android/launcher/backup/backup/LayoutXMLGenerator;->TAG:Ljava/lang/String;

    const-string v4, "generateModeLayoutMap -- mapKey = "

    const-string v5, ", listSize = "

    invoke-static {v4, v1, v5}, Landroidx/appcompat/widget/d;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2, v4, v3}, Lcom/android/launcher/f;->a(Ljava/util/ArrayList;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_2b
    invoke-virtual {p0, v1}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->startOneTypeRecordTag(I)Z

    move-result v3

    const-string v4, "generateModeLayoutMap failed: -- mapKey = "

    if-nez v3, :cond_4d

    sget-object p0, Lcom/android/launcher/backup/backup/LayoutXMLGenerator;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", startOneTypeRecordTag error"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_4d
    if-nez v1, :cond_7f

    move v3, v0

    :goto_50
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_af

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher/backup/mode/BackupRestoreContract$ScreenInfo;

    invoke-virtual {p0, v5}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->addOneScreenRecord(Lcom/android/launcher/backup/mode/BackupRestoreContract$ScreenInfo;)Z

    move-result v5

    if-nez v5, :cond_7c

    sget-object p0, Lcom/android/launcher/backup/backup/LayoutXMLGenerator;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", add one screen record error"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_7c
    add-int/lit8 v3, v3, 0x1

    goto :goto_50

    :cond_7f
    move v3, v0

    :goto_80
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_af

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;

    invoke-virtual {p0, v1, v5}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->addOneItemRecord(ILcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;)Z

    move-result v5

    if-nez v5, :cond_ac

    sget-object p0, Lcom/android/launcher/backup/backup/LayoutXMLGenerator;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", add one item record error"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_ac
    add-int/lit8 v3, v3, 0x1

    goto :goto_80

    :cond_af
    invoke-virtual {p0, v1}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->endOneTypeRecordTag(I)Z

    move-result v2

    if-nez v2, :cond_cf

    sget-object p0, Lcom/android/launcher/backup/backup/LayoutXMLGenerator;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", endOneTypeRecordTag error"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_cf
    :goto_cf
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    :cond_d3
    const/4 p0, 0x1

    return p0
.end method

.method private static generateModeLayoutParameter(Lcom/android/launcher/backup/backup/LayoutXMLComposer;Lcom/android/launcher/backup/mode/BackupRestoreContract$ModeLayoutParameter;Lcom/android/launcher/mode/LauncherMode;)Z
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->startModeLayoutParameterTag(Lcom/android/launcher/backup/mode/BackupRestoreContract$ModeLayoutParameter;Lcom/android/launcher/mode/LauncherMode;)Z

    move-result p0

    return p0
.end method
