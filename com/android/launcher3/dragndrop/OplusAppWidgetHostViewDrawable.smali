.class public Lcom/android/launcher3/dragndrop/OplusAppWidgetHostViewDrawable;
.super Landroid/graphics/drawable/Drawable;
.source ""


# instance fields
.field private final mAppWidgetHostView:Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

.field private final mDragRect:Landroid/graphics/Rect;

.field private final mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/widget/LauncherAppWidgetHostView;Landroid/graphics/Rect;)V
    .registers 4

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/OplusAppWidgetHostViewDrawable;->mPaint:Landroid/graphics/Paint;

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/OplusAppWidgetHostViewDrawable;->mAppWidgetHostView:Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    iput-object p2, p0, Lcom/android/launcher3/dragndrop/OplusAppWidgetHostViewDrawable;->mDragRect:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/OplusAppWidgetHostViewDrawable;->mAppWidgetHostView:Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetHostView;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getAlpha()I
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/OplusAppWidgetHostViewDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/graphics/Paint;->getAlpha()I

    move-result p0

    return p0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/OplusAppWidgetHostViewDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object p0

    return-object p0
.end method

.method public getIntrinsicHeight()I
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/OplusAppWidgetHostViewDrawable;->mAppWidgetHostView:Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHostView;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/OplusAppWidgetHostViewDrawable;->mAppWidgetHostView:Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    invoke-virtual {v1}, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->getScaleToFit()F

    move-result v1

    mul-float/2addr v1, v0

    float-to-int v0, v1

    if-nez v0, :cond_1a

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/OplusAppWidgetHostViewDrawable;->mDragRect:Landroid/graphics/Rect;

    if-eqz p0, :cond_1a

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    return p0

    :cond_1a
    return v0
.end method

.method public getIntrinsicWidth()I
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/OplusAppWidgetHostViewDrawable;->mAppWidgetHostView:Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHostView;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/OplusAppWidgetHostViewDrawable;->mAppWidgetHostView:Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    invoke-virtual {v1}, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->getScaleToFit()F

    move-result v1

    mul-float/2addr v1, v0

    float-to-int v0, v1

    if-nez v0, :cond_1a

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/OplusAppWidgetHostViewDrawable;->mDragRect:Landroid/graphics/Rect;

    if-eqz p0, :cond_1a

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    return p0

    :cond_1a
    return v0
.end method

.method public getOpacity()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public setAlpha(I)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/OplusAppWidgetHostViewDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/OplusAppWidgetHostViewDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method
