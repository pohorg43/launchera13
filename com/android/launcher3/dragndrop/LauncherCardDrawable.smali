.class public Lcom/android/launcher3/dragndrop/LauncherCardDrawable;
.super Landroid/graphics/drawable/Drawable;
.source ""


# instance fields
.field private final mCardView:Lcom/android/launcher3/card/LauncherCardView;

.field private mDragCardInfo:Lcom/android/launcher3/dragndrop/DragCardInfo;

.field private mLastVisibility:I

.field private mOnlyDrawSmartView:Z

.field private final mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/card/LauncherCardView;)V
    .registers 3

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/LauncherCardDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/launcher3/dragndrop/LauncherCardDrawable;->mLastVisibility:I

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/LauncherCardDrawable;->mCardView:Lcom/android/launcher3/card/LauncherCardView;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/card/LauncherCardView;Lcom/android/launcher3/dragndrop/DragCardInfo;)V
    .registers 4

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/LauncherCardDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/launcher3/dragndrop/LauncherCardDrawable;->mLastVisibility:I

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/LauncherCardDrawable;->mCardView:Lcom/android/launcher3/card/LauncherCardView;

    iput-object p2, p0, Lcom/android/launcher3/dragndrop/LauncherCardDrawable;->mDragCardInfo:Lcom/android/launcher3/dragndrop/DragCardInfo;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/card/LauncherCardView;Ljava/lang/Boolean;)V
    .registers 4

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/LauncherCardDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/launcher3/dragndrop/LauncherCardDrawable;->mLastVisibility:I

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/LauncherCardDrawable;->mCardView:Lcom/android/launcher3/card/LauncherCardView;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/launcher3/dragndrop/LauncherCardDrawable;->mOnlyDrawSmartView:Z

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-boolean v0, p0, Lcom/android/launcher3/dragndrop/LauncherCardDrawable;->mOnlyDrawSmartView:Z

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/LauncherCardDrawable;->mCardView:Lcom/android/launcher3/card/LauncherCardView;

    invoke-interface {v0}, Lcom/oplus/card/manager/domain/ICardView;->getSmartView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_19

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/LauncherCardDrawable;->mCardView:Lcom/android/launcher3/card/LauncherCardView;

    invoke-interface {p0}, Lcom/oplus/card/manager/domain/ICardView;->getSmartView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    goto :goto_2d

    :cond_19
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/LauncherCardDrawable;->mCardView:Lcom/android/launcher3/card/LauncherCardView;

    invoke-virtual {v0}, Lcom/android/launcher3/card/LauncherCardView;->getScaleToFit()F

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/LauncherCardDrawable;->mCardView:Lcom/android/launcher3/card/LauncherCardView;

    invoke-virtual {v1}, Lcom/android/launcher3/card/LauncherCardView;->getScaleToFit()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/LauncherCardDrawable;->mCardView:Lcom/android/launcher3/card/LauncherCardView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    :goto_2d
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getAlpha()I
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/LauncherCardDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/graphics/Paint;->getAlpha()I

    move-result p0

    return p0
.end method

.method public getCardBounds()Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/LauncherCardDrawable;->mCardView:Lcom/android/launcher3/card/LauncherCardView;

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->getCardBounds()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public getClipIconRadius()[F
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/LauncherCardDrawable;->mCardView:Lcom/android/launcher3/card/LauncherCardView;

    invoke-interface {p0}, Lcom/android/launcher3/card/IAreaWidget;->getRadiusArr()[F

    move-result-object p0

    return-object p0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/LauncherCardDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object p0

    return-object p0
.end method

.method public getIntrinsicHeight()I
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/LauncherCardDrawable;->mCardView:Lcom/android/launcher3/card/LauncherCardView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/LauncherCardDrawable;->mCardView:Lcom/android/launcher3/card/LauncherCardView;

    invoke-virtual {v1}, Lcom/android/launcher3/card/LauncherCardView;->getScaleToFit()F

    move-result v1

    mul-float/2addr v1, v0

    float-to-int v0, v1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    if-eqz v1, :cond_24

    iget-boolean v2, p0, Lcom/android/launcher3/dragndrop/LauncherCardDrawable;->mOnlyDrawSmartView:Z

    if-eqz v2, :cond_24

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-eqz v2, :cond_24

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result p0

    return p0

    :cond_24
    if-nez v0, :cond_2f

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/LauncherCardDrawable;->mDragCardInfo:Lcom/android/launcher3/dragndrop/DragCardInfo;

    if-eqz v1, :cond_2f

    invoke-virtual {v1}, Lcom/android/launcher3/dragndrop/DragCardInfo;->getCardHeight()I

    move-result p0

    return p0

    :cond_2f
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/LauncherCardDrawable;->mCardView:Lcom/android/launcher3/card/LauncherCardView;

    invoke-interface {v1}, Lcom/oplus/card/manager/domain/ICardView;->isShowCardName()Z

    move-result v1

    if-eqz v1, :cond_3e

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/LauncherCardDrawable;->mCardView:Lcom/android/launcher3/card/LauncherCardView;

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->getPaddingBottom()I

    move-result p0

    goto :goto_3f

    :cond_3e
    const/4 p0, 0x0

    :goto_3f
    sub-int/2addr v0, p0

    return v0
.end method

.method public getIntrinsicWidth()I
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/LauncherCardDrawable;->mCardView:Lcom/android/launcher3/card/LauncherCardView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/LauncherCardDrawable;->mCardView:Lcom/android/launcher3/card/LauncherCardView;

    invoke-virtual {v1}, Lcom/android/launcher3/card/LauncherCardView;->getScaleToFit()F

    move-result v1

    mul-float/2addr v1, v0

    float-to-int v0, v1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    if-eqz v1, :cond_24

    iget-boolean v2, p0, Lcom/android/launcher3/dragndrop/LauncherCardDrawable;->mOnlyDrawSmartView:Z

    if-eqz v2, :cond_24

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-eqz v2, :cond_24

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result p0

    return p0

    :cond_24
    if-nez v0, :cond_2f

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/LauncherCardDrawable;->mDragCardInfo:Lcom/android/launcher3/dragndrop/DragCardInfo;

    if-eqz p0, :cond_2f

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragCardInfo;->getCardWidth()I

    move-result p0

    return p0

    :cond_2f
    return v0
.end method

.method public getOpacity()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public setAlpha(I)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/LauncherCardDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/LauncherCardDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method
