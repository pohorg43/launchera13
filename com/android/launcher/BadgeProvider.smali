.class public Lcom/android/launcher/BadgeProvider;
.super Landroid/content/ContentProvider;
.source ""

# interfaces
.implements Lcom/android/launcher/badge/BadgeDataProviderCompat$BadgeDataCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/BadgeProvider$BadgeItems;,
        Lcom/android/launcher/BadgeProvider$BadgeHelper;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.android.badge"

.field private static final BADGES:I = 0x0

.field private static final BADGE_ID:I = 0x1

.field public static final DATABASE_NAME:Ljava/lang/String; = "badge.db"

.field private static final DOWNLOAD_ACTION:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final DOWNLOAD_INFO:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final ENABLE_GET_DEEP_SHORT_CUT_BADGE_INTERFACE:Ljava/lang/String; = "enable_deep_shortcut_badge_interface"

.field private static final ERROR:I = -0x1

.field private static final EXTRA_APP_BADGE_COUNT:Ljava/lang/String; = "app_badge_count"

.field public static final EXTRA_APP_BADGE_PACKAGENAME:Ljava/lang/String; = "app_badge_packageName"

.field public static final EXTRA_APP_DEEPLINK:Ljava/lang/String; = "app_deeplink"

.field public static final EXTRA_APP_DEEPLINK_ACTION_PARAS:Ljava/lang/String; = "app_deeplink_action_parameters"

.field public static final EXTRA_APP_DEEPLINK_MSG_EXTRA:Ljava/lang/String; = "app_deeplink_msg_extra"

.field public static final EXTRA_APP_DEEPLINK_MSG_ID:Ljava/lang/String; = "app_deeplink_msg_id"

.field public static final EXTRA_APP_DEEPLINK_OUTDATED_TIME:Ljava/lang/String; = "app_deeplink_outdated_time"

.field private static final EXTRA_APP_SHORTCUT_CUSTOM_ID:Ljava/lang/String; = "app_shortcut_custom_id"

.field public static final EXTRA_APP_USER_ID:Ljava/lang/String; = "app_user_id"

.field private static final EXTRA_DEEP_SHORT_CUT_BADGE_COUNT:Ljava/lang/String; = "deep_shortcut_badge_count"

.field private static final EXTRA_DEEP_SHORT_ID:Ljava/lang/String; = "deep_shortcut_id"

.field public static final METHOD_CLEAR_APP_DEEPLINK:Ljava/lang/String; = "clearAppDeeplink"

.field private static final METHOD_ENSURE_DEEP_SHORT_CUT_BADGE_INTERFACE:Ljava/lang/String; = "interfaceForShortcutEnable"

.field private static final METHOD_GET_APP_BADGE_COUNT:Ljava/lang/String; = "getAppBadgeCount"

.field private static final METHOD_GET_DEEP_SHORT_CUT_BADGE_COUNT:Ljava/lang/String; = "getDeepShortcutBadgeCount"

.field private static final METHOD_SET_APP_BADGE_COUNT:Ljava/lang/String; = "setAppBadgeCount"

.field private static final METHOD_SET_APP_DEEPLINK:Ljava/lang/String; = "setAppDeeplink"

.field private static final METHOD_SET_APP_RECOMMEND_PRE_ENABLE:Ljava/lang/String; = "setAppRecommendPreEnable"

.field private static final METHOD_SET_DEEP_SHORT_CUT_BADGE_COUNT:Ljava/lang/String; = "setDeepShortcutBadgeCount"

.field private static final PARAMETER_NOTIFY:Ljava/lang/String; = "notify"

.field private static final PARAMETER_PACKAGENAME:Ljava/lang/String; = "packageName"

.field private static final REQUEST_FEED_BACK:Ljava/lang/String; = "request_feed_back"

.field private static final SQL_WHERE_ID:Ljava/lang/String; = "_id=?"

.field public static final TABLE_NAME:Ljava/lang/String; = "badge"

.field private static final TAG:Ljava/lang/String; = "BadgeProvider"

.field private static final URI_MATCHER:Landroid/content/UriMatcher;


# instance fields
.field private mBadgeDataProviderCompat:Lcom/android/launcher/badge/BadgeDataProviderCompat;

.field private mDbHelper:Lcom/android/launcher/BadgeProvider$BadgeHelper;

.field private mDownloadStateProvider:Landroid/content/ContentProviderClient;

.field private mIsLauncherChannel:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/launcher/BadgeProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.android.badge"

    const-string v2, "badge"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "badge/#"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "downloadinfos"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "downloadInstallApps"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher/BadgeProvider;->mIsLauncherChannel:Z

    return-void
.end method

.method private dbInsertAndCheck(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .registers 10

    iget-object v0, p0, Lcom/android/launcher/BadgeProvider;->mDbHelper:Lcom/android/launcher/BadgeProvider$BadgeHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "badge"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_58

    const-wide/16 v1, -0x1

    if-nez p3, :cond_13

    return-wide v1

    :cond_13
    iget-boolean v3, p0, Lcom/android/launcher/BadgeProvider;->mIsLauncherChannel:Z

    if-nez v3, :cond_47

    const-string v3, "app_package_name"

    invoke-virtual {p3, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_47

    invoke-virtual {p3, v3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/common/util/PackageUtils;->isThirdPartApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_47

    if-nez v4, :cond_47

    const-string p0, "BadgeProvider"

    const-string p1, "in case security :bad guys may handle DB by illegal ways!"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v1

    :cond_47
    const-string p0, "_id"

    invoke-virtual {p3, p0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_50

    goto :goto_58

    :cond_50
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Error: attempting to add item without specifying an id"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_58
    :goto_58
    invoke-virtual {v0, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p0

    return-wide p0
.end method

.method private getBadgeCount(Ljava/lang/String;Landroid/os/UserHandle;)I
    .registers 14

    const-string v0, "BadgeProvider"

    const/4 v1, -0x1

    const/4 v2, 0x0

    :try_start_4
    iget-object p0, p0, Lcom/android/launcher/BadgeProvider;->mDbHelper:Lcom/android/launcher/BadgeProvider$BadgeHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "app_package_name=\'"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' AND "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "user_id"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v4, "badge"

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-nez v2, :cond_4a

    const-string p0, "Badge"

    const-string p1, "getBadgeCount: query cursor = null"

    invoke-static {p0, v0, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_46} :catch_6f
    .catchall {:try_start_4 .. :try_end_46} :catchall_6d

    invoke-static {v2}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    return v1

    :cond_4a
    :try_start_4a
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result p0

    if-lez p0, :cond_64

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result p0

    if-eqz p0, :cond_69

    const-string p0, "app_badge_count"

    invoke-interface {v2, p0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p0

    invoke-interface {v2, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_60} :catch_6f
    .catchall {:try_start_4a .. :try_end_60} :catchall_6d

    invoke-static {v2}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    return p0

    :cond_64
    :try_start_64
    const-string p0, "getBadgeCount: there is no columns in DataBase --!  = "

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_69} :catch_6f
    .catchall {:try_start_64 .. :try_end_69} :catchall_6d

    :cond_69
    invoke-static {v2}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    return v1

    :catchall_6d
    move-exception p0

    goto :goto_88

    :catch_6f
    move-exception p0

    :try_start_70
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getBadgeCount: exception: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_84
    .catchall {:try_start_70 .. :try_end_84} :catchall_6d

    invoke-static {v2}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    return v1

    :goto_88
    invoke-static {v2}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    throw p0
.end method

.method private getUserHandle(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/UserHandle;
    .registers 5

    new-instance v0, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/common/util/PackageUtils;->isThirdPartApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_22

    const-string p0, "app_user_id"

    invoke-virtual {p2, p0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    const/16 p1, 0x3e7

    if-ne p0, p1, :cond_22

    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, p1}, Landroid/os/UserHandle;-><init>(I)V

    :cond_22
    return-object v0
.end method

.method private insertBadgeItem(Ljava/lang/String;ILandroid/os/UserHandle;)V
    .registers 7

    invoke-virtual {p0}, Lcom/android/launcher/BadgeProvider;->generateNewId()J

    move-result-wide v0

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "_id"

    invoke-virtual {v2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "app_package_name"

    invoke-virtual {v2, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "app_badge_count"

    invoke-virtual {v2, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo p2, "user_id"

    invoke-virtual {v2, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object p1, Lcom/android/launcher/BadgeProvider$BadgeItems;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, p1, v2}, Lcom/android/launcher/BadgeProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    return-void
.end method

.method private isPackageNameInBadgeSupportList(Ljava/lang/String;)Z
    .registers 4

    invoke-static {}, Lcom/android/launcher3/dot/DotUtils;->hasBadgeSupportPackagesUpdated()Z

    move-result p0

    if-eqz p0, :cond_17

    invoke-static {p1}, Lcom/android/launcher3/dot/DotUtils;->isPackageInBadgeSupportList(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_17

    const-string p0, "call packageName is not in badge support list, packageName = "

    const-string v0, "Badge"

    const-string v1, "BadgeProvider"

    invoke-static {p0, p1, v0, v1}, Lcom/android/launcher/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_17
    const/4 p0, 0x1

    return p0
.end method

.method public static myUserSerialNumber(Landroid/content/Context;)J
    .registers 3

    if-nez p0, :cond_d

    const-string p0, "BadgeProvider"

    const-string/jumbo v0, "myUserSerialNumber. The context is null!"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_d
    const-string/jumbo v0, "user"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v0

    return-wide v0
.end method

.method private sendNotify(Landroid/net/Uri;Ljava/lang/String;)V
    .registers 5

    const-string/jumbo v0, "notify"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    const-string/jumbo v1, "true"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_46

    :cond_12
    if-eqz p2, :cond_24

    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    if-eqz v0, :cond_24

    const-string/jumbo p1, "packageName"

    invoke-virtual {v0, p1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    :cond_24
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p2

    if-eqz p2, :cond_46

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const v0, 0x8000

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v1, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;I)V

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p1, Lcom/android/launcher/OplusFavoritesProvider;->AUTHORITY_URI:Landroid/net/Uri;

    invoke-virtual {p0, p1, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_46
    return-void
.end method

.method private updateBadgeItem(Ljava/lang/String;ILandroid/database/Cursor;)V
    .registers 6

    const-string v0, "_id"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p3

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "app_package_name"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "app_badge_count"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object p1, Lcom/android/launcher/BadgeProvider$BadgeItems;->CONTENT_URI:Landroid/net/Uri;

    const-string p2, "_id="

    invoke-static {p2, p3}, Landroid/support/v4/media/b;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/launcher/BadgeProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private updateBadgeNum(Ljava/lang/String;ILandroid/os/UserHandle;ZI)V
    .registers 12

    iget-object v0, p0, Lcom/android/launcher/BadgeProvider;->mBadgeDataProviderCompat:Lcom/android/launcher/badge/BadgeDataProviderCompat;

    if-eqz v0, :cond_d

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher/badge/BadgeDataProviderCompat;->updateAppBadgeNum(Ljava/lang/String;ILandroid/os/UserHandle;ZI)V

    goto :goto_15

    :cond_d
    const-string p0, "BadgeProvider"

    const-string/jumbo p1, "updateAppBadgeNum -- mBadgeDataProviderCompat = null"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_15
    return-void
.end method

.method private updateBadgeNumForShortcut(Ljava/lang/String;ILandroid/os/UserHandle;I)V
    .registers 5

    iget-object p0, p0, Lcom/android/launcher/BadgeProvider;->mBadgeDataProviderCompat:Lcom/android/launcher/badge/BadgeDataProviderCompat;

    if-eqz p0, :cond_8

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/launcher/badge/BadgeDataProviderCompat;->updateAppBadgeNumForShortcut(Ljava/lang/String;ILandroid/os/UserHandle;I)V

    goto :goto_10

    :cond_8
    const-string p0, "BadgeProvider"

    const-string/jumbo p1, "updateBadgeNumForShortcut -- mBadgeDataProviderCompat = null"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_10
    return-void
.end method

.method private updateOrInsertBadgeCount(Ljava/lang/String;ILandroid/os/UserHandle;I)Z
    .registers 23

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    move/from16 v1, p2

    const-string v8, "BadgeProvider"

    const/4 v9, 0x0

    if-gez v1, :cond_12

    const-string/jumbo v0, "updateOrInsertBadgeCount badgeCount < 0"

    invoke-static {v8, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v9

    :cond_12
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateOrInsertBadgeCount packageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v9

    :cond_2e
    const/16 v2, 0x3e8

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v1, 0x0

    :try_start_35
    iget-object v2, v7, Lcom/android/launcher/BadgeProvider;->mDbHelper:Lcom/android/launcher/BadgeProvider$BadgeHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "app_package_name=\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\' AND "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "user_id"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v11, "badge"

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v10 .. v17}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_70} :catch_101
    .catchall {:try_start_35 .. :try_end_70} :catchall_ff

    if-nez v10, :cond_7e

    :try_start_72
    const-string/jumbo v0, "updateOrInsertBadgeCount query cursor = null"

    invoke-static {v8, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_78} :catch_fc
    .catchall {:try_start_72 .. :try_end_78} :catchall_f9

    iput-boolean v9, v7, Lcom/android/launcher/BadgeProvider;->mIsLauncherChannel:Z

    invoke-static {v10}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    return v9

    :cond_7e
    const/4 v11, 0x1

    :try_start_7f
    iput-boolean v11, v7, Lcom/android/launcher/BadgeProvider;->mIsLauncherChannel:Z

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_bb

    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_b7

    const-string v1, "app_badge_count"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eq v3, v1, :cond_9c

    move v1, v11

    :goto_9a
    move v2, v1

    goto :goto_b5

    :cond_9c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateOrInsertBadgeCount -- same badge count! dbBadgeCount = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v9, v7, Lcom/android/launcher/BadgeProvider;->mIsLauncherChannel:Z

    move v1, v9

    goto :goto_9a

    :goto_b5
    move v4, v9

    goto :goto_c2

    :cond_b7
    move v1, v9

    move v2, v1

    move v4, v2

    goto :goto_c2

    :cond_bb
    if-eqz v3, :cond_bf

    move v2, v11

    goto :goto_c0

    :cond_bf
    move v2, v9

    :goto_c0
    move v1, v11

    move v4, v1

    :goto_c2
    if-eqz v1, :cond_f3

    if-eqz v2, :cond_d8

    invoke-virtual/range {p3 .. p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/launcher3/dot/DotMcsDeeplinkHelper;->getPkgUserKey(Ljava/lang/String;I)Lcom/android/launcher3/util/PackageUserKey;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/launcher3/dot/DotMcsDeeplinkHelper;->clearDeeplinkForDotInfoIfNeeded(Lcom/android/launcher3/util/PackageUserKey;Landroid/content/Context;)Z

    move-result v1

    move v5, v1

    goto :goto_d9

    :cond_d8
    move v5, v9

    :goto_d9
    if-eqz v4, :cond_e1

    move-object/from16 v4, p3

    invoke-direct {v7, v0, v3, v4}, Lcom/android/launcher/BadgeProvider;->insertBadgeItem(Ljava/lang/String;ILandroid/os/UserHandle;)V

    goto :goto_e6

    :cond_e1
    move-object/from16 v4, p3

    invoke-direct {v7, v0, v3, v10}, Lcom/android/launcher/BadgeProvider;->updateBadgeItem(Ljava/lang/String;ILandroid/database/Cursor;)V

    :goto_e6
    iput-boolean v9, v7, Lcom/android/launcher/BadgeProvider;->mIsLauncherChannel:Z

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p3

    move/from16 v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher/BadgeProvider;->updateBadgeNum(Ljava/lang/String;ILandroid/os/UserHandle;ZI)V
    :try_end_f3
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_f3} :catch_fc
    .catchall {:try_start_7f .. :try_end_f3} :catchall_f9

    :cond_f3
    iput-boolean v9, v7, Lcom/android/launcher/BadgeProvider;->mIsLauncherChannel:Z

    invoke-static {v10}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    return v11

    :catchall_f9
    move-exception v0

    move-object v1, v10

    goto :goto_11d

    :catch_fc
    move-exception v0

    move-object v1, v10

    goto :goto_102

    :catchall_ff
    move-exception v0

    goto :goto_11d

    :catch_101
    move-exception v0

    :goto_102
    :try_start_102
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateOrInsertBadgeCount: exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_117
    .catchall {:try_start_102 .. :try_end_117} :catchall_ff

    iput-boolean v9, v7, Lcom/android/launcher/BadgeProvider;->mIsLauncherChannel:Z

    invoke-static {v1}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    return v9

    :goto_11d
    iput-boolean v9, v7, Lcom/android/launcher/BadgeProvider;->mIsLauncherChannel:Z

    invoke-static {v1}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    throw v0
.end method

.method private updateOrInsertBadgeCountForShortcut(Ljava/lang/String;ILandroid/os/UserHandle;I)Z
    .registers 23

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    const-string/jumbo v5, "user_id"

    const-string v6, "BadgeProvider"

    const/4 v7, 0x0

    if-gez v2, :cond_19

    const-string/jumbo v0, "updateOrInsertBadgeCountForShortcut badgeCount < 0"

    invoke-static {v6, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v7

    :cond_19
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_35

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateOrInsertBadgeCountForShortcut packageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v7

    :cond_35
    const/16 v8, 0x3e8

    invoke-static {v2, v8}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v8, 0x0

    :try_start_3c
    iget-object v9, v1, Lcom/android/launcher/BadgeProvider;->mDbHelper:Lcom/android/launcher/BadgeProvider$BadgeHelper;

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "app_package_name=\'"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "\' AND "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v11, "badge"

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v10 .. v17}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_74} :catch_129
    .catchall {:try_start_3c .. :try_end_74} :catchall_127

    if-nez v9, :cond_82

    :try_start_76
    const-string/jumbo v0, "updateOrInsertBadgeCountForShortcut query cursor = null"

    invoke-static {v6, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_7c} :catch_124
    .catchall {:try_start_76 .. :try_end_7c} :catchall_121

    iput-boolean v7, v1, Lcom/android/launcher/BadgeProvider;->mIsLauncherChannel:Z

    invoke-static {v9}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    return v7

    :cond_82
    const/4 v10, 0x1

    :try_start_83
    iput-boolean v10, v1, Lcom/android/launcher/BadgeProvider;->mIsLauncherChannel:Z

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v11
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_89} :catch_124
    .catchall {:try_start_83 .. :try_end_89} :catchall_121

    const-string v12, "app_package_name"

    const-string v13, "_id"

    const-string v14, "app_badge_count"

    if-lez v11, :cond_ec

    :try_start_91
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_11b

    invoke-interface {v9, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eq v2, v5, :cond_d4

    invoke-interface {v9, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v11, v12, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v14, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v12, Lcom/android/launcher/BadgeProvider$BadgeItems;->CONTENT_URI:Landroid/net/Uri;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "_id="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v12, v11, v5, v8}, Lcom/android/launcher/BadgeProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    iput-boolean v7, v1, Lcom/android/launcher/BadgeProvider;->mIsLauncherChannel:Z

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/android/launcher/BadgeProvider;->updateBadgeNumForShortcut(Ljava/lang/String;ILandroid/os/UserHandle;I)V

    goto :goto_11b

    :cond_d4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateOrInsertBadgeCountForShortcut -- same badge count! dbBadgeCount = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v7, v1, Lcom/android/launcher/BadgeProvider;->mIsLauncherChannel:Z

    goto :goto_11b

    :cond_ec
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher/BadgeProvider;->generateNewId()J

    move-result-wide v15

    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v8, v13, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {v8, v12, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v14, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v5, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v5, Lcom/android/launcher/BadgeProvider$BadgeItems;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v5, v8}, Lcom/android/launcher/BadgeProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    iput-boolean v7, v1, Lcom/android/launcher/BadgeProvider;->mIsLauncherChannel:Z

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/android/launcher/BadgeProvider;->updateBadgeNumForShortcut(Ljava/lang/String;ILandroid/os/UserHandle;I)V
    :try_end_11b
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_11b} :catch_124
    .catchall {:try_start_91 .. :try_end_11b} :catchall_121

    :cond_11b
    :goto_11b
    iput-boolean v7, v1, Lcom/android/launcher/BadgeProvider;->mIsLauncherChannel:Z

    invoke-static {v9}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    return v10

    :catchall_121
    move-exception v0

    move-object v8, v9

    goto :goto_145

    :catch_124
    move-exception v0

    move-object v8, v9

    goto :goto_12a

    :catchall_127
    move-exception v0

    goto :goto_145

    :catch_129
    move-exception v0

    :goto_12a
    :try_start_12a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateOrInsertBadgeCountForShortcut: exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13f
    .catchall {:try_start_12a .. :try_end_13f} :catchall_127

    iput-boolean v7, v1, Lcom/android/launcher/BadgeProvider;->mIsLauncherChannel:Z

    invoke-static {v8}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    return v7

    :goto_145
    iput-boolean v7, v1, Lcom/android/launcher/BadgeProvider;->mIsLauncherChannel:Z

    invoke-static {v8}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    throw v0
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 28
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "call method = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", arg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BadgeProvider"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "setAppBadgeCount"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, ", badgeCount = "

    const-string v3, "app_badge_count"

    const-string v4, "call is shortcut, so return, extras: "

    const-string v5, "app_shortcut_custom_id"

    const-string v10, "app_badge_packageName"

    const-string v11, "call packageName = "

    const-string v12, ", userHandle = "

    const-string v13, "extras is null!"

    const-string v14, "Badge"

    const/4 v15, 0x0

    if-eqz v0, :cond_bd

    if-eqz v9, :cond_b9

    invoke-virtual {v9, v5}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_5d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v15

    :cond_5d
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/android/common/util/PackageUtils;->isThirdPartApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_76

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_76

    move-object v0, v4

    :cond_76
    invoke-virtual {v9, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    new-instance v4, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v6, v0}, Lcom/android/launcher/BadgeProvider;->isPackageNameInBadgeSupportList(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a8

    return-object v15

    :cond_a8
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {v6, v0, v3, v4, v2}, Lcom/android/launcher/BadgeProvider;->updateOrInsertBadgeCount(Ljava/lang/String;ILandroid/os/UserHandle;I)Z

    move-result v2

    if-nez v2, :cond_b8

    const-string v2, "call setAppBadgeCount failed, packageName = "

    invoke-static {v2, v0, v14, v1}, Lcom/android/launcher/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v15

    :cond_b8
    return-object v9

    :cond_b9
    invoke-static {v1, v13}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_109

    :cond_bd
    const-string/jumbo v0, "setAppRecommendPreEnable"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_109

    invoke-static {}, Lcom/android/common/util/PackageCompatUtils;->getMarketPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v15

    invoke-static {v0, v15}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f5

    const-string v0, "enable"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v15}, Lcom/android/launcher/folder/recommend/SwitchManageHelper;->getInstance(Landroid/content/Context;)Lcom/android/launcher/folder/recommend/SwitchManageHelper;

    move-result-object v15

    invoke-virtual {v15, v0}, Lcom/android/launcher/folder/recommend/SwitchManageHelper;->setAppStorePreEnable(Z)V

    invoke-static {}, Lcom/android/common/config/FeatureOption;->isRLMDevice()Z

    move-result v15

    if-eqz v15, :cond_109

    sget-object v15, Lcom/android/launcher/folder/recommend/RFolderRecommendHelper;->INSTANCE:Lcom/android/launcher/folder/recommend/RFolderRecommendHelper;

    invoke-virtual {v15, v0}, Lcom/android/launcher/folder/recommend/RFolderRecommendHelper;->enableFolderContentRecommend(Z)V

    goto :goto_109

    :cond_f5
    const-string v0, "Illegal calling package!"

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_109
    :goto_109
    const-string v0, "getAppBadgeCount"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v15, "BadgeProvidergetAppBadgeCount"

    if-eqz v0, :cond_186

    if-eqz v9, :cond_183

    invoke-virtual {v9, v5}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_12f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :cond_12f
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/common/util/PackageUtils;->isThirdPartApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_148

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_148

    move-object v0, v1

    :cond_148
    new-instance v1, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v15, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v6, v0}, Lcom/android/launcher/BadgeProvider;->isPackageNameInBadgeSupportList(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_171

    const/4 v0, 0x0

    return-object v0

    :cond_171
    const/4 v2, 0x0

    invoke-direct {v6, v0, v1}, Lcom/android/launcher/BadgeProvider;->getBadgeCount(Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_182

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v1

    :cond_182
    return-object v2

    :cond_183
    invoke-static {v15, v13}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_186
    const-string/jumbo v0, "setDeepShortcutBadgeCount"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v8, "deep_shortcut_id"

    move-object/from16 v16, v3

    const-string v3, "BadgeProvidergetDeepShortcutBadgeCount"

    move-object/from16 v17, v10

    const-string v10, "deep_shortcut_badge_count"

    if-eqz v0, :cond_225

    if-eqz v9, :cond_222

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/android/common/util/PackageUtils;->isThirdPartApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1b4

    invoke-virtual {v9, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1b4

    move-object v0, v4

    :cond_1b4
    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    new-instance v5, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v7

    invoke-direct {v5, v7}, Landroid/os/UserHandle;-><init>(I)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v3, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {v6, v0, v4, v5, v2}, Lcom/android/launcher/BadgeProvider;->updateOrInsertBadgeCountForShortcut(Ljava/lang/String;ILandroid/os/UserHandle;I)Z

    move-result v2

    const-string/jumbo v3, "request_feed_back"

    if-nez v2, :cond_211

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "call setDeepShortcutBadgeCount failed, packageName = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "false"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "setDeepShortcutBadgeCount failed!!"

    invoke-static {v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_211
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "OK"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "setDeepShortcutBadgeCount successlly!!"

    invoke-static {v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_222
    invoke-static {v1, v13}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_225
    const-string v0, "getDeepShortcutBadgeCount"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29d

    if-eqz v9, :cond_29a

    invoke-virtual {v9, v5}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_249

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :cond_249
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/common/util/PackageUtils;->isThirdPartApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_262

    invoke-virtual {v9, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_262

    move-object v0, v2

    :cond_262
    new-instance v2, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v15, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v6, v0, v2}, Lcom/android/launcher/BadgeProvider;->getBadgeCount(Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_298

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v2, v10, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "getDeepShortcutBadgeCount value is : "

    invoke-static {v3, v0, v1}, Lcom/android/common/util/h;->a(Ljava/lang/String;ILjava/lang/String;)V

    return-object v2

    :cond_298
    const/4 v0, 0x0

    return-object v0

    :cond_29a
    invoke-static {v15, v13}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_29d
    const-string v0, "interfaceForShortcutEnable"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_2b6

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "enable_deep_shortcut_badge_interface"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "enable_deep_shortcut_badge_interface is enable"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_2b6
    const-string/jumbo v0, "setAppDeeplink"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_400

    if-eqz v9, :cond_3fa

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v5, v17

    invoke-virtual {v9, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v0, v9}, Lcom/android/launcher/BadgeProvider;->getUserHandle(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/UserHandle;

    move-result-object v7

    const-string v8, "app_deeplink"

    invoke-virtual {v9, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v8, "app_deeplink_msg_id"

    invoke-virtual {v9, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v10, "app_deeplink_msg_extra"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "app_deeplink_action_parameters"

    invoke-virtual {v9, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v13, "app_deeplink_outdated_time"

    invoke-virtual {v9, v13}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v22

    move-object/from16 v13, v16

    invoke-virtual {v9, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    if-eqz v18, :cond_301

    if-eqz v8, :cond_301

    if-eqz v10, :cond_301

    const-wide/16 v14, 0x0

    cmp-long v14, v22, v14

    if-eqz v14, :cond_301

    move v4, v3

    :cond_301
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Lcom/android/launcher3/dot/OplusMcsUtil;->getMcsPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_317

    const-string/jumbo v0, "setAppDeeplink: Caller is not mcs."

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :cond_317
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v14

    if-eqz v14, :cond_339

    const-string/jumbo v14, "setAppDeeplink call packageName = "

    const-string v15, ", callingPackage = "

    invoke-static {v14, v5, v15, v0, v2}, Ld/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_339
    if-eqz v4, :cond_3f3

    if-eqz v11, :cond_35c

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_35c

    :try_start_343
    invoke-static {v11}, Lcom/android/launcher3/dot/DotMcsDeeplinkHelper;->parseActionParamsMap(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0
    :try_end_347
    .catch Ljava/lang/Exception; {:try_start_343 .. :try_end_347} :catch_34b

    const/4 v2, 0x0

    move-object/from16 v21, v0

    goto :goto_35f

    :catch_34b
    const-string/jumbo v0, "setAppDeeplink: Failed to parse action parameters."

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/dot/OplusMcsUtil$McsStatus;->MCS_DEEPLINK_ERROR:Lcom/android/launcher3/dot/OplusMcsUtil$McsStatus;

    invoke-static {v0, v8, v10, v1}, Lcom/android/launcher3/dot/OplusMcsUtil;->notifyMcsStatus(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/launcher3/dot/OplusMcsUtil$McsStatus;)V

    const/4 v0, 0x0

    return-object v0

    :cond_35c
    const/4 v2, 0x0

    move-object/from16 v21, v2

    :goto_35f
    invoke-direct {v6, v5}, Lcom/android/launcher/BadgeProvider;->isPackageNameInBadgeSupportList(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_36f

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/dot/OplusMcsUtil$McsStatus;->MCS_DEEPLINK_ERROR:Lcom/android/launcher3/dot/OplusMcsUtil$McsStatus;

    invoke-static {v0, v8, v10, v1}, Lcom/android/launcher3/dot/OplusMcsUtil;->notifyMcsStatus(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/launcher3/dot/OplusMcsUtil$McsStatus;)V

    return-object v2

    :cond_36f
    invoke-direct {v6, v5, v7}, Lcom/android/launcher/BadgeProvider;->getBadgeCount(Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setAppDeeplink: dbBadgeCount: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", badgeCount: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-gtz v0, :cond_394

    if-eq v13, v3, :cond_39a

    :cond_394
    if-lez v0, :cond_3cf

    add-int/lit8 v2, v13, -0x1

    if-ne v0, v2, :cond_3cf

    :cond_39a
    invoke-virtual {v7}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-static {v5, v0}, Lcom/android/launcher3/dot/DotMcsDeeplinkHelper;->getPkgUserKey(Ljava/lang/String;I)Lcom/android/launcher3/util/PackageUserKey;

    move-result-object v17

    move-object/from16 v19, v8

    move-object/from16 v20, v10

    invoke-static/range {v17 .. v23}, Lcom/android/launcher3/dot/DotMcsDeeplinkHelper;->setDeeplinkForDotInfo(Lcom/android/launcher3/util/PackageUserKey;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;J)Z

    move-result v0

    if-eqz v0, :cond_3c5

    add-int/lit8 v2, v13, -0x1

    const/4 v4, 0x1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v3, v7

    move v5, v11

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher/BadgeProvider;->updateBadgeNum(Ljava/lang/String;ILandroid/os/UserHandle;ZI)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/dot/OplusMcsUtil$McsStatus;->MCS_DEEPLINK_SUCCESS:Lcom/android/launcher3/dot/OplusMcsUtil$McsStatus;

    invoke-static {v0, v8, v10, v1}, Lcom/android/launcher3/dot/OplusMcsUtil;->notifyMcsStatus(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/launcher3/dot/OplusMcsUtil$McsStatus;)V

    goto :goto_3f9

    :cond_3c5
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/dot/OplusMcsUtil$McsStatus;->MCS_DEEPLINK_ERROR:Lcom/android/launcher3/dot/OplusMcsUtil$McsStatus;

    invoke-static {v0, v8, v10, v1}, Lcom/android/launcher3/dot/OplusMcsUtil;->notifyMcsStatus(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/launcher3/dot/OplusMcsUtil$McsStatus;)V

    goto :goto_3f9

    :cond_3cf
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAppDeeplink: badgeCount("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") is not allowed."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/dot/OplusMcsUtil$McsStatus;->MCS_DEEPLINK_ERROR:Lcom/android/launcher3/dot/OplusMcsUtil$McsStatus;

    invoke-static {v0, v8, v10, v1}, Lcom/android/launcher3/dot/OplusMcsUtil;->notifyMcsStatus(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/launcher3/dot/OplusMcsUtil$McsStatus;)V

    goto :goto_3f9

    :cond_3f3
    const-string/jumbo v0, "setAppDeeplink: deeplink is not validated."

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3f9
    return-object v9

    :cond_3fa
    move-object/from16 v5, v17

    invoke-static {v14, v1, v13}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_402

    :cond_400
    move-object/from16 v5, v17

    :goto_402
    const-string v0, "clearAppDeeplink"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_464

    if-eqz v9, :cond_45f

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_417

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_419

    :cond_417
    const-string v0, ""

    :goto_419
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v1, v9}, Lcom/android/launcher/BadgeProvider;->getUserHandle(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/android/launcher3/dot/OplusMcsUtil;->getMcsPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_43b

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43a

    goto :goto_43b

    :cond_43a
    move v3, v4

    :cond_43b
    :goto_43b
    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v3, v2, v0, v1}, Lcom/android/launcher3/dot/DotMcsDeeplinkHelper;->clearDeeplink(ZLjava/lang/String;ILandroid/content/Context;)Z

    if-eqz v3, :cond_464

    invoke-direct {v6, v2, v5}, Lcom/android/launcher/BadgeProvider;->getBadgeCount(Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v0

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/4 v4, 0x1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    move-object/from16 v0, p0

    move-object v1, v2

    move v2, v3

    move-object v3, v5

    move v5, v8

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher/BadgeProvider;->updateBadgeNum(Ljava/lang/String;ILandroid/os/UserHandle;ZI)V

    goto :goto_464

    :cond_45f
    const-string v0, "BadgeProviderclearAppDeeplink"

    invoke-static {v14, v0, v13}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_464
    :goto_464
    invoke-super/range {p0 .. p3}, Landroid/content/ContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 15
    .param p1  # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/android/launcher/BadgeProvider;->mDbHelper:Lcom/android/launcher/BadgeProvider$BadgeHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sget-object v1, Lcom/android/launcher/BadgeProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    const-string v2, "BadgeProvider"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_5b

    if-eq v1, v4, :cond_5b

    const/4 v0, 0x2

    if-eq v1, v0, :cond_1c

    const/4 v0, 0x3

    if-eq v1, v0, :cond_1c

    goto/16 :goto_d9

    :cond_1c
    iget-object v0, p0, Lcom/android/launcher/BadgeProvider;->mDownloadStateProvider:Landroid/content/ContentProviderClient;

    if-eqz v0, :cond_d9

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    :try_start_28
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    const-string v1, "com.android.launcher.download.DownloadStateProvider"

    invoke-virtual {p1, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    const-string/jumbo v1, "oriCallingPackage"

    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher/BadgeProvider;->mDownloadStateProvider:Landroid/content/ContentProviderClient;

    invoke-virtual {p0, p1, p2, p3}, Landroid/content/ContentProviderClient;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_43} :catch_4b
    .catchall {:try_start_28 .. :try_end_43} :catchall_49

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v3, p0

    goto/16 :goto_d9

    :catchall_49
    move-exception p0

    goto :goto_57

    :catch_4b
    move-exception p0

    :try_start_4c
    const-string/jumbo p1, "remote failed!"

    invoke-static {v2, p1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_52
    .catchall {:try_start_4c .. :try_end_52} :catchall_49

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_d9

    :goto_57
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_5b
    if-ne v1, v4, :cond_6b

    new-array p3, v4, [Ljava/lang/String;

    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p3, v3

    const-string p2, "_id=?"

    :cond_6b
    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v1, 0x0

    move-object v5, p0

    move-object v6, p1

    move-object v8, p2

    move-object v9, p3

    :try_start_72
    invoke-virtual/range {v5 .. v10}, Lcom/android/launcher/BadgeProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_76} :catch_c4
    .catchall {:try_start_72 .. :try_end_76} :catchall_c2

    const/4 v6, -0x1

    if-nez v5, :cond_7f

    if-eqz v5, :cond_7e

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_7e
    return v6

    :cond_7f
    :try_start_7f
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-lez v7, :cond_b9

    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_cb

    const-string v7, "app_package_name"

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/common/util/PackageUtils;->isThirdPartApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_a4

    move v3, v4

    :cond_a4
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_cb

    if-nez v3, :cond_cb

    const-string v3, "in case security :bad guys may handle DB by illegal ways!"

    invoke-static {v2, v3}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b5
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_b5} :catch_c0
    .catchall {:try_start_7f .. :try_end_b5} :catchall_da

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    return v6

    :cond_b9
    :try_start_b9
    const-string/jumbo v3, "there is no colums in DataBase --!  = "

    invoke-static {v2, v3}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_bf
    .catch Ljava/lang/Exception; {:try_start_b9 .. :try_end_bf} :catch_c0
    .catchall {:try_start_b9 .. :try_end_bf} :catchall_da

    goto :goto_cb

    :catch_c0
    move-exception v2

    goto :goto_c6

    :catchall_c2
    move-exception p0

    goto :goto_dc

    :catch_c4
    move-exception v2

    move-object v5, v1

    :goto_c6
    :try_start_c6
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_c9
    .catchall {:try_start_c6 .. :try_end_c9} :catchall_da

    if-eqz v5, :cond_ce

    :cond_cb
    :goto_cb
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_ce
    const-string v2, "badge"

    invoke-virtual {v0, v2, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_d9

    invoke-direct {p0, p1, v1}, Lcom/android/launcher/BadgeProvider;->sendNotify(Landroid/net/Uri;Ljava/lang/String;)V

    :cond_d9
    :goto_d9
    return v3

    :catchall_da
    move-exception p0

    move-object v1, v5

    :goto_dc
    if-eqz v1, :cond_e1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_e1
    throw p0
.end method

.method public generateNewId()J
    .registers 3

    iget-object p0, p0, Lcom/android/launcher/BadgeProvider;->mDbHelper:Lcom/android/launcher/BadgeProvider$BadgeHelper;

    invoke-virtual {p0}, Lcom/android/launcher/BadgeProvider$BadgeHelper;->generateNewId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 3
    .param p1  # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object p0, Lcom/android/launcher/BadgeProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {p0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p0

    if-eqz p0, :cond_29

    const/4 v0, 0x1

    if-eq p0, v0, :cond_25

    const/4 v0, 0x2

    if-eq p0, v0, :cond_21

    const/4 v0, 0x3

    if-ne p0, v0, :cond_15

    const-string/jumbo p0, "vnd.android.cursor.dir/downloadInstallApps"

    return-object p0

    :cond_15
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unknown URI: "

    invoke-static {v0, p1}, Landroidx/appcompat/widget/c;->a(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_21
    const-string/jumbo p0, "vnd.android.cursor.dir/downloadinfos"

    return-object p0

    :cond_25
    const-string/jumbo p0, "vnd.android.cursor.item/badge"

    return-object p0

    :cond_29
    const-string/jumbo p0, "vnd.android.cursor.dir/badge"

    return-object p0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 9
    .param p1  # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "insert->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BadgeProvider"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher/BadgeProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_77

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3a

    const/4 v3, 0x3

    if-eq v0, v3, :cond_3a

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Illegal uri: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_96

    :cond_3a
    iget-object v0, p0, Lcom/android/launcher/BadgeProvider;->mDownloadStateProvider:Landroid/content/ContentProviderClient;

    if-eqz v0, :cond_96

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    :try_start_46
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    const-string v5, "com.android.launcher.download.DownloadStateProvider"

    invoke-virtual {p1, v5}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    const-string/jumbo v5, "oriCallingPackage"

    invoke-virtual {p1, v5, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher/BadgeProvider;->mDownloadStateProvider:Landroid/content/ContentProviderClient;

    invoke-virtual {p0, p1, p2}, Landroid/content/ContentProviderClient;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p0
    :try_end_61
    .catch Landroid/os/RemoteException; {:try_start_46 .. :try_end_61} :catch_68
    .catchall {:try_start_46 .. :try_end_61} :catchall_66

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object p1, p0

    goto :goto_97

    :catchall_66
    move-exception p0

    goto :goto_73

    :catch_68
    move-exception p0

    :try_start_69
    const-string/jumbo p1, "remote failed!"

    invoke-static {v1, p1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6f
    .catchall {:try_start_69 .. :try_end_6f} :catchall_66

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_96

    :goto_73
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_77
    const-string v0, "badge"

    invoke-direct {p0, v0, v2, p2}, Lcom/android/launcher/BadgeProvider;->dbInsertAndCheck(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    if-lez v0, :cond_96

    const-string v0, "app_package_name"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_92

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    :cond_92
    invoke-direct {p0, p1, v2}, Lcom/android/launcher/BadgeProvider;->sendNotify(Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_97

    :cond_96
    :goto_96
    move-object p1, v2

    :goto_97
    return-object p1
.end method

.method public onCreate()Z
    .registers 3

    const-string v0, "BadgeProvider"

    const-string/jumbo v1, "onCreate badge database"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher/BadgeProvider$BadgeHelper;->getInstance(Landroid/content/Context;)Lcom/android/launcher/BadgeProvider$BadgeHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher/BadgeProvider;->mDbHelper:Lcom/android/launcher/BadgeProvider$BadgeHelper;

    invoke-static {v0}, Lcom/android/launcher/badge/BadgeDataProviderCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher/badge/BadgeDataProviderCompat;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher/BadgeProvider;->mBadgeDataProviderCompat:Lcom/android/launcher/badge/BadgeDataProviderCompat;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "com.android.launcher.download.DownloadStateProvider"

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher/BadgeProvider;->mDownloadStateProvider:Landroid/content/ContentProviderClient;

    const/4 p0, 0x1

    return p0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 20
    .param p1  # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object v0, p0

    move-object v1, p1

    iget-object v2, v0, Lcom/android/launcher/BadgeProvider;->mDbHelper:Lcom/android/launcher/BadgeProvider$BadgeHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    new-instance v3, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v3}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "query->"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "BadgeProvider"

    invoke-static {v5, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/android/launcher/BadgeProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_7d

    if-eq v2, v6, :cond_7d

    const/4 v3, 0x2

    if-eq v2, v3, :cond_38

    const/4 v3, 0x3

    if-eq v2, v3, :cond_38

    goto/16 :goto_b7

    :cond_38
    iget-object v2, v0, Lcom/android/launcher/BadgeProvider;->mDownloadStateProvider:Landroid/content/ContentProviderClient;

    if-eqz v2, :cond_b7

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    :try_start_44
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v6, "com.android.launcher.download.DownloadStateProvider"

    invoke-virtual {v1, v6}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string/jumbo v6, "oriCallingPackage"

    invoke-virtual {v1, v6, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v9

    iget-object v8, v0, Lcom/android/launcher/BadgeProvider;->mDownloadStateProvider:Landroid/content/ContentProviderClient;

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_67
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_67} :catch_6e
    .catchall {:try_start_44 .. :try_end_67} :catchall_6c

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object v7, v0

    goto :goto_b7

    :catchall_6c
    move-exception v0

    goto :goto_79

    :catch_6e
    move-exception v0

    :try_start_6f
    const-string/jumbo v1, "remote failed!"

    invoke-static {v5, v1, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_75
    .catchall {:try_start_6f .. :try_end_75} :catchall_6c

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_b7

    :goto_79
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_7d
    if-ne v2, v6, :cond_91

    new-array v2, v6, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    const-string v5, "_id=?"

    move-object v7, v2

    move-object v6, v5

    goto :goto_95

    :cond_91
    move-object/from16 v6, p3

    move-object/from16 v7, p4

    :goto_95
    const-string v2, "badge"

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, p2

    move-object/from16 v10, p5

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_b7

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_b7

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-interface {v7, v0, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    :cond_b7
    :goto_b7
    return-object v7
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 23
    .param p1  # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    iget-object v0, v7, Lcom/android/launcher/BadgeProvider;->mDbHelper:Lcom/android/launcher/BadgeProvider$BadgeHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "update->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v11, "BadgeProvider"

    invoke-static {v11, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher/BadgeProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, v8}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-eqz v0, :cond_79

    if-eq v0, v13, :cond_79

    const/4 v1, 0x2

    if-eq v0, v1, :cond_37

    const/4 v1, 0x3

    if-eq v0, v1, :cond_37

    goto/16 :goto_12f

    :cond_37
    iget-object v0, v7, Lcom/android/launcher/BadgeProvider;->mDownloadStateProvider:Landroid/content/ContentProviderClient;

    if-eqz v0, :cond_12f

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_43
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "com.android.launcher.download.DownloadStateProvider"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string/jumbo v4, "oriCallingPackage"

    invoke-virtual {v3, v4, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    iget-object v3, v7, Lcom/android/launcher/BadgeProvider;->mDownloadStateProvider:Landroid/content/ContentProviderClient;

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-virtual {v3, v0, v9, v4, v5}, Landroid/content/ContentProviderClient;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0
    :try_end_62
    .catch Landroid/os/RemoteException; {:try_start_43 .. :try_end_62} :catch_69
    .catchall {:try_start_43 .. :try_end_62} :catchall_67

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_12e

    :catchall_67
    move-exception v0

    goto :goto_75

    :catch_69
    move-exception v0

    :try_start_6a
    const-string/jumbo v3, "remote failed!"

    invoke-static {v11, v3, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_70
    .catchall {:try_start_6a .. :try_end_70} :catchall_67

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_12f

    :goto_75
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_79
    move-object/from16 v4, p3

    move-object/from16 v5, p4

    if-ne v0, v13, :cond_90

    new-array v0, v13, [Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v12

    const-string v1, "_id=?"

    move-object v15, v0

    move-object v14, v1

    goto :goto_92

    :cond_90
    move-object v14, v4

    move-object v15, v5

    :goto_92
    const/4 v0, -0x1

    if-nez v9, :cond_96

    return v0

    :cond_96
    iget-boolean v1, v7, Lcom/android/launcher/BadgeProvider;->mIsLauncherChannel:Z

    const/16 v16, 0x0

    const-string v6, "app_package_name"

    if-nez v1, :cond_10f

    const/4 v3, 0x0

    const/16 v17, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v4, v14

    move-object v5, v15

    move-object v12, v6

    move-object/from16 v6, v17

    :try_start_aa
    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher/BadgeProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_ae
    .catch Ljava/lang/Exception; {:try_start_aa .. :try_end_ae} :catch_fa
    .catchall {:try_start_aa .. :try_end_ae} :catchall_f8

    if-nez v1, :cond_b6

    if-eqz v1, :cond_b5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_b5
    return v0

    :cond_b6
    :try_start_b6
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_ef

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_102

    invoke-interface {v1, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/common/util/PackageUtils;->isThirdPartApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_d9

    goto :goto_da

    :cond_d9
    const/4 v13, 0x0

    :goto_da
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_102

    if-nez v13, :cond_102

    const-string v2, "in case security :bad guys may handle DB by illegal ways!"

    invoke-static {v11, v2}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_eb
    .catch Ljava/lang/Exception; {:try_start_b6 .. :try_end_eb} :catch_f6
    .catchall {:try_start_b6 .. :try_end_eb} :catchall_106

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return v0

    :cond_ef
    :try_start_ef
    const-string/jumbo v0, "there is no colums in DataBase --!  = "

    invoke-static {v11, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f5
    .catch Ljava/lang/Exception; {:try_start_ef .. :try_end_f5} :catch_f6
    .catchall {:try_start_ef .. :try_end_f5} :catchall_106

    goto :goto_102

    :catch_f6
    move-exception v0

    goto :goto_fd

    :catchall_f8
    move-exception v0

    goto :goto_109

    :catch_fa
    move-exception v0

    move-object/from16 v1, v16

    :goto_fd
    :try_start_fd
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_100
    .catchall {:try_start_fd .. :try_end_100} :catchall_106

    if-eqz v1, :cond_110

    :cond_102
    :goto_102
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_110

    :catchall_106
    move-exception v0

    move-object/from16 v16, v1

    :goto_109
    if-eqz v16, :cond_10e

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :cond_10e
    throw v0

    :cond_10f
    move-object v12, v6

    :cond_110
    :goto_110
    const-string v0, "badge"

    invoke-virtual {v10, v0, v9, v14, v15}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_12e

    invoke-virtual {v9, v12}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_129

    invoke-virtual {v9, v12}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Ljava/lang/String;

    invoke-virtual {v9, v12}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    :cond_129
    move-object/from16 v1, v16

    invoke-direct {v7, v8, v1}, Lcom/android/launcher/BadgeProvider;->sendNotify(Landroid/net/Uri;Ljava/lang/String;)V

    :cond_12e
    :goto_12e
    move v12, v0

    :cond_12f
    :goto_12f
    return v12
.end method
