.class public Lcom/android/launcher/download/DownloadStateProvider;
.super Landroid/content/ContentProvider;
.source ""


# static fields
.field private static final ACTION_DOWNLOAD_APPS_EXPANSION:Ljava/lang/String; = "downloadAppsExpansion"

.field public static final ACTION_DOWNLOAD_INFOS:Ljava/lang/String; = "downloadinfos"

.field public static final ACTION_DOWNLOAD_INSTALL_APPS:Ljava/lang/String; = "downloadInstallApps"

.field public static final AUTHORITY:Ljava/lang/String; = "com.android.launcher.download.DownloadStateProvider"

.field private static final CODE_ERROR:I = -0x1

.field private static final DOWNLOAD_ACTION:I = 0x1

.field private static final DOWNLOAD_INFO:I = 0x0

.field private static final DOWNLOAD_PROGRESS_SUPPORT_SOURCE_LIST:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final EXPANSION_DOWNLOAD_ACTION:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "DownloadStateProvider"

.field public static final PERMISSION:Ljava/lang/String; = "com.oplus.permission.safe.APP_MANAGER"

.field private static final URI_MATCHER:Landroid/content/UriMatcher;

.field public static final URI_QUERY_KEY_ORI_CALLING_PACKAGE:Ljava/lang/String; = "oriCallingPackage"


# instance fields
.field private mDbHelper:Lcom/android/launcher/BadgeProvider$BadgeHelper;

.field private mDownloadAppsManager:Lcom/android/launcher/download/DownloadAppsManager;


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher/download/DownloadStateProvider;->DOWNLOAD_PROGRESS_SUPPORT_SOURCE_LIST:Ljava/util/ArrayList;

    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/launcher/download/DownloadStateProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.android.launcher.download.DownloadStateProvider"

    const-string v2, "downloadinfos"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "downloadInstallApps"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "downloadAppsExpansion"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private dbInsertAndCheck(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .registers 11

    iget-object v0, p0, Lcom/android/launcher/download/DownloadStateProvider;->mDbHelper:Lcom/android/launcher/BadgeProvider$BadgeHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "downloadinfos"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dbInsertAndCheck[downloadinfos]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "InstallApp"

    const-string v4, "DownloadStateProvider"

    invoke-static {v3, v4, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "packageName"

    invoke-virtual {p3, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5a

    const-string/jumbo v5, "packageName=\'"

    const-string v6, "\'"

    invoke-static {v5, v2, v6}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v0, v1, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_48

    const-string v1, "Data may be corrupt in download table, delete duplicated item: "

    invoke-static {v1, v2, v3, v4}, Lcom/android/launcher/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_48
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher/folder/recommend/SwitchManageHelper;->getInstance(Landroid/content/Context;)Lcom/android/launcher/folder/recommend/SwitchManageHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/folder/recommend/SwitchManageHelper;->isShouldRecommend()Z

    move-result p0

    if-eqz p0, :cond_5d

    invoke-static {v2}, Lcom/android/launcher/folder/recommend/RecommendUtils;->addDownloadApp(Ljava/lang/String;)V

    goto :goto_5d

    :cond_5a
    const-wide/16 p0, -0x1

    return-wide p0

    :cond_5d
    :goto_5d
    invoke-virtual {v0, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p0

    return-wide p0
.end method

.method private getCallingPackageCompat(Landroid/net/Uri;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.android.launcher"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string/jumbo v0, "oriCallingPackage"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    move-object p0, p1

    :cond_1a
    return-object p0
.end method

.method public static initDownloadSourceList()V
    .registers 2

    sget-object v0, Lcom/android/launcher/download/DownloadStateProvider;->DOWNLOAD_PROGRESS_SUPPORT_SOURCE_LIST:Ljava/util/ArrayList;

    invoke-static {}, Lcom/android/common/util/PackageCompatUtils;->getMarketPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/common/util/PackageCompatUtils;->getGameCenterPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "com.android.launcher"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 10
    .param p1  # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/android/launcher/download/DownloadStateProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    invoke-direct {p0, p1}, Lcom/android/launcher/download/DownloadStateProvider;->getCallingPackageCompat(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object v1, v2, p1

    const-string v4, "delete->%s,caller->%s"

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "InstallApp"

    const-string v5, "DownloadStateProvider"

    invoke-static {v4, v5, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_34

    if-eq v0, p1, :cond_25

    goto :goto_77

    :cond_25
    sget-object p1, Lcom/android/launcher/download/DownloadStateProvider;->DOWNLOAD_PROGRESS_SUPPORT_SOURCE_LIST:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_77

    iget-object p0, p0, Lcom/android/launcher/download/DownloadStateProvider;->mDownloadAppsManager:Lcom/android/launcher/download/DownloadAppsManager;

    invoke-virtual {p0, v1, p2}, Lcom/android/launcher/download/DownloadAppsManager;->deleteDownloadAppBySource(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    goto :goto_77

    :cond_34
    const-string p1, "com.android.launcher"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_77

    iget-object p1, p0, Lcom/android/launcher/download/DownloadStateProvider;->mDbHelper:Lcom/android/launcher/BadgeProvider$BadgeHelper;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const-string v0, "downloadinfos"

    invoke-virtual {p1, v0, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    const-string p1, "Delete download info: selection: "

    const-string v0, ", "

    invoke-static {p1, p2, v0}, Landroidx/activity/result/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", count: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, v5, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher/folder/recommend/SwitchManageHelper;->getInstance(Landroid/content/Context;)Lcom/android/launcher/folder/recommend/SwitchManageHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/folder/recommend/SwitchManageHelper;->isShouldRecommend()Z

    move-result p0

    if-eqz p0, :cond_77

    invoke-static {p3}, Lcom/android/launcher/folder/recommend/RecommendUtils;->removeDownloadApp([Ljava/lang/String;)V

    :cond_77
    :goto_77
    return v3
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 4

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "get type uri="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DownloadStateProvider"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/android/launcher/download/DownloadStateProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {p0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p0

    if-eqz p0, :cond_42

    const/4 v1, 0x1

    if-eq p0, v1, :cond_3e

    const/4 v1, 0x2

    if-eq p0, v1, :cond_3a

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown URI: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_3a
    const-string/jumbo p0, "vnd.android.cursor.dir/downloadAppsExpansion"

    return-object p0

    :cond_3e
    const-string/jumbo p0, "vnd.android.cursor.dir/downloadInstallApps"

    return-object p0

    :cond_42
    const-string/jumbo p0, "vnd.android.cursor.dir/downloadinfos"

    return-object p0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 11

    sget-object v0, Lcom/android/launcher/download/DownloadStateProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    invoke-direct {p0, p1}, Lcom/android/launcher/download/DownloadStateProvider;->getCallingPackageCompat(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    const-string v5, "InstallApp"

    const-string v6, "DownloadStateProvider"

    if-eqz v2, :cond_26

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v2, v7

    aput-object v1, v2, v4

    const-string v7, "insert->%s,caller->%s"

    invoke-static {v7, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v6, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_26
    const/4 v2, 0x0

    if-eqz v0, :cond_a1

    const-string v7, ", values = "

    if-eq v0, v4, :cond_73

    if-eq v0, v3, :cond_45

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Illegal uri: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b8

    :cond_45
    sget-object p1, Lcom/android/launcher/download/DownloadStateProvider;->DOWNLOAD_PROGRESS_SUPPORT_SOURCE_LIST:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b8

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p1

    if-eqz p1, :cond_6d

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "insert expansions download, source = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, v6, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6d
    iget-object p0, p0, Lcom/android/launcher/download/DownloadStateProvider;->mDownloadAppsManager:Lcom/android/launcher/download/DownloadAppsManager;

    invoke-virtual {p0, p2, v1}, Lcom/android/launcher/download/DownloadAppsManager;->onExpansionDownloadInfoChange(Landroid/content/ContentValues;Ljava/lang/String;)V

    goto :goto_b8

    :cond_73
    sget-object p1, Lcom/android/launcher/download/DownloadStateProvider;->DOWNLOAD_PROGRESS_SUPPORT_SOURCE_LIST:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b8

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p1

    if-eqz p1, :cond_9b

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "insert download, source = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, v6, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_9b
    iget-object p0, p0, Lcom/android/launcher/download/DownloadStateProvider;->mDownloadAppsManager:Lcom/android/launcher/download/DownloadAppsManager;

    invoke-virtual {p0, p2, v1}, Lcom/android/launcher/download/DownloadAppsManager;->onDownloadInfoChange(Landroid/content/ContentValues;Ljava/lang/String;)V

    goto :goto_b8

    :cond_a1
    const-string v0, "com.android.launcher"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b8

    const-string v0, "downloadinfos"

    invoke-direct {p0, v0, v2, p2}, Lcom/android/launcher/download/DownloadStateProvider;->dbInsertAndCheck(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    const-wide/16 v3, 0x0

    cmp-long p0, v0, v3

    if-lez p0, :cond_b6

    goto :goto_b7

    :cond_b6
    move-object p1, v2

    :goto_b7
    move-object v2, p1

    :cond_b8
    :goto_b8
    return-object v2
.end method

.method public onCreate()Z
    .registers 4

    const-string v0, "InstallApp"

    const-string v1, "DownloadStateProvider"

    const-string/jumbo v2, "onCreate"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher/BadgeProvider$BadgeHelper;->getInstance(Landroid/content/Context;)Lcom/android/launcher/BadgeProvider$BadgeHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher/download/DownloadStateProvider;->mDbHelper:Lcom/android/launcher/BadgeProvider$BadgeHelper;

    invoke-static {v0}, Lcom/android/launcher/download/DownloadAppsManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/download/DownloadAppsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher/download/DownloadStateProvider;->mDownloadAppsManager:Lcom/android/launcher/download/DownloadAppsManager;

    const/4 p0, 0x1

    return p0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 14
    .param p1  # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/android/launcher/download/DownloadStateProvider;->getCallingPackageCompat(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/launcher/download/DownloadStateProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v2

    if-eqz v2, :cond_27

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object v0, v2, p1

    const-string/jumbo p1, "query->%s,caller->%s"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "InstallApp"

    const-string v3, "DownloadStateProvider"

    invoke-static {v2, v3, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_27
    if-eqz v1, :cond_2a

    goto :goto_4d

    :cond_2a
    const-string p1, "com.android.launcher"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4d

    iget-object p0, p0, Lcom/android/launcher/download/DownloadStateProvider;->mDbHelper:Lcom/android/launcher/BadgeProvider$BadgeHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    const-string p0, "downloadinfos"

    invoke-virtual {v0, p0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    goto :goto_4e

    :cond_4d
    :goto_4d
    const/4 p0, 0x0

    :goto_4e
    return-object p0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 12
    .param p1  # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/android/launcher/download/DownloadStateProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    invoke-direct {p0, p1}, Lcom/android/launcher/download/DownloadStateProvider;->getCallingPackageCompat(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 p1, 0x1

    aput-object v1, v3, p1

    const-string/jumbo v5, "update->%s,caller->%s"

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "InstallApp"

    const-string v6, "DownloadStateProvider"

    invoke-static {v5, v6, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_44

    if-eq v0, p1, :cond_36

    if-eq v0, v2, :cond_28

    goto :goto_58

    :cond_28
    sget-object p1, Lcom/android/launcher/download/DownloadStateProvider;->DOWNLOAD_PROGRESS_SUPPORT_SOURCE_LIST:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_58

    iget-object p0, p0, Lcom/android/launcher/download/DownloadStateProvider;->mDownloadAppsManager:Lcom/android/launcher/download/DownloadAppsManager;

    invoke-virtual {p0, p2, v1}, Lcom/android/launcher/download/DownloadAppsManager;->onExpansionDownloadInfoChange(Landroid/content/ContentValues;Ljava/lang/String;)V

    goto :goto_58

    :cond_36
    sget-object p1, Lcom/android/launcher/download/DownloadStateProvider;->DOWNLOAD_PROGRESS_SUPPORT_SOURCE_LIST:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_58

    iget-object p0, p0, Lcom/android/launcher/download/DownloadStateProvider;->mDownloadAppsManager:Lcom/android/launcher/download/DownloadAppsManager;

    invoke-virtual {p0, p2, v1}, Lcom/android/launcher/download/DownloadAppsManager;->onDownloadInfoChange(Landroid/content/ContentValues;Ljava/lang/String;)V

    goto :goto_58

    :cond_44
    const-string p1, "com.android.launcher"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_58

    iget-object p0, p0, Lcom/android/launcher/download/DownloadStateProvider;->mDbHelper:Lcom/android/launcher/BadgeProvider$BadgeHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    const-string p1, "downloadinfos"

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    :cond_58
    :goto_58
    return v4
.end method
