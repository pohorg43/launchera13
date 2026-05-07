.class public Lcom/android/launcher3/OplusLauncherProvider;
.super Lcom/android/launcher3/LauncherProvider;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/OplusLauncherProvider$OplusDatabaseHelper;
    }
.end annotation


# static fields
.field private static final ADD_DATABASE_DELAY:J = 0x64L

.field public static final EMPTY_DRAWER_DATABASE_CREATED:Ljava/lang/String; = "EMPTY_DRAWER_DATABASE_CREATED"

.field public static final EMPTY_SIMPLE_DATABASE_CREATED:Ljava/lang/String; = "EMPTY_SIMPLE_DATABASE_CREATED"

.field private static final EXTRA_FOLDER_DATA:Ljava/lang/String; = "folder_data"

.field private static final EXTRA_IS_REQUEST_SUCCESS:Ljava/lang/String; = "is_request_success"

.field public static final EXTRA_IS_TABLE_EXIST:Ljava/lang/String; = "is_table_exist"

.field public static final EXTRA_LAUNCHER_MODE_VAULE:Ljava/lang/String; = "launcher_mode_vaule"

.field private static final EXTRA_PACKAGE_NAME_LIST:Ljava/lang/String; = "package_name_list"

.field public static final EXTRA_RESTORE_RESULT:Ljava/lang/String; = "restore_result"

.field public static final EXTRA_RESTORE_STARTED:Ljava/lang/String; = "restore_started"

.field public static final EXTRA_RESULT:Ljava/lang/String; = "result"

.field private static final EXTRA_SHORTCUT_INTENT_LIST:Ljava/lang/String; = "shortcut_intent_list"

.field private static final EXTRA_WIDGET_IS_ADDED:Ljava/lang/String; = "widget_is_added"

.field public static final FULL_SEARCH_WIDGET_PROVIDER_NAME:Ljava/lang/String; = "com.heytap.quicksearchbox.ui.appwidgets.DesktopSearchWidgetProvider"

.field public static final GLOBAL_SEARCH_WIDGET_INTENT:Ljava/lang/String; = "com.heytap.quicksearchbox/com.heytap.quicksearchbox.ui.appwidgets.DesktopSearchWidgetProvider"

.field public static final HEYTAP_WIDGET_PACKAGE_NAME_PREFIX:Ljava/lang/String; = "com.heytap"

.field private static final IS_IN_SIMPLE_MODE:Ljava/lang/String; = "is_in_simple_mode"

.field public static final MARKET_HEYDEMO_PACKAGE_NAME_PREFIX:Ljava/lang/String; = "com.market.heydemo"

.field public static final METHOD_ADD_GLOBAL_SEARCH_APPWIDGET:Ljava/lang/String; = "METHOD_ADD_GLOBAL_SEARCH_APPWIDGET"

.field public static final METHOD_CALL_APP_EDIT_MAX_ID:Ljava/lang/String; = "app_edit_max_id"

.field public static final METHOD_CALL_RECOMMEND_MARKET_INFO_ID:Ljava/lang/String; = "recommend_market_info_id"

.field public static final METHOD_CHECK_AFTER_RESTORE:Ljava/lang/String; = "checkAfterRestore"

.field public static final METHOD_CLEAR_SPECIFIC_EMPTY_TABLE_FLAG_IF_NECESSARY:Ljava/lang/String; = "clear_specific_empty_table_flag"

.field public static final METHOD_CLOUD_RECOVERY_STATUS_CHANGED:Ljava/lang/String; = "cloudRecoveryStatusChanged"

.field public static final METHOD_CREATE_SPECIFIC_TABLE_IF_NOT_EXIST:Ljava/lang/String; = "create_specific_table"

.field public static final METHOD_IS_TABLE_EXIST:Ljava/lang/String; = "isTableExist"

.field private static final METHOD_IS_WIDGET_ADDED_IN_LAUNCHER:Ljava/lang/String; = "isWidgetAddedInLauncher"

.field private static final METHOD_NOTIFY_LIMIT_APP:Ljava/lang/String; = "notify_launcher_limit_app"

.field public static final METHOD_OTA_ADD_CARDS:Ljava/lang/String; = "ota_add_cards"

.field public static final METHOD_PARSE_EXTRA_LAYOUT:Ljava/lang/String; = "parse_extra_layout"

.field private static final METHOD_QUERY_FOLDER_DATA:Ljava/lang/String; = "query_folder_data"

.field public static final METHOD_REQUEST_ADD_WIDGET:Ljava/lang/String; = "requestAddWidget"

.field private static final METHOD_REQUEST_DELETE_WIDGET:Ljava/lang/String; = "requestDeleteWidget"

.field private static final METHOD_REQUEST_GET_SHORTCUT_INTENT:Ljava/lang/String; = "requestGetShortCutIntent"

.field private static final METHOD_REQUEST_GET_WIDGET_PKG_NAME:Ljava/lang/String; = "requestGetWidgetPackageName"

.field public static final NEARME_WIDGET_PACKAGE_NAME_PREFIX:Ljava/lang/String; = "com.nearme"

.field public static final NEW_WEATHER_WIDGET_CLASS_NAME:Ljava/lang/String; = "com.coloros.widget.smallweather.OppoWeather"

.field public static final NEW_WEATHER_WIDGET_INTENT:Ljava/lang/String; = "com.coloros.alarmclock/com.coloros.widget.smallweather.OppoWeather"

.field public static final OLD_WEATHER_WIDGET_INTENT:Ljava/lang/String; = "com.coloros.alarmclock/com.coloros.widget.smallweather.OppoWeatherVertical"

.field public static final OPLUSWEATHER_WEATHER_WIDGET_CLASS_NAME:Ljava/lang/String; = "com.coloros.widget.smallweather.RealmeWeather"

.field public static final OPLUS_WEATHER_WIDGET_CLASS_NAME:Ljava/lang/String;

.field public static final OPLUS_WEATHER_WIDGET_PACKAGE_NAME:Ljava/lang/String;

.field public static final OPLUS_WIDGET_PACKAGE_NAME_PREFIX:Ljava/lang/String; = "com.coloros"

.field public static final PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field public static final PACKAGE_SEARCH:Ljava/lang/String; = "com.heytap.quicksearchbox"

.field public static final PREF_LAYOUT_IS_COMPACT:Ljava/lang/String; = "layout_is_compact"

.field private static final SPLIT_PACKAGE:Ljava/lang/String; = "component="

.field public static final TAG:Ljava/lang/String; = "OplusLauncherProvider"

.field public static final VERTICAL_WEATHER_WIDGET_CLASS_NAME:Ljava/lang/String; = "com.coloros.widget.smallweather.OppoWeatherVertical"

.field public static final WEATHER_WIDGET_PACKAGE_NAME:Ljava/lang/String; = "com.coloros.alarmclock"

.field private static sLoadingFromDefaultXml:Z


# instance fields
.field private mAddDataBaseTime:J


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const v0, 0x7f12003a

    invoke-static {v0}, Lcom/android/common/util/BrandComponentUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/OplusLauncherProvider;->OPLUS_WEATHER_WIDGET_CLASS_NAME:Ljava/lang/String;

    const v0, 0x7f12003b

    invoke-static {v0}, Lcom/android/common/util/BrandComponentUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/OplusLauncherProvider;->OPLUS_WEATHER_WIDGET_PACKAGE_NAME:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher3/OplusLauncherProvider;->sLoadingFromDefaultXml:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/LauncherProvider;-><init>()V

    return-void
.end method

.method private createEmptyDbAndLoadFavorites(Landroid/appwidget/AppWidgetHost;Lcom/android/launcher3/AutoInstallsLayout;)I
    .registers 4

    if-nez p2, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    iget-object p1, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->createEmptyDB(Landroid/database/sqlite/SQLiteDatabase;)V

    iget-object p0, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->loadFavorites(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/launcher3/AutoInstallsLayout;)I

    move-result p0

    return p0
.end method

.method private deleteFromDB(Ljava/lang/String;)Z
    .registers 10

    iget-object v0, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-static {}, Lcom/android/launcher/mode/LauncherMode;->values()[Lcom/android/launcher/mode/LauncherMode;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_d
    const/4 v5, 0x1

    if-ge v4, v2, :cond_3c

    aget-object v6, v1, v4

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v6}, Lcom/android/common/util/OplusLauncherDbUtils;->getItemTable(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/android/launcher3/provider/LauncherDbUtils;->tableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_39

    :try_start_20
    const-string v7, "appWidgetProvider=?"

    new-array v5, v5, [Ljava/lang/String;

    aput-object p1, v5, v3

    invoke-virtual {v0, v6, v7, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_29} :catch_2a

    goto :goto_39

    :catch_2a
    move-exception p0

    const-string v0, "Error delete widgets , name = "

    const-string v1, ",table = "

    invoke-static {v0, p1, v1, v6}, Landroidx/core/animation/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "OplusLauncherProvider"

    invoke-static {v0, p1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v3

    :cond_39
    :goto_39
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :cond_3c
    return v5
.end method

.method public static synthetic f(Lcom/android/launcher3/OplusLauncherModel;Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/OplusLauncherProvider;->lambda$requestAddOrDeleteAppWidget$1(Lcom/android/launcher3/OplusLauncherModel;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Lcom/android/launcher3/OplusLauncherProvider;Ljava/lang/String;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/OplusLauncherProvider;->isWidgetAdd(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private getAppPackageName(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const-string p0, "component="

    invoke-virtual {p1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x1

    aget-object p0, p0, p1

    const-string p1, "/"

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    aget-object p0, p0, p1

    return-object p0
.end method

.method private getBindWidgetAppList()Ljava/util/ArrayList;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "OplusLauncherProvider"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v2}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    invoke-static {}, Lcom/android/common/util/OplusLauncherDbUtils;->getCurrentItemTable()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v5, "itemType = ?"

    const/4 p0, 0x1

    new-array v6, p0, [Ljava/lang/String;

    const/4 p0, 0x5

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const/4 v10, 0x0

    aput-object p0, v6, v10

    const-string p0, "appWidgetProvider"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 p0, 0x0

    :try_start_2f
    const-string/jumbo v9, "rank"

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_36} :catch_7c
    .catchall {:try_start_2f .. :try_end_36} :catchall_78

    if-eqz v2, :cond_74

    :cond_38
    :goto_38
    :try_start_38
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_74

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4a

    move-object v3, p0

    goto :goto_4e

    :cond_4a
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    :goto_4e
    if-eqz v3, :cond_38

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5d

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getBindWidgetAppList find packageName =  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_71} :catch_72
    .catchall {:try_start_38 .. :try_end_71} :catchall_9a

    goto :goto_38

    :catch_72
    move-exception p0

    goto :goto_80

    :cond_74
    :goto_74
    invoke-static {v2}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_99

    :catchall_78
    move-exception v0

    move-object v2, p0

    move-object p0, v0

    goto :goto_9b

    :catch_7c
    move-exception v2

    move-object v11, v2

    move-object v2, p0

    move-object p0, v11

    :goto_80
    :try_start_80
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getBindWidgetAppList failed error = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_98
    .catchall {:try_start_80 .. :try_end_98} :catchall_9a

    goto :goto_74

    :goto_99
    return-object v1

    :catchall_9a
    move-exception p0

    :goto_9b
    invoke-static {v2}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    throw p0
.end method

.method private getShortcutIntents(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/shortcuts/DeepShortcutManager;

    move-result-object p0

    new-instance v0, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->queryForPinnedShortcuts(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_1c
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_36

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ShortcutInfo;

    invoke-static {v3}, Lcom/android/launcher3/shortcuts/ShortcutKey;->makeIntent(Landroid/content/pm/ShortcutInfo;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    :cond_36
    const-string v1, "getShortcutIntents -- shortcut for "

    const-string v2, ", intentList.size = "

    invoke-static {v1, p1, v2}, Landroidx/activity/result/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OplusLauncherProvider"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic h(Lcom/android/launcher3/OplusLauncherProvider;Ljava/lang/String;ZZZ)Z
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/launcher3/OplusLauncherProvider;->requestAddOrDeleteAppWidget(Ljava/lang/String;ZZZ)Z

    move-result p0

    return p0
.end method

.method public static synthetic i(Lcom/android/launcher3/OplusLauncherModel;Lcom/android/launcher3/util/IntArray;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;Z)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher3/OplusLauncherProvider;->lambda$requestAddOrDeleteAppWidget$0(Lcom/android/launcher3/OplusLauncherModel;Lcom/android/launcher3/util/IntArray;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;Z)V

    return-void
.end method

.method public static isLoadingFromDefaultXml()Z
    .registers 1

    sget-boolean v0, Lcom/android/launcher3/OplusLauncherProvider;->sLoadingFromDefaultXml:Z

    return v0
.end method

.method private isQuicklyAddCards()Z
    .registers 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/launcher3/OplusLauncherProvider;->mAddDataBaseTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x64

    cmp-long v0, v0, v2

    if-gez v0, :cond_f

    const/4 p0, 0x1

    return p0

    :cond_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/launcher3/OplusLauncherProvider;->mAddDataBaseTime:J

    const/4 p0, 0x0

    return p0
.end method

.method private isWidgetAdd(Ljava/lang/String;)Z
    .registers 6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    if-nez v0, :cond_f

    return v1

    :cond_f
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_23

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->isWorkspaceLoading()Z

    move-result v2

    goto :goto_24

    :cond_23
    move v2, v3

    :goto_24
    if-eqz v2, :cond_32

    invoke-virtual {p0, p1}, Lcom/android/launcher3/OplusLauncherProvider;->checkThisWidgetFromDB(Ljava/lang/String;)Z

    move-result p0

    const-string p1, "call: EXTRA_WIDGET_IS_ADDED "

    const-string v0, "OplusLauncherProvider"

    invoke-static {p1, p0, v0}, Lcom/android/common/rus/a;->a(Ljava/lang/String;ZLjava/lang/String;)V

    return p0

    :cond_32
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/OplusLauncherModel;->findScreenIndexForWidget(Landroid/content/ComponentName;)I

    move-result p0

    const/4 p1, -0x1

    if-le p0, p1, :cond_3e

    return v3

    :cond_3e
    return v1
.end method

.method public static synthetic j(Lcom/android/launcher3/OplusLauncherProvider;Ljava/lang/String;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/OplusLauncherProvider;->deleteFromDB(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$requestAddOrDeleteAppWidget$0(Lcom/android/launcher3/OplusLauncherModel;Lcom/android/launcher3/util/IntArray;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;Z)V
    .registers 9

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherModel;->getCallbacks()[Lcom/android/launcher3/model/BgDataModel$Callbacks;

    move-result-object p0

    const-string v0, "OplusLauncherProvider"

    if-eqz p0, :cond_2b

    array-length v1, p0

    if-lez v1, :cond_2b

    array-length v1, p0

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v1, :cond_30

    aget-object v3, p0, v2

    invoke-interface {v3, p1, p2, p3}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->bindAppWidgetAdd(Lcom/android/launcher3/util/IntArray;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;Z)Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AddAppWidget success, widgetInfo =  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_2b
    const-string p0, "AddAppWidget fail! callback is null!"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_30
    return-void
.end method

.method private static synthetic lambda$requestAddOrDeleteAppWidget$1(Lcom/android/launcher3/OplusLauncherModel;Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherModel;->getCallbacks()[Lcom/android/launcher3/model/BgDataModel$Callbacks;

    move-result-object p0

    if-eqz p0, :cond_1c

    array-length v0, p0

    if-lez v0, :cond_1c

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    :goto_c
    if-ge v1, v0, :cond_17

    aget-object v2, p0, v1

    invoke-interface {v2, p1}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->bindAppWidgetRemove(Ljava/lang/String;)Z

    move-result v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_17
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_1c
    const-string p0, "OplusLauncherProvider"

    const-string p1, "DeleteAppWidget fail! callback is null!"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method private requestAddOrDeleteAppWidget(Ljava/lang/String;ZZZ)Z
    .registers 20

    move-object/from16 v0, p1

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    return v2

    :cond_a
    invoke-static/range {p1 .. p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    const-string v3, "OplusLauncherProvider"

    if-nez v1, :cond_28

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestAddOrDeleteAppWidget, unflatten provider name fail! provider = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_28
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object v4

    if-nez v4, :cond_44

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestAddOrDeleteAppWidget, appState is null! provider = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_44
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    if-nez v5, :cond_60

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestAddOrDeleteAppWidget, context is null! provider = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_60
    invoke-virtual {v4}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v6

    if-nez v6, :cond_6d

    const-string/jumbo v0, "requestAddOrDeleteAppWidget: launcherModel is null"

    invoke-static {v3, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_6d
    invoke-virtual {v6}, Lcom/android/launcher3/LauncherModel;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v7

    const/4 v8, 0x1

    if-eqz v7, :cond_7d

    invoke-virtual {v6}, Lcom/android/launcher3/LauncherModel;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher3/Launcher;->isWorkspaceLoading()Z

    move-result v7

    goto :goto_7e

    :cond_7d
    move v7, v8

    :goto_7e
    if-eqz p2, :cond_ef

    :try_start_80
    invoke-direct {p0}, Lcom/android/launcher3/OplusLauncherProvider;->isQuicklyAddCards()Z

    move-result v0

    if-eqz v0, :cond_91

    const-string/jumbo v0, "requestAddOrDeleteAppWidget: quicklyAddCards"

    invoke-static {v3, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v9, 0x64

    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V

    :cond_91
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    new-instance v7, Lcom/android/launcher3/widget/LauncherAppWidgetHost;

    invoke-direct {v7, v5}, Lcom/android/launcher3/widget/LauncherAppWidgetHost;-><init>(Landroid/content/Context;)V

    move/from16 v9, p4

    invoke-virtual {v6, v1, v0, v7, v9}, Lcom/android/launcher3/OplusLauncherModel;->preAddWidgetProviderInWorkHandler(Landroid/content/ComponentName;Landroid/os/UserHandle;Lcom/android/launcher3/widget/LauncherAppWidgetHost;Z)Lcom/android/launcher/widget/AddWidgetProviderCallableResult;

    move-result-object v0

    if-eqz v0, :cond_ee

    iget-object v1, v0, Lcom/android/launcher/widget/AddWidgetProviderCallableResult;->addedWidgetInfo:Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    iget-object v7, v0, Lcom/android/launcher/widget/AddWidgetProviderCallableResult;->addedWorkspaceScreensFinal:Lcom/android/launcher3/util/IntArray;

    iget-object v0, v0, Lcom/android/launcher/widget/AddWidgetProviderCallableResult;->allWorkspaceScreens:Lcom/android/launcher3/util/IntArray;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "requestAddOrDeleteAppWidget: widgetInfo = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_e4

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v2, v4}, Lcom/android/launcher3/OplusLauncherModel;->getWriter(ZZLcom/android/launcher3/model/BgDataModel$Callbacks;)Lcom/android/launcher3/model/OplusModelWriter;

    move-result-object v9

    iget v11, v1, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    iget v12, v1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    iget v13, v1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v14, v1, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    move-object v10, v1

    invoke-virtual/range {v9 .. v14}, Lcom/android/launcher3/model/OplusModelWriter;->addItemToDatabase(Lcom/android/launcher3/model/data/ItemInfo;IIII)V

    invoke-static {v5, v0}, Lcom/android/launcher3/LauncherModel;->updateWorkspaceScreenOrder(Landroid/content/Context;Lcom/android/launcher3/util/IntArray;)V

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v3, Lcom/android/launcher/pkg/b;

    move/from16 v4, p3

    invoke-direct {v3, v6, v7, v1, v4}, Lcom/android/launcher/pkg/b;-><init>(Lcom/android/launcher3/OplusLauncherModel;Lcom/android/launcher3/util/IntArray;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;Z)V

    invoke-virtual {v0, v3}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return v8

    :cond_e4
    const-string v0, "AddAppWidget, widgetInfo is null!"

    invoke-static {v3, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e9
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_e9} :catch_ea

    return v2

    :catch_ea
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_ee
    return v2

    :cond_ef
    if-eqz v7, :cond_112

    :try_start_f1
    invoke-direct/range {p0 .. p1}, Lcom/android/launcher3/OplusLauncherProvider;->deleteFromDB(Ljava/lang/String;)Z

    move-result v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "requestAddOrDeleteAppWidget: just deleteFromDB providerName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",isDeletedSuccessful = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_112
    sget-object v1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v3, Lcom/android/common/util/m;

    invoke-direct {v3, v6, v0}, Lcom/android/common/util/m;-><init>(Lcom/android/launcher3/OplusLauncherModel;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/concurrent/AbstractExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_127
    .catch Ljava/lang/Exception; {:try_start_f1 .. :try_end_127} :catch_128

    return v0

    :catch_128
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return v2
.end method

.method public static setLoadingFromDefaultXml(Z)V
    .registers 1

    sput-boolean p0, Lcom/android/launcher3/OplusLauncherProvider;->sLoadingFromDefaultXml:Z

    return-void
.end method


# virtual methods
.method public applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    sget-object v0, Lcom/android/launcher3/LauncherProviderInjector;->INSTANCE:Lcom/android/launcher3/LauncherProviderInjector;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherProviderInjector;->hasWritePermission(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_e

    return-object v2

    :cond_e
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "applyBatch"

    invoke-virtual {v0, v1, v3, v2, v2}, Lcom/android/launcher3/LauncherProviderInjector;->printInsertMessage(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/android/launcher3/LauncherProvider;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object p0

    if-eqz p0, :cond_22

    sget-object p1, Lcom/android/launcher3/card/LauncherCardAppFilter;->INSTANCE:Lcom/android/launcher3/card/LauncherCardAppFilter;

    invoke-virtual {p1}, Lcom/android/launcher3/card/LauncherCardAppFilter;->notifyScreenDataChange()V

    :cond_22
    return-object p0
.end method

.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .registers 7

    sget-object v0, Lcom/android/launcher3/LauncherProviderInjector;->INSTANCE:Lcom/android/launcher3/LauncherProviderInjector;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherProviderInjector;->hasWritePermission(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_e

    const/4 p0, -0x1

    return p0

    :cond_e
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "bulkInsert"

    invoke-virtual {v0, v1, v3, p1, v2}, Lcom/android/launcher3/LauncherProviderInjector;->printInsertMessage(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/android/launcher3/LauncherProvider;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result p0

    if-lez p0, :cond_23

    sget-object p1, Lcom/android/launcher3/card/LauncherCardAppFilter;->INSTANCE:Lcom/android/launcher3/card/LauncherCardAppFilter;

    invoke-virtual {p1}, Lcom/android/launcher3/card/LauncherCardAppFilter;->notifyScreenDataChange()V

    :cond_23
    return p0
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 26

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    const-string/jumbo v10, "query folder data error"

    sget-object v1, Lcom/android/launcher3/LauncherProviderInjector;->INSTANCE:Lcom/android/launcher3/LauncherProviderInjector;

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/LauncherProviderInjector;->hasReadPermission(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5b8

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/LauncherProviderInjector;->hasWritePermission(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_23

    goto/16 :goto_5b8

    :cond_23
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v4, 0x0

    const-string v3, "call"

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/LauncherProviderInjector;->printInsertMessage(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    invoke-super/range {p0 .. p3}, Lcom/android/launcher3/LauncherProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_38

    return-object v1

    :cond_38
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "OplusLauncherProvider"

    const/4 v3, 0x0

    if-nez v1, :cond_47

    const-string v0, "call context is null!"

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :cond_47
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/LauncherProvider;->createDbIfNotExists()V

    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    invoke-static/range {p1 .. p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const-string v4, "app_edit_max_id"

    const-string/jumbo v5, "recommend_market_info_id"

    const/4 v6, 0x0

    sparse-switch v3, :sswitch_data_5be

    goto/16 :goto_157

    :sswitch_61
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_69

    goto/16 :goto_157

    :cond_69
    const/16 v3, 0x12

    goto/16 :goto_158

    :sswitch_6d
    const-string/jumbo v3, "query_folder_data"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_78

    goto/16 :goto_157

    :cond_78
    const/16 v3, 0x11

    goto/16 :goto_158

    :sswitch_7c
    const-string/jumbo v3, "parse_extra_layout"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_87

    goto/16 :goto_157

    :cond_87
    const/16 v3, 0x10

    goto/16 :goto_158

    :sswitch_8b
    const-string v3, "cloudRecoveryStatusChanged"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_95

    goto/16 :goto_157

    :cond_95
    const/16 v3, 0xf

    goto/16 :goto_158

    :sswitch_99
    const-string v3, "isTableExist"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a3

    goto/16 :goto_157

    :cond_a3
    const/16 v3, 0xe

    goto/16 :goto_158

    :sswitch_a7
    const-string v3, "isWidgetAddedInLauncher"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b1

    goto/16 :goto_157

    :cond_b1
    const/16 v3, 0xd

    goto/16 :goto_158

    :sswitch_b5
    const-string/jumbo v3, "ota_add_cards"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c0

    goto/16 :goto_157

    :cond_c0
    const/16 v3, 0xc

    goto/16 :goto_158

    :sswitch_c4
    const-string v3, "create_specific_table"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_ce

    goto/16 :goto_157

    :cond_ce
    const/16 v3, 0xb

    goto/16 :goto_158

    :sswitch_d2
    const-string/jumbo v3, "requestGetShortCutIntent"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_dd

    goto/16 :goto_157

    :cond_dd
    const/16 v3, 0xa

    goto/16 :goto_158

    :sswitch_e1
    const-string/jumbo v3, "requestGetWidgetPackageName"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_ec

    goto/16 :goto_157

    :cond_ec
    const/16 v3, 0x9

    goto/16 :goto_158

    :sswitch_f0
    const-string/jumbo v3, "requestDeleteWidget"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_fb

    goto/16 :goto_157

    :cond_fb
    const/16 v3, 0x8

    goto/16 :goto_158

    :sswitch_ff
    const-string/jumbo v3, "requestAddWidget"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_109

    goto :goto_157

    :cond_109
    const/4 v3, 0x7

    goto :goto_158

    :sswitch_10b
    const-string v3, "checkAfterRestore"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_114

    goto :goto_157

    :cond_114
    const/4 v3, 0x6

    goto :goto_158

    :sswitch_116
    const-string v3, "delete_specific_screen_empty_folders"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11f

    goto :goto_157

    :cond_11f
    const/4 v3, 0x5

    goto :goto_158

    :sswitch_121
    const-string v3, "create_empty_db_all_mode"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12a

    goto :goto_157

    :cond_12a
    const/4 v3, 0x4

    goto :goto_158

    :sswitch_12c
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_133

    goto :goto_157

    :cond_133
    const/4 v3, 0x3

    goto :goto_158

    :sswitch_135
    const-string v3, "METHOD_ADD_GLOBAL_SEARCH_APPWIDGET"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13e

    goto :goto_157

    :cond_13e
    const/4 v3, 0x2

    goto :goto_158

    :sswitch_140
    const-string/jumbo v3, "notify_launcher_limit_app"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14a

    goto :goto_157

    :cond_14a
    const/4 v3, 0x1

    goto :goto_158

    :sswitch_14c
    const-string v3, "clear_specific_empty_table_flag"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_155

    goto :goto_157

    :cond_155
    move v3, v6

    goto :goto_158

    :goto_157
    const/4 v3, -0x1

    :goto_158
    const-string v7, "launcher_mode_vaule"

    const-string/jumbo v12, "value"

    const-string v13, "is_request_success"

    const-string/jumbo v14, "result"

    const/high16 v15, -0x80000000

    packed-switch v3, :pswitch_data_60c

    goto/16 :goto_5b7

    :pswitch_169  #0x12
    iget-object v1, v0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/OplusLauncherProvider;->initializeMaxAppEditId(Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v0

    invoke-virtual {v11, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_5b7

    :pswitch_178  #0x11
    invoke-static {}, Lcom/android/common/util/OplusLauncherDbUtils;->getCurrentItemTable()Ljava/lang/String;

    move-result-object v3

    const-string v4, "itemType = 3 AND _id IN (SELECT container FROM "

    const-string v5, ")"

    invoke-static {v4, v3, v5}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v4, "container IN (SELECT _id FROM "

    invoke-static {v4, v3, v5}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    :try_start_194
    iget-object v8, v0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v14, v3

    invoke-virtual/range {v12 .. v21}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8
    :try_end_1ab
    .catch Ljava/lang/Exception; {:try_start_194 .. :try_end_1ab} :catch_1d8
    .catchall {:try_start_194 .. :try_end_1ab} :catchall_1d4

    :try_start_1ab
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9

    if-eqz v9, :cond_1df

    :cond_1b1
    const-string v9, "_id"

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v12, "title"

    invoke-interface {v8, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v8, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v1, v12}, Lcom/android/common/util/FolderNameHelper;->getDisplayName(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v9, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9
    :try_end_1d1
    .catch Ljava/lang/Exception; {:try_start_1ab .. :try_end_1d1} :catch_1da
    .catchall {:try_start_1ab .. :try_end_1d1} :catchall_279

    if-nez v9, :cond_1b1

    goto :goto_1df

    :catchall_1d4
    move-exception v0

    const/4 v1, 0x0

    goto/16 :goto_27b

    :catch_1d8
    const/4 v1, 0x0

    move-object v8, v1

    :catch_1da
    :try_start_1da
    invoke-static {v2, v10}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1dd
    .catchall {:try_start_1da .. :try_end_1dd} :catchall_279

    if-eqz v8, :cond_1e2

    :cond_1df
    :goto_1df
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_1e2
    :try_start_1e2
    iget-object v1, v0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v14, v3

    move-object/from16 v16, v4

    invoke-virtual/range {v12 .. v21}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_1fb
    .catch Ljava/lang/Exception; {:try_start_1e2 .. :try_end_1fb} :catch_261
    .catchall {:try_start_1e2 .. :try_end_1fb} :catchall_25e

    :try_start_1fb
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_268

    :cond_201
    const-string v3, "intent"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/launcher3/OplusLauncherProvider;->getAppPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "container"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move v8, v6

    move v9, v8

    :goto_21b
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v8, v12, :cond_23e

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_23b

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v9, 0x1

    :cond_23b
    add-int/lit8 v8, v8, 0x1

    goto :goto_21b

    :cond_23e
    if-nez v9, :cond_257

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_257
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3
    :try_end_25b
    .catch Ljava/lang/Exception; {:try_start_1fb .. :try_end_25b} :catch_263
    .catchall {:try_start_1fb .. :try_end_25b} :catchall_272

    if-nez v3, :cond_201

    goto :goto_268

    :catchall_25e
    move-exception v0

    const/4 v1, 0x0

    goto :goto_273

    :catch_261
    const/4 v0, 0x0

    move-object v1, v0

    :catch_263
    :try_start_263
    invoke-static {v2, v10}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_266
    .catchall {:try_start_263 .. :try_end_266} :catchall_272

    if-eqz v1, :cond_26b

    :cond_268
    :goto_268
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_26b
    const-string v0, "folder_data"

    invoke-virtual {v11, v0, v7}, Landroid/os/Bundle;->putObject(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_5b7

    :catchall_272
    move-exception v0

    :goto_273
    if-eqz v1, :cond_278

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_278
    throw v0

    :catchall_279
    move-exception v0

    move-object v1, v8

    :goto_27b
    if-eqz v1, :cond_280

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_280
    throw v0

    :pswitch_281  #0x10
    const-string/jumbo v3, "trying to load extra workspace."

    invoke-static {v2, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher/layout/CustomLayoutHelper;->getInstance()Lcom/android/launcher/layout/CustomLayoutHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher/layout/CustomLayoutHelper;->loadExtraWorkspaceAfterEnterLauncherDisabled()Z

    move-result v3

    if-eqz v3, :cond_298

    const-string v0, "disable to load extra workspace."

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5b7

    :cond_298
    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher/mode/LauncherModeManager;->getCurLauncherMode()Lcom/android/launcher/mode/LauncherMode;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v1, v3, v4}, Lcom/android/launcher/layout/LayoutPrefsUtils;->setExtraLayoutLoading(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;Z)V

    :try_start_2a4
    iget-object v3, v0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->newLauncherWidgetHost()Landroid/appwidget/AppWidgetHost;

    move-result-object v3

    invoke-static {}, Lcom/android/launcher/layout/CustomLayoutHelper;->getInstance()Lcom/android/launcher/layout/CustomLayoutHelper;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v7, v0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {v4, v5, v3, v7}, Lcom/android/launcher/layout/CustomLayoutHelper;->getExtraLayout(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/android/launcher3/LauncherProvider$DatabaseHelper;)Lcom/android/launcher3/ExtraLayoutParser;

    move-result-object v3

    if-eqz v3, :cond_2d9

    iget-object v0, v0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->loadFavorites(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/launcher3/AutoInstallsLayout;)I
    :try_end_2c3
    .catch Ljava/lang/Exception; {:try_start_2a4 .. :try_end_2c3} :catch_2c4

    goto :goto_2d9

    :catch_2c4
    move-exception v0

    const-string v3, "error parsing extra layout "

    invoke-static {v3}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2d9
    :goto_2d9
    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/mode/LauncherModeManager;->getCurLauncherMode()Lcom/android/launcher/mode/LauncherMode;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/android/launcher/layout/LayoutPrefsUtils;->setExtraLayoutLoadedFlag(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;Z)V

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/mode/LauncherModeManager;->getCurLauncherMode()Lcom/android/launcher/mode/LauncherMode;

    move-result-object v0

    invoke-static {v1, v0, v6}, Lcom/android/launcher/layout/LayoutPrefsUtils;->setExtraLayoutLoading(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;Z)V

    goto/16 :goto_5b7

    :pswitch_2f2  #0xf
    if-eqz v9, :cond_5b7

    const-string/jumbo v0, "restore_started"

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5b7

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call METHOD_CLOUD_RECOVERY_STATUS_CHANGED, isStarted = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    if-nez v1, :cond_322

    const-string v0, "METHOD_CLOUD_RECOVERY_STATUS_CHANGED -- appState is null!"

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5b7

    :cond_322
    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/launcher3/OplusLauncherModel;->setCloudRecoveryState(Z)V

    goto/16 :goto_5b7

    :pswitch_32b  #0xe
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5b7

    new-instance v1, Lcom/android/launcher3/LauncherProvider$SqlArguments;

    invoke-static/range {p2 .. p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v3}, Lcom/android/launcher3/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v1, v1, Lcom/android/launcher3/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5b7

    iget-object v0, v0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/launcher3/provider/LauncherDbUtils;->tableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    const-string v1, "is_table_exist"

    invoke-virtual {v11, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_5b7

    :pswitch_354  #0xd
    sget-boolean v1, Lcom/android/common/config/FeatureOption;->isRLMDevice:Z

    if-eqz v1, :cond_375

    sget-object v1, Lcom/android/launcher/bottomsearch/BottomSearchManager;->INSTANCE:Lcom/android/launcher/bottomsearch/BottomSearchManager;

    invoke-virtual {v1}, Lcom/android/launcher/bottomsearch/BottomSearchManager;->featureSupport()Z

    move-result v2

    if-eqz v2, :cond_375

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v5, Lcom/android/launcher3/a1;

    invoke-direct {v5, v0, v6}, Lcom/android/launcher3/a1;-><init>(Lcom/android/launcher3/OplusLauncherProvider;I)V

    move-object v0, v1

    move-object v1, v2

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v4, v11

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher/bottomsearch/BottomSearchManager;->isBottomWidgetAdded(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Lkotlin/jvm/functions/Function1;)Z

    move-result v0

    goto :goto_379

    :cond_375
    invoke-direct {v0, v8}, Lcom/android/launcher3/OplusLauncherProvider;->isWidgetAdd(Ljava/lang/String;)Z

    move-result v0

    :goto_379
    const-string/jumbo v1, "widget_is_added"

    invoke-virtual {v11, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_5b7

    :pswitch_381  #0xc
    iget-object v2, v0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/launcher3/ota/AddCardManager;->getWeatherStepCardResId(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v7

    if-eqz v7, :cond_3af

    iget-object v9, v0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10

    new-instance v12, Lcom/android/launcher3/ExtraLayoutParser;

    iget-object v2, v0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->newLauncherWidgetHost()Landroid/appwidget/AppWidgetHost;

    move-result-object v4

    iget-object v5, v0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v0, v0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->getNewScreenId()I

    move-result v8

    move-object v2, v12

    move-object v3, v1

    invoke-direct/range {v2 .. v8}, Lcom/android/launcher3/ExtraLayoutParser;-><init>(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;Landroid/content/res/Resources;II)V

    invoke-virtual {v9, v10, v12}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->loadFavorites(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/launcher3/AutoInstallsLayout;)I

    :cond_3af
    invoke-static {v1}, Lcom/android/launcher3/ota/AddCardManager;->markAddWeatherStepCardDone(Landroid/content/Context;)V

    goto/16 :goto_5b7

    :pswitch_3b4  #0xb
    if-eqz v9, :cond_44a

    invoke-virtual {v9, v7, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v15, :cond_3c6

    const-string/jumbo v0, "not set the launcher model for create table!"

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v14, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v11

    :cond_3c6
    new-instance v4, Lcom/android/launcher/mode/AbsLauncherMode$Builder;

    invoke-direct {v4, v1}, Lcom/android/launcher/mode/AbsLauncherMode$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Lcom/android/launcher/mode/AbsLauncherMode$Builder;->mode(I)Lcom/android/launcher/mode/AbsLauncherMode$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher/mode/AbsLauncherMode$Builder;->build()Lcom/android/launcher/mode/AbsLauncherMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher/mode/AbsLauncherMode;->itemTableName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/launcher/mode/AbsLauncherMode;->screenTableName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    iget-object v6, v0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {v6}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->getDefaultUserSerial()J

    move-result-wide v6

    const/4 v8, 0x1

    invoke-static {v5, v3, v6, v7, v8}, Lcom/android/common/util/OplusLauncherDbUtils;->addFavoritesTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;JZ)V

    invoke-static {v5, v4, v8}, Lcom/android/common/util/OplusLauncherDbUtils;->addWorkspacesTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "METHOD_CREATE_SPECIFIC_TABLE_IF_NOT_EXIST: launcherMode = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/launcher/mode/AbsLauncherMode;->mode()Lcom/android/launcher/mode/LauncherMode;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/launcher/mode/AbsLauncherMode;->mode()Lcom/android/launcher/mode/LauncherMode;

    move-result-object v4

    sget-object v6, Lcom/android/launcher/mode/LauncherMode;->Standard:Lcom/android/launcher/mode/LauncherMode;

    if-eq v4, v6, :cond_416

    invoke-virtual {v1}, Lcom/android/launcher/mode/AbsLauncherMode;->mode()Lcom/android/launcher/mode/LauncherMode;

    move-result-object v4

    sget-object v6, Lcom/android/launcher/mode/LauncherMode;->Drawer:Lcom/android/launcher/mode/LauncherMode;

    if-ne v4, v6, :cond_419

    :cond_416
    invoke-static {v5, v3}, Lcom/android/launcher3/OplusLauncherProvider$OplusDatabaseHelper;->addRecommendFlagColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    :cond_419
    const-string v3, "create table successful! mode = "

    invoke-static {v3}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/launcher/mode/AbsLauncherMode;->mode()Lcom/android/launcher/mode/LauncherMode;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {v1}, Lcom/android/launcher/mode/AbsLauncherMode;->flagOfEmptyDatabaseCreated()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-virtual {v11, v14, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_5b7

    :cond_44a
    const-string v0, "METHOD_CREATE_SPECIFIC_TABLE_IF_NOT_EXIST, extra is null, ignore it!"

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5b7

    :pswitch_451  #0xa
    invoke-direct {v0, v8}, Lcom/android/launcher3/OplusLauncherProvider;->getShortcutIntents(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const-string/jumbo v1, "shortcut_intent_list"

    invoke-virtual {v11, v1, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object v11

    :pswitch_45c  #0x9
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/OplusLauncherProvider;->getBindWidgetAppList()Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "call METHOD_REQUEST_GET_WIDGET_PKG_NAME, appBindWidget.size = "

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "package_name_list"

    invoke-virtual {v11, v1, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_5b7

    :pswitch_47c  #0x8
    const/4 v1, 0x1

    invoke-direct {v0, v8, v6, v1, v6}, Lcom/android/launcher3/OplusLauncherProvider;->requestAddOrDeleteAppWidget(Ljava/lang/String;ZZZ)Z

    move-result v0

    invoke-virtual {v11, v13, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_5b7

    :pswitch_486  #0x7
    sget-boolean v1, Lcom/android/common/config/FeatureOption;->isRLMDevice:Z

    if-eqz v1, :cond_4ae

    sget-object v1, Lcom/android/launcher/bottomsearch/BottomSearchManager;->INSTANCE:Lcom/android/launcher/bottomsearch/BottomSearchManager;

    invoke-virtual {v1}, Lcom/android/launcher/bottomsearch/BottomSearchManager;->featureSupport()Z

    move-result v2

    if-eqz v2, :cond_4ae

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    new-instance v6, Lcom/android/launcher3/b1;

    invoke-direct {v6, v0}, Lcom/android/launcher3/b1;-><init>(Lcom/android/launcher3/OplusLauncherProvider;)V

    new-instance v7, Lcom/android/launcher3/a1;

    const/4 v3, 0x1

    invoke-direct {v7, v0, v3}, Lcom/android/launcher3/a1;-><init>(Lcom/android/launcher3/OplusLauncherProvider;I)V

    move-object v0, v1

    move-object v1, v2

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher/bottomsearch/BottomSearchManager;->requestAddOrDeleteBottomWidget(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ZZLkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function1;)Z

    move-result v0

    goto :goto_4b3

    :cond_4ae
    const/4 v1, 0x1

    invoke-direct {v0, v8, v1, v1, v6}, Lcom/android/launcher3/OplusLauncherProvider;->requestAddOrDeleteAppWidget(Ljava/lang/String;ZZZ)Z

    move-result v0

    :goto_4b3
    invoke-virtual {v11, v13, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_5b7

    :pswitch_4b8  #0x6
    const/4 v1, 0x1

    if-eqz v9, :cond_5b7

    const-string/jumbo v2, "restore_result"

    invoke-virtual {v9, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5b7

    invoke-virtual {v9, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sget-object v2, Lcom/android/launcher/db/LauncherUpgradeHelper;->INSTANCE:Lcom/android/launcher/db/LauncherUpgradeHelper;

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v0, v0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/launcher/db/LauncherUpgradeHelper;->onLayoutDatabaseRestored(Landroid/content/Context;Lcom/android/launcher3/LauncherProvider$DatabaseHelper;Z)V

    goto/16 :goto_5b7

    :pswitch_4d5  #0x5
    if-eqz v9, :cond_4e7

    const-string/jumbo v1, "only_hot_seat"

    invoke-virtual {v9, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    const-string/jumbo v1, "screen_id"

    const/4 v2, -0x1

    invoke-virtual {v9, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_4e8

    :cond_4e7
    const/4 v1, -0x1

    :goto_4e8
    iget-object v0, v0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-static {v0, v1, v6}, Lcom/android/common/util/OplusLauncherDbUtils;->deleteEmptyFolders(Lcom/android/launcher3/LauncherProvider$DatabaseHelper;IZ)Lcom/android/launcher3/util/IntArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/util/IntArray;->toArray()[I

    move-result-object v0

    invoke-virtual {v11, v12, v0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    goto/16 :goto_5b7

    :pswitch_4f7  #0x4
    iget-object v0, v0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->createEmptyDBAllMode(Landroid/database/sqlite/SQLiteDatabase;)V

    goto/16 :goto_5b7

    :pswitch_502  #0x3
    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportFolderContentRecommend()Z

    move-result v1

    if-eqz v1, :cond_5b7

    iget-object v1, v0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->initIds()V

    iget-object v0, v0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->generateNewItemId()I

    move-result v0

    invoke-virtual {v11, v12, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v0, Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil;->Companion:Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil$Companion;

    invoke-virtual {v0}, Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil$Companion;->getSInstance()Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil;->generateNewItemId()I

    move-result v0

    invoke-virtual {v11, v5, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_5b7

    :pswitch_525  #0x2
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/OplusLauncherProvider;->checkAndAddGlobalSearch()V

    const/4 v0, 0x0

    return-object v0

    :pswitch_52a  #0x1
    const-string v1, "limit_use_list"

    invoke-virtual {v9, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NOTIFY_LIMIT_APP: list: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher/AppLimitedStartUpManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/AppLimitedStartUpManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/launcher/AppLimitedStartUpManager;->updateLimitAppList(Ljava/util/List;)V

    goto :goto_5b7

    :pswitch_550  #0x0
    if-eqz v9, :cond_5b2

    invoke-virtual {v9, v7, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v15, :cond_561

    const-string v0, "METHOD_CLEAR_SPECIFIC_EMPTY_TABLE_FLAG_IF_NECESSARY not set the launcher model for create table!"

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v14, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_5b7

    :cond_561
    new-instance v4, Lcom/android/launcher/mode/AbsLauncherMode$Builder;

    invoke-direct {v4, v1}, Lcom/android/launcher/mode/AbsLauncherMode$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Lcom/android/launcher/mode/AbsLauncherMode$Builder;->mode(I)Lcom/android/launcher/mode/AbsLauncherMode$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher/mode/AbsLauncherMode$Builder;->build()Lcom/android/launcher/mode/AbsLauncherMode;

    move-result-object v1

    const-string v4, "clear empty table flag, clear mode:"

    invoke-static {v4}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/launcher/mode/AbsLauncherMode;->mode()Lcom/android/launcher/mode/LauncherMode;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", launcherModeValue:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", flag:"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/launcher/mode/AbsLauncherMode;->flagOfEmptyDatabaseCreated()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {v1}, Lcom/android/launcher/mode/AbsLauncherMode;->flagOfEmptyDatabaseCreated()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/4 v0, 0x1

    invoke-virtual {v11, v14, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_5b7

    :cond_5b2
    const-string v0, "METHOD_CLEAR_SPECIFIC_EMPTY_TABLE_FLAG_IF_NECESSARY, extra is null, ignore it!"

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5b7
    :goto_5b7
    return-object v11

    :cond_5b8
    :goto_5b8
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0

    :sswitch_data_5be
    .sparse-switch
        -0x7eef0896 -> :sswitch_14c
        -0x7a8ded8c -> :sswitch_140
        -0x66232d52 -> :sswitch_135
        -0x6405ccd4 -> :sswitch_12c
        -0x616a3c53 -> :sswitch_121
        -0x52531c67 -> :sswitch_116
        -0x4f88bdc6 -> :sswitch_10b
        -0x49e75f8a -> :sswitch_ff
        -0x49ab7802 -> :sswitch_f0
        -0x43b2a47a -> :sswitch_e1
        -0x38f60377 -> :sswitch_d2
        -0xb666fdc -> :sswitch_c4
        0xcc77ce2 -> :sswitch_b5
        0x136a1717 -> :sswitch_a7
        0x26526c93 -> :sswitch_99
        0x40faf598 -> :sswitch_8b
        0x477d3c45 -> :sswitch_7c
        0x5867abe4 -> :sswitch_6d
        0x7f6e608d -> :sswitch_61
    .end sparse-switch

    :pswitch_data_60c
    .packed-switch 0x0
        :pswitch_550  #00000000
        :pswitch_52a  #00000001
        :pswitch_525  #00000002
        :pswitch_502  #00000003
        :pswitch_4f7  #00000004
        :pswitch_4d5  #00000005
        :pswitch_4b8  #00000006
        :pswitch_486  #00000007
        :pswitch_47c  #00000008
        :pswitch_45c  #00000009
        :pswitch_451  #0000000a
        :pswitch_3b4  #0000000b
        :pswitch_381  #0000000c
        :pswitch_354  #0000000d
        :pswitch_32b  #0000000e
        :pswitch_2f2  #0000000f
        :pswitch_281  #00000010
        :pswitch_178  #00000011
        :pswitch_169  #00000012
    .end packed-switch
.end method

.method public checkAndAddGlobalSearch()V
    .registers 8

    const-string v0, "com.coloros.alarmclock/com.coloros.widget.smallweather.OppoWeatherVertical"

    invoke-virtual {p0, v0}, Lcom/android/launcher3/OplusLauncherProvider;->getAppwidgetInfoFromDB(Ljava/lang/String;)Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    move-result-object v1

    const-string v2, "com.heytap.quicksearchbox/com.heytap.quicksearchbox.ui.appwidgets.DesktopSearchWidgetProvider"

    invoke-virtual {p0, v2}, Lcom/android/launcher3/OplusLauncherProvider;->checkThisWidgetFromDB(Ljava/lang/String;)Z

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkAndAddGlobalSearch: ,weatherVeticalInfo = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ",isAllSearchInDB = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ",LauncherMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher/mode/LauncherModeManager;->getCurLauncherMode()Lcom/android/launcher/mode/LauncherMode;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "OplusLauncherProvider"

    invoke-static {v5, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher/mode/LauncherModeManager;->isStandardMode()Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_53

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher/mode/LauncherModeManager;->isInDrawerMode()Z

    move-result v4

    if-eqz v4, :cond_51

    goto :goto_53

    :cond_51
    move v4, v5

    goto :goto_54

    :cond_53
    :goto_53
    move v4, v6

    :goto_54
    if-nez v3, :cond_6d

    if-eqz v4, :cond_6d

    if-eqz v1, :cond_6a

    const-string v3, "com.coloros.alarmclock/com.coloros.widget.smallweather.OppoWeather"

    invoke-virtual {p0, v3}, Lcom/android/launcher3/OplusLauncherProvider;->checkThisWidgetFromDB(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6a

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/android/launcher/widget/GlobalSearchWidgetHelper;->changeVeticalWeatherWidget(Ljava/lang/String;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;Landroid/content/Context;)V

    goto :goto_6d

    :cond_6a
    invoke-direct {p0, v2, v6, v5, v6}, Lcom/android/launcher3/OplusLauncherProvider;->requestAddOrDeleteAppWidget(Ljava/lang/String;ZZZ)Z

    :cond_6d
    :goto_6d
    return-void
.end method

.method public checkThisWidgetFromDB(Ljava/lang/String;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/OplusLauncherProvider;->getAppwidgetInfoFromDB(Ljava/lang/String;)Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    move-result-object p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 8

    sget-object v0, Lcom/android/launcher3/LauncherProviderInjector;->INSTANCE:Lcom/android/launcher3/LauncherProviderInjector;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherProviderInjector;->hasWritePermission(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_e

    return v2

    :cond_e
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "delete"

    invoke-virtual {v0, v1, v3, p1, p2}, Lcom/android/launcher3/LauncherProviderInjector;->printInsertMessage(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    :try_start_17
    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/LauncherProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_22

    sget-object p1, Lcom/android/launcher3/card/LauncherCardAppFilter;->INSTANCE:Lcom/android/launcher3/card/LauncherCardAppFilter;

    invoke-virtual {p1}, Lcom/android/launcher3/card/LauncherCardAppFilter;->notifyScreenDataChange()V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_22} :catch_23

    :cond_22
    return p0

    :catch_23
    move-exception p0

    const-string p1, "delete: Exception error occurs."

    const-string p2, "OplusLauncherProvider"

    invoke-static {p1, p0, p2}, Lcom/android/common/config/i;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    return v2
.end method

.method public getAppwidgetInfoFromDB(Ljava/lang/String;)Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;
    .registers 11

    iget-object p0, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-static {}, Lcom/android/common/util/OplusLauncherDbUtils;->getCurrentItemTable()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/launcher3/provider/LauncherDbUtils;->tableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_bc

    :try_start_10
    const-string v2, "appWidgetProvider"

    const-string/jumbo v3, "screen"

    const-string v4, "cellX"

    const-string v5, "cellY"

    const-string/jumbo v6, "spanX"

    const-string/jumbo v7, "spanY"

    const-string v8, "container"

    filled-new-array/range {v2 .. v8}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "itemType=5"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_30
    .catch Landroid/database/SQLException; {:try_start_10 .. :try_end_30} :catch_a5

    :try_start_30
    const-string/jumbo v1, "screen"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    const-string v2, "cellX"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    const-string v3, "cellY"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v4, "spanX"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v5, "spanY"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    const-string v6, "container"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    :cond_57
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_95

    const/4 v7, 0x0

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_57

    new-instance p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    invoke-direct {p1}, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;-><init>()V

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->container:I
    :try_end_91
    .catchall {:try_start_30 .. :try_end_91} :catchall_99

    :try_start_91
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object p1

    :cond_95
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_98
    .catch Landroid/database/SQLException; {:try_start_91 .. :try_end_98} :catch_a5

    goto :goto_bc

    :catchall_99
    move-exception p1

    if-eqz v0, :cond_a4

    :try_start_9c
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_9f
    .catchall {:try_start_9c .. :try_end_9f} :catchall_a0

    goto :goto_a4

    :catchall_a0
    move-exception v0

    :try_start_a1
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_a4
    :goto_a4
    throw p1
    :try_end_a5
    .catch Landroid/database/SQLException; {:try_start_a1 .. :try_end_a5} :catch_a5

    :catch_a5
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error getting widgets list, name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OplusLauncherProvider"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_bc
    :goto_bc
    const/4 p0, 0x0

    return-object p0
.end method

.method public initializeMaxAppEditId(Landroid/database/sqlite/SQLiteDatabase;)I
    .registers 4

    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, p0, v0

    const/4 v0, 0x1

    const-string v1, "desktopappedit"

    aput-object v1, p0, v0

    const-string v0, "SELECT MAX(%1$s) FROM %2$s"

    invoke-static {p1, v0, p0}, Lcom/android/launcher3/LauncherProvider;->getMaxId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 7

    sget-object v0, Lcom/android/launcher3/LauncherProviderInjector;->INSTANCE:Lcom/android/launcher3/LauncherProviderInjector;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherProviderInjector;->hasWritePermission(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_e

    const/4 p0, 0x0

    return-object p0

    :cond_e
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "insert"

    invoke-virtual {v0, v1, v3, p1, v2}, Lcom/android/launcher3/LauncherProviderInjector;->printInsertMessage(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/android/launcher3/LauncherProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_26

    sget-object p1, Lcom/android/launcher3/card/LauncherCardAppFilter;->INSTANCE:Lcom/android/launcher3/card/LauncherCardAppFilter;

    invoke-virtual {p1}, Lcom/android/launcher3/card/LauncherCardAppFilter;->notifyScreenDataChange()V

    :cond_26
    return-object p0
.end method

.method public declared-synchronized loadDefaultFavoritesIfNecessary()V
    .registers 10

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher/mode/LauncherModeManager;->getFlagOfEmptyDatabaseCreated()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_e2

    if-nez v0, :cond_20

    monitor-exit p0

    return-void

    :cond_20
    :try_start_20
    const-string v0, "OplusLauncherProvider"

    const-string v1, "loading default workspace"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/mode/LauncherModeManager;->isStandardMode()Z

    move-result v0

    if-nez v0, :cond_3b

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/mode/LauncherModeManager;->isInDrawerMode()Z

    move-result v0

    if-eqz v0, :cond_3f

    :cond_3b
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/launcher3/OplusLauncherProvider;->setLoadingFromDefaultXml(Z)V

    :cond_3f
    iget-object v0, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->newLauncherWidgetHost()Landroid/appwidget/AppWidgetHost;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherProvider;->createWorkspaceLoaderFromAppRestriction(Landroid/appwidget/AppWidgetHost;)Lcom/android/launcher3/AutoInstallsLayout;

    move-result-object v1

    if-nez v1, :cond_61

    sget-object v3, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v3}, Lcom/android/common/util/AppFeatureUtils;->isPaiLayoutDisabled()Z

    move-result v3

    if-nez v3, :cond_61

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-static {v1, v0, v2}, Lcom/android/launcher3/AutoInstallsLayout;->get(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;)Lcom/android/launcher3/AutoInstallsLayout;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/OplusLauncherProvider;->createEmptyDbAndLoadFavorites(Landroid/appwidget/AppWidgetHost;Lcom/android/launcher3/AutoInstallsLayout;)I

    move-result v2

    :cond_61
    if-eqz v1, :cond_65

    if-gtz v2, :cond_9e

    :cond_65
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher3/Partner;->get(Landroid/content/pm/PackageManager;)Lcom/android/launcher3/Partner;

    move-result-object v2

    if-eqz v2, :cond_9a

    invoke-virtual {v2}, Lcom/android/launcher3/Partner;->hasDefaultLayout()Z

    move-result v3

    if-eqz v3, :cond_9a

    invoke-virtual {v2}, Lcom/android/launcher3/Partner;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string/jumbo v3, "partner_default_layout"

    const-string/jumbo v4, "xml"

    invoke-virtual {v2}, Lcom/android/launcher3/Partner;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v3, v4, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_9a

    new-instance v1, Lcom/android/launcher3/DefaultLayoutParser;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v6, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    move-object v3, v1

    move-object v5, v0

    invoke-direct/range {v3 .. v8}, Lcom/android/launcher3/DefaultLayoutParser;-><init>(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;Landroid/content/res/Resources;I)V

    :cond_9a
    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/OplusLauncherProvider;->createEmptyDbAndLoadFavorites(Landroid/appwidget/AppWidgetHost;Lcom/android/launcher3/AutoInstallsLayout;)I

    move-result v2

    :cond_9e
    if-eqz v1, :cond_a2

    if-gtz v2, :cond_b2

    :cond_a2
    sget-object v1, Lcom/android/launcher3/LauncherProviderInjector;->INSTANCE:Lcom/android/launcher3/LauncherProviderInjector;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/launcher3/LauncherProviderInjector;->getLoaderFromLauncherLayoutApp(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/android/launcher3/LauncherProvider$DatabaseHelper;)Lcom/android/launcher3/AutoInstallsLayout;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/OplusLauncherProvider;->createEmptyDbAndLoadFavorites(Landroid/appwidget/AppWidgetHost;Lcom/android/launcher3/AutoInstallsLayout;)I

    move-result v2

    :cond_b2
    if-eqz v1, :cond_b6

    if-gtz v2, :cond_be

    :cond_b6
    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherProvider;->getDefaultLayoutParser(Landroid/appwidget/AppWidgetHost;)Lcom/android/launcher3/DefaultLayoutParser;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/OplusLauncherProvider;->createEmptyDbAndLoadFavorites(Landroid/appwidget/AppWidgetHost;Lcom/android/launcher3/AutoInstallsLayout;)I

    move-result v2

    :cond_be
    const-string v0, "OplusLauncherProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loading default workspace count "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider;->clearFlagEmptyDbCreated()V

    sget-object v0, Lcom/android/launcher3/LauncherProviderInjector;->INSTANCE:Lcom/android/launcher3/LauncherProviderInjector;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherProviderInjector;->addSaleWidgetToLauncher(Landroid/content/Context;)V
    :try_end_e0
    .catchall {:try_start_20 .. :try_end_e0} :catchall_e2

    monitor-exit p0

    return-void

    :catchall_e2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onCreate()Z
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onCreate() this = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusLauncherProvider"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/android/launcher3/LauncherProvider;->onCreate()Z

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    sget-object v0, Lcom/android/launcher/db/LauncherUpgradeHelper;->INSTANCE:Lcom/android/launcher/db/LauncherUpgradeHelper;

    invoke-virtual {v0, p0}, Lcom/android/launcher/db/LauncherUpgradeHelper;->moveDataFromCredentialStorageToDeviceStorage(Landroid/content/Context;)V

    const/4 p0, 0x1

    return p0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 8

    sget-object v0, Lcom/android/launcher3/LauncherProviderInjector;->INSTANCE:Lcom/android/launcher3/LauncherProviderInjector;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherProviderInjector;->hasReadPermission(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_15

    new-instance p0, Landroid/database/MatrixCursor;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    invoke-direct {p0, p1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    return-object p0

    :cond_15
    invoke-virtual {v0, p2}, Lcom/android/launcher3/LauncherProviderInjector;->checkContainsPackageOrClassName([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const/4 p0, 0x0

    return-object p0

    :cond_1d
    invoke-super/range {p0 .. p5}, Lcom/android/launcher3/LauncherProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 11

    sget-object v0, Lcom/android/launcher3/LauncherProviderInjector;->INSTANCE:Lcom/android/launcher3/LauncherProviderInjector;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherProviderInjector;->hasWritePermission(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_e

    const/4 p0, -0x1

    return p0

    :cond_e
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v2, "update"

    move-object v3, p1

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/LauncherProviderInjector;->printInsertMessage(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/launcher3/LauncherProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_36

    sget-object p1, Lcom/android/launcher3/card/LauncherCardAppFilter;->INSTANCE:Lcom/android/launcher3/card/LauncherCardAppFilter;

    invoke-virtual {p1}, Lcom/android/launcher3/card/LauncherCardAppFilter;->notifyScreenDataChange()V

    :cond_36
    return p0
.end method
