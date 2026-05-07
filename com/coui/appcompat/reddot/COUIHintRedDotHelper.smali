.class public Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:Landroid/text/TextPaint;

.field public o:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;[III)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    sget p3, Lcom/support/appcompat/R$styleable;->COUIHintRedDot_couiHintRedDotColor:I

    const/4 p4, 0x0

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->a:I

    sget p3, Lcom/support/appcompat/R$styleable;->COUIHintRedDot_couiHintRedDotTextColor:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->b:I

    sget p3, Lcom/support/appcompat/R$styleable;->COUIHintRedDot_couiHintTextSize:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->c:I

    sget p3, Lcom/support/appcompat/R$styleable;->COUIHintRedDot_couiSmallWidth:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->d:I

    sget p3, Lcom/support/appcompat/R$styleable;->COUIHintRedDot_couiMediumWidth:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->e:I

    sget p3, Lcom/support/appcompat/R$styleable;->COUIHintRedDot_couiLargeWidth:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->f:I

    sget p3, Lcom/support/appcompat/R$styleable;->COUIHintRedDot_couiHeight:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->h:I

    sget p3, Lcom/support/appcompat/R$styleable;->COUIHintRedDot_couiCornerRadius:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->i:I

    sget p3, Lcom/support/appcompat/R$styleable;->COUIHintRedDot_couiDotDiameter:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->j:I

    sget p3, Lcom/support/appcompat/R$styleable;->COUIHintRedDot_couiEllipsisDiameter:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->k:I

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/support/appcompat/R$dimen;->coui_hint_red_dot_rect_radius:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/support/appcompat/R$dimen;->coui_hint_red_dot_navi_small_width:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->g:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/support/appcompat/R$dimen;->coui_hint_red_dot_ellipsis_spacing:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->l:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/appcompat/R$dimen;->coui_dot_stroke_width:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->m:I

    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1}, Landroid/text/TextPaint;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->n:Landroid/text/TextPaint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->n:Landroid/text/TextPaint;

    iget p3, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->b:I

    invoke-virtual {p1, p3}, Landroid/text/TextPaint;->setColor(I)V

    iget-object p1, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->n:Landroid/text/TextPaint;

    iget p3, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->c:I

    int-to-float p3, p3

    invoke-virtual {p1, p3}, Landroid/text/TextPaint;->setTextSize(F)V

    const-string p1, "sans-serif-medium"

    invoke-static {p1, p4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    iget-object p3, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->n:Landroid/text/TextPaint;

    invoke-virtual {p3, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->o:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->o:Landroid/graphics/Paint;

    iget p2, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->a:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->o:Landroid/graphics/Paint;

    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Canvas;IILandroid/graphics/RectF;)V
    .registers 9

    if-gtz p2, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->n:Landroid/text/TextPaint;

    const/4 v1, 0x0

    const/16 v2, 0xff

    invoke-static {v2, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    invoke-static {v1, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    invoke-virtual {v0, p3}, Landroid/text/TextPaint;->setAlpha(I)V

    const/16 p3, 0x3e8

    const/high16 v0, 0x40000000  # 2.0f

    if-ge p2, p3, :cond_48

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->n:Landroid/text/TextPaint;

    invoke-virtual {p3}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p3

    iget-object v1, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->n:Landroid/text/TextPaint;

    invoke-virtual {v1, p2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    iget v2, p4, Landroid/graphics/RectF;->left:F

    iget v3, p4, Landroid/graphics/RectF;->right:F

    sub-float/2addr v3, v2

    int-to-float v1, v1

    invoke-static {v3, v1, v0, v2}, Landroidx/core/content/res/a;->a(FFFF)F

    move-result v1

    iget v2, p4, Landroid/graphics/RectF;->top:F

    iget p4, p4, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v2, p4

    iget p4, p3, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    int-to-float p4, p4

    sub-float/2addr v2, p4

    iget p3, p3, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    int-to-float p3, p3

    sub-float/2addr v2, p3

    div-float/2addr v2, v0

    iget-object p0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->n:Landroid/text/TextPaint;

    invoke-virtual {p1, p2, v1, v2, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_6a

    :cond_48
    iget p2, p4, Landroid/graphics/RectF;->left:F

    iget p3, p4, Landroid/graphics/RectF;->right:F

    add-float/2addr p2, p3

    div-float/2addr p2, v0

    iget p3, p4, Landroid/graphics/RectF;->top:F

    iget p4, p4, Landroid/graphics/RectF;->bottom:F

    add-float/2addr p3, p4

    div-float/2addr p3, v0

    const/4 p4, -0x1

    :goto_55
    const/4 v1, 0x1

    if-gt p4, v1, :cond_6a

    iget v1, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->l:I

    iget v2, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->k:I

    add-int/2addr v1, v2

    mul-int/2addr v1, p4

    int-to-float v1, v1

    add-float/2addr v1, p2

    int-to-float v2, v2

    div-float/2addr v2, v0

    iget-object v3, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->n:Landroid/text/TextPaint;

    invoke-virtual {p1, v1, p3, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_55

    :cond_6a
    :goto_6a
    return-void
.end method

.method public b(Landroid/graphics/Canvas;IILandroid/graphics/RectF;)V
    .registers 8

    const/4 v0, 0x1

    const/high16 v1, 0x40000000  # 2.0f

    if-eq p2, v0, :cond_6f

    const/4 v0, 0x2

    if-eq p2, v0, :cond_23

    const/4 v2, 0x3

    if-eq p2, v2, :cond_23

    const/4 p3, 0x4

    if-eq p2, p3, :cond_f

    goto :goto_7e

    :cond_f
    iget p2, p4, Landroid/graphics/RectF;->bottom:F

    iget p3, p4, Landroid/graphics/RectF;->top:F

    sub-float/2addr p2, p3

    div-float/2addr p2, v1

    iget p4, p4, Landroid/graphics/RectF;->left:F

    add-float/2addr p4, p2

    add-float/2addr p3, p2

    iget v0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->m:I

    int-to-float v0, v0

    sub-float/2addr p2, v0

    iget-object p0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->o:Landroid/graphics/Paint;

    invoke-virtual {p1, p4, p3, p2, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_7e

    :cond_23
    if-gtz p3, :cond_26

    goto :goto_7e

    :cond_26
    iget p2, p4, Landroid/graphics/RectF;->right:F

    iget v1, p4, Landroid/graphics/RectF;->left:F

    sub-float/2addr p2, v1

    iget v1, p4, Landroid/graphics/RectF;->bottom:F

    iget v2, p4, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v2

    invoke-static {p2, v1}, Ljava/lang/Math;->min(FF)F

    move-result p2

    iget v1, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->i:I

    mul-int/2addr v1, v0

    int-to-float v1, v1

    cmpg-float p2, p2, v1

    if-gez p2, :cond_57

    iget p2, p4, Landroid/graphics/RectF;->right:F

    iget v1, p4, Landroid/graphics/RectF;->left:F

    sub-float/2addr p2, v1

    iget v1, p4, Landroid/graphics/RectF;->bottom:F

    iget v2, p4, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v2

    invoke-static {p2, v1}, Ljava/lang/Math;->min(FF)F

    move-result p2

    float-to-int p2, p2

    div-int/2addr p2, v0

    invoke-static {}, Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;->a()Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;

    move-result-object v0

    int-to-float p2, p2

    iget-object v0, v0, Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;->a:Landroid/graphics/Path;

    invoke-static {v0, p4, p2}, Lcom/coui/appcompat/roundRect/COUIShapePath;->a(Landroid/graphics/Path;Landroid/graphics/RectF;F)Landroid/graphics/Path;

    goto :goto_64

    :cond_57
    invoke-static {}, Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;->a()Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;

    move-result-object p2

    iget v0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->i:I

    int-to-float v0, v0

    iget-object p2, p2, Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;->a:Landroid/graphics/Path;

    invoke-static {p2, p4, v0}, Lcom/coui/appcompat/roundRect/COUIShapePath;->a(Landroid/graphics/Path;Landroid/graphics/RectF;F)Landroid/graphics/Path;

    move-object v0, p2

    :goto_64
    iget-object p2, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->o:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    const/16 p2, 0xff

    invoke-virtual {p0, p1, p3, p2, p4}, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->a(Landroid/graphics/Canvas;IILandroid/graphics/RectF;)V

    goto :goto_7e

    :cond_6f
    iget p2, p4, Landroid/graphics/RectF;->bottom:F

    iget p3, p4, Landroid/graphics/RectF;->top:F

    sub-float/2addr p2, p3

    div-float/2addr p2, v1

    iget p4, p4, Landroid/graphics/RectF;->left:F

    add-float/2addr p4, p2

    add-float/2addr p3, p2

    iget-object p0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->o:Landroid/graphics/Paint;

    invoke-virtual {p1, p4, p3, p2, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :goto_7e
    return-void
.end method

.method public c(I)I
    .registers 4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_15

    const/4 v0, 0x2

    if-eq p1, v0, :cond_12

    const/4 v1, 0x3

    if-eq p1, v1, :cond_e

    const/4 v0, 0x4

    if-eq p1, v0, :cond_15

    const/4 p0, 0x0

    return p0

    :cond_e
    iget p0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->e:I

    div-int/2addr p0, v0

    return p0

    :cond_12
    iget p0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->h:I

    return p0

    :cond_15
    iget p0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->j:I

    return p0
.end method

.method public d(II)I
    .registers 6

    const/4 v0, 0x1

    if-eq p1, v0, :cond_33

    const/4 v0, 0x2

    const/16 v1, 0x64

    const/16 v2, 0xa

    if-eq p1, v0, :cond_1f

    const/4 v0, 0x3

    if-eq p1, v0, :cond_12

    const/4 p2, 0x4

    if-eq p1, p2, :cond_33

    const/4 p0, 0x0

    return p0

    :cond_12
    if-ge p2, v2, :cond_17

    iget p0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->g:I

    goto :goto_1e

    :cond_17
    if-ge p2, v1, :cond_1c

    iget p0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->d:I

    goto :goto_1e

    :cond_1c
    iget p0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->e:I

    :goto_1e
    return p0

    :cond_1f
    if-ge p2, v2, :cond_24

    iget p0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->d:I

    goto :goto_32

    :cond_24
    if-ge p2, v1, :cond_29

    iget p0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->e:I

    goto :goto_32

    :cond_29
    const/16 p1, 0x3e8

    if-ge p2, p1, :cond_30

    iget p0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->f:I

    goto :goto_32

    :cond_30
    iget p0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->e:I

    :goto_32
    return p0

    :cond_33
    iget p0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->j:I

    return p0
.end method
