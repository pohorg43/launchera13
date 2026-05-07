.class public Lcom/android/launcher/download/DownloadAppUtils;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final ANDROID_RESOURCES:Ljava/lang/String; = "http://schemas.android.com/apk/res/android"

.field private static final APP_STORE_STATE_FAILED:I = 0x8

.field public static final APP_STORE_STATE_ILLEGAL:I = -0x80000000

.field public static final APP_STORE_STATE_INC_FAILED:I = 0x2afd

.field public static final APP_STORE_STATE_INC_FINISHED:I = 0x2afb

.field public static final APP_STORE_STATE_INC_FULLY_LOADED:I = 0x2afc

.field public static final APP_STORE_STATE_INC_OFFSET:I = 0x2710

.field public static final APP_STORE_STATE_INC_PAUSED:I = 0x2afa

.field public static final APP_STORE_STATE_INC_PREPARE:I = 0x2af8

.field public static final APP_STORE_STATE_INC_STARTED:I = 0x2af9

.field public static final APP_STORE_STATE_INC_UNINITIALIZED:I = 0x2328

.field private static final APP_STORE_STATE_INSTALLING:I = 0x4

.field private static final APP_STORE_STATE_PAUSED:I = 0x2

.field private static final APP_STORE_STATE_PREPARE:I = 0x1

.field private static final APP_STORE_STATE_RESERVED:I = 0xc

.field private static final APP_STORE_STATE_STARTED:I = 0x0

.field private static final NAME:Ljava/lang/String; = "name"

.field private static final TAG:Ljava/lang/String; = "DownloadAppUtils"

.field private static final TAG_ACTION:Ljava/lang/String; = "action"

.field private static final TAG_CATEGORY:Ljava/lang/String; = "category"

.field private static final TAG_INTENT_FILTER:Ljava/lang/String; = "intent-filter"

.field private static sDefaultDownloadAppIcon:Landroid/graphics/drawable/Drawable;

.field private static sDefaultDownloadAppIconBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/download/DownloadAppUtils;->lambda$clearAllDownloadIcons$0(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static appStoreState2InterestState(I)I
    .registers 4

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eqz p0, :cond_2a

    if-eq p0, v1, :cond_28

    if-eq p0, v0, :cond_26

    const/4 v2, 0x4

    if-eq p0, v2, :cond_23

    const/16 v2, 0x8

    if-eq p0, v2, :cond_26

    const/16 v2, 0xc

    if-eq p0, v2, :cond_21

    const/16 v2, 0x3e8

    if-eq p0, v2, :cond_2b

    const/16 v2, 0x3e9

    if-eq p0, v2, :cond_2b

    packed-switch p0, :pswitch_data_2c

    const/high16 p0, -0x80000000

    goto :goto_2b

    :cond_21
    const/4 p0, 0x5

    goto :goto_2b

    :cond_23
    const/16 p0, 0x64

    goto :goto_2b

    :cond_26
    :pswitch_26  #0x2afa, 0x2afd
    move p0, v0

    goto :goto_2b

    :cond_28
    :pswitch_28  #0x2af8
    move p0, v1

    goto :goto_2b

    :cond_2a
    :pswitch_2a  #0x2af9, 0x2afb, 0x2afc
    const/4 p0, 0x0

    :cond_2b
    :goto_2b
    return p0

    :pswitch_data_2c
    .packed-switch 0x2af8
        :pswitch_28  #00002af8
        :pswitch_2a  #00002af9
        :pswitch_26  #00002afa
        :pswitch_2a  #00002afb
        :pswitch_2a  #00002afc
        :pswitch_26  #00002afd
    .end packed-switch
.end method

.method public static clearAllDownloadIcons(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    invoke-static {}, Lcom/android/common/util/PackageCompatUtils;->getMarketPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    invoke-static {}, Lcom/android/common/util/PackageCompatUtils;->getGameCenterPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    :cond_14
    sget-object v0, Lcom/android/launcher3/util/Executors;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Landroidx/constraintlayout/motion/widget/a;

    invoke-direct {v1, p0, p1}, Landroidx/constraintlayout/motion/widget/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_1e
    return-void
.end method

.method public static getApkIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 6

    const/4 v0, 0x0

    const-string v1, "DownloadAppUtils"

    const-string v2, "InstallApp"

    if-eqz p1, :cond_4e

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_13

    goto :goto_4e

    :cond_13
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v3, 0x1

    invoke-virtual {p0, p1, v3}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-eqz v3, :cond_4d

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object p1, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object p1, v3, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    :try_start_24
    invoke-virtual {v3, p0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getApkIcon drawable = "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v1, p1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_4d

    sget-object p1, Lcom/android/common/util/BitmapUtils;->INSTANCE:Lcom/android/common/util/BitmapUtils;

    invoke-virtual {p1, p0}, Lcom/android/common/util/BitmapUtils;->drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_44} :catch_45

    return-object p0

    :catch_45
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v1, p1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4d
    return-object v0

    :cond_4e
    :goto_4e
    const-string p0, "getApkIcon. The file is not exist !"

    invoke-static {v2, v1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getApkPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_1e

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_f

    goto :goto_1e

    :cond_f
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_1d

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    return-object p0

    :cond_1d
    return-object v0

    :cond_1e
    :goto_1e
    const-string p0, "InstallApp"

    const-string p1, "DownloadAppUtils"

    const-string v1, "getApkPackageName. The file is not exist !"

    invoke-static {p0, p1, v1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getDownloadAppTitle(Landroid/content/Context;I)Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f03001b

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    if-eqz p1, :cond_46

    if-eq p1, v0, :cond_42

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3f

    const/4 v0, 0x4

    if-eq p1, v0, :cond_3b

    const/4 v1, 0x5

    if-eq p1, v1, :cond_38

    const/16 v0, 0x64

    if-eq p1, v0, :cond_3b

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getDownloadAppTitle -- illegal state = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "InstallApp"

    const-string v0, "DownloadAppUtils"

    invoke-static {p1, v0, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, ""

    return-object p0

    :cond_38
    aget-object p0, p0, v0

    return-object p0

    :cond_3b
    const/4 p1, 0x3

    aget-object p0, p0, p1

    return-object p0

    :cond_3f
    aget-object p0, p0, v0

    return-object p0

    :cond_42
    const/4 p1, 0x0

    aget-object p0, p0, p1

    return-object p0

    :cond_46
    aget-object p0, p0, v0

    return-object p0
.end method

.method public static isDefaultDownloadIcon(Landroid/graphics/Bitmap;)Z
    .registers 2

    sget-object v0, Lcom/android/launcher/download/DownloadAppUtils;->sDefaultDownloadAppIconBitmap:Landroid/graphics/Bitmap;

    if-ne p0, v0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public static isNetworkAvailable(Landroid/content/Context;)Z
    .registers 6

    const-string v0, "DownloadAppUtils"

    const-string v1, "InstallApp"

    const/4 v2, 0x0

    :try_start_5
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    if-nez p0, :cond_15

    const-string p0, "isNetworkAvailable couldn\'t get connectivity manager"

    invoke-static {v1, v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_49

    :cond_15
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_49

    move v3, v2

    :goto_1c
    array-length v4, p0

    if-ge v3, v4, :cond_49

    aget-object v4, p0, v3

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v4

    if-eqz v4, :cond_31

    aget-object v4, p0, v3

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v4
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_2d} :catch_34

    if-eqz v4, :cond_31

    const/4 p0, 0x1

    return p0

    :cond_31
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    :catch_34
    move-exception p0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isNetworkAvailable e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v0, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_49
    :goto_49
    return v2
.end method

.method public static isPackageLaunchOnScreen(Ljava/lang/String;)Z
    .registers 25

    move-object/from16 v0, p0

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v1

    const-string v2, "DownloadAppUtils"

    const-string v3, "InstallApp"

    if-eqz v1, :cond_11

    const-string v1, "isPackageLaunchOnScreen -- begin, apkPath = "

    invoke-static {v1, v0, v3, v2}, Lcom/android/launcher/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    if-eqz v0, :cond_101

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_20

    goto/16 :goto_101

    :cond_20
    :try_start_20
    new-instance v1, Landroid/content/res/AssetManager;

    invoke-direct {v1}, Landroid/content/res/AssetManager;-><init>()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_25} :catch_d1
    .catchall {:try_start_20 .. :try_end_25} :catchall_cd

    :try_start_25
    invoke-virtual {v1, v0}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    move-result v15

    if-eqz v15, :cond_b0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v0, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    sget v22, Landroid/os/Build$VERSION;->RESOURCES_SDK_INT:I

    move-object v4, v1

    move/from16 v23, v15

    move v15, v0

    invoke-virtual/range {v4 .. v22}, Landroid/content/res/AssetManager;->setConfiguration(IILjava/lang/String;IIIIIIIIIIIIIII)V

    const-string v0, "AndroidManifest.xml"

    move/from16 v4, v23

    invoke-virtual {v1, v4, v0}, Landroid/content/res/AssetManager;->openXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v4
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_53} :catch_cb
    .catchall {:try_start_25 .. :try_end_53} :catchall_c9

    :try_start_53
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v0

    :cond_57
    :goto_57
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_a5

    const/4 v7, 0x3

    if-ne v5, v7, :cond_67

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v8

    if-le v8, v0, :cond_a5

    :cond_67
    if-eq v5, v7, :cond_57

    const/4 v7, 0x4

    if-ne v5, v7, :cond_6d

    goto :goto_57

    :cond_6d
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v7

    if-eqz v7, :cond_8b

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isPackageLaunchOnScreen -- tagName = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v2, v7}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8b
    const-string v7, "intent-filter"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_57

    invoke-static {v4}, Lcom/android/launcher/download/DownloadAppUtils;->parseIntent(Landroid/content/res/XmlResourceParser;)Z

    move-result v5

    if-eqz v5, :cond_57

    const-string v0, "isPackageLaunchOnScreen -- the apk has icon in launcher"

    invoke-static {v3, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_9e} :catch_ae
    .catchall {:try_start_53 .. :try_end_9e} :catchall_ac

    invoke-virtual {v1}, Landroid/content/res/AssetManager;->close()V

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    return v6

    :cond_a5
    invoke-virtual {v1}, Landroid/content/res/AssetManager;->close()V

    :goto_a8
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_f0

    :catchall_ac
    move-exception v0

    goto :goto_f6

    :catch_ae
    move-exception v0

    goto :goto_d4

    :cond_b0
    :try_start_b0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isPackageLauncherOnScreen. Failed adding asset path: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c4
    .catch Ljava/lang/Exception; {:try_start_b0 .. :try_end_c4} :catch_cb
    .catchall {:try_start_b0 .. :try_end_c4} :catchall_c9

    invoke-virtual {v1}, Landroid/content/res/AssetManager;->close()V

    const/4 v0, 0x0

    return v0

    :catchall_c9
    move-exception v0

    goto :goto_cf

    :catch_cb
    move-exception v0

    goto :goto_d3

    :catchall_cd
    move-exception v0

    const/4 v1, 0x0

    :goto_cf
    const/4 v4, 0x0

    goto :goto_f6

    :catch_d1
    move-exception v0

    const/4 v1, 0x0

    :goto_d3
    const/4 v4, 0x0

    :goto_d4
    :try_start_d4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isPackageLauncherOnScreen. e "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v2, v5, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_e8
    .catchall {:try_start_d4 .. :try_end_e8} :catchall_ac

    if-eqz v1, :cond_ed

    invoke-virtual {v1}, Landroid/content/res/AssetManager;->close()V

    :cond_ed
    if-eqz v4, :cond_f0

    goto :goto_a8

    :cond_f0
    :goto_f0
    const-string v0, "isPackageLauncherOnScreen -- the APK will not dispaly in launcher!"

    invoke-static {v3, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_111

    :goto_f6
    if-eqz v1, :cond_fb

    invoke-virtual {v1}, Landroid/content/res/AssetManager;->close()V

    :cond_fb
    if-eqz v4, :cond_100

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_100
    throw v0

    :cond_101
    :goto_101
    new-instance v1, Ljava/io/FileNotFoundException;

    const-string v4, " not found!"

    invoke-static {v0, v4}, Landroidx/appcompat/view/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    const-string v0, "isPackageLauncherOnScreen. The file is not exist !"

    invoke-static {v3, v2, v0, v1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_111
    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$clearAllDownloadIcons$0(Landroid/content/Context;Ljava/lang/String;)V
    .registers 9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Lcom/android/launcher/download/DownloadAppsManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/download/DownloadAppsManager;

    move-result-object p0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/launcher/download/DownloadAppsManager;->onAppStoreOrGameCenterDataCleared(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object p0

    if-nez p0, :cond_26

    const-string p0, "InstallApp"

    const-string p1, "DownloadAppUtils"

    const-string v0, "clearAllDownloadIcon app = null;"

    invoke-static {p0, p1, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_26
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v3, 0x0

    if-lez p1, :cond_83

    const/4 p1, 0x0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_32
    :goto_32
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_57

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    sget-boolean v6, Lcom/android/common/config/FeatureOption;->isSupportMultiApp:Z

    if-eqz v6, :cond_32

    invoke-static {}, Lcom/android/common/multiapp/MultiAppManager;->getInstance()Lcom/android/common/multiapp/MultiAppManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/common/multiapp/MultiAppManager;->isMultiAppAdded(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_32

    if-nez p1, :cond_53

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_53
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_32

    :cond_57
    if-eqz p1, :cond_70

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_70

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v4

    sget-object v5, Lcom/android/common/multiapp/MultiAppManager;->MULTI_USER_HANDLE:Landroid/os/UserHandle;

    new-array v6, v3, [Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {v4, v5, p1}, Lcom/android/launcher3/LauncherModel;->onPackageChanged(Landroid/os/UserHandle;[Ljava/lang/String;)V

    :cond_70
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object p1

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p1, v4, v0}, Lcom/android/launcher3/LauncherModel;->onPackageChanged(Landroid/os/UserHandle;[Ljava/lang/String;)V

    :cond_83
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_9c

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object p1

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    new-array v4, v3, [Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/launcher3/LauncherModel;->onPackagesRemoved(Landroid/os/UserHandle;[Ljava/lang/String;)V

    :cond_9c
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_b5

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object p0

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    new-array v0, v3, [Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/OplusLauncherModel;->onUninstallApps(Landroid/os/UserHandle;[Ljava/lang/String;)V

    :cond_b5
    return-void
.end method

.method private static loadDefaultDownloadAppIcon(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .registers 2

    sget-object v0, Lcom/android/launcher/download/DownloadAppUtils;->sDefaultDownloadAppIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_d

    const v0, 0x7f080531

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    sput-object p0, Lcom/android/launcher/download/DownloadAppUtils;->sDefaultDownloadAppIcon:Landroid/graphics/drawable/Drawable;

    :cond_d
    sget-object p0, Lcom/android/launcher/download/DownloadAppUtils;->sDefaultDownloadAppIconBitmap:Landroid/graphics/Bitmap;

    if-nez p0, :cond_1b

    sget-object p0, Lcom/android/launcher/download/DownloadAppUtils;->sDefaultDownloadAppIcon:Landroid/graphics/drawable/Drawable;

    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    sput-object p0, Lcom/android/launcher/download/DownloadAppUtils;->sDefaultDownloadAppIconBitmap:Landroid/graphics/Bitmap;

    :cond_1b
    sget-object p0, Lcom/android/launcher/download/DownloadAppUtils;->sDefaultDownloadAppIconBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method private static loadIconFromFile(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 6

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    const-string v1, "DownloadAppUtils"

    const-string v2, "InstallApp"

    if-eqz v0, :cond_f

    const-string v0, "loadIconFromFile -- iconFilePath = "

    invoke-static {v0, p1, v2, v1}, Lcom/android/launcher/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-static {p0}, Lcom/android/launcher/download/DownloadAppUtils;->loadDefaultDownloadAppIcon(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_1a
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_46

    new-instance p1, Ljava/io/FileNotFoundException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not found!"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    const-string p0, "loadIconFromFile -- iconFilePath is not exist! Get default icon."

    invoke-static {v2, v1, p0, p1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v3

    :cond_46
    new-instance p0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    invoke-static {p1, p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_5e

    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "bitmap is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    const-string p1, "loadIconFromFile -- decode bitmap is null! Get default icon."

    invoke-static {v2, v1, p1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v3

    :cond_5e
    const-string v0, "loadIconFromFile -- decode bitmap width = "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", height = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v0, p0, v2, v1}, Lcom/android/launcher/download/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public static loadIconFromIconPath(Landroid/content/Context;Ljava/lang/String;Z)Landroid/graphics/Bitmap;
    .registers 7

    const-string v0, "DownloadAppUtils"

    const-string v1, "InstallApp"

    if-nez p0, :cond_1a

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_18

    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "context is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    const-string p1, "loadIconFromIconPath context is null"

    invoke-static {v1, v0, p1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_18
    const/4 p0, 0x0

    return-object p0

    :cond_1a
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p1

    if-eqz p1, :cond_2b

    const-string p1, "loadIconFromIconPath iconPath is null"

    invoke-static {v1, v0, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2b
    invoke-static {p0}, Lcom/android/launcher/download/DownloadAppUtils;->loadDefaultDownloadAppIcon(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_97

    :cond_30
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadIconFromIconPath iconPath = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "content://"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_51

    invoke-static {p0, p1}, Lcom/android/launcher/download/DownloadAppUtils;->loadIconFromUri(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_55

    :cond_51
    invoke-static {p0, p1}, Lcom/android/launcher/download/DownloadAppUtils;->loadIconFromFile(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    :goto_55
    if-nez v2, :cond_71

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v2

    if-eqz v2, :cond_6c

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "loadIconFromIconPath iconPath:[%s] load failed"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v0, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6c
    invoke-static {p0}, Lcom/android/launcher/download/DownloadAppUtils;->loadDefaultDownloadAppIcon(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_72

    :cond_71
    move-object p1, v2

    :goto_72
    if-eqz p2, :cond_96

    invoke-static {p1}, Lcom/android/launcher/download/DownloadAppUtils;->isDefaultDownloadIcon(Landroid/graphics/Bitmap;)Z

    move-result p2

    if-nez p2, :cond_96

    :try_start_7a
    sget-object p2, Lcom/android/common/util/BitmapUtils;->INSTANCE:Lcom/android/common/util/BitmapUtils;

    invoke-virtual {p2, p0, p1}, Lcom/android/common/util/BitmapUtils;->convertToThemeStyle(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_80} :catch_81

    goto :goto_97

    :catch_81
    move-exception p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadIconFromIconPath e = "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, v0, p2, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_96
    move-object p0, p1

    :goto_97
    return-object p0
.end method

.method private static loadIconFromUri(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 7

    const/4 v0, 0x0

    const-string v1, "DownloadAppUtils"

    const-string v2, "InstallApp"

    if-nez p0, :cond_14

    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "context is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    const-string p1, "loadIconFromUri context is null"

    invoke-static {v2, v1, p1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0

    :cond_14
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_24

    const-string p1, "loadIconFromIconPath contentUri is null"

    invoke-static {v2, v1, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/launcher/download/DownloadAppUtils;->loadDefaultDownloadAppIcon(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_24
    const-string v3, "loadIconFromUri uri = "

    invoke-static {v3, p1, v2, v1}, Lcom/android/launcher/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_29
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const/4 v3, 0x1

    invoke-virtual {p0, p1, v3}, Landroid/content/ContentResolver;->takePersistableUriPermission(Landroid/net/Uri;I)V

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_39} :catch_42
    .catchall {:try_start_29 .. :try_end_39} :catchall_40

    :try_start_39
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_3d} :catch_3e
    .catchall {:try_start_39 .. :try_end_3d} :catchall_63

    goto :goto_5f

    :catch_3e
    move-exception p1

    goto :goto_45

    :catchall_40
    move-exception p0

    goto :goto_66

    :catch_42
    move-exception p0

    move-object p1, p0

    move-object p0, v0

    :goto_45
    :try_start_45
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v3

    if-eqz v3, :cond_5f

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadIconFromUri failed to load bitmap e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3, p1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5f
    .catchall {:try_start_45 .. :try_end_5f} :catchall_63

    :cond_5f
    :goto_5f
    invoke-static {p0}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    return-object v0

    :catchall_63
    move-exception p1

    move-object v0, p0

    move-object p0, p1

    :goto_66
    invoke-static {v0}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    throw p0
.end method

.method private static parseIntent(Landroid/content/res/XmlResourceParser;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    :cond_9
    :goto_9
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_72

    const/4 v4, 0x3

    if-ne v2, v4, :cond_19

    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v5

    if-le v5, v0, :cond_72

    :cond_19
    if-eq v2, v4, :cond_9

    const/4 v4, 0x4

    if-ne v2, v4, :cond_1f

    goto :goto_9

    :cond_1f
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "action"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "android.intent.category.LAUNCHER"

    const-string v6, "android.intent.action.MAIN"

    const-string/jumbo v7, "name"

    const-string v8, "http://schemas.android.com/apk/res/android"

    if-eqz v4, :cond_42

    invoke-interface {p0, v8, v7}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_57

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_57

    :cond_42
    const-string v4, "category"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_57

    invoke-interface {p0, v8, v7}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_57

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    :cond_57
    :goto_57
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {v1, v5}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string p0, "InstallApp"

    const-string v0, "DownloadAppUtils"

    const-string/jumbo v1, "parseIntent -- find an intent with ACTION_MAIN and CATEGORY_LAUNCHER"

    invoke-static {p0, v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_72
    const/4 p0, 0x0

    return p0
.end method

.method public static recycleStaticResources()V
    .registers 0

    return-void
.end method

.method public static state2AppStoreState(I)I
    .registers 3

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eqz p0, :cond_f

    if-eq p0, v1, :cond_d

    if-eq p0, v0, :cond_10

    const/4 v1, 0x5

    if-eq p0, v1, :cond_10

    const/4 v0, -0x1

    goto :goto_10

    :cond_d
    move v0, v1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :cond_10
    :goto_10
    return v0
.end method
