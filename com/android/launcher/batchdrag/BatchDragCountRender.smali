.class public Lcom/android/launcher/batchdrag/BatchDragCountRender;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/batchdrag/BatchDragCountRender$DrawParams;
    }
.end annotation


# static fields
.field private static final SIZE_PERCENTAGE:F = 0.25f

.field private static final TAG:Ljava/lang/String; = "BatchDragCountRender"

.field private static sBackgroundDrawable:Landroid/graphics/drawable/Drawable; = null

.field private static sNine:I = 0x9


# instance fields
.field private mDrawRect:Landroid/graphics/Rect;

.field private mEndOffset:I

.field private mIsRTL:Z

.field private mRectHeight:I

.field private mTextPadding:I

.field private mTextPaint:Landroid/text/TextPaint;

.field private mTopOffset:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher/batchdrag/BatchDragCountRender;->mIsRTL:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/batchdrag/BatchDragCountRender;->mDrawRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/batchdrag/BatchDragCountRender;->mTextPaint:Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/launcher/batchdrag/BatchDragCountRender;->mTextPaint:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lcom/android/launcher/batchdrag/BatchDragCountRender;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    iget-object v0, p0, Lcom/android/launcher/batchdrag/BatchDragCountRender;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07016d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object v0, p0, Lcom/android/launcher/batchdrag/BatchDragCountRender;->mTextPaint:Landroid/text/TextPaint;

    const v1, 0x7f060408

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/launcher/batchdrag/BatchDragCountRender;->mIsRTL:Z

    const v1, 0x7f07016b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher/batchdrag/BatchDragCountRender;->mEndOffset:I

    const v1, 0x7f07016c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher/batchdrag/BatchDragCountRender;->mTopOffset:I

    invoke-direct {p0, p1}, Lcom/android/launcher/batchdrag/BatchDragCountRender;->updateResources(Landroid/content/Context;)V

    sget-object p0, Lcom/android/launcher/batchdrag/BatchDragCountRender;->sBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p0, :cond_6d

    const p0, 0x7f08063d

    invoke-virtual {p1, p0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    sput-object p0, Lcom/android/launcher/batchdrag/BatchDragCountRender;->sBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    :cond_6d
    return-void
.end method

.method public static tintDrawableWithThemeColor(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .registers 10

    invoke-static {}, Lcom/coui/appcompat/theme/COUIThemeOverlay;->d()Lcom/coui/appcompat/theme/COUIThemeOverlay;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/theme/COUIThemeOverlay;->b(Landroid/content/res/Configuration;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const/4 v5, 0x0

    if-lez v4, :cond_24

    const-wide/32 v6, 0x7fffffff

    and-long/2addr v0, v6

    cmp-long v0, v0, v2

    if-eqz v0, :cond_24

    const/4 v0, 0x1

    goto :goto_25

    :cond_24
    move v0, v5

    :goto_25
    if-eqz v0, :cond_3a

    const v0, 0x7f0401f0

    invoke-static {p1, v0, v5}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->b(Landroid/content/Context;II)I

    move-result p1

    invoke-static {p0}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    return-object p0

    :cond_3a
    const p0, 0x7f08063d

    invoke-virtual {p1, p0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private updateResources(Landroid/content/Context;)V
    .registers 5

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p1}, Lcom/android/launcher3/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p1

    iget p1, p1, Lcom/android/launcher3/OplusDeviceProfile;->mIconVisiableSizePx:I

    const v1, 0x7f070af4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    int-to-float p1, p1

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x42600000  # 56.0f

    mul-float/2addr v0, v2

    div-float/2addr p1, v0

    mul-float/2addr p1, v1

    float-to-int p1, p1

    iput p1, p0, Lcom/android/launcher/batchdrag/BatchDragCountRender;->mRectHeight:I

    int-to-float p1, p1

    iget-object v0, p0, Lcom/android/launcher/batchdrag/BatchDragCountRender;->mTextPaint:Landroid/text/TextPaint;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    sub-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/android/launcher/batchdrag/BatchDragCountRender;->mTextPadding:I

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/content/Context;Lcom/android/launcher/batchdrag/BatchDragCountRender$DrawParams;)V
    .registers 9

    if-nez p3, :cond_a

    const-string p0, "BatchDragCountRender"

    const-string p1, "Invalid null argument(s) passed in call to draw."

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_a
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-direct {p0, p2}, Lcom/android/launcher/batchdrag/BatchDragCountRender;->updateResources(Landroid/content/Context;)V

    iget v0, p3, Lcom/android/launcher/batchdrag/BatchDragCountRender$DrawParams;->number:I

    sget v1, Lcom/android/launcher/batchdrag/BatchDragCountRender;->sNine:I

    if-gt v0, v1, :cond_19

    iget v0, p0, Lcom/android/launcher/batchdrag/BatchDragCountRender;->mRectHeight:I

    goto :goto_28

    :cond_19
    iget v1, p0, Lcom/android/launcher/batchdrag/BatchDragCountRender;->mTextPadding:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/launcher/batchdrag/BatchDragCountRender;->mTextPaint:Landroid/text/TextPaint;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    add-float/2addr v0, v1

    float-to-int v0, v0

    :goto_28
    iget-boolean v1, p0, Lcom/android/launcher/batchdrag/BatchDragCountRender;->mIsRTL:Z

    if-eqz v1, :cond_2f

    iget v1, p0, Lcom/android/launcher/batchdrag/BatchDragCountRender;->mEndOffset:I

    goto :goto_39

    :cond_2f
    iget-object v1, p3, Lcom/android/launcher/batchdrag/BatchDragCountRender$DrawParams;->iconBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int/2addr v1, v0

    iget v2, p0, Lcom/android/launcher/batchdrag/BatchDragCountRender;->mEndOffset:I

    sub-int/2addr v1, v2

    :goto_39
    iget v2, p0, Lcom/android/launcher/batchdrag/BatchDragCountRender;->mTopOffset:I

    add-int/2addr v0, v1

    iget v3, p0, Lcom/android/launcher/batchdrag/BatchDragCountRender;->mRectHeight:I

    add-int/2addr v3, v2

    iget-object v4, p0, Lcom/android/launcher/batchdrag/BatchDragCountRender;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v1, v2, v0, v3}, Landroid/graphics/Rect;->set(IIII)V

    sget-object v0, Lcom/android/launcher/batchdrag/BatchDragCountRender;->sBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p2}, Lcom/android/launcher/batchdrag/BatchDragCountRender;->tintDrawableWithThemeColor(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    sput-object p2, Lcom/android/launcher/batchdrag/BatchDragCountRender;->sBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/launcher/batchdrag/BatchDragCountRender;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    sget-object p2, Lcom/android/launcher/batchdrag/BatchDragCountRender;->sBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object p2, p0, Lcom/android/launcher/batchdrag/BatchDragCountRender;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p2}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p2

    iget-object v0, p0, Lcom/android/launcher/batchdrag/BatchDragCountRender;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    int-to-float v0, v0

    iget v1, p2, Landroid/graphics/Paint$FontMetrics;->top:F

    const/high16 v2, 0x40000000  # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget p2, p2, Landroid/graphics/Paint$FontMetrics;->bottom:F

    div-float/2addr p2, v2

    sub-float/2addr v0, p2

    iget p2, p3, Lcom/android/launcher/batchdrag/BatchDragCountRender$DrawParams;->number:I

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/android/launcher/batchdrag/BatchDragCountRender;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {p3}, Landroid/graphics/Rect;->centerX()I

    move-result p3

    int-to-float p3, p3

    iget-object p0, p0, Lcom/android/launcher/batchdrag/BatchDragCountRender;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, p2, p3, v0, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method
