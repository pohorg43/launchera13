.class public final Lcom/android/launcher3/allapps/branch/BranchSearchHelper;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final BRANCH_SEARCH_SETTINGS_PREFERENCE_KEY:Ljava/lang/String; = "global_search_setting_entrance_preference"

.field public static final BRANCH_SEARCH_SETTINGS_PREFERENCE_KEY_VODAFONE:Ljava/lang/String; = "global_search_setting_entrance_preference_vodafone"

.field public static final BRANCH_SEARCH_SETTINGS_PREFERENCE_ORDER:I = 0x23

.field public static final CONTENT_URI:Ljava/lang/String; = "content://com.nearme.romupdate.provider.db/update_list"

.field private static final DENIED_TIMES_1:I = 0x1

.field private static final DENIED_TIMES_KEY:Ljava/lang/String; = "denied_times"

.field private static final EMPTY_SEARCH_TIMES_10:I = 0xa

.field private static final EMPTY_SEARCH_TIMES_20:I = 0x14

.field private static final EMPTY_SEARCH_TIMES_30:I = 0x1e

.field public static final INSTANCE:Lcom/android/launcher3/allapps/branch/BranchSearchHelper;

.field private static final KEY_EMPTY_SEARCH_TIMES:Ljava/lang/String; = "empty_search_times"

.field public static final KEY_RUS_OPLUS_BRANCH_NAVIGATOR_ENABLED:Ljava/lang/String; = "oplus_branch_navigator_enabled_config"

.field private static final LAST_DENIED_TIME_KEY:Ljava/lang/String; = "last_denied_time"

.field private static final META_DATA_SUPPORT_BRANCH_SEARCH:Ljava/lang/String; = "launcher_draw_entrance_support"

.field public static final PREF_KEY_SHOW_BRANCH_GUIDE:Ljava/lang/String; = "show_branch_search_guide"

.field private static final RE_START_BRANCH_INTERVAL_TIME:I = 0xa4cb800

.field private static final SETTINGS_LAUNCHER_DRAW_ENTRANCE_CLOSE:I = 0x0

.field private static final SETTINGS_LAUNCHER_DRAW_ENTRANCE_OPEN:I = 0x1

.field private static final SETTINGS_LAUNCHER_DRAW_ENTRANCE_SWITCH:Ljava/lang/String; = "launcher_draw_entrance_switch"

.field private static final START_BRANCH_SEARCH_ACTION:Ljava/lang/String; = "com.oppo.quicksearchbox.draw.main"

.field public static final TAG:Ljava/lang/String; = "BranchSearchHelper"

.field private static final TAG_BRANCH_SWITCH:Ljava/lang/String; = "oplus_branch_switch"

.field private static final USER_NOTICE_DENIED:I = 0x0

.field private static final USER_NOTICE_PASS_KEY:Ljava/lang/String; = "global_search_user_notice_pass_key"

.field private static mBranchRUSSupport:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final mOplusMarketPackage:Ljava/lang/String;

.field private static final mPlayStorePackage:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/allapps/branch/BranchSearchHelper;

    invoke-direct {v0}, Lcom/android/launcher3/allapps/branch/BranchSearchHelper;-><init>()V

    sput-object v0, Lcom/android/launcher3/allapps/branch/BranchSearchHelper;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchSearchHelper;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/android/launcher3/allapps/branch/BranchSearchHelper;->mBranchRUSSupport:Ljava/util/concurrent/atomic/AtomicBoolean;

    const v0, 0x7f1203de

    invoke-static {v0}, Lcom/android/common/util/BrandComponentUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/allapps/branch/BranchSearchHelper;->mOplusMarketPackage:Ljava/lang/String;

    const v0, 0x7f1203da

    invoke-static {v0}, Lcom/android/common/util/BrandComponentUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/allapps/branch/BranchSearchHelper;->mPlayStorePackage:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/allapps/branch/BranchSearchHelper;->handleBranchSearchPermissionDenied$lambda-2(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/allapps/branch/BranchSearchHelper;->showEmptySearchMarketTips$lambda-4(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;)V

    return-void
.end method

.method public static final branchSearchEnable(Landroid/content/Context;)Z
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "launcher_draw_entrance_switch"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_13

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    return v1
.end method

.method private static final branchSearchUserNoticeDenied(Landroid/content/Context;)Z
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "global_search_user_notice_pass_key"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const-string/jumbo v0, "user notice enable="

    const-string v2, "BranchSearchHelper"

    invoke-static {p0, v0, v2}, Lcom/android/common/config/f;->a(ILjava/lang/String;Ljava/lang/String;)V

    if-nez p0, :cond_16

    const/4 v1, 0x1

    :cond_16
    return v1
.end method

.method public static final enableBranchSearchEnable(Landroid/content/Context;Z)V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "launcher_draw_entrance_switch"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private final getBranchRUSXml(Landroid/content/Context;)Ljava/lang/String;
    .registers 11

    const-string p0, "BranchSearchHelper"

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo p1, "version"

    const-string/jumbo v6, "xml"

    filled-new-array {p1, v6}, [Ljava/lang/String;

    move-result-object v2

    const-string v7, ""

    const/4 v8, 0x0

    :try_start_13
    const-string v1, "content://com.nearme.romupdate.provider.db/update_list"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v3, "filtername=\'oplus_branch_navigator_enabled_config\'"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_4d

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4d

    invoke-interface {v8, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v8, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "cursor.getString(xmlIndex)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_3a} :catch_53
    .catchall {:try_start_13 .. :try_end_3a} :catchall_51

    :try_start_3a
    const-string/jumbo v1, "updateBranchRUS versionIndex = "

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_48} :catch_4a
    .catchall {:try_start_3a .. :try_end_48} :catchall_51

    move-object v7, v0

    goto :goto_4d

    :catch_4a
    move-exception p1

    move-object v7, v0

    goto :goto_54

    :cond_4d
    :goto_4d
    invoke-static {v8}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_5f

    :catchall_51
    move-exception p0

    goto :goto_60

    :catch_53
    move-exception p1

    :goto_54
    :try_start_54
    const-string/jumbo v0, "updateBranchRUS, Exception = "

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5e
    .catchall {:try_start_54 .. :try_end_5e} :catchall_51

    goto :goto_4d

    :goto_5f
    return-object v7

    :goto_60
    invoke-static {v8}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    throw p0
.end method

.method public static final getEmptySearchMarketIntent(Landroid/content/Context;)Landroid/content/Intent;
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/common/util/PackageUtils;->Companion:Lcom/android/common/util/PackageUtils$Companion;

    sget-object v1, Lcom/android/launcher3/allapps/branch/BranchSearchHelper;->mOplusMarketPackage:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/android/common/util/PackageUtils$Companion;->isPackageEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_18
    sget-object v1, Lcom/android/launcher3/allapps/branch/BranchSearchHelper;->mPlayStorePackage:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/android/common/util/PackageUtils$Companion;->isPackageEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_29
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final getEmptySearchMarketString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/allapps/branch/BranchSearchHelper;->mOplusMarketPackage:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, p1, v1, v2}, Lp3/h;->i(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v0

    if-eqz v0, :cond_1d

    const p1, 0x7f1204bf

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1d
    sget-object v0, Lcom/android/launcher3/allapps/branch/BranchSearchHelper;->mPlayStorePackage:Ljava/lang/String;

    invoke-static {v0, p1, v1, v2}, Lp3/h;->i(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result p1

    if-eqz p1, :cond_2d

    const p1, 0x7f1204c0

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2d
    const/4 p0, 0x0

    return-object p0
.end method

.method private final getRusString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 p0, 0x1

    if-eqz p1, :cond_c

    invoke-static {p1}, Lp3/h;->j(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_c

    :cond_a
    const/4 v0, 0x0

    goto :goto_d

    :cond_c
    :goto_c
    move v0, p0

    :goto_d
    if-nez v0, :cond_54

    :try_start_f
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result p1

    :goto_26
    if-eq p1, p0, :cond_54

    const/4 v1, 0x2

    if-ne p1, v1, :cond_43

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "oplus_branch_switch"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_43

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "parser.nextText()"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_43
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p1
    :try_end_47
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f .. :try_end_47} :catch_48

    goto :goto_26

    :catch_48
    move-exception p0

    const-string p1, "failed parsing "

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "BranchSearchHelper"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_54
    const-string p0, ""

    return-object p0
.end method

.method public static final handleBranchSearchPermissionDenied(Landroid/content/Context;)V
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    if-nez v0, :cond_c

    return-void

    :cond_c
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    if-nez v0, :cond_17

    return-void

    :cond_17
    sget-object v1, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v1

    if-nez v1, :cond_20

    return-void

    :cond_20
    invoke-static {p0}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const/4 v1, 0x0

    const-string v2, "denied_times"

    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "deniedTimes="

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "BranchSearchHelper"

    invoke-static {v4, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const/4 v4, 0x1

    add-int/2addr v1, v4

    invoke-interface {v3, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-ne v1, v4, :cond_5a

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "last_denied_time"

    invoke-interface {p0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_5a
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object p0

    if-nez p0, :cond_61

    return-void

    :cond_61
    instance-of v0, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;

    if-eqz v0, :cond_6f

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lb0/a;

    invoke-direct {v1, p0, v4}, Lb0/a;-><init>(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;I)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_6f
    return-void
.end method

.method private static final handleBranchSearchPermissionDenied$lambda-2(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;)V
    .registers 2

    const-string v0, "$allAppsView"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->getColorAppsSearchContainerLayout()Lcom/android/launcher3/allapps/search/OplusSearchUiManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/launcher3/allapps/search/OplusSearchUiManager;->showKeyboard()V

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->getColorAppsSearchContainerLayout()Lcom/android/launcher3/allapps/search/OplusSearchUiManager;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout;

    if-eqz v0, :cond_25

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->getColorAppsSearchContainerLayout()Lcom/android/launcher3/allapps/search/OplusSearchUiManager;

    move-result-object p0

    const-string/jumbo v0, "null cannot be cast to non-null type com.android.launcher3.allapps.search.OplusAppsSearchContainerLayout"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout;->resetQueryHint()V

    :cond_25
    return-void
.end method

.method public static final needOpenWhenNoticeDenied(Landroid/content/Context;)Z
    .registers 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "last_denied_time"

    const-wide/16 v1, 0x0

    invoke-interface {p0, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    const-string v2, "denied_times"

    const/4 v3, 0x0

    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v2, 0x1

    if-nez p0, :cond_20

    return v2

    :cond_20
    if-ne p0, v2, :cond_2c

    sub-long/2addr v4, v0

    const p0, 0xa4cb800

    int-to-long v0, p0

    cmp-long p0, v4, v0

    if-lez p0, :cond_2c

    return v2

    :cond_2c
    return v3
.end method

.method public static final needShowBranchEmptySearchTips(Landroid/content/Context;)Z
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportBranchSearch()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_15

    const-string p0, "BranchSearchHelper"

    const-string/jumbo v0, "not support branch search,return"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_15
    invoke-static {p0}, Lcom/android/launcher3/allapps/branch/BranchSearchHelper;->branchSearchEnable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1c

    return v1

    :cond_1c
    invoke-static {p0}, Lcom/android/launcher3/allapps/branch/BranchSearchHelper;->branchSearchUserNoticeDenied(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_23

    return v1

    :cond_23
    invoke-static {p0}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "empty_search_times"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/16 v3, 0x1e

    if-le v2, v3, :cond_32

    return v1

    :cond_32
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const/4 v4, 0x1

    add-int/2addr v2, v4

    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/16 p0, 0xa

    if-eq v2, p0, :cond_49

    const/16 p0, 0x14

    if-eq v2, p0, :cond_49

    if-ne v2, v3, :cond_4a

    :cond_49
    move v1, v4

    :cond_4a
    return v1
.end method

.method public static final needShowBranchSearchGuide(Landroid/content/Context;)Z
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/launcher3/allapps/branch/BranchSearchHelper;->needStartBranchSearch(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_d

    const/4 p0, 0x0

    return p0

    :cond_d
    invoke-static {p0}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const/4 v0, 0x1

    const-string/jumbo v1, "show_branch_search_guide"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static final needStartBranchSearch(Landroid/content/Context;)Z
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportBranchSearch()Z

    move-result v0

    const-string v1, "BranchSearchHelper"

    const/4 v2, 0x0

    if-nez v0, :cond_15

    const-string/jumbo p0, "not support branch search,return"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_15
    invoke-static {p0}, Lcom/android/launcher3/allapps/branch/BranchSearchHelper;->branchSearchEnable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1c

    return v2

    :cond_1c
    invoke-static {p0}, Lcom/android/launcher3/allapps/branch/BranchSearchHelper;->branchSearchUserNoticeDenied(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-static {p0}, Lcom/android/launcher3/allapps/branch/BranchSearchHelper;->needOpenWhenNoticeDenied(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_29

    return v2

    :cond_29
    const-string/jumbo p0, "need start branch search"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static final showEmptySearchMarketTips()V
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    if-nez v0, :cond_7

    goto :goto_14

    :cond_7
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v0

    if-nez v0, :cond_e

    goto :goto_14

    :cond_e
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    if-nez v0, :cond_16

    :goto_14
    const/4 v0, 0x0

    goto :goto_1a

    :cond_16
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v0

    :goto_1a
    if-nez v0, :cond_1d

    return-void

    :cond_1d
    instance-of v1, v0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;

    if-eqz v1, :cond_37

    move-object v1, v0

    check-cast v1, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->getColorAppsSearchContainerLayout()Lcom/android/launcher3/allapps/search/OplusSearchUiManager;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout;

    if-eqz v1, :cond_37

    sget-object v1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v2, Lb0/a;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lb0/a;-><init>(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;I)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_37
    return-void
.end method

.method private static final showEmptySearchMarketTips$lambda-4(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;)V
    .registers 2

    const-string v0, "$allAppsView"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->getColorAppsSearchContainerLayout()Lcom/android/launcher3/allapps/search/OplusSearchUiManager;

    move-result-object p0

    const-string/jumbo v0, "null cannot be cast to non-null type com.android.launcher3.allapps.search.OplusAppsSearchContainerLayout"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout;->showBranchSearchMarketTips()V

    return-void
.end method

.method public static final startBranchSearch(Landroid/content/Context;Lcom/android/launcher3/Launcher;)V
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "launcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const v1, 0x7f1203df

    invoke-static {v1}, Lcom/android/common/util/BrandComponentUtils;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.oppo.quicksearchbox.draw.main"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_23
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const p0, 0x7f01000c

    const v0, 0x7f010079

    invoke-virtual {p1, p0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V
    :try_end_2f
    .catch Landroid/content/ActivityNotFoundException; {:try_start_23 .. :try_end_2f} :catch_30

    goto :goto_3d

    :catch_30
    move-exception p0

    const-string/jumbo p1, "start branch search exception:"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "BranchSearchHelper"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3d
    return-void
.end method

.method public static final supportBranchSearchByMetadata(Landroid/content/Context;)Z
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "BranchSearchHelper"

    const-string v1, "context"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_8
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const v2, 0x7f1203df

    invoke-static {v2}, Lcom/android/common/util/BrandComponentUtils;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {p0, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0
    :try_end_19
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_19} :catch_42

    const/4 v2, 0x0

    if-nez p0, :cond_1d

    goto :goto_2c

    :cond_1d
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez p0, :cond_22

    goto :goto_2c

    :cond_22
    const-string v2, "launcher_draw_entrance_support"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_2c
    const-string/jumbo p0, "supportBranchSearchByMetadata = "

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    if-nez v2, :cond_3a

    goto :goto_41

    :cond_3a
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p0, :cond_41

    move v1, p0

    :cond_41
    :goto_41
    return v1

    :catch_42
    move-exception p0

    const-string v2, "NameNotFoundException"

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public static final updateBranchRUS(Landroid/content/Context;)V
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/allapps/branch/BranchSearchHelper;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchSearchHelper;

    invoke-direct {v0, p0}, Lcom/android/launcher3/allapps/branch/BranchSearchHelper;->getBranchRUSXml(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/launcher3/allapps/branch/BranchSearchHelper;->getRusString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "updateBranchRUS value = "

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "BranchSearchHelper"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/allapps/branch/BranchSearchHelper;->mBranchRUSSupport:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p0, :cond_2a

    invoke-static {p0}, Lp3/h;->j(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_28

    goto :goto_2a

    :cond_28
    move v3, v1

    goto :goto_2b

    :cond_2a
    :goto_2a
    move v3, v2

    :goto_2b
    if-nez v3, :cond_35

    const-string v3, "1"

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_36

    :cond_35
    move v1, v2

    :cond_36
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method


# virtual methods
.method public final getMBranchRUSSupport()Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    sget-object p0, Lcom/android/launcher3/allapps/branch/BranchSearchHelper;->mBranchRUSSupport:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public final setMBranchRUSSupport(Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .registers 2

    const-string p0, "<set-?>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/android/launcher3/allapps/branch/BranchSearchHelper;->mBranchRUSSupport:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method
