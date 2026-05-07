.class public final Lcom/android/launcher3/popup/PopupBlurHelper;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final BLUR_BRIGHTNESS:F = 1.0f

.field private static final BLUR_BRIGHTNESS_DARK:F = 0.76f

.field private static final DRAG_LAYER_BLUR_RADIUS:F = 4.0f

.field public static final INSTANCE:Lcom/android/launcher3/popup/PopupBlurHelper;

.field private static final TAG:Ljava/lang/String; = "PopupBlurHelper"

.field public static final WALLPAPER_BLUR_RADIUS:F = 0.7f


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/popup/PopupBlurHelper;

    invoke-direct {v0}, Lcom/android/launcher3/popup/PopupBlurHelper;-><init>()V

    sput-object v0, Lcom/android/launcher3/popup/PopupBlurHelper;->INSTANCE:Lcom/android/launcher3/popup/PopupBlurHelper;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final executePopupDeferredImmediately(Lcom/android/launcher3/Launcher;)V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "launcher"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_1c

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "executePopupDeferredImmediately callers:"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "PopupBlurHelper"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/OplusDragController;->runDeferredRemoveCallback()V

    return-void
.end method

.method private final loadBlurDragLayer(Lcom/android/launcher/Launcher;Lcom/android/launcher3/popup/PopupBlurView;)V
    .registers 9

    const-wide/16 v0, 0x8

    const-string v2, "drawDragLayerForBlur"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    sget-object v2, Lcom/android/common/util/BitmapUtils;->INSTANCE:Lcom/android/common/util/BitmapUtils;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v3

    const/high16 v4, 0x3f800000  # 1.0f

    invoke-virtual {v2, v3, v4}, Lcom/android/common/util/BitmapUtils;->viewToBitmap(Landroid/view/View;F)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_16

    return-void

    :cond_16
    new-instance v3, Lcom/android/launcher3/popup/PopupBlurHelper$loadBlurDragLayer$callback$1;

    invoke-direct {v3, p1, p2}, Lcom/android/launcher3/popup/PopupBlurHelper$loadBlurDragLayer$callback$1;-><init>(Lcom/android/launcher/Launcher;Lcom/android/launcher3/popup/PopupBlurView;)V

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p2

    sget-object v4, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    const/high16 v5, 0x40800000  # 4.0f

    if-ne p2, v4, :cond_32

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object p2

    const-string v4, "bitmap.hardwareBuffer"

    invoke-static {p2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2, v5, p1, v3}, Lcom/android/launcher3/popup/PopupBlurHelper;->blurBitmap(Landroid/hardware/HardwareBuffer;FLandroid/content/Context;Lcom/android/launcher3/popup/EffectResultCallbackImp;)V

    goto :goto_35

    :cond_32
    invoke-virtual {p0, v2, v5, p1, v3}, Lcom/android/launcher3/popup/PopupBlurHelper;->blurBitmap(Landroid/graphics/Bitmap;FLandroid/content/Context;Lcom/android/launcher3/popup/EffectResultCallbackImp;)V

    :goto_35
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method


# virtual methods
.method public final blurBitmap(Landroid/graphics/Bitmap;FLandroid/content/Context;Lcom/android/launcher3/popup/EffectResultCallbackImp;)V
    .registers 14

    const-string p0, "bitmap"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "context"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "effectResultCallback"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x8

    const-string p0, "blurBitmap"

    invoke-static {v0, v1, p0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    new-instance p0, Lcom/oplus/effectengine/OplusEffect;

    invoke-direct {p0, p3}, Lcom/oplus/effectengine/OplusEffect;-><init>(Landroid/content/Context;)V

    invoke-virtual {p4, p0}, Lcom/android/launcher3/popup/EffectResultCallbackImp;->setBlurEffect(Lcom/oplus/effectengine/OplusEffect;)V

    const/4 v2, 0x0

    invoke-virtual {p0, p4, v2}, Lcom/oplus/effectengine/OplusEffect;->setResultCallback(Lcom/oplus/effectengine/EffectResultCallback;Landroid/os/Handler;)V

    invoke-virtual {p0, p1}, Lcom/oplus/effectengine/OplusEffect;->init(Landroid/graphics/Bitmap;)Z

    move-result p1

    if-eqz p1, :cond_53

    const-class p1, Lcom/oplus/effectengine/blur/OplusBlurRenderer;

    invoke-virtual {p0, p1}, Lcom/oplus/effectengine/OplusEffect;->createRenderer(Ljava/lang/Class;)Lcom/oplus/effectengine/EffectRenderer;

    move-result-object p1

    check-cast p1, Lcom/oplus/effectengine/blur/OplusBlurRenderer;

    invoke-static {p3}, Lcom/coui/appcompat/darkmode/COUIDarkModeUtil;->a(Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_44

    const v4, 0x3f428f5c  # 0.76f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xc

    const/4 v8, 0x0

    move-object v2, p1

    move v3, p2

    invoke-static/range {v2 .. v8}, Lcom/oplus/effectengine/blur/OplusBlurRenderer$DefaultImpls;->setParam$default(Lcom/oplus/effectengine/blur/OplusBlurRenderer;FFFFILjava/lang/Object;)V

    goto :goto_50

    :cond_44
    const/high16 v4, 0x3f800000  # 1.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xc

    const/4 v8, 0x0

    move-object v2, p1

    move v3, p2

    invoke-static/range {v2 .. v8}, Lcom/oplus/effectengine/blur/OplusBlurRenderer$DefaultImpls;->setParam$default(Lcom/oplus/effectengine/blur/OplusBlurRenderer;FFFFILjava/lang/Object;)V

    :goto_50
    invoke-virtual {p0, p1}, Lcom/oplus/effectengine/OplusEffect;->renderEffect(Lcom/oplus/effectengine/EffectRenderer;)Z

    :cond_53
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public final blurBitmap(Landroid/hardware/HardwareBuffer;FLandroid/content/Context;Lcom/android/launcher3/popup/EffectResultCallbackImp;)V
    .registers 14

    const-string p0, "hardwareBuffer"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "context"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "effectResultCallback"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x8

    const-string p0, "blurBitmapH"

    invoke-static {v0, v1, p0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    new-instance p0, Lcom/oplus/effectengine/OplusEffect;

    invoke-direct {p0, p3}, Lcom/oplus/effectengine/OplusEffect;-><init>(Landroid/content/Context;)V

    invoke-virtual {p4, p0}, Lcom/android/launcher3/popup/EffectResultCallbackImp;->setBlurEffect(Lcom/oplus/effectengine/OplusEffect;)V

    const/4 p3, 0x0

    invoke-virtual {p0, p4, p3}, Lcom/oplus/effectengine/OplusEffect;->setResultCallback(Lcom/oplus/effectengine/EffectResultCallback;Landroid/os/Handler;)V

    invoke-virtual {p0, p1}, Lcom/oplus/effectengine/OplusEffect;->init(Landroid/hardware/HardwareBuffer;)Z

    move-result p1

    if-eqz p1, :cond_3f

    const-class p1, Lcom/oplus/effectengine/blur/OplusBlurRenderer;

    invoke-virtual {p0, p1}, Lcom/oplus/effectengine/OplusEffect;->createRenderer(Ljava/lang/Class;)Lcom/oplus/effectengine/EffectRenderer;

    move-result-object p1

    check-cast p1, Lcom/oplus/effectengine/blur/OplusBlurRenderer;

    const/high16 v4, 0x3f800000  # 1.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xc

    const/4 v8, 0x0

    move-object v2, p1

    move v3, p2

    invoke-static/range {v2 .. v8}, Lcom/oplus/effectengine/blur/OplusBlurRenderer$DefaultImpls;->setParam$default(Lcom/oplus/effectengine/blur/OplusBlurRenderer;FFFFILjava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/oplus/effectengine/OplusEffect;->renderEffect(Lcom/oplus/effectengine/EffectRenderer;)Z

    :cond_3f
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public final blurBitmapAsync(Landroid/graphics/Bitmap;FLandroid/content/Context;)Landroid/graphics/Bitmap;
    .registers 13

    const-string p0, "bitmap"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "context"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x8

    const-string p0, "blurBitmapAsync"

    invoke-static {v0, v1, p0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    new-instance p0, Lcom/oplus/effectengine/OplusEffect;

    invoke-direct {p0, p3}, Lcom/oplus/effectengine/OplusEffect;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Lcom/oplus/effectengine/OplusEffect;->init(Landroid/graphics/Bitmap;)Z

    move-result p3

    if-eqz p3, :cond_35

    const-class p3, Lcom/oplus/effectengine/blur/OplusBlurRenderer;

    invoke-virtual {p0, p3}, Lcom/oplus/effectengine/OplusEffect;->createRenderer(Ljava/lang/Class;)Lcom/oplus/effectengine/EffectRenderer;

    move-result-object p3

    check-cast p3, Lcom/oplus/effectengine/blur/OplusBlurRenderer;

    const/high16 v4, 0x3f800000  # 1.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xc

    const/4 v8, 0x0

    move-object v2, p3

    move v3, p2

    invoke-static/range {v2 .. v8}, Lcom/oplus/effectengine/blur/OplusBlurRenderer$DefaultImpls;->setParam$default(Lcom/oplus/effectengine/blur/OplusBlurRenderer;FFFFILjava/lang/Object;)V

    invoke-virtual {p0, p3}, Lcom/oplus/effectengine/OplusEffect;->renderEffectAsync(Lcom/oplus/effectengine/EffectRenderer;)Landroid/graphics/Bitmap;

    move-result-object p2

    goto :goto_36

    :cond_35
    const/4 p2, 0x0

    :goto_36
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {p0}, Lcom/oplus/effectengine/OplusEffect;->destroy()V

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-object p2
.end method

.method public final loadPopupBlurBg(Lcom/android/launcher/Launcher;Lcom/android/launcher3/popup/PopupBlurView;)V
    .registers 8

    const-string v0, "launcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->getWallpaperManager()Lcom/android/launcher/wallpaper/LauncherWallpaperManager;

    move-result-object v2

    new-instance v3, Lcom/android/launcher3/popup/PopupBlurHelper$loadPopupBlurBg$1;

    invoke-direct {v3, p1, p2}, Lcom/android/launcher3/popup/PopupBlurHelper$loadPopupBlurBg$1;-><init>(Lcom/android/launcher/Launcher;Lcom/android/launcher3/popup/PopupBlurView;)V

    const v4, 0x3f333333  # 0.7f

    invoke-virtual {v2, p1, v4, v3}, Lcom/android/launcher/wallpaper/LauncherWallpaperManager;->getBlurredWallpaper(Lcom/android/launcher/Launcher;FLcom/android/launcher3/popup/EffectResultCallbackImp;)V

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/popup/PopupBlurHelper;->loadBlurDragLayer(Lcom/android/launcher/Launcher;Lcom/android/launcher3/popup/PopupBlurView;)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_3b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    sub-long/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string p1, "loadPopupBlurBg use time = "

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "PopupBlurHelper"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3b
    return-void
.end method
