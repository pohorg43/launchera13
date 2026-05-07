.class public Lcom/android/common/LauncherAssetManager;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final BADGE_SUPPORT_LIST_VERSION:Ljava/lang/String; = "badge_support_list_version"

.field private static final DEBUG_ENABLE:Z

.field private static final DEFAULT_BADGE_SUPPORT_LIST:Ljava/lang/String; = "default_badge_support_list"

.field public static final EXTRA_APP_CATEGORY_NAME:Ljava/lang/String; = "extra_app_category"

.field private static final EXTRA_APP_CATEGORY_VERSION:Ljava/lang/String; = "extra_app_category_version"

.field private static final ROM_UPDATE_LIST_URI:Ljava/lang/String; = "content://com.oplus.romupdate.provider.db/update_list"

.field public static final SHORTCUT_BLACKLIST_VERSION:Ljava/lang/String; = "shortcut_blacklist_version"

.field public static final SHORTCUT_WHITELIST_VERSION:Ljava/lang/String; = "shortcut_whitelist_version"

.field private static final TAG:Ljava/lang/String; = "LauncherAssetManager"

.field private static final US_ASCII_FORMAT:Ljava/lang/String; = "US-ASCII"

.field private static final UTF8_FILE_HEAD_LENGTH:I = 0x3

.field private static final UTF8_FORMAT:Ljava/lang/String; = "UTF-8"

.field private static final sAppCannotBeUninstallList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sBadgeSupportList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile sInstance:Lcom/android/common/LauncherAssetManager;


# instance fields
.field private mCategoryMapCleared:Z

.field private mContext:Landroid/content/Context;

.field private final mExtraCategoryMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mMainCategoryMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    sput-boolean v0, Lcom/android/common/LauncherAssetManager;->DEBUG_ENABLE:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/common/LauncherAssetManager;->sBadgeSupportList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/common/LauncherAssetManager;->sAppCannotBeUninstallList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/common/LauncherAssetManager;->sInstance:Lcom/android/common/LauncherAssetManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/common/LauncherAssetManager;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/common/LauncherAssetManager;->mMainCategoryMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/common/LauncherAssetManager;->mExtraCategoryMap:Ljava/util/HashMap;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/common/LauncherAssetManager;->mCategoryMapCleared:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/common/LauncherAssetManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/common/LauncherAssetManager;->mContext:Landroid/content/Context;

    new-instance p1, Ls/a;

    invoke-direct {p1, p0, v0}, Ls/a;-><init>(Lcom/android/common/LauncherAssetManager;I)V

    new-instance p0, Ljava/lang/Thread;

    const-string v0, "launcher_initAssetData"

    invoke-direct {p0, p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static synthetic a(Lcom/android/common/LauncherAssetManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/common/LauncherAssetManager;->lambda$new$0()V

    return-void
.end method

.method public static synthetic b(Lcom/android/common/LauncherAssetManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/common/LauncherAssetManager;->lambda$reloadCategoryMapIfNeeded$1()V

    return-void
.end method

.method private static getAssetBytes(Ljava/lang/String;Landroid/content/Context;)[B
    .registers 8

    const/4 v0, 0x0

    const-string v1, "LauncherAssetManager"

    if-eqz p1, :cond_65

    if-nez p0, :cond_8

    goto :goto_65

    :cond_8
    :try_start_8
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_10} :catch_46
    .catchall {:try_start_8 .. :try_end_10} :catchall_44

    :try_start_10
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result p1

    new-array v0, p1, [B

    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-eq p1, v2, :cond_38

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAssetBytes totalLength = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " readLength = "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_38} :catch_3f
    .catchall {:try_start_10 .. :try_end_38} :catchall_3c

    :cond_38
    invoke-static {p0}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_60

    :catchall_3c
    move-exception p1

    move-object v0, p0

    goto :goto_61

    :catch_3f
    move-exception p1

    move-object v5, v0

    move-object v0, p0

    move-object p0, v5

    goto :goto_48

    :catchall_44
    move-exception p1

    goto :goto_61

    :catch_46
    move-exception p1

    move-object p0, v0

    :goto_48
    :try_start_48
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAssetBytes e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5c
    .catchall {:try_start_48 .. :try_end_5c} :catchall_44

    invoke-static {v0}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    move-object v0, p0

    :goto_60
    return-object v0

    :goto_61
    invoke-static {v0}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    throw p1

    :cond_65
    :goto_65
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAssetBytes dataName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", context = "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getBadgeSupportList()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/common/LauncherAssetManager;->sBadgeSupportList:Ljava/util/ArrayList;

    return-object v0
.end method

.method private getExtraData(Ljava/lang/String;)[B
    .registers 8

    const-string v0, "LauncherAssetManager"

    const/4 v1, 0x0

    :try_start_3
    iget-object p0, p0, Lcom/android/common/LauncherAssetManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object p0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_9} :catch_42
    .catchall {:try_start_3 .. :try_end_9} :catchall_40

    if-eqz p0, :cond_3c

    :try_start_b
    invoke-virtual {p0}, Ljava/io/FileInputStream;->available()I

    move-result p1

    new-array v1, p1, [B

    invoke-virtual {p0, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    if-eq p1, v2, :cond_3c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getExtraData totalLength = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " readLength = "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_33} :catch_37
    .catchall {:try_start_b .. :try_end_33} :catchall_34

    goto :goto_3c

    :catchall_34
    move-exception p1

    move-object v1, p0

    goto :goto_5d

    :catch_37
    move-exception p1

    move-object v5, v1

    move-object v1, p0

    move-object p0, v5

    goto :goto_44

    :cond_3c
    :goto_3c
    invoke-static {p0}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_5c

    :catchall_40
    move-exception p1

    goto :goto_5d

    :catch_42
    move-exception p1

    move-object p0, v1

    :goto_44
    :try_start_44
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getExtraData e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_58
    .catchall {:try_start_44 .. :try_end_58} :catchall_40

    invoke-static {v1}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    move-object v1, p0

    :goto_5c
    return-object v1

    :goto_5d
    invoke-static {v1}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    throw p1
.end method

.method private getFileBytes(Ljava/lang/String;Landroid/content/Context;)[B
    .registers 8

    const/4 v0, 0x0

    const-string v1, "LauncherAssetManager"

    if-eqz p1, :cond_83

    if-nez p2, :cond_9

    goto/16 :goto_83

    :cond_9
    invoke-direct {p0, p1}, Lcom/android/common/LauncherAssetManager;->isFileValid(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_29

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getFileBytes "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not exist!"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_29
    :try_start_29
    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_2e} :catch_64
    .catchall {:try_start_29 .. :try_end_2e} :catchall_62

    :try_start_2e
    invoke-virtual {p0}, Ljava/io/FileInputStream;->available()I

    move-result p1

    new-array v0, p1, [B

    invoke-virtual {p0, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result p2

    if-eq p1, p2, :cond_56

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFileBytes totalLength = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " readLength = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_56} :catch_5d
    .catchall {:try_start_2e .. :try_end_56} :catchall_5a

    :cond_56
    invoke-static {p0}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_7e

    :catchall_5a
    move-exception p1

    move-object v0, p0

    goto :goto_7f

    :catch_5d
    move-exception p1

    move-object v4, v0

    move-object v0, p0

    move-object p0, v4

    goto :goto_66

    :catchall_62
    move-exception p1

    goto :goto_7f

    :catch_64
    move-exception p1

    move-object p0, v0

    :goto_66
    :try_start_66
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFileBytes e = "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7a
    .catchall {:try_start_66 .. :try_end_7a} :catchall_62

    invoke-static {v0}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    move-object v0, p0

    :goto_7e
    return-object v0

    :goto_7f
    invoke-static {v0}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    throw p1

    :cond_83
    :goto_83
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFileBytes fileName = "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", context = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/common/LauncherAssetManager;
    .registers 3

    sget-object v0, Lcom/android/common/LauncherAssetManager;->sInstance:Lcom/android/common/LauncherAssetManager;

    if-nez v0, :cond_17

    const-class v0, Lcom/android/common/LauncherAssetManager;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/android/common/LauncherAssetManager;->sInstance:Lcom/android/common/LauncherAssetManager;

    if-nez v1, :cond_12

    new-instance v1, Lcom/android/common/LauncherAssetManager;

    invoke-direct {v1, p0}, Lcom/android/common/LauncherAssetManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/common/LauncherAssetManager;->sInstance:Lcom/android/common/LauncherAssetManager;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p0

    :cond_17
    :goto_17
    sget-object p0, Lcom/android/common/LauncherAssetManager;->sInstance:Lcom/android/common/LauncherAssetManager;

    return-object p0
.end method

.method private isFileValid(Ljava/lang/String;)Z
    .registers 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_1d

    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1d

    const-wide/16 v1, 0x0

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide p0

    cmp-long p0, v1, p0

    if-eqz p0, :cond_1d

    const/4 v0, 0x1

    :cond_1d
    return v0
.end method

.method private synthetic lambda$new$0()V
    .registers 1

    invoke-direct {p0}, Lcom/android/common/LauncherAssetManager;->loadBadgeSupportList()V

    invoke-direct {p0}, Lcom/android/common/LauncherAssetManager;->loadLauncherConfigListFromRusOrAssets()V

    invoke-direct {p0}, Lcom/android/common/LauncherAssetManager;->loadExtraCategoryData()V

    invoke-direct {p0}, Lcom/android/common/LauncherAssetManager;->loadDataAppsForbiddenUninstallData()V

    return-void
.end method

.method private synthetic lambda$reloadCategoryMapIfNeeded$1()V
    .registers 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/android/common/LauncherAssetManager;->loadMainCategoryData()V

    invoke-direct {p0}, Lcom/android/common/LauncherAssetManager;->loadExtraCategoryData()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string/jumbo p0, "reloadCategoryMap: cost: "

    invoke-static {p0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sub-long/2addr v2, v0

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "LauncherAssetManager"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private loadBadgeSupportData([BLjava/util/ArrayList;Ljava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "LauncherAssetManager"

    if-eqz p1, :cond_89

    array-length v1, p1

    if-nez v1, :cond_9

    goto/16 :goto_89

    :cond_9
    const/4 v1, 0x0

    :try_start_a
    const-string v2, "UTF-8"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    array-length v2, p1

    const/4 v3, 0x3

    if-le v2, v3, :cond_20

    new-instance v1, Ljava/lang/String;

    array-length p3, p1

    sub-int/2addr p3, v3

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p1, v3, p3, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    goto :goto_2d

    :cond_20
    const-string v2, "US-ASCII"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    :cond_2d
    :goto_2d
    if-eqz v1, :cond_89

    const-string p1, "line.separator"

    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    const/4 p3, 0x0

    move v1, p3

    :goto_3e
    array-length v2, p1

    if-ge v1, v2, :cond_55

    aget-object v2, p1, v1

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_52

    aget-object v2, v2, p3

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_52
    add-int/lit8 v1, v1, 0x1

    goto :goto_3e

    :cond_55
    sget-boolean p1, Lcom/android/common/LauncherAssetManager;->DEBUG_ENABLE:Z

    if-eqz p1, :cond_71

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "loadBadgeSupportData BadgeSupportList size = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_71
    iget-object p0, p0, Lcom/android/common/LauncherAssetManager;->mContext:Landroid/content/Context;

    if-eqz p0, :cond_7d

    invoke-static {p0}, Lcom/android/launcher/badge/BadgeDataProviderCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher/badge/BadgeDataProviderCompat;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/badge/BadgeDataProviderCompat;->onBadgeSupportPackagesUpdated()V

    goto :goto_89

    :cond_7d
    const-string p0, "loadBadgeSupportData mContext = null"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_82} :catch_83

    goto :goto_89

    :catch_83
    move-exception p0

    const-string p1, "loadBadgeSupportData e = "

    invoke-static {p1, p0, v0}, Ls/b;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_89
    :goto_89
    return-void
.end method

.method private loadBadgeSupportList()V
    .registers 4

    sget-boolean v0, Lcom/android/common/LauncherAssetManager;->DEBUG_ENABLE:Z

    if-eqz v0, :cond_b

    const-string v0, "LauncherAssetManager"

    const-string v1, "loadBadgeSupportList load data from asset"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    iget-object v0, p0, Lcom/android/common/LauncherAssetManager;->mContext:Landroid/content/Context;

    const-string v1, "default_badge_support_list"

    invoke-static {v1, v0}, Lcom/android/common/LauncherAssetManager;->getAssetBytes(Ljava/lang/String;Landroid/content/Context;)[B

    move-result-object v0

    sget-object v1, Lcom/android/common/LauncherAssetManager;->sBadgeSupportList:Ljava/util/ArrayList;

    const-string v2, "US-ASCII"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/common/LauncherAssetManager;->loadBadgeSupportData([BLjava/util/ArrayList;Ljava/lang/String;)V

    return-void
.end method

.method private loadData([BLjava/util/HashMap;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_50

    array-length p0, p1

    if-nez p0, :cond_6

    goto :goto_50

    :cond_6
    const/4 p0, 0x0

    :try_start_7
    const-string v0, "UTF-8"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    array-length v0, p1

    const/4 v1, 0x3

    if-le v0, v1, :cond_1d

    new-instance p0, Ljava/lang/String;

    array-length p3, p1

    sub-int/2addr p3, v1

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p0, p1, v1, p3, v0}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    goto :goto_2a

    :cond_1d
    const-string v0, "US-ASCII"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p1, p3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    :cond_2a
    :goto_2a
    if-eqz p0, :cond_50

    const-string p1, " "

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    :goto_33
    array-length p3, p0

    add-int/lit8 p3, p3, -0x1

    if-ge p1, p3, :cond_50

    aget-object p3, p0, p1

    add-int/lit8 v0, p1, 0x1

    aget-object v0, p0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_45} :catch_48

    add-int/lit8 p1, p1, 0x2

    goto :goto_33

    :catch_48
    move-exception p0

    const-string p1, "loadData e = "

    const-string p2, "LauncherAssetManager"

    invoke-static {p1, p0, p2}, Ls/b;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_50
    :goto_50
    return-void
.end method

.method private loadDataAppsForbiddenUninstallData()V
    .registers 2

    invoke-static {}, Lcom/android/launcher/uninstall/ForbiddenUninstallAppManager;->getInstance()Lcom/android/launcher/uninstall/ForbiddenUninstallAppManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/common/LauncherAssetManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/android/launcher/uninstall/ForbiddenUninstallAppManager;->loadNewestUninstallAppList(Landroid/content/Context;)V

    return-void
.end method

.method private loadExtraCategoryData()V
    .registers 5

    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isAutonameFolderDisabled:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/common/LauncherAssetManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_3c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    const-string v2, "extra_app_category"

    invoke-static {v1, v0, v2}, Landroidx/concurrent/futures/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/common/LauncherAssetManager;->isFileValid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/android/common/LauncherAssetManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_2a
    const-string v1, "extra_app_category"

    invoke-direct {p0, v1}, Lcom/android/common/LauncherAssetManager;->getExtraData(Ljava/lang/String;)[B

    move-result-object v1

    iget-object v2, p0, Lcom/android/common/LauncherAssetManager;->mExtraCategoryMap:Ljava/util/HashMap;

    const-string v3, "US-ASCII"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/common/LauncherAssetManager;->loadData([BLjava/util/HashMap;Ljava/lang/String;)V

    monitor-exit v0

    goto :goto_3f

    :catchall_39
    move-exception p0

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_2a .. :try_end_3b} :catchall_39

    throw p0

    :cond_3c
    invoke-virtual {p0}, Lcom/android/common/LauncherAssetManager;->updateExtraAppCategoryFromRomUpdate()Z

    :goto_3f
    return-void
.end method

.method private loadLauncherConfigListFromRusOrAssets()V
    .registers 2

    invoke-static {}, Lcom/android/launcher3/widget/WidgetControlConfigManager;->getInstance()Lcom/android/launcher3/widget/WidgetControlConfigManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/common/LauncherAssetManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/android/rusconfig/RusBaseXmlConfigManager;->loadAndParserRusConfigData(Landroid/content/Context;)Z

    return-void
.end method

.method private loadMainCategoryData()V
    .registers 4

    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isAutonameFolderDisabled:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/common/LauncherAssetManager;->mContext:Landroid/content/Context;

    const-string v1, "app_category"

    invoke-static {v1, v0}, Lcom/android/common/LauncherAssetManager;->getAssetBytes(Ljava/lang/String;Landroid/content/Context;)[B

    move-result-object v0

    iget-object v1, p0, Lcom/android/common/LauncherAssetManager;->mMainCategoryMap:Ljava/util/HashMap;

    const-string v2, "US-ASCII"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/common/LauncherAssetManager;->loadData([BLjava/util/HashMap;Ljava/lang/String;)V

    return-void
.end method

.method private string2File(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_2
    new-instance v2, Ljava/io/ByteArrayInputStream;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_d} :catch_35
    .catchall {:try_start_2 .. :try_end_d} :catchall_32

    :try_start_d
    iget-object p0, p0, Lcom/android/common/LauncherAssetManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p2, v1}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    const p0, 0x8000

    new-array p0, p0, [B

    :goto_18
    invoke-virtual {v2, p0}, Ljava/io/InputStream;->read([B)I

    move-result p1

    if-lez p1, :cond_22

    invoke-virtual {v0, p0, v1, p1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_21} :catch_2e
    .catchall {:try_start_d .. :try_end_21} :catchall_2a

    goto :goto_18

    :cond_22
    invoke-static {v2}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v0}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    const/4 v1, 0x1

    goto :goto_54

    :catchall_2a
    move-exception p0

    move-object p1, v0

    move-object v0, v2

    goto :goto_56

    :catch_2e
    move-exception p0

    move-object p1, v0

    move-object v0, v2

    goto :goto_37

    :catchall_32
    move-exception p0

    move-object p1, v0

    goto :goto_56

    :catch_35
    move-exception p0

    move-object p1, v0

    :goto_37
    :try_start_37
    const-string p2, "LauncherAssetManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "string2File e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4e
    .catchall {:try_start_37 .. :try_end_4e} :catchall_55

    invoke-static {v0}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {p1}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    :goto_54
    return v1

    :catchall_55
    move-exception p0

    :goto_56
    invoke-static {v0}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {p1}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    throw p0
.end method


# virtual methods
.method public clearCategoryMap()V
    .registers 2

    iget-object v0, p0, Lcom/android/common/LauncherAssetManager;->mMainCategoryMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/android/common/LauncherAssetManager;->mExtraCategoryMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/common/LauncherAssetManager;->mCategoryMapCleared:Z

    return-void
.end method

.method public getRecommendFolderNameId(Ljava/lang/String;)I
    .registers 4

    iget-object v0, p0, Lcom/android/common/LauncherAssetManager;->mExtraCategoryMap:Ljava/util/HashMap;

    const/4 v1, -0x1

    if-eqz v0, :cond_12

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_13

    :cond_12
    move v0, v1

    :goto_13
    if-ne v1, v0, :cond_25

    iget-object p0, p0, Lcom/android/common/LauncherAssetManager;->mMainCategoryMap:Ljava/util/HashMap;

    if-eqz p0, :cond_25

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_25

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_25
    return v0
.end method

.method public reloadCategoryMapIfNeeded()V
    .registers 5

    iget-boolean v0, p0, Lcom/android/common/LauncherAssetManager;->mCategoryMapCleared:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Ls/a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Ls/a;-><init>(Lcom/android/common/LauncherAssetManager;I)V

    const-string v3, "category_data_load"

    invoke-direct {v0, v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iput-boolean v2, p0, Lcom/android/common/LauncherAssetManager;->mCategoryMapCleared:Z

    :cond_16
    return-void
.end method

.method public updateExtraAppCategoryFromRomUpdate()Z
    .registers 13

    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isAutonameFolderDisabled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/common/LauncherAssetManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/common/util/LauncherSharedPrefs;->getLauncherPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "extra_app_category_version"

    const-string v4, "0"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "version"

    const-string v5, "binary"

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v8

    iget-object v4, p0, Lcom/android/common/LauncherAssetManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v4, 0x0

    :try_start_25
    const-string v5, "content://com.oplus.romupdate.provider.db/update_list"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    const-string v9, "filtername=\"extra_app_category\""

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    if-eqz v4, :cond_bc

    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_bc

    const-string/jumbo v5, "version"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget-boolean v6, Lcom/android/common/LauncherAssetManager;->DEBUG_ENABLE:Z

    if-eqz v6, :cond_69

    const-string v7, "LauncherAssetManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "updateExtraAppCategoryFromRomUpdate oldVersion = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", newVersion = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_69
    invoke-virtual {v3, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_bc

    const-string v3, "binary"

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    if-eqz v3, :cond_bc

    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-direct {v7, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v7, "extra_app_category"

    invoke-direct {p0, v3, v7}, Lcom/android/common/LauncherAssetManager;->string2File(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_bc

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "extra_app_category_version"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v2, p0, Lcom/android/common/LauncherAssetManager;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_9b} :catch_c4
    .catchall {:try_start_25 .. :try_end_9b} :catchall_c2

    :try_start_9b
    iget-object v3, p0, Lcom/android/common/LauncherAssetManager;->mExtraCategoryMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    const-string v3, "extra_app_category"

    invoke-direct {p0, v3}, Lcom/android/common/LauncherAssetManager;->getExtraData(Ljava/lang/String;)[B

    move-result-object v3

    iget-object v5, p0, Lcom/android/common/LauncherAssetManager;->mExtraCategoryMap:Ljava/util/HashMap;

    const-string v7, "US-ASCII"

    invoke-direct {p0, v3, v5, v7}, Lcom/android/common/LauncherAssetManager;->loadData([BLjava/util/HashMap;Ljava/lang/String;)V

    monitor-exit v2
    :try_end_ae
    .catchall {:try_start_9b .. :try_end_ae} :catchall_b9

    if-eqz v6, :cond_bd

    :try_start_b0
    const-string p0, "LauncherAssetManager"

    const-string/jumbo v2, "updateExtraAppCategoryFromRomUpdate success"

    invoke-static {p0, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b8
    .catch Ljava/lang/Exception; {:try_start_b0 .. :try_end_b8} :catch_c4
    .catchall {:try_start_b0 .. :try_end_b8} :catchall_c2

    goto :goto_bd

    :catchall_b9
    move-exception p0

    :try_start_ba
    monitor-exit v2
    :try_end_bb
    .catchall {:try_start_ba .. :try_end_bb} :catchall_b9

    :try_start_bb
    throw p0
    :try_end_bc
    .catch Ljava/lang/Exception; {:try_start_bb .. :try_end_bc} :catch_c4
    .catchall {:try_start_bb .. :try_end_bc} :catchall_c2

    :cond_bc
    move v1, v0

    :cond_bd
    :goto_bd
    invoke-static {v4}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    move v0, v1

    goto :goto_df

    :catchall_c2
    move-exception p0

    goto :goto_e0

    :catch_c4
    move-exception p0

    :try_start_c5
    const-string v1, "LauncherAssetManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateExtraAppCategoryFromRomUpdate fail e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_dc
    .catchall {:try_start_c5 .. :try_end_dc} :catchall_c2

    invoke-static {v4}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    :goto_df
    return v0

    :goto_e0
    invoke-static {v4}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    throw p0
.end method
