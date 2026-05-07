.class public Lorg/hapjs/card/sdk/utils/CardServiceLoader;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final CARD_SERVICE_IMPL_CLASS:Ljava/lang/String; = "org.hapjs.card.impl.CardServiceImpl"

.field private static final CARD_SERVICE_WORKER_CLASS:Ljava/lang/String; = "org.hapjs.card.impl.CardServiceWorker"

.field private static final INSTANT_CARD_APP:Ljava/lang/String; = "com.nearme.instant.card"

.field private static final INSTANT_PLATFORM:Ljava/lang/String; = "com.nearme.instant.platform"

.field private static final TAG:Ljava/lang/String; = "CardServiceLoader"

.field private static lastCheckTime:J = 0x0L

.field private static legacyMode:Z = true

.field private static volatile sService:Lorg/hapjs/card/api/CardService;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized checkEngineUpdateAsync(Landroid/content/Context;Z)V
    .registers 7

    const-class v0, Lorg/hapjs/card/sdk/utils/CardServiceLoader;

    monitor-enter v0

    :try_start_3
    sget-boolean v1, Lorg/hapjs/card/sdk/utils/CardServiceLoader;->legacyMode:Z

    if-nez v1, :cond_27

    if-nez p1, :cond_17

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    sget-wide v3, Lorg/hapjs/card/sdk/utils/CardServiceLoader;->lastCheckTime:J

    sub-long/2addr v1, v3

    const-wide/32 v3, 0xea60

    cmp-long p1, v1, v3

    if-lez p1, :cond_27

    :cond_17
    new-instance p1, Lorg/hapjs/card/sdk/utils/CardServiceLoader$1;

    const-string v1, "CheckCEUpdate"

    invoke-direct {p1, v1, p0}, Lorg/hapjs/card/sdk/utils/CardServiceLoader$1;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p0

    sput-wide p0, Lorg/hapjs/card/sdk/utils/CardServiceLoader;->lastCheckTime:J
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_29

    :cond_27
    monitor-exit v0

    return-void

    :catchall_29
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static clearCardServiceClass()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lorg/hapjs/card/sdk/utils/CardServiceLoader;->sService:Lorg/hapjs/card/api/CardService;

    return-void
.end method

.method private static getCEClassLoader(Landroid/content/Context;Ljava/lang/ClassLoader;Landroid/content/res/AssetManager;Z)Ljava/lang/ClassLoader;
    .registers 9

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-string v2, "com.nearme.instant.card"

    invoke-static {p0, v2}, Lcom/nearme/instant/xcard/UtilsKt;->checkCardAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "checkCardAppInstalled"

    invoke-static {v1, v0}, Lcom/nearme/instant/xcard/CardUtils;->addTrace(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v2, :cond_34

    if-eqz p3, :cond_31

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {p0}, Lcom/nearme/instant/xcard/UtilsKt;->checkCardApk(Landroid/content/Context;)Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    const-string v0, "checkCardApk"

    invoke-static {v0, p3}, Lcom/nearme/instant/xcard/CardUtils;->addTrace(Ljava/lang/String;Ljava/lang/String;)V

    :cond_31
    invoke-static {p0}, Lcom/nearme/instant/xcard/UtilsKt;->checkUpdate(Landroid/content/Context;)V

    :cond_34
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {p0, p2, v2}, Lcom/nearme/instant/xcard/UtilsKt;->checkEngineApk(Landroid/content/Context;Landroid/content/res/AssetManager;Z)Z

    move-result p2

    if-nez p2, :cond_40

    const/4 p0, 0x0

    return-object p0

    :cond_40
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p2

    sub-long/2addr p2, v0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const-string p3, "checkEngineApk"

    invoke-static {p3, p2}, Lcom/nearme/instant/xcard/CardUtils;->addTrace(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/nearme/instant/xcard/utils/PublicPrefUtil;->init(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/nearme/instant/xcard/UtilsKt;->sourceFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object p2

    invoke-static {p0}, Lcom/nearme/instant/xcard/UtilsKt;->optimizedDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object p3

    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_62

    invoke-virtual {p3}, Ljava/io/File;->mkdir()Z

    :cond_62
    new-instance v0, Lcom/nearme/instant/androidx/card/AndroidXHapDexClassLoader;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    invoke-static {p0}, Lcom/nearme/instant/xcard/UtilsKt;->is64Abi(Landroid/content/Context;)Z

    move-result v1

    invoke-static {p0, v1}, Lcom/nearme/instant/xcard/UtilsKt;->nativeLibraries(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p2, p3, p0, p1}, Lcom/nearme/instant/androidx/card/AndroidXHapDexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public static getSourcePath(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    sget-boolean v0, Lorg/hapjs/card/sdk/utils/CardServiceLoader;->legacyMode:Z

    if-eqz v0, :cond_1f

    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {p0}, Lorg/hapjs/card/common/utils/CardConfigHelper;->getPlatform(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;
    :try_end_13
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_13} :catch_14

    return-object p0

    :catch_14
    move-exception p0

    const-string v0, "CardServiceLoader"

    const-string v1, "getSourcePath fail."

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string p0, ""

    return-object p0

    :cond_1f
    invoke-static {p0}, Lcom/nearme/instant/xcard/UtilsKt;->sourceFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static load(Landroid/content/Context;)Lorg/hapjs/card/api/CardService;
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/hapjs/card/sdk/utils/CardServiceLoader;->load(Landroid/content/Context;Z)Lorg/hapjs/card/api/CardService;

    move-result-object p0

    return-object p0
.end method

.method public static load(Landroid/content/Context;Z)Lorg/hapjs/card/api/CardService;
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/hapjs/card/sdk/utils/CardServiceLoader;->load(Landroid/content/Context;ZLcom/nearme/instant/xcard/ICardEngineCallback;)Lorg/hapjs/card/api/CardService;

    move-result-object p0

    return-object p0
.end method

.method public static load(Landroid/content/Context;ZLcom/nearme/instant/xcard/ICardEngineCallback;)Lorg/hapjs/card/api/CardService;
    .registers 5

    sget-object v0, Lorg/hapjs/card/sdk/utils/CardServiceLoader;->sService:Lorg/hapjs/card/api/CardService;

    if-nez v0, :cond_25

    const-class v0, Lorg/hapjs/card/sdk/utils/CardServiceLoader;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lorg/hapjs/card/sdk/utils/CardServiceLoader;->sService:Lorg/hapjs/card/api/CardService;

    if-nez v1, :cond_20

    sget-object v1, Lorg/hapjs/card/sdk/BuildConfig;->LITE_MODE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1a

    invoke-static {p2}, Lorg/hapjs/card/sdk/utils/CardServiceLoader;->loadLocal(Lcom/nearme/instant/xcard/ICardEngineCallback;)Lorg/hapjs/card/api/CardService;

    move-result-object p0

    sput-object p0, Lorg/hapjs/card/sdk/utils/CardServiceLoader;->sService:Lorg/hapjs/card/api/CardService;

    goto :goto_20

    :cond_1a
    invoke-static {p0, p1, p2}, Lorg/hapjs/card/sdk/utils/CardServiceLoader;->loadRemote(Landroid/content/Context;ZLcom/nearme/instant/xcard/ICardEngineCallback;)Lorg/hapjs/card/api/CardService;

    move-result-object p0

    sput-object p0, Lorg/hapjs/card/sdk/utils/CardServiceLoader;->sService:Lorg/hapjs/card/api/CardService;

    :cond_20
    :goto_20
    monitor-exit v0

    goto :goto_25

    :catchall_22
    move-exception p0

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_7 .. :try_end_24} :catchall_22

    throw p0

    :cond_25
    :goto_25
    sget-object p0, Lorg/hapjs/card/sdk/utils/CardServiceLoader;->sService:Lorg/hapjs/card/api/CardService;

    return-object p0
.end method

.method private static loadLocal(Lcom/nearme/instant/xcard/ICardEngineCallback;)Lorg/hapjs/card/api/CardService;
    .registers 4

    :try_start_0
    const-string v0, "org.hapjs.card.impl.CardServiceWorker"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/hapjs/card/api/CardService;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    return-object v0

    :catch_d
    move-exception v0

    const-string v1, "CardServiceLoader"

    const-string v2, "Fail to create local CardService"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz p0, :cond_1b

    const/4 v1, 0x7

    invoke-interface {p0, v1, v0}, Lcom/nearme/instant/xcard/ICardEngineCallback;->onInitFailure(ILjava/lang/Throwable;)V

    :cond_1b
    const/4 p0, 0x0

    return-object p0
.end method

.method private static loadRemote(Landroid/content/Context;ZLcom/nearme/instant/xcard/ICardEngineCallback;)Lorg/hapjs/card/api/CardService;
    .registers 14

    const-string v0, "CardServiceLoader"

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    :try_start_7
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "com.nearme.instant.platform"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4
    :try_end_15
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_15} :catch_c9

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getAssets"

    invoke-static {v2, v1}, Lcom/nearme/instant/xcard/CardUtils;->addTrace(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v5, 0x1

    const/4 v6, 0x0

    :try_start_29
    const-string v7, "card/card.pak"

    invoke-virtual {v4, v7}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v7
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2f} :catch_3c

    if-eqz v7, :cond_33

    move v8, v5

    goto :goto_34

    :cond_33
    move v8, v6

    :goto_34
    if-eqz v7, :cond_52

    :try_start_36
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_39} :catch_3a

    goto :goto_52

    :catch_3a
    move-exception v7

    goto :goto_3e

    :catch_3c
    move-exception v7

    move v8, v6

    :goto_3e
    const-string v9, "not found card engine "

    invoke-static {v9}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_52
    :goto_52
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v1

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "open_card_pak"

    invoke-static {v2, v1}, Lcom/nearme/instant/xcard/CardUtils;->addTrace(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    if-nez v8, :cond_74

    invoke-static {p0}, Lcom/nearme/instant/xcard/CardUtils;->getClassLoader(Landroid/content/Context;)Ljava/lang/ClassLoader;

    move-result-object p0

    sput-boolean v5, Lorg/hapjs/card/sdk/utils/CardServiceLoader;->legacyMode:Z

    const-string p1, "not support independent card engine"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "org.hapjs.card.impl.CardServiceImpl"

    goto :goto_82

    :cond_74
    const-class v7, Lorg/hapjs/card/sdk/utils/CardServiceLoader;

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-static {p0, v7, v4, p1}, Lorg/hapjs/card/sdk/utils/CardServiceLoader;->getCEClassLoader(Landroid/content/Context;Ljava/lang/ClassLoader;Landroid/content/res/AssetManager;Z)Ljava/lang/ClassLoader;

    move-result-object p0

    sput-boolean v6, Lorg/hapjs/card/sdk/utils/CardServiceLoader;->legacyMode:Z

    const-string p1, "org.hapjs.card.impl.CardServiceWorker"

    :goto_82
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v1

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "load_class_loader"

    invoke-static {v2, v1}, Lcom/nearme/instant/xcard/CardUtils;->addTrace(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ServiceName"

    invoke-static {v1, p1}, Lcom/nearme/instant/xcard/CardUtils;->addTrace(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p0, :cond_9e

    if-eqz p2, :cond_9d

    const/4 p0, 0x3

    invoke-interface {p2, p0, v3}, Lcom/nearme/instant/xcard/ICardEngineCallback;->onInitFailure(ILjava/lang/Throwable;)V

    :cond_9d
    return-object v3

    :cond_9e
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    :try_start_a2
    invoke-static {p1, v5, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/hapjs/card/api/CardService;

    const-string p1, "load_class"

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v1

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/nearme/instant/xcard/CardUtils;->addTrace(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ba
    .catch Ljava/lang/Exception; {:try_start_a2 .. :try_end_ba} :catch_bb

    return-object p0

    :catch_bb
    move-exception p0

    const-string p1, "Fail to create remote CardService"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz p2, :cond_c8

    const/16 p1, 0x8

    invoke-interface {p2, p1, p0}, Lcom/nearme/instant/xcard/ICardEngineCallback;->onInitFailure(ILjava/lang/Throwable;)V

    :cond_c8
    return-object v3

    :catch_c9
    move-exception p0

    if-eqz p2, :cond_d0

    const/4 p1, 0x6

    invoke-interface {p2, p1, p0}, Lcom/nearme/instant/xcard/ICardEngineCallback;->onInitFailure(ILjava/lang/Throwable;)V

    :cond_d0
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    return-object v3
.end method
