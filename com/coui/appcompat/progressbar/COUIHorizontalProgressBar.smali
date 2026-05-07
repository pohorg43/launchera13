.class public Lcom/coui/appcompat/progressbar/COUIHorizontalProgressBar;
.super Landroid/widget/ProgressBar;
.source ""


# static fields
.field public static final i:I

.field public static final j:I

.field public static final k:[I


# instance fields
.field public a:Landroid/graphics/Paint;

.field public b:Landroid/content/res/ColorStateList;

.field public c:Landroid/content/res/ColorStateList;

.field public d:Landroid/graphics/RectF;

.field public e:Landroid/graphics/RectF;

.field public f:I

.field public g:Landroid/graphics/Path;

.field public h:Landroid/graphics/Path;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0xc

    const/4 v1, 0x0

    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/coui/appcompat/progressbar/COUIHorizontalProgressBar;->i:I

    const-string v0, "#FF2AD181"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/coui/appcompat/progressbar/COUIHorizontalProgressBar;->j:I

    const/4 v0, 0x1

    new-array v0, v0, [I

    sget v2, Lcom/support/appcompat/R$attr;->couiSeekBarProgressColorDisabled:I

    aput v2, v0, v1

    sput-object v0, Lcom/coui/appcompat/progressbar/COUIHorizontalProgressBar;->k:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/progressbar/COUIHorizontalProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    sget v0, Lcom/support/appcompat/R$attr;->couiHorizontalProgressBarStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/progressbar/COUIHorizontalProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    sget v0, Lcom/support/appcompat/R$attr;->couiHorizontalProgressBarStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/progressbar/COUIHorizontalProgressBar;->a:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/progressbar/COUIHorizontalProgressBar;->d:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/progressbar/COUIHorizontalProgressBar;->e:Landroid/graphics/RectF;

    const v0, 0x7fffffff

    iput v0, p0, Lcom/coui/appcompat/progressbar/COUIHorizontalProgressBar;->f:I

    if-eqz p2, :cond_2a

    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    :cond_2a
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/coui/appcompat/progressbar/COUIHorizontalProgressBar;->k:[I

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    sget-object v0, Lcom/support/appcompat/R$styleable;->COUIHorizontalProgressBar:[I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/support/appcompat/R$styleable;->COUIHorizontalProgressBar_couiHorizontalProgressBarBackgroundColor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lcom/coui/appcompat/progressbar/COUIHorizontalProgressBar;->b:Landroid/content/res/ColorStateList;

    sget p2, Lcom/support/appcompat/R$styleable;->COUIHorizontalProgressBar_couiHorizontalProgressBarProgressColor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lcom/coui/appcompat/progressbar/COUIHorizontalProgressBar;->c:Landroid/content/res/ColorStateList;

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    iget-object p1, p0, Lcom/coui/appcompat/progressbar/COUIHorizontalProgressBar;->a:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object p1, p0, Lcom/coui/appcompat/progressbar/COUIHorizontalProgressBar;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/coui/appcompat/progressbar/COUIHorizontalProgressBar;->a:Landroid/graphics/Paint;

    invoke-virtual {p0, p2, p1}, Landroid/widget/ProgressBar;->setLayerType(ILandroid/graphics/Paint;)V

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/progressbar/COUIHorizontalProgressBar;->g:Landroid/graphics/Path;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/progressbar/COUIHorizontalProgressBar;->h:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method public isLayoutRtl()Z
    .registers 2

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getLayoutDirection()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_8

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 9

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUIHorizontalProgressBar;->h:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUIHorizontalProgressBar;->g:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/coui/appcompat/progressbar/COUIHorizontalProgressBar;->a:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/coui/appcompat/progressbar/COUIHorizontalProgressBar;->b:Landroid/content/res/ColorStateList;

    sget v3, Lcom/coui/appcompat/progressbar/COUIHorizontalProgressBar;->i:I

    if-nez v2, :cond_21

    goto :goto_29

    :cond_21
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getDrawableState()[I

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    :goto_29
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/coui/appcompat/progressbar/COUIHorizontalProgressBar;->d:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, p0, Lcom/coui/appcompat/progressbar/COUIHorizontalProgressBar;->g:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/coui/appcompat/progressbar/COUIHorizontalProgressBar;->d:Landroid/graphics/RectF;

    iget v3, p0, Lcom/coui/appcompat/progressbar/COUIHorizontalProgressBar;->f:I

    int-to-float v3, v3

    sget-object v4, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, v3, v3, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    iget-object v1, p0, Lcom/coui/appcompat/progressbar/COUIHorizontalProgressBar;->g:Landroid/graphics/Path;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    iget-object v1, p0, Lcom/coui/appcompat/progressbar/COUIHorizontalProgressBar;->d:Landroid/graphics/RectF;

    iget v2, p0, Lcom/coui/appcompat/progressbar/COUIHorizontalProgressBar;->f:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/coui/appcompat/progressbar/COUIHorizontalProgressBar;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/coui/appcompat/progressbar/COUIHorizontalProgressBar;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_a4

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    int-to-float v3, v0

    mul-float/2addr v1, v3

    sub-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget-object v2, p0, Lcom/coui/appcompat/progressbar/COUIHorizontalProgressBar;->e:Landroid/graphics/RectF;

    int-to-float v3, v1

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getPaddingTop()I

    move-result v4

    int-to-float v4, v4

    add-int/2addr v1, v0

    int-to-float v0, v1

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v1, v5

    int-to-float v1, v1

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_ca

    :cond_a4
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f800000  # 1.0f

    sub-float/2addr v3, v1

    int-to-float v1, v0

    mul-float/2addr v3, v1

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget-object v2, p0, Lcom/coui/appcompat/progressbar/COUIHorizontalProgressBar;->e:Landroid/graphics/RectF;

    int-to-float v3, v1

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getPaddingTop()I

    move-result v4

    int-to-float v4, v4

    add-int/2addr v1, v0

    int-to-float v0, v1

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v1, v5

    int-to-float v1, v1

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    :goto_ca
    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUIHorizontalProgressBar;->a:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/coui/appcompat/progressbar/COUIHorizontalProgressBar;->c:Landroid/content/res/ColorStateList;

    sget v2, Lcom/coui/appcompat/progressbar/COUIHorizontalProgressBar;->j:I

    if-nez v1, :cond_d3

    goto :goto_db

    :cond_d3
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    :goto_db
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUIHorizontalProgressBar;->h:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/coui/appcompat/progressbar/COUIHorizontalProgressBar;->e:Landroid/graphics/RectF;

    iget v2, p0, Lcom/coui/appcompat/progressbar/COUIHorizontalProgressBar;->f:I

    int-to-float v2, v2

    const/4 v3, 0x0

    sget-object v4, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUIHorizontalProgressBar;->h:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/coui/appcompat/progressbar/COUIHorizontalProgressBar;->g:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Path$Op;->INTERSECT:Landroid/graphics/Path$Op;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUIHorizontalProgressBar;->h:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/coui/appcompat/progressbar/COUIHorizontalProgressBar;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public onSizeChanged(IIII)V
    .registers 5

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ProgressBar;->onSizeChanged(IIII)V

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getPaddingRight()I

    move-result p3

    sub-int/2addr p1, p3

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getPaddingLeft()I

    move-result p3

    sub-int/2addr p1, p3

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getPaddingTop()I

    move-result p3

    sub-int/2addr p2, p3

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getPaddingBottom()I

    move-result p3

    sub-int/2addr p2, p3

    if-lt p1, p2, :cond_1c

    div-int/lit8 p2, p2, 0x2

    goto :goto_1e

    :cond_1c
    div-int/lit8 p2, p1, 0x2

    :goto_1e
    iput p2, p0, Lcom/coui/appcompat/progressbar/COUIHorizontalProgressBar;->f:I

    return-void
.end method

.method public setProgressColor(Landroid/content/res/ColorStateList;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/progressbar/COUIHorizontalProgressBar;->c:Landroid/content/res/ColorStateList;

    return-void
.end method
