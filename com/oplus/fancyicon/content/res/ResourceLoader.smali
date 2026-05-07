.class public abstract Lcom/oplus/fancyicon/content/res/ResourceLoader;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final DENSITY_TYPE_DEFAULT:I = 0x4

.field public static final DENSITY_TYPE_HIGH:I = 0x3

.field public static final DENSITY_TYPE_LOW:I = 0x1

.field public static final DENSITY_TYPE_MEDIUM:I = 0x2

.field public static final DENSITY_TYPE_XHIGH:I = 0x4

.field public static final DENSITY_TYPE_XXHIGH:I = 0x5

.field public static final DENSITY_TYPE_XXXHIGH:I = 0x6

.field private static final IMAGES_FOLDER_NAME:Ljava/lang/String; = "images"

.field private static final LOG_TAG:Ljava/lang/String; = "ResourceLoader"

.field public static final MANIFEST_FILE_NAME:Ljava/lang/String; = "manifest.xml"

.field private static sCurrentDensityDpiType:I

.field private static sCurrentDensityName:Ljava/lang/String;

.field private static final sDensityDpi:I


# instance fields
.field private mDensityTypeArr:[I

.field public mLanguageCountrySuffix:Ljava/lang/String;

.field public mLanguageSuffix:Ljava/lang/String;

.field public mManifestName:Ljava/lang/String;

.field private mResourceName:Ljava/lang/String;

.field public mResourcesZipFile:Ljava/util/zip/ZipFile;


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    sput v0, Lcom/oplus/fancyicon/content/res/ResourceLoader;->sDensityDpi:I

    const/4 v1, -0x1

    sput v1, Lcom/oplus/fancyicon/content/res/ResourceLoader;->sCurrentDensityDpiType:I

    const/16 v1, 0x78

    if-eq v0, v1, :cond_5b

    const/16 v1, 0xa0

    if-eq v0, v1, :cond_53

    const/16 v1, 0xf0

    if-eq v0, v1, :cond_4b

    const/16 v1, 0x140

    if-eq v0, v1, :cond_43

    const/16 v1, 0x1e0

    const/4 v2, 0x5

    const-string v3, "drawable-xxhdpi"

    if-eq v0, v1, :cond_3e

    const/16 v1, 0x230

    if-eq v0, v1, :cond_36

    const/16 v1, 0x258

    if-eq v0, v1, :cond_36

    const/16 v1, 0x280

    if-eq v0, v1, :cond_36

    sput-object v3, Lcom/oplus/fancyicon/content/res/ResourceLoader;->sCurrentDensityName:Ljava/lang/String;

    sput v2, Lcom/oplus/fancyicon/content/res/ResourceLoader;->sCurrentDensityDpiType:I

    goto :goto_62

    :cond_36
    const-string v0, "drawable-xxxhdpi"

    sput-object v0, Lcom/oplus/fancyicon/content/res/ResourceLoader;->sCurrentDensityName:Ljava/lang/String;

    const/4 v0, 0x6

    sput v0, Lcom/oplus/fancyicon/content/res/ResourceLoader;->sCurrentDensityDpiType:I

    goto :goto_62

    :cond_3e
    sput-object v3, Lcom/oplus/fancyicon/content/res/ResourceLoader;->sCurrentDensityName:Ljava/lang/String;

    sput v2, Lcom/oplus/fancyicon/content/res/ResourceLoader;->sCurrentDensityDpiType:I

    goto :goto_62

    :cond_43
    const-string v0, "drawable-xhdpi"

    sput-object v0, Lcom/oplus/fancyicon/content/res/ResourceLoader;->sCurrentDensityName:Ljava/lang/String;

    const/4 v0, 0x4

    sput v0, Lcom/oplus/fancyicon/content/res/ResourceLoader;->sCurrentDensityDpiType:I

    goto :goto_62

    :cond_4b
    const-string v0, "drawable-hdpi"

    sput-object v0, Lcom/oplus/fancyicon/content/res/ResourceLoader;->sCurrentDensityName:Ljava/lang/String;

    const/4 v0, 0x3

    sput v0, Lcom/oplus/fancyicon/content/res/ResourceLoader;->sCurrentDensityDpiType:I

    goto :goto_62

    :cond_53
    const-string v0, "drawable-mdpi"

    sput-object v0, Lcom/oplus/fancyicon/content/res/ResourceLoader;->sCurrentDensityName:Ljava/lang/String;

    const/4 v0, 0x2

    sput v0, Lcom/oplus/fancyicon/content/res/ResourceLoader;->sCurrentDensityDpiType:I

    goto :goto_62

    :cond_5b
    const-string v0, "drawable-ldpi"

    sput-object v0, Lcom/oplus/fancyicon/content/res/ResourceLoader;->sCurrentDensityName:Ljava/lang/String;

    const/4 v0, 0x1

    sput v0, Lcom/oplus/fancyicon/content/res/ResourceLoader;->sCurrentDensityDpiType:I

    :goto_62
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "manifest.xml"

    iput-object v0, p0, Lcom/oplus/fancyicon/content/res/ResourceLoader;->mManifestName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/oplus/fancyicon/content/res/ResourceLoader;->mResourceName:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/fancyicon/content/res/ResourceLoader;->mDensityTypeArr:[I

    invoke-virtual {p0, p1}, Lcom/oplus/fancyicon/content/res/ResourceLoader;->init(Ljava/lang/String;)V

    const/4 p1, 0x6

    new-array p1, p1, [I

    fill-array-data p1, :array_1a

    iput-object p1, p0, Lcom/oplus/fancyicon/content/res/ResourceLoader;->mDensityTypeArr:[I

    return-void

    :array_1a
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
    .end array-data
.end method

.method public static getExternalAvaliablePath(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getExtraResourceFolder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Z
    .registers 14

    const-string v0, "/"

    invoke-static {p2, v0}, Landroidx/appcompat/view/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_e

    const-string v1, ""

    :cond_e
    invoke-virtual {p0}, Lcom/oplus/fancyicon/content/res/ResourceLoader;->getDensityDpiType()I

    move-result p2

    iget-object v2, p0, Lcom/oplus/fancyicon/content/res/ResourceLoader;->mDensityTypeArr:[I

    array-length v3, v2

    sget-object v4, Lcom/oplus/fancyicon/content/res/ResourceLoader;->sCurrentDensityName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_3b

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v6, Lcom/oplus/fancyicon/content/res/ResourceLoader;->sCurrentDensityName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/oplus/fancyicon/content/res/ResourceLoader;->resourceExists(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3b

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return v5

    :cond_3b
    const/4 v4, 0x0

    move v6, v4

    :goto_3d
    const/4 v7, -0x1

    if-ge v6, v3, :cond_48

    aget v8, v2, v6

    if-ne v8, p2, :cond_45

    goto :goto_49

    :cond_45
    add-int/lit8 v6, v6, 0x1

    goto :goto_3d

    :cond_48
    move v6, v7

    :goto_49
    const/4 v8, 0x4

    if-lt p2, v8, :cond_9b

    add-int/lit8 p2, v6, 0x1

    :goto_4e
    if-ge p2, v3, :cond_74

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v8, v2, p2

    invoke-virtual {p0, v8}, Lcom/oplus/fancyicon/content/res/ResourceLoader;->getDensityName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/oplus/fancyicon/content/res/ResourceLoader;->resourceExists(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_71

    invoke-virtual {p3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return v4

    :cond_71
    add-int/lit8 p2, p2, 0x1

    goto :goto_4e

    :cond_74
    sub-int/2addr v6, v5

    :goto_75
    if-ltz v6, :cond_11c

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    aget v3, v2, v6

    invoke-virtual {p0, v3}, Lcom/oplus/fancyicon/content/res/ResourceLoader;->getDensityName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/oplus/fancyicon/content/res/ResourceLoader;->resourceExists(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_98

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return v4

    :cond_98
    add-int/lit8 v6, v6, -0x1

    goto :goto_75

    :cond_9b
    move p2, v4

    :goto_9c
    if-ge p2, v3, :cond_a7

    aget v8, v2, p2

    const/4 v9, 0x3

    if-ne v8, v9, :cond_a4

    move v7, p2

    :cond_a4
    add-int/lit8 p2, p2, 0x1

    goto :goto_9c

    :cond_a7
    add-int/lit8 p2, v6, 0x1

    :goto_a9
    if-gt p2, v7, :cond_cf

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget v9, v2, p2

    invoke-virtual {p0, v9}, Lcom/oplus/fancyicon/content/res/ResourceLoader;->getDensityName(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/oplus/fancyicon/content/res/ResourceLoader;->resourceExists(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_cc

    invoke-virtual {p3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return v4

    :cond_cc
    add-int/lit8 p2, p2, 0x1

    goto :goto_a9

    :cond_cf
    sub-int/2addr v6, v5

    :goto_d0
    if-ltz v6, :cond_f6

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    aget v5, v2, v6

    invoke-virtual {p0, v5}, Lcom/oplus/fancyicon/content/res/ResourceLoader;->getDensityName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/oplus/fancyicon/content/res/ResourceLoader;->resourceExists(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return v4

    :cond_f3
    add-int/lit8 v6, v6, -0x1

    goto :goto_d0

    :cond_f6
    :goto_f6
    if-ge v7, v3, :cond_11c

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    aget v5, v2, v7

    invoke-virtual {p0, v5}, Lcom/oplus/fancyicon/content/res/ResourceLoader;->getDensityName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/oplus/fancyicon/content/res/ResourceLoader;->resourceExists(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_119

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return v4

    :cond_119
    add-int/lit8 v7, v7, 0x1

    goto :goto_f6

    :cond_11c
    invoke-static {v1, p1}, Landroidx/appcompat/view/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/oplus/fancyicon/content/res/ResourceLoader;->resourceExists(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_12a

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return v4

    :cond_12a
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return v4
.end method


# virtual methods
.method public clear()V
    .registers 2

    iget-object v0, p0, Lcom/oplus/fancyicon/content/res/ResourceLoader;->mResourcesZipFile:Ljava/util/zip/ZipFile;

    if-eqz v0, :cond_a

    :try_start_4
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_7} :catch_7

    :catch_7
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/fancyicon/content/res/ResourceLoader;->mResourcesZipFile:Ljava/util/zip/ZipFile;

    :cond_a
    return-void
.end method

.method public getBitmapInfo(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Lcom/oplus/fancyicon/content/res/loader/ResourceManager$BitmapInfo;
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "images"

    invoke-direct {p0, p1, v1, v0}, Lcom/oplus/fancyicon/content/res/ResourceLoader;->getExtraResourceFolder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Z

    move-result v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ResourceLoader------path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", hasCurrentDensFolder= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ResourceLoader"

    invoke-static {v3, v2}, Lcom/oplus/fancyicon/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    :try_start_2e
    invoke-virtual {p0, v0}, Lcom/oplus/fancyicon/content/res/ResourceLoader;->getInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_32
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2e .. :try_end_32} :catch_68
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_32} :catch_5d
    .catchall {:try_start_2e .. :try_end_32} :catchall_5b

    :try_start_32
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    if-eqz v1, :cond_3d

    iget v1, p2, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    iput v1, p2, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    :cond_3d
    invoke-static {p0, v0, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p2
    :try_end_41
    .catch Ljava/lang/OutOfMemoryError; {:try_start_32 .. :try_end_41} :catch_59
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_41} :catch_57
    .catchall {:try_start_32 .. :try_end_41} :catchall_54

    if-nez p2, :cond_49

    if-eqz p0, :cond_48

    :try_start_45
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_48} :catch_48

    :catch_48
    :cond_48
    return-object v2

    :cond_49
    :try_start_49
    new-instance v1, Lcom/oplus/fancyicon/content/res/loader/ResourceManager$BitmapInfo;

    invoke-direct {v1, p2, v0}, Lcom/oplus/fancyicon/content/res/loader/ResourceManager$BitmapInfo;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V
    :try_end_4e
    .catch Ljava/lang/OutOfMemoryError; {:try_start_49 .. :try_end_4e} :catch_59
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_4e} :catch_57
    .catchall {:try_start_49 .. :try_end_4e} :catchall_54

    if-eqz p0, :cond_53

    :try_start_50
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_53} :catch_53

    :catch_53
    :cond_53
    return-object v1

    :catchall_54
    move-exception p1

    move-object v2, p0

    goto :goto_71

    :catch_57
    move-exception p2

    goto :goto_5f

    :catch_59
    move-exception p2

    goto :goto_6a

    :catchall_5b
    move-exception p1

    goto :goto_71

    :catch_5d
    move-exception p2

    move-object p0, v2

    :goto_5f
    :try_start_5f
    invoke-static {v3, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_62
    .catchall {:try_start_5f .. :try_end_62} :catchall_54

    if-eqz p0, :cond_70

    :goto_64
    :try_start_64
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_67} :catch_70

    goto :goto_70

    :catch_68
    move-exception p2

    move-object p0, v2

    :goto_6a
    :try_start_6a
    invoke-static {v3, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6d
    .catchall {:try_start_6a .. :try_end_6d} :catchall_54

    if-eqz p0, :cond_70

    goto :goto_64

    :catch_70
    :cond_70
    :goto_70
    return-object v2

    :goto_71
    if-eqz v2, :cond_76

    :try_start_73
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_76
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_76} :catch_76

    :catch_76
    :cond_76
    throw p1
.end method

.method public getDensityDpiType()I
    .registers 1

    sget p0, Lcom/oplus/fancyicon/content/res/ResourceLoader;->sCurrentDensityDpiType:I

    return p0
.end method

.method public getDensityName()Ljava/lang/String;
    .registers 1

    sget-object p0, Lcom/oplus/fancyicon/content/res/ResourceLoader;->sCurrentDensityName:Ljava/lang/String;

    return-object p0
.end method

.method public getDensityName(I)Ljava/lang/String;
    .registers 2

    const-string p0, "drawable-xxhdpi"

    packed-switch p1, :pswitch_data_16

    goto :goto_14

    :pswitch_6  #0x6
    const-string p0, "drawable-xxxhdpi"

    goto :goto_14

    :pswitch_9  #0x4
    const-string p0, "drawable-xhdpi"

    goto :goto_14

    :pswitch_c  #0x3
    const-string p0, "drawable-hdpi"

    goto :goto_14

    :pswitch_f  #0x2
    const-string p0, "drawable-mdpi"

    goto :goto_14

    :pswitch_12  #0x1
    const-string p0, "drawable-ldpi"

    :goto_14
    :pswitch_14  #0x5
    return-object p0

    nop

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_12  #00000001
        :pswitch_f  #00000002
        :pswitch_c  #00000003
        :pswitch_9  #00000004
        :pswitch_14  #00000005
        :pswitch_6  #00000006
    .end packed-switch
.end method

.method public getFile(Ljava/lang/String;Ljava/lang/String;)Landroid/os/MemoryFile;
    .registers 9

    const-string v0, "getFile  close IOException"

    const-string v1, "ResourceLoader"

    const/4 v2, 0x0

    :try_start_5
    invoke-virtual {p0, p1, p2}, Lcom/oplus/fancyicon/content/res/ResourceLoader;->getPathForLanguage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    new-array p2, p2, [J

    invoke-virtual {p0, p1, p2}, Lcom/oplus/fancyicon/content/res/ResourceLoader;->getInputStream(Ljava/lang/String;[J)Ljava/io/InputStream;

    move-result-object p0
    :try_end_10
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_10} :catch_73
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_10} :catch_5d
    .catchall {:try_start_5 .. :try_end_10} :catchall_5a

    if-nez p0, :cond_1d

    if-eqz p0, :cond_1c

    :try_start_14
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_17} :catch_18

    goto :goto_1c

    :catch_18
    move-exception p0

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1c
    :goto_1c
    return-object v2

    :cond_1d
    :try_start_1d
    new-instance p1, Landroid/os/MemoryFile;

    const/4 v3, 0x0

    aget-wide v4, p2, v3

    long-to-int p2, v4

    invoke-direct {p1, v2, p2}, Landroid/os/MemoryFile;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1}, Landroid/os/MemoryFile;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2
    :try_end_2a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1d .. :try_end_2a} :catch_57
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_2a} :catch_54
    .catchall {:try_start_1d .. :try_end_2a} :catchall_51

    const/16 v4, 0x1000

    :try_start_2c
    new-array v4, v4, [B

    :goto_2e
    invoke-virtual {p0, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-lez v5, :cond_38

    invoke-virtual {p2, v4, v3, v5}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_2e

    :cond_38
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_3e
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2c .. :try_end_3e} :catch_4f
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_3e} :catch_4d
    .catchall {:try_start_2c .. :try_end_3e} :catchall_90

    :try_start_3e
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_47} :catch_48

    goto :goto_4c

    :catch_48
    move-exception p0

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4c
    return-object p1

    :catch_4d
    move-exception p1

    goto :goto_60

    :catch_4f
    move-exception p1

    goto :goto_76

    :catchall_51
    move-exception p1

    move-object p2, v2

    goto :goto_91

    :catch_54
    move-exception p1

    move-object p2, v2

    goto :goto_60

    :catch_57
    move-exception p1

    move-object p2, v2

    goto :goto_76

    :catchall_5a
    move-exception p1

    move-object p2, v2

    goto :goto_92

    :catch_5d
    move-exception p1

    move-object p0, v2

    move-object p2, p0

    :goto_60
    :try_start_60
    const-string v3, "getFile Exception"

    invoke-static {v1, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_65
    .catchall {:try_start_60 .. :try_end_65} :catchall_90

    if-eqz p0, :cond_6a

    :try_start_67
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_6a
    if-eqz p2, :cond_8f

    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_72
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_72} :catch_81

    goto :goto_8f

    :catch_73
    move-exception p1

    move-object p0, v2

    move-object p2, p0

    :goto_76
    :try_start_76
    const-string v3, "getFile OutOfMemoryError"

    invoke-static {v1, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7b
    .catchall {:try_start_76 .. :try_end_7b} :catchall_90

    if-eqz p0, :cond_83

    :try_start_7d
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    goto :goto_83

    :catch_81
    move-exception p0

    goto :goto_8c

    :cond_83
    :goto_83
    if-eqz p2, :cond_8f

    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_8b
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_8b} :catch_81

    goto :goto_8f

    :goto_8c
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_8f
    :goto_8f
    return-object v2

    :catchall_90
    move-exception p1

    :goto_91
    move-object v2, p0

    :goto_92
    if-eqz v2, :cond_9a

    :try_start_94
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto :goto_9a

    :catch_98
    move-exception p0

    goto :goto_a3

    :cond_9a
    :goto_9a
    if-eqz p2, :cond_a6

    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_a2
    .catch Ljava/io/IOException; {:try_start_94 .. :try_end_a2} :catch_98

    goto :goto_a6

    :goto_a3
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_a6
    :goto_a6
    throw p1
.end method

.method public final getInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/oplus/fancyicon/content/res/ResourceLoader;->getInputStream(Ljava/lang/String;[J)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public getInputStream(Ljava/lang/String;[J)Ljava/io/InputStream;
    .registers 6

    iget-object v0, p0, Lcom/oplus/fancyicon/content/res/ResourceLoader;->mResourcesZipFile:Ljava/util/zip/ZipFile;

    if-eqz v0, :cond_1a

    :try_start_4
    invoke-virtual {v0, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object p1

    if-eqz p1, :cond_1a

    if-eqz p2, :cond_13

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v1

    aput-wide v1, p2, v0

    :cond_13
    iget-object p0, p0, Lcom/oplus/fancyicon/content/res/ResourceLoader;->mResourcesZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {p0, p1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_19} :catch_1a

    return-object p0

    :catch_1a
    :cond_1a
    const/4 p0, 0x0

    return-object p0
.end method

.method public getManifestRoot(Landroid/content/Context;)Lorg/w3c/dom/Element;
    .registers 6

    const-string v0, "ResourceLoader"

    iget-object v1, p0, Lcom/oplus/fancyicon/content/res/ResourceLoader;->mLanguageCountrySuffix:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_19

    iget-object v1, p0, Lcom/oplus/fancyicon/content/res/ResourceLoader;->mManifestName:Ljava/lang/String;

    iget-object v3, p0, Lcom/oplus/fancyicon/content/res/ResourceLoader;->mLanguageCountrySuffix:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/oplus/fancyicon/util/Utils;->addFileNameSuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oplus/fancyicon/content/res/ResourceLoader;->resourceExists(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1a

    :cond_19
    move-object v1, v2

    :cond_1a
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_37

    iget-object v3, p0, Lcom/oplus/fancyicon/content/res/ResourceLoader;->mLanguageSuffix:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_37

    iget-object v1, p0, Lcom/oplus/fancyicon/content/res/ResourceLoader;->mManifestName:Ljava/lang/String;

    iget-object v3, p0, Lcom/oplus/fancyicon/content/res/ResourceLoader;->mLanguageSuffix:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/oplus/fancyicon/util/Utils;->addFileNameSuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oplus/fancyicon/content/res/ResourceLoader;->resourceExists(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_37

    move-object v1, v2

    :cond_37
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3f

    iget-object v1, p0, Lcom/oplus/fancyicon/content/res/ResourceLoader;->mManifestName:Ljava/lang/String;

    :cond_3f
    invoke-static {p1}, Lcom/oplus/fancyicon/util/Utils;->getResolutionSuffix(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    :try_start_43
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_62

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oplus/fancyicon/content/res/ResourceLoader;->getInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_61} :catch_99
    .catch Ljava/lang/OutOfMemoryError; {:try_start_43 .. :try_end_61} :catch_8d
    .catchall {:try_start_43 .. :try_end_61} :catchall_8b

    goto :goto_63

    :cond_62
    move-object p1, v2

    :goto_63
    if-nez p1, :cond_6f

    :try_start_65
    invoke-virtual {p0, v1}, Lcom/oplus/fancyicon/content/res/ResourceLoader;->getInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    move-object p1, p0

    goto :goto_6f

    :catch_6b
    move-exception p0

    goto :goto_8f

    :catch_6d
    move-exception p0

    goto :goto_9b

    :cond_6f
    :goto_6f
    if-eqz p1, :cond_85

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object p0

    invoke-virtual {p0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object p0

    invoke-interface {p0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object p0
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_81} :catch_6d
    .catch Ljava/lang/OutOfMemoryError; {:try_start_65 .. :try_end_81} :catch_6b
    .catchall {:try_start_65 .. :try_end_81} :catchall_a6

    :try_start_81
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_84
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_84} :catch_84

    :catch_84
    return-object p0

    :cond_85
    if-eqz p1, :cond_a5

    :goto_87
    :try_start_87
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_8a
    .catch Ljava/io/IOException; {:try_start_87 .. :try_end_8a} :catch_a5

    goto :goto_a5

    :catchall_8b
    move-exception p0

    goto :goto_a8

    :catch_8d
    move-exception p0

    move-object p1, v2

    :goto_8f
    :try_start_8f
    invoke-virtual {p0}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_a5

    goto :goto_87

    :catch_99
    move-exception p0

    move-object p1, v2

    :goto_9b
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a2
    .catchall {:try_start_8f .. :try_end_a2} :catchall_a6

    if-eqz p1, :cond_a5

    goto :goto_87

    :catch_a5
    :cond_a5
    :goto_a5
    return-object v2

    :catchall_a6
    move-exception p0

    move-object v2, p1

    :goto_a8
    if-eqz v2, :cond_ad

    :try_start_aa
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_ad
    .catch Ljava/io/IOException; {:try_start_aa .. :try_end_ad} :catch_ad

    :catch_ad
    :cond_ad
    throw p0
.end method

.method public getPathForLanguage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    iget-object v0, p0, Lcom/oplus/fancyicon/content/res/ResourceLoader;->mLanguageCountrySuffix:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "_"

    const-string v2, "/"

    if-nez v0, :cond_26

    invoke-static {p2, v1}, Landroidx/appcompat/widget/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/oplus/fancyicon/content/res/ResourceLoader;->mLanguageCountrySuffix:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oplus/fancyicon/content/res/ResourceLoader;->resourceExists(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_26

    return-object v0

    :cond_26
    iget-object v0, p0, Lcom/oplus/fancyicon/content/res/ResourceLoader;->mLanguageSuffix:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_48

    invoke-static {p2, v1}, Landroidx/appcompat/widget/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/fancyicon/content/res/ResourceLoader;->mLanguageSuffix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oplus/fancyicon/content/res/ResourceLoader;->resourceExists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_48

    return-object v0

    :cond_48
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_59

    invoke-static {p2, v2, p1}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/oplus/fancyicon/content/res/ResourceLoader;->resourceExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_59

    return-object p2

    :cond_59
    invoke-virtual {p0, p1}, Lcom/oplus/fancyicon/content/res/ResourceLoader;->resourceExists(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_61

    const/4 p0, 0x0

    return-object p0

    :cond_61
    return-object p1
.end method

.method public getResourceName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/fancyicon/content/res/ResourceLoader;->mResourceName:Ljava/lang/String;

    return-object p0
.end method

.method public getResourcesZipFile()Ljava/util/zip/ZipFile;
    .registers 1

    iget-object p0, p0, Lcom/oplus/fancyicon/content/res/ResourceLoader;->mResourcesZipFile:Ljava/util/zip/ZipFile;

    return-object p0
.end method

.method public abstract init(Ljava/lang/String;)V
.end method

.method public resourceExists(Ljava/lang/String;)Z
    .registers 2

    iget-object p0, p0, Lcom/oplus/fancyicon/content/res/ResourceLoader;->mResourcesZipFile:Ljava/util/zip/ZipFile;

    if-eqz p0, :cond_c

    invoke-virtual {p0, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public setLocal(Ljava/util/Locale;)Lcom/oplus/fancyicon/content/res/ResourceLoader;
    .registers 3

    if-eqz p1, :cond_19

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/fancyicon/content/res/ResourceLoader;->mLanguageSuffix:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/fancyicon/content/res/ResourceLoader;->mLanguageCountrySuffix:Ljava/lang/String;

    iget-object v0, p0, Lcom/oplus/fancyicon/content/res/ResourceLoader;->mLanguageSuffix:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_19

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/oplus/fancyicon/content/res/ResourceLoader;->mLanguageSuffix:Ljava/lang/String;

    :cond_19
    return-object p0
.end method

.method public setResourceName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/fancyicon/content/res/ResourceLoader;->mResourceName:Ljava/lang/String;

    return-void
.end method
