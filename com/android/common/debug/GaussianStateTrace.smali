.class public Lcom/android/common/debug/GaussianStateTrace;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final BITMAP_COLOR:Ljava/lang/String; = "bitmapColor"

.field private static final BITMAP_HEIGHT:Ljava/lang/String; = "bitmapHeight"

.field private static final BITMAP_LEFT_BOTTOM_COLOR:Ljava/lang/String; = "bitmapColorLeftBottom"

.field private static final BITMAP_LEFT_TOP_COLOR:Ljava/lang/String; = "bitmapColorLeftTop"

.field private static final BITMAP_RIGHT_BOTTOM:Ljava/lang/String; = "bitmapColorRightBottom"

.field private static final BITMAP_RIGHT_TOP_COLOR:Ljava/lang/String; = "bitmapColorRightTop"

.field private static final BITMAP_WIDTH:Ljava/lang/String; = "bitmapWidth"

.field public static final CAPTURE_WALLPAPER_VALID:Ljava/lang/String; = "captureWallpaperValid"

.field public static final DRAWABLE_DST_HEIGHT:Ljava/lang/String; = "drawDstHeight"

.field public static final DRAWABLE_DST_WIDTH:Ljava/lang/String; = "drawDstWidth"

.field public static final LAUNCHER_VISIBLE:Ljava/lang/String; = "launcherVisible"

.field public static final LIVE_WALLPAPER:Ljava/lang/String; = "liveWallpaper"

.field public static final SINGLE_WALLPAPER:Ljava/lang/String; = "singleWallpaper"

.field private static final TAG:Ljava/lang/String; = "GaussianStateTrace"

.field public static final TRACE_GAUSSIAN_STATE:Z = true

.field public static final WALL_PAPER_LAYER:Ljava/lang/String; = "wallpaperLayer"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getARGBStr(I)Ljava/lang/String;
    .registers 7

    shr-int/lit8 v0, p0, 0x18

    and-int/lit16 v0, v0, 0xff

    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    and-int/lit16 p0, p0, 0xff

    const-string v3, "a_"

    const-string v4, "_r_"

    const-string v5, "_g_"

    invoke-static {v3, v0, v4, v1, v5}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "_b_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static trace(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static traceWallpaperColor(Landroid/graphics/Bitmap;)V
    .registers 10

    const-string v0, "GaussianStateTrace"

    const-string/jumbo v1, "traceWallpaperColor"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p0, :cond_11

    const-string/jumbo p0, "traceWallpaperColor wallpaperBitmap is null "

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_11
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x4

    if-lez v1, :cond_ab

    if-gtz v2, :cond_23

    goto/16 :goto_ab

    :cond_23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {p0, v1, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v5

    invoke-static {v5}, Lcom/android/common/debug/GaussianStateTrace;->getARGBStr(I)Ljava/lang/String;

    move-result-object v5

    mul-int/lit8 v6, v1, 0x3

    invoke-virtual {p0, v6, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v7

    invoke-static {v7}, Lcom/android/common/debug/GaussianStateTrace;->getARGBStr(I)Ljava/lang/String;

    move-result-object v7

    mul-int/lit8 v2, v2, 0x3

    invoke-virtual {p0, v1, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v1

    invoke-static {v1}, Lcom/android/common/debug/GaussianStateTrace;->getARGBStr(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v6, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v2

    invoke-static {v2}, Lcom/android/common/debug/GaussianStateTrace;->getARGBStr(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v8, "bitmapWidth"

    invoke-static {v8, v6}, Lcom/android/common/debug/GaussianStateTrace;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v6, "bitmapHeight"

    invoke-static {v6, p0}, Lcom/android/common/debug/GaussianStateTrace;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "bitmapColorLeftTop"

    invoke-static {p0, v5}, Lcom/android/common/debug/GaussianStateTrace;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "bitmapColorRightTop"

    invoke-static {p0, v7}, Lcom/android/common/debug/GaussianStateTrace;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "bitmapColorLeftBottom"

    invoke-static {p0, v1}, Lcom/android/common/debug/GaussianStateTrace;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "bitmapColorRightBottom"

    invoke-static {p0, v2}, Lcom/android/common/debug/GaussianStateTrace;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "traceWallpaperColor leftTop = "

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " rightTop = "

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " leftBottom = "

    const-string v6, " rightBottom = "

    invoke-static {p0, v5, v1, v6, v2}, Landroidx/room/s;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, " cost = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, v3

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_ab
    :goto_ab
    const-string/jumbo p0, "traceWallpaperColor width and height is zero "

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
