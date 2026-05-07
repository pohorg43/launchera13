.class public Lcom/coui/appcompat/button/COUIButton;
.super Landroidx/appcompat/widget/AppCompatButton;
.source ""


# instance fields
.field public a:Z

.field public b:I

.field public final c:Landroid/graphics/Paint;

.field public d:I

.field public e:I

.field public f:F

.field public g:F

.field public h:I

.field public i:Landroid/graphics/Rect;

.field public j:Landroid/graphics/RectF;

.field public k:Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/button/COUIButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    sget v0, Lcom/support/appcompat/R$attr;->buttonStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/button/COUIButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7

    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/coui/appcompat/button/COUIButton;->c:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/button/COUIButton;->i:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/button/COUIButton;->j:Landroid/graphics/RectF;

    if-eqz p2, :cond_24

    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    :cond_24
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setForceDarkAllowed(Z)V

    sget-object v2, Lcom/support/appcompat/R$styleable;->COUIButton:[I

    invoke-virtual {p1, p2, v2, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    sget p3, Lcom/support/appcompat/R$styleable;->COUIButton_animEnable:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/coui/appcompat/button/COUIButton;->a:Z

    sget p3, Lcom/support/appcompat/R$styleable;->COUIButton_animType:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/button/COUIButton;->b:I

    iget-boolean p3, p0, Lcom/coui/appcompat/button/COUIButton;->a:Z

    if-eqz p3, :cond_77

    sget p3, Lcom/support/appcompat/R$styleable;->COUIButton_brightness:I

    const v2, 0x3f4ccccd  # 0.8f

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    sget p3, Lcom/support/appcompat/R$styleable;->COUIButton_drawableRadius:I

    const/high16 v2, 0x40e00000  # 7.0f

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    sget p3, Lcom/support/appcompat/R$styleable;->COUIButton_disabledColor:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/button/COUIButton;->e:I

    sget p3, Lcom/support/appcompat/R$styleable;->COUIButton_drawableColor:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/button/COUIButton;->d:I

    sget p3, Lcom/support/appcompat/R$styleable;->COUIButton_strokeColor:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/button/COUIButton;->h:I

    sget p3, Lcom/support/appcompat/R$styleable;->COUIButton_closeLimitTextSize:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iget p3, p0, Lcom/coui/appcompat/button/COUIButton;->b:I

    if-ne p3, v1, :cond_77

    const/4 p3, 0x0

    invoke-virtual {p0, p3}, Landroidx/appcompat/widget/AppCompatButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_77
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/appcompat/R$dimen;->coui_bordless_btn_stroke_width:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/button/COUIButton;->f:F

    invoke-virtual {p0}, Landroid/widget/Button;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/appcompat/R$dimen;->coui_button_radius_offset:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/button/COUIButton;->g:F

    if-nez v0, :cond_98

    const/4 p1, 0x4

    invoke-static {p0, p1}, Lcom/coui/appcompat/textutil/COUIChangeTextUtil;->b(Landroid/widget/TextView;I)V

    :cond_98
    iget p1, p0, Lcom/coui/appcompat/button/COUIButton;->b:I

    if-ne p1, v1, :cond_a5

    new-instance p1, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;

    const/4 p2, 0x2

    invoke-direct {p1, p0, p2}, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;-><init>(Landroid/view/View;I)V

    iput-object p1, p0, Lcom/coui/appcompat/button/COUIButton;->k:Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;

    goto :goto_ac

    :cond_a5
    new-instance p1, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;

    invoke-direct {p1, p0, v1}, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;-><init>(Landroid/view/View;I)V

    iput-object p1, p0, Lcom/coui/appcompat/button/COUIButton;->k:Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;

    :goto_ac
    return-void
.end method


# virtual methods
.method public final a()I
    .registers 3

    invoke-virtual {p0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_9

    iget p0, p0, Lcom/coui/appcompat/button/COUIButton;->e:I

    return p0

    :cond_9
    iget-object v0, p0, Lcom/coui/appcompat/button/COUIButton;->k:Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;

    iget v0, v0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->f:F

    const/4 v1, 0x0

    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(FFFF)I

    move-result v0

    iget p0, p0, Lcom/coui/appcompat/button/COUIButton;->d:I

    invoke-static {v0, p0}, Landroidx/core/graphics/ColorUtils;->compositeColors(II)I

    move-result p0

    return p0
.end method

.method public getSolidColor()I
    .registers 3

    iget-boolean v0, p0, Lcom/coui/appcompat/button/COUIButton;->a:Z

    if-eqz v0, :cond_e

    iget v0, p0, Lcom/coui/appcompat/button/COUIButton;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    invoke-virtual {p0}, Lcom/coui/appcompat/button/COUIButton;->a()I

    move-result p0

    return p0

    :cond_e
    invoke-super {p0}, Landroid/view/View;->getSolidColor()I

    move-result p0

    return p0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 10

    iget-boolean v0, p0, Lcom/coui/appcompat/button/COUIButton;->a:Z

    if-eqz v0, :cond_ba

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/Button;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/Button;->getScrollY()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, p0, Lcom/coui/appcompat/button/COUIButton;->c:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget v1, p0, Lcom/coui/appcompat/button/COUIButton;->b:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2b

    iget-object v1, p0, Lcom/coui/appcompat/button/COUIButton;->c:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/coui/appcompat/button/COUIButton;->a()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_5f

    :cond_2b
    iget-object v1, p0, Lcom/coui/appcompat/button/COUIButton;->c:Landroid/graphics/Paint;

    iget v3, p0, Lcom/coui/appcompat/button/COUIButton;->d:I

    invoke-virtual {p0}, Landroid/widget/Button;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_36

    goto :goto_5c

    :cond_36
    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v4

    const/16 v5, 0xff

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget-object v5, p0, Lcom/coui/appcompat/button/COUIButton;->k:Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;

    iget v5, v5, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->j:F

    const/high16 v7, 0x437f0000  # 255.0f

    mul-float/2addr v5, v7

    float-to-int v5, v5

    invoke-static {v5, v4, v6, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    :goto_5c
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    :goto_5f
    iget-object v1, p0, Lcom/coui/appcompat/button/COUIButton;->i:Landroid/graphics/Rect;

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v1

    int-to-float v1, v3

    const/high16 v3, 0x40000000  # 2.0f

    div-float/2addr v1, v3

    iget v4, p0, Lcom/coui/appcompat/button/COUIButton;->g:F

    sub-float/2addr v1, v4

    invoke-static {}, Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;->a()Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;

    move-result-object v4

    iget-object v5, p0, Lcom/coui/appcompat/button/COUIButton;->i:Landroid/graphics/Rect;

    invoke-virtual {v4, v5, v1}, Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;->b(Landroid/graphics/Rect;F)Landroid/graphics/Path;

    move-result-object v1

    iget-object v4, p0, Lcom/coui/appcompat/button/COUIButton;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget v1, p0, Lcom/coui/appcompat/button/COUIButton;->b:I

    if-eq v1, v2, :cond_b7

    iget-object v1, p0, Lcom/coui/appcompat/button/COUIButton;->c:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/widget/Button;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_8b

    iget v2, p0, Lcom/coui/appcompat/button/COUIButton;->h:I

    goto :goto_8d

    :cond_8b
    iget v2, p0, Lcom/coui/appcompat/button/COUIButton;->e:I

    :goto_8d
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/coui/appcompat/button/COUIButton;->c:Landroid/graphics/Paint;

    iget v2, p0, Lcom/coui/appcompat/button/COUIButton;->f:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, p0, Lcom/coui/appcompat/button/COUIButton;->c:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-static {}, Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;->a()Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/coui/appcompat/button/COUIButton;->j:Landroid/graphics/RectF;

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    iget v5, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    div-float/2addr v4, v3

    iget v3, p0, Lcom/coui/appcompat/button/COUIButton;->f:F

    sub-float/2addr v4, v3

    iget-object v1, v1, Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;->a:Landroid/graphics/Path;

    invoke-static {v1, v2, v4}, Lcom/coui/appcompat/roundRect/COUIShapePath;->a(Landroid/graphics/Path;Landroid/graphics/RectF;F)Landroid/graphics/Path;

    iget-object v2, p0, Lcom/coui/appcompat/button/COUIButton;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_b7
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_ba
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onLayout(ZIIII)V
    .registers 6

    invoke-super/range {p0 .. p5}, Landroidx/appcompat/widget/AppCompatButton;->onLayout(ZIIII)V

    iget-object p1, p0, Lcom/coui/appcompat/button/COUIButton;->i:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/Button;->getWidth()I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->right:I

    iget-object p1, p0, Lcom/coui/appcompat/button/COUIButton;->i:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/Button;->getHeight()I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    iget-object p1, p0, Lcom/coui/appcompat/button/COUIButton;->j:Landroid/graphics/RectF;

    iget-object p2, p0, Lcom/coui/appcompat/button/COUIButton;->i:Landroid/graphics/Rect;

    iget p3, p2, Landroid/graphics/Rect;->top:I

    int-to-float p3, p3

    iget p0, p0, Lcom/coui/appcompat/button/COUIButton;->f:F

    const/high16 p4, 0x40000000  # 2.0f

    div-float p5, p0, p4

    add-float/2addr p5, p3

    iput p5, p1, Landroid/graphics/RectF;->top:F

    iget p3, p2, Landroid/graphics/Rect;->left:I

    int-to-float p3, p3

    div-float p5, p0, p4

    add-float/2addr p5, p3

    iput p5, p1, Landroid/graphics/RectF;->left:F

    iget p3, p2, Landroid/graphics/Rect;->right:I

    int-to-float p3, p3

    div-float p5, p0, p4

    sub-float/2addr p3, p5

    iput p3, p1, Landroid/graphics/RectF;->right:F

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float p2, p2

    div-float/2addr p0, p4

    sub-float/2addr p2, p0

    iput p2, p1, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    invoke-virtual {p0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_23

    iget-boolean v0, p0, Lcom/coui/appcompat/button/COUIButton;->a:Z

    if-eqz v0, :cond_23

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1e

    if-eq v0, v1, :cond_17

    const/4 v1, 0x3

    if-eq v0, v1, :cond_17

    goto :goto_23

    :cond_17
    iget-object v0, p0, Lcom/coui/appcompat/button/COUIButton;->k:Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->b(Z)V

    goto :goto_23

    :cond_1e
    iget-object v0, p0, Lcom/coui/appcompat/button/COUIButton;->k:Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->b(Z)V

    :cond_23
    :goto_23
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public setAnimEnable(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/coui/appcompat/button/COUIButton;->a:Z

    return-void
.end method

.method public setAnimType(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/button/COUIButton;->b:I

    return-void
.end method

.method public setDisabledColor(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/button/COUIButton;->e:I

    return-void
.end method

.method public setDrawableColor(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/button/COUIButton;->d:I

    return-void
.end method

.method public setDrawableRadius(I)V
    .registers 2

    return-void
.end method

.method public setMaxBrightness(I)V
    .registers 2

    return-void
.end method
