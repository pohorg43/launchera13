.class public final Lcom/android/launcher/backup/restore/OplusRestoreCellLayoutCompat;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final INSTANCE:Lcom/android/launcher/backup/restore/OplusRestoreCellLayoutCompat;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher/backup/restore/OplusRestoreCellLayoutCompat;

    invoke-direct {v0}, Lcom/android/launcher/backup/restore/OplusRestoreCellLayoutCompat;-><init>()V

    sput-object v0, Lcom/android/launcher/backup/restore/OplusRestoreCellLayoutCompat;->INSTANCE:Lcom/android/launcher/backup/restore/OplusRestoreCellLayoutCompat;

    const-string v0, "OplusRestoreCellLayoutCompat"

    const-string v1, "BR-Launcher_"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher/backup/restore/OplusRestoreCellLayoutCompat;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getCompatibleCellForCompatOS12AndRestore(II)[I
    .registers 11
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x2

    if-ne p0, v0, :cond_5

    const/4 v1, 0x3

    goto :goto_6

    :cond_5
    move v1, p0

    :goto_6
    invoke-static {v1, p1}, Lcom/android/launcher/UiConfig;->isSupportLayout(II)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_18

    invoke-static {v1, p1}, Lcom/android/launcher/UiConfig;->canExpandedYForRestore(II)[I

    move-result-object v4

    aget v5, v4, v3

    if-eq v5, p1, :cond_18

    aget v4, v4, v3

    goto :goto_19

    :cond_18
    move v4, p1

    :goto_19
    sget-object v5, Lcom/android/launcher/backup/restore/OplusRestoreCellLayoutCompat;->TAG:Ljava/lang/String;

    const-string v6, "getCompatibleCellForCompatOS12AndRestore from "

    const-string v7, ", "

    const-string v8, " to "

    invoke-static {v6, p0, v7, p1, v8}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "; isSupportLayout: "

    invoke-static {p0, v1, v7, v4, p1}, Landroidx/constraintlayout/core/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-static {p0, v2, v5}, Lcom/android/common/config/b;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    new-array p0, v0, [I

    const/4 p1, 0x0

    aput v1, p0, p1

    aput v4, p0, v3

    return-object p0
.end method

.method public static final getDrawerAndStandardCompatibleCellForRestore(II)[I
    .registers 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {p0, p1}, Lcom/android/launcher/backup/restore/OplusRestoreCellLayoutCompat;->getCompatibleCellForCompatOS12AndRestore(II)[I

    move-result-object p0

    const/4 p1, 0x0

    aget v0, p0, p1

    const/4 v1, 0x1

    aget v2, p0, v1

    invoke-static {v0, v2}, Lcom/android/launcher/UiConfig;->isSupportLayout(II)Z

    move-result v0

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher/UiConfig;->getCurDrawerAndStandardLayoutSettingsForRestore(Landroid/content/Context;)[I

    move-result-object v2

    if-eqz v0, :cond_1b

    aget v3, p0, p1

    goto :goto_1d

    :cond_1b
    aget v3, v2, p1

    :goto_1d
    if-eqz v0, :cond_22

    aget p0, p0, v1

    goto :goto_24

    :cond_22
    aget p0, v2, v1

    :goto_24
    sget-object v0, Lcom/android/launcher/backup/restore/OplusRestoreCellLayoutCompat;->TAG:Ljava/lang/String;

    const-string v2, "getDrawerAndStandardCompatibleCellForRestore "

    const-string v4, ", "

    invoke-static {v2, v3, v4, p0, v0}, Lcom/android/common/config/g;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    aput v3, v0, p1

    aput p0, v0, v1

    return-object v0
.end method

.method public static final getSimpleCompatibleCellForRestore(Ljava/util/List;Lcom/android/launcher/mode/LauncherMode;)[I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/launcher/backup/mode/BackupDataModel;",
            ">;",
            "Lcom/android/launcher/mode/LauncherMode;",
            ")[I"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "restoreDataList"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "restoreMode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_54

    sget-object v1, Lcom/android/launcher/mode/LauncherMode;->Simple:Lcom/android/launcher/mode/LauncherMode;

    if-ne p1, v1, :cond_53

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_53

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher/backup/mode/BackupDataModel;

    invoke-virtual {p1}, Lcom/android/launcher/backup/mode/BackupDataModel;->getMode()Lcom/android/launcher/mode/LauncherMode;

    move-result-object v1

    sget-object v2, Lcom/android/launcher/mode/LauncherMode;->Simple:Lcom/android/launcher/mode/LauncherMode;

    if-ne v1, v2, :cond_1a

    invoke-virtual {p1}, Lcom/android/launcher/backup/mode/BackupDataModel;->getModeLayoutParameter()Lcom/android/launcher/backup/mode/BackupRestoreContract$ModeLayoutParameter;

    move-result-object p1

    if-eqz p1, :cond_1a

    const/4 p0, 0x0

    iget v1, p1, Lcom/android/launcher/backup/mode/BackupRestoreContract$ModeLayoutParameter;->mCellXCount:I

    aput v1, v0, p0

    const/4 p0, 0x1

    iget p1, p1, Lcom/android/launcher/backup/mode/BackupRestoreContract$ModeLayoutParameter;->mCellYCount:I

    aput p1, v0, p0

    sget-object p0, Lcom/android/launcher/backup/restore/OplusRestoreCellLayoutCompat;->TAG:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "toString(this)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "getSimpleCompatibleCellForRestore "

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_53
    return-object v0

    :array_54
    .array-data 4
        0x3
        0x4
    .end array-data
.end method

.method public static final isLayoutSupportInLocalForCompatOtaAndRestore(II)Z
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {p0, p1}, Lcom/android/launcher/backup/restore/OplusRestoreCellLayoutCompat;->getCompatibleCellForCompatOS12AndRestore(II)[I

    move-result-object p0

    const/4 p1, 0x0

    aget p1, p0, p1

    const/4 v0, 0x1

    aget p0, p0, v0

    invoke-static {p1, p0}, Lcom/android/launcher/UiConfig;->isSupportLayout(II)Z

    move-result p0

    return p0
.end method

.method public static final updateWidgetSpanInfoForOtaCompat(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;IIII)Z
    .registers 9
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "widgetInfo"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_2b

    sget-object v0, Lcom/android/launcher/backup/restore/OplusRestoreCellLayoutCompat;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateWidgetSpanInfoForOtaCompat target: "

    const-string v2, ", "

    const-string v3, "; original: "

    invoke-static {v1, p3, v2, p4, v3}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "; span: "

    invoke-static {v1, p1, v2, p2, v3}, Landroidx/constraintlayout/core/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    iget v3, p0, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-static {v1, v2, v0}, Lcom/android/common/config/h;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_2b
    const/4 v0, 0x0

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDevice()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_4d

    iget v1, p0, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    if-eq v1, p1, :cond_39

    if-le v1, p3, :cond_40

    :cond_39
    if-eq p1, p3, :cond_40

    iput p3, p0, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iput p3, p0, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    move v0, v2

    :cond_40
    iget p1, p0, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    if-eq p1, p2, :cond_46

    if-le p1, p4, :cond_58

    :cond_46
    if-eq p2, p4, :cond_58

    iput p4, p0, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iput p4, p0, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    goto :goto_57

    :cond_4d
    iget p2, p0, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    if-ne p2, p1, :cond_58

    if-eq p1, p3, :cond_58

    iput p3, p0, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iput p3, p0, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    :goto_57
    move v0, v2

    :cond_58
    iget p1, p0, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    if-le p1, p3, :cond_5d

    move p1, p3

    :cond_5d
    iput p1, p0, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    iget p1, p0, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    if-le p1, p4, :cond_64

    move p1, p4

    :cond_64
    iput p1, p0, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    iget p1, p0, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    if-le p1, p3, :cond_6b

    goto :goto_6c

    :cond_6b
    move p3, p1

    :goto_6c
    iput p3, p0, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget p1, p0, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    if-le p1, p4, :cond_73

    goto :goto_74

    :cond_73
    move p4, p1

    :goto_74
    iput p4, p0, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    return v0
.end method

.method public static final updateWidgetSpanInfoForRestore(Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;II)Z
    .registers 11
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "widgetInfo"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/android/launcher/backup/restore/OplusRestoreCellLayoutCompat;->getDrawerAndStandardCompatibleCellForRestore(II)[I

    move-result-object v0

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_4c

    sget-object v1, Lcom/android/launcher/backup/restore/OplusRestoreCellLayoutCompat;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "updateWidgetSpanInfoForRestore compatible: "

    invoke-static {v4}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v0, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v6, v0, v2

    const-string v7, "; backup: "

    invoke-static {v4, v6, v7, p1, v5}, Landroidx/constraintlayout/core/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "; span: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getSpanX()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getSpanY()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4c
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDevice()Z

    move-result v1

    if-eqz v1, :cond_84

    invoke-virtual {p0}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getSpanX()I

    move-result v1

    if-eq v1, p1, :cond_60

    invoke-virtual {p0}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getSpanX()I

    move-result v1

    aget v4, v0, v3

    if-le v1, v4, :cond_6b

    :cond_60
    aget v1, v0, v3

    if-eq p1, v1, :cond_6b

    aget p1, v0, v3

    invoke-virtual {p0, p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setSpanX(I)V

    move p1, v2

    goto :goto_6c

    :cond_6b
    move p1, v3

    :goto_6c
    invoke-virtual {p0}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getSpanY()I

    move-result v1

    if-eq v1, p2, :cond_7a

    invoke-virtual {p0}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getSpanY()I

    move-result v1

    aget v4, v0, v2

    if-le v1, v4, :cond_96

    :cond_7a
    aget v1, v0, v2

    if-eq p2, v1, :cond_96

    aget p1, v0, v2

    invoke-virtual {p0, p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setSpanY(I)V

    goto :goto_93

    :cond_84
    invoke-virtual {p0}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getSpanX()I

    move-result p2

    if-ne p2, p1, :cond_95

    aget p2, v0, v3

    if-eq p1, p2, :cond_95

    aget p1, v0, v3

    invoke-virtual {p0, p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setSpanX(I)V

    :goto_93
    move p1, v2

    goto :goto_96

    :cond_95
    move p1, v3

    :cond_96
    :goto_96
    invoke-virtual {p0}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getSpanX()I

    move-result p2

    aget v1, v0, v3

    if-le p2, v1, :cond_9f

    move p2, v1

    :cond_9f
    invoke-virtual {p0, p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setSpanX(I)V

    invoke-virtual {p0}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getSpanY()I

    move-result p2

    aget v0, v0, v2

    if-le p2, v0, :cond_ab

    move p2, v0

    :cond_ab
    invoke-virtual {p0, p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->setSpanY(I)V

    return p1
.end method
