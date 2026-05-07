.class public final Lcom/android/launcher/wallpaper/WallpaperBlur;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher/wallpaper/WallpaperHolder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/wallpaper/WallpaperBlur$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher/wallpaper/WallpaperBlur$Companion;

.field private static final DEBUG:Z

.field private static final PREPROCESS_DISALLOW:Z = false

.field private static final TAG:Ljava/lang/String; = "WallpaperBlur"

.field public static final WALLPAPER_SCALE_FACTOR:F = 0.2f


# instance fields
.field private mBlurCache:Lcom/android/launcher/wallpaper/BlurCache;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher/wallpaper/WallpaperBlur$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher/wallpaper/WallpaperBlur$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher/wallpaper/WallpaperBlur;->Companion:Lcom/android/launcher/wallpaper/WallpaperBlur$Companion;

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher/wallpaper/WallpaperBlur;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/launcher/wallpaper/BlurCache;

    invoke-direct {v0}, Lcom/android/launcher/wallpaper/BlurCache;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/wallpaper/WallpaperBlur;->mBlurCache:Lcom/android/launcher/wallpaper/BlurCache;

    return-void
.end method

.method public static final synthetic access$getMBlurCache$p(Lcom/android/launcher/wallpaper/WallpaperBlur;)Lcom/android/launcher/wallpaper/BlurCache;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/wallpaper/WallpaperBlur;->mBlurCache:Lcom/android/launcher/wallpaper/BlurCache;

    return-object p0
.end method

.method private final createScaledWallpaperForBlur(Lcom/android/launcher/Launcher;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 7

    const-string p0, "WallpaperBlur"

    const-string v0, "create scaled wallpaper for blur start."

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "createScaledWallpaperForBlur"

    const-wide/16 v0, 0x8

    invoke-static {v0, v1, p0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    new-instance p0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x4

    iput v2, p0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v2, 0x0

    if-nez p2, :cond_1d

    invoke-static {p1, p0, v2}, Lcom/android/launcher/wallpaper/WallpaperUtil;->getStaticWallpaper(Landroid/content/Context;Landroid/graphics/BitmapFactory$Options;Landroid/app/IWallpaperManagerCallback;)Landroid/graphics/Bitmap;

    move-result-object p2

    :cond_1d
    if-nez p2, :cond_27

    const-string p0, "WallpaperBlur"

    const-string p1, "Fail to create scaled wallpaper fo blur as we get null wallpaper from system"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_27
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    if-lez p0, :cond_7d

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    if-gtz p0, :cond_34

    goto :goto_7d

    :cond_34
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    int-to-float p0, p0

    const p1, 0x3e4ccccd  # 0.2f

    mul-float/2addr p0, p1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p1

    :try_start_43
    monitor-enter p2
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_60

    :try_start_44
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_52

    float-to-int p0, p0

    float-to-int p1, v3

    const/4 v3, 0x0

    invoke-static {p2, p0, p1, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_59

    :cond_52
    const-string p0, "WallpaperBlur"

    const-string p1, "access free bitmap"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_59
    sget-object p0, Ly2/p;->a:Ly2/p;
    :try_end_5b
    .catchall {:try_start_44 .. :try_end_5b} :catchall_5d

    :try_start_5b
    monitor-exit p2

    goto :goto_65

    :catchall_5d
    move-exception p0

    monitor-exit p2

    throw p0
    :try_end_60
    .catchall {:try_start_5b .. :try_end_60} :catchall_60

    :catchall_60
    move-exception p0

    invoke-static {p0}, Lq/d;->h(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_65
    invoke-static {p0}, Ly2/j;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_72

    const-string p1, "WallpaperBlur"

    const-string p2, "createScaledBitmap error = "

    invoke-static {p0, p2, p1}, Lcom/android/common/util/d;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_72
    const-string p0, "WallpaperBlur"

    const-string p1, "create scaled wallpaper for blur end"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-object v2

    :cond_7d
    :goto_7d
    const-string p0, "WallpaperBlur"

    const-string p1, "Got error wallpaper, width = "

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", height = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method private final getScaledLiveWallpaper(Lcom/android/launcher/Launcher;)Landroid/graphics/Bitmap;
    .registers 5

    const-string p0, "WallpaperBlur"

    const-string v0, "Get scaled live wallpaper start."

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x8

    const-string v2, "getScaledLiveWallpaper"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const v2, 0x3e4ccccd  # 0.2f

    invoke-static {p1, v2}, Lcom/android/launcher/wallpaper/WallpaperUtil;->screenshotWallpaper(Lcom/android/launcher/Launcher;F)Landroid/graphics/Bitmap;

    move-result-object p1

    const-string v2, "Get scaled live wallpaper end"

    invoke-static {p0, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-object p1
.end method

.method private final getScaledWallpaper(Lcom/android/launcher/Launcher;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 15

    const/4 p0, 0x0

    const-string v0, "WallpaperBlur"

    if-eqz p2, :cond_c9

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_d

    goto/16 :goto_c9

    :cond_d
    new-instance v1, Landroid/graphics/Point;

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v2

    iget v2, v2, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p1

    iget p1, p1, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    invoke-direct {v1, v2, p1}, Landroid/graphics/Point;-><init>(II)V

    iget p1, v1, Landroid/graphics/Point;->x:I

    int-to-float p1, p1

    const v2, 0x3e4ccccd  # 0.2f

    mul-float/2addr p1, v2

    float-to-int p1, p1

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Float;

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v5, v8

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    const/4 v9, 0x1

    aput-object v7, v5, v9

    sget-boolean v7, Lcom/android/launcher/wallpaper/WallpaperBlur;->DEBUG:Z

    if-eqz v7, :cond_8b

    const-string v7, "getScaledWallpaper, wallpaperWidth = "

    const-string v10, ", wallpaperHeight = "

    const-string v11, ", createBitmapWidth = "

    invoke-static {v7, v1, v10, v2, v11}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, ", createBitmapHeight = "

    const-string v11, ", offset = ["

    invoke-static {v7, v3, v10, v4, v11}, Landroidx/constraintlayout/core/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    aget-object v10, v5, v8

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v10, 0x2c

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-object v10, v5, v9

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v10, 0x5d

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8b
    if-ge v3, v1, :cond_98

    sub-int v0, v1, v3

    int-to-float v0, v0

    aget-object v7, v5, v8

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    mul-float/2addr v7, v0

    goto :goto_99

    :cond_98
    move v7, v6

    :goto_99
    if-ge v4, v2, :cond_a6

    sub-int v0, v2, v4

    int-to-float v0, v0

    aget-object v5, v5, v9

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    mul-float v6, v5, v0

    :cond_a6
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v5, Landroid/graphics/Rect;

    float-to-int v9, v7

    float-to-int v10, v6

    int-to-float v11, v3

    add-float/2addr v11, v7

    float-to-int v7, v11

    if-le v7, v1, :cond_b5

    goto :goto_b6

    :cond_b5
    move v1, v7

    :goto_b6
    int-to-float v7, v4

    add-float/2addr v7, v6

    float-to-int v6, v7

    if-le v6, v2, :cond_bc

    goto :goto_bd

    :cond_bc
    move v2, v6

    :goto_bd
    invoke-direct {v5, v9, v10, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v8, v8, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, p2, v5, v1, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-object p1

    :cond_c9
    :goto_c9
    const-string p1, "Get illegal bitmap while getScaledWallpaper"

    invoke-static {v0, p1}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private final getWallpaperBitmap(Lcom/android/launcher/Launcher;)Landroid/graphics/Bitmap;
    .registers 3

    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-direct {p0, p1}, Lcom/android/launcher/wallpaper/WallpaperBlur;->getScaledLiveWallpaper(Lcom/android/launcher/Launcher;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_f
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher/wallpaper/WallpaperBlur;->createScaledWallpaperForBlur(Lcom/android/launcher/Launcher;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private final isScaleBitmapFitScreen(Lcom/android/launcher/Launcher;Landroid/graphics/Bitmap;)Z
    .registers 7

    const/4 p0, 0x0

    if-nez p2, :cond_4

    return p0

    :cond_4
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v1

    iget v1, v1, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p1

    iget p1, p1, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    invoke-direct {v0, v1, p1}, Landroid/graphics/Point;-><init>(II)V

    iget p1, v0, Landroid/graphics/Point;->x:I

    int-to-float p1, p1

    const v1, 0x3e4ccccd  # 0.2f

    mul-float/2addr p1, v1

    float-to-int p1, p1

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    const-string/jumbo v1, "scaleWidth = "

    const-string v2, ", scaleHeight = "

    const-string v3, ", bitmapWidth = "

    invoke-static {v1, p1, v2, v0, v3}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", bitmapHeight = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WallpaperBlur"

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ne p1, v1, :cond_56

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    if-ne v0, p1, :cond_56

    const/4 p0, 0x1

    :cond_56
    return p0
.end method


# virtual methods
.method public final getBlurredWallpaper(Lcom/android/launcher/Launcher;FLcom/android/launcher3/popup/EffectResultCallbackImp;)V
    .registers 6

    const-string v0, "launcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "effectResultCallback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher/wallpaper/WallpaperBlur;->mBlurCache:Lcom/android/launcher/wallpaper/BlurCache;

    invoke-virtual {v0}, Lcom/android/launcher/wallpaper/BlurCache;->getBlurredWallpaper()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_23

    const-string p0, "WallpaperBlur"

    const-string p1, "Found blurred wallpaper from cache"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Lcom/android/launcher3/popup/EffectResultCallbackImp;->onEffectDone(Landroid/graphics/Bitmap;)V

    return-void

    :cond_23
    invoke-direct {p0, p1}, Lcom/android/launcher/wallpaper/WallpaperBlur;->getWallpaperBitmap(Lcom/android/launcher/Launcher;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_2a

    return-void

    :cond_2a
    invoke-direct {p0, p1, v0}, Lcom/android/launcher/wallpaper/WallpaperBlur;->getScaledWallpaper(Lcom/android/launcher/Launcher;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-nez p0, :cond_31

    return-void

    :cond_31
    sget-object v0, Lcom/android/launcher3/popup/PopupBlurHelper;->INSTANCE:Lcom/android/launcher3/popup/PopupBlurHelper;

    invoke-virtual {v0, p0, p2, p1, p3}, Lcom/android/launcher3/popup/PopupBlurHelper;->blurBitmap(Landroid/graphics/Bitmap;FLandroid/content/Context;Lcom/android/launcher3/popup/EffectResultCallbackImp;)V

    return-void
.end method

.method public onDestroy()V
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher/wallpaper/WallpaperBlur;->recycleWallpaperBlurCache()V

    return-void
.end method

.method public onWallpaperChanged()V
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher/wallpaper/WallpaperBlur;->recycleWallpaperBlurCache()V

    return-void
.end method

.method public final preprocessBlurredWallpaper(Landroid/graphics/Bitmap;Lcom/android/launcher/Launcher;)V
    .registers 6

    const-string/jumbo v0, "wallpaperBitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "launcher"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/android/common/util/PlatformLevelUtils;->getGaussianLevel(Landroid/content/Context;)I

    move-result v0

    const-string v1, "WallpaperBlur"

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1a

    const-string p0, "Can not preprocess blurred wallpaper as gaussian level is low."

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1a
    invoke-static {p1}, Lcom/android/common/util/BitmapUtils;->isBitmapLegal(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-nez v0, :cond_26

    const-string p0, "Can not preprocess blurred wallpaper as we get illegal bitmap"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_26
    invoke-virtual {p2}, Lcom/android/launcher/Launcher;->getWallpaperManager()Lcom/android/launcher/wallpaper/LauncherWallpaperManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/wallpaper/LauncherWallpaperManager;->isLiveWallpaper()Z

    move-result v0

    if-eqz v0, :cond_31

    goto :goto_35

    :cond_31
    invoke-direct {p0, p2, p1}, Lcom/android/launcher/wallpaper/WallpaperBlur;->createScaledWallpaperForBlur(Lcom/android/launcher/Launcher;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    :goto_35
    invoke-direct {p0, p2, p1}, Lcom/android/launcher/wallpaper/WallpaperBlur;->getScaledWallpaper(Lcom/android/launcher/Launcher;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_3c

    return-void

    :cond_3c
    sget-object v0, Lcom/android/launcher3/popup/PopupBlurHelper;->INSTANCE:Lcom/android/launcher3/popup/PopupBlurHelper;

    const v1, 0x3f333333  # 0.7f

    new-instance v2, Lcom/android/launcher/wallpaper/WallpaperBlur$preprocessBlurredWallpaper$1;

    invoke-direct {v2, p0}, Lcom/android/launcher/wallpaper/WallpaperBlur$preprocessBlurredWallpaper$1;-><init>(Lcom/android/launcher/wallpaper/WallpaperBlur;)V

    invoke-virtual {v0, p1, v1, p2, v2}, Lcom/android/launcher3/popup/PopupBlurHelper;->blurBitmap(Landroid/graphics/Bitmap;FLandroid/content/Context;Lcom/android/launcher3/popup/EffectResultCallbackImp;)V

    return-void
.end method

.method public final recycleWallpaperBlurCache()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/wallpaper/WallpaperBlur;->mBlurCache:Lcom/android/launcher/wallpaper/BlurCache;

    invoke-virtual {p0}, Lcom/android/launcher/wallpaper/BlurCache;->recycleCache()V

    return-void
.end method

.method public final setBlurCacheListener(Lcom/android/launcher/wallpaper/BlurCache$OnBlurCacheChangedListener;)V
    .registers 3

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher/wallpaper/WallpaperBlur;->mBlurCache:Lcom/android/launcher/wallpaper/BlurCache;

    invoke-virtual {p0, p1}, Lcom/android/launcher/wallpaper/BlurCache;->setOnBlurCacheChangedListener(Lcom/android/launcher/wallpaper/BlurCache$OnBlurCacheChangedListener;)V

    return-void
.end method

.method public final setWallpaperBlurToCache(Landroid/graphics/Bitmap;)V
    .registers 3

    iget-object p0, p0, Lcom/android/launcher/wallpaper/WallpaperBlur;->mBlurCache:Lcom/android/launcher/wallpaper/BlurCache;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher/wallpaper/BlurCache;->setBlurredWallpaper(Landroid/graphics/Bitmap;Z)V

    return-void
.end method
