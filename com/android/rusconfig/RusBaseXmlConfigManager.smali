.class public Lcom/android/rusconfig/RusBaseXmlConfigManager;
.super Lcom/android/rusconfig/RusBaseConfigManager;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/rusconfig/RusBaseXmlConfigManager$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/rusconfig/RusBaseConfigManager<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/rusconfig/RusBaseXmlConfigManager$Companion;

.field public static final XML_TAG_FILTER_CONF:Ljava/lang/String; = "filter-conf"

.field public static final XML_TAG_FILTER_NAME:Ljava/lang/String; = "filter-name"

.field public static final XML_TAG_GROUP_STRING_ARRAY:Ljava/lang/String; = "string-array"

.field public static final XML_TAG_IS_OPEN:Ljava/lang/String; = "isOpen"

.field public static final XML_TAG_STRING_VERSION:Ljava/lang/String; = "version"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/rusconfig/RusBaseXmlConfigManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/rusconfig/RusBaseXmlConfigManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/rusconfig/RusBaseXmlConfigManager;->Companion:Lcom/android/rusconfig/RusBaseXmlConfigManager$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/rusconfig/RusBaseConfigManager;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getLocalVersion(Landroid/content/Context;)Ljava/lang/Integer;
    .registers 2

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public loadAndParserRusConfigData(Landroid/content/Context;)Z
    .registers 13

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    invoke-virtual {p0}, Lcom/android/rusconfig/RusBaseConfigManager;->supportRus()Z

    move-result v1

    if-nez v1, :cond_b

    return v0

    :cond_b
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v1

    const-string v2, "RusBaseConfigManager"

    if-eqz v1, :cond_24

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v3, " loadAndParserRusConfigData, load data from rus or assets"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_24
    invoke-virtual {p0, p1}, Lcom/android/rusconfig/RusBaseXmlConfigManager;->loadRusRomList(Landroid/content/Context;)Ly2/i;

    move-result-object v1

    iget-object v1, v1, Ly2/i;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    if-nez v3, :cond_41

    invoke-virtual {p0, v1, v4, v5}, Lcom/android/rusconfig/RusBaseConfigManager;->parseConfigDataSync(Ljava/lang/String;ZLjava/lang/Object;)Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_3c

    goto :goto_52

    :cond_3c
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_53

    :cond_41
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-string v7, " loadAndParserRusConfigData, rusRomXmlString is empty!"

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_52
    move v3, v6

    :goto_53
    invoke-virtual {p0, p1}, Lcom/android/rusconfig/RusBaseXmlConfigManager;->getLocalVersion(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v7

    if-eqz v7, :cond_5f

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object v8, v5

    goto :goto_97

    :cond_5f
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    const-string v9, " loadAndParserRusConfigData, customLocalVersion is null!"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/rusconfig/RusBaseXmlConfigManager;->loadLocalFileList(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_86

    invoke-virtual {p0, v8, v4, v5}, Lcom/android/rusconfig/RusBaseConfigManager;->parseConfigDataSync(Ljava/lang/String;ZLjava/lang/Object;)Ljava/lang/Integer;

    move-result-object v9

    if-nez v9, :cond_81

    goto :goto_97

    :cond_81
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_97

    :cond_86
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    const-string v10, " loadAndParserRusConfigData, localXmlString is empty!"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_97
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v9

    if-eqz v9, :cond_bd

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " loadAndParserRusConfigData, rusRomVersion:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", localVersion:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9, v6, v2}, Lcom/android/common/config/h;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_bd
    if-le v3, v6, :cond_c0

    goto :goto_c5

    :cond_c0
    if-nez v7, :cond_c4

    move-object v1, v8

    goto :goto_c5

    :cond_c4
    move-object v1, v5

    :goto_c5
    if-eqz v1, :cond_d2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d2

    invoke-virtual {p0, p1, v1}, Lcom/android/rusconfig/RusBaseConfigManager;->updateConfigData(Landroid/content/Context;Ljava/lang/String;)V

    move v0, v4

    goto :goto_e3

    :cond_d2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    const-string p1, " loadAndParserRusConfigData failed, selectedXmlString is empty!"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_e3
    return v0
.end method

.method public loadLocalFileList(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/rusconfig/RusBaseConfigManager;->getLocalFileConfigName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_e

    return-object v1

    :cond_e
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    const/4 v0, 0x0

    :try_start_13
    invoke-virtual {p0}, Lcom/android/rusconfig/RusBaseConfigManager;->getLocalFileConfigName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    sget-object p0, Lcom/android/common/util/FileOperationUtils;->INSTANCE:Lcom/android/common/util/FileOperationUtils;

    invoke-virtual {p0, v0}, Lcom/android/common/util/FileOperationUtils;->inputStream2String(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_21} :catch_27
    .catchall {:try_start_13 .. :try_end_21} :catchall_25

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object p0

    :catchall_25
    move-exception p0

    goto :goto_37

    :catch_27
    move-exception p0

    :try_start_28
    const-string p1, "RusBaseConfigManager"

    const-string v2, "loadLocalFileList, e:"

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_33
    .catchall {:try_start_28 .. :try_end_33} :catchall_25

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object v1

    :goto_37
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw p0
.end method

.method public loadRusRomList(Landroid/content/Context;)Ly2/i;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ly2/i<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/rusconfig/RusBaseConfigManager;->getRusRomConfigName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    const-string v2, "0"

    if-nez v0, :cond_15

    new-instance p0, Ly2/i;

    invoke-direct {p0, v2, v1}, Ly2/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_15
    const-string/jumbo v0, "version"

    const-string/jumbo v3, "xml"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v6

    const/4 v10, 0x0

    :try_start_20
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string p1, "content://com.oplus.romupdate.provider.db/update_list"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "filtername=\'"

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/rusconfig/RusBaseConfigManager;->getRusRomConfigName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x27

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    if-eqz v10, :cond_79

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p0

    if-eqz p0, :cond_79

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v10, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v10, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ly2/i;

    invoke-direct {v0, p0, p1}, Ly2/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_67} :catch_6d
    .catchall {:try_start_20 .. :try_end_67} :catchall_6b

    invoke-static {v10}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    return-object v0

    :catchall_6b
    move-exception p0

    goto :goto_82

    :catch_6d
    move-exception p0

    :try_start_6e
    const-string p1, "RusBaseConfigManager"

    const-string v0, "loadRusRomList, e:"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_79
    .catchall {:try_start_6e .. :try_end_79} :catchall_6b

    :cond_79
    invoke-static {v10}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    new-instance p0, Ly2/i;

    invoke-direct {p0, v2, v1}, Ly2/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :goto_82
    invoke-static {v10}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    throw p0
.end method

.method public parseConfigData(Ljava/lang/String;ZLjava/lang/Object;)Ljava/lang/Integer;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZTT;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    const-string p0, "configString"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, -0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
