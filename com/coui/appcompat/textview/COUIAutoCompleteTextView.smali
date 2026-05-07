.class public Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;
.super Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;
.source ""


# instance fields
.field public E:Z

.field public F:Z

.field public G:Landroid/graphics/Paint;

.field public H:Landroid/graphics/Paint;

.field public I:I

.field public J:I

.field public K:I

.field public L:I

.field public M:I

.field public final a:Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;

.field public b:Landroid/view/animation/Interpolator;

.field public c:Landroid/view/animation/Interpolator;

.field public d:Z

.field public e:Ljava/lang/CharSequence;

.field public f:Landroid/graphics/drawable/GradientDrawable;

.field public g:I

.field public h:I

.field public i:F

.field public j:F

.field public k:F

.field public l:F

.field public m:I

.field public n:I

.field public o:I

.field public p:Landroid/graphics/RectF;

.field public q:Landroid/content/res/ColorStateList;

.field public r:Landroid/content/res/ColorStateList;

.field public s:I

.field public t:I

.field public u:I

.field public v:Z

.field public w:Z

.field public x:Landroid/animation/ValueAnimator;

.field public y:Landroid/animation/ValueAnimator;

.field public z:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const v0, 0x101006b

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 11

    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->a:Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;

    const/4 v1, 0x3

    iput v1, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->m:I

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->p:Landroid/graphics/RectF;

    new-instance v1, Lcom/coui/appcompat/animation/COUILinearInterpolator;

    invoke-direct {v1}, Lcom/coui/appcompat/animation/COUILinearInterpolator;-><init>()V

    iput-object v1, v0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->D:Landroid/view/animation/Interpolator;

    invoke-virtual {v0}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->k()V

    new-instance v1, Lcom/coui/appcompat/animation/COUILinearInterpolator;

    invoke-direct {v1}, Lcom/coui/appcompat/animation/COUILinearInterpolator;-><init>()V

    iput-object v1, v0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->C:Landroid/view/animation/Interpolator;

    invoke-virtual {v0}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->k()V

    const v1, 0x800033

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->o(I)V

    new-instance v1, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;

    invoke-direct {v1}, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;-><init>()V

    iput-object v1, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->b:Landroid/view/animation/Interpolator;

    new-instance v1, Lcom/coui/appcompat/animation/COUIInEaseInterpolator;

    invoke-direct {v1}, Lcom/coui/appcompat/animation/COUIInEaseInterpolator;-><init>()V

    iput-object v1, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->c:Landroid/view/animation/Interpolator;

    sget-object v1, Lcom/support/appcompat/R$styleable;->COUIEditText:[I

    sget v2, Lcom/support/appcompat/R$style;->Widget_COUI_EditText_HintAnim_Line:I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    sget p3, Lcom/support/appcompat/R$styleable;->COUIEditText_couiHintEnabled:I

    const/4 v1, 0x0

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->d:Z

    if-nez p3, :cond_54

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_184

    :cond_54
    const/4 p3, 0x0

    invoke-virtual {p0, p3}, Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    sget v2, Lcom/support/appcompat/R$styleable;->COUIEditText_android_hint:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->setTopHint(Ljava/lang/CharSequence;)V

    sget v2, Lcom/support/appcompat/R$styleable;->COUIEditText_couiHintAnimationEnabled:I

    const/4 v3, 0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->w:Z

    sget v2, Lcom/support/appcompat/R$styleable;->COUIEditText_rectModePaddingTop:I

    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->K:I

    sget v2, Lcom/support/appcompat/R$styleable;->COUIEditText_cornerRadius:I

    const/4 v4, 0x0

    invoke-virtual {p2, v2, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->i:F

    iput v2, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->j:F

    iput v2, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->k:F

    iput v2, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->l:F

    sget v2, Lcom/support/appcompat/R$styleable;->COUIEditText_couiStrokeColor:I

    const v4, -0xff0100

    invoke-virtual {p2, v2, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->t:I

    sget v4, Lcom/support/appcompat/R$styleable;->COUIEditText_couiStrokeWidth:I

    invoke-virtual {p2, v4, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->m:I

    iput v4, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->n:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/support/appcompat/R$dimen;->coui_textinput_label_cutout_padding:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->g:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/support/appcompat/R$dimen;->coui_textinput_line_padding_top:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->L:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/support/appcompat/R$dimen;->coui_textinput_line_padding_middle:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->M:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/support/appcompat/R$dimen;->coui_textinput_rect_padding_middle:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    sget v4, Lcom/support/appcompat/R$styleable;->COUIEditText_couiBackgroundMode:I

    invoke-virtual {p2, v4, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->setBoxBackgroundMode(I)V

    sget v5, Lcom/support/appcompat/R$styleable;->COUIEditText_android_textColorHint:I

    invoke-virtual {p2, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_dc

    invoke-virtual {p2, v5}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    iput-object v5, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->r:Landroid/content/res/ColorStateList;

    iput-object v5, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->q:Landroid/content/res/ColorStateList;

    :cond_dc
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/support/appcompat/R$color;->coui_textinput_stroke_color_default:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    iput v5, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->s:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v5, Lcom/support/appcompat/R$color;->coui_textinput_stroke_color_disabled:I

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->u:I

    sget p1, Lcom/support/appcompat/R$styleable;->COUIEditText_collapsedTextSize:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, v0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->n:Landroid/content/res/ColorStateList;

    int-to-float p1, p1

    iput p1, v0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->l:F

    invoke-virtual {v0}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->k()V

    iget-object p1, v0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->n:Landroid/content/res/ColorStateList;

    iput-object p1, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->r:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v1, v1}, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->f(ZZ)V

    const/4 p1, 0x2

    if-ne v4, p1, :cond_118

    const-string p1, "sans-serif-medium"

    invoke-static {p1, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    invoke-virtual {v0}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->x()V

    :cond_118
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->H:Landroid/graphics/Paint;

    iget p2, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->s:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->H:Landroid/graphics/Paint;

    iget p2, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->m:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->G:Landroid/graphics/Paint;

    iget p2, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->t:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->G:Landroid/graphics/Paint;

    iget p2, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->m:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p0}, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->d()V

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getTextSize()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->s(F)V

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getGravity()I

    move-result p1

    and-int/lit8 p2, p1, -0x71

    or-int/lit8 p2, p2, 0x30

    invoke-virtual {v0, p2}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->o(I)V

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->r(I)V

    iget-object p1, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->q:Landroid/content/res/ColorStateList;

    if-nez p1, :cond_165

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getHintTextColors()Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->q:Landroid/content/res/ColorStateList;

    :cond_165
    iget-boolean p1, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->d:Z

    if-eqz p1, :cond_17e

    invoke-virtual {p0, p3}, Landroid/widget/AutoCompleteTextView;->setHint(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->e:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_17e

    invoke-virtual {p0}, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->getHint()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->setTopHint(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p3}, Landroid/widget/AutoCompleteTextView;->setHint(Ljava/lang/CharSequence;)V

    :cond_17e
    invoke-virtual {p0, v1, v3}, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->f(ZZ)V

    invoke-virtual {p0}, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->g()V

    :goto_184
    return-void
.end method

.method private getBoundsTop()I
    .registers 3

    iget v0, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->h:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_15

    const/4 v1, 0x2

    if-eq v0, v1, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    iget-object p0, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->a:Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;

    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->f()F

    move-result p0

    const/high16 v0, 0x40000000  # 2.0f

    div-float/2addr p0, v0

    float-to-int p0, p0

    return p0

    :cond_15
    iget p0, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->L:I

    return p0
.end method

.method private getBoxBackground()Landroid/graphics/drawable/Drawable;
    .registers 3

    iget v0, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->h:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_b

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    return-object p0

    :cond_b
    :goto_b
    iget-object p0, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->f:Landroid/graphics/drawable/GradientDrawable;

    return-object p0
.end method

.method private getCornerRadiiAsArray()[F
    .registers 4

    const/16 v0, 0x8

    new-array v0, v0, [F

    iget v1, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->j:F

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v2, 0x1

    aput v1, v0, v2

    iget v1, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->i:F

    const/4 v2, 0x2

    aput v1, v0, v2

    const/4 v2, 0x3

    aput v1, v0, v2

    iget v1, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->l:F

    const/4 v2, 0x4

    aput v1, v0, v2

    const/4 v2, 0x5

    aput v1, v0, v2

    iget p0, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->k:F

    const/4 v1, 0x6

    aput p0, v0, v1

    const/4 v1, 0x7

    aput p0, v0, v1

    return-object v0
.end method

.method private getModePaddingTop()I
    .registers 3

    iget v0, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->h:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_18

    const/4 v1, 0x2

    if-eq v0, v1, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    iget v0, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->K:I

    iget-object p0, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->a:Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;

    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->f()F

    move-result p0

    const/high16 v1, 0x40000000  # 2.0f

    div-float/2addr p0, v1

    float-to-int p0, p0

    :goto_16
    add-int/2addr v0, p0

    return v0

    :cond_18
    iget v0, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->L:I

    iget-object v1, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->a:Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;

    invoke-virtual {v1}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->h()F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    iget p0, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->M:I

    goto :goto_16
.end method

.method private setHintInternal(Ljava/lang/CharSequence;)V
    .registers 3

    iget-object v0, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->e:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    iput-object p1, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->e:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->a:Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->w(Ljava/lang/CharSequence;)V

    iget-boolean p1, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->v:Z

    if-nez p1, :cond_16

    invoke-virtual {p0}, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->e()V

    :cond_16
    return-void
.end method


# virtual methods
.method public final a(F)V
    .registers 6

    iget-object v0, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->a:Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;

    iget v0, v0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->h:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->x:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_2a

    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->x:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->b:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->x:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->x:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView$3;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView$3;-><init>(Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_2a
    iget-object v0, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->x:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->a:Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;

    iget v3, v3, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->h:F

    aput v3, v1, v2

    const/4 v2, 0x1

    aput p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object p0, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->x:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public final b()V
    .registers 4

    iget-object v0, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->f:Landroid/graphics/drawable/GradientDrawable;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget v0, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->h:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_25

    const/4 v1, 0x2

    if-eq v0, v1, :cond_e

    goto :goto_28

    :cond_e
    iget v0, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->t:I

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->r:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getDrawableState()[I

    move-result-object v1

    iget-object v2, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->r:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->t:I

    goto :goto_28

    :cond_25
    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->m:I

    :cond_28
    :goto_28
    iget v0, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->m:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_36

    iget v1, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->o:I

    if-eqz v1, :cond_36

    iget-object v2, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->f:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    :cond_36
    iget-object v0, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->f:Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p0}, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->getCornerRadiiAsArray()[F

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->invalidate()V

    return-void
.end method

.method public final c()Z
    .registers 2

    iget-boolean v0, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->d:Z

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->e:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    iget-object p0, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->f:Landroid/graphics/drawable/GradientDrawable;

    instance-of p0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable;

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method

.method public final d()V
    .registers 3

    iget v0, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->h:I

    if-nez v0, :cond_8

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->f:Landroid/graphics/drawable/GradientDrawable;

    goto :goto_28

    :cond_8
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1d

    iget-boolean v0, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->d:Z

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->f:Landroid/graphics/drawable/GradientDrawable;

    instance-of v0, v0, Lcom/coui/appcompat/edittext/COUICutoutDrawable;

    if-nez v0, :cond_1d

    new-instance v0, Lcom/coui/appcompat/edittext/COUICutoutDrawable;

    invoke-direct {v0}, Lcom/coui/appcompat/edittext/COUICutoutDrawable;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->f:Landroid/graphics/drawable/GradientDrawable;

    goto :goto_28

    :cond_1d
    iget-object v0, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->f:Landroid/graphics/drawable/GradientDrawable;

    if-nez v0, :cond_28

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->f:Landroid/graphics/drawable/GradientDrawable;

    :cond_28
    :goto_28
    invoke-virtual {p0}, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->h()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 13

    iget-boolean v0, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->d:Z

    if-eqz v0, :cond_68

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getScrollY()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->a:Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;

    invoke-virtual {v1, p1}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->d(Landroid/graphics/Canvas;)V

    iget-object v1, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->f:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v1, :cond_31

    iget v1, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->h:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_31

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getScrollX()I

    move-result v1

    if-eqz v1, :cond_2c

    invoke-virtual {p0}, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->h()V

    :cond_2c
    iget-object v1, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->f:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_31
    iget v1, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->h:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_65

    iget v1, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->n:I

    int-to-double v1, v1

    const-wide/high16 v3, 0x4000000000000000L  # 2.0

    div-double/2addr v1, v3

    const-wide/high16 v3, 0x3fe0000000000000L  # 0.5

    add-double/2addr v1, v3

    double-to-int v1, v1

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getHeight()I

    move-result v2

    sub-int/2addr v2, v1

    const/4 v4, 0x0

    int-to-float v9, v2

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getWidth()I

    move-result v1

    int-to-float v6, v1

    iget-object v8, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->H:Landroid/graphics/Paint;

    move-object v3, p1

    move v5, v9

    move v7, v9

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->G:Landroid/graphics/Paint;

    iget v2, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->I:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v6, 0x0

    iget v1, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->J:I

    int-to-float v8, v1

    iget-object v10, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->G:Landroid/graphics/Paint;

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_65
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_68
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public drawableStateChanged()V
    .registers 9

    iget-boolean v0, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->d:Z

    if-nez v0, :cond_8

    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;->drawableStateChanged()V

    return-void

    :cond_8
    iget-boolean v0, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->E:Z

    if-eqz v0, :cond_d

    return-void

    :cond_d
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->E:Z

    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;->drawableStateChanged()V

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getDrawableState()[I

    move-result-object v1

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_26

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_26

    move v2, v0

    goto :goto_27

    :cond_26
    move v2, v3

    :goto_27
    invoke-virtual {p0, v2, v3}, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->f(ZZ)V

    iget v2, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->h:I

    if-eq v2, v0, :cond_30

    goto/16 :goto_b4

    :cond_30
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_b2

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->hasFocus()Z

    move-result v2

    const-wide/16 v4, 0xfa

    const/4 v6, 0x2

    if-eqz v2, :cond_7d

    iget-boolean v2, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->F:Z

    if-nez v2, :cond_b4

    iget-object v2, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->y:Landroid/animation/ValueAnimator;

    if-nez v2, :cond_62

    new-instance v2, Landroid/animation/ValueAnimator;

    invoke-direct {v2}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v2, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->y:Landroid/animation/ValueAnimator;

    iget-object v7, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->c:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v2, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->y:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->y:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView$1;

    invoke-direct {v4, p0}, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView$1;-><init>(Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;)V

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_62
    const/16 v2, 0xff

    iput v2, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->I:I

    iget-object v2, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->y:Landroid/animation/ValueAnimator;

    new-array v4, v6, [I

    aput v3, v4, v3

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getWidth()I

    move-result v5

    aput v5, v4, v0

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    iget-object v2, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->y:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    iput-boolean v0, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->F:Z

    goto :goto_b4

    :cond_7d
    iget-boolean v0, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->F:Z

    if-eqz v0, :cond_b4

    iget-object v0, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->z:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_a0

    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->z:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->c:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->z:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->z:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView$2;

    invoke-direct {v2, p0}, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView$2;-><init>(Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_a0
    iget-object v0, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->z:Landroid/animation/ValueAnimator;

    new-array v2, v6, [I

    fill-array-data v2, :array_ce

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    iget-object v0, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->z:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iput-boolean v3, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->F:Z

    goto :goto_b4

    :cond_b2
    iput v3, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->J:I

    :cond_b4
    :goto_b4
    invoke-virtual {p0}, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->h()V

    invoke-virtual {p0}, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->i()V

    iget-object v0, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->a:Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;

    if-eqz v0, :cond_c4

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->v([I)Z

    move-result v0

    or-int/2addr v0, v3

    goto :goto_c5

    :cond_c4
    move v0, v3

    :goto_c5
    if-eqz v0, :cond_ca

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->invalidate()V

    :cond_ca
    iput-boolean v3, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->E:Z

    return-void

    nop

    :array_ce
    .array-data 4
        0xff
        0x0
    .end array-data
.end method

.method public final e()V
    .registers 4

    invoke-virtual {p0}, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->c()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->p:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->a:Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;

    invoke-virtual {v1, v0}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->e(Landroid/graphics/RectF;)V

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->g:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    iget v1, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    iget v1, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    iget-object p0, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->f:Landroid/graphics/drawable/GradientDrawable;

    check-cast p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/edittext/COUICutoutDrawable;->b(Landroid/graphics/RectF;)V

    return-void
.end method

.method public final f(ZZ)V
    .registers 8

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->isEnabled()Z

    move-result v0

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    iget-object v3, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->q:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_1e

    iget-object v4, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->a:Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;

    invoke-virtual {v4, v3}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->n(Landroid/content/res/ColorStateList;)V

    iget-object v3, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->a:Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;

    iget-object v4, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->q:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, v4}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->q(Landroid/content/res/ColorStateList;)V

    :cond_1e
    if-nez v0, :cond_37

    iget-object v0, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->a:Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;

    iget v3, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->u:I

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->n(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->a:Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;

    iget v3, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->u:I

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->q(Landroid/content/res/ColorStateList;)V

    goto :goto_46

    :cond_37
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->r:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_46

    iget-object v3, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->a:Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;

    invoke-virtual {v3, v0}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->n(Landroid/content/res/ColorStateList;)V

    :cond_46
    :goto_46
    if-nez v1, :cond_b9

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_55

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_55

    goto :goto_b9

    :cond_55
    if-nez p2, :cond_5b

    iget-boolean p2, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->v:Z

    if-nez p2, :cond_eb

    :cond_5b
    iget-object p2, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->f:Landroid/graphics/drawable/GradientDrawable;

    if-eqz p2, :cond_77

    const-string p2, "mBoxBackground: "

    invoke-static {p2}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->f:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/GradientDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "AutoCompleteTextView"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_77
    iget-object p2, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->x:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_86

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p2

    if-eqz p2, :cond_86

    iget-object p2, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->x:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_86
    const/4 p2, 0x0

    if-eqz p1, :cond_91

    iget-boolean p1, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->w:Z

    if-eqz p1, :cond_91

    invoke-virtual {p0, p2}, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->a(F)V

    goto :goto_96

    :cond_91
    iget-object p1, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->a:Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;

    invoke-virtual {p1, p2}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->t(F)V

    :goto_96
    invoke-virtual {p0}, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->c()Z

    move-result p1

    if-eqz p1, :cond_b6

    iget-object p1, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->f:Landroid/graphics/drawable/GradientDrawable;

    check-cast p1, Lcom/coui/appcompat/edittext/COUICutoutDrawable;

    iget-object p1, p1, Lcom/coui/appcompat/edittext/COUICutoutDrawable;->b:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v2

    if-eqz p1, :cond_b6

    invoke-virtual {p0}, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->c()Z

    move-result p1

    if-eqz p1, :cond_b6

    iget-object p1, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->f:Landroid/graphics/drawable/GradientDrawable;

    check-cast p1, Lcom/coui/appcompat/edittext/COUICutoutDrawable;

    invoke-virtual {p1, p2, p2, p2, p2}, Lcom/coui/appcompat/edittext/COUICutoutDrawable;->a(FFFF)V

    :cond_b6
    iput-boolean v2, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->v:Z

    goto :goto_eb

    :cond_b9
    :goto_b9
    if-nez p2, :cond_bf

    iget-boolean p2, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->v:Z

    if-eqz p2, :cond_eb

    :cond_bf
    iget-object p2, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->x:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_ce

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p2

    if-eqz p2, :cond_ce

    iget-object p2, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->x:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_ce
    const/high16 p2, 0x3f800000  # 1.0f

    if-eqz p1, :cond_da

    iget-boolean p1, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->w:Z

    if-eqz p1, :cond_da

    invoke-virtual {p0, p2}, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->a(F)V

    goto :goto_df

    :cond_da
    iget-object p1, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->a:Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;

    invoke-virtual {p1, p2}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->t(F)V

    :goto_df
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->v:Z

    invoke-virtual {p0}, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->c()Z

    move-result p1

    if-eqz p1, :cond_eb

    invoke-virtual {p0}, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->e()V

    :cond_eb
    :goto_eb
    return-void
.end method

.method public final g()V
    .registers 6

    invoke-direct {p0}, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->getModePaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getLayoutDirection()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_e

    move v1, v3

    goto :goto_f

    :cond_e
    move v1, v2

    :goto_f
    if-eqz v1, :cond_16

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getPaddingRight()I

    move-result v1

    goto :goto_1a

    :cond_16
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getPaddingLeft()I

    move-result v1

    :goto_1a
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getLayoutDirection()I

    move-result v4

    if-ne v4, v3, :cond_21

    move v2, v3

    :cond_21
    if-eqz v2, :cond_28

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getPaddingLeft()I

    move-result v2

    goto :goto_2c

    :cond_28
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getPaddingRight()I

    move-result v2

    :goto_2c
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getPaddingBottom()I

    move-result v3

    invoke-static {p0, v1, v0, v2, v3}, Landroidx/core/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    return-void
.end method

.method public getBoxStrokeColor()I
    .registers 1

    iget p0, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->t:I

    return p0
.end method

.method public getHint()Ljava/lang/CharSequence;
    .registers 2

    iget-boolean v0, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->d:Z

    if-eqz v0, :cond_7

    iget-object p0, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->e:Ljava/lang/CharSequence;

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return-object p0
.end method

.method public final h()V
    .registers 6

    iget v0, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->h:I

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->f:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_24

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getRight()I

    move-result v0

    if-nez v0, :cond_f

    goto :goto_24

    :cond_f
    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->getBoundsTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->f:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    invoke-virtual {p0}, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->b()V

    :cond_24
    :goto_24
    return-void
.end method

.method public final i()V
    .registers 3

    iget-object v0, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->f:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_29

    iget v0, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->h:I

    if-nez v0, :cond_9

    goto :goto_29

    :cond_9
    const/4 v1, 0x2

    if-ne v0, v1, :cond_29

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_17

    iget v0, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->u:I

    iput v0, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->o:I

    goto :goto_26

    :cond_17
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_22

    iget v0, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->t:I

    iput v0, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->o:I

    goto :goto_26

    :cond_22
    iget v0, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->s:I

    iput v0, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->o:I

    :goto_26
    invoke-virtual {p0}, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->b()V

    :cond_29
    :goto_29
    return-void
.end method

.method public onLayout(ZIIII)V
    .registers 8

    invoke-super/range {p0 .. p5}, Landroid/widget/TextView;->onLayout(ZIIII)V

    iget-boolean p1, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->d:Z

    if-eqz p1, :cond_7d

    iget-object p1, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->f:Landroid/graphics/drawable/GradientDrawable;

    if-eqz p1, :cond_e

    invoke-virtual {p0}, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->h()V

    :cond_e
    invoke-virtual {p0}, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->g()V

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getCompoundPaddingLeft()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getCompoundPaddingRight()I

    move-result p3

    sub-int/2addr p2, p3

    iget p3, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->h:I

    const/4 p4, 0x1

    if-eq p3, p4, :cond_41

    const/4 p4, 0x2

    if-eq p3, p4, :cond_2b

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getPaddingTop()I

    move-result p3

    goto :goto_4b

    :cond_2b
    invoke-direct {p0}, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->getBoxBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p3

    iget p3, p3, Landroid/graphics/Rect;->top:I

    iget-object p4, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->a:Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;

    invoke-virtual {p4}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->f()F

    move-result p4

    const/high16 p5, 0x40000000  # 2.0f

    div-float/2addr p4, p5

    float-to-int p4, p4

    sub-int/2addr p3, p4

    goto :goto_4b

    :cond_41
    invoke-direct {p0}, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->getBoxBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p3

    iget p3, p3, Landroid/graphics/Rect;->top:I

    :goto_4b
    iget-object p4, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->a:Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getCompoundPaddingTop()I

    move-result p5

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getCompoundPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p4, p1, p5, p2, v0}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->p(IIII)V

    iget-object p4, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->a:Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getHeight()I

    move-result p5

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getCompoundPaddingBottom()I

    move-result v0

    sub-int/2addr p5, v0

    invoke-virtual {p4, p1, p3, p2, p5}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->m(IIII)V

    iget-object p1, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->a:Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;

    invoke-virtual {p1}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->k()V

    invoke-virtual {p0}, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->c()Z

    move-result p1

    if-eqz p1, :cond_7d

    iget-boolean p1, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->v:Z

    if-nez p1, :cond_7d

    invoke-virtual {p0}, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->e()V

    :cond_7d
    return-void
.end method

.method public onMeasure(II)V
    .registers 3

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    return-void
.end method

.method public setBoxBackgroundMode(I)V
    .registers 3

    iget v0, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->h:I

    if-ne p1, v0, :cond_5

    return-void

    :cond_5
    iput p1, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->h:I

    invoke-virtual {p0}, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->d()V

    return-void
.end method

.method public setBoxStrokeColor(I)V
    .registers 3

    iget v0, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->t:I

    if-eq v0, p1, :cond_9

    iput p1, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->t:I

    invoke-virtual {p0}, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->i()V

    :cond_9
    return-void
.end method

.method public setHintEnabled(Z)V
    .registers 4

    iget-boolean v0, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->d:Z

    if-eq p1, v0, :cond_3c

    iput-boolean p1, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->d:Z

    const/4 v0, 0x0

    if-nez p1, :cond_24

    iget-object p1, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->e:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_20

    invoke-virtual {p0}, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->getHint()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_20

    iget-object p1, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->e:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Landroid/widget/AutoCompleteTextView;->setHint(Ljava/lang/CharSequence;)V

    :cond_20
    invoke-direct {p0, v0}, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->setHintInternal(Ljava/lang/CharSequence;)V

    goto :goto_3c

    :cond_24
    invoke-virtual {p0}, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->getHint()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3c

    iget-object v1, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->e:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->setTopHint(Ljava/lang/CharSequence;)V

    :cond_39
    invoke-virtual {p0, v0}, Landroid/widget/AutoCompleteTextView;->setHint(Ljava/lang/CharSequence;)V

    :cond_3c
    :goto_3c
    return-void
.end method

.method public setTopHint(Ljava/lang/CharSequence;)V
    .registers 3

    iget-boolean v0, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->d:Z

    if-eqz v0, :cond_7

    invoke-direct {p0, p1}, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->setHintInternal(Ljava/lang/CharSequence;)V

    :cond_7
    return-void
.end method

.method public setmHintAnimationEnabled(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/coui/appcompat/textview/COUIAutoCompleteTextView;->w:Z

    return-void
.end method
