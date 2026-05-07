.class public Lcom/android/launcher3/views/TopRoundedCornerView;
.super Lcom/android/launcher3/views/SpringRelativeLayout;
.source ""


# instance fields
.field private final mClipPath:Landroid/graphics/Path;

.field private mNavBarScrimHeight:I

.field private final mNavBarScrimPaint:Landroid/graphics/Paint;

.field private mRadii:[F

.field private final mRect:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/views/TopRoundedCornerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/views/SpringRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/views/TopRoundedCornerView;->mRect:Landroid/graphics/RectF;

    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/views/TopRoundedCornerView;->mClipPath:Landroid/graphics/Path;

    const/4 p2, 0x0

    iput p2, p0, Lcom/android/launcher3/views/TopRoundedCornerView;->mNavBarScrimHeight:I

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f070173

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    const/16 v0, 0x8

    new-array v0, v0, [F

    int-to-float p3, p3

    aput p3, v0, p2

    const/4 p2, 0x1

    aput p3, v0, p2

    const/4 p2, 0x2

    aput p3, v0, p2

    const/4 p2, 0x3

    aput p3, v0, p2

    const/4 p2, 0x4

    const/4 p3, 0x0

    aput p3, v0, p2

    const/4 p2, 0x5

    aput p3, v0, p2

    const/4 p2, 0x6

    aput p3, v0, p2

    const/4 p2, 0x7

    aput p3, v0, p2

    iput-object v0, p0, Lcom/android/launcher3/views/TopRoundedCornerView;->mRadii:[F

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/views/TopRoundedCornerView;->mNavBarScrimPaint:Landroid/graphics/Paint;

    const p0, 0x7f04005a

    invoke-static {p1, p0}, Lcom/android/launcher3/util/Themes;->getAttrColor(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {p2, p0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/android/launcher3/views/TopRoundedCornerView;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    invoke-super {p0, p1}, Lcom/android/launcher3/views/SpringRelativeLayout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public onMeasure(II)V
    .registers 5

    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    iget-object p1, p0, Lcom/android/launcher3/views/TopRoundedCornerView;->mRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, p2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p1, p0, Lcom/android/launcher3/views/TopRoundedCornerView;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    iget-object p1, p0, Lcom/android/launcher3/views/TopRoundedCornerView;->mClipPath:Landroid/graphics/Path;

    iget-object p2, p0, Lcom/android/launcher3/views/TopRoundedCornerView;->mRect:Landroid/graphics/RectF;

    iget-object p0, p0, Lcom/android/launcher3/views/TopRoundedCornerView;->mRadii:[F

    sget-object v0, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p1, p2, p0, v0}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    return-void
.end method

.method public setNavBarScrimHeight(I)V
    .registers 3

    iget v0, p0, Lcom/android/launcher3/views/TopRoundedCornerView;->mNavBarScrimHeight:I

    if-eq v0, p1, :cond_9

    iput p1, p0, Lcom/android/launcher3/views/TopRoundedCornerView;->mNavBarScrimHeight:I

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->invalidate()V

    :cond_9
    return-void
.end method
