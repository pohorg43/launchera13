.class public Lcom/android/launcher/uninstall/ForbiddenUninstallAppManager;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final APP_FORBIDDEN_UNINSTALL_FILTER_NAME:Ljava/lang/String; = "apps_launcher_cannot_uninstall_pkgs"

.field private static final DEFAULT_APP_FORBIDDEN_UNINSTALL_LIST_FILE_NAME:Ljava/lang/String; = "default_app_forbidden_uninstall_list"

.field private static final DUMP_FORBIDDEN_UNINSTALL_LIST:Z = false

.field private static final PARSE_APP_FORBIDDEN_UNINSTALL_CONFIG_ERROR_CODE:I = -0x1

.field public static final ROM_UPDATE_LIST_URI:Ljava/lang/String; = "content://com.oplus.romupdate.provider.db/update_list"

.field private static final TAG:Ljava/lang/String; = "ForbiddenUninstallAppManager"

.field private static final XML_ATTR_VALUE_DEFAULT_SWITCH_ON:Ljava/lang/String; = "local_forbidden_uninstall_pkg"

.field private static final XML_TAG_STRING_ARRAY_NAME:Ljava/lang/String; = "string-array"

.field private static final XML_TAG_STRING_ITEM:Ljava/lang/String; = "item"

.field private static final XML_TAG_STRING_VERSION:Ljava/lang/String; = "version"

.field private static volatile sInstance:Lcom/android/launcher/uninstall/ForbiddenUninstallAppManager;


# instance fields
.field private mForbiddenUninstallAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/uninstall/ForbiddenUninstallAppManager;->mForbiddenUninstallAppList:Ljava/util/List;

    return-void
.end method

.method public static getInstance()Lcom/android/launcher/uninstall/ForbiddenUninstallAppManager;
    .registers 2

    sget-object v0, Lcom/android/launcher/uninstall/ForbiddenUninstallAppManager;->sInstance:Lcom/android/launcher/uninstall/ForbiddenUninstallAppManager;

    if-nez v0, :cond_17

    const-class v0, Lcom/android/launcher/uninstall/ForbiddenUninstallAppManager;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/android/launcher/uninstall/ForbiddenUninstallAppManager;->sInstance:Lcom/android/launcher/uninstall/ForbiddenUninstallAppManager;

    if-nez v1, :cond_12

    new-instance v1, Lcom/android/launcher/uninstall/ForbiddenUninstallAppManager;

    invoke-direct {v1}, Lcom/android/launcher/uninstall/ForbiddenUninstallAppManager;-><init>()V

    sput-object v1, Lcom/android/launcher/uninstall/ForbiddenUninstallAppManager;->sInstance:Lcom/android/launcher/uninstall/ForbiddenUninstallAppManager;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    :cond_17
    :goto_17
    sget-object v0, Lcom/android/launcher/uninstall/ForbiddenUninstallAppManager;->sInstance:Lcom/android/launcher/uninstall/ForbiddenUninstallAppManager;

    return-object v0
.end method

.method private loadCustomForbiddenUninstallApps(Landroid/content/Context;)V
    .registers 7

    invoke-static {}, Lcom/android/common/config/VersionInfo;->isIndonesiaVersion()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_20

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f03002f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    move v2, v1

    :goto_13
    array-length v3, v0

    if-ge v2, v3, :cond_20

    iget-object v3, p0, Lcom/android/launcher/uninstall/ForbiddenUninstallAppManager;->mForbiddenUninstallAppList:Ljava/util/List;

    aget-object v4, v0, v2

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_20
    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isSellMode:Z

    if-eqz v0, :cond_3c

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f03002d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    :goto_2f
    array-length v0, p1

    if-ge v1, v0, :cond_3c

    iget-object v0, p0, Lcom/android/launcher/uninstall/ForbiddenUninstallAppManager;->mForbiddenUninstallAppList:Ljava/util/List;

    aget-object v2, p1, v1

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2f

    :cond_3c
    sget-object p1, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {p1}, Lcom/android/common/util/AppFeatureUtils;->getShortcutHiddenPackages()Ljava/util/List;

    move-result-object p1

    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isExp:Z

    if-eqz v0, :cond_4d

    if-eqz p1, :cond_4d

    iget-object p0, p0, Lcom/android/launcher/uninstall/ForbiddenUninstallAppManager;->mForbiddenUninstallAppList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_4d
    return-void
.end method

.method private loadDefaultAppForbiddenUninstallList(Landroid/content/Context;)Ljava/lang/String;
    .registers 7

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    const/4 p1, 0x0

    :try_start_5
    const-string v0, "default_app_forbidden_uninstall_list"

    invoke-virtual {p0, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_b} :catch_1c
    .catchall {:try_start_5 .. :try_end_b} :catchall_17

    :try_start_b
    sget-object v0, Lcom/android/common/util/FileOperationUtils;->INSTANCE:Lcom/android/common/util/FileOperationUtils;

    invoke-virtual {v0, p0}, Lcom/android/common/util/FileOperationUtils;->inputStream2String(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_11} :catch_15
    .catchall {:try_start_b .. :try_end_11} :catchall_38

    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object p1

    :catch_15
    move-exception v0

    goto :goto_1e

    :catchall_17
    move-exception p0

    move-object v4, p1

    move-object p1, p0

    move-object p0, v4

    goto :goto_39

    :catch_1c
    move-exception v0

    move-object p0, p1

    :goto_1e
    :try_start_1e
    const-string v1, "ForbiddenUninstallAppManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadDefaultAppForbiddenUninstallList, Exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_34
    .catchall {:try_start_1e .. :try_end_34} :catchall_38

    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object p1

    :catchall_38
    move-exception p1

    :goto_39
    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw p1
.end method

.method private loadRomUpAppForbiddenUninstallList(Landroid/content/Context;)Ljava/lang/String;
    .registers 11

    const-string p0, "ForbiddenUninstallAppManager"

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo p1, "version"

    const-string/jumbo v6, "xml"

    filled-new-array {p1, v6}, [Ljava/lang/String;

    move-result-object v2

    const-string v7, ""

    const/4 v8, 0x0

    :try_start_13
    const-string v1, "content://com.oplus.romupdate.provider.db/update_list"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v3, "filtername=\'apps_launcher_cannot_uninstall_pkgs\'"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_4f

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4f

    invoke-interface {v8, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v8, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_4f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadRomUpAppForbiddenUninstallList versionIndex = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_4f} :catch_55
    .catchall {:try_start_13 .. :try_end_4f} :catchall_53

    :cond_4f
    :goto_4f
    invoke-static {v8}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_6b

    :catchall_53
    move-exception p0

    goto :goto_6c

    :catch_55
    move-exception p1

    :try_start_56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadRomUpAppForbiddenUninstallList, Exception = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6a
    .catchall {:try_start_56 .. :try_end_6a} :catchall_53

    goto :goto_4f

    :goto_6b
    return-object v7

    :goto_6c
    invoke-static {v8}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    throw p0
.end method

.method private loadUninstallableAppConfig()V
    .registers 4

    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isExp:Z

    if-nez v0, :cond_2a

    invoke-static {}, Lcom/android/common/util/PackageUtils;->getInstance()Lcom/android/common/util/PackageUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/util/PackageUtils;->getHideUninstallButtonList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_10
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/launcher/uninstall/ForbiddenUninstallAppManager;->mForbiddenUninstallAppList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    iget-object v2, p0, Lcom/android/launcher/uninstall/ForbiddenUninstallAppManager;->mForbiddenUninstallAppList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_2a
    return-void
.end method

.method private parseForbiddenUninstallAppsFromXMLString(Ljava/lang/String;ZLjava/util/List;)I
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v0, -0x1

    const-string v1, "ForbiddenUninstallAppManager"

    if-eqz p0, :cond_10

    const-string/jumbo p0, "parseShortcutSettingsFromXMLString, xmlString is empty!"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_10
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_1c

    const-string/jumbo p0, "parseForbiddenUninstallAppsFromXMLString, onlyParseVersion = "

    invoke-static {p0, p2, v1}, Lcom/android/common/rus/a;->a(Ljava/lang/String;ZLjava/lang/String;)V

    :cond_1c
    if-nez p2, :cond_23

    if-eqz p3, :cond_23

    invoke-interface {p3}, Ljava/util/List;->clear()V

    :cond_23
    :try_start_23
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object p0

    invoke-virtual {p0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object p0

    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result p1

    const/4 v2, 0x0

    const-string v3, ""

    :goto_3d
    const/4 v4, 0x1

    if-eq p1, v4, :cond_86

    const/4 v4, 0x2

    if-ne v4, p1, :cond_81

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v4, "version"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_56

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p1

    move-object v3, p1

    goto :goto_81

    :cond_56
    if-nez p2, :cond_81

    const-string/jumbo v4, "string-array"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_66

    const/4 v2, 0x0

    invoke-interface {p0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    :cond_66
    if-eqz v2, :cond_81

    const-string v4, "local_forbidden_uninstall_pkg"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_81

    const-string v4, "item"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_81

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p1

    if-eqz p3, :cond_81

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_81
    :goto_81
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p1

    goto :goto_3d

    :cond_86
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_8a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_23 .. :try_end_8a} :catch_c1
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_8a} :catch_aa
    .catch Ljava/lang/NumberFormatException; {:try_start_23 .. :try_end_8a} :catch_93
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_8a} :catch_8b

    return p0

    :catch_8b
    move-exception p0

    const-string/jumbo p1, "parseForbiddenUninstallAppsFromXMLString, Exception = "

    invoke-static {p1, p0, v1}, Lcom/android/common/config/i;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_d7

    :catch_93
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "parseForbiddenUninstallAppsFromXMLString, NumberFormatException = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d7

    :catch_aa
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "parseForbiddenUninstallAppsFromXMLString, IOException = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d7

    :catch_c1
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "parseForbiddenUninstallAppsFromXMLString, XmlPullParserException = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_d7
    return v0
.end method

.method private updateAppForbiddenUninstallList(Ljava/lang/String;)V
    .registers 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-boolean v1, Lcom/android/common/config/FeatureOption;->isExp:Z

    const/4 v2, 0x0

    if-nez v1, :cond_1a

    invoke-static {}, Lcom/android/common/util/PackageUtils;->getInstance()Lcom/android/common/util/PackageUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/util/PackageUtils;->getHideUninstallButtonList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1a

    const/4 v1, 0x1

    goto :goto_1b

    :cond_1a
    move v1, v2

    :goto_1b
    const-wide/16 v3, -0x1

    if-eqz v1, :cond_28

    const-string p1, "ForbiddenUninstallAppManager"

    const-string v1, "13.1 domestic new project unnecessaryParseList parse mForbiddenUninstallAppList"

    invoke-static {p1, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v1, v3

    goto :goto_2d

    :cond_28
    invoke-direct {p0, p1, v2, v0}, Lcom/android/launcher/uninstall/ForbiddenUninstallAppManager;->parseForbiddenUninstallAppsFromXMLString(Ljava/lang/String;ZLjava/util/List;)I

    move-result p1

    int-to-long v1, p1

    :goto_2d
    cmp-long p1, v1, v3

    if-eqz p1, :cond_3b

    iget-object p1, p0, Lcom/android/launcher/uninstall/ForbiddenUninstallAppManager;->mForbiddenUninstallAppList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p0, p0, Lcom/android/launcher/uninstall/ForbiddenUninstallAppManager;->mForbiddenUninstallAppList:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3b
    return-void
.end method


# virtual methods
.method public isInAppForbidDeleteList(Lcom/android/launcher3/model/data/ItemInfo;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_36

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_a

    goto :goto_36

    :cond_a
    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher/uninstall/ForbiddenUninstallAppManager;->mForbiddenUninstallAppList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    const/4 v1, 0x1

    if-eqz p0, :cond_1c

    return v1

    :cond_1c
    invoke-static {p1}, Lcom/android/launcher/custom/CustomizeRestrictionManager;->isCustomizeDisAllowUninstall(Ljava/lang/String;)Z

    move-result p0

    const-string v2, "ForbiddenUninstallAppManager"

    if-eqz p0, :cond_2a

    const-string p0, "company customize dis allow uninstall panckage = "

    invoke-static {p0, p1, v2}, Lcom/android/common/multiapp/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_2a
    invoke-static {p1}, Lcom/android/launcher/custom/CustomizeRestrictionManager;->isCustomizeAppUninstallByWhiteList(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_36

    const-string p0, "company customize set app uninstall policy package = "

    invoke-static {p0, p1, v2}, Lcom/android/common/multiapp/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_36
    :goto_36
    return v0
.end method

.method public loadNewestUninstallAppList(Landroid/content/Context;)V
    .registers 10

    const-string v0, "ForbiddenUninstallAppManager"

    if-nez p1, :cond_a

    const-string p0, "loadNewestShortcutSettingConfig, context is null!"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_a
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v1

    if-eqz v1, :cond_15

    const-string v1, "loadNewestUninstallAppList after synchronized"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_15
    invoke-direct {p0, p1}, Lcom/android/launcher/uninstall/ForbiddenUninstallAppManager;->loadRomUpAppForbiddenUninstallList(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, -0x1

    if-nez v2, :cond_27

    invoke-direct {p0, v1, v4, v3}, Lcom/android/launcher/uninstall/ForbiddenUninstallAppManager;->parseForbiddenUninstallAppsFromXMLString(Ljava/lang/String;ZLjava/util/List;)I

    move-result v2

    goto :goto_2d

    :cond_27
    const-string v2, "loadNewestUninstallAppList, romUpdataXmlString is empty!"

    invoke-static {v0, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v5

    :goto_2d
    invoke-direct {p0, p1}, Lcom/android/launcher/uninstall/ForbiddenUninstallAppManager;->loadDefaultAppForbiddenUninstallList(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3c

    invoke-direct {p0, v6, v4, v3}, Lcom/android/launcher/uninstall/ForbiddenUninstallAppManager;->parseForbiddenUninstallAppsFromXMLString(Ljava/lang/String;ZLjava/util/List;)I

    move-result v5

    goto :goto_41

    :cond_3c
    const-string v3, "loadNewestUninstallAppList, defaultXmlString is empty!"

    invoke-static {v0, v3}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_41
    if-le v2, v5, :cond_44

    goto :goto_45

    :cond_44
    move-object v1, v6

    :goto_45
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v3

    if-eqz v3, :cond_52

    const-string v3, "loadNewestUninstallAppList, romUpdateVersion = "

    const-string v4, ", defaultVersion = "

    invoke-static {v3, v2, v4, v5, v0}, Lcom/android/common/config/g;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    :cond_52
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5c

    invoke-direct {p0, v1}, Lcom/android/launcher/uninstall/ForbiddenUninstallAppManager;->updateAppForbiddenUninstallList(Ljava/lang/String;)V

    goto :goto_61

    :cond_5c
    const-string v1, "loadNewestUninstallAppList, selectedXmlString is empty!"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_61
    invoke-direct {p0}, Lcom/android/launcher/uninstall/ForbiddenUninstallAppManager;->loadUninstallableAppConfig()V

    invoke-direct {p0, p1}, Lcom/android/launcher/uninstall/ForbiddenUninstallAppManager;->loadCustomForbiddenUninstallApps(Landroid/content/Context;)V

    return-void
.end method
