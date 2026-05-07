.class public Lcom/oplus/wallpaper/sdk/WallpaperGetter;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final BASE_PRODUCT_DEFAULT_DIR:Ljava/lang/String; = "/decouping_wallpaper/default/"

.field private static final BASE_WALLPAPER_DEFAULT_DIR:Ljava/lang/String; = "/decouping_wallpaper/"

.field private static final COTA_DIR:Ljava/lang/String;

.field private static final CUSTOM_DIR:Ljava/lang/String;

.field private static final CUSTOM_LOCK_WALLPAPER_NAME:Ljava/lang/String; = "default_wallpaper_lock"

.field private static final CUSTOM_WALLPAPER_NAME:Ljava/lang/String; = "default_wallpaper"

.field private static final DEFAULT_LOCK_WALLPAPER_NAME:Ljava/lang/String; = "default_wallpaper_lock"

.field private static final DEFAULT_LOCK_WALLPAPER_NAME_BELOW_OS_11_2:Ljava/lang/String; = "b3Bwb19kZWZhdWx0X3dhbGxwYXBlcl9sb2Nr"

.field private static final DEFAULT_WALLPAPER_NAME:Ljava/lang/String; = "default_wallpaper"

.field private static final DEFAULT_WALLPAPER_NAME_BELOW_OS_11_2:Ljava/lang/String; = "b3Bwb19kZWZhdWx0X3dhbGxwYXBlcg=="

.field private static final METHOD_GET_COTA_DIR_R:Ljava/lang/String; = "getOplusCotaDirectory"

.field private static final METHOD_GET_CUSTOM_DIR_R:Ljava/lang/String; = "getOplusCustomDirectory"

.field private static final METHOD_GET_PRODUCT_DIR_R:Ljava/lang/String; = "getOplusProductDirectory"

.field private static final METHOD_GET_VERSION_DIR_R:Ljava/lang/String; = "getOplusVersionDirectory"

.field private static final OPERATOR:Ljava/lang/String; = "operator"

.field private static final PHONE_COLOR_MAPS_DYNAMIC_FILE_NAME:Ljava/lang/String; = "phone_color_dynamic_default_theme_maps"

.field private static final PHONE_COLOR_MAPS_FILE_SUFFIX:Ljava/lang/String; = ".xml"

.field private static final PRODUCT_DIR:Ljava/lang/String;

.field private static final PROP_HW_PHONE_COLOR:Ljava/lang/String; = "ro.hw.phone.color"

.field private static final TAG:Ljava/lang/String; = "WS.WallpaperGetter"

.field private static final TAG_DEFAULT_WALLPAPER_COMPONENT:Ljava/lang/String; = "DefaultWallpaperComponent"

.field private static final TAG_DYNAMIC_WALLPAPER_CLASS_NAME_BELOW_OS_11_2:Ljava/lang/String; = "b3Bwb19kZWZhdWx0X2R5bmFtaWNfd2FsbHBhcGVyX2NsYXNzX25hbWU="

.field private static final TAG_DYNAMIC_WALLPAPER_PACKAGE_NAME_BELOW_OS_11_2:Ljava/lang/String; = "b3Bwb19kZWZhdWx0X2R5bmFtaWNfd2FsbHBhcGVyX3BhY2thZ2VfbmFtZQ=="

.field private static final TAG_PHONE_COLOR:Ljava/lang/String; = "PhoneColor"

.field private static final WALLPAPER_CUSTOM_FILE_DIR:Ljava/lang/String; = "/media/wallpaper/default"

.field private static final WALLPAPER_SUFFIX:Ljava/lang/String; = ".png"

.field private static final XML_ENCODING:Ljava/lang/String; = "UTF-8"

.field private static sDefaultFileNameCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sWallpaperGetter:Lcom/oplus/wallpaper/sdk/WallpaperGetter;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lcom/oplus/wallpaper/sdk/WallpaperGetter;->getProductDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/wallpaper/sdk/WallpaperGetter;->PRODUCT_DIR:Ljava/lang/String;

    invoke-static {}, Lcom/oplus/wallpaper/sdk/WallpaperGetter;->getCustomDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/wallpaper/sdk/WallpaperGetter;->CUSTOM_DIR:Ljava/lang/String;

    invoke-static {}, Lcom/oplus/wallpaper/sdk/WallpaperGetter;->getCotaDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/wallpaper/sdk/WallpaperGetter;->COTA_DIR:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/oplus/wallpaper/sdk/WallpaperGetter;->sWallpaperGetter:Lcom/oplus/wallpaper/sdk/WallpaperGetter;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/oplus/wallpaper/sdk/WallpaperGetter;->sDefaultFileNameCache:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/wallpaper/sdk/WallpaperGetter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/wallpaper/sdk/WallpaperGetter;->mContext:Landroid/content/Context;

    return-void
.end method

.method private findPhoneColorDefaultDynamicWallpaper(Ljava/lang/String;)[Ljava/lang/String;
    .registers 13

    const-string v0, "findPhoneColorDefaultDynamicWallpaper: Closing inputStream. e = "

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "WS.WallpaperGetter"

    if-eqz v1, :cond_11

    const-string p0, "findPhoneColorDefaultDynamicWallpaper: The phoneColorName is empty!"

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_11
    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/String;

    const/4 v5, 0x1

    :try_start_15
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/oplus/wallpaper/sdk/WallpaperGetter;->getDefaultWallpaperPath()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/decouping_wallpaper/default/"

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "phone_color_dynamic_default_theme_maps"

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".xml"

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v6, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_49

    const-string p0, "findPhoneColorDefaultDynamicWallpaper: The phone color map file is not exists!"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_49
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "findPhoneColorDefaultDynamicWallpaper: phoneColorMapFile = "

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/oplus/wallpaper/sdk/LogUtils;->debugI(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_62} :catch_de
    .catchall {:try_start_15 .. :try_end_62} :catchall_dc

    :try_start_62
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-interface {v6, p0, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v7

    move-object v8, v2

    :goto_70
    if-eq v7, v5, :cond_cc

    const/4 v9, 0x0

    if-eq v7, v1, :cond_76

    goto :goto_b6

    :cond_76
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v10, "PhoneColor"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_97

    new-instance v8, Ljava/lang/String;

    invoke-interface {v6, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_92

    goto :goto_97

    :cond_92
    aput-object v2, v4, v9

    aput-object v2, v4, v5

    move-object v8, v2

    :cond_97
    :goto_97
    if-eqz v8, :cond_b6

    const-string v10, "b3Bwb19kZWZhdWx0X2R5bmFtaWNfd2FsbHBhcGVyX3BhY2thZ2VfbmFtZQ=="

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a8

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v9

    goto :goto_b6

    :cond_a8
    const-string v10, "b3Bwb19kZWZhdWx0X2R5bmFtaWNfd2FsbHBhcGVyX2NsYXNzX25hbWU="

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b6

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    :cond_b6
    :goto_b6
    aget-object v7, v4, v9

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_c7

    aget-object v7, v4, v5

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_c7

    goto :goto_cc

    :cond_c7
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7
    :try_end_cb
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_cb} :catch_d9
    .catchall {:try_start_62 .. :try_end_cb} :catchall_d7

    goto :goto_70

    :cond_cc
    :goto_cc
    :try_start_cc
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_cf
    .catch Ljava/lang/Exception; {:try_start_cc .. :try_end_cf} :catch_d0

    goto :goto_10d

    :catch_d0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_100

    :catchall_d7
    move-exception p1

    goto :goto_122

    :catch_d9
    move-exception p1

    move-object v2, p0

    goto :goto_e0

    :catchall_dc
    move-exception p0

    goto :goto_120

    :catch_de
    move-exception p0

    move-object p1, p0

    :goto_e0
    :try_start_e0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "findPhoneColorDefaultDynamicWallpaper: e = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f4
    .catchall {:try_start_e0 .. :try_end_f4} :catchall_dc

    if-eqz v2, :cond_10d

    :try_start_f6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_f9
    .catch Ljava/lang/Exception; {:try_start_f6 .. :try_end_f9} :catch_fa

    goto :goto_10d

    :catch_fa
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_100
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10d
    :goto_10d
    const-string p0, "findPhoneColorDefaultDynamicWallpaper: defaultTheme = "

    invoke-static {p0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    aget-object p1, v4, v5

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :goto_120
    move-object p1, p0

    move-object p0, v2

    :goto_122
    if-eqz p0, :cond_12c

    :try_start_124
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_127
    .catch Ljava/lang/Exception; {:try_start_124 .. :try_end_127} :catch_128

    goto :goto_12c

    :catch_128
    move-exception p0

    invoke-static {v0, p0, v3}, Lcom/android/common/debug/b;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_12c
    :goto_12c
    throw p1
.end method

.method private getBuiltInDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .registers 8

    const-string v0, "WS.WallpaperGetter"

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_4
    invoke-static {p1, v1}, Lcom/oplus/wallpaper/sdk/WallpaperGetter;->getCotaFileName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_8} :catch_77

    const-string v4, " exists, ignore DyWallpaper"

    if-eqz v3, :cond_28

    :try_start_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDefaultDyWallpaperComponentName: cota wallpaper "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/oplus/wallpaper/sdk/WallpaperGetter;->getDefaultWallpaper(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_28
    invoke-static {p1, v1}, Lcom/oplus/wallpaper/sdk/WallpaperGetter;->getCustomFileName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDefaultDyWallpaperComponentName: custom wallpaper "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/oplus/wallpaper/sdk/WallpaperGetter;->getDefaultWallpaper(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_4a
    invoke-static {p1, v1}, Lcom/oplus/wallpaper/sdk/WallpaperGetter;->getOperatorFileName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDefaultDyWallpaperComponentName: operator wallpaper "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/oplus/wallpaper/sdk/WallpaperGetter;->getDefaultWallpaper(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_6c
    invoke-direct {p0, p1}, Lcom/oplus/wallpaper/sdk/WallpaperGetter;->getDefaultDyWallpaperByComponentName(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_7d

    invoke-virtual {p0, p1}, Lcom/oplus/wallpaper/sdk/WallpaperGetter;->getDefaultWallpaper(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_76} :catch_77

    goto :goto_7d

    :catch_77
    move-exception p0

    const-string p1, "getDefaultDyWallpaperByComponentName: error "

    invoke-static {p1, p0, v0}, Lcom/android/common/debug/b;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_7d
    :goto_7d
    return-object v2
.end method

.method private getComponentDrawable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 14

    const-string p0, "findLiveWallpapers Skipping wallpaper "

    const-string v0, "WS.WallpaperGetter"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.service.wallpaper.WallpaperService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_1d

    move v4, v3

    goto :goto_21

    :cond_1d
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    :goto_21
    if-ge v3, v4, :cond_8f

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    :try_start_2b
    new-instance v7, Landroid/app/WallpaperInfo;

    invoke-direct {v7, p1, v5}, Landroid/app/WallpaperInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    :try_end_30
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2b .. :try_end_30} :catch_79
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_30} :catch_65

    invoke-virtual {v7}, Landroid/app/WallpaperInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7}, Landroid/app/WallpaperInfo;->getServiceName()Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getComponentDrawable: infoPackageName = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " , infoClassName = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/oplus/wallpaper/sdk/LogUtils;->debugI(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8c

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8c

    invoke-virtual {v7, v1}, Landroid/app/WallpaperInfo;->loadThumbnail(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_90

    :catch_65
    move-exception v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8c

    :catch_79
    move-exception v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_8c
    :goto_8c
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    :cond_8f
    const/4 p0, 0x0

    :goto_90
    return-object p0
.end method

.method private static getCotaDirectory()Ljava/io/File;
    .registers 1

    const-string v0, "getOplusCotaDirectory"

    invoke-static {v0}, Lcom/oplus/wallpaper/sdk/WallpaperGetter;->invokeEnvironmentGetMethod(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private static getCotaFileName(Landroid/content/Context;I)Ljava/lang/String;
    .registers 5

    new-instance p0, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/oplus/wallpaper/sdk/WallpaperGetter;->COTA_DIR:Ljava/lang/String;

    const-string v2, "/media/wallpaper/default"

    invoke-static {v0, v1, v2}, Landroidx/concurrent/futures/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v0, "WS.WallpaperGetter"

    const/4 v1, 0x2

    if-ne p1, v1, :cond_34

    new-instance p1, Ljava/io/File;

    const-string v1, "default_wallpaper_lock.png"

    invoke-direct {p1, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_2e

    const-string p0, "getCotaFileName cotaWallpaperLock exist"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2e
    const-string p0, "getCotaFileName cotaWallpaperLock not exist"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_50

    :cond_34
    new-instance p1, Ljava/io/File;

    const-string v1, "default_wallpaper.png"

    invoke-direct {p1, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_4b

    const-string p0, "getCotaFileName cotaWallpaperSystem exist"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4b
    const-string p0, "getCotaFileName cotaWallpaperSystem not exist "

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_50
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getCustomDirectory()Ljava/io/File;
    .registers 1

    const-string v0, "getOplusCustomDirectory"

    invoke-static {v0}, Lcom/oplus/wallpaper/sdk/WallpaperGetter;->invokeEnvironmentGetMethod(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private static getCustomFileName(Landroid/content/Context;I)Ljava/lang/String;
    .registers 5

    new-instance p0, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/oplus/wallpaper/sdk/WallpaperGetter;->CUSTOM_DIR:Ljava/lang/String;

    const-string v2, "/media/wallpaper/default"

    invoke-static {v0, v1, v2}, Landroidx/concurrent/futures/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v0, "WS.WallpaperGetter"

    const/4 v1, 0x2

    if-ne p1, v1, :cond_34

    new-instance p1, Ljava/io/File;

    const-string v1, "default_wallpaper_lock.png"

    invoke-direct {p1, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_2e

    const-string p0, "getCustomFileName customWallpaperLock exist"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2e
    const-string p0, "getCustomFileName customWallpaperLock not exist"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_50

    :cond_34
    new-instance p1, Ljava/io/File;

    const-string v1, "default_wallpaper.png"

    invoke-direct {p1, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_4b

    const-string p0, "getCustomFileName customWallpaperSystem exist"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4b
    const-string p0, "getCustomFileName customWallpaperSystem not exist "

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_50
    const/4 p0, 0x0

    return-object p0
.end method

.method private getDefaultDyWallpaperByComponentName(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .registers 9

    const-string v0, "WS.WallpaperGetter"

    const/4 v1, 0x0

    if-nez p1, :cond_b

    const-string p0, "getDefaultDyWallpaperByComponentName: context is null "

    invoke-static {v0, p0}, Lcom/oplus/wallpaper/sdk/LogUtils;->debugE(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_b
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {}, Lcom/oplus/wallpaper/sdk/Utils;->isAboveOS113()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_29

    invoke-static {p1}, Lcom/oplus/wallpaper/sdk/Utils;->getDefaultWallpaperComponent(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_55

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    goto :goto_55

    :cond_29
    sget-object v3, Lcom/oplus/wallpaper/sdk/WallpaperGetter;->sDefaultFileNameCache:Ljava/util/Map;

    const-string v6, "b3Bwb19kZWZhdWx0X2R5bmFtaWNfd2FsbHBhcGVyX3BhY2thZ2VfbmFtZQ=="

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v2, v5

    sget-object v3, Lcom/oplus/wallpaper/sdk/WallpaperGetter;->sDefaultFileNameCache:Ljava/util/Map;

    const-string v6, "b3Bwb19kZWZhdWx0X2R5bmFtaWNfd2FsbHBhcGVyX2NsYXNzX25hbWU="

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v2, v4

    aget-object v3, v2, v5

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_51

    aget-object v3, v2, v4

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_55

    :cond_51
    invoke-direct {p0, p1}, Lcom/oplus/wallpaper/sdk/WallpaperGetter;->getDynamicColorComponentName(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v2

    :cond_55
    :goto_55
    if-eqz v2, :cond_85

    aget-object v3, v2, v5

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_85

    aget-object v3, v2, v4

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_85

    :try_start_67
    aget-object v3, v2, v5

    aget-object v2, v2, v4

    invoke-direct {p0, p1, v3, v2}, Lcom/oplus/wallpaper/sdk/WallpaperGetter;->getComponentDrawable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_6f} :catch_70

    goto :goto_85

    :catch_70
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDefaultDyWallpaperByComponentName: Exception e =  "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/oplus/wallpaper/sdk/LogUtils;->debugE(Ljava/lang/String;Ljava/lang/String;)V

    :cond_85
    :goto_85
    return-object v1
.end method

.method private getDefaultWallpaperPath()Ljava/io/File;
    .registers 4

    invoke-static {}, Lcom/oplus/wallpaper/sdk/WallpaperGetter;->getVersionDirectory()Ljava/io/File;

    move-result-object p0

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/decouping_wallpaper/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_28

    invoke-static {}, Lcom/oplus/wallpaper/sdk/WallpaperGetter;->getProductDirectory()Ljava/io/File;

    move-result-object p0

    :cond_28
    return-object p0
.end method

.method private getDynamicColorComponentName(Landroid/content/Context;)[Ljava/lang/String;
    .registers 7

    const-string p1, "ro.hw.phone.color"

    invoke-static {p1}, Lcom/oplus/wallpaper/sdk/Utils;->getSystemPropties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "WS.WallpaperGetter"

    const/4 v2, 0x0

    if-nez v0, :cond_3d

    invoke-direct {p0, p1}, Lcom/oplus/wallpaper/sdk/WallpaperGetter;->findPhoneColorDefaultDynamicWallpaper(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_37

    const/4 v0, 0x0

    aget-object v3, p1, v0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_37

    const/4 v3, 0x1

    aget-object v4, p1, v3

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_37

    aget-object v0, p1, v0

    aget-object v1, p1, v3

    const-string v2, "b3Bwb19kZWZhdWx0X2R5bmFtaWNfd2FsbHBhcGVyX3BhY2thZ2VfbmFtZQ=="

    invoke-direct {p0, v2, v0}, Lcom/oplus/wallpaper/sdk/WallpaperGetter;->setDefaultFileNameCache(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "b3Bwb19kZWZhdWx0X2R5bmFtaWNfd2FsbHBhcGVyX2NsYXNzX25hbWU="

    invoke-direct {p0, v0, v1}, Lcom/oplus/wallpaper/sdk/WallpaperGetter;->setDefaultFileNameCache(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, p1

    goto :goto_42

    :cond_37
    const-string p0, "DynamicWallpaper not exist"

    invoke-static {v1, p0}, Lcom/oplus/wallpaper/sdk/LogUtils;->debugI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_42

    :cond_3d
    const-string p0, "getColorFileName hwPhoneColor is empty"

    invoke-static {v1, p0}, Lcom/oplus/wallpaper/sdk/LogUtils;->debugI(Ljava/lang/String;Ljava/lang/String;)V

    :goto_42
    return-object v2
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/oplus/wallpaper/sdk/WallpaperGetter;
    .registers 2

    sget-object v0, Lcom/oplus/wallpaper/sdk/WallpaperGetter;->sWallpaperGetter:Lcom/oplus/wallpaper/sdk/WallpaperGetter;

    if-nez v0, :cond_b

    new-instance v0, Lcom/oplus/wallpaper/sdk/WallpaperGetter;

    invoke-direct {v0, p0}, Lcom/oplus/wallpaper/sdk/WallpaperGetter;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/oplus/wallpaper/sdk/WallpaperGetter;->sWallpaperGetter:Lcom/oplus/wallpaper/sdk/WallpaperGetter;

    :cond_b
    sget-object p0, Lcom/oplus/wallpaper/sdk/WallpaperGetter;->sWallpaperGetter:Lcom/oplus/wallpaper/sdk/WallpaperGetter;

    return-object p0
.end method

.method private static getOperatorFileName(Landroid/content/Context;I)Ljava/lang/String;
    .registers 10

    const-string p0, "ro.vendor.oplus.operator"

    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "WS.WallpaperGetter"

    if-nez v0, :cond_94

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x2

    const-string v3, ".png"

    const-string v4, "operator"

    const-string v5, "/decouping_wallpaper/default/"

    const-string v6, "_"

    if-ne p1, v0, :cond_48

    invoke-static {}, Lcom/oplus/wallpaper/sdk/Utils;->isAboveOS113()Z

    move-result p1

    if-eqz p1, :cond_2b

    const-string p1, "default_wallpaper_lock"

    goto :goto_2d

    :cond_2b
    const-string p1, "b3Bwb19kZWZhdWx0X3dhbGxwYXBlcl9sb2Nr"

    :goto_2d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/oplus/wallpaper/sdk/WallpaperGetter;->PRODUCT_DIR:Ljava/lang/String;

    invoke-static {v0, v7, v5, p1, v6}, Landroidx/room/s;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_6d

    :cond_48
    invoke-static {}, Lcom/oplus/wallpaper/sdk/Utils;->isAboveOS113()Z

    move-result p1

    if-eqz p1, :cond_51

    const-string p1, "default_wallpaper"

    goto :goto_53

    :cond_51
    const-string p1, "b3Bwb19kZWZhdWx0X3dhbGxwYXBlcg=="

    :goto_53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/oplus/wallpaper/sdk/WallpaperGetter;->PRODUCT_DIR:Ljava/lang/String;

    invoke-static {v0, v7, v5, p1, v6}, Landroidx/room/s;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_6d
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOperatorFileName operator fileName = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_92

    const-string p0, "getOperatorFileName operator not exist "

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_99

    :cond_92
    move-object v1, p0

    goto :goto_99

    :cond_94
    const-string p1, "getOperatorFileName valid operator  "

    invoke-static {p1, p0, v2}, Landroid/support/v4/media/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_99
    return-object v1
.end method

.method private static getProductDirectory()Ljava/io/File;
    .registers 1

    const-string v0, "getOplusProductDirectory"

    invoke-static {v0}, Lcom/oplus/wallpaper/sdk/WallpaperGetter;->invokeEnvironmentGetMethod(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private static getVersionDirectory()Ljava/io/File;
    .registers 1

    const-string v0, "getOplusVersionDirectory"

    invoke-static {v0}, Lcom/oplus/wallpaper/sdk/WallpaperGetter;->invokeEnvironmentGetMethod(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private static invokeEnvironmentGetMethod(Ljava/lang/String;)Ljava/io/File;
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    const-class v1, Landroid/os/Environment;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v1, p0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of v1, p0, Ljava/io/File;

    if-eqz v1, :cond_23

    check-cast p0, Ljava/io/File;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1a} :catch_1b

    return-object p0

    :catch_1b
    move-exception p0

    const-string v1, "invokeEnvironmentGetMethod: e = "

    const-string v2, "WS.WallpaperGetter"

    invoke-static {v1, p0, v2}, Lcom/android/common/debug/b;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_23
    return-object v0
.end method

.method private static isAboveR()Z
    .registers 1

    const/4 v0, 0x1

    return v0
.end method

.method private declared-synchronized setDefaultFileNameCache(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    sget-object v0, Lcom/oplus/wallpaper/sdk/WallpaperGetter;->sDefaultFileNameCache:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public getDefaultWallpaper(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .registers 2

    if-nez p1, :cond_b

    const-string p0, "WS.WallpaperGetter"

    const-string p1, "getDefaultWallpaper: context is null "

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_b
    invoke-direct {p0, p1}, Lcom/oplus/wallpaper/sdk/WallpaperGetter;->getBuiltInDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getWallpaperFiles()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "WS.WallpaperGetter"

    const/4 v1, 0x0

    :try_start_3
    iget-object p0, p0, Lcom/oplus/wallpaper/sdk/WallpaperGetter;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {p0, v2, v2}, Lcom/oplus/wallpaper/sdk/WallpaperFileUtils;->getWallpaperResource(Landroid/content/Context;II)Ljava/util/HashMap;

    move-result-object p0

    if-nez p0, :cond_12

    const-string p0, "getWallpaperFiles. wallpaperResource null"

    invoke-static {v0, p0}, Lcom/oplus/wallpaper/sdk/LogUtils;->debugW(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_12
    const-string v2, "key_wallpaper_file_path"

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getWallpaperFiles. wallpaperFiles = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/oplus/wallpaper/sdk/LogUtils;->debugI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_2e} :catch_2f

    return-object p0

    :catch_2f
    move-exception p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getWallpaperFiles: e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/oplus/wallpaper/sdk/LogUtils;->debugE(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public getWallpaperVersion()I
    .registers 5

    const-string v0, "WS.WallpaperGetter"

    const/4 v1, -0x1

    :try_start_3
    iget-object p0, p0, Lcom/oplus/wallpaper/sdk/WallpaperGetter;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {p0, v2, v2}, Lcom/oplus/wallpaper/sdk/WallpaperFileUtils;->getWallpaperResource(Landroid/content/Context;II)Ljava/util/HashMap;

    move-result-object p0

    if-nez p0, :cond_12

    const-string p0, "getWallpaperVersion. wallpaperResource null"

    invoke-static {v0, p0}, Lcom/oplus/wallpaper/sdk/LogUtils;->debugW(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_12
    const-string v3, "version_code"

    invoke-virtual {p0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_2d

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2d

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    goto :goto_2e

    :cond_2d
    move p0, v1

    :goto_2e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getWallpaperVersion. wallpaperVersion = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/oplus/wallpaper/sdk/LogUtils;->debugI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_42} :catch_43

    return p0

    :catch_43
    move-exception p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getWallpaperVersion: e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/oplus/wallpaper/sdk/LogUtils;->debugE(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method
