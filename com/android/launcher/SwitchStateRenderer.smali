.class public Lcom/android/launcher/SwitchStateRenderer;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/SwitchStateRenderer$WidgetStateSwitchDrawParam;,
        Lcom/android/launcher/SwitchStateRenderer$SelectIconDrawParams;
    }
.end annotation


# static fields
.field private static final FLOAT_1:F = 1.0f

.field private static final FLOAT_2:F = 2.0f

.field private static final FLOAT_3:F = 3.0f

.field private static final TAG:Ljava/lang/String; = "SwitchStateRenderer"


# instance fields
.field private mCardDelIconOffsetRight:I

.field private mCardDelIconOffsetTop:I

.field private mContext:Landroid/content/Context;

.field private mDeleteIconBitmap:Landroid/graphics/Bitmap;

.field private mDeleteIconBitmapWidth:I

.field private mDeleteIconStartOffset:I

.field private mDeleteIconTopOffset:I

.field private final mIconPaint:Landroid/graphics/Paint;

.field private final mIconSize:I

.field private mIconVisiableSizePx:F

.field private mInitThemeResource:Z

.field private mIsNeedCacheSelectIconRect:Z

.field private mScaleDeleteIconBitmapWidth:I

.field private mScaleSelectIconBitmapWidth:I

.field private mSelectIconBitmapWidth:I

.field private mSelectIconRect:Landroid/graphics/Rect;

.field private mSelectIconRightOffset:I

.field private mSelectIconRightOffsetForFoldedScreen:I

.field private mSelectIconTopOffset:I

.field private mSelectedBitmap:Landroid/graphics/Bitmap;

.field private mSelectedColor:I

.field private mUnSelectedBitmap:Landroid/graphics/Bitmap;

.field private mWidgetRemoveIndicatorBackground:Landroid/graphics/drawable/Drawable;

.field private mWidgetSwitchStateBackground:Landroid/graphics/drawable/Drawable;

.field private final mWidgetSwitchStatePaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher/SwitchStateRenderer;->mIconPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher/SwitchStateRenderer;->mWidgetSwitchStatePaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object p1, p0, Lcom/android/launcher/SwitchStateRenderer;->mContext:Landroid/content/Context;

    const v1, 0x7f070af2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher/SwitchStateRenderer;->mSelectIconRightOffsetForFoldedScreen:I

    const v1, 0x7f070af3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher/SwitchStateRenderer;->mSelectIconTopOffset:I

    const v1, 0x7f070af1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher/SwitchStateRenderer;->mSelectIconRightOffset:I

    const v1, 0x7f07051d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher/SwitchStateRenderer;->mDeleteIconStartOffset:I

    const v1, 0x7f07051e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher/SwitchStateRenderer;->mDeleteIconTopOffset:I

    const v1, 0x7f070212

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher/SwitchStateRenderer;->mCardDelIconOffsetRight:I

    const v1, 0x7f070213

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher/SwitchStateRenderer;->mCardDelIconOffsetTop:I

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v1, v1

    const/high16 v2, 0x43200000  # 160.0f

    div-float/2addr v1, v2

    invoke-static {}, Lcom/android/launcher/wallpaper/WallpaperResolver;->isWorkspaceWpBright()Z

    move-result v2

    if-eqz v2, :cond_6b

    const v2, 0x7f08066f

    goto :goto_6e

    :cond_6b
    const v2, 0x7f08066e

    :goto_6e
    invoke-virtual {p1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher/SwitchStateRenderer;->mWidgetSwitchStateBackground:Landroid/graphics/drawable/Drawable;

    invoke-static {}, Lcom/android/launcher/wallpaper/WallpaperResolver;->isWorkspaceWpBright()Z

    move-result v2

    if-eqz v2, :cond_7e

    const v2, 0x7f080671

    goto :goto_81

    :cond_7e
    const v2, 0x7f080670

    :goto_81
    invoke-virtual {p1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher/SwitchStateRenderer;->mWidgetRemoveIndicatorBackground:Landroid/graphics/drawable/Drawable;

    sget-object v2, Lcom/android/launcher3/Launcher;->ACTIVITY_TRACKER:Lcom/android/launcher3/util/ActivityTracker;

    invoke-virtual {v2}, Lcom/android/launcher3/util/ActivityTracker;->getCreatedActivity()Lcom/android/launcher3/BaseActivity;

    move-result-object v3

    if-eqz v3, :cond_9a

    invoke-virtual {v2}, Lcom/android/launcher3/util/ActivityTracker;->getCreatedActivity()Lcom/android/launcher3/BaseActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/android/common/util/UxConfigUtils;->reapplyTheme(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/android/launcher/SwitchStateRenderer;->initBitmap(Landroid/content/Context;)V

    goto :goto_9d

    :cond_9a
    invoke-direct {p0, p1}, Lcom/android/launcher/SwitchStateRenderer;->initBitmap(Landroid/content/Context;)V

    :goto_9d
    iput p2, p0, Lcom/android/launcher/SwitchStateRenderer;->mIconSize:I

    int-to-float p1, p3

    iput p1, p0, Lcom/android/launcher/SwitchStateRenderer;->mIconVisiableSizePx:F

    const p3, 0x7f070af4

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f800000  # 1.0f

    mul-float/2addr p1, v3

    const/high16 v3, 0x42600000  # 56.0f

    mul-float/2addr v1, v3

    div-float/2addr p1, v1

    mul-float/2addr v2, p1

    float-to-int v1, v2

    iput v1, p0, Lcom/android/launcher/SwitchStateRenderer;->mScaleSelectIconBitmapWidth:I

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    int-to-float p3, p3

    mul-float/2addr p3, p1

    float-to-int p1, p3

    iput p1, p0, Lcom/android/launcher/SwitchStateRenderer;->mScaleDeleteIconBitmapWidth:I

    const-string p1, "mIconSize:"

    const-string p3, ", mSelectIconBitmapWidth:"

    invoke-static {p1, p2, p3}, Landroidx/appcompat/widget/d;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Lcom/android/launcher/SwitchStateRenderer;->mSelectIconBitmapWidth:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", mDeleteIconBitmapWidth:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/launcher/SwitchStateRenderer;->mDeleteIconBitmapWidth:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", mScaleSelectIconBitmapWidth = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/launcher/SwitchStateRenderer;->mScaleSelectIconBitmapWidth:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", mIconVisiableSizePx = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/launcher/SwitchStateRenderer;->mIconVisiableSizePx:F

    const-string p2, "SwitchStateRenderer"

    invoke-static {p1, p0, p2}, Lcom/android/launcher/h0;->a(Ljava/lang/StringBuilder;FLjava/lang/String;)V

    return-void
.end method

.method private initBitmap(Landroid/content/Context;)V
    .registers 4

    const v0, 0x7f0401f0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->b(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher/SwitchStateRenderer;->mSelectedColor:I

    const v0, 0x7f080649

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher/views/RoundImageView;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher/SwitchStateRenderer;->mSelectedBitmap:Landroid/graphics/Bitmap;

    const v0, 0x7f08064a

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher/views/RoundImageView;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher/SwitchStateRenderer;->mUnSelectedBitmap:Landroid/graphics/Bitmap;

    const v0, 0x7f08064e

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher/views/RoundImageView;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher/SwitchStateRenderer;->mDeleteIconBitmap:Landroid/graphics/Bitmap;

    iget-object p1, p0, Lcom/android/launcher/SwitchStateRenderer;->mUnSelectedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/android/launcher/SwitchStateRenderer;->mSelectIconBitmapWidth:I

    iget-object p1, p0, Lcom/android/launcher/SwitchStateRenderer;->mDeleteIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/android/launcher/SwitchStateRenderer;->mDeleteIconBitmapWidth:I

    const-string p1, " mSelectedColor "

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p0, p0, Lcom/android/launcher/SwitchStateRenderer;->mSelectedColor:I

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SwitchStateRenderer"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public drawDeleteIcon(Landroid/graphics/Canvas;Lcom/android/launcher/SwitchStateRenderer$WidgetStateSwitchDrawParam;Z)V
    .registers 9

    if-nez p2, :cond_a

    const-string p0, "SwitchStateRenderer"

    const-string p1, "Invalid null argument(s) passed in call to drawDeleteIcon."

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_a
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    if-eqz p3, :cond_12

    iget-object v0, p2, Lcom/android/launcher/SwitchStateRenderer$WidgetStateSwitchDrawParam;->widgetBoundsWithoutPadding:Landroid/graphics/Rect;

    goto :goto_14

    :cond_12
    iget-object v0, p2, Lcom/android/launcher/SwitchStateRenderer$WidgetStateSwitchDrawParam;->widgetBackgroundBounds:Landroid/graphics/Rect;

    :goto_14
    const v1, 0x7f070d2d

    if-eqz p3, :cond_1c

    iget v2, p0, Lcom/android/launcher/SwitchStateRenderer;->mCardDelIconOffsetRight:I

    goto :goto_26

    :cond_1c
    iget-object v2, p0, Lcom/android/launcher/SwitchStateRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    :goto_26
    int-to-float v2, v2

    if-eqz p3, :cond_2c

    iget p3, p0, Lcom/android/launcher/SwitchStateRenderer;->mCardDelIconOffsetTop:I

    goto :goto_36

    :cond_2c
    iget-object p3, p0, Lcom/android/launcher/SwitchStateRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    :goto_36
    int-to-float p3, p3

    iget-boolean v1, p2, Lcom/android/launcher/SwitchStateRenderer$WidgetStateSwitchDrawParam;->mIsRTL:Z

    if-eqz v1, :cond_40

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    sub-float/2addr v1, v2

    goto :goto_47

    :cond_40
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v3, p0, Lcom/android/launcher/SwitchStateRenderer;->mScaleDeleteIconBitmapWidth:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    add-float/2addr v1, v2

    :goto_47
    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    sub-float/2addr v0, p3

    iget-object p3, p0, Lcom/android/launcher/SwitchStateRenderer;->mWidgetSwitchStatePaint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Lcom/android/launcher/SwitchStateRenderer$WidgetStateSwitchDrawParam;->getIntegerAlpha()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    new-instance p3, Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/launcher/SwitchStateRenderer;->mDeleteIconBitmapWidth:I

    const/4 v3, 0x0

    invoke-direct {p3, v3, v3, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v2, Landroid/graphics/Rect;

    float-to-int v1, v1

    float-to-int v0, v0

    iget v3, p0, Lcom/android/launcher/SwitchStateRenderer;->mScaleDeleteIconBitmapWidth:I

    add-int v4, v1, v3

    add-int/2addr v3, v0

    invoke-direct {v2, v1, v0, v4, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iget p2, p2, Lcom/android/launcher/SwitchStateRenderer$WidgetStateSwitchDrawParam;->mAnimationFraction:F

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, p2, p2, v0, v1}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object p2, p0, Lcom/android/launcher/SwitchStateRenderer;->mDeleteIconBitmap:Landroid/graphics/Bitmap;

    iget-object p0, p0, Lcom/android/launcher/SwitchStateRenderer;->mWidgetSwitchStatePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, v2, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public drawSelectIcon(Landroid/content/Context;Landroid/graphics/Canvas;Lcom/android/launcher/SwitchStateRenderer$SelectIconDrawParams;)V
    .registers 15

    const-string v0, "SwitchStateRenderer"

    if-nez p3, :cond_a

    const-string p0, "Invalid null argument(s) passed in call to drawSelectIcon."

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_a
    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p2}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget-boolean v2, p3, Lcom/android/launcher/SwitchStateRenderer$SelectIconDrawParams;->mIsRTL:Z

    iget-object v3, p3, Lcom/android/launcher/SwitchStateRenderer$SelectIconDrawParams;->iconBounds:Landroid/graphics/Rect;

    if-eqz v2, :cond_1a

    iget v3, v3, Landroid/graphics/Rect;->left:I

    goto :goto_1c

    :cond_1a
    iget v3, v3, Landroid/graphics/Rect;->right:I

    :goto_1c
    int-to-float v3, v3

    iget-object v4, p3, Lcom/android/launcher/SwitchStateRenderer$SelectIconDrawParams;->iconBounds:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->top:I

    int-to-float v6, v5

    iget v7, p0, Lcom/android/launcher/SwitchStateRenderer;->mScaleSelectIconBitmapWidth:I

    int-to-float v7, v7

    const/high16 v8, 0x40000000  # 2.0f

    div-float/2addr v7, v8

    if-nez v2, :cond_f8

    iget v0, v1, Landroid/graphics/Rect;->right:I

    iget v2, v4, Landroid/graphics/Rect;->right:I

    sub-int v4, v0, v2

    int-to-float v4, v4

    cmpg-float v4, v4, v7

    if-ltz v4, :cond_6b

    iget v4, v1, Landroid/graphics/Rect;->top:I

    sub-int v4, v5, v4

    int-to-float v4, v4

    cmpg-float v4, v4, v7

    if-gez v4, :cond_3f

    goto :goto_6b

    :cond_3f
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isTabletInLongSize()Z

    move-result v0

    const/high16 v1, 0x40400000  # 3.0f

    if-eqz v0, :cond_53

    iget v0, p0, Lcom/android/launcher/SwitchStateRenderer;->mSelectIconRightOffset:I

    int-to-float v0, v0

    mul-float/2addr v0, v1

    sub-float/2addr v3, v0

    iget v0, p0, Lcom/android/launcher/SwitchStateRenderer;->mSelectIconTopOffset:I

    :goto_4e
    int-to-float v0, v0

    mul-float/2addr v0, v1

    add-float/2addr v6, v0

    goto/16 :goto_18f

    :cond_53
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isTabletInWideSize()Z

    move-result v0

    if-eqz v0, :cond_61

    iget v0, p0, Lcom/android/launcher/SwitchStateRenderer;->mSelectIconRightOffset:I

    int-to-float v0, v0

    mul-float/2addr v0, v1

    sub-float/2addr v3, v0

    iget v0, p0, Lcom/android/launcher/SwitchStateRenderer;->mSelectIconTopOffset:I

    goto :goto_4e

    :cond_61
    iget v0, p0, Lcom/android/launcher/SwitchStateRenderer;->mSelectIconRightOffset:I

    int-to-float v0, v0

    sub-float/2addr v3, v0

    iget v0, p0, Lcom/android/launcher/SwitchStateRenderer;->mSelectIconTopOffset:I

    int-to-float v0, v0

    add-float/2addr v6, v0

    goto/16 :goto_18f

    :cond_6b
    :goto_6b
    sub-int v3, v0, v2

    int-to-float v3, v3

    sub-float v3, v7, v3

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int v4, v5, v1

    int-to-float v4, v4

    sub-float v4, v7, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_88

    int-to-float v1, v2

    sub-int v3, v0, v2

    int-to-float v3, v3

    sub-float v3, v7, v3

    sub-float/2addr v1, v3

    sub-int/2addr v0, v2

    int-to-float v0, v0

    sub-float v0, v7, v0

    add-float/2addr v0, v6

    goto :goto_96

    :cond_88
    int-to-float v0, v5

    sub-int v3, v5, v1

    int-to-float v3, v3

    sub-float v3, v7, v3

    add-float/2addr v0, v3

    int-to-float v2, v2

    sub-int/2addr v5, v1

    int-to-float v1, v5

    sub-float v1, v7, v1

    sub-float v1, v2, v1

    :goto_96
    sget-object v2, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v2}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result v2

    if-eqz v2, :cond_d1

    invoke-static {p1}, Lcom/android/launcher/powersave/SuperPowerModeManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/powersave/SuperPowerModeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher/powersave/SuperPowerModeManager;->isInSuperPowerMode()Z

    move-result v2

    if-nez v2, :cond_c3

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenFolded()Z

    move-result v2

    if-eqz v2, :cond_c3

    invoke-static {p1}, Lcom/android/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher/Launcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v2

    sget-object v3, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    if-ne v2, v3, :cond_c3

    iget v2, p0, Lcom/android/launcher/SwitchStateRenderer;->mSelectIconRightOffsetForFoldedScreen:I

    int-to-float v3, v2

    sub-float/2addr v1, v3

    goto :goto_f2

    :cond_c3
    iget v2, p0, Lcom/android/launcher/SwitchStateRenderer;->mSelectIconRightOffset:I

    int-to-float v2, v2

    div-float/2addr v2, v8

    add-float/2addr v2, v1

    iget v1, p0, Lcom/android/launcher/SwitchStateRenderer;->mSelectIconTopOffset:I

    int-to-float v1, v1

    div-float/2addr v1, v8

    sub-float/2addr v0, v1

    move v6, v0

    move v3, v2

    goto/16 :goto_18f

    :cond_d1
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isTabletInWideSize()Z

    move-result v2

    if-eqz v2, :cond_ec

    iget-object v2, p0, Lcom/android/launcher/SwitchStateRenderer;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/launcher/powersave/SuperPowerModeManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/powersave/SuperPowerModeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher/powersave/SuperPowerModeManager;->isInSuperPowerMode()Z

    move-result v2

    if-nez v2, :cond_ec

    iget v2, p0, Lcom/android/launcher/SwitchStateRenderer;->mSelectIconRightOffset:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/android/launcher/SwitchStateRenderer;->mSelectIconTopOffset:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    goto :goto_f4

    :cond_ec
    iget v2, p0, Lcom/android/launcher/SwitchStateRenderer;->mSelectIconRightOffset:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/android/launcher/SwitchStateRenderer;->mSelectIconTopOffset:I

    :goto_f2
    int-to-float v2, v2

    add-float/2addr v0, v2

    :goto_f4
    move v6, v0

    move v3, v1

    goto/16 :goto_18f

    :cond_f8
    iget v2, v4, Landroid/graphics/Rect;->left:I

    iget v4, v1, Landroid/graphics/Rect;->left:I

    sub-int v9, v2, v4

    int-to-float v9, v9

    cmpg-float v9, v9, v7

    if-ltz v9, :cond_12c

    iget v9, v1, Landroid/graphics/Rect;->top:I

    sub-int v9, v5, v9

    int-to-float v9, v9

    cmpg-float v9, v9, v7

    if-gez v9, :cond_10d

    goto :goto_12c

    :cond_10d
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDevice()Z

    move-result v0

    if-eqz v0, :cond_123

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDevice()Z

    move-result v0

    if-eqz v0, :cond_18f

    invoke-static {p1}, Lcom/android/launcher/powersave/SuperPowerModeManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/powersave/SuperPowerModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/powersave/SuperPowerModeManager;->isInSuperPowerMode()Z

    move-result v0

    if-eqz v0, :cond_18f

    :cond_123
    iget v0, p0, Lcom/android/launcher/SwitchStateRenderer;->mSelectIconRightOffset:I

    int-to-float v0, v0

    sub-float/2addr v3, v0

    iget v0, p0, Lcom/android/launcher/SwitchStateRenderer;->mSelectIconTopOffset:I

    int-to-float v0, v0

    sub-float/2addr v6, v0

    goto :goto_18f

    :cond_12c
    :goto_12c
    sub-int/2addr v2, v4

    int-to-float v2, v2

    sub-float v2, v7, v2

    iget v3, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v3

    int-to-float v3, v5

    sub-float v3, v7, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_152

    const-string v2, "case SelectedDotOffsetX is larger than dotOffsetY\n"

    invoke-static {v0, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p3, Lcom/android/launcher/SwitchStateRenderer$SelectIconDrawParams;->iconBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v0

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int v3, v0, v1

    int-to-float v3, v3

    sub-float v3, v7, v3

    add-float/2addr v3, v2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    sub-float v0, v7, v0

    add-float/2addr v0, v6

    goto :goto_16f

    :cond_152
    const-string v2, "case SelectedDotOffsetY is larger than dotOffsetY\n"

    invoke-static {v0, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p3, Lcom/android/launcher/SwitchStateRenderer$SelectIconDrawParams;->iconBounds:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v2

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int v4, v2, v1

    int-to-float v4, v4

    sub-float v4, v7, v4

    add-float/2addr v3, v4

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    sub-int/2addr v2, v1

    int-to-float v1, v2

    sub-float v1, v7, v1

    add-float/2addr v0, v1

    move v10, v3

    move v3, v0

    move v0, v10

    :goto_16f
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDevice()Z

    move-result v1

    if-nez v1, :cond_180

    iget v1, p0, Lcom/android/launcher/SwitchStateRenderer;->mSelectIconRightOffset:I

    int-to-float v1, v1

    div-float/2addr v1, v8

    sub-float/2addr v3, v1

    iget v1, p0, Lcom/android/launcher/SwitchStateRenderer;->mSelectIconTopOffset:I

    :goto_17c
    int-to-float v1, v1

    div-float/2addr v1, v8

    sub-float/2addr v0, v1

    goto :goto_18e

    :cond_180
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenFolded()Z

    move-result v1

    if-eqz v1, :cond_18e

    iget v1, p0, Lcom/android/launcher/SwitchStateRenderer;->mSelectIconRightOffset:I

    int-to-float v1, v1

    div-float/2addr v1, v8

    sub-float/2addr v3, v1

    iget v1, p0, Lcom/android/launcher/SwitchStateRenderer;->mSelectIconTopOffset:I

    goto :goto_17c

    :cond_18e
    :goto_18e
    move v6, v0

    :cond_18f
    :goto_18f
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/launcher/SwitchStateRenderer;->mSelectIconBitmapWidth:I

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v1, Landroid/graphics/Rect;

    sub-float v2, v3, v7

    float-to-int v2, v2

    sub-float v4, v6, v7

    float-to-int v4, v4

    add-float v5, v3, v7

    float-to-int v5, v5

    add-float/2addr v7, v6

    float-to-int v7, v7

    invoke-direct {v1, v2, v4, v5, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-boolean v2, p0, Lcom/android/launcher/SwitchStateRenderer;->mIsNeedCacheSelectIconRect:Z

    if-eqz v2, :cond_1ad

    iput-object v1, p0, Lcom/android/launcher/SwitchStateRenderer;->mSelectIconRect:Landroid/graphics/Rect;

    :cond_1ad
    iget-object v2, p0, Lcom/android/launcher/SwitchStateRenderer;->mIconPaint:Landroid/graphics/Paint;

    iget v4, p3, Lcom/android/launcher/SwitchStateRenderer$SelectIconDrawParams;->alpha:I

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v2, p0, Lcom/android/launcher/SwitchStateRenderer;->mSelectedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_1c0

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2}, Lcom/android/launcher/SwitchStateRenderer;->recreateSelectIcon(Landroid/content/Context;Z)Landroid/graphics/Bitmap;

    :cond_1c0
    iget-boolean p1, p3, Lcom/android/launcher/SwitchStateRenderer$SelectIconDrawParams;->stateSwitching:Z

    if-eqz p1, :cond_1cc

    iget-object p1, p0, Lcom/android/launcher/SwitchStateRenderer;->mSelectedBitmap:Landroid/graphics/Bitmap;

    iget-object p0, p0, Lcom/android/launcher/SwitchStateRenderer;->mIconPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1, v0, v1, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_1e4

    :cond_1cc
    iget-boolean p1, p3, Lcom/android/launcher/SwitchStateRenderer$SelectIconDrawParams;->selected:Z

    if-eqz p1, :cond_1d8

    iget-object p1, p0, Lcom/android/launcher/SwitchStateRenderer;->mSelectedBitmap:Landroid/graphics/Bitmap;

    iget-object p0, p0, Lcom/android/launcher/SwitchStateRenderer;->mIconPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1, v0, v1, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_1e4

    :cond_1d8
    iget p1, p3, Lcom/android/launcher/SwitchStateRenderer$SelectIconDrawParams;->scale:F

    invoke-virtual {p2, p1, p1, v3, v6}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object p1, p0, Lcom/android/launcher/SwitchStateRenderer;->mUnSelectedBitmap:Landroid/graphics/Bitmap;

    iget-object p0, p0, Lcom/android/launcher/SwitchStateRenderer;->mIconPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1, v0, v1, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :goto_1e4
    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public drawWidgetBackground(Landroid/graphics/Canvas;Lcom/android/launcher/SwitchStateRenderer$WidgetStateSwitchDrawParam;)V
    .registers 5

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/android/launcher/SwitchStateRenderer;->mWidgetSwitchStateBackground:Landroid/graphics/drawable/Drawable;

    iget-object v1, p2, Lcom/android/launcher/SwitchStateRenderer$WidgetStateSwitchDrawParam;->widgetBackgroundBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/launcher/SwitchStateRenderer;->mWidgetSwitchStateBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Lcom/android/launcher/SwitchStateRenderer$WidgetStateSwitchDrawParam;->getIntegerAlpha()I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object p0, p0, Lcom/android/launcher/SwitchStateRenderer;->mWidgetSwitchStateBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public drawWidgetRemoveIndicatorBg(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V
    .registers 5

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/android/launcher/SwitchStateRenderer;->mWidgetRemoveIndicatorBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object p2, p0, Lcom/android/launcher/SwitchStateRenderer;->mWidgetRemoveIndicatorBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object p0, p0, Lcom/android/launcher/SwitchStateRenderer;->mWidgetRemoveIndicatorBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getCardDeleteIconRect(Landroid/view/View;Lcom/android/launcher/SwitchStateRenderer$WidgetStateSwitchDrawParam;Landroid/graphics/Rect;)V
    .registers 6

    iget-boolean p1, p2, Lcom/android/launcher/SwitchStateRenderer$WidgetStateSwitchDrawParam;->mIsRTL:Z

    if-eqz p1, :cond_c

    iget-object p1, p2, Lcom/android/launcher/SwitchStateRenderer$WidgetStateSwitchDrawParam;->widgetBoundsWithoutPadding:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    iget v0, p0, Lcom/android/launcher/SwitchStateRenderer;->mCardDelIconOffsetRight:I

    sub-int/2addr p1, v0

    goto :goto_16

    :cond_c
    iget-object p1, p2, Lcom/android/launcher/SwitchStateRenderer$WidgetStateSwitchDrawParam;->widgetBoundsWithoutPadding:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->right:I

    iget v0, p0, Lcom/android/launcher/SwitchStateRenderer;->mScaleDeleteIconBitmapWidth:I

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/android/launcher/SwitchStateRenderer;->mCardDelIconOffsetRight:I

    add-int/2addr p1, v0

    :goto_16
    int-to-float p1, p1

    iget-object p2, p2, Lcom/android/launcher/SwitchStateRenderer$WidgetStateSwitchDrawParam;->widgetBoundsWithoutPadding:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->top:I

    iget v0, p0, Lcom/android/launcher/SwitchStateRenderer;->mCardDelIconOffsetTop:I

    sub-int/2addr p2, v0

    int-to-float p2, p2

    new-instance v0, Landroid/graphics/Rect;

    float-to-int p1, p1

    float-to-int p2, p2

    iget p0, p0, Lcom/android/launcher/SwitchStateRenderer;->mScaleDeleteIconBitmapWidth:I

    add-int v1, p1, p0

    add-int/2addr p0, p2

    invoke-direct {v0, p1, p2, v1, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public getSelectIconRect()Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/SwitchStateRenderer;->mSelectIconRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getSelectedColor()I
    .registers 1

    iget p0, p0, Lcom/android/launcher/SwitchStateRenderer;->mSelectedColor:I

    return p0
.end method

.method public getWidgetDeleteIconRect(Landroid/view/View;Lcom/android/launcher/SwitchStateRenderer$WidgetStateSwitchDrawParam;Landroid/graphics/Rect;)V
    .registers 7

    if-nez p3, :cond_7

    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    :cond_7
    iget-boolean p2, p2, Lcom/android/launcher/SwitchStateRenderer$WidgetStateSwitchDrawParam;->mIsRTL:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_22

    iget-object p1, p0, Lcom/android/launcher/SwitchStateRenderer;->mDeleteIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iget p2, p0, Lcom/android/launcher/SwitchStateRenderer;->mDeleteIconStartOffset:I

    add-int/2addr p1, p2

    iget-object p2, p0, Lcom/android/launcher/SwitchStateRenderer;->mDeleteIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    iget p0, p0, Lcom/android/launcher/SwitchStateRenderer;->mDeleteIconTopOffset:I

    add-int/2addr p2, p0

    invoke-virtual {p3, v0, v0, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_3d

    :cond_22
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    iget-object p2, p0, Lcom/android/launcher/SwitchStateRenderer;->mDeleteIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    iget-object v1, p0, Lcom/android/launcher/SwitchStateRenderer;->mDeleteIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/android/launcher/SwitchStateRenderer;->mDeleteIconStartOffset:I

    sub-int v2, p1, v2

    sub-int/2addr v2, p2

    iget p0, p0, Lcom/android/launcher/SwitchStateRenderer;->mDeleteIconTopOffset:I

    add-int/2addr p0, v1

    invoke-virtual {p3, v2, v0, p1, p0}, Landroid/graphics/Rect;->set(IIII)V

    :goto_3d
    return-void
.end method

.method public getWidgetRemoveIndicatorBackground()Landroid/graphics/drawable/Drawable;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/SwitchStateRenderer;->mWidgetRemoveIndicatorBackground:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public onWallpaperBrightnessChanged()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/SwitchStateRenderer;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/launcher/wallpaper/WallpaperResolver;->isWorkspaceWpBright()Z

    move-result v1

    if-eqz v1, :cond_c

    const v1, 0x7f08066f

    goto :goto_f

    :cond_c
    const v1, 0x7f08066e

    :goto_f
    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher/SwitchStateRenderer;->mWidgetSwitchStateBackground:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/launcher/SwitchStateRenderer;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/launcher/wallpaper/WallpaperResolver;->isWorkspaceWpBright()Z

    move-result v1

    if-eqz v1, :cond_21

    const v1, 0x7f080671

    goto :goto_24

    :cond_21
    const v1, 0x7f080670

    :goto_24
    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher/SwitchStateRenderer;->mWidgetRemoveIndicatorBackground:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public recreateSelectIcon(Landroid/content/Context;Z)Landroid/graphics/Bitmap;
    .registers 5

    const-string/jumbo v0, "recreate select icon changeColor = "

    const-string v1, "SwitchStateRenderer"

    invoke-static {v0, p2, v1}, Lcom/android/common/rus/a;->a(Ljava/lang/String;ZLjava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/launcher/SwitchStateRenderer;->mInitThemeResource:Z

    const/4 v1, 0x1

    if-nez v0, :cond_10

    iput-boolean v1, p0, Lcom/android/launcher/SwitchStateRenderer;->mInitThemeResource:Z

    move p2, v1

    :cond_10
    if-nez p2, :cond_16

    iget-object p2, p0, Lcom/android/launcher/SwitchStateRenderer;->mSelectedBitmap:Landroid/graphics/Bitmap;

    if-nez p2, :cond_20

    :cond_16
    iget-object p2, p0, Lcom/android/launcher/SwitchStateRenderer;->mSelectedBitmap:Landroid/graphics/Bitmap;

    if-eqz p2, :cond_1d

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1d
    invoke-direct {p0, p1}, Lcom/android/launcher/SwitchStateRenderer;->initBitmap(Landroid/content/Context;)V

    :cond_20
    iget-object p0, p0, Lcom/android/launcher/SwitchStateRenderer;->mSelectedBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public setCacheSelectIconRectFlag(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher/SwitchStateRenderer;->mIsNeedCacheSelectIconRect:Z

    return-void
.end method
