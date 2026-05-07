.class public Lcom/android/launcher3/dragndrop/SmartCardDrawable;
.super Landroid/graphics/drawable/Drawable;
.source ""


# static fields
.field private static final CLIP_RADIUS:F = 72.0f

.field private static final DARK_BACKGROUND_COLOR:I = 0x38383838

.field private static final LIGHT_BACKGROUND_COLOR:I = 0x38eeeeee

.field private static final TAG:Ljava/lang/String; = "SmartCardDrawable"


# instance fields
.field private final mCardRect:Landroid/graphics/Rect;

.field private mClipPath:Landroid/graphics/Path;

.field private final mContentRect:Landroid/graphics/RectF;

.field private mIsDarkMode:Z

.field private final mPaint:Landroid/graphics/Paint;

.field private mRadius:F

.field private final mSmartView:Lcom/android/launcher3/card/LauncherCardView;


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;Landroid/graphics/Rect;ZF)V
    .registers 6

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/android/launcher3/dragndrop/SmartCardDrawable;-><init>(Lcom/android/launcher3/card/LauncherCardView;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iput-boolean p3, p0, Lcom/android/launcher3/dragndrop/SmartCardDrawable;->mIsDarkMode:Z

    iput p4, p0, Lcom/android/launcher3/dragndrop/SmartCardDrawable;->mRadius:F

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/card/LauncherCardView;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 5

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/SmartCardDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/dragndrop/SmartCardDrawable;->mIsDarkMode:Z

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/SmartCardDrawable;->mClipPath:Landroid/graphics/Path;

    const/high16 v0, 0x42900000  # 72.0f

    iput v0, p0, Lcom/android/launcher3/dragndrop/SmartCardDrawable;->mRadius:F

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/SmartCardDrawable;->mSmartView:Lcom/android/launcher3/card/LauncherCardView;

    iput-object p2, p0, Lcom/android/launcher3/dragndrop/SmartCardDrawable;->mCardRect:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1, p3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/SmartCardDrawable;->mContentRect:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 6

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/SmartCardDrawable;->mSmartView:Lcom/android/launcher3/card/LauncherCardView;

    if-eqz v0, :cond_b

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    goto :goto_2e

    :cond_b
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/SmartCardDrawable;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/SmartCardDrawable;->mClipPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/SmartCardDrawable;->mContentRect:Landroid/graphics/RectF;

    iget v2, p0, Lcom/android/launcher3/dragndrop/SmartCardDrawable;->mRadius:F

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/SmartCardDrawable;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    iget-boolean p0, p0, Lcom/android/launcher3/dragndrop/SmartCardDrawable;->mIsDarkMode:Z

    if-eqz p0, :cond_28

    const p0, 0x38383838

    goto :goto_2b

    :cond_28
    const p0, 0x38eeeeee

    :goto_2b
    invoke-virtual {p1, p0}, Landroid/graphics/Canvas;->drawColor(I)V

    :goto_2e
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getAlpha()I
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/SmartCardDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/graphics/Paint;->getAlpha()I

    move-result p0

    return p0
.end method

.method public getCardContentRect()Landroid/graphics/RectF;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/SmartCardDrawable;->mContentRect:Landroid/graphics/RectF;

    return-object p0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/SmartCardDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object p0

    return-object p0
.end method

.method public getIntrinsicHeight()I
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/SmartCardDrawable;->mCardRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    return p0
.end method

.method public getIntrinsicWidth()I
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/SmartCardDrawable;->mCardRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    return p0
.end method

.method public getOpacity()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getSmartView()Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/SmartCardDrawable;->mSmartView:Lcom/android/launcher3/card/LauncherCardView;

    return-object p0
.end method

.method public getViewTag()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/SmartCardDrawable;->mSmartView:Lcom/android/launcher3/card/LauncherCardView;

    instance-of v1, v0, Lcom/android/launcher3/card/LauncherCardView;

    if-eqz v1, :cond_b

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object p0

    goto :goto_1f

    :cond_b
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1e

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/SmartCardDrawable;->mSmartView:Lcom/android/launcher3/card/LauncherCardView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    goto :goto_1f

    :cond_1e
    const/4 p0, 0x0

    :goto_1f
    return-object p0
.end method

.method public setAlpha(I)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/SmartCardDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/SmartCardDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method
