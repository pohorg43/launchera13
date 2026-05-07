.class public Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;
.super Landroid/graphics/drawable/Drawable;
.source ""

# interfaces
.implements Lcom/oplus/fancyicon/IRenderable;


# static fields
.field private static final DARK_MODE_COLOR:I = 0xd6d6d6

.field private static final DARK_MODE_COLOR_FILTER:Landroid/graphics/ColorFilter;

.field private static final DENSITY_720p:F = 2.0f

.field private static final DRAWABLE_HEIGHT_720p:I = 0x68

.field private static final DRAWABLE_WIDTH_720p:I = 0x68

.field private static final LOG_TAG:Ljava/lang/String; = "FancyDrawable"


# instance fields
.field private mAlpha:I

.field private mContext:Landroid/content/Context;

.field public mController:Lcom/oplus/fancyicon/BaseRendererController;

.field private mDrawableHeight:I

.field private mDrawableHeightRaw:I

.field private mDrawableWidth:I

.field private mDrawableWidthRaw:I

.field public mHelperCallback:Lcom/oplus/fancyicon/IHelperCallback;

.field private mInvalidateSelfRunnable:Ljava/lang/Runnable;

.field private mIsResetting:Z

.field public mName:Ljava/lang/String;

.field private mNoTransparentScale:F

.field private mPaused:Z

.field private mScaleX:F

.field private mScaleY:F


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    new-instance v0, Landroid/graphics/LightingColorFilter;

    const v1, 0xd6d6d6

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    sput-object v0, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;->DARK_MODE_COLOR_FILTER:Landroid/graphics/ColorFilter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/oplus/fancyicon/BaseRendererController;II)V
    .registers 7

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/16 v0, 0xff

    iput v0, p0, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;->mAlpha:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;->mPaused:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;->mIsResetting:Z

    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;->mScaleX:F

    iput v0, p0, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;->mScaleY:F

    iput v0, p0, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;->mNoTransparentScale:F

    new-instance v1, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable$1;

    invoke-direct {v1, p0}, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable$1;-><init>(Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;)V

    iput-object v1, p0, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;->mInvalidateSelfRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    if-lez p3, :cond_31

    if-lez p4, :cond_31

    invoke-direct {p0, p3}, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;->setDrawableWidth(I)V

    invoke-direct {p0, p4}, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;->setDrawableHeight(I)V

    goto :goto_3e

    :cond_31
    const/high16 p3, 0x42d00000  # 104.0f

    mul-float/2addr v1, p3

    const/high16 p3, 0x40000000  # 2.0f

    div-float/2addr v1, p3

    float-to-int p3, v1

    invoke-direct {p0, p3}, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;->setDrawableWidth(I)V

    invoke-direct {p0, p3}, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;->setDrawableHeight(I)V

    :goto_3e
    iput-object p1, p0, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;->mController:Lcom/oplus/fancyicon/BaseRendererController;

    if-eqz p2, :cond_82

    invoke-virtual {p2, p0}, Lcom/oplus/fancyicon/BaseRendererController;->addRenderable(Lcom/oplus/fancyicon/IRenderable;)V

    iget-object p1, p0, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;->mController:Lcom/oplus/fancyicon/BaseRendererController;

    invoke-virtual {p1}, Lcom/oplus/fancyicon/BaseRendererController;->getRoot()Lcom/oplus/fancyicon/ScreenElementRoot;

    move-result-object p1

    check-cast p1, Lcom/oplus/fancyicon/fancydrawable/FancyDrawableRoot;

    if-eqz p1, :cond_82

    invoke-virtual {p1}, Lcom/oplus/fancyicon/ScreenElementRoot;->getSuggestedMinimumWidth()I

    move-result p2

    iput p2, p0, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;->mDrawableWidthRaw:I

    invoke-virtual {p1}, Lcom/oplus/fancyicon/ScreenElementRoot;->getSuggestedMinimumHeight()I

    move-result p1

    iput p1, p0, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;->mDrawableHeightRaw:I

    iget p2, p0, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;->mDrawableWidthRaw:I

    if-lez p2, :cond_71

    if-lez p1, :cond_71

    iget p3, p0, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;->mDrawableWidth:I

    int-to-float p3, p3

    int-to-float p2, p2

    div-float/2addr p3, p2

    iput p3, p0, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;->mScaleX:F

    iget p2, p0, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;->mDrawableHeight:I

    int-to-float p2, p2

    int-to-float p1, p1

    div-float/2addr p2, p1

    iput p2, p0, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;->mScaleY:F

    :cond_71
    iget p1, p0, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;->mScaleX:F

    const/4 p2, 0x0

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_7a

    iput v0, p0, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;->mScaleX:F

    :cond_7a
    iget p1, p0, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;->mScaleY:F

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_82

    iput v0, p0, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;->mScaleY:F

    :cond_82
    const-string p1, "FancyDrawable init: , w: "

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;->mDrawableWidth:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", scale: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/oplus/fancyicon/util/Utils;->getThemeIconScale()F

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, ", wRaw: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;->mDrawableWidthRaw:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", mScaleX: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;->mScaleX:F

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FancyDrawable"

    invoke-static {p2, p1}, Lcom/oplus/fancyicon/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget p0, p0, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;->mDrawableWidth:I

    int-to-float p0, p0

    invoke-static {p0}, Lcom/oplus/fancyicon/util/Utils;->updateDefaultIconSize(F)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;->mIsResetting:Z

    return-void
.end method

.method private checkControllerCleaned()V
    .registers 3

    iget-object v0, p0, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;->mController:Lcom/oplus/fancyicon/BaseRendererController;

    invoke-virtual {v0}, Lcom/oplus/fancyicon/BaseRendererController;->getRoot()Lcom/oplus/fancyicon/ScreenElementRoot;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/fancyicon/ScreenElementRoot;->isThreadStoped()Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;->mHelperCallback:Lcom/oplus/fancyicon/IHelperCallback;

    if-eqz v0, :cond_29

    const-string v0, "FancyDrawable"

    const-string v1, "checkControllerCleaned, incorrect launcher instance,reset drawable now!!"

    invoke-static {v0, v1}, Lcom/oplus/fancyicon/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;->mIsResetting:Z

    if-nez v0, :cond_29

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;->mIsResetting:Z

    new-instance v0, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable$2;

    invoke-direct {v0, p0}, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable$2;-><init>(Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_29
    return-void
.end method

.method private setDrawableHeight(I)V
    .registers 2

    iput p1, p0, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;->mDrawableHeight:I

    return-void
.end method

.method private setDrawableWidth(I)V
    .registers 2

    iput p1, p0, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;->mDrawableWidth:I

    return-void
.end method


# virtual methods
.method public addTransparentPixels(F)V
    .registers 3

    invoke-static {}, Lcom/oplus/fancyicon/util/Utils;->isDefaultThemeIcon()Z

    move-result v0

    if-nez v0, :cond_b

    iput p1, p0, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;->mNoTransparentScale:F

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_b
    return-void
.end method

.method public cleanUp()Z
    .registers 4

    iget-object v0, p0, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;->mController:Lcom/oplus/fancyicon/BaseRendererController;

    invoke-virtual {v0, p0}, Lcom/oplus/fancyicon/BaseRendererController;->cleanUp(Lcom/oplus/fancyicon/IRenderable;)Z

    move-result v0

    const-string v1, "debugFancyIcon, cleanUp, mName = "

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", cleaned = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FancyDrawable"

    invoke-static {v2, v1}, Lcom/oplus/fancyicon/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_29

    iget-object p0, p0, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;->mController:Lcom/oplus/fancyicon/BaseRendererController;

    invoke-virtual {p0}, Lcom/oplus/fancyicon/BaseRendererController;->removeSelfFromThread()V

    :cond_29
    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 16

    const-string v0, "FancyDrawable"

    iget v1, p0, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;->mAlpha:I

    if-gtz v1, :cond_7

    return-void

    :cond_7
    :try_start_7
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    if-eqz v1, :cond_19

    iget v2, v1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, v1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_19
    iget v2, p0, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;->mScaleX:F

    iget v3, p0, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;->mScaleY:F

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object v2, p0, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/oplus/fancyicon/util/Utils;->needDarkModeIcon(Landroid/content/Context;)Z

    move-result v2

    invoke-static {}, Lcom/oplus/fancyicon/util/Utils;->needClipMask()Z

    move-result v3

    const/4 v4, 0x7

    const/4 v5, 0x3

    const/high16 v6, 0x3f800000  # 1.0f

    const/4 v7, 0x0

    const/high16 v8, 0x40000000  # 2.0f

    if-eqz v3, :cond_b3

    iget-object v3, p0, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/oplus/fancyicon/util/Utils;->getIconMask(Landroid/content/Context;)Landroid/graphics/Path;

    move-result-object v3

    invoke-static {}, Lcom/oplus/fancyicon/util/Utils;->getIconScale()F

    move-result v9

    if-eqz v3, :cond_b3

    iget v10, p0, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;->mDrawableWidthRaw:I

    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v10, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    new-instance v11, Landroid/graphics/Canvas;

    invoke-direct {v11}, Landroid/graphics/Canvas;-><init>()V

    new-instance v12, Landroid/graphics/PaintFlagsDrawFilter;

    invoke-direct {v12, v7, v5}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v11, v12}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    invoke-virtual {v11, v10}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    if-eqz v1, :cond_62

    iget v12, v1, Landroid/graphics/Rect;->left:I

    int-to-float v12, v12

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {v11, v12, v1}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_62
    invoke-static {}, Lcom/oplus/fancyicon/util/Utils;->needScaleIconContent()Z

    move-result v1

    if-eqz v1, :cond_71

    iget v1, p0, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;->mDrawableWidthRaw:I

    int-to-float v12, v1

    div-float/2addr v12, v8

    int-to-float v1, v1

    div-float/2addr v1, v8

    invoke-virtual {v11, v9, v9, v12, v1}, Landroid/graphics/Canvas;->scale(FFFF)V

    :cond_71
    iget-object v1, p0, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;->mController:Lcom/oplus/fancyicon/BaseRendererController;

    invoke-virtual {v1}, Lcom/oplus/fancyicon/BaseRendererController;->getRoot()Lcom/oplus/fancyicon/ScreenElementRoot;

    move-result-object v1

    invoke-virtual {v1, v11}, Lcom/oplus/fancyicon/ScreenElementRoot;->doRender(Landroid/graphics/Canvas;)V

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    new-instance v11, Landroid/graphics/Matrix;

    invoke-direct {v11}, Landroid/graphics/Matrix;-><init>()V

    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12, v4}, Landroid/graphics/Paint;-><init>(I)V

    new-instance v4, Landroid/graphics/BitmapShader;

    sget-object v13, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v4, v10, v13, v13}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v12, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget v4, p0, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;->mDrawableWidthRaw:I

    int-to-float v4, v4

    invoke-static {}, Lcom/oplus/fancyicon/util/Utils;->getIconScale()F

    move-result v10

    sub-float v10, v6, v10

    mul-float/2addr v10, v4

    div-float/2addr v10, v8

    invoke-virtual {v11, v9, v9}, Landroid/graphics/Matrix;->setScale(FF)V

    invoke-virtual {v11, v10, v10}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {v3, v11, v1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    if-eqz v2, :cond_ae

    sget-object v3, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;->DARK_MODE_COLOR_FILTER:Landroid/graphics/ColorFilter;

    invoke-virtual {v12, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_ae
    invoke-virtual {p1, v1, v12}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    const/4 v1, 0x1

    goto :goto_b4

    :cond_b3
    move v1, v7

    :goto_b4
    if-nez v1, :cond_12d

    invoke-static {}, Lcom/oplus/fancyicon/util/Utils;->isDefaultThemeIcon()Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_f3

    invoke-static {}, Lcom/oplus/fancyicon/util/Utils;->getThemeIconScale()F

    move-result v1

    iget v4, p0, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;->mNoTransparentScale:F

    mul-float/2addr v1, v4

    cmpl-float v4, v1, v6

    if-eqz v4, :cond_f3

    iget v4, p0, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;->mDrawableWidthRaw:I

    int-to-float v4, v4

    sub-float/2addr v6, v1

    mul-float/2addr v4, v6

    div-float/2addr v4, v8

    iget v9, p0, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;->mDrawableHeightRaw:I

    int-to-float v9, v9

    mul-float/2addr v9, v6

    div-float/2addr v9, v8

    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    new-instance v8, Landroid/graphics/RectF;

    iget v10, p0, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;->mDrawableWidthRaw:I

    int-to-float v10, v10

    iget v11, p0, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;->mDrawableHeightRaw:I

    int-to-float v11, v11

    invoke-direct {v8, v3, v3, v10, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v10, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v6, v8, v10}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    invoke-virtual {p1, v1, v1}, Landroid/graphics/Canvas;->scale(FF)V

    div-float/2addr v4, v1

    div-float/2addr v9, v1

    invoke-virtual {p1, v4, v9}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_f3
    if-eqz v2, :cond_124

    iget v1, p0, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;->mDrawableWidthRaw:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2}, Landroid/graphics/Canvas;-><init>()V

    invoke-virtual {v2, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    new-instance v4, Landroid/graphics/PaintFlagsDrawFilter;

    invoke-direct {v4, v7, v5}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v2, v4}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    iget-object v4, p0, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;->mController:Lcom/oplus/fancyicon/BaseRendererController;

    invoke-virtual {v4}, Lcom/oplus/fancyicon/BaseRendererController;->getRoot()Lcom/oplus/fancyicon/ScreenElementRoot;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/oplus/fancyicon/ScreenElementRoot;->doRender(Landroid/graphics/Canvas;)V

    new-instance v2, Landroid/graphics/Paint;

    const/4 v4, 0x7

    invoke-direct {v2, v4}, Landroid/graphics/Paint;-><init>(I)V

    sget-object v4, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;->DARK_MODE_COLOR_FILTER:Landroid/graphics/ColorFilter;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    invoke-virtual {p1, v1, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_124
    iget-object v1, p0, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;->mController:Lcom/oplus/fancyicon/BaseRendererController;

    invoke-virtual {v1}, Lcom/oplus/fancyicon/BaseRendererController;->getRoot()Lcom/oplus/fancyicon/ScreenElementRoot;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/oplus/fancyicon/ScreenElementRoot;->doRender(Landroid/graphics/Canvas;)V

    :cond_12d
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-direct {p0}, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;->checkControllerCleaned()V
    :try_end_133
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_133} :catch_14a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_133} :catch_134

    goto :goto_15f

    :catch_134
    move-exception p0

    const-string p1, "draw memory out: "

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/oplus/fancyicon/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15f

    :catch_14a
    move-exception p0

    const-string p1, "draw error: "

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/oplus/fancyicon/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_15f
    return-void
.end method

.method public getController()Lcom/oplus/fancyicon/BaseRendererController;
    .registers 1

    iget-object p0, p0, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;->mController:Lcom/oplus/fancyicon/BaseRendererController;

    return-object p0
.end method

.method public getCurrentState()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;->mPaused:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public getIconScale()F
    .registers 1

    invoke-static {}, Lcom/oplus/fancyicon/util/Utils;->getIconScale()F

    move-result p0

    return p0
.end method

.method public getIconWidth()F
    .registers 1

    iget p0, p0, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;->mDrawableWidth:I

    int-to-float p0, p0

    return p0
.end method

.method public getIntrinsicHeight()I
    .registers 1

    iget p0, p0, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;->mDrawableHeight:I

    return p0
.end method

.method public getIntrinsicWidth()I
    .registers 1

    iget p0, p0, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;->mDrawableWidth:I

    return p0
.end method

.method public getOpacity()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public onPause()V
    .registers 2

    iget-boolean v0, p0, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;->mPaused:Z

    if-nez v0, :cond_c

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;->mPaused:Z

    iget-object v0, p0, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;->mController:Lcom/oplus/fancyicon/BaseRendererController;

    invoke-virtual {v0}, Lcom/oplus/fancyicon/BaseRendererController;->pausedSelf()V

    :cond_c
    iget-object p0, p0, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;->mController:Lcom/oplus/fancyicon/BaseRendererController;

    invoke-virtual {p0}, Lcom/oplus/fancyicon/BaseRendererController;->getRoot()Lcom/oplus/fancyicon/ScreenElementRoot;

    move-result-object p0

    const-string v0, "pause"

    invoke-virtual {p0, v0}, Lcom/oplus/fancyicon/ScreenElementRoot;->command(Ljava/lang/String;)V

    return-void
.end method

.method public onPauseThread()V
    .registers 1

    iget-object p0, p0, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;->mController:Lcom/oplus/fancyicon/BaseRendererController;

    invoke-virtual {p0}, Lcom/oplus/fancyicon/BaseRendererController;->pauseThread()V

    return-void
.end method

.method public onResume()V
    .registers 4

    iget-boolean v0, p0, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;->mPaused:Z

    if-eqz v0, :cond_18

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;->mPaused:Z

    iget-object v0, p0, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;->mController:Lcom/oplus/fancyicon/BaseRendererController;

    invoke-virtual {v0}, Lcom/oplus/fancyicon/BaseRendererController;->resumeSelf()V

    iget-object v0, p0, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;->mController:Lcom/oplus/fancyicon/BaseRendererController;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/oplus/fancyicon/BaseRendererController;->tick(J)V

    invoke-virtual {p0}, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;->postInvalidate()V

    :cond_18
    iget-object p0, p0, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;->mController:Lcom/oplus/fancyicon/BaseRendererController;

    invoke-virtual {p0}, Lcom/oplus/fancyicon/BaseRendererController;->getRoot()Lcom/oplus/fancyicon/ScreenElementRoot;

    move-result-object p0

    const-string v0, "resume"

    invoke-virtual {p0, v0}, Lcom/oplus/fancyicon/ScreenElementRoot;->command(Ljava/lang/String;)V

    return-void
.end method

.method public onResumeThread()V
    .registers 1

    iget-object p0, p0, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;->mController:Lcom/oplus/fancyicon/BaseRendererController;

    invoke-virtual {p0}, Lcom/oplus/fancyicon/BaseRendererController;->resumeThread()V

    return-void
.end method

.method public postInvalidate()V
    .registers 2

    iget-object v0, p0, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;->mController:Lcom/oplus/fancyicon/BaseRendererController;

    invoke-virtual {v0}, Lcom/oplus/fancyicon/BaseRendererController;->getRoot()Lcom/oplus/fancyicon/ScreenElementRoot;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/fancyicon/ScreenElementRoot;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;->mInvalidateSelfRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setAlpha(I)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAlpha alpha = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FancyDrawable"

    invoke-static {v1, v0}, Lcom/oplus/fancyicon/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;->mAlpha:I

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setBounds(IIII)V
    .registers 9

    iget v0, p0, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;->mDrawableWidthRaw:I

    if-lez v0, :cond_29

    iget v1, p0, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;->mDrawableHeightRaw:I

    if-lez v1, :cond_29

    sub-int v2, p3, p1

    if-lez v2, :cond_29

    sub-int v3, p4, p2

    if-lez v3, :cond_29

    int-to-float v2, v2

    int-to-float v0, v0

    div-float/2addr v2, v0

    iput v2, p0, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;->mScaleX:F

    int-to-float v0, v3

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;->mScaleY:F

    const/4 v1, 0x0

    cmpg-float v2, v2, v1

    const/high16 v3, 0x3f800000  # 1.0f

    if-gtz v2, :cond_23

    iput v3, p0, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;->mScaleX:F

    :cond_23
    cmpg-float v0, v0, v1

    if-gtz v0, :cond_29

    iput v3, p0, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;->mScaleY:F

    :cond_29
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const-string p0, "setBounds: ["

    const-string v0, ","

    const-string v1, ", "

    invoke-static {p0, p1, v0, p2, v1}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FancyDrawable"

    invoke-static {p1, p0}, Lcom/oplus/fancyicon/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2

    return-void
.end method

.method public setController(Lcom/oplus/fancyicon/BaseRendererController;)V
    .registers 2

    if-eqz p1, :cond_4

    iput-object p1, p0, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;->mController:Lcom/oplus/fancyicon/BaseRendererController;

    :cond_4
    return-void
.end method

.method public setHelperCallback(Lcom/oplus/fancyicon/IHelperCallback;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;->mHelperCallback:Lcom/oplus/fancyicon/IHelperCallback;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;->mName:Ljava/lang/String;

    return-void
.end method
