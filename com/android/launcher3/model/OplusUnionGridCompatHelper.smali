.class public final Lcom/android/launcher3/model/OplusUnionGridCompatHelper;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final DEBUG:Z = true

.field public static final INSTANCE:Lcom/android/launcher3/model/OplusUnionGridCompatHelper;

.field private static final PREF_UNION_GRID_COMPACT:Ljava/lang/String; = "union_grid_compact"

.field private static final TAG:Ljava/lang/String; = "OplusUnionGridCompactHelper"

.field private static mGridChanged:Z

.field private static mOriginalGrid:Landroid/graphics/Point;

.field private static mUpdatedGrid:Landroid/graphics/Point;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/model/OplusUnionGridCompatHelper;

    invoke-direct {v0}, Lcom/android/launcher3/model/OplusUnionGridCompatHelper;-><init>()V

    sput-object v0, Lcom/android/launcher3/model/OplusUnionGridCompatHelper;->INSTANCE:Lcom/android/launcher3/model/OplusUnionGridCompatHelper;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final doMigrate(Landroid/content/Context;)V
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/launcher3/model/OplusUnionGridCompatHelper;->hasUpdated(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_c

    return-void

    :cond_c
    invoke-static {p0}, Lcom/android/launcher3/model/OplusUnionGridCompatHelper;->fixUpLegacyData(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/android/launcher3/model/OplusUnionGridCompatHelper;->fixCustomizerData(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/android/launcher3/model/OplusUnionGridCompatHelper;->updateWidgetInfoIfNeeded(Landroid/content/Context;)V

    return-void
.end method

.method private static final fixCustomizerData(Landroid/content/Context;)V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->isOtaVersionUpdate()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-static {}, Lcom/android/launcher/DefaultWorkspaceHelper;->getCustomizer()Lcom/android/launcher/operators/Customizer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher/operators/Customizer;->setHasCustomized(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/common/config/FeatureOption;->isCommonCota()Z

    move-result v0

    if-eqz v0, :cond_1e

    sget-object v0, Lcom/android/launcher/layout/LayoutPrefsUtils;->Companion:Lcom/android/launcher/layout/LayoutPrefsUtils$Companion;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/android/launcher/layout/LayoutPrefsUtils$Companion;->setLauncherLayoutVersion(Landroid/content/Context;I)V

    const-string v1, "1"

    invoke-virtual {v0, p0, v1}, Lcom/android/launcher/layout/LayoutPrefsUtils$Companion;->setLauncherLayoutVersionName(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1e
    return-void
.end method

.method private static final fixUpLegacyData(Landroid/content/Context;)V
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {p0}, Lcom/android/launcher/OplusLauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher/OplusLauncherAppsCompat;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/OplusLauncherAppsCompat;->fixUpAppData()Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string v0, "fixUpLegacyData cost "

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "OplusUnionGridCompactHelper"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final getDrawerAndStandardCompatibleCellCompatOS12(II)[I
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {p0, p1}, Lcom/android/launcher/backup/restore/OplusRestoreCellLayoutCompat;->getCompatibleCellForCompatOS12AndRestore(II)[I

    move-result-object p0

    return-object p0
.end method

.method private static final hasUpdated(Landroid/content/Context;)Z
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "union_grid_compact"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static final pinLegacyDeepShortcutIfNeeded(Landroid/content/Context;Lcom/android/launcher3/model/data/WorkspaceItemInfo;Lcom/android/launcher3/shortcuts/ShortcutKey;Lcom/android/launcher3/shortcuts/DeepShortcutManager;)Landroid/content/pm/ShortcutInfo;
    .registers 9
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "shortcutManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1d

    move v3, v2

    goto :goto_1e

    :cond_1d
    move v3, v1

    :goto_1e
    invoke-virtual {v0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_26

    move v0, v2

    goto :goto_27

    :cond_26
    move v0, v1

    :goto_27
    or-int/2addr v0, v3

    iget-object v3, p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v3

    const v4, 0x7f1202bc

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v3, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, v2

    or-int/2addr p0, v0

    const/4 v0, 0x0

    if-eqz p0, :cond_3f

    return-object v0

    :cond_3f
    const-string p0, "OplusUnionGridCompactHelper"

    const-string v3, "pinLegacyDeepShortcutIfNeed legacy shortcut data detected"

    invoke-static {p0, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->unpinShortcut(Lcom/android/launcher3/shortcuts/ShortcutKey;)V

    invoke-virtual {p3, p2}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->pinShortcut(Lcom/android/launcher3/shortcuts/ShortcutKey;)V

    iget-object p2, p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    const-string/jumbo v3, "shortcut_id"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v3, "itemInfo.intent.getStrin…cutKey.EXTRA_SHORTCUT_ID)"

    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6a

    const-string p2, "pinLegacyDeepShortcutIfNeed PinnedBackupShortcut, shortcutId is empty! itemInfo = "

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_6a
    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2}, Li1/j;->k(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    iget-object v4, p1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p3, v3, p2, v4}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->queryForPinnedShortcuts(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p2

    const-string/jumbo v3, "shortcutManager.queryFor…emInfo.user\n            )"

    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->wasLastCallSuccess()Z

    move-result p3

    const-string v3, "pinLegacyDeepShortcutIfNeed result = "

    const-string v4, ", intent = "

    invoke-static {v3, p3, v4}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object p1, p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    xor-int/2addr p0, v2

    if-eqz p0, :cond_b0

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ShortcutInfo;

    return-object p0

    :cond_b0
    return-object v0
.end method

.method public static final updateGridIfNeeded(Landroid/content/Context;[I)V
    .registers 10
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "grids"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/launcher3/model/OplusUnionGridCompatHelper;->hasUpdated(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_11

    return-void

    :cond_11
    new-instance v0, Landroid/graphics/Point;

    const/4 v1, 0x0

    aget v2, p1, v1

    const/4 v3, 0x1

    aget v4, p1, v3

    invoke-direct {v0, v2, v4}, Landroid/graphics/Point;-><init>(II)V

    sput-object v0, Lcom/android/launcher3/model/OplusUnionGridCompatHelper;->mOriginalGrid:Landroid/graphics/Point;

    aget v0, p1, v1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_28

    const/4 v0, 0x3

    aput v0, p1, v1

    sput-boolean v3, Lcom/android/launcher3/model/OplusUnionGridCompatHelper;->mGridChanged:Z

    :cond_28
    aget v0, p1, v3

    const/4 v4, 0x4

    if-ne v0, v4, :cond_47

    const/4 v0, -0x1

    aget v4, p1, v3

    invoke-static {v0, v4}, Lcom/android/launcher/UiConfig;->isSupportLayout(II)Z

    move-result v0

    if-nez v0, :cond_47

    aget v0, p1, v1

    const/4 v4, 0x5

    if-ne v0, v4, :cond_43

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result v0

    if-nez v0, :cond_47

    :cond_43
    aput v4, p1, v3

    sput-boolean v3, Lcom/android/launcher3/model/OplusUnionGridCompatHelper;->mGridChanged:Z

    :cond_47
    sget-boolean v0, Lcom/android/launcher3/model/OplusUnionGridCompatHelper;->mGridChanged:Z

    const-string v4, "OplusUnionGridCompactHelper"

    if-eqz v0, :cond_d3

    new-instance v0, Landroid/graphics/Point;

    aget v5, p1, v1

    aget v6, p1, v3

    invoke-direct {v0, v5, v6}, Landroid/graphics/Point;-><init>(II)V

    sput-object v0, Lcom/android/launcher3/model/OplusUnionGridCompatHelper;->mUpdatedGrid:Landroid/graphics/Point;

    aget v0, p1, v1

    aget p1, p1, v3

    invoke-static {p0, v0, p1}, Lcom/android/launcher/togglebar/LayoutSettingsHelper;->saveLayoutInfo(Landroid/content/Context;II)V

    new-array p1, v2, [Lcom/android/launcher/mode/LauncherMode;

    sget-object v0, Lcom/android/launcher/mode/LauncherMode;->Drawer:Lcom/android/launcher/mode/LauncherMode;

    aput-object v0, p1, v1

    sget-object v0, Lcom/android/launcher/mode/LauncherMode;->Standard:Lcom/android/launcher/mode/LauncherMode;

    aput-object v0, p1, v3

    invoke-static {p1}, Li1/j;->l([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_71
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/mode/LauncherMode;

    new-instance v2, Lcom/android/launcher/mode/AbsLauncherMode$Builder;

    invoke-direct {v2, p0}, Lcom/android/launcher/mode/AbsLauncherMode$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Lcom/android/launcher/mode/AbsLauncherMode$Builder;->mode(Lcom/android/launcher/mode/LauncherMode;)Lcom/android/launcher/mode/AbsLauncherMode$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher/mode/AbsLauncherMode$Builder;->build()Lcom/android/launcher/mode/AbsLauncherMode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher/mode/AbsLauncherMode;->getCurrentModeLayoutSetting()[I

    move-result-object v5

    aget v5, v5, v1

    invoke-virtual {v2}, Lcom/android/launcher/mode/AbsLauncherMode;->getCurrentModeLayoutSetting()[I

    move-result-object v6

    aget v6, v6, v3

    invoke-static {v5, v6}, Lcom/android/launcher3/model/OplusUnionGridCompatHelper;->getDrawerAndStandardCompatibleCellCompatOS12(II)[I

    move-result-object v5

    aget v6, v5, v1

    aget v7, v5, v3

    invoke-virtual {v2, v6, v7}, Lcom/android/launcher/mode/AbsLauncherMode;->setCurrentModeLayoutSetting(II)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateGridIfNeeded set "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " currentLayoutSetting: "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", original: "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/launcher/mode/AbsLauncherMode;->getCurrentModeLayoutSetting()[I

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_71

    :cond_d3
    const-string/jumbo p0, "updateGridIfNeeded "

    invoke-static {p0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-boolean p1, Lcom/android/launcher3/model/OplusUnionGridCompatHelper;->mGridChanged:Z

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", new grid: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/android/launcher3/model/OplusUnionGridCompatHelper;->mUpdatedGrid:Landroid/graphics/Point;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", old grid: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/android/launcher3/model/OplusUnionGridCompatHelper;->mOriginalGrid:Landroid/graphics/Point;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static final updateWidgetInfoIfNeeded(Landroid/content/Context;)V
    .registers 16
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "union_grid_compact"

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->isOtaVersionUpdate()Z

    move-result v1

    if-nez v1, :cond_a

    return-void

    :cond_a
    const-string v1, "OplusUnionGridCompactHelper"

    const-string/jumbo v2, "updateWidgetInfoIfNeeded"

    invoke-static {v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    :try_start_13
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "new_db_transaction"

    invoke-static {v3, v4}, Lcom/android/launcher3/LauncherSettings$Settings;->call(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "value"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    if-eqz v3, :cond_bd

    check-cast v3, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_28} :catch_c7
    .catchall {:try_start_13 .. :try_end_28} :catchall_c5

    const/4 v4, 0x0

    :try_start_29
    invoke-static {}, Lcom/android/launcher/mode/LauncherMode;->values()[Lcom/android/launcher/mode/LauncherMode;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x0

    move v8, v7

    :cond_30
    :goto_30
    if-ge v8, v6, :cond_af

    aget-object v9, v5, v8

    add-int/lit8 v8, v8, 0x1

    invoke-static {p0, v9}, Lcom/android/launcher/mode/LauncherModeManager;->getItemContentUri(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;)Landroid/net/Uri;

    move-result-object v10

    invoke-static {p0, v10}, Lcom/android/common/util/OplusLauncherDbUtils;->isTableExist(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v10

    if-nez v10, :cond_4b

    const-string/jumbo v10, "updateWidgetInfoIfNeeded no table "

    invoke-static {v10, v9}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_30

    :cond_4b
    new-instance v10, Lcom/android/launcher/mode/AbsLauncherMode$Builder;

    invoke-direct {v10, p0}, Lcom/android/launcher/mode/AbsLauncherMode$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v10, v9}, Lcom/android/launcher/mode/AbsLauncherMode$Builder;->mode(Lcom/android/launcher/mode/LauncherMode;)Lcom/android/launcher/mode/AbsLauncherMode$Builder;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/launcher/mode/AbsLauncherMode$Builder;->build()Lcom/android/launcher/mode/AbsLauncherMode;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/launcher/mode/AbsLauncherMode;->itemTableName()Ljava/lang/String;

    move-result-object v10

    sget-boolean v11, Lcom/android/launcher3/model/OplusUnionGridCompatHelper;->mGridChanged:Z

    if-eqz v11, :cond_30

    sget-object v11, Lcom/android/launcher3/model/OplusUnionGridCompatHelper;->mOriginalGrid:Landroid/graphics/Point;

    if-eqz v11, :cond_30

    sget-object v11, Lcom/android/launcher3/model/OplusUnionGridCompatHelper;->mUpdatedGrid:Landroid/graphics/Point;

    if-eqz v11, :cond_30

    sget-object v11, Lcom/android/launcher/mode/LauncherMode;->Simple:Lcom/android/launcher/mode/LauncherMode;

    invoke-virtual {v11, v9}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_30

    const-string/jumbo v11, "updateWidgetInfoIfNeeded update widget spanX "

    invoke-static {v11, v9}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;->getDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9

    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v12, "spanX"

    sget-object v13, Lcom/android/launcher3/model/OplusUnionGridCompatHelper;->mUpdatedGrid:Landroid/graphics/Point;

    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v13, v13, Landroid/graphics/Point;->x:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v12, "spanX=? AND itemType=?"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/String;

    sget-object v14, Lcom/android/launcher3/model/OplusUnionGridCompatHelper;->mOriginalGrid:Landroid/graphics/Point;

    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v14, v14, Landroid/graphics/Point;->x:I

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v7

    const-string v14, "5"

    aput-object v14, v13, v2

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_30

    :cond_af
    invoke-virtual {v3}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;->commit()V
    :try_end_b2
    .catchall {:try_start_29 .. :try_end_b2} :catchall_b6

    :try_start_b2
    invoke-static {v3, v4}, Li3/a;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V
    :try_end_b5
    .catch Ljava/lang/Exception; {:try_start_b2 .. :try_end_b5} :catch_c7
    .catchall {:try_start_b2 .. :try_end_b5} :catchall_c5

    goto :goto_d2

    :catchall_b6
    move-exception v4

    :try_start_b7
    throw v4
    :try_end_b8
    .catchall {:try_start_b7 .. :try_end_b8} :catchall_b8

    :catchall_b8
    move-exception v5

    :try_start_b9
    invoke-static {v3, v4}, Li3/a;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v5

    :cond_bd
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "null cannot be cast to non-null type com.android.launcher3.provider.LauncherDbUtils.SQLiteTransaction"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_c5
    .catch Ljava/lang/Exception; {:try_start_b9 .. :try_end_c5} :catch_c7
    .catchall {:try_start_b9 .. :try_end_c5} :catchall_c5

    :catchall_c5
    move-exception v1

    goto :goto_d6

    :catch_c7
    move-exception v3

    :try_start_c8
    const-string/jumbo v4, "updateWidgetInfoIfNeeded "

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d2
    .catchall {:try_start_c8 .. :try_end_d2} :catchall_c5

    :goto_d2
    invoke-static {p0, v0, v2}, Lcom/android/common/util/LauncherSharedPrefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void

    :goto_d6
    invoke-static {p0, v0, v2}, Lcom/android/common/util/LauncherSharedPrefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    throw v1
.end method
