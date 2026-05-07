.class public abstract Lcom/android/launcher3/model/OplusBaseLoaderTask;
.super Lcom/android/launcher3/model/LoaderTask;
.source ""


# static fields
.field public static final DEFAULT_THEME_UUID:Ljava/lang/String; = "-1"

.field private static final LOAD_TAG:Ljava/lang/String; = "loadAndBindWorkspace"

.field public static final PACKAGE_CLASS_NAME_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final PREF_ICON_DARK_FLAG:Ljava/lang/String; = "icon_dark_flag"

.field public static final PREF_ICON_PKG_NAME:Ljava/lang/String; = "icon_pkg_name"

.field public static final PREF_ICON_STYLE_FLAG:Ljava/lang/String; = "icon_style_flag"

.field public static final PREF_THEME_CHANGE_FLAG:Ljava/lang/String; = "theme_change_flag"

.field private static final PROJECTION:[Ljava/lang/String;

.field public static final THEME_UUID_KEY:Ljava/lang/String;

.field private static final sCollator:Ljava/text/Collator;

.field private static sFirstLoad:Z


# instance fields
.field private final mAllUsers:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation
.end field

.field private mAppFilter:Lcom/android/launcher3/AppFilter;

.field public mColorLoaderResults:Lcom/android/launcher3/model/OplusBaseLoaderResults;

.field private mInstallingPkgs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/android/launcher3/util/PackageUserKey;",
            "Landroid/content/pm/PackageInstaller$SessionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mIsIconThemeChanged:Z

.field private mIsSafeMode:Z

.field private mIsSdCardReady:Z

.field private mLauncherAppsCompat:Lcom/android/launcher/OplusLauncherAppsCompat;

.field public mModelWrite:Lcom/android/launcher3/model/OplusModelWriter;

.field private mNewUpdatedAppsManager:Lcom/android/launcher/NewUpdatedAppsManager;

.field private final mPendingPackages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/launcher3/util/PackageUserKey;",
            ">;"
        }
    .end annotation
.end field

.field private mPmHelper:Lcom/android/launcher3/util/PackageManagerHelper;

.field private final mQuietMode:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mShortcutKeyToPinnedShortcuts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/launcher3/shortcuts/ShortcutKey;",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mUnlockedUsers:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 24

    const v0, 0x7f120039

    invoke-static {v0}, Lcom/android/common/util/BrandComponentUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/model/OplusBaseLoaderTask;->THEME_UUID_KEY:Ljava/lang/String;

    const-string v1, "_id"

    const-string/jumbo v2, "title"

    const-string v3, "intent"

    const-string v4, "container"

    const-string v5, "screen"

    const-string v6, "cellX"

    const-string v7, "cellY"

    const-string/jumbo v8, "spanX"

    const-string/jumbo v9, "spanY"

    const-string v10, "itemType"

    const-string v11, "appWidgetId"

    const-string v12, "appWidgetProvider"

    const-string v13, "iconPackage"

    const-string v14, "iconResource"

    const-string v15, "restored"

    const-string v16, "profileId"

    const-string v17, "rank"

    const-string v18, "options"

    const-string/jumbo v19, "user_id"

    const-string v20, "card_type"

    const-string v21, "card_host_id"

    const-string v22, "service_id"

    const-string v23, "card_category"

    filled-new-array/range {v1 .. v23}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/model/OplusBaseLoaderTask;->PROJECTION:[Ljava/lang/String;

    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/model/OplusBaseLoaderTask;->sCollator:Ljava/text/Collator;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher3/model/OplusBaseLoaderTask;->sFirstLoad:Z

    new-instance v0, Lcom/android/launcher3/model/OplusBaseLoaderTask$1;

    invoke-direct {v0}, Lcom/android/launcher3/model/OplusBaseLoaderTask$1;-><init>()V

    sput-object v0, Lcom/android/launcher3/model/OplusBaseLoaderTask;->PACKAGE_CLASS_NAME_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/AllAppsList;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/ModelDelegate;Lcom/android/launcher3/model/LoaderResults;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/launcher3/model/LoaderTask;-><init>(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/AllAppsList;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/ModelDelegate;Lcom/android/launcher3/model/LoaderResults;)V

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mShortcutKeyToPinnedShortcuts:Ljava/util/Map;

    new-instance p2, Landroid/util/LongSparseArray;

    invoke-direct {p2}, Landroid/util/LongSparseArray;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mAllUsers:Landroid/util/LongSparseArray;

    new-instance p2, Landroid/util/LongSparseArray;

    invoke-direct {p2}, Landroid/util/LongSparseArray;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mQuietMode:Landroid/util/LongSparseArray;

    new-instance p2, Landroid/util/LongSparseArray;

    invoke-direct {p2}, Landroid/util/LongSparseArray;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mUnlockedUsers:Landroid/util/LongSparseArray;

    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mPendingPackages:Ljava/util/Set;

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mInstallingPkgs:Ljava/util/HashMap;

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mNewUpdatedAppsManager:Lcom/android/launcher/NewUpdatedAppsManager;

    const-string p3, "Base"

    invoke-virtual {p0, p3}, Lcom/android/launcher3/model/LoaderTask;->setTag(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/android/launcher3/OplusAppFilter;->newInstance(Landroid/content/Context;)Lcom/android/launcher3/OplusAppFilter;

    move-result-object p3

    iput-object p3, p0, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mAppFilter:Lcom/android/launcher3/AppFilter;

    check-cast p5, Lcom/android/launcher3/model/OplusBaseLoaderResults;

    iput-object p5, p0, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mColorLoaderResults:Lcom/android/launcher3/model/OplusBaseLoaderResults;

    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p3, p2}, Lcom/android/launcher3/OplusLauncherModel;->getWriter(ZZLcom/android/launcher3/model/BgDataModel$Callbacks;)Lcom/android/launcher3/model/OplusModelWriter;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mModelWrite:Lcom/android/launcher3/model/OplusModelWriter;

    iget-object p1, p0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher/OplusLauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher/OplusLauncherAppsCompat;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mLauncherAppsCompat:Lcom/android/launcher/OplusLauncherAppsCompat;

    return-void
.end method

.method public static synthetic access$000()Ljava/text/Collator;
    .registers 1

    sget-object v0, Lcom/android/launcher3/model/OplusBaseLoaderTask;->sCollator:Ljava/text/Collator;

    return-object v0
.end method

.method private bindExtraWorkspaceItemList(Landroid/content/Context;ZI)V
    .registers 18

    move-object v0, p0

    new-instance v10, Lcom/android/launcher3/util/IntArray;

    invoke-direct {v10}, Lcom/android/launcher3/util/IntArray;-><init>()V

    new-instance v11, Lcom/android/launcher3/util/IntArray;

    invoke-direct {v11}, Lcom/android/launcher3/util/IntArray;-><init>()V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iget-object v13, v0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    monitor-enter v13

    :try_start_13
    iget-object v1, v0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    iget-object v2, v0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v3, v0, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mModelWrite:Lcom/android/launcher3/model/OplusModelWriter;

    iget-object v4, v2, Lcom/android/launcher3/model/BgDataModel;->mBgDataModelHelper:Lcom/android/launcher/model/BgDataModelHelper;

    iget-object v6, v4, Lcom/android/launcher/model/BgDataModelHelper;->mExtraWorkspaceItemList:Ljava/util/List;

    const/4 v7, 0x1

    move-object v4, v10

    move-object v5, v11

    move-object v8, v12

    move/from16 v9, p3

    invoke-static/range {v1 .. v9}, Lcom/android/launcher/model/FindSpaceHelper;->findSpaceForItems(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/ModelWriter;Lcom/android/launcher3/util/IntArray;Lcom/android/launcher3/util/IntArray;Ljava/util/List;ZLjava/util/List;I)Ljava/util/List;

    monitor-exit v13
    :try_end_27
    .catchall {:try_start_13 .. :try_end_27} :catchall_9e

    invoke-virtual {v11}, Lcom/android/launcher3/util/IntArray;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4c

    sget-object v1, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    const-string v2, "added extra screens "

    invoke-static {v2}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v11}, Lcom/android/launcher3/util/IntArray;->toConcatString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, p1

    invoke-static {p1, v10}, Lcom/android/launcher3/LauncherModel;->updateWorkspaceScreenOrder(Landroid/content/Context;Lcom/android/launcher3/util/IntArray;)V

    iget-object v1, v0, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mColorLoaderResults:Lcom/android/launcher3/model/OplusBaseLoaderResults;

    invoke-virtual {v1, v11}, Lcom/android/launcher3/model/OplusBaseLoaderResults;->bindWorkspaceScreen(Lcom/android/launcher3/util/IntArray;)V

    :cond_4c
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_69

    sget-object v1, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    const-string v2, "added extra ItemInfo "

    invoke-static {v2}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v12, v2, v1}, Lcom/android/launcher/f;->a(Ljava/util/ArrayList;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mColorLoaderResults:Lcom/android/launcher3/model/OplusBaseLoaderResults;

    const/4 v2, 0x0

    move/from16 v3, p2

    invoke-virtual {v1, v3, v2}, Lcom/android/launcher3/model/OplusBaseLoaderResults;->getDeferredExecutor(ZZ)Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-virtual {v1, v12, v2}, Lcom/android/launcher3/model/OplusBaseLoaderResults;->bindWorkspaceItems(Ljava/util/ArrayList;Ljava/util/concurrent/Executor;)V

    :cond_69
    iget-object v1, v0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    monitor-enter v1

    :try_start_6c
    iget-object v2, v0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v2, v2, Lcom/android/launcher3/model/BgDataModel;->mBgDataModelHelper:Lcom/android/launcher/model/BgDataModelHelper;

    iget-object v2, v2, Lcom/android/launcher/model/BgDataModelHelper;->mExtraWorkspaceItemList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_99

    sget-object v2, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "still exist extra item list, size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v0, v0, Lcom/android/launcher3/model/BgDataModel;->mBgDataModelHelper:Lcom/android/launcher/model/BgDataModelHelper;

    iget-object v0, v0, Lcom/android/launcher/model/BgDataModelHelper;->mExtraWorkspaceItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_99
    monitor-exit v1

    return-void

    :catchall_9b
    move-exception v0

    monitor-exit v1
    :try_end_9d
    .catchall {:try_start_6c .. :try_end_9d} :catchall_9b

    throw v0

    :catchall_9e
    move-exception v0

    :try_start_9f
    monitor-exit v13
    :try_end_a0
    .catchall {:try_start_9f .. :try_end_a0} :catchall_9e

    throw v0
.end method

.method public static clearIconDbIfThemeChanged(Landroid/content/Context;Lcom/android/launcher3/icons/IconCache;Z)Z
    .registers 36

    move-object/from16 v1, p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v4, Lcom/android/launcher3/model/OplusBaseLoaderTask;->THEME_UUID_KEY:Ljava/lang/String;

    invoke-static {v0, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v5, "-1"

    if-eqz v4, :cond_21

    sget-object v4, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    const-string v6, "clearIconDbIfThemeChanged currentTheme = "

    invoke-static {v6, v0, v4}, Lcom/android/common/multiapp/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v5

    goto :goto_22

    :cond_21
    move-object v4, v0

    :goto_22
    const/4 v6, 0x0

    :try_start_23
    invoke-static {}, Lcom/android/common/util/CacheUtils;->getNativeConfiguration()Landroid/content/res/Configuration;

    move-result-object v6
    :try_end_27
    .catch Lcom/oplus/compat/utils/util/UnSupportedApiVersionException; {:try_start_23 .. :try_end_27} :catch_28

    goto :goto_43

    :catch_28
    move-exception v0

    move-object v7, v0

    sget-object v0, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    const-string v8, "getConfiguration e:"

    invoke-static {v8}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    :goto_43
    invoke-static {v6}, Lcom/oplus/uxicon/ui/util/UxIconPackHelper;->getIconPackName(Landroid/content/res/Configuration;)Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/android/launcher/theme/OplusUIEngine;->isDefaultTheme()Z

    move-result v0

    const-string v8, "icon_style_flag"

    const-wide/16 v9, 0x0

    if-eqz v0, :cond_6e

    invoke-static {v1, v8, v9, v10}, Lcom/android/common/util/LauncherSharedPrefs;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v12

    :try_start_55
    invoke-static {v6}, Lcom/android/common/util/CacheUtils;->getUxIconConfig(Landroid/content/res/Configuration;)J

    move-result-wide v9
    :try_end_59
    .catch Lcom/oplus/compat/utils/util/UnSupportedApiVersionException; {:try_start_55 .. :try_end_59} :catch_5a

    goto :goto_5f

    :catch_5a
    move-exception v0

    move-object v14, v0

    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    :goto_5f
    cmp-long v0, v9, v12

    if-eqz v0, :cond_66

    const/4 v0, 0x1

    const/4 v14, 0x1

    goto :goto_68

    :cond_66
    const/4 v0, 0x0

    const/4 v14, 0x0

    :goto_68
    move-wide/from16 v31, v9

    move-wide v9, v12

    move-wide/from16 v12, v31

    goto :goto_71

    :cond_6e
    move-wide v12, v9

    const/4 v0, 0x0

    const/4 v14, 0x0

    :goto_71
    invoke-static {}, Lcom/android/launcher/theme/LauncherIconConfig;->isIconConfigLoaded()Z

    move-result v15

    const-string v11, "icon_dark_flag"

    if-eqz v6, :cond_94

    if-eqz v15, :cond_94

    invoke-virtual {v6}, Landroid/content/res/Configuration;->isNightModeActive()Z

    move-result v15

    invoke-static {}, Lcom/android/launcher/theme/LauncherIconConfig;->isDarkModeIcon()Z

    move-result v17

    move-wide/from16 v18, v2

    const/4 v2, 0x0

    invoke-static {v1, v11, v2}, Lcom/android/common/util/LauncherSharedPrefs;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    if-eqz v15, :cond_8f

    if-eqz v17, :cond_8f

    const/4 v2, 0x1

    :cond_8f
    if-eq v2, v3, :cond_98

    const/4 v0, 0x1

    const/4 v15, 0x1

    goto :goto_99

    :cond_94
    move-wide/from16 v18, v2

    const/4 v3, 0x0

    const/4 v2, 0x1

    :cond_98
    const/4 v15, 0x0

    :goto_99
    move-object/from16 v17, v8

    move/from16 v16, v15

    move v15, v3

    move v3, v2

    move v2, v0

    const-string/jumbo v8, "theme_change_flag"

    if-nez v2, :cond_d2

    const/4 v0, 0x1

    move/from16 v20, v2

    invoke-static {v1, v8, v0}, Lcom/android/common/util/LauncherSharedPrefs;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    :try_start_ac
    invoke-static {v6}, Lcom/oplus/compat/content/res/ConfigurationNative;->getThemeChanged(Landroid/content/res/Configuration;)I

    move-result v0
    :try_end_b0
    .catch Lcom/oplus/compat/utils/util/UnSupportedApiVersionException; {:try_start_ac .. :try_end_b0} :catch_b1

    goto :goto_b8

    :catch_b1
    move-exception v0

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x1

    :goto_b8
    if-eq v0, v2, :cond_c5

    const/16 v20, 0x1

    const/16 v21, 0x1

    move-object/from16 v22, v8

    move/from16 v31, v21

    move/from16 v21, v2

    goto :goto_df

    :cond_c5
    const/16 v21, 0x0

    move-object/from16 v22, v8

    move/from16 v31, v21

    move/from16 v21, v2

    move/from16 v2, v20

    move/from16 v20, v31

    goto :goto_e1

    :cond_d2
    move/from16 v20, v2

    const/4 v0, 0x0

    const/4 v2, 0x1

    const/16 v21, 0x0

    move-object/from16 v22, v8

    move/from16 v31, v20

    move/from16 v20, v0

    move v0, v2

    :goto_df
    move/from16 v2, v31

    :goto_e1
    const-string v8, ""

    move/from16 v23, v2

    if-nez v2, :cond_fd

    sget-object v2, Lcom/android/launcher3/model/OplusBaseLoaderTask;->THEME_UUID_KEY:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_fd

    invoke-static {v1, v2, v5}, Lcom/android/common/util/LauncherSharedPrefs;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_fe

    const/4 v5, 0x1

    const/16 v23, 0x1

    goto :goto_ff

    :cond_fd
    move-object v2, v8

    :cond_fe
    const/4 v5, 0x0

    :goto_ff
    move-object/from16 v24, v11

    move/from16 v31, v5

    move-object v5, v2

    move/from16 v2, v23

    move/from16 v23, v31

    const-string v11, "icon_pkg_name"

    if-nez v2, :cond_11a

    invoke-static {v1, v11, v8}, Lcom/android/common/util/LauncherSharedPrefs;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_11a

    const/4 v2, 0x1

    const/16 v25, 0x1

    goto :goto_11c

    :cond_11a
    const/16 v25, 0x0

    :goto_11c
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v26

    const/16 v27, 0x3

    const/16 v28, 0x2

    if-eqz v26, :cond_203

    move-object/from16 v26, v11

    sget-object v11, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    const/16 v1, 0x21

    new-array v1, v1, [Ljava/lang/Object;

    const-string v29, "CheckThemeStyle:"

    const/16 v30, 0x0

    aput-object v29, v1, v30

    const-string v29, " prevDarkIconFlag: "

    const/16 v30, 0x1

    aput-object v29, v1, v30

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v1, v28

    const-string v15, ", currentDarkIconFlag: "

    aput-object v15, v1, v27

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v15, 0x4

    aput-object v3, v1, v15

    const/4 v3, 0x5

    const-string v15, " prevThemeFlag: "

    aput-object v15, v1, v3

    const/4 v3, 0x6

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v1, v3

    const/4 v3, 0x7

    const-string v15, ", currentThemeFlag: "

    aput-object v15, v1, v3

    const/16 v3, 0x8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v1, v3

    const/16 v3, 0x9

    const-string v15, ", prevIconStyleFlag: "

    aput-object v15, v1, v3

    const/16 v3, 0xa

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v1, v3

    const/16 v3, 0xb

    const-string v9, ", curIconStyleFlag: "

    aput-object v9, v1, v3

    const/16 v3, 0xc

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v1, v3

    const/16 v3, 0xd

    const-string v9, ", prevThemeUuid: "

    aput-object v9, v1, v3

    const/16 v3, 0xe

    aput-object v5, v1, v3

    const/16 v3, 0xf

    const-string v5, ", currentThemeUuid: "

    aput-object v5, v1, v3

    const/16 v3, 0x10

    aput-object v4, v1, v3

    const/16 v3, 0x11

    const-string v5, ", styleChanged: "

    aput-object v5, v1, v3

    const/16 v3, 0x12

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v1, v3

    const/16 v3, 0x13

    const-string v5, ", themeFlagChanged: "

    aput-object v5, v1, v3

    const/16 v3, 0x14

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v1, v3

    const/16 v3, 0x15

    const-string v5, ", themeUuidChanged: "

    aput-object v5, v1, v3

    const/16 v3, 0x16

    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v1, v3

    const/16 v3, 0x17

    const-string v5, ",prevPkgName = "

    aput-object v5, v1, v3

    const/16 v3, 0x18

    aput-object v8, v1, v3

    const/16 v3, 0x19

    const-string v5, " ,currentPkgName = "

    aput-object v5, v1, v3

    const/16 v3, 0x1a

    aput-object v7, v1, v3

    const/16 v3, 0x1b

    const-string v5, ", clear: "

    aput-object v5, v1, v3

    const/16 v3, 0x1c

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v1, v3

    const/16 v3, 0x1d

    const-string v5, ", configuration: "

    aput-object v5, v1, v3

    const/16 v3, 0x1e

    if-eqz v6, :cond_1ed

    iget-object v5, v6, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    goto :goto_1ef

    :cond_1ed
    const-string v5, "null"

    :goto_1ef
    aput-object v5, v1, v3

    const/16 v3, 0x1f

    const-string v5, ", update:"

    aput-object v5, v1, v3

    const/16 v3, 0x20

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v1, v3

    invoke-static {v11, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_205

    :cond_203
    move-object/from16 v26, v11

    :goto_205
    if-eqz v2, :cond_242

    if-eqz p2, :cond_242

    if-eqz p1, :cond_20e

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/icons/cache/BaseIconCache;->clearIconsCacheAndDb()V

    :cond_20e
    if-eqz v16, :cond_219

    const/4 v1, -0x1

    move-object/from16 v3, p0

    move-object/from16 v5, v24

    invoke-static {v3, v5, v1}, Lcom/android/common/util/LauncherSharedPrefs;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_21b

    :cond_219
    move-object/from16 v3, p0

    :goto_21b
    if-eqz v14, :cond_222

    move-object/from16 v1, v17

    invoke-static {v3, v1, v12, v13}, Lcom/android/common/util/LauncherSharedPrefs;->putLong(Landroid/content/Context;Ljava/lang/String;J)V

    :cond_222
    if-eqz v20, :cond_229

    move-object/from16 v1, v22

    invoke-static {v3, v1, v0}, Lcom/android/common/util/LauncherSharedPrefs;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_229
    if-nez v20, :cond_22d

    if-eqz v23, :cond_238

    :cond_22d
    sget-object v0, Lcom/android/launcher3/model/OplusBaseLoaderTask;->THEME_UUID_KEY:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_238

    invoke-static {v3, v0, v4}, Lcom/android/common/util/LauncherSharedPrefs;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_238
    if-nez v14, :cond_23c

    if-eqz v25, :cond_244

    :cond_23c
    move-object/from16 v0, v26

    invoke-static {v3, v0, v7}, Lcom/android/common/util/LauncherSharedPrefs;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_244

    :cond_242
    move-object/from16 v3, p0

    :cond_244
    :goto_244
    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->isOtaVersionUpdate()Z

    move-result v0

    if-eqz v0, :cond_25d

    sget-boolean v0, Lcom/android/launcher3/model/OplusBaseLoaderTask;->sFirstLoad:Z

    if-eqz v0, :cond_25d

    sget-object v0, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    const-string v1, " when OTA version update, clear IconDB anyway"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_25d

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/icons/cache/BaseIconCache;->clearIconsCacheAndDb()V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher3/model/OplusBaseLoaderTask;->sFirstLoad:Z

    :cond_25d
    invoke-static/range {p0 .. p0}, Lcom/android/launcher3/util/Themes;->isThemedIconEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_268

    if-eqz p1, :cond_268

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/icons/cache/BaseIconCache;->clearIconsCacheAndDb()V

    :cond_268
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v3, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "clearIconDbIfThemeChanged cost: "

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sub-long v0, v0, v18

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v4, v1

    const-string v0, ", changed = "

    aput-object v0, v4, v28

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v4, v27

    invoke-static {v3, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return v2
.end method

.method private finishLoadWorkspace(Landroid/content/Context;)V
    .registers 8

    iget-object v0, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mIsSdCardReady:Z

    if-nez v1, :cond_2e

    iget-object v1, p0, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mPendingPackages:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2e

    new-instance v1, Lcom/android/launcher3/model/SdCardAvailableReceiver;

    iget-object v2, p0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    iget-object v3, p0, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mPendingPackages:Ljava/util/Set;

    invoke-direct {v1, v2, v3}, Lcom/android/launcher3/model/SdCardAvailableReceiver;-><init>(Lcom/android/launcher3/LauncherAppState;Ljava/util/Set;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    new-instance v4, Landroid/os/Handler;

    sget-object v5, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v5}, Lcom/android/launcher3/util/LooperExecutor;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :cond_2e
    iget-object v1, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v1, v1, Lcom/android/launcher3/model/BgDataModel;->mBgDataModelHelper:Lcom/android/launcher/model/BgDataModelHelper;

    iget-object v1, v1, Lcom/android/launcher/model/BgDataModelHelper;->workspaceScreens:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {v1}, Lcom/android/launcher3/util/IntArray;->clone()Lcom/android/launcher3/util/IntArray;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v2, v2, Lcom/android/launcher3/model/BgDataModel;->itemsIdMap:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v2}, Lcom/android/launcher3/util/IntSparseArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_40
    :goto_40
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/data/ItemInfo;

    iget v4, v3, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    iget v3, v3, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v5, -0x64

    if-ne v3, v5, :cond_40

    invoke-virtual {v1, v4}, Lcom/android/launcher3/util/IntArray;->contains(I)Z

    move-result v3

    if-eqz v3, :cond_40

    invoke-virtual {v1, v4}, Lcom/android/launcher3/util/IntArray;->removeValue(I)V

    goto :goto_40

    :cond_5e
    invoke-virtual {v1}, Lcom/android/launcher3/util/IntArray;->size()I

    move-result v2

    if-eqz v2, :cond_90

    sget-object v2, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "finishLoadWorkspace: remove empty screens size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/launcher3/util/IntArray;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v2, v2, Lcom/android/launcher3/model/BgDataModel;->mBgDataModelHelper:Lcom/android/launcher/model/BgDataModelHelper;

    iget-object v2, v2, Lcom/android/launcher/model/BgDataModelHelper;->workspaceScreens:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/util/IntArray;->removeAllValues(Lcom/android/launcher3/util/IntArray;)V

    iget-object p0, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object p0, p0, Lcom/android/launcher3/model/BgDataModel;->mBgDataModelHelper:Lcom/android/launcher/model/BgDataModelHelper;

    iget-object p0, p0, Lcom/android/launcher/model/BgDataModelHelper;->workspaceScreens:Lcom/android/launcher3/util/IntArray;

    invoke-static {p1, p0}, Lcom/android/launcher3/LauncherModel;->updateWorkspaceScreenOrder(Landroid/content/Context;Lcom/android/launcher3/util/IntArray;)V

    :cond_90
    monitor-exit v0
    :try_end_91
    .catchall {:try_start_3 .. :try_end_91} :catchall_99

    invoke-static {}, Lcom/android/launcher/LauncherSimpleModeHelper;->getInstance()Lcom/android/launcher/LauncherSimpleModeHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/LauncherSimpleModeHelper;->resetSimplemodeIconChangingFlag()V

    return-void

    :catchall_99
    move-exception p0

    :try_start_9a
    monitor-exit v0
    :try_end_9b
    .catchall {:try_start_9a .. :try_end_9b} :catchall_99

    throw p0
.end method

.method private inspectSwitch(Landroid/content/Context;)V
    .registers 6

    iget-boolean p0, p0, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mIsIconThemeChanged:Z

    if-eqz p0, :cond_45

    const/4 p0, 0x0

    :try_start_5
    invoke-static {}, Lcom/android/common/util/CacheUtils;->getNativeConfiguration()Landroid/content/res/Configuration;

    move-result-object p0
    :try_end_9
    .catch Lcom/oplus/compat/utils/util/UnSupportedApiVersionException; {:try_start_5 .. :try_end_9} :catch_a

    goto :goto_24

    :catch_a
    move-exception v0

    sget-object v1, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    const-string v2, "getConfiguration e:"

    invoke-static {v2}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_24
    invoke-static {}, Lcom/android/launcher/theme/LauncherIconConfig;->isIconConfigLoaded()Z

    move-result v0

    if-eqz p0, :cond_45

    if-eqz v0, :cond_45

    invoke-virtual {p0}, Landroid/content/res/Configuration;->isNightModeActive()Z

    move-result p0

    invoke-static {}, Lcom/android/launcher/theme/LauncherIconConfig;->isDarkModeIcon()Z

    move-result v0

    const-string v1, "icon_dark_flag"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lcom/android/common/util/LauncherSharedPrefs;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    if-eqz p0, :cond_40

    if-eqz v0, :cond_40

    const/4 v2, 0x1

    :cond_40
    if-eq v2, v3, :cond_45

    invoke-static {p1, v1, v2}, Lcom/android/common/util/LauncherSharedPrefs;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_45
    return-void
.end method

.method private loadAndBindExtraPinnedShortcut(Landroid/content/Context;Z)V
    .registers 9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/android/launcher3/model/ItemInstallQueue;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/ItemInstallQueue;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/model/ItemInstallQueue;->getPendingShortcuts(Landroid/os/UserHandle;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    monitor-enter v2

    :try_start_22
    iget-object v3, p0, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mShortcutKeyToPinnedShortcuts:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2c
    :goto_2c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_77

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/shortcuts/ShortcutKey;

    iget-object v5, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v5, v5, Lcom/android/launcher3/model/BgDataModel;->mBgDataModelHelper:Lcom/android/launcher/model/BgDataModelHelper;

    iget-object v5, v5, Lcom/android/launcher/model/BgDataModelHelper;->pinnedShortcutCounts:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/MutableInt;

    if-eqz v5, :cond_4a

    iget v5, v5, Landroid/util/MutableInt;->value:I

    if-nez v5, :cond_2c

    :cond_4a
    invoke-virtual {v1, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2c

    iget-object v5, p0, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mShortcutKeyToPinnedShortcuts:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ShortcutInfo;

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher/mode/LauncherModeManager;->isInSimpleMode()Z

    move-result v5

    if-eqz v5, :cond_73

    sget-object v5, Lcom/android/launcher3/shortcuts/NoBadgeShortcutHelper;->INSTANCE:Lcom/android/launcher3/shortcuts/NoBadgeShortcutHelper;

    invoke-virtual {v5, v4}, Lcom/android/launcher3/shortcuts/NoBadgeShortcutHelper;->isHeytapMarketShortcutType(Landroid/content/pm/ShortcutInfo;)Z

    move-result v5

    if-eqz v5, :cond_73

    sget-object v4, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "skip heytap market shortcut"

    invoke-static {v4, v5}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2c

    :cond_73
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2c

    :cond_77
    monitor-exit v2
    :try_end_78
    .catchall {:try_start_22 .. :try_end_78} :catchall_de

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_dd

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_87
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ShortcutInfo;

    new-instance v3, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-direct {v3, v2, p1}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;-><init>(Landroid/content/pm/ShortcutInfo;Landroid/content/Context;)V

    iget-object v4, p0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object v4

    invoke-virtual {v4, v3, v2}, Lcom/android/launcher3/icons/IconCache;->getShortcutIcon(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Landroid/content/pm/ShortcutInfo;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_87

    :cond_a5
    iget-object v0, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    monitor-enter v0

    :try_start_a8
    iget-object v2, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v2, v2, Lcom/android/launcher3/model/BgDataModel;->mBgDataModelHelper:Lcom/android/launcher/model/BgDataModelHelper;

    iget-object v2, v2, Lcom/android/launcher/model/BgDataModelHelper;->mExtraWorkspaceItemList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    sget-object v1, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadAndBindExtraPinnedShortcut: extra workspace size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v3, v3, Lcom/android/launcher3/model/BgDataModel;->mBgDataModelHelper:Lcom/android/launcher/model/BgDataModelHelper;

    iget-object v3, v3, Lcom/android/launcher/model/BgDataModelHelper;->mExtraWorkspaceItemList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0
    :try_end_d2
    .catchall {:try_start_a8 .. :try_end_d2} :catchall_da

    invoke-virtual {p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/model/OplusBaseLoaderTask;->bindExtraWorkspaceItemList(Landroid/content/Context;ZI)V

    goto :goto_dd

    :catchall_da
    move-exception p0

    :try_start_db
    monitor-exit v0
    :try_end_dc
    .catchall {:try_start_db .. :try_end_dc} :catchall_da

    throw p0

    :cond_dd
    :goto_dd
    return-void

    :catchall_de
    move-exception p0

    :try_start_df
    monitor-exit v2
    :try_end_e0
    .catchall {:try_start_df .. :try_end_e0} :catchall_de

    throw p0
.end method

.method private loadAndBindExtraSpecialItems(Landroid/content/Context;Z)V
    .registers 9

    iget-object v0, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    invoke-static {p1, v0}, Lcom/android/launcher3/ota/AddCardManager;->makeSpaceForBreenoUsCardFromClockInWorkspace(Landroid/content/Context;Lcom/android/launcher3/model/BgDataModel;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mColorLoaderResults:Lcom/android/launcher3/model/OplusBaseLoaderResults;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/model/OplusBaseLoaderResults;->rebindWidgets(Ljava/util/List;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/android/launcher3/ota/AddCardManager;->getExtraAddItems(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6d

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v2, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    monitor-enter v2

    :try_start_2d
    iget-object v3, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v3, v3, Lcom/android/launcher3/model/BgDataModel;->mBgDataModelHelper:Lcom/android/launcher/model/BgDataModelHelper;

    iget-object v3, v3, Lcom/android/launcher/model/BgDataModelHelper;->mExtraWorkspaceItemList:Ljava/util/List;

    iget-object v4, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    sget-object v3, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadAndBindExtraSpecialItems: extra workspace size = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v5, v5, Lcom/android/launcher3/model/BgDataModel;->mBgDataModelHelper:Lcom/android/launcher/model/BgDataModelHelper;

    iget-object v5, v5, Lcom/android/launcher/model/BgDataModelHelper;->mExtraWorkspaceItemList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v2
    :try_end_5b
    .catchall {:try_start_2d .. :try_end_5b} :catchall_6a

    invoke-virtual {p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, p1, p2, v1}, Lcom/android/launcher3/model/OplusBaseLoaderTask;->bindExtraWorkspaceItemList(Landroid/content/Context;ZI)V

    goto :goto_1e

    :catchall_6a
    move-exception p0

    :try_start_6b
    monitor-exit v2
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_6a

    throw p0

    :cond_6d
    return-void
.end method

.method private loadAndBindWorkspace(Landroid/content/Context;)V
    .registers 15

    new-instance v0, Lcom/android/launcher3/logging/OplusTimingLogger;

    const-string v1, "loadAndBindWorkspace"

    const-string v2, "LoadAndBindWorkspace"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/logging/OplusTimingLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    invoke-direct {p0, p1}, Lcom/android/launcher3/model/OplusBaseLoaderTask;->loadWorkspaceScreens(Landroid/content/Context;)Lcom/android/launcher3/util/IntArray;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    const-string v3, "get orderedScreenIds: "

    invoke-static {v3}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/launcher3/util/IntArray;->toConcatString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "step[1]: load all workspace screens"

    invoke-virtual {v0, v2}, Lcom/android/launcher3/logging/OplusTimingLogger;->addSplit(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    iget-object v2, p0, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mColorLoaderResults:Lcom/android/launcher3/model/OplusBaseLoaderResults;

    invoke-virtual {v2}, Lcom/android/launcher3/model/OplusBaseLoaderResults;->startBinding()V

    const-string/jumbo v2, "step[2]: start bind"

    invoke-virtual {v0, v2}, Lcom/android/launcher3/logging/OplusTimingLogger;->addSplit(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    invoke-static {p1}, Lcom/android/launcher/download/DownloadAppsManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/download/DownloadAppsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher/download/DownloadAppsManager;->init()V

    invoke-static {}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->getSInstance()Lcom/android/launcher/folder/download/FolderRecommendUtils;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v3, v3, Lcom/android/launcher3/model/BgDataModel;->marketRecommendModel:Lcom/android/launcher/folder/download/model/MarketRecommendModel;

    invoke-virtual {v2, v3}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->init(Lcom/android/launcher/folder/download/model/MarketRecommendModel;)V

    const-string/jumbo v2, "step[3]: init download apps"

    invoke-virtual {v0, v2}, Lcom/android/launcher3/logging/OplusTimingLogger;->addSplit(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    iget-object v2, p0, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mColorLoaderResults:Lcom/android/launcher3/model/OplusBaseLoaderResults;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/model/OplusBaseLoaderResults;->bindWorkspaceScreen(Lcom/android/launcher3/util/IntArray;)V

    const-string/jumbo v2, "step[4]: bind all workspace screens"

    invoke-virtual {v0, v2}, Lcom/android/launcher3/logging/OplusTimingLogger;->addSplit(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/util/OplusLauncherDbUtils;->getCurrentItemTable()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "table name = "

    invoke-static {v4, v2, v3}, Lcom/android/common/multiapp/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mColorLoaderResults:Lcom/android/launcher3/model/OplusBaseLoaderResults;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/model/OplusBaseLoaderResults;->getCurrentScreenIds(Lcom/android/launcher3/util/IntArray;)Lcom/android/launcher3/util/IntSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/util/IntSet;->size()I

    move-result v3

    const/4 v4, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-lez v3, :cond_8a

    invoke-virtual {v2}, Lcom/android/launcher3/util/IntSet;->getArray()Lcom/android/launcher3/util/IntArray;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/android/launcher3/util/IntArray;->get(I)I

    move-result v3

    if-eq v3, v4, :cond_8a

    move v3, v5

    goto :goto_8b

    :cond_8a
    move v3, v6

    :goto_8b
    invoke-virtual {p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    const/16 v7, -0x65

    invoke-direct {p0, p1, v7, v4}, Lcom/android/launcher3/model/OplusBaseLoaderTask;->loadSpecificScreenItems(Landroid/content/Context;II)V

    const-string/jumbo v4, "step[5]: load hot seat items"

    invoke-virtual {v0, v4}, Lcom/android/launcher3/logging/OplusTimingLogger;->addSplit(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    invoke-direct {p0}, Lcom/android/launcher3/model/OplusBaseLoaderTask;->loadHotseatExpandItems()V

    const-string/jumbo v4, "step[5plus]: load hot seat expand items"

    invoke-virtual {v0, v4}, Lcom/android/launcher3/logging/OplusTimingLogger;->addSplit(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    iget-object v4, p0, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mColorLoaderResults:Lcom/android/launcher3/model/OplusBaseLoaderResults;

    invoke-virtual {v4, v6, v5, v3, v5}, Lcom/android/launcher3/model/OplusBaseLoaderResults;->bindWorkspaceItems(IZZZ)V

    const-string/jumbo v4, "step[6]: bind hot seat items"

    invoke-virtual {v0, v4}, Lcom/android/launcher3/logging/OplusTimingLogger;->addSplit(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mColorLoaderResults:Lcom/android/launcher3/model/OplusBaseLoaderResults;

    invoke-virtual {v4}, Lcom/android/launcher3/model/OplusBaseLoaderResults;->finishBindHotSeat()V

    sget-object v4, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "validFirstPage = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", currentScreenIds = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    invoke-virtual {v2}, Lcom/android/launcher3/util/IntSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_de
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/16 v8, -0x64

    if-eqz v7, :cond_10e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {p0, p1, v8, v7}, Lcom/android/launcher3/model/OplusBaseLoaderTask;->loadSpecificScreenItems(Landroid/content/Context;II)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "step[7]: load current screen["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "] items"

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/launcher3/logging/OplusTimingLogger;->addSplit(Ljava/lang/String;)V

    goto :goto_de

    :cond_10e
    invoke-virtual {p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    invoke-virtual {v2}, Lcom/android/launcher3/util/IntSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_115
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_12b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v9, p0, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mColorLoaderResults:Lcom/android/launcher3/model/OplusBaseLoaderResults;

    invoke-virtual {v9, v7, v6, v3, v5}, Lcom/android/launcher3/model/OplusBaseLoaderResults;->bindWorkspaceItems(IZZZ)V

    goto :goto_115

    :cond_12b
    const-string/jumbo v4, "step[8]: bind current screen items"

    invoke-virtual {v0, v4}, Lcom/android/launcher3/logging/OplusTimingLogger;->addSplit(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    invoke-virtual {v1}, Lcom/android/launcher3/util/IntArray;->size()I

    move-result v4

    move v7, v6

    :goto_139
    if-ge v7, v4, :cond_190

    invoke-virtual {v1, v7}, Lcom/android/launcher3/util/IntArray;->get(I)I

    move-result v9

    sget-object v10, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    const-string v11, "loadAndBindWorkspace, i = "

    const-string v12, ", screenId = "

    invoke-static {v11, v7, v12, v9, v10}, Lcom/android/common/config/g;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v2, v9}, Lcom/android/launcher3/util/IntSet;->contains(I)Z

    move-result v10

    if-nez v10, :cond_18d

    invoke-direct {p0, p1, v8, v9}, Lcom/android/launcher3/model/OplusBaseLoaderTask;->loadSpecificScreenItems(Landroid/content/Context;II)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "step[10]: load screen["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "] items"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/android/launcher3/logging/OplusTimingLogger;->addSplit(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    iget-object v10, p0, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mColorLoaderResults:Lcom/android/launcher3/model/OplusBaseLoaderResults;

    invoke-virtual {v10, v9, v6, v3, v5}, Lcom/android/launcher3/model/OplusBaseLoaderResults;->bindWorkspaceItems(IZZZ)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "step[10]: bind screen["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "] items"

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/android/launcher3/logging/OplusTimingLogger;->addSplit(Ljava/lang/String;)V

    :cond_18d
    add-int/lit8 v7, v7, 0x1

    goto :goto_139

    :cond_190
    invoke-virtual {p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher/mode/LauncherModeManager;->isInSimpleMode()Z

    move-result v1

    if-nez v1, :cond_1a0

    invoke-direct {p0, p1, v3}, Lcom/android/launcher3/model/OplusBaseLoaderTask;->loadAndBindExtraPinnedShortcut(Landroid/content/Context;Z)V

    :cond_1a0
    const-string/jumbo v4, "step[11]: load and bind pinned shortcuts"

    invoke-virtual {v0, v4}, Lcom/android/launcher3/logging/OplusTimingLogger;->addSplit(Ljava/lang/String;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, p0, Lcom/android/launcher3/model/LoaderTask;->mBgAllAppsList:Lcom/android/launcher3/model/AllAppsList;

    check-cast v5, Lcom/android/launcher3/model/OplusAllAppsList;

    invoke-virtual {v5, p1, v4}, Lcom/android/launcher3/model/OplusAllAppsList;->addExtraPromissAppInfo(Landroid/content/Context;Ljava/util/ArrayList;)V

    iget-object v5, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    monitor-enter v5

    :try_start_1b5
    iget-object v6, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v6, v6, Lcom/android/launcher3/model/BgDataModel;->mBgDataModelHelper:Lcom/android/launcher/model/BgDataModelHelper;

    iget-object v6, v6, Lcom/android/launcher/model/BgDataModelHelper;->mNoPositionList:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    sget-object v4, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "loadAndBindWorkspace: no position size = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v7, v7, Lcom/android/launcher3/model/BgDataModel;->mBgDataModelHelper:Lcom/android/launcher/model/BgDataModelHelper;

    iget-object v7, v7, Lcom/android/launcher/model/BgDataModelHelper;->mNoPositionList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v5
    :try_end_1df
    .catchall {:try_start_1b5 .. :try_end_1df} :catchall_2eb

    invoke-virtual {p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    invoke-virtual {p0, v3}, Lcom/android/launcher3/model/OplusBaseLoaderTask;->onWorkspaceScreenBindCompleted(Z)V

    const-string/jumbo v4, "step[12]: bind no position items"

    invoke-virtual {v0, v4}, Lcom/android/launcher3/logging/OplusTimingLogger;->addSplit(Ljava/lang/String;)V

    if-eqz v1, :cond_1f3

    invoke-virtual {p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    invoke-direct {p0, p1, v3}, Lcom/android/launcher3/model/OplusBaseLoaderTask;->loadAndBindExtraPinnedShortcut(Landroid/content/Context;Z)V

    :cond_1f3
    invoke-direct {p0, p1, v3}, Lcom/android/launcher3/model/OplusBaseLoaderTask;->loadAndBindExtraSpecialItems(Landroid/content/Context;Z)V

    sget-object v1, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v1}, Lcom/android/common/util/AppFeatureUtils;->isDisableFillEmptySpaceOnFirstScreenTail()Z

    move-result v1

    if-nez v1, :cond_209

    invoke-static {}, Lcom/android/launcher3/OplusLauncherProvider;->isLoadingFromDefaultXml()Z

    move-result v1

    if-eqz v1, :cond_209

    iget-object v1, p0, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mColorLoaderResults:Lcom/android/launcher3/model/OplusBaseLoaderResults;

    invoke-virtual {v1}, Lcom/android/launcher3/model/OplusBaseLoaderResults;->rebindForEmptySpaceOnFirstScreen()V

    :cond_209
    invoke-static {}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->getSInstance()Lcom/android/launcher/folder/download/FolderRecommendUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->isSupportFolderContentRecommend()Z

    move-result v1

    if-eqz v1, :cond_226

    invoke-static {}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->getSInstance()Lcom/android/launcher/folder/download/FolderRecommendUtils;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v8, v7, Lcom/android/launcher3/model/BgDataModel;->marketRecommendModel:Lcom/android/launcher/folder/download/model/MarketRecommendModel;

    const/4 v9, 0x0

    const/4 v10, 0x2

    invoke-virtual/range {v4 .. v10}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->updateItemInfoByMarketInfo(Lcom/android/launcher3/LauncherAppState;Landroid/content/Context;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher/folder/download/model/MarketRecommendModel;ZI)V

    :cond_226
    invoke-virtual {p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    invoke-direct {p0, p1}, Lcom/android/launcher3/model/OplusBaseLoaderTask;->finishLoadWorkspace(Landroid/content/Context;)V

    const-string/jumbo v1, "step[13]: finish load workspace"

    invoke-virtual {v0, v1}, Lcom/android/launcher3/logging/OplusTimingLogger;->addSplit(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    iget-object v1, p0, Lcom/android/launcher3/model/LoaderTask;->mModelDelegate:Lcom/android/launcher3/model/ModelDelegate;

    iget-object v4, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v4, v4, Lcom/android/launcher3/model/BgDataModel;->stringCache:Lcom/android/launcher3/model/StringCache;

    invoke-virtual {v1, v4}, Lcom/android/launcher3/model/ModelDelegate;->loadStringCache(Lcom/android/launcher3/model/StringCache;)V

    sget-object v1, Lcom/android/launcher3/model/ItemInstallQueue;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/ItemInstallQueue;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/launcher3/model/ItemInstallQueue;->getPendingShortcuts(Landroid/os/UserHandle;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    iget-object v4, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    monitor-enter v4

    :try_start_25b
    iget-object v5, p0, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mShortcutKeyToPinnedShortcuts:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_265
    :goto_265
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2a6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/shortcuts/ShortcutKey;

    iget-object v7, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v7, v7, Lcom/android/launcher3/model/BgDataModel;->mBgDataModelHelper:Lcom/android/launcher/model/BgDataModelHelper;

    iget-object v7, v7, Lcom/android/launcher/model/BgDataModelHelper;->pinnedShortcutCounts:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/MutableInt;

    if-eqz v7, :cond_283

    iget v7, v7, Landroid/util/MutableInt;->value:I

    if-nez v7, :cond_265

    :cond_283
    invoke-virtual {v1, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_265

    sget-object v7, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "unpin the shortcut, key = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    invoke-virtual {v6, p1}, Lcom/android/launcher3/model/BgDataModel;->updateShortcutPinnedState(Landroid/content/Context;)V

    goto :goto_265

    :cond_2a6
    monitor-exit v4
    :try_end_2a7
    .catchall {:try_start_25b .. :try_end_2a7} :catchall_2e8

    iget-boolean v1, p0, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mIsIconThemeChanged:Z

    if-eqz v1, :cond_2c0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {}, Lcom/android/launcher3/LauncherSettings$Favorites;->getContentUri()Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v4, Lcom/android/launcher/OplusFavoritesProvider;->AUTHORITY_URI:Landroid/net/Uri;

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_2c0
    const-string/jumbo v1, "step[14]: unpin shortcuts"

    invoke-virtual {v0, v1}, Lcom/android/launcher3/logging/OplusTimingLogger;->addSplit(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    invoke-direct {p0, p1}, Lcom/android/launcher3/model/OplusBaseLoaderTask;->inspectSwitch(Landroid/content/Context;)V

    iget-object p0, p0, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mColorLoaderResults:Lcom/android/launcher3/model/OplusBaseLoaderResults;

    invoke-virtual {p0, v3, v2}, Lcom/android/launcher3/model/OplusBaseLoaderResults;->finishBindWorkspace(ZLcom/android/launcher3/util/IntSet;)V

    const-string/jumbo p0, "step[15]: finish bind workspace"

    invoke-virtual {v0, p0}, Lcom/android/launcher3/logging/OplusTimingLogger;->addSplit(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_2e0

    invoke-virtual {v0}, Lcom/android/launcher3/logging/OplusTimingLogger;->dumpToLog()V

    :cond_2e0
    invoke-static {}, Lcom/android/launcher/layout/CustomLayoutHelper;->getInstance()Lcom/android/launcher/layout/CustomLayoutHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/layout/CustomLayoutHelper;->registerCotaNonRebootPackageScannedFinishReceiver()V

    return-void

    :catchall_2e8
    move-exception p0

    :try_start_2e9
    monitor-exit v4
    :try_end_2ea
    .catchall {:try_start_2e9 .. :try_end_2ea} :catchall_2e8

    throw p0

    :catchall_2eb
    move-exception p0

    :try_start_2ec
    monitor-exit v5
    :try_end_2ed
    .catchall {:try_start_2ec .. :try_end_2ed} :catchall_2eb

    throw p0
.end method

.method private loadExtraLayoutIfNeeded(Landroid/content/Context;)V
    .registers 8

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/mode/LauncherModeManager;->isInSimpleMode()Z

    move-result p0

    if-eqz p0, :cond_12

    sget-object p0, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    const-string p1, "don\'t load extra_workspace.xml because in smple mode."

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_12
    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->isOtaVersionUpdate()Z

    move-result p0

    if-eqz p0, :cond_24

    const/4 p0, 0x1

    invoke-static {p1, p0}, Lcom/android/launcher/layout/LayoutPrefsUtils;->setOtaBootStatus(Landroid/content/Context;Z)V

    sget-object p0, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    const-string p1, "OTA first boot, do not load extra_workspace.xml."

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_24
    invoke-static {p1}, Lcom/android/launcher/layout/LayoutPrefsUtils;->getOtaBootStatus(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_33

    sget-object p0, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "this device has got an ota update, do not load extra_workspace.xml."

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_33
    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/mode/LauncherModeManager;->getCurLauncherMode()Lcom/android/launcher/mode/LauncherMode;

    move-result-object p0

    invoke-static {}, Lcom/android/launcher/layout/CustomLayoutHelper;->getPreferredExtraLayoutFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {p1, p0}, Lcom/android/launcher/layout/LayoutPrefsUtils;->getLoadedExtraLayoutPath(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, p0}, Lcom/android/launcher/layout/LayoutPrefsUtils;->getExtraLayoutFlag(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;)Z

    move-result v3

    const-string v4, "pai@"

    const-string v5, "parse_extra_layout"

    if-eqz v3, :cond_88

    invoke-static {}, Lcom/android/launcher/layout/CustomLayoutHelper;->getInstance()Lcom/android/launcher/layout/CustomLayoutHelper;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/launcher/layout/CustomLayoutHelper;->needUpdateLayoutAfterCota(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_5c

    goto :goto_88

    :cond_5c
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_6a

    sget-object p0, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    const-string p1, "already have extra_workspace.xml from pai."

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_6a
    if-eqz v0, :cond_80

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_80

    sget-object p0, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    const-string p1, "pref exrta path not equal to the current one. Reload it."

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, v5}, Lcom/android/launcher3/LauncherSettings$Settings;->call(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/os/Bundle;

    :cond_80
    invoke-static {}, Lcom/android/launcher/layout/CustomLayoutHelper;->getInstance()Lcom/android/launcher/layout/CustomLayoutHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/layout/CustomLayoutHelper;->setOnExtraWorkspacePathChangedListener()V

    goto :goto_b2

    :cond_88
    :goto_88
    sget-object v0, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prepare: try loading extra favorites "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1, v5}, Lcom/android/launcher3/LauncherSettings$Settings;->call(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/os/Bundle;

    invoke-static {p1, p0}, Lcom/android/launcher/layout/LayoutPrefsUtils;->getLoadedExtraLayoutPath(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_b2

    invoke-static {}, Lcom/android/launcher/layout/CustomLayoutHelper;->getInstance()Lcom/android/launcher/layout/CustomLayoutHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/layout/CustomLayoutHelper;->setOnExtraWorkspacePathChangedListener()V

    :cond_b2
    :goto_b2
    return-void
.end method

.method private loadHotseatExpandItems()V
    .registers 5

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportDockerExpandDevice()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-static {}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandSwitchManager;->isSwitchOn()Z

    move-result v0

    if-nez v0, :cond_e

    return-void

    :cond_e
    iget-object v0, p0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandItemUpdateHelper;->buildLoadProcessHotseatExpandItems(Lcom/android/launcher/Launcher;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    const-string v2, "loadHotseatExpandItems,hotseatExpandItems.size:"

    invoke-static {v2}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Hotseat_expand"

    invoke-static {v3, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3b

    return-void

    :cond_3b
    iget-object p0, p0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object p0

    iget-object p0, p0, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object p0, p0, Lcom/android/launcher3/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private loadSpecificScreenItems(Landroid/content/Context;II)V
    .registers 43

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iget-object v7, v1, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    monitor-enter v7

    :try_start_f
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_18
    .catchall {:try_start_f .. :try_end_18} :catchall_122f

    const/16 v13, -0x65

    if-eq v3, v13, :cond_45

    if-lez v3, :cond_1f

    goto :goto_45

    :cond_1f
    :try_start_1f
    const-string v8, "screen"

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "="

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " AND "

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "container"

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "="

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_3e
    .catchall {:try_start_1f .. :try_end_3e} :catchall_3f

    goto :goto_52

    :catchall_3f
    move-exception v0

    move-object v1, v0

    move-object/from16 v23, v7

    goto/16 :goto_1233

    :cond_45
    :goto_45
    :try_start_45
    const-string v8, "container"

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "="

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_52
    .catchall {:try_start_45 .. :try_end_52} :catchall_122f

    :goto_52
    if-lez v3, :cond_59

    :try_start_54
    const-string v8, "rank"

    :goto_56
    move-object/from16 v16, v8

    goto :goto_61

    :cond_59
    if-ne v3, v13, :cond_5e

    const-string v8, "screen"
    :try_end_5d
    .catchall {:try_start_54 .. :try_end_5d} :catchall_3f

    goto :goto_56

    :cond_5e
    :try_start_5e
    const-string v8, "cellY, cellX"

    goto :goto_56

    :goto_61
    sget-object v9, Lcom/android/launcher3/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    sget-object v12, Lcom/android/launcher3/model/OplusBaseLoaderTask;->PROJECTION:[Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/16 v17, 0x0

    move-object v8, v14

    move-object v10, v12

    move-wide/from16 v18, v5

    move-object v5, v12

    move-object/from16 v12, v17

    move v6, v13

    move-object/from16 v13, v16

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    invoke-static {}, Lcom/android/common/config/FeatureOption;->isSupportRecommendApp()Z

    move-result v8
    :try_end_7d
    .catchall {:try_start_5e .. :try_end_7d} :catchall_122f

    const/4 v13, 0x0

    const/4 v12, 0x1

    if-eqz v8, :cond_c7

    :try_start_81
    array-length v8, v5

    add-int/2addr v8, v12

    invoke-static {v5, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v8

    move-object v10, v8

    check-cast v10, [Ljava/lang/String;

    array-length v5, v5

    const-string v8, "recommendId"

    aput-object v8, v10, v5
    :try_end_8f
    .catchall {:try_start_81 .. :try_end_8f} :catchall_3f

    :try_start_8f
    sget-object v9, Lcom/android/launcher3/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_95} :catch_a3
    .catchall {:try_start_8f .. :try_end_95} :catchall_3f

    const/4 v5, 0x0

    move-object v8, v14

    move v15, v12

    move-object v12, v5

    move-object v5, v13

    move-object/from16 v13, v16

    :try_start_9c
    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13
    :try_end_a0
    .catch Ljava/lang/Exception; {:try_start_9c .. :try_end_a0} :catch_a1
    .catchall {:try_start_9c .. :try_end_a0} :catchall_3f

    goto :goto_c2

    :catch_a1
    move-exception v0

    goto :goto_a6

    :catch_a3
    move-exception v0

    move v15, v12

    move-object v5, v13

    :goto_a6
    move-object v8, v0

    :try_start_a7
    sget-object v9, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "loadSpecificScreenItems: query e: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c1
    .catchall {:try_start_a7 .. :try_end_c1} :catchall_3f

    move-object v13, v5

    :goto_c2
    if-eqz v13, :cond_d0

    move-object/from16 v17, v13

    goto :goto_d0

    :cond_c7
    move v15, v12

    move-object v5, v13

    :try_start_c9
    sget-object v8, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    const-string v9, "loadSpecificScreenItems: is not SupportRecommendApp"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d0
    :goto_d0
    move-object/from16 v8, v17

    new-instance v9, Lcom/android/launcher3/model/OplusLoaderCursor;

    iget-object v10, v1, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    iget-object v11, v1, Lcom/android/launcher3/model/LoaderTask;->mUserManagerState:Lcom/android/launcher3/model/UserManagerState;

    invoke-direct {v9, v8, v10, v11}, Lcom/android/launcher3/model/OplusLoaderCursor;-><init>(Landroid/database/Cursor;Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/UserManagerState;)V

    sget-object v8, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    const/4 v10, 0x6

    new-array v11, v10, [Ljava/lang/Object;

    const-string v12, "\nloadSpecificScreenItems ------ begin ------ , container: "

    const/4 v13, 0x0

    aput-object v12, v11, v13

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v15

    const-string v12, ", screen: "

    const/4 v6, 0x2

    aput-object v12, v11, v6

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v10, 0x3

    aput-object v12, v11, v10

    const-string v12, ", count: "

    const/4 v10, 0x4

    aput-object v12, v11, v10

    invoke-virtual {v9}, Landroid/database/CursorWrapper;->getCount()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v10, 0x5

    aput-object v12, v11, v10

    invoke-static {v8, v11}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v8, v1, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mAllUsers:Landroid/util/LongSparseArray;

    invoke-virtual {v8}, Landroid/util/LongSparseArray;->size()I

    move-result v8

    move v11, v13

    :goto_111
    if-ge v11, v8, :cond_12f

    iget-object v12, v9, Lcom/android/launcher3/model/LoaderCursor;->allUsers:Landroid/util/LongSparseArray;

    iget-object v10, v1, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mAllUsers:Landroid/util/LongSparseArray;
    :try_end_117
    .catchall {:try_start_c9 .. :try_end_117} :catchall_122f

    move-object/from16 v23, v7

    :try_start_119
    invoke-virtual {v10, v11}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v6

    iget-object v10, v1, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mAllUsers:Landroid/util/LongSparseArray;

    invoke-virtual {v10, v11}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/UserHandle;

    invoke-virtual {v12, v6, v7, v10}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v7, v23

    const/4 v6, 0x2

    const/4 v10, 0x5

    goto :goto_111

    :cond_12f
    move-object/from16 v23, v7

    invoke-static/range {p1 .. p1}, Lcom/android/launcher/download/DownloadAppsManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/download/DownloadAppsManager;

    move-result-object v6
    :try_end_135
    .catchall {:try_start_119 .. :try_end_135} :catchall_1235

    :try_start_135
    new-instance v7, Lcom/android/launcher3/util/PackageUserKey;

    invoke-direct {v7, v5, v5}, Lcom/android/launcher3/util/PackageUserKey;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    move-object v8, v5

    :goto_13b
    iget-boolean v10, v1, Lcom/android/launcher3/model/LoaderTask;->mStopped:Z

    if-nez v10, :cond_1157

    invoke-virtual {v9}, Lcom/android/launcher3/model/OplusLoaderCursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_1157

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10
    :try_end_149
    .catchall {:try_start_135 .. :try_end_149} :catchall_1229

    :try_start_149
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v12
    :try_end_14d
    .catch Ljava/lang/Exception; {:try_start_149 .. :try_end_14d} :catch_111e
    .catchall {:try_start_149 .. :try_end_14d} :catchall_1229

    const/16 v25, 0xb

    const/16 v26, 0x9

    const/16 v27, 0x7

    const/16 v28, 0xa

    if-eqz v12, :cond_21e

    :try_start_157
    sget-object v12, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    const/16 v5, 0x16

    new-array v5, v5, [Ljava/lang/Object;

    const-string v31, "loadSpecificScreenItems: title = "

    aput-object v31, v5, v13

    invoke-virtual {v9}, Lcom/android/launcher3/model/LoaderCursor;->getTitle()Ljava/lang/String;

    move-result-object v31

    aput-object v31, v5, v15

    const-string v31, ", intent = "

    const/16 v24, 0x2

    aput-object v31, v5, v24

    iget v13, v9, Lcom/android/launcher3/model/LoaderCursor;->intentIndex:I

    invoke-virtual {v9, v13}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/16 v20, 0x3

    aput-object v13, v5, v20

    const-string v13, ", cellX = "

    const/16 v21, 0x4

    aput-object v13, v5, v21

    iget v13, v9, Lcom/android/launcher3/model/LoaderCursor;->cellXIndex:I

    invoke-virtual {v9, v13}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/16 v22, 0x5

    aput-object v13, v5, v22

    const-string v13, ", cellY = "

    const/16 v17, 0x6

    aput-object v13, v5, v17

    iget v13, v9, Lcom/android/launcher3/model/LoaderCursor;->cellYIndex:I

    invoke-virtual {v9, v13}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v5, v27

    const-string v13, ", screenId = "

    const/16 v30, 0x8

    aput-object v13, v5, v30

    iget v13, v9, Lcom/android/launcher3/model/LoaderCursor;->screenIndex:I

    invoke-virtual {v9, v13}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v5, v26

    const-string v13, ", container = "

    aput-object v13, v5, v28

    iget v13, v9, Lcom/android/launcher3/model/LoaderCursor;->containerIndex:I

    invoke-virtual {v9, v13}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v5, v25

    const-string v13, ", itemType = "

    const/16 v29, 0xc

    aput-object v13, v5, v29

    const/16 v13, 0xd

    iget v15, v9, Lcom/android/launcher3/model/LoaderCursor;->itemType:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v5, v13

    const/16 v13, 0xe

    const-string v15, ", id = "

    aput-object v15, v5, v13

    const/16 v13, 0xf

    iget v15, v9, Lcom/android/launcher3/model/LoaderCursor;->id:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v5, v13

    const/16 v13, 0x10

    const-string v15, ", user = "

    aput-object v15, v5, v13

    const/16 v13, 0x11

    iget-object v15, v9, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    aput-object v15, v5, v13

    const/16 v13, 0x12

    const-string v15, ", restore = "

    aput-object v15, v5, v13

    const/16 v13, 0x13

    iget v15, v9, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    invoke-static {v15}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v5, v13

    const/16 v13, 0x14

    const-string v15, ", count = "

    aput-object v15, v5, v13

    const/16 v13, 0x15

    invoke-virtual {v9}, Landroid/database/CursorWrapper;->getCount()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v5, v13

    invoke-static {v12, v5}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_210
    .catch Ljava/lang/Exception; {:try_start_157 .. :try_end_210} :catch_211
    .catchall {:try_start_157 .. :try_end_210} :catchall_1229

    goto :goto_21e

    :catch_211
    move-exception v0

    move-object v3, v0

    move-object v4, v2

    move-object v2, v6

    move-wide/from16 v35, v10

    move-object/from16 v33, v14

    :goto_219
    const/4 v10, 0x5

    const/4 v12, 0x4

    :goto_21b
    const/4 v13, 0x6

    goto/16 :goto_112b

    :cond_21e
    :goto_21e
    :try_start_21e
    iget-object v5, v9, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;
    :try_end_220
    .catch Ljava/lang/Exception; {:try_start_21e .. :try_end_220} :catch_111e
    .catchall {:try_start_21e .. :try_end_220} :catchall_1229

    if-nez v5, :cond_232

    :try_start_222
    const-string v5, "User has been deleted"

    invoke-virtual {v9, v5}, Lcom/android/launcher3/model/OplusLoaderCursor;->markDeleted(Ljava/lang/String;)V
    :try_end_227
    .catch Ljava/lang/Exception; {:try_start_222 .. :try_end_227} :catch_211
    .catchall {:try_start_222 .. :try_end_227} :catchall_1229

    :goto_227
    move-object v4, v2

    move-object v2, v6

    move-object/from16 v25, v8

    move-object/from16 v33, v14

    :goto_22d
    const/4 v10, 0x5

    const/4 v12, 0x4

    const/4 v13, 0x6

    goto/16 :goto_1021

    :cond_232
    :try_start_232
    iget v5, v9, Lcom/android/launcher3/model/LoaderCursor;->itemType:I
    :try_end_234
    .catch Ljava/lang/Exception; {:try_start_232 .. :try_end_234} :catch_111e
    .catchall {:try_start_232 .. :try_end_234} :catchall_1229

    if-eqz v5, :cond_8a8

    const/4 v15, 0x1

    if-eq v5, v15, :cond_8a8

    const/4 v15, 0x3

    if-eq v5, v15, :cond_708

    const/16 v15, 0x63

    const/4 v13, 0x5

    if-eq v5, v13, :cond_322

    const/4 v13, 0x6

    if-eq v5, v13, :cond_325

    if-eq v5, v15, :cond_322

    const/16 v12, 0x64

    if-eq v5, v12, :cond_264

    :try_start_24a
    sget-object v5, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "unknown itemType "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v9, Lcom/android/launcher3/model/LoaderCursor;->itemType:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v5, v12}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_263
    .catch Ljava/lang/Exception; {:try_start_24a .. :try_end_263} :catch_211
    .catchall {:try_start_24a .. :try_end_263} :catchall_1229

    goto :goto_284

    :cond_264
    :try_start_264
    invoke-static {}, Lcom/android/common/config/FeatureOption;->isSupportCard()Z

    move-result v5
    :try_end_268
    .catch Ljava/lang/Exception; {:try_start_264 .. :try_end_268} :catch_318
    .catchall {:try_start_264 .. :try_end_268} :catchall_1229

    if-nez v5, :cond_291

    :try_start_26a
    invoke-direct {v1, v9}, Lcom/android/launcher3/model/OplusBaseLoaderTask;->queryCardInfo(Lcom/android/launcher3/model/OplusLoaderCursor;)Lcom/android/launcher3/card/LauncherCardInfo;

    move-result-object v5

    if-eqz v5, :cond_284

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "NotSupportCard, "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Lcom/android/launcher3/model/OplusLoaderCursor;->markDeleted(Ljava/lang/String;)V
    :try_end_284
    .catch Ljava/lang/Exception; {:try_start_26a .. :try_end_284} :catch_211
    .catchall {:try_start_26a .. :try_end_284} :catchall_1229

    :cond_284
    :goto_284
    move-object v4, v2

    move-object v2, v6

    move-object/from16 v25, v8

    move-wide/from16 v35, v10

    move-object/from16 v33, v14

    :goto_28c
    const/4 v10, 0x5

    const/4 v12, 0x4

    const/4 v13, 0x6

    goto/16 :goto_10cd

    :cond_291
    :try_start_291
    invoke-direct {v1, v9}, Lcom/android/launcher3/model/OplusBaseLoaderTask;->queryCardInfo(Lcom/android/launcher3/model/OplusLoaderCursor;)Lcom/android/launcher3/card/LauncherCardInfo;

    move-result-object v5

    sget-object v12, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v12}, Lcom/android/common/util/AppFeatureUtils;->isSeedlingContainerCardDisabled()Z

    move-result v12
    :try_end_29b
    .catch Ljava/lang/Exception; {:try_start_291 .. :try_end_29b} :catch_318
    .catchall {:try_start_291 .. :try_end_29b} :catchall_1229

    if-eqz v12, :cond_2d0

    :try_start_29d
    iget v12, v5, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    const v13, 0xd3ecf26

    if-ne v12, v13, :cond_2d0

    sget-object v12, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "SeedlingContainerCardDisabled, cardInfo = "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "SeedlingContainerCardDisabled, "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Lcom/android/launcher3/model/OplusLoaderCursor;->markDeleted(Ljava/lang/String;)V
    :try_end_2ce
    .catch Ljava/lang/Exception; {:try_start_29d .. :try_end_2ce} :catch_211
    .catchall {:try_start_29d .. :try_end_2ce} :catchall_1229

    goto/16 :goto_227

    :cond_2d0
    :try_start_2d0
    invoke-virtual {v5}, Lcom/android/launcher3/card/LauncherCardInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v12

    sget-object v13, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_2db
    .catch Ljava/lang/Exception; {:try_start_2d0 .. :try_end_2db} :catch_318
    .catchall {:try_start_2d0 .. :try_end_2db} :catchall_1229

    move-object/from16 v33, v14

    :try_start_2dd
    const-string v14, "load CARD--"

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/android/launcher3/model/data/ItemInfo;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/android/launcher3/card/LauncherCardInfo;->isLauncherUSContainer()Z

    move-result v13
    :try_end_2f4
    .catch Ljava/lang/Exception; {:try_start_2dd .. :try_end_2f4} :catch_316
    .catchall {:try_start_2dd .. :try_end_2f4} :catchall_1229

    if-nez v13, :cond_309

    :try_start_2f6
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    const/16 v14, 0x200

    invoke-virtual {v13, v12, v14}, Landroid/content/pm/PackageManager;->getProviderInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ProviderInfo;
    :try_end_2ff
    .catch Ljava/lang/Exception; {:try_start_2f6 .. :try_end_2ff} :catch_300
    .catchall {:try_start_2f6 .. :try_end_2ff} :catchall_1229

    goto :goto_309

    :catch_300
    move-exception v0

    move-object v12, v0

    :try_start_302
    sget-object v13, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    const-string v14, "loadSpecificScreenItems card exception"

    invoke-static {v13, v14, v12}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_309
    :goto_309
    iget-object v12, v1, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    invoke-virtual {v9, v5, v12}, Lcom/android/launcher3/model/LoaderCursor;->checkAndAddItem(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/model/BgDataModel;)V
    :try_end_30e
    .catch Ljava/lang/Exception; {:try_start_302 .. :try_end_30e} :catch_316
    .catchall {:try_start_302 .. :try_end_30e} :catchall_1229

    move-object v4, v2

    move-object v2, v6

    move-object/from16 v25, v8

    move-wide/from16 v35, v10

    goto/16 :goto_28c

    :catch_316
    move-exception v0

    goto :goto_31b

    :catch_318
    move-exception v0

    move-object/from16 v33, v14

    :goto_31b
    move-object v3, v0

    move-object v4, v2

    move-object v2, v6

    move-wide/from16 v35, v10

    goto/16 :goto_219

    :cond_322
    move-object/from16 v33, v14

    goto :goto_32e

    :cond_325
    move-object/from16 v33, v14

    move-object v4, v2

    move-object/from16 v37, v6

    move-wide/from16 v35, v10

    goto/16 :goto_8af

    :goto_32e
    if-ne v5, v15, :cond_332

    const/4 v5, 0x1

    goto :goto_333

    :cond_332
    const/4 v5, 0x0

    :goto_333
    :try_start_333
    iget v13, v9, Lcom/android/launcher3/model/LoaderCursor;->iconResourceIndex:I

    invoke-virtual {v9, v13}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v13

    iget v14, v9, Lcom/android/launcher3/model/OplusLoaderCursor;->mAppWidgetIdIndex:I

    invoke-virtual {v9, v14}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v14

    iget v15, v9, Lcom/android/launcher3/model/OplusLoaderCursor;->mAppWidgetProviderIndex:I

    invoke-virtual {v9, v15}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v34
    :try_end_349
    .catch Ljava/lang/Exception; {:try_start_333 .. :try_end_349} :catch_700
    .catchall {:try_start_333 .. :try_end_349} :catchall_1229

    if-eqz v34, :cond_36d

    :try_start_34b
    sget-object v5, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "loadSpecificScreenItems savedProvider is empty! appWidgetId = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " id = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v9, Lcom/android/launcher3/model/LoaderCursor;->id:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v5, v12}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_36b
    .catch Ljava/lang/Exception; {:try_start_34b .. :try_end_36b} :catch_316
    .catchall {:try_start_34b .. :try_end_36b} :catchall_1229

    goto/16 :goto_3fa

    :cond_36d
    :try_start_36d
    sget-object v12, Lcom/android/common/config/Constants$Packages;->OLD_OPLUS_WEATHER_WIDGET_PACKAGE_NAME:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v35
    :try_end_373
    .catch Ljava/lang/Exception; {:try_start_36d .. :try_end_373} :catch_700
    .catchall {:try_start_36d .. :try_end_373} :catchall_1229

    if-nez v35, :cond_3dd

    :try_start_375
    sget-object v4, Lcom/android/common/config/Constants$Packages;->OPLUS_WEATHER_WIDGET_PACKAGE_NAME:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v35

    if-nez v35, :cond_3dd

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_385
    .catch Ljava/lang/Exception; {:try_start_375 .. :try_end_385} :catch_3d6
    .catchall {:try_start_375 .. :try_end_385} :catchall_1229

    move-wide/from16 v35, v10

    :try_start_387
    const-string v10, "/"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3df

    sget-object v3, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "adjust old oplus weather widget info savedProvider ="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "/"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v15

    invoke-static/range {p1 .. p1}, Lcom/android/launcher/LaunchComponentAliasVerifier;->adjustOplusWeatherWidgets(Landroid/content/Context;)V
    :try_end_3d5
    .catch Ljava/lang/Exception; {:try_start_387 .. :try_end_3d5} :catch_400
    .catchall {:try_start_387 .. :try_end_3d5} :catchall_1229

    goto :goto_3df

    :catch_3d6
    move-exception v0

    move-wide/from16 v35, v10

    :goto_3d9
    move-object v3, v0

    move-object v4, v2

    goto/16 :goto_705

    :cond_3dd
    move-wide/from16 v35, v10

    :cond_3df
    :goto_3df
    :try_start_3df
    invoke-static {v15}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3
    :try_end_3e3
    .catch Ljava/lang/Exception; {:try_start_3df .. :try_end_3e3} :catch_6fd
    .catchall {:try_start_3df .. :try_end_3e3} :catchall_1229

    if-nez v3, :cond_402

    :try_start_3e5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unflatten component name error: savedProvider = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Lcom/android/launcher3/model/OplusLoaderCursor;->markDeleted(Ljava/lang/String;)V
    :try_end_3fa
    .catch Ljava/lang/Exception; {:try_start_3e5 .. :try_end_3fa} :catch_400
    .catchall {:try_start_3e5 .. :try_end_3fa} :catchall_1229

    :goto_3fa
    move-object v4, v2

    move-object v2, v6

    move-object/from16 v25, v8

    goto/16 :goto_22d

    :catch_400
    move-exception v0

    goto :goto_3d9

    :cond_402
    :try_start_402
    sget-boolean v4, Lcom/android/common/config/FeatureOption;->isRLMDevice:Z
    :try_end_404
    .catch Ljava/lang/Exception; {:try_start_402 .. :try_end_404} :catch_6fd
    .catchall {:try_start_402 .. :try_end_404} :catchall_1229

    if-eqz v4, :cond_431

    :try_start_406
    sget-object v4, Lcom/android/launcher/bottomsearch/BottomSearchManager;->INSTANCE:Lcom/android/launcher/bottomsearch/BottomSearchManager;

    invoke-virtual {v4}, Lcom/android/launcher/bottomsearch/BottomSearchManager;->featureSupport()Z

    move-result v10

    if-eqz v10, :cond_431

    const/4 v10, 0x1

    invoke-virtual {v4, v2, v3, v10}, Lcom/android/launcher/bottomsearch/BottomSearchManager;->needDeleteWidget(Landroid/content/Context;Landroid/content/ComponentName;Z)Z

    move-result v4

    if-eqz v4, :cond_431

    sget-object v4, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    const-string v5, "BottomSearchManager"

    invoke-static {v4, v5}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "need show this widget in bottom : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Lcom/android/launcher3/model/OplusLoaderCursor;->markDeleted(Ljava/lang/String;)V

    goto :goto_3fa

    :cond_431
    if-nez v5, :cond_446

    iget-object v4, v1, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mUnlockedUsers:Landroid/util/LongSparseArray;

    iget-wide v10, v9, Lcom/android/launcher3/model/LoaderCursor;->serialNumber:J

    invoke-virtual {v4, v10, v11}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4
    :try_end_441
    .catch Ljava/lang/Exception; {:try_start_406 .. :try_end_441} :catch_400
    .catchall {:try_start_406 .. :try_end_441} :catchall_1229

    if-nez v4, :cond_446

    const/4 v4, 0x1

    const/4 v12, 0x1

    goto :goto_448

    :cond_446
    const/4 v4, 0x1

    const/4 v12, 0x0

    :goto_448
    :try_start_448
    invoke-virtual {v9, v4}, Lcom/android/launcher3/model/LoaderCursor;->hasRestoreFlag(I)Z

    move-result v10

    if-nez v10, :cond_450

    move v10, v4

    goto :goto_451

    :cond_450
    const/4 v10, 0x0

    :goto_451
    const/4 v11, 0x2

    invoke-virtual {v9, v11}, Lcom/android/launcher3/model/LoaderCursor;->hasRestoreFlag(I)Z

    move-result v32
    :try_end_456
    .catch Ljava/lang/Exception; {:try_start_448 .. :try_end_456} :catch_6fd
    .catchall {:try_start_448 .. :try_end_456} :catchall_1229

    xor-int/lit8 v11, v32, 0x1

    if-nez v8, :cond_45f

    :try_start_45a
    invoke-static/range {p1 .. p1}, Lcom/android/launcher3/widget/WidgetManagerHelper;->getAllProvidersMap(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v4
    :try_end_45e
    .catch Ljava/lang/Exception; {:try_start_45a .. :try_end_45e} :catch_400
    .catchall {:try_start_45a .. :try_end_45e} :catchall_1229

    move-object v8, v4

    :cond_45f
    :try_start_45f
    invoke-static {v15}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4
    :try_end_463
    .catch Ljava/lang/Exception; {:try_start_45f .. :try_end_463} :catch_6f8
    .catchall {:try_start_45f .. :try_end_463} :catchall_1229

    move-object/from16 v37, v6

    :try_start_465
    new-instance v6, Lcom/android/launcher3/util/ComponentKey;
    :try_end_467
    .catch Ljava/lang/Exception; {:try_start_465 .. :try_end_467} :catch_6f2
    .catchall {:try_start_465 .. :try_end_467} :catchall_1229

    :try_start_467
    iget-object v2, v9, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    invoke-direct {v6, v4, v2}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    invoke-interface {v8, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/appwidget/AppWidgetProviderInfo;

    invoke-static {v2}, Lcom/android/launcher3/model/LoaderTask;->isValidProvider(Landroid/appwidget/AppWidgetProviderInfo;)Z

    move-result v4

    sget-object v6, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;
    :try_end_478
    .catch Ljava/lang/Exception; {:try_start_467 .. :try_end_478} :catch_6ee
    .catchall {:try_start_467 .. :try_end_478} :catchall_1229

    move-object/from16 v38, v8

    const/16 v8, 0xc

    :try_start_47c
    new-array v8, v8, [Ljava/lang/Object;

    const-string v29, "loadSpecificScreenItems --- WIDGET, provider = "

    const/16 v31, 0x0

    aput-object v29, v8, v31

    const/16 v29, 0x1

    aput-object v2, v8, v29

    const-string v29, ", isProviderReady = "

    const/16 v24, 0x2

    aput-object v29, v8, v24

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v29

    const/16 v20, 0x3

    aput-object v29, v8, v20

    const-string v29, ", wasProviderReady = "

    const/16 v21, 0x4

    aput-object v29, v8, v21

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v29

    const/16 v22, 0x5

    aput-object v29, v8, v22

    const-string v29, ", customWidget = "

    const/16 v17, 0x6

    aput-object v29, v8, v17

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v29

    aput-object v29, v8, v27

    const-string v27, ", widgetUserLocked = "

    const/16 v29, 0x8

    aput-object v27, v8, v29

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v27

    aput-object v27, v8, v26

    const-string v26, ", savedProvider = "

    aput-object v26, v8, v28

    aput-object v15, v8, v25

    invoke-static {v6, v8}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v6, v1, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mIsSafeMode:Z

    if-nez v6, :cond_4e9

    if-nez v5, :cond_4e9

    if-eqz v11, :cond_4e9

    if-nez v4, :cond_4e9

    if-nez v12, :cond_4e9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Deleting widget that isn\'t installed anymore: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/android/launcher3/model/OplusLoaderCursor;->markDeleted(Ljava/lang/String;)V

    move-object/from16 v4, p1

    goto/16 :goto_6ab

    :cond_4e9
    if-eqz v4, :cond_506

    new-instance v3, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    iget-object v4, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-direct {v3, v14, v4}, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;-><init>(ILandroid/content/ComponentName;)V

    iget v4, v9, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    and-int/lit8 v4, v4, -0x9

    and-int/lit8 v4, v4, -0x3

    if-nez v11, :cond_4fe

    if-eqz v10, :cond_4fe

    or-int/lit8 v4, v4, 0x4

    :cond_4fe
    iput v4, v3, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->restoreStatus:I

    iput-object v2, v3, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    :goto_502
    const/16 v4, 0x20

    goto/16 :goto_5db

    :cond_506
    sget-object v4, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Widget restore pending id="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v9, Lcom/android/launcher3/model/LoaderCursor;->id:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " appWidgetId="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " status ="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v9, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    invoke-direct {v4, v14, v3}, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;-><init>(ILandroid/content/ComponentName;)V

    if-eqz v12, :cond_53d

    iget v6, v4, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->runtimeStatusFlags:I

    const/4 v8, 0x1

    or-int/2addr v6, v8

    iput v6, v4, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->runtimeStatusFlags:I

    :cond_53d
    iget v6, v9, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    iput v6, v4, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->restoreStatus:I

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iget-object v8, v9, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    invoke-virtual {v7, v6, v8}, Lcom/android/launcher3/util/PackageUserKey;->update(Ljava/lang/String;Landroid/os/UserHandle;)V

    iget-object v6, v1, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mInstallingPkgs:Ljava/util/HashMap;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageInstaller$SessionInfo;

    if-nez v6, :cond_558

    const/4 v6, 0x0

    :goto_555
    const/16 v8, 0x8

    goto :goto_565

    :cond_558
    invoke-virtual {v6}, Landroid/content/pm/PackageInstaller$SessionInfo;->getProgress()F

    move-result v6

    const/high16 v8, 0x42c80000  # 100.0f

    mul-float/2addr v6, v8

    float-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_555

    :goto_565
    invoke-virtual {v9, v8}, Lcom/android/launcher3/model/LoaderCursor;->hasRestoreFlag(I)Z

    move-result v10

    if-eqz v10, :cond_56c

    goto :goto_5ce

    :cond_56c
    if-eqz v6, :cond_574

    iget v3, v4, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->restoreStatus:I

    or-int/2addr v3, v8

    iput v3, v4, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->restoreStatus:I

    goto :goto_5ce

    :cond_574
    if-eqz v12, :cond_596

    sget-object v8, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "widget user locked! "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, ", cn = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5ce

    :cond_596
    const/16 v8, 0x23

    invoke-virtual {v9, v8}, Lcom/android/launcher3/model/LoaderCursor;->hasRestoreFlag(I)Z

    move-result v8

    if-eqz v8, :cond_5b5

    sget-object v8, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "auto install widget cn = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5ce

    :cond_5b5
    iget-boolean v8, v1, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mIsSafeMode:Z

    if-nez v8, :cond_5ce

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unrestored widget removed: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/android/launcher3/model/OplusLoaderCursor;->markDeleted(Ljava/lang/String;)V

    goto :goto_623

    :cond_5ce
    :goto_5ce
    if-nez v6, :cond_5d2

    const/4 v3, 0x0

    goto :goto_5d6

    :cond_5d2
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :goto_5d6
    iput v3, v4, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->installProgress:I

    move-object v3, v4

    goto/16 :goto_502

    :goto_5db
    invoke-virtual {v3, v4}, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v4

    if-eqz v4, :cond_5e7

    invoke-virtual {v9}, Lcom/android/launcher3/model/LoaderCursor;->parseIntent()Landroid/content/Intent;

    move-result-object v4

    iput-object v4, v3, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->bindOptions:Landroid/content/Intent;

    :cond_5e7
    invoke-virtual {v9, v3}, Lcom/android/launcher3/model/LoaderCursor;->applyCommonProperties(Lcom/android/launcher3/model/data/ItemInfo;)V

    iget v4, v9, Lcom/android/launcher3/model/OplusLoaderCursor;->mSpanXIndex:I

    invoke-virtual {v9, v4}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v4

    iput v4, v3, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v4, v9, Lcom/android/launcher3/model/OplusLoaderCursor;->mSpanYIndex:I

    invoke-virtual {v9, v4}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v4

    iput v4, v3, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iget-object v4, v9, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    iput-object v4, v3, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    iget v4, v9, Lcom/android/launcher3/model/OplusLoaderCursor;->mCardTypeIndex:I

    invoke-virtual {v9, v4}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v4

    iput v4, v3, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->mCardType:I

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_60e

    iput-object v13, v3, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->mIconRes:Ljava/lang/String;

    :cond_60e
    iget v4, v3, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    if-lez v4, :cond_6b4

    iget v4, v3, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    if-gtz v4, :cond_618

    goto/16 :goto_6b4

    :cond_618
    invoke-virtual {v9}, Lcom/android/launcher3/model/LoaderCursor;->isOnWorkspaceOrHotseat()Z

    move-result v4

    if-nez v4, :cond_627

    const-string v2, "Widget found where container != CONTAINER_DESKTOP nor CONTAINER_HOTSEAT - ignoring!"

    invoke-virtual {v9, v2}, Lcom/android/launcher3/model/OplusLoaderCursor;->markDeleted(Ljava/lang/String;)V

    :goto_623
    move-object/from16 v4, p1

    goto/16 :goto_6d7

    :cond_627
    if-nez v5, :cond_66a

    iget-object v4, v3, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_63b

    iget v5, v3, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->restoreStatus:I

    iget v6, v9, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    if-eq v5, v6, :cond_66a

    :cond_63b
    invoke-virtual {v9}, Lcom/android/launcher3/model/LoaderCursor;->updater()Lcom/android/launcher3/util/ContentWriter;

    move-result-object v5

    const-string v6, "appWidgetProvider"

    invoke-virtual {v5, v6, v4}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object v5

    const-string v6, "restored"

    iget v8, v3, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->restoreStatus:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/util/ContentWriter;->commit()I

    sget-object v5, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Updater: restoreStatus and providerName = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_66a
    iget v4, v3, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->restoreStatus:I

    if-eqz v4, :cond_689

    iget-object v4, v3, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/launcher3/model/data/PackageItemInfo;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    invoke-direct {v5, v4, v6}, Lcom/android/launcher3/model/data/PackageItemInfo;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    iput-object v5, v3, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->pendingItemInfo:Lcom/android/launcher3/model/data/PackageItemInfo;

    iget-object v4, v3, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    iput-object v4, v5, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    iget-object v4, v1, Lcom/android/launcher3/model/LoaderTask;->mIconCache:Lcom/android/launcher3/icons/IconCache;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/android/launcher3/icons/IconCache;->getTitleAndIconForApp(Lcom/android/launcher3/model/data/PackageItemInfo;Z)V

    :cond_689
    sget-object v4, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "--loadSpecificScreenItems: widget info = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v1, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    invoke-virtual {v9, v3, v4}, Lcom/android/launcher3/model/LoaderCursor;->checkAndAddItem(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/model/BgDataModel;)V

    sget-object v3, Lcom/android/common/util/WidgetUtils;->INSTANCE:Lcom/android/common/util/WidgetUtils;
    :try_end_6a6
    .catch Ljava/lang/Exception; {:try_start_47c .. :try_end_6a6} :catch_6e4
    .catchall {:try_start_47c .. :try_end_6a6} :catchall_1229

    move-object/from16 v4, p1

    :try_start_6a8
    invoke-virtual {v3, v4, v2}, Lcom/android/common/util/WidgetUtils;->updateCqsbWidgetInfo(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)V

    :goto_6ab
    move-object/from16 v2, v37

    move-object/from16 v8, v38

    const/4 v10, 0x5

    const/4 v12, 0x4

    const/4 v13, 0x6

    goto/16 :goto_1132

    :cond_6b4
    :goto_6b4
    move-object/from16 v4, p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Widget has invalid size: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "x"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v3, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/android/launcher3/model/OplusLoaderCursor;->markDeleted(Ljava/lang/String;)V
    :try_end_6d7
    .catch Ljava/lang/Exception; {:try_start_6a8 .. :try_end_6d7} :catch_6e2
    .catchall {:try_start_6a8 .. :try_end_6d7} :catchall_1229

    :goto_6d7
    move/from16 v3, p2

    move-object v2, v4

    move-object/from16 v14, v33

    move-object/from16 v6, v37

    move-object/from16 v8, v38

    goto/16 :goto_1029

    :catch_6e2
    move-exception v0

    goto :goto_6e7

    :catch_6e4
    move-exception v0

    move-object/from16 v4, p1

    :goto_6e7
    move-object v3, v0

    move-object/from16 v2, v37

    move-object/from16 v8, v38

    goto/16 :goto_219

    :catch_6ee
    move-exception v0

    move-object/from16 v4, p1

    goto :goto_6f4

    :catch_6f2
    move-exception v0

    move-object v4, v2

    :goto_6f4
    move-object/from16 v38, v8

    goto/16 :goto_8a3

    :catch_6f8
    move-exception v0

    move-object v4, v2

    move-object/from16 v38, v8

    goto :goto_704

    :catch_6fd
    move-exception v0

    move-object v4, v2

    goto :goto_704

    :catch_700
    move-exception v0

    move-object v4, v2

    move-wide/from16 v35, v10

    :goto_704
    move-object v3, v0

    :goto_705
    move-object v2, v6

    goto/16 :goto_219

    :cond_708
    move-object v4, v2

    move-object/from16 v37, v6

    move-wide/from16 v35, v10

    move-object/from16 v33, v14

    :try_start_70f
    iget-object v2, v1, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget v3, v9, Lcom/android/launcher3/model/LoaderCursor;->id:I

    invoke-virtual {v2, v3}, Lcom/android/launcher3/model/BgDataModel;->findOrMakeFolder(I)Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/android/launcher3/model/LoaderCursor;->applyCommonProperties(Lcom/android/launcher3/model/data/ItemInfo;)V

    iget v3, v9, Lcom/android/launcher3/model/LoaderCursor;->titleIndex:I

    invoke-virtual {v9, v3}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    iget v3, v9, Lcom/android/launcher3/model/OplusLoaderCursor;->mSpanXIndex:I

    invoke-virtual {v9, v3}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v3, v9, Lcom/android/launcher3/model/OplusLoaderCursor;->mSpanYIndex:I

    invoke-virtual {v9, v3}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-static {}, Lcom/android/launcher3/folder/big/FolderManager;->supportBigFolder()Z

    move-result v3

    if-nez v3, :cond_73d

    const/4 v3, 0x1

    iput v3, v2, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iput v3, v2, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    :cond_73d
    sget-object v3, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;
    :try_end_73f
    .catch Ljava/lang/Exception; {:try_start_70f .. :try_end_73f} :catch_8a2
    .catchall {:try_start_70f .. :try_end_73f} :catchall_1229

    const/4 v5, 0x4

    :try_start_740
    new-array v6, v5, [Ljava/lang/Object;
    :try_end_742
    .catch Ljava/lang/Exception; {:try_start_740 .. :try_end_742} :catch_89a
    .catchall {:try_start_740 .. :try_end_742} :catchall_1229

    :try_start_742
    const-string v5, "loadSpecificScreenItems: folderInfo.title = "

    const/4 v10, 0x0

    aput-object v5, v6, v10

    iget-object v5, v2, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    const/4 v10, 0x1

    aput-object v5, v6, v10

    const-string v5, ", spanX = "

    const/4 v10, 0x2

    aput-object v5, v6, v10

    iget v5, v2, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v10, 0x3

    aput-object v5, v6, v10

    invoke-static {v3, v6}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget v3, v2, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iput v3, v2, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    iget v3, v2, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iput v3, v2, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    iget v3, v9, Lcom/android/launcher3/model/OplusLoaderCursor;->mOptionsIndex:I

    invoke-virtual {v9, v3}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/android/launcher3/model/data/FolderInfo;->options:I

    invoke-static {}, Lcom/android/common/config/FeatureOption;->isSupportRecommendApp()Z

    move-result v3

    if-eqz v3, :cond_815

    sget-object v3, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    const-string v5, "loadSpecificScreenItems: isSupportRecommendApp"

    invoke-static {v3, v5}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_77a
    .catch Ljava/lang/Exception; {:try_start_742 .. :try_end_77a} :catch_8a2
    .catchall {:try_start_742 .. :try_end_77a} :catchall_1229

    :try_start_77a
    const-string v3, "recommendId"

    invoke-virtual {v9, v3}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v9, v3}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/android/launcher3/model/data/FolderInfo;->mRecommendId:I
    :try_end_786
    .catch Ljava/lang/Exception; {:try_start_77a .. :try_end_786} :catch_787
    .catchall {:try_start_77a .. :try_end_786} :catchall_1229

    goto :goto_790

    :catch_787
    move-exception v0

    move-object v3, v0

    :try_start_789
    sget-object v5, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    const-string v6, "loadSpecificScreenItems: isSupportRecommendApp"

    invoke-static {v5, v6, v3}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_790
    sget-object v3, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadSpecificScreenItems: recommendId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v2, Lcom/android/launcher3/model/data/FolderInfo;->mRecommendId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v3, v2, Lcom/android/launcher3/model/data/FolderInfo;->mRecommendId:I

    if-gez v3, :cond_81c

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->isOtaVersionUpdate()Z

    move-result v3

    if-eqz v3, :cond_81c

    iget-object v3, v2, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-static {v4, v3}, Lcom/android/launcher/folder/recommend/RecommendUtils;->getInitRecommendId(Landroid/content/Context;Ljava/lang/CharSequence;)I

    move-result v3

    iput v3, v2, Lcom/android/launcher3/model/data/FolderInfo;->mRecommendId:I

    sget-object v5, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;
    :try_end_7bc
    .catch Ljava/lang/Exception; {:try_start_789 .. :try_end_7bc} :catch_8a2
    .catchall {:try_start_789 .. :try_end_7bc} :catchall_1229

    const/4 v6, 0x4

    :try_start_7bd
    new-array v10, v6, [Ljava/lang/Object;
    :try_end_7bf
    .catch Ljava/lang/Exception; {:try_start_7bd .. :try_end_7bf} :catch_810
    .catchall {:try_start_7bd .. :try_end_7bf} :catchall_1229

    :try_start_7bf
    const-string v6, "RecommendApp folder title = "

    const/4 v11, 0x0

    aput-object v6, v10, v11

    iget-object v6, v2, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    const/4 v11, 0x1

    aput-object v6, v10, v11

    const-string v6, ", mRecommendId = "

    const/4 v11, 0x2

    aput-object v6, v10, v11

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v6, 0x3

    aput-object v3, v10, v6

    invoke-static {v5, v10}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget v3, v2, Lcom/android/launcher3/model/data/FolderInfo;->mRecommendId:I

    if-lez v3, :cond_81c

    invoke-virtual {v9}, Lcom/android/launcher3/model/LoaderCursor;->updater()Lcom/android/launcher3/util/ContentWriter;

    move-result-object v3

    const-string v5, "recommendId"

    iget v6, v2, Lcom/android/launcher3/model/data/FolderInfo;->mRecommendId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/util/ContentWriter;->commit()I

    sget-object v3, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Updater: loadSpecificScreenItems: database updated for recommendId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v2, Lcom/android/launcher3/model/data/FolderInfo;->mRecommendId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " for: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_81c

    :catch_810
    move-exception v0

    move-object v3, v0

    move v12, v6

    goto/16 :goto_89d

    :cond_815
    sget-object v3, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    const-string v5, "loadSpecificScreenItems: is not SupportRecommendApp"

    invoke-static {v3, v5}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_81c
    :goto_81c
    sget-object v3, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Restored: [3]folder enable, mark folderInfo, cn = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", c.user = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v9, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/android/launcher3/model/LoaderCursor;->markRestored()V

    iget v3, v9, Lcom/android/launcher3/model/LoaderCursor;->id:I

    const/4 v5, 0x0

    invoke-direct {v1, v4, v3, v5}, Lcom/android/launcher3/model/OplusBaseLoaderTask;->loadSpecificScreenItems(Landroid/content/Context;II)V

    iget-object v3, v2, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_858

    iget-object v3, v1, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    invoke-virtual {v9, v2, v3}, Lcom/android/launcher3/model/LoaderCursor;->checkAndAddItem(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/model/BgDataModel;)V

    :goto_852
    move-object/from16 v25, v8

    move-object/from16 v2, v37

    goto/16 :goto_28c

    :cond_858
    iget-object v3, v1, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v3, v3, Lcom/android/launcher3/model/BgDataModel;->folders:Lcom/android/launcher3/util/IntSparseArrayMap;

    iget v5, v9, Lcom/android/launcher3/model/LoaderCursor;->id:I

    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->remove(I)V

    sget-object v3, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadSpecificScreenItems: folder size is 0, need delete it! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "empty folder! id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v9, Lcom/android/launcher3/model/LoaderCursor;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", title = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/android/launcher3/model/LoaderCursor;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/android/launcher3/model/OplusLoaderCursor;->markDeleted(Ljava/lang/String;)V
    :try_end_899
    .catch Ljava/lang/Exception; {:try_start_7bf .. :try_end_899} :catch_8a2
    .catchall {:try_start_7bf .. :try_end_899} :catchall_1229

    goto :goto_852

    :catch_89a
    move-exception v0

    move-object v3, v0

    move v12, v5

    :goto_89d
    move-object/from16 v2, v37

    const/4 v10, 0x5

    goto/16 :goto_21b

    :catch_8a2
    move-exception v0

    :goto_8a3
    move-object v3, v0

    :goto_8a4
    move-object/from16 v2, v37

    goto/16 :goto_219

    :cond_8a8
    move-object v4, v2

    move-object/from16 v37, v6

    move-wide/from16 v35, v10

    move-object/from16 v33, v14

    :goto_8af
    :try_start_8af
    invoke-virtual {v9}, Lcom/android/launcher3/model/LoaderCursor;->parseIntent()Landroid/content/Intent;

    move-result-object v2
    :try_end_8b3
    .catch Ljava/lang/Exception; {:try_start_8af .. :try_end_8b3} :catch_1118
    .catchall {:try_start_8af .. :try_end_8b3} :catchall_1229

    if-nez v2, :cond_8c0

    :try_start_8b5
    const-string v2, "Invalid or null intent"

    invoke-virtual {v9, v2}, Lcom/android/launcher3/model/OplusLoaderCursor;->markDeleted(Ljava/lang/String;)V
    :try_end_8ba
    .catch Ljava/lang/Exception; {:try_start_8b5 .. :try_end_8ba} :catch_8a2
    .catchall {:try_start_8b5 .. :try_end_8ba} :catchall_1229

    :goto_8ba
    move-object/from16 v25, v8

    :goto_8bc
    move-object/from16 v2, v37

    goto/16 :goto_22d

    :cond_8c0
    :try_start_8c0
    iget-object v3, v1, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mQuietMode:Landroid/util/LongSparseArray;

    iget-wide v5, v9, Lcom/android/launcher3/model/LoaderCursor;->serialNumber:J

    invoke-virtual {v3, v5, v6}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3
    :try_end_8c8
    .catch Ljava/lang/Exception; {:try_start_8c0 .. :try_end_8c8} :catch_1118
    .catchall {:try_start_8c0 .. :try_end_8c8} :catchall_1229

    if-eqz v3, :cond_8dd

    :try_start_8ca
    iget-object v3, v1, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mQuietMode:Landroid/util/LongSparseArray;

    iget-wide v5, v9, Lcom/android/launcher3/model/LoaderCursor;->serialNumber:J

    invoke-virtual {v3, v5, v6}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3
    :try_end_8d8
    .catch Ljava/lang/Exception; {:try_start_8ca .. :try_end_8d8} :catch_8a2
    .catchall {:try_start_8ca .. :try_end_8d8} :catchall_1229

    if-eqz v3, :cond_8f5

    const/16 v3, 0x8

    goto :goto_8f6

    :cond_8dd
    :try_start_8dd
    sget-object v3, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No user in mQuietMode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v9, Lcom/android/launcher3/model/LoaderCursor;->serialNumber:J

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8f5
    const/4 v3, 0x0

    :goto_8f6
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5
    :try_end_8fa
    .catch Ljava/lang/Exception; {:try_start_8dd .. :try_end_8fa} :catch_1118
    .catchall {:try_start_8dd .. :try_end_8fa} :catchall_1229

    if-nez v5, :cond_901

    :try_start_8fc
    invoke-virtual {v2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v6
    :try_end_900
    .catch Ljava/lang/Exception; {:try_start_8fc .. :try_end_900} :catch_8a2
    .catchall {:try_start_8fc .. :try_end_900} :catchall_1229

    goto :goto_905

    :cond_901
    :try_start_901
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    :goto_905
    if-nez v5, :cond_909

    const/4 v13, 0x0

    goto :goto_90d

    :cond_909
    invoke-virtual {v5}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v13

    :goto_90d
    iget-object v10, v9, Lcom/android/launcher3/model/LoaderCursor;->allUsers:Landroid/util/LongSparseArray;

    iget-object v11, v9, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    invoke-virtual {v10, v11}, Landroid/util/LongSparseArray;->indexOfValueByValue(Ljava/lang/Object;)I

    move-result v10
    :try_end_915
    .catch Ljava/lang/Exception; {:try_start_901 .. :try_end_915} :catch_1118
    .catchall {:try_start_901 .. :try_end_915} :catchall_1229

    if-gez v10, :cond_959

    :try_start_917
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v10

    if-eqz v10, :cond_942

    sget-object v10, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    const-string v11, "filter components by user.pkg:%s,cls:%s,user:%s,caller:%s"
    :try_end_921
    .catch Ljava/lang/Exception; {:try_start_917 .. :try_end_921} :catch_8a2
    .catchall {:try_start_917 .. :try_end_921} :catchall_1229

    const/4 v12, 0x4

    :try_start_922
    new-array v14, v12, [Ljava/lang/Object;
    :try_end_924
    .catch Ljava/lang/Exception; {:try_start_922 .. :try_end_924} :catch_93e
    .catchall {:try_start_922 .. :try_end_924} :catchall_1229

    const/4 v12, 0x0

    :try_start_925
    aput-object v6, v14, v12

    const/4 v12, 0x1

    aput-object v13, v14, v12

    iget-object v12, v9, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    const/4 v15, 0x2

    aput-object v12, v14, v15

    invoke-static/range {v28 .. v28}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v12

    const/4 v15, 0x3

    aput-object v12, v14, v15

    invoke-static {v11, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_942

    :catch_93e
    move-exception v0

    move-object v3, v0

    goto/16 :goto_89d

    :cond_942
    :goto_942
    iget v10, v9, Lcom/android/launcher3/model/LoaderCursor;->itemType:I

    const/4 v11, 0x6

    if-ne v10, v11, :cond_94e

    const-string v2, "Legacy shortcuts are only allowed for current users"

    invoke-virtual {v9, v2}, Lcom/android/launcher3/model/OplusLoaderCursor;->markDeleted(Ljava/lang/String;)V

    goto/16 :goto_8ba

    :cond_94e
    iget v10, v9, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    if-eqz v10, :cond_959

    const-string v2, "Restore from other profiles not supported"

    invoke-virtual {v9, v2}, Lcom/android/launcher3/model/OplusLoaderCursor;->markDeleted(Ljava/lang/String;)V
    :try_end_957
    .catch Ljava/lang/Exception; {:try_start_925 .. :try_end_957} :catch_8a2
    .catchall {:try_start_925 .. :try_end_957} :catchall_1229

    goto/16 :goto_8ba

    :cond_959
    :try_start_959
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10
    :try_end_95d
    .catch Ljava/lang/Exception; {:try_start_959 .. :try_end_95d} :catch_1118
    .catchall {:try_start_959 .. :try_end_95d} :catchall_1229

    if-eqz v10, :cond_96b

    :try_start_95f
    iget v10, v9, Lcom/android/launcher3/model/LoaderCursor;->itemType:I

    const/4 v11, 0x6

    if-eq v10, v11, :cond_96b

    const-string v2, "Only legacy shortcuts can have null package"

    invoke-virtual {v9, v2}, Lcom/android/launcher3/model/OplusLoaderCursor;->markDeleted(Ljava/lang/String;)V
    :try_end_969
    .catch Ljava/lang/Exception; {:try_start_95f .. :try_end_969} :catch_8a2
    .catchall {:try_start_95f .. :try_end_969} :catchall_1229

    goto/16 :goto_8ba

    :cond_96b
    :try_start_96b
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10
    :try_end_96f
    .catch Ljava/lang/Exception; {:try_start_96b .. :try_end_96f} :catch_1118
    .catchall {:try_start_96b .. :try_end_96f} :catchall_1229

    if-nez v10, :cond_97e

    :try_start_971
    iget-object v10, v1, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mLauncherAppsCompat:Lcom/android/launcher/OplusLauncherAppsCompat;

    iget-object v11, v9, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    invoke-virtual {v10, v6, v11}, Lcom/android/launcher/OplusLauncherAppsCompat;->isPackageEnabledForProfile(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v10
    :try_end_979
    .catch Ljava/lang/Exception; {:try_start_971 .. :try_end_979} :catch_8a2
    .catchall {:try_start_971 .. :try_end_979} :catchall_1229

    if-eqz v10, :cond_97c

    goto :goto_97e

    :cond_97c
    const/4 v12, 0x0

    goto :goto_97f

    :cond_97e
    :goto_97e
    const/4 v12, 0x1

    :goto_97f
    :try_start_97f
    sget-object v10, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;
    :try_end_981
    .catch Ljava/lang/Exception; {:try_start_97f .. :try_end_981} :catch_1118
    .catchall {:try_start_97f .. :try_end_981} :catchall_1229

    const/4 v11, 0x6

    :try_start_982
    new-array v14, v11, [Ljava/lang/Object;
    :try_end_984
    .catch Ljava/lang/Exception; {:try_start_982 .. :try_end_984} :catch_110f
    .catchall {:try_start_982 .. :try_end_984} :catchall_1229

    :try_start_984
    const-string/jumbo v11, "validTarget: "

    const/4 v15, 0x0

    aput-object v11, v14, v15

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v15, 0x1

    aput-object v11, v14, v15

    const-string v11, ", package: "

    const/4 v15, 0x2

    aput-object v11, v14, v15

    const/4 v11, 0x3

    aput-object v6, v14, v11

    const-string v11, ", user: "
    :try_end_99b
    .catch Ljava/lang/Exception; {:try_start_984 .. :try_end_99b} :catch_1118
    .catchall {:try_start_984 .. :try_end_99b} :catchall_1229

    const/4 v15, 0x4

    :try_start_99c
    aput-object v11, v14, v15
    :try_end_99e
    .catch Ljava/lang/Exception; {:try_start_99c .. :try_end_99e} :catch_1107
    .catchall {:try_start_99c .. :try_end_99e} :catchall_1229

    :try_start_99e
    iget-object v11, v9, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;
    :try_end_9a0
    .catch Ljava/lang/Exception; {:try_start_99e .. :try_end_9a0} :catch_1118
    .catchall {:try_start_99e .. :try_end_9a0} :catchall_1229

    const/4 v15, 0x5

    :try_start_9a1
    aput-object v11, v14, v15
    :try_end_9a3
    .catch Ljava/lang/Exception; {:try_start_9a1 .. :try_end_9a3} :catch_1100
    .catchall {:try_start_9a1 .. :try_end_9a3} :catchall_1229

    :try_start_9a3
    invoke-static {v10, v14}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_9a6
    .catch Ljava/lang/Exception; {:try_start_9a3 .. :try_end_9a6} :catch_1118
    .catchall {:try_start_9a3 .. :try_end_9a6} :catchall_1229

    if-eqz v5, :cond_a9c

    if-eqz v12, :cond_a9c

    :try_start_9aa
    iget-object v10, v1, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mLauncherAppsCompat:Lcom/android/launcher/OplusLauncherAppsCompat;

    iget-object v11, v9, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    invoke-virtual {v10, v5, v11}, Lcom/android/launcher/OplusLauncherAppsCompat;->isActivityEnabledForProfile(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z

    move-result v10
    :try_end_9b2
    .catch Ljava/lang/Exception; {:try_start_9aa .. :try_end_9b2} :catch_a97
    .catchall {:try_start_9aa .. :try_end_9b2} :catchall_1229

    if-eqz v10, :cond_9d8

    :try_start_9b4
    sget-object v10, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;
    :try_end_9b6
    .catch Ljava/lang/Exception; {:try_start_9b4 .. :try_end_9b6} :catch_8a2
    .catchall {:try_start_9b4 .. :try_end_9b6} :catchall_1229

    const/4 v11, 0x4

    :try_start_9b7
    new-array v14, v11, [Ljava/lang/Object;
    :try_end_9b9
    .catch Ljava/lang/Exception; {:try_start_9b7 .. :try_end_9b9} :catch_9d3
    .catchall {:try_start_9b7 .. :try_end_9b9} :catchall_1229

    :try_start_9b9
    const-string v11, "Restored: [1]activity enable, mark restored, cn = "

    const/4 v15, 0x0

    aput-object v11, v14, v15

    const/4 v11, 0x1

    aput-object v5, v14, v11

    const-string v11, ", c.user = "

    const/4 v15, 0x2

    aput-object v11, v14, v15

    iget-object v11, v9, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    const/4 v15, 0x3

    aput-object v11, v14, v15

    invoke-static {v10, v14}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v9}, Lcom/android/launcher3/model/LoaderCursor;->markRestored()V
    :try_end_9d1
    .catch Ljava/lang/Exception; {:try_start_9b9 .. :try_end_9d1} :catch_8a2
    .catchall {:try_start_9b9 .. :try_end_9d1} :catchall_1229

    goto/16 :goto_a9c

    :catch_9d3
    move-exception v0

    move-object v3, v0

    move v12, v11

    goto/16 :goto_89d

    :cond_9d8
    :try_start_9d8
    invoke-static {v4, v6}, Lcom/android/common/util/PackageUtils;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v10

    const-string v11, "downloadAppClassName"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    sget-object v14, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;
    :try_end_9e4
    .catch Ljava/lang/Exception; {:try_start_9d8 .. :try_end_9e4} :catch_a97
    .catchall {:try_start_9d8 .. :try_end_9e4} :catchall_1229

    move-object/from16 v25, v8

    const/4 v15, 0x4

    :try_start_9e7
    new-array v8, v15, [Ljava/lang/Object;
    :try_end_9e9
    .catch Ljava/lang/Exception; {:try_start_9e7 .. :try_end_9e9} :catch_a90
    .catchall {:try_start_9e7 .. :try_end_9e9} :catchall_1229

    :try_start_9e9
    const-string v15, "launcherIntentChanged: "

    const/16 v26, 0x0

    aput-object v15, v8, v26

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    const/16 v26, 0x1

    aput-object v15, v8, v26

    const-string v15, ", isDownloadClsName: "

    const/16 v24, 0x2

    aput-object v15, v8, v24

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    const/16 v20, 0x3

    aput-object v15, v8, v20

    invoke-static {v14, v8}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v10, :cond_a2d

    if-eqz v11, :cond_a0d

    goto :goto_a2d

    :cond_a0d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "activity disabled, delete it! cn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", c.user = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v9, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/android/launcher3/model/OplusLoaderCursor;->markDeleted(Ljava/lang/String;)V

    goto/16 :goto_8bc

    :cond_a2d
    :goto_a2d
    iget-object v8, v1, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mPmHelper:Lcom/android/launcher3/util/PackageManagerHelper;

    iget-object v10, v9, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    invoke-virtual {v8, v6, v10}, Lcom/android/launcher3/util/PackageManagerHelper;->getAppLaunchIntent(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/Intent;

    move-result-object v8

    if-eqz v8, :cond_a7a

    const/4 v10, 0x0

    iput v10, v9, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    iget v5, v9, Lcom/android/launcher3/model/LoaderCursor;->itemType:I

    const/4 v10, 0x1

    if-ne v5, v10, :cond_a47

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_a48

    :cond_a47
    move-object v2, v8

    :goto_a48
    invoke-virtual {v9}, Lcom/android/launcher3/model/LoaderCursor;->updater()Lcom/android/launcher3/util/ContentWriter;

    move-result-object v5

    const-string v8, "intent"

    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v8, v11}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/util/ContentWriter;->commit()I

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    sget-object v8, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Updater: Intent when launcherIntentChanged or isDownloadClsName: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v11, 0x0

    invoke-virtual {v2, v11}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a9e

    :cond_a7a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find a launch target: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/android/launcher3/model/OplusLoaderCursor;->markDeleted(Ljava/lang/String;)V
    :try_end_a8e
    .catch Ljava/lang/Exception; {:try_start_9e9 .. :try_end_a8e} :catch_bf2
    .catchall {:try_start_9e9 .. :try_end_a8e} :catchall_1229

    goto/16 :goto_8bc

    :catch_a90
    move-exception v0

    move-object v3, v0

    move v12, v15

    :goto_a93
    move-object/from16 v8, v25

    goto/16 :goto_89d

    :catch_a97
    move-exception v0

    move-object/from16 v25, v8

    goto/16 :goto_8a3

    :cond_a9c
    :goto_a9c
    move-object/from16 v25, v8

    :goto_a9e
    :try_start_a9e
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8
    :try_end_aa2
    .catch Ljava/lang/Exception; {:try_start_a9e .. :try_end_aa2} :catch_10f6
    .catchall {:try_start_a9e .. :try_end_aa2} :catchall_1229

    if-nez v8, :cond_bf8

    if-nez v12, :cond_bf8

    :try_start_aa6
    iget v8, v9, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    if-eqz v8, :cond_b9f

    sget-object v8, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "package not yet restored: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, v9, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    invoke-virtual {v7, v6, v8}, Lcom/android/launcher3/util/PackageUserKey;->update(Ljava/lang/String;Landroid/os/UserHandle;)V

    const/4 v8, 0x2

    invoke-virtual {v9, v8}, Lcom/android/launcher3/model/LoaderCursor;->hasRestoreFlag(I)Z

    move-result v10

    if-eqz v10, :cond_ae5

    iget-object v8, v1, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mInstallingPkgs:Ljava/util/HashMap;

    invoke-virtual {v8, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_ae5

    iget-object v8, v1, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v8}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object v8

    iget-object v10, v1, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mInstallingPkgs:Ljava/util/HashMap;

    invoke-virtual {v10, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/PackageInstaller$SessionInfo;

    invoke-virtual {v8, v7, v10}, Lcom/android/launcher3/icons/IconCache;->updateSessionCache(Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;)V
    :try_end_ae5
    .catch Ljava/lang/Exception; {:try_start_aa6 .. :try_end_ae5} :catch_bf2
    .catchall {:try_start_aa6 .. :try_end_ae5} :catchall_1229

    :cond_ae5
    const/4 v8, 0x4

    :try_start_ae6
    invoke-virtual {v9, v8}, Lcom/android/launcher3/model/LoaderCursor;->hasRestoreFlag(I)Z

    move-result v10
    :try_end_aea
    .catch Ljava/lang/Exception; {:try_start_ae6 .. :try_end_aea} :catch_b9a
    .catchall {:try_start_ae6 .. :try_end_aea} :catchall_1229

    if-eqz v10, :cond_af7

    const/4 v8, 0x2

    :try_start_aed
    invoke-virtual {v9, v8}, Lcom/android/launcher3/model/LoaderCursor;->hasRestoreFlag(I)Z

    move-result v10

    if-eqz v10, :cond_bf8

    or-int/lit8 v3, v3, 0x2

    goto/16 :goto_bf8

    :cond_af7
    iget-object v8, v1, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mInstallingPkgs:Ljava/util/HashMap;

    invoke-virtual {v8, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b39

    const/4 v8, 0x2

    invoke-virtual {v9, v8}, Lcom/android/launcher3/model/LoaderCursor;->hasRestoreFlag(I)Z

    move-result v10

    if-eqz v10, :cond_b08

    or-int/lit8 v3, v3, 0x2

    :cond_b08
    iget v8, v9, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    const/4 v10, 0x4

    or-int/2addr v8, v10

    iput v8, v9, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    invoke-virtual {v9}, Lcom/android/launcher3/model/LoaderCursor;->updater()Lcom/android/launcher3/util/ContentWriter;

    move-result-object v8

    const-string v10, "restored"

    iget v11, v9, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher3/util/ContentWriter;->commit()I

    sget-object v8, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Updater: RestoreFlag of installing pkg = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_bf8

    :cond_b39
    sget-boolean v8, Lcom/android/common/config/FeatureOption;->isOPDevice:Z

    if-eqz v8, :cond_b43

    invoke-static {}, Lcom/android/common/config/VersionInfo;->isRussianVersion()Z

    move-result v8

    if-eqz v8, :cond_b64

    :cond_b43
    const/4 v8, 0x2

    invoke-virtual {v9, v8}, Lcom/android/launcher3/model/LoaderCursor;->hasRestoreFlag(I)Z

    move-result v10

    if-eqz v10, :cond_b64

    or-int/lit8 v3, v3, 0x2

    sget-object v8, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "auto install app targetPkg = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_bf8

    :cond_b64
    const-string v8, "MarketRecommendAppClassName"

    invoke-virtual {v8, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b84

    sget-object v8, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "folder content recommend app targetPkg = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_bf8

    :cond_b84
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrestored app removed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/android/launcher3/model/OplusLoaderCursor;->markDeleted(Ljava/lang/String;)V

    goto/16 :goto_8bc

    :catch_b9a
    move-exception v0

    move-object v3, v0

    move v12, v8

    goto/16 :goto_a93

    :cond_b9f
    iget-object v8, v1, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mPmHelper:Lcom/android/launcher3/util/PackageManagerHelper;

    iget-object v10, v9, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    invoke-virtual {v8, v6, v10}, Lcom/android/launcher3/util/PackageManagerHelper;->isAppOnSdcard(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v8

    if-eqz v8, :cond_bad

    or-int/lit8 v3, v3, 0x2

    :goto_bab
    const/4 v8, 0x1

    goto :goto_bf9

    :cond_bad
    iget-boolean v8, v1, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mIsSdCardReady:Z

    if-nez v8, :cond_bd4

    sget-object v8, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Missing pkg, will check later: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v8, Lcom/android/launcher3/util/PackageUserKey;

    iget-object v10, v9, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    invoke-direct {v8, v6, v10}, Lcom/android/launcher3/util/PackageUserKey;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    iget-object v10, v1, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mPendingPackages:Ljava/util/Set;

    invoke-interface {v10, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_bab

    :cond_bd4
    sget-object v8, Lcom/android/launcher/operators/GeneralCustomizer;->INSTANCE:Lcom/android/launcher/operators/GeneralCustomizer;

    invoke-virtual {v8, v6}, Lcom/android/launcher/operators/GeneralCustomizer;->needToastApp(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_bf8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid package removed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/android/launcher3/model/OplusLoaderCursor;->markDeleted(Ljava/lang/String;)V
    :try_end_bf0
    .catch Ljava/lang/Exception; {:try_start_aed .. :try_end_bf0} :catch_bf2
    .catchall {:try_start_aed .. :try_end_bf0} :catchall_1229

    goto/16 :goto_8bc

    :catch_bf2
    move-exception v0

    move-object v3, v0

    move-object/from16 v8, v25

    goto/16 :goto_8a4

    :cond_bf8
    :goto_bf8
    const/4 v8, 0x0

    :goto_bf9
    :try_start_bf9
    iget v10, v9, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I
    :try_end_bfb
    .catch Ljava/lang/Exception; {:try_start_bf9 .. :try_end_bfb} :catch_10f6
    .catchall {:try_start_bf9 .. :try_end_bfb} :catchall_1229

    const/16 v11, 0x8

    and-int/2addr v10, v11

    if-eqz v10, :cond_c01

    const/4 v12, 0x0

    :cond_c01
    if-eqz v12, :cond_c26

    :try_start_c03
    sget-object v10, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Restored: [2]activity enable, mark restored, cn = "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, ", c.user = "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v9, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/android/launcher3/model/LoaderCursor;->markRestored()V
    :try_end_c26
    .catch Ljava/lang/Exception; {:try_start_c03 .. :try_end_c26} :catch_bf2
    .catchall {:try_start_c03 .. :try_end_c26} :catchall_1229

    :cond_c26
    :try_start_c26
    invoke-static/range {p1 .. p1}, Lcom/android/launcher3/OplusAppFilter;->newInstance(Landroid/content/Context;)Lcom/android/launcher3/OplusAppFilter;

    move-result-object v10

    iget-object v11, v9, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    iget v14, v9, Lcom/android/launcher3/model/LoaderCursor;->itemType:I

    invoke-virtual {v10, v6, v11, v14}, Lcom/android/launcher3/OplusAppFilter;->shouldShowAppByItemType(Ljava/lang/String;Landroid/os/UserHandle;I)Z

    move-result v10
    :try_end_c32
    .catch Ljava/lang/Exception; {:try_start_c26 .. :try_end_c32} :catch_10f6
    .catchall {:try_start_c26 .. :try_end_c32} :catchall_1229

    if-nez v10, :cond_c4b

    :try_start_c34
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "should hide app, pkg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/android/launcher3/model/OplusLoaderCursor;->markDeleted(Ljava/lang/String;)V
    :try_end_c49
    .catch Ljava/lang/Exception; {:try_start_c34 .. :try_end_c49} :catch_bf2
    .catchall {:try_start_c34 .. :try_end_c49} :catchall_1229

    goto/16 :goto_8bc

    :cond_c4b
    :try_start_c4b
    invoke-virtual {v9}, Lcom/android/launcher3/model/LoaderCursor;->isOnWorkspaceOrHotseat()Z

    move-result v10

    if-nez v10, :cond_c53

    const/4 v10, 0x1

    goto :goto_c54

    :cond_c53
    const/4 v10, 0x0

    :goto_c54
    iget v11, v9, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I
    :try_end_c56
    .catch Ljava/lang/Exception; {:try_start_c4b .. :try_end_c56} :catch_10f6
    .catchall {:try_start_c4b .. :try_end_c56} :catchall_1229

    if-eqz v11, :cond_d10

    :try_start_c58
    sget-object v8, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getRestoredItemInfo: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v2, v12}, Lcom/android/launcher3/model/OplusLoaderCursor;->getRestoredItemInfo(Landroid/content/Intent;Z)Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v8

    iget v10, v9, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    const/high16 v11, 0x20000000

    and-int/2addr v10, v11

    if-eqz v10, :cond_d0d

    const-string v10, "MarketRecommendAppClassName"

    invoke-virtual {v10, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d0d

    iget-object v10, v8, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    if-eqz v10, :cond_c93

    sget-object v14, Lcom/android/launcher3/icons/BitmapInfo;->LOW_RES_INFO:Lcom/android/launcher3/icons/BitmapInfo;

    if-eq v10, v14, :cond_c93

    invoke-static {}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->getSInstance()Lcom/android/launcher/folder/download/FolderRecommendUtils;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->isSupportFolderContentRecommend()Z

    move-result v10

    if-nez v10, :cond_d0d

    :cond_c93
    invoke-static {}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->getSInstance()Lcom/android/launcher/folder/download/FolderRecommendUtils;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v6, v3}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->removeMarketInfoByPkgName(Ljava/lang/String;Z)V

    sget-object v2, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "condition1 = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v9, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    and-int/2addr v5, v11

    if-eqz v5, :cond_cae

    const/4 v12, 0x1

    goto :goto_caf

    :cond_cae
    const/4 v12, 0x0

    :goto_caf
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", condition2 = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "MarketRecommendAppClassName"

    invoke-virtual {v5, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", condition3 = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v8, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    if-nez v5, :cond_ccb

    const/4 v12, 0x1

    goto :goto_ccc

    :cond_ccb
    const/4 v12, 0x0

    :goto_ccc
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", condition4 = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v8, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    sget-object v8, Lcom/android/launcher3/icons/BitmapInfo;->LOW_RES_INFO:Lcom/android/launcher3/icons/BitmapInfo;

    if-ne v5, v8, :cond_cdc

    const/4 v12, 0x1

    goto :goto_cdd

    :cond_cdc
    const/4 v12, 0x0

    :goto_cdd
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", condition5 = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->getSInstance()Lcom/android/launcher/folder/download/FolderRecommendUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->isSupportFolderContentRecommend()Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "recommendInfo icon load fail!!! targetPkg ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/android/launcher3/model/OplusLoaderCursor;->markDeleted(Ljava/lang/String;)V
    :try_end_d0b
    .catch Ljava/lang/Exception; {:try_start_c58 .. :try_end_d0b} :catch_bf2
    .catchall {:try_start_c58 .. :try_end_d0b} :catchall_1229

    goto/16 :goto_8bc

    :cond_d0d
    const/4 v13, 0x6

    goto/16 :goto_e6b

    :cond_d10
    :try_start_d10
    iget v11, v9, Lcom/android/launcher3/model/LoaderCursor;->itemType:I
    :try_end_d12
    .catch Ljava/lang/Exception; {:try_start_d10 .. :try_end_d12} :catch_10f6
    .catchall {:try_start_d10 .. :try_end_d12} :catchall_1229

    if-nez v11, :cond_d64

    :try_start_d14
    invoke-virtual {v9, v2, v8, v10}, Lcom/android/launcher3/model/LoaderCursor;->getAppShortcutInfo(Landroid/content/Intent;ZZ)Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v10

    sget-object v11, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;
    :try_end_d1a
    .catch Ljava/lang/Exception; {:try_start_d14 .. :try_end_d1a} :catch_d59
    .catchall {:try_start_d14 .. :try_end_d1a} :catchall_1229

    const/4 v13, 0x6

    :try_start_d1b
    new-array v14, v13, [Ljava/lang/Object;

    const-string v15, "c.getAppShortcutInfo: intent: "

    const/16 v17, 0x0

    aput-object v15, v14, v17

    const/4 v15, 0x1

    aput-object v2, v14, v15

    const-string v15, ", allowMissingTarget: "

    const/16 v17, 0x2

    aput-object v15, v14, v17

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const/4 v15, 0x3

    aput-object v8, v14, v15

    const-string v8, ", result info: "
    :try_end_d35
    .catch Ljava/lang/Exception; {:try_start_d1b .. :try_end_d35} :catch_e29
    .catchall {:try_start_d1b .. :try_end_d35} :catchall_1229

    const/4 v15, 0x4

    :try_start_d36
    aput-object v8, v14, v15
    :try_end_d38
    .catch Ljava/lang/Exception; {:try_start_d36 .. :try_end_d38} :catch_d4f
    .catchall {:try_start_d36 .. :try_end_d38} :catchall_1229

    const/4 v8, 0x5

    :try_start_d39
    aput-object v10, v14, v8
    :try_end_d3b
    .catch Ljava/lang/Exception; {:try_start_d39 .. :try_end_d3b} :catch_d47
    .catchall {:try_start_d39 .. :try_end_d3b} :catchall_1229

    :try_start_d3b
    invoke-static {v11, v14}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v10, :cond_d44

    iget v8, v9, Lcom/android/launcher3/model/LoaderCursor;->itemType:I

    iput v8, v10, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    :cond_d44
    move-object v8, v10

    goto/16 :goto_e6b

    :catch_d47
    move-exception v0

    move-object v3, v0

    move v10, v8

    move-object/from16 v8, v25

    move-object/from16 v2, v37

    goto :goto_d61

    :catch_d4f
    move-exception v0

    move-object v3, v0

    move v12, v15

    move-object/from16 v8, v25

    move-object/from16 v2, v37

    const/4 v10, 0x5

    goto/16 :goto_112b

    :catch_d59
    move-exception v0

    const/4 v13, 0x6

    :goto_d5b
    move-object v3, v0

    move-object/from16 v8, v25

    move-object/from16 v2, v37

    :goto_d60
    const/4 v10, 0x5

    :goto_d61
    const/4 v12, 0x4

    goto/16 :goto_112b

    :cond_d64
    const/4 v13, 0x6

    const/4 v8, 0x1

    if-ne v11, v8, :cond_e2c

    iget-object v8, v9, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    invoke-static {v2, v8}, Lcom/android/launcher3/shortcuts/ShortcutKey;->fromIntent(Landroid/content/Intent;Landroid/os/UserHandle;)Lcom/android/launcher3/shortcuts/ShortcutKey;

    move-result-object v8

    iget-object v10, v1, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mUnlockedUsers:Landroid/util/LongSparseArray;

    iget-wide v14, v9, Lcom/android/launcher3/model/LoaderCursor;->serialNumber:J

    invoke-virtual {v10, v14, v15}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_e1d

    iget-object v2, v1, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mShortcutKeyToPinnedShortcuts:Ljava/util/Map;

    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ShortcutInfo;

    if-nez v2, :cond_d93

    const-string v2, "Pinned shortcut not found"

    invoke-virtual {v9, v2}, Lcom/android/launcher3/model/OplusLoaderCursor;->markDeleted(Ljava/lang/String;)V

    move-object/from16 v2, v37

    :goto_d8f
    const/4 v10, 0x5

    const/4 v12, 0x4

    goto/16 :goto_1021

    :cond_d93
    new-instance v8, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-direct {v8, v2, v4}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;-><init>(Landroid/content/pm/ShortcutInfo;Landroid/content/Context;)V

    iget-object v10, v1, Lcom/android/launcher3/model/LoaderTask;->mIconCache:Lcom/android/launcher3/icons/IconCache;

    new-instance v11, Lcom/android/launcher3/model/e0;

    invoke-direct {v11, v9}, Lcom/android/launcher3/model/e0;-><init>(Lcom/android/launcher3/model/OplusLoaderCursor;)V

    invoke-virtual {v10, v8, v2, v11}, Lcom/android/launcher3/icons/IconCache;->getShortcutIcon(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Landroid/content/pm/ShortcutInfo;Ljava/util/function/Predicate;)V

    iget-boolean v10, v1, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mIsIconThemeChanged:Z

    if-eqz v10, :cond_dd0

    invoke-virtual {v9}, Lcom/android/launcher3/model/LoaderCursor;->updater()Lcom/android/launcher3/util/ContentWriter;

    move-result-object v10

    iget-object v11, v8, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    iget-object v14, v9, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    invoke-virtual {v10, v11, v14}, Lcom/android/launcher3/util/ContentWriter;->putIcon(Lcom/android/launcher3/icons/BitmapInfo;Landroid/os/UserHandle;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/launcher3/util/ContentWriter;->commit()I

    sget-object v10, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Updater: bitmap of info = "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, " when icon theme change"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_dd0
    const-string v10, "icon"

    invoke-virtual {v9, v10}, Landroid/database/CursorWrapper;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/database/CursorWrapper;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_e06

    invoke-virtual {v9}, Lcom/android/launcher3/model/LoaderCursor;->updater()Lcom/android/launcher3/util/ContentWriter;

    move-result-object v10

    iget-object v11, v8, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    iget-object v14, v9, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    invoke-virtual {v10, v11, v14}, Lcom/android/launcher3/util/ContentWriter;->putIcon(Lcom/android/launcher3/icons/BitmapInfo;Landroid/os/UserHandle;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/launcher3/util/ContentWriter;->commit()I

    sget-object v10, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Updater: bitmap of info = "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, " when icon isNull in db"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e06
    iget-object v10, v1, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mPmHelper:Lcom/android/launcher3/util/PackageManagerHelper;

    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v2

    iget-object v11, v8, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v10, v2, v11}, Lcom/android/launcher3/util/PackageManagerHelper;->isAppSuspended(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v2

    if-eqz v2, :cond_e1a

    iget v2, v8, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I

    const/4 v10, 0x4

    or-int/2addr v2, v10

    iput v2, v8, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I

    :cond_e1a
    iget-object v2, v8, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    goto :goto_e6b

    :cond_e1d
    invoke-virtual {v9}, Lcom/android/launcher3/model/LoaderCursor;->loadSimpleWorkspaceItem()Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v8

    iget v10, v8, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I

    const/16 v11, 0x20

    or-int/2addr v10, v11

    iput v10, v8, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I
    :try_end_e28
    .catch Ljava/lang/Exception; {:try_start_d3b .. :try_end_e28} :catch_e29
    .catchall {:try_start_d3b .. :try_end_e28} :catchall_1229

    goto :goto_e6b

    :catch_e29
    move-exception v0

    goto/16 :goto_d5b

    :cond_e2c
    :try_start_e2c
    invoke-virtual {v9}, Lcom/android/launcher3/model/LoaderCursor;->loadSimpleWorkspaceItem()Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v8

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10
    :try_end_e34
    .catch Ljava/lang/Exception; {:try_start_e2c .. :try_end_e34} :catch_10f0
    .catchall {:try_start_e2c .. :try_end_e34} :catchall_1229

    if-nez v10, :cond_e42

    :try_start_e36
    iget-object v10, v1, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mPmHelper:Lcom/android/launcher3/util/PackageManagerHelper;

    iget-object v11, v9, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    invoke-virtual {v10, v6, v11}, Lcom/android/launcher3/util/PackageManagerHelper;->isAppSuspended(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v10
    :try_end_e3e
    .catch Ljava/lang/Exception; {:try_start_e36 .. :try_end_e3e} :catch_e29
    .catchall {:try_start_e36 .. :try_end_e3e} :catchall_1229

    if-eqz v10, :cond_e42

    or-int/lit8 v3, v3, 0x4

    :cond_e42
    :try_start_e42
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10
    :try_end_e46
    .catch Ljava/lang/Exception; {:try_start_e42 .. :try_end_e46} :catch_10f0
    .catchall {:try_start_e42 .. :try_end_e46} :catchall_1229

    if-eqz v10, :cond_e6b

    :try_start_e48
    invoke-virtual {v2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v10

    if-eqz v10, :cond_e6b

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    const-string v11, "android.intent.action.MAIN"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e6b

    invoke-virtual {v2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v10

    const-string v11, "android.intent.category.LAUNCHER"

    invoke-interface {v10, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e6b

    const/high16 v10, 0x10200000

    invoke-virtual {v2, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_e6b
    .catch Ljava/lang/Exception; {:try_start_e48 .. :try_end_e6b} :catch_e29
    .catchall {:try_start_e48 .. :try_end_e6b} :catchall_1229

    :cond_e6b
    :goto_e6b
    if-eqz v8, :cond_10d3

    :try_start_e6d
    iget v5, v9, Lcom/android/launcher3/model/LoaderCursor;->itemType:I
    :try_end_e6f
    .catch Ljava/lang/Exception; {:try_start_e6d .. :try_end_e6f} :catch_10f0
    .catchall {:try_start_e6d .. :try_end_e6f} :catchall_1229

    if-nez v5, :cond_e91

    :try_start_e71
    iget-object v5, v1, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mNewUpdatedAppsManager:Lcom/android/launcher/NewUpdatedAppsManager;

    invoke-virtual {v5, v6}, Lcom/android/launcher/NewUpdatedAppsManager;->isNewUpdatedApp(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, v8, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->mIsNewUpdated:Z

    sget-object v5, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "info.mIsNewUpdated: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v11, v8, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->mIsNewUpdated:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e91
    .catch Ljava/lang/Exception; {:try_start_e71 .. :try_end_e91} :catch_e29
    .catchall {:try_start_e71 .. :try_end_e91} :catchall_1229

    :cond_e91
    :try_start_e91
    invoke-virtual {v9, v8}, Lcom/android/launcher3/model/LoaderCursor;->applyCommonProperties(Lcom/android/launcher3/model/data/ItemInfo;)V

    iput-object v2, v8, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    iget v5, v9, Lcom/android/launcher3/model/OplusLoaderCursor;->mRankIndex:I

    invoke-virtual {v9, v5}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v5

    iput v5, v8, Lcom/android/launcher3/model/data/ItemInfo;->rank:I

    const/4 v5, 0x1

    iput v5, v8, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iput v5, v8, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iget v5, v8, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I

    or-int/2addr v3, v5

    iput v3, v8, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I

    iget-boolean v3, v1, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mIsSafeMode:Z
    :try_end_eaa
    .catch Ljava/lang/Exception; {:try_start_e91 .. :try_end_eaa} :catch_10f0
    .catchall {:try_start_e91 .. :try_end_eaa} :catchall_1229

    if-eqz v3, :cond_ed0

    :try_start_eac
    invoke-static {v4, v2}, Lcom/android/launcher3/util/PackageManagerHelper;->isSystemApp(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_ed0

    iget v2, v8, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I

    const/4 v3, 0x1

    or-int/2addr v2, v3

    iput v2, v8, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I

    sget-object v2, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "info.runtimeStatusFlags: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v8, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ed0
    .catch Ljava/lang/Exception; {:try_start_eac .. :try_end_ed0} :catch_e29
    .catchall {:try_start_eac .. :try_end_ed0} :catchall_1229

    :cond_ed0
    :try_start_ed0
    iget v2, v9, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I
    :try_end_ed2
    .catch Ljava/lang/Exception; {:try_start_ed0 .. :try_end_ed2} :catch_10f0
    .catchall {:try_start_ed0 .. :try_end_ed2} :catchall_1229

    if-eqz v2, :cond_efb

    :try_start_ed4
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_efb

    iget-object v2, v9, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    invoke-virtual {v7, v6, v2}, Lcom/android/launcher3/util/PackageUserKey;->update(Ljava/lang/String;Landroid/os/UserHandle;)V

    iget-object v2, v1, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mInstallingPkgs:Ljava/util/HashMap;

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInstaller$SessionInfo;

    if-nez v2, :cond_ef0

    iget v2, v8, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->status:I

    and-int/lit16 v2, v2, -0x401

    iput v2, v8, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->status:I

    goto :goto_efb

    :cond_ef0
    invoke-virtual {v2}, Landroid/content/pm/PackageInstaller$SessionInfo;->getProgress()F

    move-result v2

    const/high16 v3, 0x42c80000  # 100.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v8, v2}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->setInstallProgress(I)V
    :try_end_efb
    .catch Ljava/lang/Exception; {:try_start_ed4 .. :try_end_efb} :catch_e29
    .catchall {:try_start_ed4 .. :try_end_efb} :catchall_1229

    :cond_efb
    :goto_efb
    :try_start_efb
    iget-object v2, v1, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mUnlockedUsers:Landroid/util/LongSparseArray;

    iget-wide v10, v9, Lcom/android/launcher3/model/LoaderCursor;->serialNumber:J

    invoke-virtual {v2, v10, v11}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2
    :try_end_f03
    .catch Ljava/lang/Exception; {:try_start_efb .. :try_end_f03} :catch_10f0
    .catchall {:try_start_efb .. :try_end_f03} :catchall_1229

    if-nez v2, :cond_f13

    move-object/from16 v2, v37

    const/4 v3, 0x0

    :try_start_f08
    invoke-virtual {v2, v6, v8, v3}, Lcom/android/launcher/download/DownloadAppsManager;->initInstallState(Ljava/lang/String;Lcom/android/launcher3/model/data/WorkspaceItemInfo;Z)Z

    move-result v5
    :try_end_f0c
    .catch Ljava/lang/Exception; {:try_start_f08 .. :try_end_f0c} :catch_f0d
    .catchall {:try_start_f08 .. :try_end_f0c} :catchall_1229

    goto :goto_f27

    :catch_f0d
    move-exception v0

    move-object v3, v0

    move-object/from16 v8, v25

    goto/16 :goto_d60

    :cond_f13
    move-object/from16 v2, v37

    :try_start_f15
    iget-object v3, v1, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mUnlockedUsers:Landroid/util/LongSparseArray;

    iget-wide v10, v9, Lcom/android/launcher3/model/LoaderCursor;->serialNumber:J

    invoke-virtual {v3, v10, v11}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v6, v8, v3}, Lcom/android/launcher/download/DownloadAppsManager;->initInstallState(Ljava/lang/String;Lcom/android/launcher3/model/data/WorkspaceItemInfo;Z)Z

    move-result v5
    :try_end_f27
    .catch Ljava/lang/Exception; {:try_start_f15 .. :try_end_f27} :catch_10d1
    .catchall {:try_start_f15 .. :try_end_f27} :catchall_1229

    :goto_f27
    if-nez v5, :cond_f3f

    :try_start_f29
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid isNewInstallType targetPkg = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Lcom/android/launcher3/model/OplusLoaderCursor;->markDeleted(Ljava/lang/String;)V
    :try_end_f3d
    .catch Ljava/lang/Exception; {:try_start_f29 .. :try_end_f3d} :catch_f0d
    .catchall {:try_start_f29 .. :try_end_f3d} :catchall_1229

    goto/16 :goto_d8f

    :cond_f3f
    :try_start_f3f
    iget-object v3, v8, Lcom/android/launcher3/model/data/ItemInfo;->mInstallState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {v3}, Lcom/android/launcher/download/InstallState;->isNewInstallingType()Z

    move-result v3

    if-eqz v3, :cond_fbe

    invoke-virtual {v2}, Lcom/android/launcher/download/DownloadAppsManager;->isDownloadProgressSupported()Z

    move-result v3
    :try_end_f4b
    .catch Ljava/lang/Exception; {:try_start_f3f .. :try_end_f4b} :catch_10d1
    .catchall {:try_start_f3f .. :try_end_f4b} :catchall_1229

    if-nez v3, :cond_f54

    :try_start_f4d
    const-string v3, "Invalid or new install app for not support"

    invoke-virtual {v9, v3}, Lcom/android/launcher3/model/OplusLoaderCursor;->markDeleted(Ljava/lang/String;)V
    :try_end_f52
    .catch Ljava/lang/Exception; {:try_start_f4d .. :try_end_f52} :catch_f0d
    .catchall {:try_start_f4d .. :try_end_f52} :catchall_1229

    goto/16 :goto_d8f

    :cond_f54
    if-eqz v12, :cond_fbe

    :try_start_f56
    sget-object v3, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;
    :try_end_f58
    .catch Ljava/lang/Exception; {:try_start_f56 .. :try_end_f58} :catch_10d1
    .catchall {:try_start_f56 .. :try_end_f58} :catchall_1229

    const/4 v10, 0x5

    :try_start_f59
    new-array v5, v10, [Ljava/lang/Object;

    const-string v11, "New installed app: "

    const/4 v12, 0x0

    aput-object v11, v5, v12

    const/4 v11, 0x1

    aput-object v6, v5, v11

    const-string v11, " has illegal install state: "

    const/4 v12, 0x2

    aput-object v11, v5, v12

    iget-object v11, v8, Lcom/android/launcher3/model/data/ItemInfo;->mInstallState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {v11}, Lcom/android/launcher/download/InstallState;->value()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x3

    aput-object v11, v5, v12

    const-string v11, ", verify it."
    :try_end_f77
    .catch Ljava/lang/Exception; {:try_start_f59 .. :try_end_f77} :catch_fbb
    .catchall {:try_start_f59 .. :try_end_f77} :catchall_1229

    const/4 v12, 0x4

    :try_start_f78
    aput-object v11, v5, v12

    invoke-static {v3, v5}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v3, 0x0

    iput v3, v9, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    invoke-virtual {v9}, Lcom/android/launcher3/model/LoaderCursor;->updater()Lcom/android/launcher3/util/ContentWriter;

    move-result-object v3

    const-string v5, "restored"

    iget v11, v9, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v3, v5, v11}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/util/ContentWriter;->commit()I

    sget-object v3, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Updater: restoreFlag of info = "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " when validTarget"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v8, Lcom/android/launcher3/model/data/ItemInfo;->mInstallState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {v3}, Lcom/android/launcher/download/InstallState;->markInstalled()V

    invoke-static/range {p1 .. p1}, Lcom/android/launcher/download/DownloadAppsManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/download/DownloadAppsManager;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/android/launcher/download/DownloadAppsManager;->removePackage(Ljava/lang/String;)V

    goto :goto_fc0

    :catch_fbb
    move-exception v0

    goto/16 :goto_10f4

    :cond_fbe
    const/4 v10, 0x5

    const/4 v12, 0x4

    :goto_fc0
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/model/OplusBaseLoaderTask;->allowDuplicatedAppIcons()Z

    move-result v3

    if-nez v3, :cond_1030

    iget-object v3, v1, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v3, v3, Lcom/android/launcher3/model/BgDataModel;->mBgDataModelHelper:Lcom/android/launcher/model/BgDataModelHelper;

    iget-object v3, v3, Lcom/android/launcher/model/BgDataModelHelper;->mNoPositionList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v1, v8, v3, v6, v5}, Lcom/android/launcher3/model/OplusBaseLoaderTask;->findShortcutInfo(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Ljava/util/List;II)Lcom/android/launcher3/model/data/ItemInfo;

    move-result-object v3

    if-nez v3, :cond_fdd

    iget v3, v8, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-nez v3, :cond_fdd

    const/4 v3, 0x1

    goto :goto_fde

    :cond_fdd
    const/4 v3, 0x0

    :goto_fde
    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportFolderContentRecommend()Z

    move-result v5

    if-eqz v5, :cond_ff1

    invoke-static {}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->getSInstance()Lcom/android/launcher/folder/download/FolderRecommendUtils;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v8, v6}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->isRecommendItemInfo(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Z)Z

    move-result v5

    if-eqz v5, :cond_ff1

    const/4 v5, 0x1

    goto :goto_ff2

    :cond_ff1
    const/4 v5, 0x0

    :goto_ff2
    if-eqz v3, :cond_100a

    if-nez v5, :cond_100a

    iget-boolean v3, v1, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mIsSafeMode:Z

    if-nez v3, :cond_100a

    iget-object v3, v8, Lcom/android/launcher3/model/data/ItemInfo;->mInstallState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {v3}, Lcom/android/launcher/download/InstallState;->isNewInstallingType()Z

    move-result v3

    if-nez v3, :cond_100a

    invoke-virtual {v8}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->isAutoInstallApp()Z

    move-result v3

    if-nez v3, :cond_100a

    const/4 v3, 0x1

    goto :goto_100b

    :cond_100a
    const/4 v3, 0x0

    :goto_100b
    if-eqz v3, :cond_1030

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Non-exist package: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Lcom/android/launcher3/model/OplusLoaderCursor;->markDeleted(Ljava/lang/String;)V

    :goto_1021
    move/from16 v3, p2

    move-object v6, v2

    move-object v2, v4

    move-object/from16 v8, v25

    :goto_1027
    move-object/from16 v14, v33

    :goto_1029
    const/4 v5, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x1

    move/from16 v4, p3

    goto/16 :goto_13b

    :cond_1030
    iget-object v3, v1, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    invoke-virtual {v9, v8, v3}, Lcom/android/launcher3/model/LoaderCursor;->checkAndAddItemResult(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/model/BgDataModel;)Z

    move-result v3

    if-eqz v3, :cond_10b7

    iget v3, v8, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    if-lez v3, :cond_1058

    iget v3, v8, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-nez v3, :cond_1058

    iget-object v3, v8, Lcom/android/launcher3/model/data/ItemInfo;->mInstallState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {v3}, Lcom/android/launcher/download/InstallState;->isNewInstallingType()Z

    move-result v3

    if-nez v3, :cond_1058

    invoke-static {}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->getSInstance()Lcom/android/launcher/folder/download/FolderRecommendUtils;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v8, v5}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->isRecommendItemInfo(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Z)Z

    move-result v3

    if-nez v3, :cond_1058

    iget-object v3, v1, Lcom/android/launcher3/model/LoaderTask;->mIconCache:Lcom/android/launcher3/icons/IconCache;

    invoke-virtual {v3, v8, v5}, Lcom/android/launcher3/icons/IconCache;->getTitleAndIcon(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Z)V

    :cond_1058
    invoke-virtual {v8}, Lcom/android/launcher3/model/data/ItemInfo;->isNewInstallingOrUpgradingApp()Z

    move-result v3

    if-eqz v3, :cond_10b3

    invoke-static {v4, v8}, Lcom/android/launcher/model/data/PromiseAppInfo;->from(Landroid/content/Context;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Lcom/android/launcher/model/data/PromiseAppInfo;

    move-result-object v3

    iget-object v5, v9, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    iput-object v5, v3, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    iget-boolean v5, v1, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mIsIconThemeChanged:Z

    if-eqz v5, :cond_109c

    iget-object v5, v3, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    invoke-virtual {v5}, Lcom/android/launcher3/icons/BitmapInfo;->isNullOrLowRes()Z

    move-result v5

    if-nez v5, :cond_109c

    invoke-virtual {v9}, Lcom/android/launcher3/model/LoaderCursor;->updater()Lcom/android/launcher3/util/ContentWriter;

    move-result-object v5

    iget-object v6, v3, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    iget-object v11, v9, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    invoke-virtual {v5, v6, v11}, Lcom/android/launcher3/util/ContentWriter;->putIcon(Lcom/android/launcher3/icons/BitmapInfo;Landroid/os/UserHandle;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/util/ContentWriter;->commit()I

    sget-object v5, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Updater: bitmap of info = "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " when icon theme change and is not nullOrLow in db"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_109c
    iget-object v5, v8, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    if-eqz v5, :cond_10a2

    iput-object v5, v3, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    :cond_10a2
    iget-object v5, v1, Lcom/android/launcher3/model/LoaderTask;->mBgAllAppsList:Lcom/android/launcher3/model/AllAppsList;

    check-cast v5, Lcom/android/launcher3/model/OplusAllAppsList;

    iget-object v6, v1, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v6, v6, Lcom/android/launcher3/model/BgDataModel;->mBgDataModelHelper:Lcom/android/launcher/model/BgDataModelHelper;

    iget-object v6, v6, Lcom/android/launcher/model/BgDataModelHelper;->mNoPositionList:Ljava/util/List;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/model/OplusBaseLoaderTask;->comparatorForAllApps()Ljava/util/Comparator;

    move-result-object v11

    invoke-virtual {v5, v3, v6, v11}, Lcom/android/launcher3/model/OplusAllAppsList;->tryToReplaceAppInfoWithPromiseAppInfo(Lcom/android/launcher/model/data/PromiseAppInfo;Ljava/util/List;Ljava/util/Comparator;)V

    :cond_10b3
    invoke-virtual {v1, v8}, Lcom/android/launcher3/model/OplusBaseLoaderTask;->onAppOrShortInfoLoaded(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Z

    goto :goto_10cd

    :cond_10b7
    sget-object v3, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "c.checkAndAddItemResult failed! item: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_10cd
    move-object/from16 v8, v25

    goto/16 :goto_1132

    :catch_10d1
    move-exception v0

    goto :goto_10f3

    :cond_10d3
    move-object/from16 v2, v37

    const/4 v10, 0x5

    const/4 v12, 0x4

    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected null WorkspaceItemInfo, cn = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_10ee
    .catch Ljava/lang/Exception; {:try_start_f78 .. :try_end_10ee} :catch_10ee
    .catchall {:try_start_f78 .. :try_end_10ee} :catchall_1229

    :catch_10ee
    move-exception v0

    goto :goto_10fc

    :catch_10f0
    move-exception v0

    move-object/from16 v2, v37

    :goto_10f3
    const/4 v10, 0x5

    :goto_10f4
    const/4 v12, 0x4

    goto :goto_10fc

    :catch_10f6
    move-exception v0

    move-object/from16 v2, v37

    const/4 v10, 0x5

    const/4 v12, 0x4

    const/4 v13, 0x6

    :goto_10fc
    move-object v3, v0

    move-object/from16 v8, v25

    goto :goto_112b

    :catch_1100
    move-exception v0

    move-object/from16 v25, v8

    move v10, v15

    move-object/from16 v2, v37

    goto :goto_1128

    :catch_1107
    move-exception v0

    move-object/from16 v25, v8

    move v12, v15

    move-object/from16 v2, v37

    const/4 v10, 0x5

    goto :goto_1129

    :catch_110f
    move-exception v0

    move-object/from16 v25, v8

    move v13, v11

    move-object/from16 v2, v37

    const/4 v10, 0x5

    const/4 v12, 0x4

    goto :goto_112a

    :catch_1118
    move-exception v0

    move-object/from16 v25, v8

    move-object/from16 v2, v37

    goto :goto_1127

    :catch_111e
    move-exception v0

    move-object v4, v2

    move-object v2, v6

    move-object/from16 v25, v8

    move-wide/from16 v35, v10

    move-object/from16 v33, v14

    :goto_1127
    const/4 v10, 0x5

    :goto_1128
    const/4 v12, 0x4

    :goto_1129
    const/4 v13, 0x6

    :goto_112a
    move-object v3, v0

    :goto_112b
    :try_start_112b
    sget-object v5, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    const-string v6, "loadSpecificScreenItems loading interrupted"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1132
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long v5, v5, v35

    sget-object v3, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    const/4 v11, 0x3

    new-array v14, v11, [Ljava/lang/Object;

    const-string v11, "--loadSpecificScreenItems: load one item cost: "

    const/4 v15, 0x0

    aput-object v11, v14, v15

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v14, v6

    const-string v5, " ms."

    const/4 v6, 0x2

    aput-object v5, v14, v6

    invoke-static {v3, v14}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1151
    .catchall {:try_start_112b .. :try_end_1151} :catchall_1229

    move/from16 v3, p2

    move-object v6, v2

    move-object v2, v4

    goto/16 :goto_1027

    :cond_1157
    move-object/from16 v33, v14

    :try_start_1159
    invoke-static {v9}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    iget-boolean v2, v1, Lcom/android/launcher3/model/LoaderTask;->mStopped:Z

    if-eqz v2, :cond_1189

    sget-object v2, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadSpecificScreenItems mStopped! container = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, p2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", screenId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, p3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v1, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    invoke-virtual {v1}, Lcom/android/launcher3/model/BgDataModel;->clear()V

    monitor-exit v23

    return-void

    :cond_1189
    move/from16 v4, p2

    move/from16 v5, p3

    invoke-virtual {v9}, Lcom/android/launcher3/model/LoaderCursor;->commitDeleted()Z

    move-result v2

    if-eqz v2, :cond_1202

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "screen_id"

    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "only_hot_seat"

    const/16 v5, -0x65

    if-ne v4, v5, :cond_11a5

    const/4 v12, 0x1

    goto :goto_11a6

    :cond_11a5
    const/4 v12, 0x0

    :goto_11a6
    invoke-virtual {v2, v3, v12}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v3, "delete_specific_screen_empty_folders"

    move-object/from16 v4, v33

    const/4 v5, 0x0

    invoke-static {v4, v3, v5, v2}, Lcom/android/launcher3/LauncherSettings$Settings;->call(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_11bc

    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v13

    goto :goto_11bd

    :cond_11bc
    move-object v13, v5

    :goto_11bd
    if-eqz v13, :cond_1202

    array-length v2, v13

    if-lez v2, :cond_1202

    array-length v2, v13

    const/4 v3, 0x0

    :goto_11c4
    if-ge v3, v2, :cond_1202

    aget v4, v13, v3

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v5

    if-eqz v5, :cond_11e4

    sget-object v5, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "loadSpecificScreenItems remove folderId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11e4
    iget-object v5, v1, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v6, v5, Lcom/android/launcher3/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    iget-object v5, v5, Lcom/android/launcher3/model/BgDataModel;->folders:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v5, v1, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v5, v5, Lcom/android/launcher3/model/BgDataModel;->folders:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->remove(I)V

    iget-object v5, v1, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v5, v5, Lcom/android/launcher3/model/BgDataModel;->itemsIdMap:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->remove(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_11c4

    :cond_1202
    invoke-virtual {v9}, Lcom/android/launcher3/model/LoaderCursor;->commitRestoredItems()V

    invoke-virtual {v9}, Lcom/android/launcher3/model/OplusLoaderCursor;->commitUpdate()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    sub-long v1, v1, v18

    sget-object v3, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "--loadSpecificScreenItems: ----- end ----- cost: "

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v4, v2

    const-string v1, " ms."

    const/4 v2, 0x2

    aput-object v1, v4, v2

    invoke-static {v3, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-exit v23

    return-void

    :catchall_1229
    move-exception v0

    move-object v1, v0

    invoke-static {v9}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    throw v1

    :catchall_122f
    move-exception v0

    move-object/from16 v23, v7

    :goto_1232
    move-object v1, v0

    :goto_1233
    monitor-exit v23
    :try_end_1234
    .catchall {:try_start_1159 .. :try_end_1234} :catchall_1235

    throw v1

    :catchall_1235
    move-exception v0

    goto :goto_1232
.end method

.method private loadWorkspaceScreens(Landroid/content/Context;)Lcom/android/launcher3/util/IntArray;
    .registers 3

    new-instance v0, Lcom/android/launcher3/util/IntArray;

    invoke-direct {v0}, Lcom/android/launcher3/util/IntArray;-><init>()V

    iget-object v0, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    monitor-enter v0

    :try_start_8
    invoke-static {p1}, Lcom/android/launcher3/LauncherModel;->loadWorkspaceScreensDb(Landroid/content/Context;)Lcom/android/launcher3/util/IntArray;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object p0, p0, Lcom/android/launcher3/model/BgDataModel;->mBgDataModelHelper:Lcom/android/launcher/model/BgDataModelHelper;

    iget-object p0, p0, Lcom/android/launcher/model/BgDataModelHelper;->workspaceScreens:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/IntArray;->addAll(Lcom/android/launcher3/util/IntArray;)V

    monitor-exit v0

    return-object p1

    :catchall_17
    move-exception p0

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_17

    throw p0
.end method

.method private queryCardInfo(Lcom/android/launcher3/model/OplusLoaderCursor;)Lcom/android/launcher3/card/LauncherCardInfo;
    .registers 5

    new-instance p0, Lcom/android/launcher3/card/LauncherCardInfo;

    invoke-direct {p0}, Lcom/android/launcher3/card/LauncherCardInfo;-><init>()V

    iget v0, p1, Lcom/android/launcher3/model/OplusLoaderCursor;->mSpanXIndex:I

    invoke-virtual {p1, v0}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v0, p1, Lcom/android/launcher3/model/OplusLoaderCursor;->mSpanYIndex:I

    invoke-virtual {p1, v0}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iget v0, p1, Lcom/android/launcher3/model/LoaderCursor;->cellXIndex:I

    invoke-virtual {p1, v0}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v0, p1, Lcom/android/launcher3/model/LoaderCursor;->cellYIndex:I

    invoke-virtual {p1, v0}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iget v0, p1, Lcom/android/launcher3/model/LoaderCursor;->containerIndex:I

    invoke-virtual {p1, v0}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    iget-object v0, p1, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    iput-object v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    iget v0, p1, Lcom/android/launcher3/model/LoaderCursor;->screenIndex:I

    invoke-virtual {p1, v0}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    iget v0, p1, Lcom/android/launcher3/model/LoaderCursor;->idIndex:I

    invoke-virtual {p1, v0}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    iget v0, p1, Lcom/android/launcher3/model/LoaderCursor;->titleIndex:I

    invoke-virtual {p1, v0}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    iget v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iput v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    iget v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iput v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    iget v0, p1, Lcom/android/launcher3/model/OplusLoaderCursor;->mCardTypeIndex:I

    invoke-virtual {p1, v0}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    iget v0, p1, Lcom/android/launcher3/model/OplusLoaderCursor;->mServiceIdIndex:I

    invoke-virtual {p1, v0}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/card/LauncherCardInfo;->mServiceId:Ljava/lang/String;

    iget v0, p1, Lcom/android/launcher3/model/OplusLoaderCursor;->mCategoryIndex:I

    invoke-virtual {p1, v0}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/card/LauncherCardInfo;->mCategory:I

    iget v0, p1, Lcom/android/launcher3/model/OplusLoaderCursor;->mAppWidgetIdIndex:I

    invoke-virtual {p1, v0}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/card/LauncherCardInfo;->mCardId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_93

    invoke-static {}, Lcom/oplus/card/manager/domain/CardManager;->getInstance()Lcom/oplus/card/manager/domain/CardManager;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    invoke-virtual {v0, v1}, Lcom/oplus/card/manager/domain/CardManager;->allocateCardId(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/card/LauncherCardInfo;->mCardId:I

    invoke-virtual {p1}, Lcom/android/launcher3/model/LoaderCursor;->updater()Lcom/android/launcher3/util/ContentWriter;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/card/LauncherCardInfo;->mCardId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "appWidgetId"

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/util/ContentWriter;->commit()I

    :cond_93
    iget v0, p1, Lcom/android/launcher3/model/OplusLoaderCursor;->mCardHostIndex:I

    invoke-virtual {p1, v0}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/card/LauncherCardInfo;->mHostId:I

    iget v0, p1, Lcom/android/launcher3/model/OplusLoaderCursor;->mAppWidgetProviderIndex:I

    invoke-virtual {p1, v0}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_ad

    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/card/LauncherCardInfo;->mProviderName:Landroid/content/ComponentName;

    :cond_ad
    iget-object p1, p0, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    if-nez p1, :cond_b7

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    :cond_b7
    return-object p0
.end method


# virtual methods
.method public abstract allowDuplicatedAppIcons()Z
.end method

.method public abstract comparatorForAllApps()Ljava/util/Comparator;
.end method

.method public findShortcutInfo(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Ljava/util/List;II)Lcom/android/launcher3/model/data/ItemInfo;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;II)",
            "Lcom/android/launcher3/model/data/ItemInfo;"
        }
    .end annotation

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    const-string v3, "Loader"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz p1, :cond_62

    if-eqz p2, :cond_62

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_62

    if-ltz p3, :cond_62

    if-ltz p4, :cond_62

    if-gt p3, p4, :cond_62

    iget-boolean v7, p0, Lcom/android/launcher3/model/LoaderTask;->mStopped:Z

    if-eqz v7, :cond_1d

    goto :goto_62

    :cond_1d
    iget v7, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-eqz v7, :cond_35

    new-array p0, v0, [Ljava/lang/Object;

    sget-object p2, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    aput-object p2, p0, v5

    const-string p2, "findShortcutInfo. Not app: "

    aput-object p2, p0, v6

    aput-object p1, p0, v2

    const-string p1, ", return null."

    aput-object p1, p0, v1

    invoke-static {v3, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v4

    :cond_35
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lt p4, v0, :cond_40

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p4

    sub-int/2addr p4, v6

    :cond_40
    add-int v0, p3, p4

    shr-int/2addr v0, v6

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {p0}, Lcom/android/launcher3/model/OplusBaseLoaderTask;->comparatorForAllApps()Ljava/util/Comparator;

    move-result-object v2

    invoke-interface {v2, p1, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-nez v2, :cond_54

    return-object v1

    :cond_54
    if-lez v2, :cond_5c

    add-int/2addr v0, v6

    invoke-virtual {p0, p1, p2, v0, p4}, Lcom/android/launcher3/model/OplusBaseLoaderTask;->findShortcutInfo(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Ljava/util/List;II)Lcom/android/launcher3/model/data/ItemInfo;

    move-result-object p0

    return-object p0

    :cond_5c
    sub-int/2addr v0, v6

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/launcher3/model/OplusBaseLoaderTask;->findShortcutInfo(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Ljava/util/List;II)Lcom/android/launcher3/model/data/ItemInfo;

    move-result-object p0

    return-object p0

    :cond_62
    :goto_62
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v7

    if-eqz v7, :cond_b9

    const/16 v7, 0xc

    new-array v7, v7, [Ljava/lang/Object;

    sget-object v8, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    aput-object v8, v7, v5

    const-string v8, "findShortcutInfo. The shortcutInfo is not found. "

    aput-object v8, v7, v6

    const-string v6, ", allAppsInfo.size = "

    aput-object v6, v7, v2

    if-nez p2, :cond_7b

    goto :goto_7f

    :cond_7b
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    :goto_7f
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v7, v1

    const-string p2, ", shortcutInfo = "

    aput-object p2, v7, v0

    const/4 p2, 0x5

    aput-object p1, v7, p2

    const/4 p1, 0x6

    const-string p2, ", from = "

    aput-object p2, v7, p1

    const/4 p1, 0x7

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v7, p1

    const/16 p1, 0x8

    const-string p2, ", to = "

    aput-object p2, v7, p1

    const/16 p1, 0x9

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v7, p1

    const/16 p1, 0xa

    const-string p2, ", mStopped = "

    aput-object p2, v7, p1

    const/16 p1, 0xb

    iget-boolean p0, p0, Lcom/android/launcher3/model/LoaderTask;->mStopped:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v7, p1

    invoke-static {v3, v7}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_b9
    return-object v4
.end method

.method public loadAllApps()Ljava/util/List;
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/LauncherActivityInfo;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, v0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, v0, Lcom/android/launcher3/model/LoaderTask;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v4}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, v0, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mAppFilter:Lcom/android/launcher3/AppFilter;

    check-cast v6, Lcom/android/launcher3/OplusAppFilter;

    invoke-static {v3}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/filter/DeepProtectedAppsManager;

    move-result-object v7

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    move-wide v10, v9

    move-object v9, v8

    :goto_28
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_18b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/UserHandle;

    iget-object v13, v0, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mLauncherAppsCompat:Lcom/android/launcher/OplusLauncherAppsCompat;

    invoke-virtual {v13, v8, v12}, Lcom/android/launcher/OplusLauncherAppsCompat;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v8

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v13

    if-eqz v13, :cond_53

    sget-object v13, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    const-string v14, "loadAllApps apps.size()= "

    invoke-static {v14}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    if-nez v8, :cond_4c

    const/4 v15, 0x0

    goto :goto_50

    :cond_4c
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v15

    :goto_50
    invoke-static {v14, v15, v13}, Lcom/android/common/config/h;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_53
    if-eqz v8, :cond_17c

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_5d

    goto/16 :goto_17c

    :cond_5d
    iget-object v13, v0, Lcom/android/launcher3/model/LoaderTask;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v13, v12}, Landroid/os/UserManager;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result v13

    const/4 v14, 0x0

    :goto_64
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v15

    if-ge v14, v15, :cond_167

    invoke-interface {v8, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/LauncherActivityInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    move-object/from16 v18, v4

    invoke-virtual {v15}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_a6

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/launcher/custom/CustomizeRestrictionManager;->isCustomizeIconBannedInLauncher(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_a6

    sget-object v15, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    const-string v16, "loadAllApps Filter, company customize icon banned in launcher package = "

    move-object/from16 v19, v8

    invoke-static/range {v16 .. v16}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v15, v4}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v20, v3

    move-object/from16 v21, v6

    move-object/from16 v22, v9

    goto/16 :goto_159

    :cond_a6
    move-object/from16 v19, v8

    invoke-virtual {v6, v4, v12}, Lcom/android/launcher3/OplusAppFilter;->shouldShowApp(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z

    move-result v8

    if-nez v8, :cond_111

    if-eqz v4, :cond_b5

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    goto :goto_b6

    :cond_b5
    const/4 v4, 0x0

    :goto_b6
    invoke-virtual {v7, v4, v12}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->isPackageProtected(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v8

    if-eqz v8, :cond_f4

    new-instance v8, Lcom/android/launcher3/model/data/AppInfo;

    invoke-direct {v8, v3, v15, v12}, Lcom/android/launcher3/model/data/AppInfo;-><init>(Landroid/content/Context;Landroid/content/pm/LauncherActivityInfo;Landroid/os/UserHandle;)V

    move-object/from16 v20, v3

    invoke-static {v15}, Lcom/android/launcher3/icons/OplusLauncherActivityCachingLogic;->getActivityLabel(Landroid/content/pm/LauncherActivityInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v8, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    new-instance v3, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-direct {v3}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;-><init>()V

    move-object/from16 v21, v6

    iget-object v6, v8, Lcom/android/launcher3/model/data/AppInfo;->intent:Landroid/content/Intent;

    iput-object v6, v3, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    iget-object v6, v8, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    iput-object v6, v3, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    iput-object v12, v3, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    const/4 v6, 0x0

    iput v6, v3, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    iget-object v6, v0, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mNewUpdatedAppsManager:Lcom/android/launcher/NewUpdatedAppsManager;

    invoke-virtual {v6, v4}, Lcom/android/launcher/NewUpdatedAppsManager;->isNewUpdatedApp(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, v3, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->mIsNewUpdated:Z

    iget-object v6, v0, Lcom/android/launcher3/model/LoaderTask;->mIconCache:Lcom/android/launcher3/icons/IconCache;

    move-object/from16 v22, v9

    const/4 v9, 0x0

    invoke-virtual {v6, v3, v15, v9}, Lcom/android/launcher3/icons/IconCache;->getTitleAndIcon(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Landroid/content/pm/LauncherActivityInfo;Z)V

    invoke-virtual {v7, v3}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->addItem(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    invoke-virtual {v7, v8}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->addAppItemFromLoaderTask(Lcom/android/launcher3/model/data/AppInfo;)V

    goto :goto_fa

    :cond_f4
    move-object/from16 v20, v3

    move-object/from16 v21, v6

    move-object/from16 v22, v9

    :goto_fa
    sget-object v3, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "loadAllApps Filter, not shouldShowApp package = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_159

    :cond_111
    move-object/from16 v20, v3

    move-object/from16 v21, v6

    move-object/from16 v22, v9

    new-instance v3, Lcom/android/launcher3/model/data/AppInfo;

    invoke-direct {v3, v15, v12, v13}, Lcom/android/launcher3/model/data/AppInfo;-><init>(Landroid/content/pm/LauncherActivityInfo;Landroid/os/UserHandle;Z)V

    iget-object v6, v0, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mNewUpdatedAppsManager:Lcom/android/launcher/NewUpdatedAppsManager;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/android/launcher/NewUpdatedAppsManager;->isNewUpdatedApp(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v3, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->mIsNewUpdated:Z

    const-string v4, ""

    iput-object v4, v3, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher/mode/LauncherModeManager;->isInSimpleMode()Z

    move-result v4

    if-eqz v4, :cond_13c

    invoke-static {v15}, Lcom/android/launcher3/icons/OplusLauncherActivityCachingLogic;->getActivityLabel(Landroid/content/pm/LauncherActivityInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, v3, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    :cond_13c
    iget-object v4, v0, Lcom/android/launcher3/model/LoaderTask;->mBgAllAppsList:Lcom/android/launcher3/model/AllAppsList;

    check-cast v4, Lcom/android/launcher3/model/OplusAllAppsList;

    const/4 v6, 0x0

    invoke-virtual {v4, v3, v6, v15}, Lcom/android/launcher3/model/OplusAllAppsList;->add(Lcom/android/launcher3/model/data/AppInfo;ZLandroid/content/pm/LauncherActivityInfo;)V

    invoke-virtual {v0, v3}, Lcom/android/launcher3/model/OplusBaseLoaderTask;->onAddAppWhileLoad(Lcom/android/launcher3/model/data/AppInfo;)V

    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v8, v8, v16

    cmp-long v4, v8, v10

    if-lez v4, :cond_159

    iget-object v3, v3, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    move-wide v10, v8

    move-object v9, v3

    goto :goto_15b

    :cond_159
    :goto_159
    move-object/from16 v9, v22

    :goto_15b
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v4, v18

    move-object/from16 v8, v19

    move-object/from16 v3, v20

    move-object/from16 v6, v21

    goto/16 :goto_64

    :cond_167
    move-object/from16 v20, v3

    move-object/from16 v18, v4

    move-object/from16 v21, v6

    move-object/from16 v22, v9

    invoke-static {}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->isSupportFastEnterPrivate()Z

    move-result v3

    if-eqz v3, :cond_179

    const/4 v3, 0x1

    invoke-virtual {v7, v3}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->addPrivateSafeShortcutIfNeed(Z)V

    :cond_179
    move-object/from16 v9, v22

    goto :goto_182

    :cond_17c
    :goto_17c
    move-object/from16 v20, v3

    move-object/from16 v18, v4

    move-object/from16 v21, v6

    :goto_182
    const/4 v8, 0x0

    move-object/from16 v4, v18

    move-object/from16 v3, v20

    move-object/from16 v6, v21

    goto/16 :goto_28

    :cond_18b
    iget-object v3, v0, Lcom/android/launcher3/model/LoaderTask;->mBgAllAppsList:Lcom/android/launcher3/model/AllAppsList;

    iget-object v4, v0, Lcom/android/launcher3/model/LoaderTask;->mUserManagerState:Lcom/android/launcher3/model/UserManagerState;

    invoke-virtual {v4}, Lcom/android/launcher3/model/UserManagerState;->isAnyProfileQuietModeEnabled()Z

    move-result v4

    const/4 v6, 0x2

    invoke-virtual {v3, v6, v4}, Lcom/android/launcher3/model/AllAppsList;->setFlags(IZ)V

    iget-object v3, v0, Lcom/android/launcher3/model/LoaderTask;->mBgAllAppsList:Lcom/android/launcher3/model/AllAppsList;

    iget-object v4, v0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/launcher3/util/PackageManagerHelper;->hasShortcutsPermission(Landroid/content/Context;)Z

    move-result v4

    const/4 v7, 0x1

    invoke-virtual {v3, v7, v4}, Lcom/android/launcher3/model/AllAppsList;->setFlags(IZ)V

    iget-object v3, v0, Lcom/android/launcher3/model/LoaderTask;->mBgAllAppsList:Lcom/android/launcher3/model/AllAppsList;

    iget-object v4, v0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v7, "android.permission.MODIFY_QUIET_MODE"

    invoke-virtual {v4, v7}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_1b9

    const/4 v4, 0x1

    goto :goto_1ba

    :cond_1b9
    const/4 v4, 0x0

    :goto_1ba
    const/4 v7, 0x4

    invoke-virtual {v3, v7, v4}, Lcom/android/launcher3/model/AllAppsList;->setFlags(IZ)V

    iget-object v3, v0, Lcom/android/launcher3/model/LoaderTask;->mBgAllAppsList:Lcom/android/launcher3/model/AllAppsList;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Lcom/android/launcher3/model/AllAppsList;->added:Ljava/util/ArrayList;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/model/OplusBaseLoaderTask;->onAllAppsLoaded()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1d7

    const/4 v0, 0x1

    goto :goto_1db

    :cond_1d7
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_1db
    sget-object v1, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    const/16 v2, 0xb

    new-array v2, v2, [Ljava/lang/Object;

    const-string v8, "[cost]loadAllApps: count: "

    const/4 v12, 0x0

    aput-object v8, v2, v12

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v12, 0x1

    aput-object v8, v2, v12

    const-string v8, ", cost: "

    aput-object v8, v2, v6

    const/4 v6, 0x3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v2, v6

    const-string v6, ", average: "

    aput-object v6, v2, v7

    const/4 v6, 0x5

    int-to-long v7, v0

    div-long/2addr v3, v7

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v2, v6

    const/4 v0, 0x6

    const-string v3, ", max: "

    aput-object v3, v2, v0

    const/4 v0, 0x7

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v0

    const/16 v0, 0x8

    const-string v3, " ["

    aput-object v3, v2, v0

    const/16 v0, 0x9

    aput-object v9, v2, v0

    const/16 v0, 0xa

    const-string v3, "]"

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5
.end method

.method public loadAndBindNoPositionItem(Landroid/content/Context;Z)V
    .registers 16

    iget-object v0, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadAndBindNoPositionItem, count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v3, v3, Lcom/android/launcher3/model/BgDataModel;->mBgDataModelHelper:Lcom/android/launcher/model/BgDataModelHelper;

    iget-object v3, v3, Lcom/android/launcher/model/BgDataModelHelper;->mNoPositionList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v1, v1, Lcom/android/launcher3/model/BgDataModel;->mBgDataModelHelper:Lcom/android/launcher/model/BgDataModelHelper;

    iget-object v1, v1, Lcom/android/launcher/model/BgDataModelHelper;->mNoPositionList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_13f

    iget-object v1, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v1, v1, Lcom/android/launcher3/model/BgDataModel;->mBgDataModelHelper:Lcom/android/launcher/model/BgDataModelHelper;

    iget-object v1, v1, Lcom/android/launcher/model/BgDataModelHelper;->mNoPositionList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_39
    :goto_39
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_59

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    instance-of v4, v2, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    if-eqz v4, :cond_39

    iget v4, v2, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-nez v4, :cond_39

    iget-object v4, p0, Lcom/android/launcher3/model/LoaderTask;->mIconCache:Lcom/android/launcher3/icons/IconCache;

    check-cast v2, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    invoke-virtual {v4, v2, v3}, Lcom/android/launcher3/icons/IconCache;->getTitleAndIcon(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Z)V

    goto :goto_39

    :cond_59
    new-instance v1, Lcom/android/launcher3/util/IntArray;

    invoke-direct {v1}, Lcom/android/launcher3/util/IntArray;-><init>()V

    new-instance v2, Lcom/android/launcher3/util/IntArray;

    invoke-direct {v2}, Lcom/android/launcher3/util/IntArray;-><init>()V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    sget-boolean v4, Lcom/android/common/config/FeatureOption;->isSellMode:Z

    if-eqz v4, :cond_92

    invoke-static {p1}, Lcom/android/launcher/sellmode/SaleModeWidgetController;->isSaleMode2020(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_92

    iget-object v4, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v4, v4, Lcom/android/launcher3/model/BgDataModel;->mBgDataModelHelper:Lcom/android/launcher/model/BgDataModelHelper;

    iget-object v4, v4, Lcom/android/launcher/model/BgDataModelHelper;->workspaceScreens:Lcom/android/launcher3/util/IntArray;

    if-nez v4, :cond_7c

    move v11, v3

    goto :goto_81

    :cond_7c
    invoke-virtual {v4}, Lcom/android/launcher3/util/IntArray;->size()I

    move-result v4

    move v11, v4

    :goto_81
    iget-object v4, p0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    iget-object v5, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v6, p0, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mModelWrite:Lcom/android/launcher3/model/OplusModelWriter;

    iget-object v7, v5, Lcom/android/launcher3/model/BgDataModel;->mBgDataModelHelper:Lcom/android/launcher/model/BgDataModelHelper;

    iget-object v9, v7, Lcom/android/launcher/model/BgDataModelHelper;->mNoPositionList:Ljava/util/List;

    move-object v7, v1

    move-object v8, v2

    move-object v10, v12

    invoke-static/range {v4 .. v11}, Lcom/android/launcher/model/FindSpaceHelper;->findSpaceForNoPositionItems(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/ModelWriter;Lcom/android/launcher3/util/IntArray;Lcom/android/launcher3/util/IntArray;Ljava/util/List;Ljava/util/List;I)Ljava/util/List;

    goto :goto_bc

    :cond_92
    sget-object v4, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v4}, Lcom/android/common/util/AppFeatureUtils;->getPreferSecondScreen()Z

    move-result v4

    if-eqz v4, :cond_ac

    iget-object v4, p0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    iget-object v5, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v6, p0, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mModelWrite:Lcom/android/launcher3/model/OplusModelWriter;

    iget-object v7, v5, Lcom/android/launcher3/model/BgDataModel;->mBgDataModelHelper:Lcom/android/launcher/model/BgDataModelHelper;

    iget-object v9, v7, Lcom/android/launcher/model/BgDataModelHelper;->mNoPositionList:Ljava/util/List;

    const/4 v11, 0x1

    move-object v7, v1

    move-object v8, v2

    move-object v10, v12

    invoke-static/range {v4 .. v11}, Lcom/android/launcher/model/FindSpaceHelper;->findSpaceForNoPositionItems(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/ModelWriter;Lcom/android/launcher3/util/IntArray;Lcom/android/launcher3/util/IntArray;Ljava/util/List;Ljava/util/List;I)Ljava/util/List;

    goto :goto_bc

    :cond_ac
    iget-object v4, p0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    iget-object v5, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v6, p0, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mModelWrite:Lcom/android/launcher3/model/OplusModelWriter;

    iget-object v7, v5, Lcom/android/launcher3/model/BgDataModel;->mBgDataModelHelper:Lcom/android/launcher/model/BgDataModelHelper;

    iget-object v9, v7, Lcom/android/launcher/model/BgDataModelHelper;->mNoPositionList:Ljava/util/List;

    move-object v7, v1

    move-object v8, v2

    move-object v10, v12

    invoke-static/range {v4 .. v10}, Lcom/android/launcher/model/FindSpaceHelper;->findSpaceForNoPositionItems(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/ModelWriter;Lcom/android/launcher3/util/IntArray;Lcom/android/launcher3/util/IntArray;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    :goto_bc
    invoke-virtual {v2}, Lcom/android/launcher3/util/IntArray;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_e7

    sget-object v4, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadAndBindNoPositionItem, added screenIds: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/launcher3/util/IntArray;->toConcatString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    invoke-static {p1, v1}, Lcom/android/launcher3/LauncherModel;->updateWorkspaceScreenOrder(Landroid/content/Context;Lcom/android/launcher3/util/IntArray;)V

    iget-object p1, p0, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mColorLoaderResults:Lcom/android/launcher3/model/OplusBaseLoaderResults;

    invoke-virtual {p1, v2}, Lcom/android/launcher3/model/OplusBaseLoaderResults;->bindWorkspaceScreen(Lcom/android/launcher3/util/IntArray;)V

    :cond_e7
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_113

    sget-object p1, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadAndBindNoPositionItem, added itemInfos count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    iget-object p1, p0, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mColorLoaderResults:Lcom/android/launcher3/model/OplusBaseLoaderResults;

    invoke-virtual {p1, p2, v3}, Lcom/android/launcher3/model/OplusBaseLoaderResults;->getDeferredExecutor(ZZ)Ljava/util/concurrent/Executor;

    move-result-object p2

    invoke-virtual {p1, v12, p2}, Lcom/android/launcher3/model/OplusBaseLoaderResults;->bindWorkspaceItems(Ljava/util/ArrayList;Ljava/util/concurrent/Executor;)V

    :cond_113
    iget-object p1, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object p1, p1, Lcom/android/launcher3/model/BgDataModel;->mBgDataModelHelper:Lcom/android/launcher/model/BgDataModelHelper;

    iget-object p1, p1, Lcom/android/launcher/model/BgDataModelHelper;->mNoPositionList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_13f

    sget-object p1, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadAndBindNoPositionItem, still exist no position item list, count: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object p0, p0, Lcom/android/launcher3/model/BgDataModel;->mBgDataModelHelper:Lcom/android/launcher/model/BgDataModelHelper;

    iget-object p0, p0, Lcom/android/launcher/model/BgDataModelHelper;->mNoPositionList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_13f
    monitor-exit v0

    return-void

    :catchall_141
    move-exception p0

    monitor-exit v0
    :try_end_143
    .catchall {:try_start_3 .. :try_end_143} :catchall_141

    throw p0
.end method

.method public onAddAppWhileLoad(Lcom/android/launcher3/model/data/AppInfo;)V
    .registers 2

    return-void
.end method

.method public abstract onAllAppsLoaded()V
.end method

.method public abstract onAppOrShortInfoLoaded(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Z
.end method

.method public abstract onWorkspaceScreenBindCompleted(Z)V
.end method

.method public prepare(Landroid/content/Context;)V
    .registers 15

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/util/PackageManagerHelper;

    invoke-direct {v1, p1}, Lcom/android/launcher3/util/PackageManagerHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mPmHelper:Lcom/android/launcher3/util/PackageManagerHelper;

    iget-object v1, p0, Lcom/android/launcher3/model/LoaderTask;->mIconCache:Lcom/android/launcher3/icons/IconCache;

    invoke-virtual {v1}, Lcom/android/launcher3/icons/cache/BaseIconCache;->getUpdateHandler()Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;

    iget-object v1, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    monitor-enter v1

    :try_start_13
    iget-object v2, p0, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mShortcutKeyToPinnedShortcuts:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    iget-object v2, p0, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mAllUsers:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->clear()V

    iget-object v2, p0, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mQuietMode:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->clear()V

    iget-object v2, p0, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mUnlockedUsers:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->clear()V

    iget-object v2, p0, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mPendingPackages:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    iget-object v2, p0, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mInstallingPkgs:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    iget-object v2, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    invoke-virtual {v2}, Lcom/android/launcher3/model/BgDataModel;->clear()V

    iget-object v2, p0, Lcom/android/launcher3/model/LoaderTask;->mBgAllAppsList:Lcom/android/launcher3/model/AllAppsList;

    invoke-virtual {v2}, Lcom/android/launcher3/model/AllAppsList;->clear()V

    iget-object v2, p0, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mPmHelper:Lcom/android/launcher3/util/PackageManagerHelper;

    invoke-virtual {v2}, Lcom/android/launcher3/util/PackageManagerHelper;->isSafeMode()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mIsSafeMode:Z

    invoke-static {}, Lcom/android/launcher3/Utilities;->isBootCompleted()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mIsSdCardReady:Z

    iget-object v2, p0, Lcom/android/launcher3/model/LoaderTask;->mSessionHelper:Lcom/android/launcher3/pm/InstallSessionHelper;

    invoke-virtual {v2}, Lcom/android/launcher3/pm/InstallSessionHelper;->getActiveSessions()Ljava/util/HashMap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mInstallingPkgs:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/launcher3/icons/f;

    const/4 v5, 0x2

    invoke-direct {v4, v3, v5}, Lcom/android/launcher3/icons/f;-><init>(Lcom/android/launcher3/icons/IconCache;I)V

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    new-instance v2, Lcom/android/launcher3/model/FirstScreenBroadcast;

    iget-object v3, p0, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mInstallingPkgs:Ljava/util/HashMap;

    invoke-direct {v2, v3}, Lcom/android/launcher3/model/FirstScreenBroadcast;-><init>(Ljava/util/HashMap;)V

    iput-object v2, p0, Lcom/android/launcher3/model/LoaderTask;->mFirstScreenBroadcast:Lcom/android/launcher3/model/FirstScreenBroadcast;

    monitor-exit v1
    :try_end_6d
    .catchall {:try_start_13 .. :try_end_6d} :catchall_1a2

    sget-object v1, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v1}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result v1

    if-eqz v1, :cond_8d

    invoke-static {}, Lcom/android/launcher/backup/cloudsync/LauncherCloudSyncAgent;->isCloudRestoreStarted()Z

    move-result v1

    if-nez v1, :cond_8d

    invoke-static {}, Lcom/android/launcher/backup/restore/LauncherRestorePlugin;->isLauncherRestoreStarted()Z

    move-result v1

    if-nez v1, :cond_8d

    sget-object v1, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    const-string v2, "prepare: switchCellsLayoutIfNeeded"

    invoke-static {v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-static {v1}, Lcom/android/common/util/LauncherLayoutUtils;->switchCellsLayoutIfNeeded(Lcom/android/launcher3/LauncherAppState;)V

    :cond_8d
    iget-object v1, p0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v1

    instance-of v2, v1, Lcom/android/launcher3/OplusLauncherModel;

    if-eqz v2, :cond_a0

    invoke-virtual {v1}, Lcom/android/launcher3/OplusLauncherModel;->getNewUpdatedAppsManager()Lcom/android/launcher/NewUpdatedAppsManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mNewUpdatedAppsManager:Lcom/android/launcher/NewUpdatedAppsManager;

    invoke-virtual {v1}, Lcom/android/launcher/NewUpdatedAppsManager;->loadNewUpdatedAppPkgNames()V

    :cond_a0
    invoke-static {p1}, Lcom/android/launcher3/model/OplusUnionGridCompatHelper;->doMigrate(Landroid/content/Context;)V

    sget-object v1, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    const-string v2, "prepare: loading default favorites"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "load_default_favorites"

    invoke-static {v0, v1}, Lcom/android/launcher3/LauncherSettings$Settings;->call(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/os/Bundle;

    invoke-direct {p0, p1}, Lcom/android/launcher3/model/OplusBaseLoaderTask;->loadExtraLayoutIfNeeded(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/android/launcher3/ota/AddCardManager;->shouldAddWeatherStepCard(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_c4

    sget-object v1, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    const-string v2, "ota add cards"

    invoke-static {v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ota_add_cards"

    invoke-static {v0, v1}, Lcom/android/launcher3/LauncherSettings$Settings;->call(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/os/Bundle;

    :cond_c4
    invoke-static {p1}, Lcom/android/launcher3/ota/AddCardManager;->onOtaPrepareStart(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/android/launcher/LaunchComponentAliasVerifier;->verify(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    monitor-enter v0

    :try_start_cd
    iget-object v1, p0, Lcom/android/launcher3/model/LoaderTask;->mUserManagerState:Lcom/android/launcher3/model/UserManagerState;

    iget-object v2, p0, Lcom/android/launcher3/model/LoaderTask;->mUserCache:Lcom/android/launcher3/pm/UserCache;

    iget-object v3, p0, Lcom/android/launcher3/model/LoaderTask;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/model/UserManagerState;->init(Lcom/android/launcher3/pm/UserCache;Landroid/os/UserManager;)V

    iget-object v1, p0, Lcom/android/launcher3/model/LoaderTask;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_179

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    iget-object v4, p0, Lcom/android/launcher3/model/LoaderTask;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v4, v2}, Landroid/os/UserManager;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v6

    iget-object v4, p0, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mAllUsers:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v6, v7, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    iget-object v4, p0, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mQuietMode:Landroid/util/LongSparseArray;

    iget-object v8, p0, Lcom/android/launcher3/model/LoaderTask;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v8, v2}, Landroid/os/UserManager;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v4, v6, v7, v8}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    iget-object v4, p0, Lcom/android/launcher3/model/LoaderTask;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v4, v2}, Landroid/os/UserManager;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result v4

    const/4 v8, 0x0

    if-eqz v4, :cond_141

    new-instance v9, Lcom/android/launcher3/shortcuts/ShortcutRequest;

    invoke-direct {v9, p1, v2}, Lcom/android/launcher3/shortcuts/ShortcutRequest;-><init>(Landroid/content/Context;Landroid/os/UserHandle;)V

    invoke-virtual {v9, v5}, Lcom/android/launcher3/shortcuts/ShortcutRequest;->query(I)Lcom/android/launcher3/shortcuts/ShortcutRequest$QueryResult;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/launcher3/shortcuts/ShortcutRequest$QueryResult;->wasSuccess()Z

    move-result v10

    if-eqz v10, :cond_139

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_123
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_141

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ShortcutInfo;

    iget-object v11, p0, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mShortcutKeyToPinnedShortcuts:Ljava/util/Map;

    invoke-static {v10}, Lcom/android/launcher3/shortcuts/ShortcutKey;->fromInfo(Landroid/content/pm/ShortcutInfo;)Lcom/android/launcher3/shortcuts/ShortcutKey;

    move-result-object v12

    invoke-interface {v11, v12, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_123

    :cond_139
    invoke-static {p1}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/shortcuts/DeepShortcutManager;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->shortcutsLoaded(Z)V

    move v4, v8

    :cond_141
    sget-object v9, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    const/4 v10, 0x6

    new-array v10, v10, [Ljava/lang/Object;

    const-string v11, "cache unlock users serialNo = "

    aput-object v11, v10, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v10, v3

    const-string v3, "; userUnlocked = "

    aput-object v3, v10, v5

    const/4 v3, 0x3

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v10, v3

    const/4 v3, 0x4

    const-string v8, "; "

    aput-object v8, v10, v3

    const/4 v3, 0x5

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v10, v3

    invoke-static {v9, v10}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mUnlockedUsers:Landroid/util/LongSparseArray;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v6, v7, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto/16 :goto_e0

    :cond_179
    monitor-exit v0
    :try_end_17a
    .catchall {:try_start_cd .. :try_end_17a} :catchall_19f

    invoke-static {p1}, Lcom/android/launcher/theme/LauncherIconConfig;->update(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getInvariantDeviceProfile()Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/launcher3/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p1

    iget p1, p1, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    invoke-static {v0, p1}, Lcom/android/launcher/theme/LauncherIconConfig;->updateContainerScaler(Landroid/content/res/Resources;I)V

    iget-object p1, p0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/model/LoaderTask;->mIconCache:Lcom/android/launcher3/icons/IconCache;

    invoke-static {p1, v0, v3}, Lcom/android/launcher3/model/OplusBaseLoaderTask;->clearIconDbIfThemeChanged(Landroid/content/Context;Lcom/android/launcher3/icons/IconCache;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mIsIconThemeChanged:Z

    return-void

    :catchall_19f
    move-exception p0

    :try_start_1a0
    monitor-exit v0
    :try_end_1a1
    .catchall {:try_start_1a0 .. :try_end_1a1} :catchall_19f

    throw p0

    :catchall_1a2
    move-exception p0

    :try_start_1a3
    monitor-exit v1
    :try_end_1a4
    .catchall {:try_start_1a3 .. :try_end_1a4} :catchall_1a2

    throw p0
.end method

.method public run()V
    .registers 14

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/android/launcher3/model/LoaderTask;->mStopped:Z

    if-eqz v0, :cond_7

    monitor-exit p0

    return-void

    :cond_7
    invoke-static {}, Lcom/android/launcher/backup/restore/LauncherRestorePlugin;->isLauncherRestoreStarted()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x3

    if-nez v0, :cond_248

    invoke-static {}, Lcom/android/launcher/backup/cloudsync/LauncherCloudSyncAgent;->isCloudRestoreStarted()Z

    move-result v0

    if-eqz v0, :cond_19

    goto/16 :goto_248

    :cond_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_263

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sget-object v0, Lcom/android/common/util/TemporaryCacheHelper;->INSTANCE:Lcom/android/common/util/TemporaryCacheHelper;

    invoke-virtual {v0}, Lcom/android/common/util/TemporaryCacheHelper;->startTemporaryCache()V

    iget-object v0, p0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v7, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    const/4 v8, 0x6

    new-array v8, v8, [Ljava/lang/Object;

    const-string v9, "\nLoad for mode: "

    aput-object v9, v8, v2

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher/mode/LauncherModeManager;->getCurLauncherMode()Lcom/android/launcher/mode/LauncherMode;

    move-result-object v2

    aput-object v2, v8, v3

    const-string v2, ", user: "

    aput-object v2, v8, v1

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v8, v4

    const-string v1, "; user unlocked = "

    const/4 v2, 0x4

    aput-object v1, v8, v2

    const/4 v1, 0x5

    sget-object v9, Lcom/android/launcher3/pm/UserCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v9, v0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/launcher3/pm/UserCache;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/launcher3/pm/UserCache;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v8, v1

    invoke-static {v7, v8}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/android/launcher3/OplusAppFilter;->newInstance(Landroid/content/Context;)Lcom/android/launcher3/OplusAppFilter;

    move-result-object v1

    invoke-static {}, Lcom/android/launcher3/aer/ProvisionManager;->getInstance()Lcom/android/launcher3/aer/ProvisionManager;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/android/launcher3/aer/ProvisionManager;->init(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/launcher3/aer/ProvisionManager;->getInstance()Lcom/android/launcher3/aer/ProvisionManager;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/android/launcher3/aer/ProvisionManager;->checkManagedStatus(Lcom/android/launcher3/OplusAppFilter;)V

    sget-object v7, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    sget-object v8, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/android/launcher3/util/TraceHelper;->beginSection(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    new-instance v8, Lcom/android/launcher3/logging/OplusTimingLogger;

    sget-object v9, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    const-string v10, "run"

    invoke-direct {v8, v9, v10}, Lcom/android/launcher3/logging/OplusTimingLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_90
    iget-object v9, p0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v9}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v9

    invoke-virtual {v9, p0}, Lcom/android/launcher3/OplusLauncherModel;->beginLoader(Lcom/android/launcher3/model/LoaderTask;)Lcom/android/launcher3/LauncherModel$LoaderTransaction;

    move-result-object v9
    :try_end_9a
    .catch Ljava/util/concurrent/CancellationException; {:try_start_90 .. :try_end_9a} :catch_20a
    .catchall {:try_start_90 .. :try_end_9a} :catchall_208

    :try_start_9a
    invoke-static {v0}, Lcom/android/launcher/AppLimitedStartUpManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/AppLimitedStartUpManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/launcher/AppLimitedStartUpManager;->initLimitAppList()V

    invoke-virtual {v1}, Lcom/android/launcher3/OplusAppFilter;->initFilteredAppsList()V

    const-string/jumbo v1, "step[1.1]: init list"

    invoke-virtual {v8, v1}, Lcom/android/launcher3/logging/OplusTimingLogger;->addSplit(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/OplusBaseLoaderTask;->prepare(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/filter/DeepProtectedAppsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->createVirtualFolder()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v1

    const-string/jumbo v10, "step[1.2]: prepare"

    invoke-virtual {v8, v10}, Lcom/android/launcher3/logging/OplusTimingLogger;->addSplit(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    invoke-virtual {p0}, Lcom/android/launcher3/model/OplusBaseLoaderTask;->loadAllApps()Ljava/util/List;

    move-result-object v10

    const-string/jumbo v11, "step[1.3]: load all apps"

    invoke-virtual {v8, v11}, Lcom/android/launcher3/logging/OplusTimingLogger;->addSplit(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/launcher3/model/OplusBaseLoaderTask;->loadAndBindWorkspace(Landroid/content/Context;)V

    const-string/jumbo v0, "step[1.4]: load and bind workspace"

    invoke-virtual {v8, v0}, Lcom/android/launcher3/logging/OplusTimingLogger;->addSplit(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    invoke-virtual {p0}, Lcom/android/launcher3/model/LoaderTask;->sendFirstScreenActiveInstallsBroadcast()V

    invoke-virtual {p0}, Lcom/android/launcher3/model/LoaderTask;->waitForIdle()V

    const-string/jumbo v0, "step 1 completed, wait for idle"

    invoke-virtual {v8, v0}, Lcom/android/launcher3/logging/OplusTimingLogger;->addSplit(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    iget-object v0, p0, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mColorLoaderResults:Lcom/android/launcher3/model/OplusBaseLoaderResults;

    invoke-virtual {v0}, Lcom/android/launcher3/model/OplusBaseLoaderResults;->preBindAllApps()V

    invoke-virtual {p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    iget-object v0, p0, Lcom/android/launcher3/model/LoaderTask;->mResults:Lcom/android/launcher3/model/LoaderResults;

    invoke-virtual {v0}, Lcom/android/launcher3/model/BaseLoaderResults;->bindAllApps()V

    const-string/jumbo v0, "step[2.1]: bind all apps"

    invoke-virtual {v8, v0}, Lcom/android/launcher3/logging/OplusTimingLogger;->addSplit(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    iget-object v0, p0, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mColorLoaderResults:Lcom/android/launcher3/model/OplusBaseLoaderResults;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/model/OplusBaseLoaderResults;->bindVirtualFolder(Lcom/android/launcher3/model/data/FolderInfo;)V

    const-string/jumbo v0, "step[2.2]: bind virtual folder"

    invoke-virtual {v8, v0}, Lcom/android/launcher3/logging/OplusTimingLogger;->addSplit(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    iget-object v0, p0, Lcom/android/launcher3/model/LoaderTask;->mIconCache:Lcom/android/launcher3/icons/IconCache;

    invoke-virtual {v0}, Lcom/android/launcher3/icons/cache/BaseIconCache;->getUpdateHandler()Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/LoaderTask;->setIgnorePackages(Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;)V

    new-instance v1, Lcom/android/launcher3/icons/OplusLauncherActivityCachingLogic;

    invoke-direct {v1}, Lcom/android/launcher3/icons/OplusLauncherActivityCachingLogic;-><init>()V

    iget-object v11, p0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v11}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v11

    invoke-static {v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v12, Lcom/android/launcher3/model/d0;

    invoke-direct {v12, v11, v4}, Lcom/android/launcher3/model/d0;-><init>(Lcom/android/launcher3/OplusLauncherModel;I)V

    invoke-virtual {v0, v10, v1, v12}, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;->updateIcons(Ljava/util/List;Lcom/android/launcher3/icons/cache/CachingLogic;Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler$OnUpdateCallback;)V

    const-string/jumbo v1, "step[2.3]: update icon cache"

    invoke-virtual {v8, v1}, Lcom/android/launcher3/logging/OplusTimingLogger;->addSplit(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/model/LoaderTask;->waitForIdle()V

    const-string/jumbo v1, "step 2 completed, wait for idle"

    invoke-virtual {v8, v1}, Lcom/android/launcher3/logging/OplusTimingLogger;->addSplit(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    invoke-virtual {p0}, Lcom/android/launcher3/model/LoaderTask;->loadDeepShortcuts()Ljava/util/List;

    const-string/jumbo v1, "step[3.1]: load deep shortcuts"

    invoke-virtual {v8, v1}, Lcom/android/launcher3/logging/OplusTimingLogger;->addSplit(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    iget-object v1, p0, Lcom/android/launcher3/model/LoaderTask;->mResults:Lcom/android/launcher3/model/LoaderResults;

    invoke-virtual {v1}, Lcom/android/launcher3/model/LoaderResults;->bindDeepShortcuts()V

    const-string/jumbo v1, "step[3.2]: bind deep shortcuts"

    invoke-virtual {v8, v1}, Lcom/android/launcher3/logging/OplusTimingLogger;->addSplit(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/model/LoaderTask;->waitForIdle()V

    const-string/jumbo v1, "step 3 completed, wait for idle"

    invoke-virtual {v8, v1}, Lcom/android/launcher3/logging/OplusTimingLogger;->addSplit(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    iget-object v1, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v1, v1, Lcom/android/launcher3/model/BgDataModel;->widgetsModel:Lcom/android/launcher3/model/WidgetsModel;

    iget-object v4, p0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    const/4 v10, 0x0

    invoke-virtual {v1, v4, v10}, Lcom/android/launcher3/model/WidgetsModel;->update(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/util/PackageUserKey;)Ljava/util/List;

    move-result-object v1

    const-string/jumbo v4, "step[4.1]: update widgets"

    invoke-virtual {v8, v4}, Lcom/android/launcher3/logging/OplusTimingLogger;->addSplit(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    iget-object v4, p0, Lcom/android/launcher3/model/LoaderTask;->mResults:Lcom/android/launcher3/model/LoaderResults;

    invoke-virtual {v4}, Lcom/android/launcher3/model/LoaderResults;->bindWidgets()V

    const-string/jumbo v4, "step[4.2]: bind widgets"

    invoke-virtual {v8, v4}, Lcom/android/launcher3/logging/OplusTimingLogger;->addSplit(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    new-instance v4, Lcom/android/launcher3/icons/ComponentWithLabelAndIcon$ComponentWithIconCachingLogic;

    iget-object v10, p0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v10}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v4, v10, v3}, Lcom/android/launcher3/icons/ComponentWithLabelAndIcon$ComponentWithIconCachingLogic;-><init>(Landroid/content/Context;Z)V

    iget-object v3, p0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v10, Lcom/android/launcher3/model/d0;

    invoke-direct {v10, v3, v2}, Lcom/android/launcher3/model/d0;-><init>(Lcom/android/launcher3/OplusLauncherModel;I)V

    invoke-virtual {v0, v1, v4, v10}, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;->updateIcons(Ljava/util/List;Lcom/android/launcher3/icons/cache/CachingLogic;Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler$OnUpdateCallback;)V

    const-string/jumbo v1, "step[4.3]: update widget icon cache"

    invoke-virtual {v8, v1}, Lcom/android/launcher3/logging/OplusTimingLogger;->addSplit(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/filter/DeepProtectedAppsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->isNeedUpdateIconInLoaderTask()Z

    move-result v1

    if-eqz v1, :cond_1c3

    iget-boolean v1, p0, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mIsIconThemeChanged:Z

    if-eqz v1, :cond_1c3

    invoke-virtual {p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    iget-object v1, p0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/filter/DeepProtectedAppsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->updateIcons()V

    :cond_1c3
    const-string/jumbo v1, "step[4.4]: update protected icon cache"

    invoke-virtual {v8, v1}, Lcom/android/launcher3/logging/OplusTimingLogger;->addSplit(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    invoke-virtual {v0}, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;->finish()V

    const-string/jumbo v0, "step 4: finish icon cache update"

    invoke-virtual {v8, v0}, Lcom/android/launcher3/logging/OplusTimingLogger;->addSplit(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    invoke-static {}, Lcom/android/launcher3/model/PendingStaticShortcutsManager;->getInstance()Lcom/android/launcher3/model/PendingStaticShortcutsManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherModel;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/model/PendingStaticShortcutsManager;->startPendingStaticShortcuts(Lcom/android/launcher/Launcher;)V

    const-string/jumbo p0, "step 4.5: pending static shortcuts"

    invoke-virtual {v8, p0}, Lcom/android/launcher3/logging/OplusTimingLogger;->addSplit(Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/android/launcher3/LauncherModel$LoaderTransaction;->commit()V
    :try_end_1f2
    .catchall {:try_start_9a .. :try_end_1f2} :catchall_1fc

    :try_start_1f2
    invoke-virtual {v9}, Lcom/android/launcher3/LauncherModel$LoaderTransaction;->close()V
    :try_end_1f5
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1f2 .. :try_end_1f5} :catch_20a
    .catchall {:try_start_1f2 .. :try_end_1f5} :catchall_208

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_21c

    goto :goto_219

    :catchall_1fc
    move-exception p0

    if-eqz v9, :cond_207

    :try_start_1ff
    invoke-virtual {v9}, Lcom/android/launcher3/LauncherModel$LoaderTransaction;->close()V
    :try_end_202
    .catchall {:try_start_1ff .. :try_end_202} :catchall_203

    goto :goto_207

    :catchall_203
    move-exception v0

    :try_start_204
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_207
    :goto_207
    throw p0
    :try_end_208
    .catch Ljava/util/concurrent/CancellationException; {:try_start_204 .. :try_end_208} :catch_20a
    .catchall {:try_start_204 .. :try_end_208} :catchall_208

    :catchall_208
    move-exception p0

    goto :goto_23e

    :catch_20a
    move-exception p0

    :try_start_20b
    invoke-virtual {p0}, Ljava/util/concurrent/CancellationException;->printStackTrace()V

    const-string p0, "Cancelled"

    invoke-virtual {v8, p0}, Lcom/android/launcher3/logging/OplusTimingLogger;->addSplit(Ljava/lang/String;)V
    :try_end_213
    .catchall {:try_start_20b .. :try_end_213} :catchall_208

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_21c

    :goto_219
    invoke-virtual {v8}, Lcom/android/launcher3/logging/OplusTimingLogger;->dumpToLog()V

    :cond_21c
    sget-object p0, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    invoke-virtual {p0, v7}, Lcom/android/launcher3/util/TraceHelper;->endSection(Ljava/lang/Object;)V

    sget-object p0, Lcom/android/common/util/TemporaryCacheHelper;->INSTANCE:Lcom/android/common/util/TemporaryCacheHelper;

    invoke-virtual {p0}, Lcom/android/common/util/TemporaryCacheHelper;->stopTemporaryCache()V

    sget-object p0, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    const-string v0, "cost time OplusBaseLoaderTask#run: "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :goto_23e
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_247

    invoke-virtual {v8}, Lcom/android/launcher3/logging/OplusTimingLogger;->dumpToLog()V

    :cond_247
    throw p0

    :cond_248
    :goto_248
    :try_start_248
    sget-object v0, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "\nLoad for"

    aput-object v5, v4, v2

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher/mode/LauncherModeManager;->getCurLauncherMode()Lcom/android/launcher/mode/LauncherMode;

    move-result-object v2

    aput-object v2, v4, v3

    const-string v2, " failed! when restoring"

    aput-object v2, v4, v1

    invoke-static {v0, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-exit p0

    return-void

    :catchall_263
    move-exception v0

    monitor-exit p0
    :try_end_265
    .catchall {:try_start_248 .. :try_end_265} :catchall_263

    throw v0
.end method
