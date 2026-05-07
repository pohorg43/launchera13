.class public Lcom/oplus/icons/OplusFastBitmapDrawable;
.super Lcom/android/launcher3/icons/FastBitmapDrawable;
.source ""


# static fields
.field public static final ALPHA_SUB_LAYER:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/oplus/icons/OplusFastBitmapDrawable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_ALPHA:I = 0xff

.field public static final TRANS_X:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/oplus/icons/OplusFastBitmapDrawable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final TRANS_Y:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/oplus/icons/OplusFastBitmapDrawable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCover:Lcom/oplus/icons/AbstractCoverDrawable;

.field private final mPaintSubLayer:Landroid/graphics/Paint;

.field private mSubLayerAlpha:I

.field private mSubLayerBitmap:Landroid/graphics/Bitmap;

.field public mTransX:I

.field public mTransY:I


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/oplus/icons/OplusFastBitmapDrawable$1;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v2, "transX"

    invoke-direct {v0, v1, v2}, Lcom/oplus/icons/OplusFastBitmapDrawable$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/oplus/icons/OplusFastBitmapDrawable;->TRANS_X:Landroid/util/Property;

    new-instance v0, Lcom/oplus/icons/OplusFastBitmapDrawable$2;

    const-string v2, "transY"

    invoke-direct {v0, v1, v2}, Lcom/oplus/icons/OplusFastBitmapDrawable$2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/oplus/icons/OplusFastBitmapDrawable;->TRANS_Y:Landroid/util/Property;

    new-instance v0, Lcom/oplus/icons/OplusFastBitmapDrawable$3;

    const-string v2, "alpha_sub_layer"

    invoke-direct {v0, v1, v2}, Lcom/oplus/icons/OplusFastBitmapDrawable$3;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/oplus/icons/OplusFastBitmapDrawable;->ALPHA_SUB_LAYER:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oplus/icons/OplusFastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/icons/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;I)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/oplus/icons/OplusFastBitmapDrawable;->mTransY:I

    iput p1, p0, Lcom/oplus/icons/OplusFastBitmapDrawable;->mTransX:I

    const/16 p1, 0xff

    iput p1, p0, Lcom/oplus/icons/OplusFastBitmapDrawable;->mSubLayerAlpha:I

    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x3

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/oplus/icons/OplusFastBitmapDrawable;->mPaintSubLayer:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/icons/BitmapInfo;)V
    .registers 3

    iget-object v0, p1, Lcom/android/launcher3/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    iget p1, p1, Lcom/android/launcher3/icons/BitmapInfo;->color:I

    invoke-direct {p0, v0, p1}, Lcom/oplus/icons/OplusFastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method private updateCoverBounds(Landroid/graphics/Rect;)V
    .registers 3

    iget-object v0, p0, Lcom/oplus/icons/OplusFastBitmapDrawable;->mCover:Lcom/oplus/icons/AbstractCoverDrawable;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object p0, p0, Lcom/oplus/icons/OplusFastBitmapDrawable;->mCover:Lcom/oplus/icons/AbstractCoverDrawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_13
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 7

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    iget v1, p0, Lcom/oplus/icons/OplusFastBitmapDrawable;->mTransX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/oplus/icons/OplusFastBitmapDrawable;->mTransY:I

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-super {p0, p1}, Lcom/android/launcher3/icons/FastBitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    iget-object v0, p0, Lcom/oplus/icons/OplusFastBitmapDrawable;->mSubLayerBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_42

    iget v0, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mScale:F

    const/high16 v1, 0x3f800000  # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3b

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mScale:F

    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v4

    invoke-virtual {p1, v2, v2, v3, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    invoke-virtual {p0, p1, v1}, Lcom/oplus/icons/OplusFastBitmapDrawable;->drawSubLayerInternal(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_42

    :cond_3b
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/oplus/icons/OplusFastBitmapDrawable;->drawSubLayerInternal(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    :cond_42
    :goto_42
    return-void
.end method

.method public drawInternal(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .registers 4

    iget-object v0, p0, Lcom/oplus/icons/OplusFastBitmapDrawable;->mCover:Lcom/oplus/icons/AbstractCoverDrawable;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lcom/oplus/icons/AbstractCoverDrawable;->beforeBitmapDrawing(Landroid/graphics/Canvas;)V

    :cond_7
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/icons/FastBitmapDrawable;->drawInternal(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    iget-object p0, p0, Lcom/oplus/icons/OplusFastBitmapDrawable;->mCover:Lcom/oplus/icons/AbstractCoverDrawable;

    if-eqz p0, :cond_11

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_11
    return-void
.end method

.method public drawSubLayerInternal(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .registers 5

    iget-object v0, p0, Lcom/oplus/icons/OplusFastBitmapDrawable;->mSubLayerBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_c

    const-string p0, "FastBitmapDrawable"

    const-string p1, " mSubLayerBitmap is null "

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    const/4 v1, 0x0

    iget-object p0, p0, Lcom/oplus/icons/OplusFastBitmapDrawable;->mPaintSubLayer:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, p2, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method public getBadge()Landroid/graphics/drawable/Drawable;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mBadge:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getCoverDrawable()Lcom/oplus/icons/AbstractCoverDrawable;
    .registers 1

    iget-object p0, p0, Lcom/oplus/icons/OplusFastBitmapDrawable;->mCover:Lcom/oplus/icons/AbstractCoverDrawable;

    return-object p0
.end method

.method public getPaint()Landroid/graphics/Paint;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method public isLimitType()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public onBoundsChange(Landroid/graphics/Rect;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/launcher3/icons/FastBitmapDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    invoke-direct {p0, p1}, Lcom/oplus/icons/OplusFastBitmapDrawable;->updateCoverBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public onStateChange([I)Z
    .registers 3

    iget-boolean v0, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mIsDisabled:Z

    if-eqz v0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    invoke-super {p0, p1}, Lcom/android/launcher3/icons/FastBitmapDrawable;->onStateChange([I)Z

    move-result p0

    return p0
.end method

.method public setAlpha(I)V
    .registers 3

    iget-object v0, p0, Lcom/oplus/icons/OplusFastBitmapDrawable;->mCover:Lcom/oplus/icons/AbstractCoverDrawable;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_7
    invoke-super {p0, p1}, Lcom/android/launcher3/icons/FastBitmapDrawable;->setAlpha(I)V

    return-void
.end method

.method public setCoverDrawable(Lcom/oplus/icons/AbstractCoverDrawable;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/icons/OplusFastBitmapDrawable;->mCover:Lcom/oplus/icons/AbstractCoverDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oplus/icons/OplusFastBitmapDrawable;->updateCoverBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setSubLayerAlpha(I)V
    .registers 3

    iget v0, p0, Lcom/oplus/icons/OplusFastBitmapDrawable;->mSubLayerAlpha:I

    if-eq v0, p1, :cond_e

    iput p1, p0, Lcom/oplus/icons/OplusFastBitmapDrawable;->mSubLayerAlpha:I

    iget-object v0, p0, Lcom/oplus/icons/OplusFastBitmapDrawable;->mPaintSubLayer:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_e
    return-void
.end method

.method public setSubLayerBitmap(Landroid/graphics/Bitmap;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/icons/OplusFastBitmapDrawable;->mSubLayerBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public updateTranslationX(I)V
    .registers 2

    iput p1, p0, Lcom/oplus/icons/OplusFastBitmapDrawable;->mTransX:I

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public updateTranslationY(I)V
    .registers 2

    iput p1, p0, Lcom/oplus/icons/OplusFastBitmapDrawable;->mTransY:I

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
