.class public Lcom/oplus/fancyicon/util/ImageUtils;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final COMPRESS_QUALITY:I = 0x5a

.field private static final PNG_HEAD_FORMAT:[B

.field private static final RETRY_COUNT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "ImageUtils"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/oplus/fancyicon/util/ImageUtils;->PNG_HEAD_FORMAT:[B

    return-void

    :array_a
    .array-data 1
        -0x77t
        0x50t
        0x4et
        0x47t
        0xdt
        0xat
        0x1at
        0xat
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .registers 4

    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget p0, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-gt v0, p2, :cond_b

    if-le p0, p1, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x1

    goto :goto_1c

    :cond_b
    :goto_b
    int-to-float v0, v0

    int-to-float p2, p2

    div-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p2

    int-to-float p0, p0

    int-to-float p1, p1

    div-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    if-ge p2, p0, :cond_1c

    move p0, p2

    :cond_1c
    :goto_1c
    return p0
.end method

.method public static computeSampleSize(Lcom/oplus/fancyicon/util/InputStreamLoader;I)I
    .registers 7

    const/4 v0, 0x1

    if-lez p1, :cond_1e

    invoke-static {p0}, Lcom/oplus/fancyicon/util/ImageUtils;->getBitmapSize(Lcom/oplus/fancyicon/util/InputStreamLoader;)Landroid/graphics/BitmapFactory$Options;

    move-result-object p0

    iget v1, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v1, v1

    iget p0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v3, p0

    mul-double/2addr v1, v3

    int-to-double p0, p1

    div-double/2addr v1, p0

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    :goto_14
    mul-int/lit8 v1, v0, 0x2

    int-to-double v1, v1

    cmpg-double v1, v1, p0

    if-gtz v1, :cond_1e

    shl-int/lit8 v0, v0, 0x1

    goto :goto_14

    :cond_1e
    return v0
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/FileOutputStream;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x2000

    new-array v0, v0, [B

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_12

    add-int/2addr v2, v3

    invoke-virtual {p1, v0, v1, v3}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_6

    :cond_12
    return v2
.end method

.method public static cropBitmapToAnother(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)Z
    .registers 11

    if-eqz p0, :cond_4c

    if-eqz p1, :cond_4c

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v2, v2

    int-to-float v0, v0

    div-float v4, v2, v0

    int-to-float v3, v3

    int-to-float v1, v1

    div-float v5, v3, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setDither(Z)V

    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    mul-float/2addr v0, v4

    sub-float/2addr v2, v0

    const/high16 p1, 0x40000000  # 2.0f

    div-float/2addr v2, p1

    mul-float/2addr v1, v4

    sub-float/2addr v3, v1

    div-float/2addr v3, p1

    invoke-virtual {v7, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v7, v4, v4}, Landroid/graphics/Canvas;->scale(FF)V

    const/4 p1, 0x0

    invoke-virtual {v7, p0, p1, p1, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    if-eqz p2, :cond_4b

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_4b
    return v6

    :cond_4c
    const/4 p0, 0x0

    return p0
.end method

.method public static final getBitmap(Lcom/oplus/fancyicon/util/InputStreamLoader;I)Landroid/graphics/Bitmap;
    .registers 5

    invoke-static {}, Lcom/oplus/fancyicon/util/ImageUtils;->getDefaultOptions()Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/oplus/fancyicon/util/ImageUtils;->computeSampleSize(Lcom/oplus/fancyicon/util/InputStreamLoader;I)I

    move-result p1

    iput p1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 p1, 0x0

    :goto_b
    const/4 v1, 0x3

    const/4 v2, 0x0

    if-ge p1, v1, :cond_34

    :try_start_f
    invoke-virtual {p0}, Lcom/oplus/fancyicon/util/InputStreamLoader;->get()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_17
    .catch Ljava/lang/OutOfMemoryError; {:try_start_f .. :try_end_17} :catch_21
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_17} :catch_1d
    .catchall {:try_start_f .. :try_end_17} :catchall_1b

    invoke-virtual {p0}, Lcom/oplus/fancyicon/util/InputStreamLoader;->close()V

    return-object p1

    :catchall_1b
    move-exception p1

    goto :goto_30

    :catch_1d
    invoke-virtual {p0}, Lcom/oplus/fancyicon/util/InputStreamLoader;->close()V

    return-object v2

    :catch_21
    :try_start_21
    invoke-static {}, Ljava/lang/System;->gc()V

    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    mul-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
    :try_end_2a
    .catchall {:try_start_21 .. :try_end_2a} :catchall_1b

    invoke-virtual {p0}, Lcom/oplus/fancyicon/util/InputStreamLoader;->close()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_b

    :goto_30
    invoke-virtual {p0}, Lcom/oplus/fancyicon/util/InputStreamLoader;->close()V

    throw p1

    :cond_34
    return-object v2
.end method

.method public static getBitmap(Lcom/oplus/fancyicon/util/InputStreamLoader;II)Landroid/graphics/Bitmap;
    .registers 4

    mul-int v0, p1, p2

    mul-int/lit8 v0, v0, 0x2

    if-lez p1, :cond_8

    if-gtz p2, :cond_9

    :cond_8
    const/4 v0, -0x1

    :cond_9
    invoke-static {p0, v0}, Lcom/oplus/fancyicon/util/ImageUtils;->getBitmap(Lcom/oplus/fancyicon/util/InputStreamLoader;I)Landroid/graphics/Bitmap;

    move-result-object p0

    if-lez v0, :cond_16

    if-eqz p0, :cond_16

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/oplus/fancyicon/util/ImageUtils;->scaleBitmapToDesire(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    :cond_16
    return-object p0
.end method

.method public static getBitmap(Lcom/oplus/fancyicon/util/InputStreamLoader;IILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 8

    if-eqz p3, :cond_54

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_54

    invoke-static {p0}, Lcom/oplus/fancyicon/util/ImageUtils;->getBitmapSize(Lcom/oplus/fancyicon/util/InputStreamLoader;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_d
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-ne v2, v3, :cond_3f

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-ne v0, v2, :cond_3f

    invoke-static {}, Lcom/oplus/fancyicon/util/ImageUtils;->getDefaultOptions()Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    iput-object p3, v0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x1

    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {p0}, Lcom/oplus/fancyicon/util/InputStreamLoader;->get()Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v3, v1, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_3f

    if-lez p1, :cond_3f

    if-lez p2, :cond_3f

    invoke-static {v1, p1, p2, v2}, Lcom/oplus/fancyicon/util/ImageUtils;->scaleBitmapToDesire(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_38} :catch_4c
    .catchall {:try_start_d .. :try_end_38} :catchall_42

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {p0}, Lcom/oplus/fancyicon/util/InputStreamLoader;->close()V

    return-object p1

    :cond_3f
    if-eqz v1, :cond_51

    goto :goto_4e

    :catchall_42
    move-exception p1

    if-eqz v1, :cond_48

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->recycle()V

    :cond_48
    invoke-virtual {p0}, Lcom/oplus/fancyicon/util/InputStreamLoader;->close()V

    throw p1

    :catch_4c
    if-eqz v1, :cond_51

    :goto_4e
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->recycle()V

    :cond_51
    invoke-virtual {p0}, Lcom/oplus/fancyicon/util/InputStreamLoader;->close()V

    :cond_54
    invoke-static {p0, p1, p2}, Lcom/oplus/fancyicon/util/ImageUtils;->getBitmap(Lcom/oplus/fancyicon/util/InputStreamLoader;II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static final getBitmapSize(Lcom/oplus/fancyicon/util/InputStreamLoader;)Landroid/graphics/BitmapFactory$Options;
    .registers 4

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    :try_start_8
    invoke-virtual {p0}, Lcom/oplus/fancyicon/util/InputStreamLoader;->get()Ljava/io/InputStream;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_10} :catch_19
    .catchall {:try_start_8 .. :try_end_10} :catchall_14

    invoke-virtual {p0}, Lcom/oplus/fancyicon/util/InputStreamLoader;->close()V

    return-object v0

    :catchall_14
    move-exception v0

    invoke-virtual {p0}, Lcom/oplus/fancyicon/util/InputStreamLoader;->close()V

    throw v0

    :catch_19
    invoke-virtual {p0}, Lcom/oplus/fancyicon/util/InputStreamLoader;->close()V

    return-object v0
.end method

.method public static final getBitmapSize(Ljava/lang/String;)Landroid/graphics/BitmapFactory$Options;
    .registers 2

    new-instance v0, Lcom/oplus/fancyicon/util/InputStreamLoader;

    invoke-direct {v0, p0}, Lcom/oplus/fancyicon/util/InputStreamLoader;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/oplus/fancyicon/util/ImageUtils;->getBitmapSize(Lcom/oplus/fancyicon/util/InputStreamLoader;)Landroid/graphics/BitmapFactory$Options;

    move-result-object p0

    return-object p0
.end method

.method public static getDefaultOptions()Landroid/graphics/BitmapFactory$Options;
    .registers 3

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v2, 0x1

    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    return-object v0
.end method

.method public static isBitmapValid(Landroid/graphics/Bitmap;)Z
    .registers 1

    if-eqz p0, :cond_a

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p0

    if-nez p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public static isPngFormat(Lcom/oplus/fancyicon/util/InputStreamLoader;)Z
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Lcom/oplus/fancyicon/util/InputStreamLoader;->get()Ljava/io/InputStream;

    move-result-object v1

    sget-object v2, Lcom/oplus/fancyicon/util/ImageUtils;->PNG_HEAD_FORMAT:[B

    array-length v2, v2

    new-array v3, v2, [B

    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-lt v1, v2, :cond_14

    invoke-static {v3}, Lcom/oplus/fancyicon/util/ImageUtils;->isPngFormat([B)Z

    move-result v0
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_14} :catch_1f
    .catchall {:try_start_1 .. :try_end_14} :catchall_18

    :cond_14
    invoke-virtual {p0}, Lcom/oplus/fancyicon/util/InputStreamLoader;->close()V

    return v0

    :catchall_18
    move-exception v0

    if-eqz p0, :cond_1e

    invoke-virtual {p0}, Lcom/oplus/fancyicon/util/InputStreamLoader;->close()V

    :cond_1e
    throw v0

    :catch_1f
    if-eqz p0, :cond_24

    invoke-virtual {p0}, Lcom/oplus/fancyicon/util/InputStreamLoader;->close()V

    :cond_24
    return v0
.end method

.method public static isPngFormat([B)Z
    .registers 5

    if-eqz p0, :cond_19

    array-length v0, p0

    sget-object v1, Lcom/oplus/fancyicon/util/ImageUtils;->PNG_HEAD_FORMAT:[B

    array-length v1, v1

    if-lt v0, v1, :cond_19

    const/4 v0, 0x0

    move v1, v0

    :goto_a
    sget-object v2, Lcom/oplus/fancyicon/util/ImageUtils;->PNG_HEAD_FORMAT:[B

    array-length v3, v2

    if-ge v1, v3, :cond_19

    aget-byte v3, p0, v1

    aget-byte v2, v2, v1

    if-eq v3, v2, :cond_16

    return v0

    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_19
    const/4 p0, 0x1

    return p0
.end method

.method public static saveBitmapToLocal(Lcom/oplus/fancyicon/util/InputStreamLoader;Ljava/lang/String;II)Z
    .registers 6

    if-eqz p0, :cond_2f

    if-eqz p1, :cond_2f

    if-lez p2, :cond_2f

    if-lez p3, :cond_2f

    invoke-static {p0}, Lcom/oplus/fancyicon/util/ImageUtils;->getBitmapSize(Lcom/oplus/fancyicon/util/InputStreamLoader;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-lez v1, :cond_2f

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-lez v0, :cond_2f

    if-ne v1, p2, :cond_1d

    if-ne v0, p3, :cond_1d

    invoke-static {p0, p1}, Lcom/oplus/fancyicon/util/ImageUtils;->saveToFile(Lcom/oplus/fancyicon/util/InputStreamLoader;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_1d
    invoke-static {p0, p2, p3}, Lcom/oplus/fancyicon/util/ImageUtils;->getBitmap(Lcom/oplus/fancyicon/util/InputStreamLoader;II)Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p2, :cond_2f

    invoke-static {p0}, Lcom/oplus/fancyicon/util/ImageUtils;->isPngFormat(Lcom/oplus/fancyicon/util/InputStreamLoader;)Z

    move-result p0

    invoke-static {p2, p1, p0}, Lcom/oplus/fancyicon/util/ImageUtils;->saveToFile(Landroid/graphics/Bitmap;Ljava/lang/String;Z)Z

    move-result p0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    return p0

    :cond_2f
    const/4 p0, 0x0

    return p0
.end method

.method public static saveToFile(Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/oplus/fancyicon/util/ImageUtils;->saveToFile(Landroid/graphics/Bitmap;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static saveToFile(Landroid/graphics/Bitmap;Ljava/lang/String;Z)Z
    .registers 7

    const-string v0, "saveToFile close IOException e = "

    const-string v1, "ImageUtils"

    if-eqz p0, :cond_82

    const/4 v2, 0x0

    :try_start_7
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_c} :catch_39
    .catchall {:try_start_7 .. :try_end_c} :catchall_37

    if-eqz p2, :cond_11

    :try_start_e
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_13

    :cond_11
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    :goto_13
    const/16 p2, 0x5a

    invoke-virtual {p0, p1, p2, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_18
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_18} :catch_34
    .catchall {:try_start_e .. :try_end_18} :catchall_31

    const/4 p0, 0x1

    :try_start_19
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1c} :catch_1d

    goto :goto_30

    :catch_1d
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/oplus/fancyicon/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_30
    return p0

    :catchall_31
    move-exception p0

    move-object v2, v3

    goto :goto_68

    :catch_34
    move-exception p0

    move-object v2, v3

    goto :goto_3a

    :catchall_37
    move-exception p0

    goto :goto_68

    :catch_39
    move-exception p0

    :goto_3a
    :try_start_3a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "saveToFile FileNotFoundException e = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/oplus/fancyicon/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4e
    .catchall {:try_start_3a .. :try_end_4e} :catchall_37

    if-eqz v2, :cond_82

    :try_start_50
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_53} :catch_54

    goto :goto_82

    :catch_54
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/oplus/fancyicon/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_82

    :goto_68
    if-eqz v2, :cond_81

    :try_start_6a
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_6d} :catch_6e

    goto :goto_81

    :catch_6e
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/oplus/fancyicon/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_81
    :goto_81
    throw p0

    :cond_82
    :goto_82
    const/4 p0, 0x0

    return p0
.end method

.method private static saveToFile(Lcom/oplus/fancyicon/util/InputStreamLoader;Ljava/lang/String;)Z
    .registers 9

    const-string v0, "saveToFile close IOException e = "

    const-string v1, "ImageUtils"

    const/4 v2, 0x0

    :try_start_5
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_a} :catch_3c
    .catchall {:try_start_5 .. :try_end_a} :catchall_39

    :try_start_a
    invoke-virtual {p0}, Lcom/oplus/fancyicon/util/InputStreamLoader;->get()Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/oplus/fancyicon/util/ImageUtils;->copy(Ljava/io/InputStream;Ljava/io/FileOutputStream;)I
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_11} :catch_34
    .catchall {:try_start_a .. :try_end_11} :catchall_2f

    const/4 p1, 0x1

    :try_start_12
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_15} :catch_16

    goto :goto_29

    :catch_16
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oplus/fancyicon/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_29
    if-eqz v2, :cond_2e

    invoke-virtual {p0}, Lcom/oplus/fancyicon/util/InputStreamLoader;->close()V

    :cond_2e
    return p1

    :catchall_2f
    move-exception p1

    move-object v6, v3

    move-object v3, v2

    move-object v2, v6

    goto :goto_73

    :catch_34
    move-exception p1

    move-object v6, v3

    move-object v3, v2

    move-object v2, v6

    goto :goto_3e

    :catchall_39
    move-exception p1

    move-object v3, v2

    goto :goto_73

    :catch_3c
    move-exception p1

    move-object v3, v2

    :goto_3e
    :try_start_3e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "saveToFile IOException e = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/oplus/fancyicon/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_52
    .catchall {:try_start_3e .. :try_end_52} :catchall_72

    if-eqz v2, :cond_6b

    :try_start_54
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_57} :catch_58

    goto :goto_6b

    :catch_58
    move-exception p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/oplus/fancyicon/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6b
    :goto_6b
    if-eqz v3, :cond_70

    invoke-virtual {p0}, Lcom/oplus/fancyicon/util/InputStreamLoader;->close()V

    :cond_70
    const/4 p0, 0x0

    return p0

    :catchall_72
    move-exception p1

    :goto_73
    if-eqz v2, :cond_8c

    :try_start_75
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_78
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_78} :catch_79

    goto :goto_8c

    :catch_79
    move-exception v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oplus/fancyicon/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8c
    :goto_8c
    if-eqz v3, :cond_91

    invoke-virtual {p0}, Lcom/oplus/fancyicon/util/InputStreamLoader;->close()V

    :cond_91
    throw p1
.end method

.method public static scaleBitmapToDesire(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .registers 6

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ne v0, p1, :cond_d

    if-ne v1, p2, :cond_d

    return-object p0

    :cond_d
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    if-eqz v1, :cond_19

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    :cond_19
    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {p0, p1, p3}, Lcom/oplus/fancyicon/util/ImageUtils;->cropBitmapToAnother(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)Z

    move-result p2

    if-eqz p2, :cond_24

    return-object p1

    :cond_24
    return-object p0
.end method
