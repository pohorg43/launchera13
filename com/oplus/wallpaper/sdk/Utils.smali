.class Lcom/oplus/wallpaper/sdk/Utils;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final ANDROID_N:I = 0x18

.field public static final ANDROID_O:I = 0x1b

.field public static final ANDROID_R:I = 0x1e

.field private static final CLASS_BUILD:Ljava/lang/String; = "Y29tLmNvbG9yLm9zLkNvbG9yQnVpbGQ="

.field private static final CLASS_SYSTEM_PROPERTIES_NATIVE:Ljava/lang/String; = "Y29tLmhleXRhcC5jb21wYXQub3MuU3lzdGVtUHJvcGVydGllc05hdGl2ZQ=="

.field public static final DEBUG:Z

.field public static final HEAD_TAG:Ljava/lang/String; = "WS."

.field private static final METHOD_GET_OS_VERSION:Ljava/lang/String; = "Z2V0Q29sb3JPU1ZFUlNJT04="

.field public static final OplusOS_11_3:I = 0x16

.field private static final TAG:Ljava/lang/String; = "WS.Utils"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    sget-boolean v0, Lcom/oplus/wallpaper/sdk/LogUtils;->DEBUG:Z

    sput-boolean v0, Lcom/oplus/wallpaper/sdk/Utils;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyFile(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const v0, 0x8000

    new-array v0, v0, [B

    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    sget-boolean v2, Lcom/oplus/wallpaper/sdk/Utils;->DEBUG:Z

    const-string v3, "WS.Utils"

    if-eqz v2, :cond_14

    const-string v2, "copyFile start amt = "

    invoke-static {v2, v1, v3}, Landroidx/recyclerview/widget/a;->a(Ljava/lang/String;ILjava/lang/String;)V

    :cond_14
    if-gtz v1, :cond_1b

    const-string v2, "copyFile not process because no files"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    :goto_1b
    if-lez v1, :cond_26

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/FileOutputStream;->write([BII)V

    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    goto :goto_1b

    :cond_26
    sget-boolean p0, Lcom/oplus/wallpaper/sdk/Utils;->DEBUG:Z

    if-eqz p0, :cond_2f

    const-string p0, "copyFile amt end"

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2f
    return-void
.end method

.method public static decodeBase64(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_28

    :try_start_6
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_10} :catch_11

    return-object v0

    :catch_11
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "decodeBase64 e"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "WS.Utils"

    invoke-static {v0, p0}, Lcom/oplus/wallpaper/sdk/LogUtils;->debugE(Ljava/lang/String;Ljava/lang/String;)V

    :cond_28
    const/4 p0, 0x0

    return-object p0
.end method

.method public static generateCroppedBmp(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 16

    const/4 v0, 0x0

    const-string v1, "WS.Utils"

    if-nez p1, :cond_b

    const-string p0, "generateCroppedBmp return bmp = null"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_b
    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eq p2, v2, :cond_26

    if-eq p2, v3, :cond_26

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "generateCroppedBmp,which wallpaper is not available. which = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    :cond_26
    const-string v4, "window"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    new-instance v5, Landroid/util/DisplayMetrics;

    invoke-direct {v5}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget v4, v5, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    invoke-virtual {p1, v4}, Landroid/graphics/Bitmap;->setDensity(I)V

    iget v4, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v6, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget v6, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v7, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object p0

    const/4 v7, 0x0

    if-eqz p0, :cond_62

    invoke-virtual {p0}, Landroid/app/WallpaperManager;->getDesiredMinimumWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/app/WallpaperManager;->getDesiredMinimumHeight()I

    move-result p0

    move v12, v7

    move v7, p0

    move p0, v12

    goto :goto_63

    :cond_62
    move p0, v7

    :goto_63
    if-lez v7, :cond_86

    sget-boolean v4, Lcom/oplus/wallpaper/sdk/Utils;->DEBUG:Z

    if-eqz v4, :cond_85

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "generateCroppedBmp desiredMinimumWidth = "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " ,desiredMinimumHeight = "

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_85
    move v4, v7

    :cond_86
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    if-ne p2, v3, :cond_91

    goto :goto_a2

    :cond_91
    const/high16 p2, 0x3f800000  # 1.0f

    if-ge v7, v4, :cond_98

    div-int p2, v4, v7

    int-to-float p2, p2

    :cond_98
    int-to-float v8, p0

    mul-float/2addr p2, v8

    int-to-float v8, v6

    cmpg-float p2, p2, v8

    if-gtz p2, :cond_a0

    goto :goto_a2

    :cond_a0
    mul-int/lit8 v6, v6, 0x2

    :goto_a2
    if-lez v6, :cond_139

    if-lez v4, :cond_139

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    if-ne p2, v6, :cond_b4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    if-ne p2, v4, :cond_b4

    goto/16 :goto_139

    :cond_b4
    const-string p2, "generateCroppedBmp desiredWidth = "

    const-string v8, " desiredHeight = "

    const-string v9, " bmWidth = "

    invoke-static {p2, v6, v8, v4, v9}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " bmHeight = "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_d0
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v4, p0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    iget p2, v5, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    invoke-virtual {p0, p2}, Landroid/graphics/Bitmap;->setDensity(I)V

    new-instance p2, Landroid/graphics/Canvas;

    invoke-direct {p2, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    iput v7, v5, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    iput v7, v5, Landroid/graphics/Rect;->bottom:I

    iget v8, v5, Landroid/graphics/Rect;->right:I

    sub-int v9, v6, v8

    sub-int v10, v4, v7

    if-gtz v9, :cond_fb

    if-lez v10, :cond_115

    :cond_fb
    int-to-float v9, v6

    int-to-float v10, v8

    div-float/2addr v9, v10

    int-to-float v10, v4

    int-to-float v11, v7

    div-float/2addr v10, v11

    cmpl-float v11, v9, v10

    if-lez v11, :cond_106

    goto :goto_107

    :cond_106
    move v9, v10

    :goto_107
    int-to-float v8, v8

    mul-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, v5, Landroid/graphics/Rect;->right:I

    int-to-float v7, v7

    mul-float/2addr v7, v9

    float-to-int v7, v7

    iput v7, v5, Landroid/graphics/Rect;->bottom:I

    sub-int v9, v6, v8

    sub-int v10, v4, v7

    :cond_115
    div-int/2addr v9, v3

    div-int/2addr v10, v3

    invoke-virtual {v5, v9, v10}, Landroid/graphics/Rect;->offset(II)V

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {p2, p1, v0, v5, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {p2, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_132
    .catch Ljava/lang/Exception; {:try_start_d0 .. :try_end_132} :catch_133

    return-object p0

    :catch_133
    move-exception p0

    const-string p2, "generateCroppedBmp Can\'t generate default bitmap"

    invoke-static {v1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_139
    :goto_139
    return-object p1
.end method

.method public static getDefaultWallpaperComponent(Landroid/content/Context;)Landroid/content/ComponentName;
    .registers 8

    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getDefaultWallpaperComponent"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p0, v2, v6

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/ComponentName;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_24} :catch_25

    goto :goto_3d

    :catch_25
    move-exception p0

    const-string v0, "getDefaultWallpaperComponent failed. error = "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "WS.Utils"

    invoke-static {v0, p0}, Lcom/oplus/wallpaper/sdk/LogUtils;->debugE(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_3d
    return-object p0
.end method

.method public static getOSVersionCode()I
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "com.oplus.os.OplusBuild"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getOplusOSVERSION"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1b} :catch_1c

    goto :goto_33

    :catch_1c
    move-exception v1

    const-string v2, "getOSVersionCode failed. error = "

    invoke-static {v2}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WS.Utils"

    invoke-static {v2, v1}, Lcom/oplus/wallpaper/sdk/LogUtils;->debugE(Ljava/lang/String;Ljava/lang/String;)V

    :goto_33
    return v0
.end method

.method public static getRemoteContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;
    .registers 3

    const/4 v0, 0x3

    :try_start_1
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object p0
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_5} :catch_6

    goto :goto_25

    :catch_6
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getRemoteContext NameNotFoundException = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WS.Utils"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean p1, Lcom/oplus/wallpaper/sdk/Utils;->DEBUG:Z

    if-eqz p1, :cond_24

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_24
    const/4 p0, 0x0

    :goto_25
    return-object p0
.end method

.method public static getRemoteDimensionRes(Landroid/content/Context;Ljava/lang/String;)I
    .registers 5

    if-eqz p0, :cond_3a

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "dimen"

    invoke-virtual {v0, p1, v1, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    sget-boolean v1, Lcom/oplus/wallpaper/sdk/Utils;->DEBUG:Z

    if-eqz v1, :cond_32

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRemoteDimensionRes, resName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", resID = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "WS.Utils"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_32
    if-eqz p0, :cond_3a

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int p0, p0

    return p0

    :cond_3a
    const/4 p0, -0x1

    return p0
.end method

.method public static getRemoteIntegerRes(Landroid/content/Context;Ljava/lang/String;)I
    .registers 5

    if-eqz p0, :cond_39

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "integer"

    invoke-virtual {v0, p1, v1, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    sget-boolean v1, Lcom/oplus/wallpaper/sdk/Utils;->DEBUG:Z

    if-eqz v1, :cond_32

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRemoteIntegerRes, resName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", resID = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "WS.Utils"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_32
    if-eqz p0, :cond_39

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    return p0

    :cond_39
    const/4 p0, -0x1

    return p0
.end method

.method public static getSystemIntSettings(Landroid/content/Context;Ljava/lang/String;I)I
    .registers 3

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p0
    :try_end_8
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_8} :catch_9

    return p0

    :catch_9
    return p2
.end method

.method public static getSystemPropties(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const-class v0, Ljava/lang/String;

    const-string v1, "get"

    const-string v2, ""

    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_8
    const-string v5, "android.os.SystemProperties"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    new-array v6, v4, [Ljava/lang/Class;

    aput-object v0, v6, v3

    invoke-virtual {v5, v1, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    if-eqz v6, :cond_5e

    new-array v7, v4, [Ljava/lang/Object;

    aput-object p0, v7, v3

    invoke-virtual {v6, v5, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_22} :catch_24

    move-object v2, v5

    goto :goto_5e

    :catch_24
    move-exception v5

    :try_start_25
    const-string v6, "Y29tLmhleXRhcC5jb21wYXQub3MuU3lzdGVtUHJvcGVydGllc05hdGl2ZQ=="

    invoke-static {v6}, Lcom/oplus/wallpaper/sdk/Utils;->decodeBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    new-array v7, v4, [Ljava/lang/Class;

    aput-object v0, v7, v3

    invoke-virtual {v6, v1, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_5e

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p0, v1, v3

    invoke-virtual {v0, v6, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_43} :catch_45

    move-object v2, p0

    goto :goto_5e

    :catch_45
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getSystemPropties SystemPropertiesNative e"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "WS.Utils"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5e
    :goto_5e
    return-object v2
.end method

.method public static isAboveOS113()Z
    .registers 2

    invoke-static {}, Lcom/oplus/wallpaper/sdk/Utils;->getOSVersionCode()I

    move-result v0

    const/16 v1, 0x16

    if-lt v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public static putSystemIntSettings(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public static readFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const-string v0, "readFile finally colse catch exception = "

    const-string v1, "WS.Utils"

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p0

    const/4 v3, 0x0

    if-eqz p0, :cond_96

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long p0, v4, v6

    if-nez p0, :cond_1c

    goto/16 :goto_96

    :cond_1c
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    long-to-int p0, v4

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    :try_start_26
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_2b} :catch_51
    .catchall {:try_start_26 .. :try_end_2b} :catchall_4f

    :try_start_2b
    new-array p0, p0, [B

    :goto_2d
    invoke-virtual {v5, p0}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3d

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_3c} :catch_4c
    .catchall {:try_start_2b .. :try_end_3c} :catchall_4a

    goto :goto_2d

    :cond_3d
    :try_start_3d
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_40} :catch_41

    goto :goto_7e

    :catch_41
    move-exception p0

    invoke-static {v0, p0, v1}, Lcom/android/common/debug/b;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    sget-boolean v0, Lcom/oplus/wallpaper/sdk/Utils;->DEBUG:Z

    if-eqz v0, :cond_7e

    goto :goto_7b

    :catchall_4a
    move-exception p0

    goto :goto_84

    :catch_4c
    move-exception p0

    move-object v3, v5

    goto :goto_52

    :catchall_4f
    move-exception p0

    goto :goto_83

    :catch_51
    move-exception p0

    :goto_52
    :try_start_52
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readFile catch exception = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v2, Lcom/oplus/wallpaper/sdk/Utils;->DEBUG:Z

    if-eqz v2, :cond_6d

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6d
    .catchall {:try_start_52 .. :try_end_6d} :catchall_4f

    :cond_6d
    if-eqz v3, :cond_7e

    :try_start_6f
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_72} :catch_73

    goto :goto_7e

    :catch_73
    move-exception p0

    invoke-static {v0, p0, v1}, Lcom/android/common/debug/b;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    sget-boolean v0, Lcom/oplus/wallpaper/sdk/Utils;->DEBUG:Z

    if-eqz v0, :cond_7e

    :goto_7b
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7e
    :goto_7e
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :goto_83
    move-object v5, v3

    :goto_84
    if-eqz v5, :cond_95

    :try_start_86
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_89} :catch_8a

    goto :goto_95

    :catch_8a
    move-exception v2

    invoke-static {v0, v2, v1}, Lcom/android/common/debug/b;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    sget-boolean v0, Lcom/oplus/wallpaper/sdk/Utils;->DEBUG:Z

    if-eqz v0, :cond_95

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_95
    :goto_95
    throw p0

    :cond_96
    :goto_96
    return-object v3
.end method

.method public static writeFile(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const-string v0, "writeFile finally catch Exception = "

    const-string v1, "WS.Utils"

    const/4 v2, 0x0

    :try_start_5
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_a} :catch_27
    .catchall {:try_start_5 .. :try_end_a} :catchall_25

    :try_start_a
    const-string p0, "utf-8"

    invoke-virtual {p1, p0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_13} :catch_22
    .catchall {:try_start_a .. :try_end_13} :catchall_20

    :try_start_13
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_16} :catch_17

    goto :goto_54

    :catch_17
    move-exception p0

    invoke-static {v0, p0, v1}, Lcom/android/common/debug/b;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    sget-boolean p1, Lcom/oplus/wallpaper/sdk/Utils;->DEBUG:Z

    if-eqz p1, :cond_54

    goto :goto_51

    :catchall_20
    move-exception p0

    goto :goto_56

    :catch_22
    move-exception p0

    move-object v2, v3

    goto :goto_28

    :catchall_25
    move-exception p0

    goto :goto_55

    :catch_27
    move-exception p0

    :goto_28
    :try_start_28
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "writeFile catch Exception = "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean p1, Lcom/oplus/wallpaper/sdk/Utils;->DEBUG:Z

    if-eqz p1, :cond_43

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_43
    .catchall {:try_start_28 .. :try_end_43} :catchall_25

    :cond_43
    if-eqz v2, :cond_54

    :try_start_45
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_48} :catch_49

    goto :goto_54

    :catch_49
    move-exception p0

    invoke-static {v0, p0, v1}, Lcom/android/common/debug/b;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    sget-boolean p1, Lcom/oplus/wallpaper/sdk/Utils;->DEBUG:Z

    if-eqz p1, :cond_54

    :goto_51
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_54
    :goto_54
    return-void

    :goto_55
    move-object v3, v2

    :goto_56
    if-eqz v3, :cond_67

    :try_start_58
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_5b} :catch_5c

    goto :goto_67

    :catch_5c
    move-exception p1

    invoke-static {v0, p1, v1}, Lcom/android/common/debug/b;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    sget-boolean v0, Lcom/oplus/wallpaper/sdk/Utils;->DEBUG:Z

    if-eqz v0, :cond_67

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_67
    :goto_67
    throw p0
.end method
