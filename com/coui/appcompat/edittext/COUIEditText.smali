.class public Lcom/coui/appcompat/edittext/COUIEditText;
.super Landroidx/appcompat/widget/AppCompatEditText;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/edittext/COUIEditText$AccessibilityTouchHelper;,
        Lcom/coui/appcompat/edittext/COUIEditText$COUITextWatcher;,
        Lcom/coui/appcompat/edittext/COUIEditText$OnErrorStateChangedListener;,
        Lcom/coui/appcompat/edittext/COUIEditText$OnPasswordDeletedListener;,
        Lcom/coui/appcompat/edittext/COUIEditText$OnTextDeletedListener;,
        Lcom/coui/appcompat/edittext/COUIEditText$COUISavedState;
    }
.end annotation


# static fields
.field public static final synthetic s0:I


# instance fields
.field public E:I

.field public F:I

.field public G:Landroid/graphics/RectF;

.field public H:Landroid/content/res/ColorStateList;

.field public I:Landroid/content/res/ColorStateList;

.field public J:I

.field public K:I

.field public L:I

.field public M:I

.field public N:Z

.field public O:Z

.field public P:Landroid/animation/ValueAnimator;

.field public Q:Landroid/animation/ValueAnimator;

.field public R:Landroid/animation/ValueAnimator;

.field public S:Z

.field public T:Z

.field public U:Z

.field public V:Landroid/graphics/Paint;

.field public W:Landroid/graphics/Paint;

.field public final a:Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;

.field public a0:Landroid/graphics/Paint;

.field public b:Landroid/view/animation/Interpolator;

.field public b0:Landroid/graphics/Paint;

.field public c:Landroid/view/animation/Interpolator;

.field public c0:Landroid/text/TextPaint;

.field public d:I

.field public d0:I

.field public e:Landroid/graphics/drawable/Drawable;

.field public e0:F

.field public f:Landroid/graphics/drawable/Drawable;

.field public f0:I

.field public g:Z

.field public g0:I

.field public h:Z

.field public h0:I

.field public i:Z

.field public i0:I

.field public j:Lcom/coui/appcompat/edittext/COUIEditText$OnTextDeletedListener;

.field public j0:I

.field public k:Lcom/coui/appcompat/edittext/COUIEditText$OnPasswordDeletedListener;

.field public k0:I

.field public l:Landroid/content/Context;

.field public l0:Z

.field public m:Lcom/coui/appcompat/edittext/COUIEditText$AccessibilityTouchHelper;

.field public m0:Z

.field public n:Ljava/lang/String;

.field public n0:Ljava/lang/String;

.field public o:Lcom/coui/appcompat/edittext/COUIEditText$COUITextWatcher;

.field public o0:I

.field public p:Z

.field public p0:Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;

.field public q:Ljava/lang/CharSequence;

.field public q0:Ljava/lang/Runnable;

.field public r:Landroid/graphics/drawable/GradientDrawable;

.field public r0:Ljava/lang/Runnable;

.field public s:I

.field public t:I

.field public u:F

.field public v:F

.field public w:F

.field public x:F

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/edittext/COUIEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const v0, 0x101006e

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/edittext/COUIEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 14
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->a:Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->g:Z

    iput-boolean v1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->h:Z

    iput-boolean v1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->i:Z

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/coui/appcompat/edittext/COUIEditText;->j:Lcom/coui/appcompat/edittext/COUIEditText$OnTextDeletedListener;

    iput-object v2, p0, Lcom/coui/appcompat/edittext/COUIEditText;->k:Lcom/coui/appcompat/edittext/COUIEditText$OnPasswordDeletedListener;

    iput-object v2, p0, Lcom/coui/appcompat/edittext/COUIEditText;->n:Ljava/lang/String;

    iput-object v2, p0, Lcom/coui/appcompat/edittext/COUIEditText;->o:Lcom/coui/appcompat/edittext/COUIEditText$COUITextWatcher;

    const/4 v3, 0x2

    iput v3, p0, Lcom/coui/appcompat/edittext/COUIEditText;->y:I

    const/4 v4, 0x4

    iput v4, p0, Lcom/coui/appcompat/edittext/COUIEditText;->z:I

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, p0, Lcom/coui/appcompat/edittext/COUIEditText;->G:Landroid/graphics/RectF;

    iput-boolean v1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->l0:Z

    iput-boolean v1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->m0:Z

    const-string v4, ""

    iput-object v4, p0, Lcom/coui/appcompat/edittext/COUIEditText;->n0:Ljava/lang/String;

    iput v1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->o0:I

    new-instance v5, Lcom/coui/appcompat/edittext/COUIEditText$1;

    invoke-direct {v5, p0}, Lcom/coui/appcompat/edittext/COUIEditText$1;-><init>(Lcom/coui/appcompat/edittext/COUIEditText;)V

    iput-object v5, p0, Lcom/coui/appcompat/edittext/COUIEditText;->q0:Ljava/lang/Runnable;

    new-instance v5, Lcom/coui/appcompat/edittext/COUIEditText$2;

    invoke-direct {v5, p0}, Lcom/coui/appcompat/edittext/COUIEditText$2;-><init>(Lcom/coui/appcompat/edittext/COUIEditText;)V

    iput-object v5, p0, Lcom/coui/appcompat/edittext/COUIEditText;->r0:Ljava/lang/Runnable;

    if-eqz p2, :cond_47

    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v5

    iput v5, p0, Lcom/coui/appcompat/edittext/COUIEditText;->d:I

    :cond_47
    iget v5, p0, Lcom/coui/appcompat/edittext/COUIEditText;->d:I

    if-nez v5, :cond_4d

    iput p3, p0, Lcom/coui/appcompat/edittext/COUIEditText;->d:I

    :cond_4d
    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->l:Landroid/content/Context;

    sget-object v5, Lcom/support/appcompat/R$styleable;->COUIEditText:[I

    invoke-virtual {p1, p2, v5, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    sget v7, Lcom/support/appcompat/R$styleable;->COUIEditText_quickDelete:I

    invoke-virtual {v6, v7, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    sget v8, Lcom/support/appcompat/R$styleable;->COUIEditText_couiEditTextErrorColor:I

    sget v9, Lcom/support/appcompat/R$attr;->couiColorError:I

    invoke-static {p1, v9}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->a(Landroid/content/Context;I)I

    move-result v9

    invoke-virtual {v6, v8, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v8

    iput v8, p0, Lcom/coui/appcompat/edittext/COUIEditText;->M:I

    sget v8, Lcom/support/appcompat/R$styleable;->COUIEditText_couiEditTextDeleteIconNormal:I

    invoke-virtual {v6, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, p0, Lcom/coui/appcompat/edittext/COUIEditText;->e:Landroid/graphics/drawable/Drawable;

    sget v8, Lcom/support/appcompat/R$styleable;->COUIEditText_couiEditTextDeleteIconPressed:I

    invoke-virtual {v6, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, p0, Lcom/coui/appcompat/edittext/COUIEditText;->f:Landroid/graphics/drawable/Drawable;

    sget v8, Lcom/support/appcompat/R$styleable;->COUIEditText_couiEditTextIsEllipsis:I

    const/4 v9, 0x1

    invoke-virtual {v6, v8, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    iput-boolean v8, p0, Lcom/coui/appcompat/edittext/COUIEditText;->m0:Z

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, v7}, Lcom/coui/appcompat/edittext/COUIEditText;->setFastDeletable(Z)V

    iget-object v6, p0, Lcom/coui/appcompat/edittext/COUIEditText;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_a1

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    iput v6, p0, Lcom/coui/appcompat/edittext/COUIEditText;->j0:I

    iget-object v6, p0, Lcom/coui/appcompat/edittext/COUIEditText;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    iput v6, p0, Lcom/coui/appcompat/edittext/COUIEditText;->k0:I

    iget-object v7, p0, Lcom/coui/appcompat/edittext/COUIEditText;->e:Landroid/graphics/drawable/Drawable;

    iget v8, p0, Lcom/coui/appcompat/edittext/COUIEditText;->j0:I

    invoke-virtual {v7, v1, v1, v8, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_a1
    iget-object v6, p0, Lcom/coui/appcompat/edittext/COUIEditText;->f:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_ac

    iget v7, p0, Lcom/coui/appcompat/edittext/COUIEditText;->j0:I

    iget v8, p0, Lcom/coui/appcompat/edittext/COUIEditText;->k0:I

    invoke-virtual {v6, v1, v1, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_ac
    new-instance v6, Lcom/coui/appcompat/edittext/COUIEditText$AccessibilityTouchHelper;

    invoke-direct {v6, p0, p0}, Lcom/coui/appcompat/edittext/COUIEditText$AccessibilityTouchHelper;-><init>(Lcom/coui/appcompat/edittext/COUIEditText;Landroid/view/View;)V

    iput-object v6, p0, Lcom/coui/appcompat/edittext/COUIEditText;->m:Lcom/coui/appcompat/edittext/COUIEditText$AccessibilityTouchHelper;

    invoke-static {p0, v6}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    invoke-static {p0, v9}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    iget-object v6, p0, Lcom/coui/appcompat/edittext/COUIEditText;->l:Landroid/content/Context;

    sget v7, Lcom/support/appcompat/R$string;->coui_slide_delete:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/coui/appcompat/edittext/COUIEditText;->n:Ljava/lang/String;

    iget-object v6, p0, Lcom/coui/appcompat/edittext/COUIEditText;->m:Lcom/coui/appcompat/edittext/COUIEditText$AccessibilityTouchHelper;

    invoke-virtual {v6}, Landroidx/customview/widget/ExploreByTouchHelper;->invalidateRoot()V

    new-instance v6, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;

    invoke-direct {v6, p0}, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;-><init>(Landroid/widget/EditText;)V

    iput-object v6, p0, Lcom/coui/appcompat/edittext/COUIEditText;->p0:Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;

    new-instance v6, Lcom/coui/appcompat/animation/COUILinearInterpolator;

    invoke-direct {v6}, Lcom/coui/appcompat/animation/COUILinearInterpolator;-><init>()V

    iput-object v6, v0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->D:Landroid/view/animation/Interpolator;

    invoke-virtual {v0}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->k()V

    new-instance v6, Lcom/coui/appcompat/animation/COUILinearInterpolator;

    invoke-direct {v6}, Lcom/coui/appcompat/animation/COUILinearInterpolator;-><init>()V

    iput-object v6, v0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->C:Landroid/view/animation/Interpolator;

    invoke-virtual {v0}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->k()V

    const v6, 0x800033

    invoke-virtual {v0, v6}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->o(I)V

    new-instance v6, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;

    invoke-direct {v6}, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;-><init>()V

    iput-object v6, p0, Lcom/coui/appcompat/edittext/COUIEditText;->b:Landroid/view/animation/Interpolator;

    new-instance v6, Lcom/coui/appcompat/animation/COUIInEaseInterpolator;

    invoke-direct {v6}, Lcom/coui/appcompat/animation/COUIInEaseInterpolator;-><init>()V

    iput-object v6, p0, Lcom/coui/appcompat/edittext/COUIEditText;->c:Landroid/view/animation/Interpolator;

    sget v6, Lcom/support/appcompat/R$style;->Widget_COUI_EditText_HintAnim_Line:I

    invoke-virtual {p1, p2, v5, p3, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    sget p3, Lcom/support/appcompat/R$styleable;->COUIEditText_couiHintEnabled:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/coui/appcompat/edittext/COUIEditText;->p:Z

    sget p3, Lcom/support/appcompat/R$styleable;->COUIEditText_android_hint:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/coui/appcompat/edittext/COUIEditText;->setTopHint(Ljava/lang/CharSequence;)V

    iget-boolean p3, p0, Lcom/coui/appcompat/edittext/COUIEditText;->p:Z

    if-eqz p3, :cond_11a

    sget p3, Lcom/support/appcompat/R$styleable;->COUIEditText_couiHintAnimationEnabled:I

    invoke-virtual {p2, p3, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/coui/appcompat/edittext/COUIEditText;->O:Z

    :cond_11a
    sget p3, Lcom/support/appcompat/R$styleable;->COUIEditText_rectModePaddingTop:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/edittext/COUIEditText;->f0:I

    sget p3, Lcom/support/appcompat/R$styleable;->COUIEditText_cornerRadius:I

    const/4 v5, 0x0

    invoke-virtual {p2, p3, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/edittext/COUIEditText;->u:F

    iput p3, p0, Lcom/coui/appcompat/edittext/COUIEditText;->v:F

    iput p3, p0, Lcom/coui/appcompat/edittext/COUIEditText;->w:F

    iput p3, p0, Lcom/coui/appcompat/edittext/COUIEditText;->x:F

    sget p3, Lcom/support/appcompat/R$styleable;->COUIEditText_couiStrokeColor:I

    sget v6, Lcom/support/appcompat/R$attr;->couiColorPrimary:I

    invoke-static {p1, v6, v1}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->b(Landroid/content/Context;II)I

    move-result v6

    invoke-virtual {p2, p3, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/edittext/COUIEditText;->K:I

    sget p3, Lcom/support/appcompat/R$styleable;->COUIEditText_couiStrokeWidth:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/edittext/COUIEditText;->y:I

    iput p3, p0, Lcom/coui/appcompat/edittext/COUIEditText;->E:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v6, Lcom/support/appcompat/R$dimen;->coui_textinput_line_padding:I

    invoke-virtual {p3, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/edittext/COUIEditText;->h0:I

    iget-boolean p3, p0, Lcom/coui/appcompat/edittext/COUIEditText;->p:Z

    if-eqz p3, :cond_17d

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v6, Lcom/support/appcompat/R$dimen;->coui_textinput_label_cutout_padding:I

    invoke-virtual {p3, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/edittext/COUIEditText;->s:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v6, Lcom/support/appcompat/R$dimen;->coui_textinput_line_padding_top:I

    invoke-virtual {p3, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/edittext/COUIEditText;->g0:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcom/support/appcompat/R$dimen;->coui_textinput_line_padding_middle:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->i0:I

    :cond_17d
    sget p1, Lcom/support/appcompat/R$styleable;->COUIEditText_couiBackgroundMode:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/edittext/COUIEditText;->setBoxBackgroundMode(I)V

    iget p3, p0, Lcom/coui/appcompat/edittext/COUIEditText;->t:I

    if-eqz p3, :cond_18d

    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/AppCompatEditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_18d
    sget p3, Lcom/support/appcompat/R$styleable;->COUIEditText_android_textColorHint:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_19d

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    iput-object p3, p0, Lcom/coui/appcompat/edittext/COUIEditText;->H:Landroid/content/res/ColorStateList;

    iput-object p3, p0, Lcom/coui/appcompat/edittext/COUIEditText;->I:Landroid/content/res/ColorStateList;

    :cond_19d
    sget p3, Lcom/support/appcompat/R$styleable;->COUIEditText_couiDefaultStrokeColor:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/edittext/COUIEditText;->J:I

    sget p3, Lcom/support/appcompat/R$styleable;->COUIEditText_couiDisabledStrokeColor:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/edittext/COUIEditText;->L:I

    sget p3, Lcom/support/appcompat/R$styleable;->COUIEditText_couiEditTextNoEllipsisText:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/coui/appcompat/edittext/COUIEditText;->n0:Ljava/lang/String;

    invoke-virtual {p0, p3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    sget p3, Lcom/support/appcompat/R$styleable;->COUIEditText_collapsedTextSize:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    sget v6, Lcom/support/appcompat/R$styleable;->COUIEditText_collapsedTextColor:I

    invoke-virtual {p2, v6}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, v0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->n:Landroid/content/res/ColorStateList;

    int-to-float p3, p3

    iput p3, v0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->l:F

    invoke-virtual {v0}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->k()V

    iget-object v7, v0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->n:Landroid/content/res/ColorStateList;

    iput-object v7, p0, Lcom/coui/appcompat/edittext/COUIEditText;->I:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v1, v1}, Lcom/coui/appcompat/edittext/COUIEditText;->j(ZZ)V

    iget-object v7, p0, Lcom/coui/appcompat/edittext/COUIEditText;->p0:Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;

    iget-object v7, v7, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->b:Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;

    iput-object v6, v7, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->n:Landroid/content/res/ColorStateList;

    iput p3, v7, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->l:F

    invoke-virtual {v7}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->k()V

    const-string p3, "sans-serif-medium"

    if-ne p1, v3, :cond_1e8

    invoke-static {p3, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    invoke-virtual {v0}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->x()V

    :cond_1e8
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->b0:Landroid/graphics/Paint;

    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1}, Landroid/text/TextPaint;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->c0:Landroid/text/TextPaint;

    invoke-virtual {p0}, Landroid/widget/EditText;->getTextSize()F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setTextSize(F)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->W:Landroid/graphics/Paint;

    iget p2, p0, Lcom/coui/appcompat/edittext/COUIEditText;->J:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->W:Landroid/graphics/Paint;

    iget p2, p0, Lcom/coui/appcompat/edittext/COUIEditText;->y:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->a0:Landroid/graphics/Paint;

    iget p2, p0, Lcom/coui/appcompat/edittext/COUIEditText;->L:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->a0:Landroid/graphics/Paint;

    iget p2, p0, Lcom/coui/appcompat/edittext/COUIEditText;->y:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->V:Landroid/graphics/Paint;

    iget p2, p0, Lcom/coui/appcompat/edittext/COUIEditText;->K:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->V:Landroid/graphics/Paint;

    iget p2, p0, Lcom/coui/appcompat/edittext/COUIEditText;->z:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUIEditText;->g()V

    invoke-virtual {p0}, Landroid/widget/EditText;->getTextSize()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->s(F)V

    invoke-virtual {p0}, Landroid/widget/EditText;->getGravity()I

    move-result p1

    and-int/lit8 p2, p1, -0x71

    or-int/lit8 p2, p2, 0x30

    invoke-virtual {v0, p2}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->o(I)V

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->r(I)V

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->H:Landroid/content/res/ColorStateList;

    if-nez p1, :cond_25e

    invoke-virtual {p0}, Landroid/widget/EditText;->getHintTextColors()Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->H:Landroid/content/res/ColorStateList;

    :cond_25e
    iget-boolean p1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->p:Z

    if-eqz p1, :cond_264

    move-object p1, v2

    goto :goto_265

    :cond_264
    move-object p1, v4

    :goto_265
    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->q:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_27f

    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUIEditText;->getHint()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/edittext/COUIEditText;->setTopHint(Ljava/lang/CharSequence;)V

    iget-boolean p1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->p:Z

    if-eqz p1, :cond_27c

    move-object v4, v2

    :cond_27c
    invoke-virtual {p0, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    :cond_27f
    invoke-virtual {p0, v1, v9}, Lcom/coui/appcompat/edittext/COUIEditText;->j(ZZ)V

    iget-boolean p1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->p:Z

    if-eqz p1, :cond_289

    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUIEditText;->k()V

    :cond_289
    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->p0:Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;

    iget p2, p0, Lcom/coui/appcompat/edittext/COUIEditText;->M:I

    iget v4, p0, Lcom/coui/appcompat/edittext/COUIEditText;->z:I

    iget v6, p0, Lcom/coui/appcompat/edittext/COUIEditText;->t:I

    invoke-direct {p0}, Lcom/coui/appcompat/edittext/COUIEditText;->getCornerRadiiAsArray()[F

    move-result-object p0

    iget-object v7, p1, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->a:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v7

    iput-object v7, p1, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->c:Landroid/content/res/ColorStateList;

    iget-object v7, p1, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->a:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getHighlightColor()I

    move-result v7

    iput v7, p1, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->d:I

    iput p2, p1, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->e:I

    iput v4, p1, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->f:I

    if-ne v6, v3, :cond_2b3

    invoke-static {p3, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    iget-object p2, p1, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->b:Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;

    invoke-virtual {p2}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->x()V

    :cond_2b3
    iget-object p2, p1, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->b:Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;

    iget p3, v0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->k:F

    invoke-virtual {p2, p3}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->s(F)V

    iget-object p2, p1, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->b:Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;

    iget p3, v0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->j:I

    invoke-virtual {p2, p3}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->o(I)V

    iget-object p2, p1, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->b:Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;

    iget p3, v0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->i:I

    invoke-virtual {p2, p3}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->r(I)V

    new-instance p2, Lcom/coui/appcompat/edittext/COUICutoutDrawable;

    invoke-direct {p2}, Lcom/coui/appcompat/edittext/COUICutoutDrawable;-><init>()V

    iput-object p2, p1, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->g:Lcom/coui/appcompat/edittext/COUICutoutDrawable;

    invoke-virtual {p2, p0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    new-instance p0, Landroid/graphics/Paint;

    invoke-direct {p0}, Landroid/graphics/Paint;-><init>()V

    iput-object p0, p1, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->j:Landroid/graphics/Paint;

    iget p2, p1, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->f:I

    int-to-float p2, p2

    invoke-virtual {p0, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance p0, Landroid/graphics/Paint;

    invoke-direct {p0}, Landroid/graphics/Paint;-><init>()V

    iput-object p0, p1, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->k:Landroid/graphics/Paint;

    iget-object p0, p1, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->a:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcom/support/appcompat/R$dimen;->coui_edit_text_shake_amplitude:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    new-instance p2, Lcom/coui/appcompat/animation/COUIEaseInterpolator;

    invoke-direct {p2}, Lcom/coui/appcompat/animation/COUIEaseInterpolator;-><init>()V

    new-array p3, v3, [F

    fill-array-data p3, :array_390

    invoke-static {p3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v6, 0xd9

    invoke-virtual {p3, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper$2;

    invoke-direct {v4, p1}, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper$2;-><init>(Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;)V

    invoke-virtual {p3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v4, v3, [F

    aput v5, v4, v1

    aput p0, v4, v9

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p0

    new-instance v4, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper$ShakeInterpolator;

    invoke-direct {v4, v2}, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper$ShakeInterpolator;-><init>(Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper$1;)V

    invoke-virtual {p0, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v4, 0x1c2

    invoke-virtual {p0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper$3;

    invoke-direct {v2, p1}, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper$3;-><init>(Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;)V

    invoke-virtual {p0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v2, v3, [F

    fill-array-data v2, :array_398

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v4, 0x85

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x50

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    new-instance p2, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper$4;

    invoke-direct {p2, p1}, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper$4;-><init>(Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;)V

    invoke-virtual {v2, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p2, p1, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->l:Landroid/animation/AnimatorSet;

    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/Animator;

    aput-object p3, v4, v1

    aput-object p0, v4, v9

    aput-object v2, v4, v3

    invoke-virtual {p2, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object p0, p1, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->l:Landroid/animation/AnimatorSet;

    new-instance p2, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper$5;

    invoke-direct {p2, p1}, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper$5;-><init>(Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;)V

    invoke-virtual {p0, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p1, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->a:Landroid/widget/EditText;

    new-instance p2, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper$1;

    invoke-direct {p2, p1}, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper$1;-><init>(Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;)V

    invoke-virtual {p0, p2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object p0, p1, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->b:Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;

    iget-object p2, v0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->u:Ljava/lang/CharSequence;

    invoke-virtual {p0, p2}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->w(Ljava/lang/CharSequence;)V

    iget-object p0, v0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->n:Landroid/content/res/ColorStateList;

    iput-object p0, p1, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->h:Landroid/content/res/ColorStateList;

    iget-object p2, v0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->m:Landroid/content/res/ColorStateList;

    iput-object p2, p1, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->i:Landroid/content/res/ColorStateList;

    iget-object p2, p1, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->b:Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;

    invoke-virtual {p2, p0}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->n(Landroid/content/res/ColorStateList;)V

    iget-object p0, p1, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->b:Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;

    iget-object p1, p1, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->i:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->q(Landroid/content/res/ColorStateList;)V

    return-void

    :array_390
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data

    :array_398
    .array-data 4
        0x0
        0x3e99999a  # 0.3f
    .end array-data
.end method

.method private getBoundsTop()I
    .registers 3

    iget v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->t:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_18

    const/4 v1, 0x2

    if-eq v0, v1, :cond_d

    const/4 v1, 0x3

    if-eq v0, v1, :cond_d

    const/4 p0, 0x0

    return p0

    :cond_d
    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->a:Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;

    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->f()F

    move-result p0

    const/high16 v0, 0x40000000  # 2.0f

    div-float/2addr p0, v0

    float-to-int p0, p0

    return p0

    :cond_18
    iget p0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->g0:I

    return p0
.end method

.method private getBoxBackground()Landroid/graphics/drawable/Drawable;
    .registers 3

    iget v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->t:I

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
    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->r:Landroid/graphics/drawable/GradientDrawable;

    return-object p0
.end method

.method private getCornerRadiiAsArray()[F
    .registers 4

    const/16 v0, 0x8

    new-array v0, v0, [F

    iget v1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->v:F

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v2, 0x1

    aput v1, v0, v2

    iget v1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->u:F

    const/4 v2, 0x2

    aput v1, v0, v2

    const/4 v2, 0x3

    aput v1, v0, v2

    iget v1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->x:F

    const/4 v2, 0x4

    aput v1, v0, v2

    const/4 v2, 0x5

    aput v1, v0, v2

    iget p0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->w:F

    const/4 v1, 0x6

    aput p0, v0, v1

    const/4 v1, 0x7

    aput p0, v0, v1

    return-object v0
.end method

.method private getModePaddingTop()I
    .registers 3

    iget v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->t:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1b

    const/4 v1, 0x2

    if-eq v0, v1, :cond_d

    const/4 v1, 0x3

    if-eq v0, v1, :cond_d

    const/4 p0, 0x0

    return p0

    :cond_d
    iget v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->f0:I

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->a:Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;

    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->f()F

    move-result p0

    const/high16 v1, 0x40000000  # 2.0f

    div-float/2addr p0, v1

    float-to-int p0, p0

    :goto_19
    add-int/2addr v0, p0

    return v0

    :cond_1b
    iget v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->g0:I

    iget-object v1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->a:Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;

    invoke-virtual {v1}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->h()F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    iget p0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->i0:I

    goto :goto_19
.end method

.method private setHintInternal(Ljava/lang/CharSequence;)V
    .registers 3

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->q:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_23

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->q:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->a:Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->w(Ljava/lang/CharSequence;)V

    iget-boolean p1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->N:Z

    if-nez p1, :cond_16

    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUIEditText;->h()V

    :cond_16
    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->p0:Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;

    if-eqz p1, :cond_23

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->a:Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;

    iget-object p1, p1, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->b:Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->u:Ljava/lang/CharSequence;

    invoke-virtual {p1, p0}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->w(Ljava/lang/CharSequence;)V

    :cond_23
    return-void
.end method


# virtual methods
.method public final a(F)V
    .registers 6

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->a:Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;

    iget v0, v0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->h:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->P:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_2a

    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->P:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->b:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->P:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->P:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/coui/appcompat/edittext/COUIEditText$5;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/edittext/COUIEditText$5;-><init>(Lcom/coui/appcompat/edittext/COUIEditText;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_2a
    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->P:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/coui/appcompat/edittext/COUIEditText;->a:Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;

    iget v3, v3, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->h:F

    aput v3, v1, v2

    const/4 v2, 0x1

    aput p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->P:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public final b()V
    .registers 4

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->r:Landroid/graphics/drawable/GradientDrawable;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->t:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_25

    const/4 v1, 0x2

    if-eq v0, v1, :cond_e

    goto :goto_28

    :cond_e
    iget v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->K:I

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->I:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/widget/EditText;->getDrawableState()[I

    move-result-object v1

    iget-object v2, p0, Lcom/coui/appcompat/edittext/COUIEditText;->I:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->K:I

    goto :goto_28

    :cond_25
    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->y:I

    :cond_28
    :goto_28
    iget v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->y:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_36

    iget v1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->F:I

    if-eqz v1, :cond_36

    iget-object v2, p0, Lcom/coui/appcompat/edittext/COUIEditText;->r:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    :cond_36
    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->r:Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p0}, Lcom/coui/appcompat/edittext/COUIEditText;->getCornerRadiiAsArray()[F

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    invoke-virtual {p0}, Landroid/widget/EditText;->invalidate()V

    return-void
.end method

.method public final c()Z
    .registers 2

    iget-boolean v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->p:Z

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->q:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->r:Landroid/graphics/drawable/GradientDrawable;

    instance-of p0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable;

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method

.method public d()Z
    .registers 3

    iget-boolean v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->h:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_11

    move v0, v1

    goto :goto_15

    :cond_11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    :goto_15
    if-nez v0, :cond_1e

    invoke-virtual {p0}, Landroid/widget/EditText;->hasFocus()Z

    move-result p0

    if-eqz p0, :cond_1e

    const/4 v1, 0x1

    :cond_1e
    return v1
.end method

.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUIEditText;->d()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->m:Lcom/coui/appcompat/edittext/COUIEditText$AccessibilityTouchHelper;

    if-eqz v0, :cond_12

    invoke-virtual {v0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public dispatchStartTemporaryDetach()V
    .registers 1

    invoke-super {p0}, Landroid/view/View;->dispatchStartTemporaryDetach()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 16

    invoke-virtual {p0}, Landroid/widget/EditText;->getMaxLines()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ge v0, v2, :cond_73

    iget-boolean v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->m0:Z

    if-eqz v0, :cond_73

    invoke-virtual {p0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-nez v0, :cond_56

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->c0:Landroid/text/TextPaint;

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {p0}, Landroid/widget/EditText;->getWidth()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v0, v0, v4

    if-lez v0, :cond_73

    iget-boolean v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->l0:Z

    if-nez v0, :cond_73

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->n0:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->l0:Z

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    iget-object v4, p0, Lcom/coui/appcompat/edittext/COUIEditText;->c0:Landroid/text/TextPaint;

    invoke-virtual {p0}, Landroid/widget/EditText;->getWidth()I

    move-result v5

    int-to-float v5, v5

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v0, v4, v5, v6}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->T:Z

    if-eqz v0, :cond_73

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/edittext/COUIEditText;->setErrorState(Z)V

    goto :goto_73

    :cond_56
    iget-boolean v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->l0:Z

    if-eqz v0, :cond_71

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->n0:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->o0:I

    invoke-virtual {p0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v4

    if-lt v0, v4, :cond_6c

    invoke-virtual {p0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v0

    goto :goto_6e

    :cond_6c
    iget v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->o0:I

    :goto_6e
    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setSelection(I)V

    :cond_71
    iput-boolean v3, p0, Lcom/coui/appcompat/edittext/COUIEditText;->l0:Z

    :cond_73
    :goto_73
    invoke-virtual {p0}, Landroid/widget/EditText;->getHintTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    iget-object v4, p0, Lcom/coui/appcompat/edittext/COUIEditText;->H:Landroid/content/res/ColorStateList;

    if-eq v0, v4, :cond_7e

    invoke-virtual {p0, v3, v3}, Lcom/coui/appcompat/edittext/COUIEditText;->j(ZZ)V

    :cond_7e
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/EditText;->getScrollX()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/widget/EditText;->getScrollY()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    iget-boolean v4, p0, Lcom/coui/appcompat/edittext/COUIEditText;->p:Z

    if-nez v4, :cond_a7

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v4

    if-nez v4, :cond_9e

    goto :goto_a7

    :cond_9e
    iget-object v4, p0, Lcom/coui/appcompat/edittext/COUIEditText;->b0:Landroid/graphics/Paint;

    const-string v5, " "

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6, v6, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_ef

    :cond_a7
    :goto_a7
    iget-object v4, p0, Lcom/coui/appcompat/edittext/COUIEditText;->p0:Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;

    iget-boolean v5, v4, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->m:Z

    if-nez v5, :cond_b3

    iget-object v4, p0, Lcom/coui/appcompat/edittext/COUIEditText;->a:Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;

    invoke-virtual {v4, p1}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->d(Landroid/graphics/Canvas;)V

    goto :goto_ef

    :cond_b3
    iget-object v5, p0, Lcom/coui/appcompat/edittext/COUIEditText;->a:Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;

    iget-object v6, v4, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->b:Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;

    iget-object v7, v4, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->h:Landroid/content/res/ColorStateList;

    invoke-virtual {v7}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v7

    iget v8, v4, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->e:I

    iget v9, v4, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->q:F

    invoke-virtual {v4, v7, v8, v9}, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->a(IIF)I

    move-result v7

    invoke-static {v7}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->n(Landroid/content/res/ColorStateList;)V

    iget-object v6, v4, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->b:Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;

    iget-object v7, v4, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->i:Landroid/content/res/ColorStateList;

    invoke-virtual {v7}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v7

    iget v8, v4, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->e:I

    iget v9, v4, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->q:F

    invoke-virtual {v4, v7, v8, v9}, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->a(IIF)I

    move-result v7

    invoke-static {v7}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->q(Landroid/content/res/ColorStateList;)V

    iget-object v6, v4, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->b:Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;

    iget v5, v5, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->h:F

    invoke-virtual {v6, v5}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->t(F)V

    iget-object v4, v4, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->b:Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;

    invoke-virtual {v4, p1}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->d(Landroid/graphics/Canvas;)V

    :goto_ef
    iget-object v4, p0, Lcom/coui/appcompat/edittext/COUIEditText;->r:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v4, :cond_13a

    iget v4, p0, Lcom/coui/appcompat/edittext/COUIEditText;->t:I

    if-ne v4, v2, :cond_13a

    invoke-virtual {p0}, Landroid/widget/EditText;->getScrollX()I

    move-result v2

    if-eqz v2, :cond_100

    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUIEditText;->l()V

    :cond_100
    iget-object v2, p0, Lcom/coui/appcompat/edittext/COUIEditText;->p0:Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;

    iget-boolean v4, v2, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->m:Z

    if-nez v4, :cond_10c

    iget-object v2, p0, Lcom/coui/appcompat/edittext/COUIEditText;->r:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_13a

    :cond_10c
    iget-object v4, p0, Lcom/coui/appcompat/edittext/COUIEditText;->r:Landroid/graphics/drawable/GradientDrawable;

    iget v5, p0, Lcom/coui/appcompat/edittext/COUIEditText;->F:I

    iget-object v6, v2, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->g:Lcom/coui/appcompat/edittext/COUICutoutDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/GradientDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/GradientDrawable;->setBounds(Landroid/graphics/Rect;)V

    instance-of v6, v4, Lcom/coui/appcompat/edittext/COUICutoutDrawable;

    if-eqz v6, :cond_126

    iget-object v6, v2, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->g:Lcom/coui/appcompat/edittext/COUICutoutDrawable;

    check-cast v4, Lcom/coui/appcompat/edittext/COUICutoutDrawable;

    iget-object v4, v4, Lcom/coui/appcompat/edittext/COUICutoutDrawable;->b:Landroid/graphics/RectF;

    invoke-virtual {v6, v4}, Lcom/coui/appcompat/edittext/COUICutoutDrawable;->b(Landroid/graphics/RectF;)V

    :cond_126
    iget-object v4, v2, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->g:Lcom/coui/appcompat/edittext/COUICutoutDrawable;

    iget v6, v2, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->f:I

    iget v7, v2, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->e:I

    iget v8, v2, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->q:F

    invoke-virtual {v2, v5, v7, v8}, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->a(IIF)I

    move-result v5

    invoke-virtual {v4, v6, v5}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    iget-object v2, v2, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->g:Lcom/coui/appcompat/edittext/COUICutoutDrawable;

    invoke-virtual {v2, p1}, Lcom/coui/appcompat/edittext/COUICutoutDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_13a
    :goto_13a
    iget v2, p0, Lcom/coui/appcompat/edittext/COUIEditText;->t:I

    if-ne v2, v1, :cond_1e9

    iget v1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->E:I

    int-to-double v1, v1

    const-wide/high16 v4, 0x4000000000000000L  # 2.0

    div-double/2addr v1, v4

    const-wide/high16 v4, 0x3fe0000000000000L  # 0.5

    add-double/2addr v1, v4

    double-to-int v1, v1

    invoke-virtual {p0}, Landroid/widget/EditText;->getPaddingBottom()I

    move-result v2

    iget v4, p0, Lcom/coui/appcompat/edittext/COUIEditText;->h0:I

    sub-int/2addr v2, v4

    if-lez v2, :cond_159

    invoke-virtual {p0}, Landroid/widget/EditText;->getPaddingBottom()I

    move-result v2

    iget v3, p0, Lcom/coui/appcompat/edittext/COUIEditText;->h0:I

    sub-int v3, v2, v3

    :cond_159
    invoke-virtual {p0}, Landroid/widget/EditText;->getHeight()I

    move-result v2

    sub-int/2addr v2, v1

    sub-int/2addr v2, v3

    iget-object v1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->V:Landroid/graphics/Paint;

    iget v3, p0, Lcom/coui/appcompat/edittext/COUIEditText;->d0:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Landroid/widget/EditText;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_17c

    const/4 v4, 0x0

    int-to-float v7, v2

    invoke-virtual {p0}, Landroid/widget/EditText;->getWidth()I

    move-result v1

    int-to-float v6, v1

    iget-object v8, p0, Lcom/coui/appcompat/edittext/COUIEditText;->a0:Landroid/graphics/Paint;

    move-object v3, p1

    move v5, v7

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_1e9

    :cond_17c
    iget-object v1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->p0:Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;

    iget-boolean v3, v1, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->m:Z

    if-nez v3, :cond_1a2

    const/4 v5, 0x0

    int-to-float v10, v2

    invoke-virtual {p0}, Landroid/widget/EditText;->getWidth()I

    move-result v1

    int-to-float v7, v1

    iget-object v9, p0, Lcom/coui/appcompat/edittext/COUIEditText;->W:Landroid/graphics/Paint;

    move-object v4, p1

    move v6, v10

    move v8, v10

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/4 v7, 0x0

    iget v1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->e0:F

    invoke-virtual {p0}, Landroid/widget/EditText;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float v9, v1, v2

    iget-object v11, p0, Lcom/coui/appcompat/edittext/COUIEditText;->V:Landroid/graphics/Paint;

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_1e9

    :cond_1a2
    invoke-virtual {p0}, Landroid/widget/EditText;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/coui/appcompat/edittext/COUIEditText;->e0:F

    invoke-virtual {p0}, Landroid/widget/EditText;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iget-object v5, p0, Lcom/coui/appcompat/edittext/COUIEditText;->W:Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/coui/appcompat/edittext/COUIEditText;->V:Landroid/graphics/Paint;

    iget-object v7, v1, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->j:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getColor()I

    move-result v5

    iget v8, v1, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->e:I

    iget v9, v1, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->q:F

    invoke-virtual {v1, v5, v8, v9}, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->a(IIF)I

    move-result v5

    invoke-virtual {v7, v5}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v2, v2

    int-to-float v11, v3

    iget-object v13, v1, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->j:Landroid/graphics/Paint;

    const/4 v3, 0x0

    const/4 v9, 0x0

    move-object v8, p1

    move v10, v2

    move v12, v2

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v5, v1, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->j:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->getColor()I

    move-result v6

    iget v7, v1, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->e:I

    iget v8, v1, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->q:F

    invoke-virtual {v1, v6, v7, v8}, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->a(IIF)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v11, v4

    iget-object v13, v1, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->j:Landroid/graphics/Paint;

    move-object v8, p1

    move v9, v3

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_1e9
    :goto_1e9
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public drawableStateChanged()V
    .registers 9

    iget-boolean v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->S:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->S:Z

    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatEditText;->drawableStateChanged()V

    invoke-virtual {p0}, Landroid/widget/EditText;->getDrawableState()[I

    move-result-object v1

    iget-boolean v2, p0, Lcom/coui/appcompat/edittext/COUIEditText;->p:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_27

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-virtual {p0}, Landroid/widget/EditText;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_22

    move v2, v0

    goto :goto_23

    :cond_22
    move v2, v3

    :goto_23
    invoke-virtual {p0, v2, v3}, Lcom/coui/appcompat/edittext/COUIEditText;->j(ZZ)V

    goto :goto_2a

    :cond_27
    invoke-virtual {p0, v3, v3}, Lcom/coui/appcompat/edittext/COUIEditText;->j(ZZ)V

    :goto_2a
    iget v2, p0, Lcom/coui/appcompat/edittext/COUIEditText;->t:I

    if-eq v2, v0, :cond_30

    goto/16 :goto_ce

    :cond_30
    invoke-virtual {p0}, Landroid/widget/EditText;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_cb

    invoke-virtual {p0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v2

    const-wide/16 v4, 0xfa

    const/4 v6, 0x2

    if-eqz v2, :cond_87

    iget-boolean v2, p0, Lcom/coui/appcompat/edittext/COUIEditText;->U:Z

    if-nez v2, :cond_ce

    iget-object v2, p0, Lcom/coui/appcompat/edittext/COUIEditText;->Q:Landroid/animation/ValueAnimator;

    if-nez v2, :cond_62

    new-instance v2, Landroid/animation/ValueAnimator;

    invoke-direct {v2}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v2, p0, Lcom/coui/appcompat/edittext/COUIEditText;->Q:Landroid/animation/ValueAnimator;

    iget-object v7, p0, Lcom/coui/appcompat/edittext/COUIEditText;->c:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v2, p0, Lcom/coui/appcompat/edittext/COUIEditText;->Q:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/coui/appcompat/edittext/COUIEditText;->Q:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/coui/appcompat/edittext/COUIEditText$3;

    invoke-direct {v4, p0}, Lcom/coui/appcompat/edittext/COUIEditText$3;-><init>(Lcom/coui/appcompat/edittext/COUIEditText;)V

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_62
    const/16 v2, 0xff

    iput v2, p0, Lcom/coui/appcompat/edittext/COUIEditText;->d0:I

    iget-object v2, p0, Lcom/coui/appcompat/edittext/COUIEditText;->Q:Landroid/animation/ValueAnimator;

    new-array v4, v6, [F

    fill-array-data v4, :array_f2

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object v2, p0, Lcom/coui/appcompat/edittext/COUIEditText;->R:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_7f

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_7f

    iget-object v2, p0, Lcom/coui/appcompat/edittext/COUIEditText;->R:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_7f
    iget-object v2, p0, Lcom/coui/appcompat/edittext/COUIEditText;->Q:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    iput-boolean v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->U:Z

    goto :goto_ce

    :cond_87
    iget-boolean v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->U:Z

    if-eqz v0, :cond_ce

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->R:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_aa

    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->R:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/coui/appcompat/edittext/COUIEditText;->c:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->R:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->R:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/coui/appcompat/edittext/COUIEditText$4;

    invoke-direct {v2, p0}, Lcom/coui/appcompat/edittext/COUIEditText$4;-><init>(Lcom/coui/appcompat/edittext/COUIEditText;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_aa
    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->R:Landroid/animation/ValueAnimator;

    new-array v2, v6, [I

    fill-array-data v2, :array_fa

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->Q:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_c3

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_c3

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->Q:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_c3
    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->R:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iput-boolean v3, p0, Lcom/coui/appcompat/edittext/COUIEditText;->U:Z

    goto :goto_ce

    :cond_cb
    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->e0:F

    :cond_ce
    :goto_ce
    iget-boolean v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->p:Z

    if-eqz v0, :cond_e9

    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUIEditText;->l()V

    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUIEditText;->m()V

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->a:Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;

    if-eqz v0, :cond_e9

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->v([I)Z

    move-result v0

    or-int/2addr v0, v3

    iget-object v2, p0, Lcom/coui/appcompat/edittext/COUIEditText;->p0:Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;

    iget-object v2, v2, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->b:Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;

    invoke-virtual {v2, v1}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->v([I)Z

    goto :goto_ea

    :cond_e9
    move v0, v3

    :goto_ea
    if-eqz v0, :cond_ef

    invoke-virtual {p0}, Landroid/widget/EditText;->invalidate()V

    :cond_ef
    iput-boolean v3, p0, Lcom/coui/appcompat/edittext/COUIEditText;->S:Z

    return-void

    :array_f2
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data

    :array_fa
    .array-data 4
        0xff
        0x0
    .end array-data
.end method

.method public final e()Z
    .registers 2

    invoke-virtual {p0}, Landroid/widget/EditText;->getGravity()I

    move-result p0

    and-int/lit8 p0, p0, 0x7

    const/4 v0, 0x1

    if-ne p0, v0, :cond_a

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public final f()Z
    .registers 2

    invoke-virtual {p0}, Landroid/widget/EditText;->getLayoutDirection()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_8

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public final g()V
    .registers 3

    iget v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->t:I

    if-nez v0, :cond_8

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->r:Landroid/graphics/drawable/GradientDrawable;

    goto :goto_28

    :cond_8
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1d

    iget-boolean v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->p:Z

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->r:Landroid/graphics/drawable/GradientDrawable;

    instance-of v0, v0, Lcom/coui/appcompat/edittext/COUICutoutDrawable;

    if-nez v0, :cond_1d

    new-instance v0, Lcom/coui/appcompat/edittext/COUICutoutDrawable;

    invoke-direct {v0}, Lcom/coui/appcompat/edittext/COUICutoutDrawable;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->r:Landroid/graphics/drawable/GradientDrawable;

    goto :goto_28

    :cond_1d
    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->r:Landroid/graphics/drawable/GradientDrawable;

    if-nez v0, :cond_28

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->r:Landroid/graphics/drawable/GradientDrawable;

    :cond_28
    :goto_28
    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUIEditText;->l()V

    return-void
.end method

.method public getBackgroundRect()Landroid/graphics/Rect;
    .registers 4

    iget v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->t:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_d

    const/4 v1, 0x2

    if-eq v0, v1, :cond_d

    const/4 v1, 0x3

    if-eq v0, v1, :cond_d

    goto :goto_1a

    :cond_d
    invoke-direct {p0}, Lcom/coui/appcompat/edittext/COUIEditText;->getBoxBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-direct {p0}, Lcom/coui/appcompat/edittext/COUIEditText;->getBoxBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    :cond_1a
    :goto_1a
    return-object v2
.end method

.method public getBoxStrokeColor()I
    .registers 1

    iget p0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->K:I

    return p0
.end method

.method public getCouiEditTexttNoEllipsisText()Ljava/lang/String;
    .registers 2

    iget-boolean v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->l0:Z

    if-eqz v0, :cond_7

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->n0:Ljava/lang/String;

    return-object p0

    :cond_7
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDeleteButtonLeft()I
    .registers 4

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    invoke-virtual {p0}, Landroid/widget/EditText;->getRight()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/EditText;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/EditText;->getPaddingRight()I

    move-result p0

    sub-int/2addr v1, p0

    sub-int/2addr v1, v0

    return v1
.end method

.method public getDeleteIconWidth()I
    .registers 1

    iget p0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->j0:I

    return p0
.end method

.method public getHint()Ljava/lang/CharSequence;
    .registers 2

    iget-boolean v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->p:Z

    if-eqz v0, :cond_7

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->q:Ljava/lang/CharSequence;

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return-object p0
.end method

.method public getLabelMarginTop()I
    .registers 2

    iget-boolean v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->p:Z

    if-eqz v0, :cond_f

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->a:Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;

    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->f()F

    move-result p0

    const/high16 v0, 0x40000000  # 2.0f

    div-float/2addr p0, v0

    float-to-int p0, p0

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public final h()V
    .registers 4

    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUIEditText;->c()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->G:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->a:Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;

    invoke-virtual {v1, v0}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->e(Landroid/graphics/RectF;)V

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/coui/appcompat/edittext/COUIEditText;->s:I

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

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->r:Landroid/graphics/drawable/GradientDrawable;

    check-cast p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/edittext/COUICutoutDrawable;->b(Landroid/graphics/RectF;)V

    return-void
.end method

.method public final i(Z)V
    .registers 5

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_35

    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUIEditText;->e()Z

    move-result p1

    if-eqz p1, :cond_24

    invoke-virtual {p0}, Landroid/widget/EditText;->getPaddingTop()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/EditText;->getPaddingEnd()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/EditText;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p0, v1, p1, v0, v2}, Landroid/widget/EditText;->setPaddingRelative(IIII)V

    :cond_24
    iget-boolean p1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->i:Z

    if-eqz p1, :cond_2d

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1, p1, p1}, Lcom/coui/appcompat/edittext/COUIEditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_32

    :cond_2d
    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->q0:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    :goto_32
    iput-boolean v1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->i:Z

    goto :goto_84

    :cond_35
    if-eqz p1, :cond_64

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->e:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_84

    iget-boolean p1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->i:Z

    if-nez p1, :cond_84

    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUIEditText;->e()Z

    move-result p1

    if-eqz p1, :cond_5b

    iget p1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->j0:I

    invoke-virtual {p0}, Landroid/widget/EditText;->getCompoundDrawablePadding()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0}, Landroid/widget/EditText;->getPaddingTop()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/EditText;->getPaddingEnd()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/EditText;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p0, v0, p1, v1, v2}, Landroid/widget/EditText;->setPaddingRelative(IIII)V

    :cond_5b
    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->r0:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->i:Z

    goto :goto_84

    :cond_64
    iget-boolean p1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->i:Z

    if-eqz p1, :cond_84

    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUIEditText;->e()Z

    move-result p1

    if-eqz p1, :cond_7d

    invoke-virtual {p0}, Landroid/widget/EditText;->getPaddingTop()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/EditText;->getPaddingEnd()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/EditText;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p0, v1, p1, v0, v2}, Landroid/widget/EditText;->setPaddingRelative(IIII)V

    :cond_7d
    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->q0:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    iput-boolean v1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->i:Z

    :cond_84
    :goto_84
    return-void
.end method

.method public final j(ZZ)V
    .registers 8

    invoke-virtual {p0}, Landroid/widget/EditText;->isEnabled()Z

    move-result v0

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    iget-object v3, p0, Lcom/coui/appcompat/edittext/COUIEditText;->H:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_28

    invoke-virtual {p0}, Landroid/widget/EditText;->getHintTextColors()Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, p0, Lcom/coui/appcompat/edittext/COUIEditText;->H:Landroid/content/res/ColorStateList;

    iget-object v3, p0, Lcom/coui/appcompat/edittext/COUIEditText;->a:Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;

    if-eqz v3, :cond_28

    iget-object v4, p0, Lcom/coui/appcompat/edittext/COUIEditText;->I:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, v4}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->n(Landroid/content/res/ColorStateList;)V

    iget-object v3, p0, Lcom/coui/appcompat/edittext/COUIEditText;->a:Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;

    iget-object v4, p0, Lcom/coui/appcompat/edittext/COUIEditText;->H:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, v4}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->q(Landroid/content/res/ColorStateList;)V

    :cond_28
    iget-object v3, p0, Lcom/coui/appcompat/edittext/COUIEditText;->a:Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;

    if-eqz v3, :cond_58

    if-nez v0, :cond_43

    iget v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->L:I

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->n(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->a:Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;

    iget v3, p0, Lcom/coui/appcompat/edittext/COUIEditText;->L:I

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->q(Landroid/content/res/ColorStateList;)V

    goto :goto_58

    :cond_43
    invoke-virtual {p0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_58

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->I:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_58

    iget-object v3, p0, Lcom/coui/appcompat/edittext/COUIEditText;->a:Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;

    iget-object v4, v3, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->n:Landroid/content/res/ColorStateList;

    if-eq v4, v0, :cond_58

    iput-object v0, v3, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->n:Landroid/content/res/ColorStateList;

    invoke-virtual {v3}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->k()V

    :cond_58
    :goto_58
    if-nez v1, :cond_cf

    invoke-virtual {p0}, Landroid/widget/EditText;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_67

    invoke-virtual {p0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_67

    goto :goto_cf

    :cond_67
    if-nez p2, :cond_6d

    iget-boolean p2, p0, Lcom/coui/appcompat/edittext/COUIEditText;->N:Z

    if-nez p2, :cond_101

    :cond_6d
    iget-boolean p2, p0, Lcom/coui/appcompat/edittext/COUIEditText;->p:Z

    if-eqz p2, :cond_101

    iget-object p2, p0, Lcom/coui/appcompat/edittext/COUIEditText;->r:Landroid/graphics/drawable/GradientDrawable;

    if-eqz p2, :cond_8d

    const-string p2, "mBoxBackground: "

    invoke-static {p2}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->r:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/GradientDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "COUIEditText"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8d
    iget-object p2, p0, Lcom/coui/appcompat/edittext/COUIEditText;->P:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_9c

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p2

    if-eqz p2, :cond_9c

    iget-object p2, p0, Lcom/coui/appcompat/edittext/COUIEditText;->P:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_9c
    const/4 p2, 0x0

    if-eqz p1, :cond_a7

    iget-boolean p1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->O:Z

    if-eqz p1, :cond_a7

    invoke-virtual {p0, p2}, Lcom/coui/appcompat/edittext/COUIEditText;->a(F)V

    goto :goto_ac

    :cond_a7
    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->a:Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;

    invoke-virtual {p1, p2}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->t(F)V

    :goto_ac
    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUIEditText;->c()Z

    move-result p1

    if-eqz p1, :cond_cc

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->r:Landroid/graphics/drawable/GradientDrawable;

    check-cast p1, Lcom/coui/appcompat/edittext/COUICutoutDrawable;

    iget-object p1, p1, Lcom/coui/appcompat/edittext/COUICutoutDrawable;->b:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v2

    if-eqz p1, :cond_cc

    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUIEditText;->c()Z

    move-result p1

    if-eqz p1, :cond_cc

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->r:Landroid/graphics/drawable/GradientDrawable;

    check-cast p1, Lcom/coui/appcompat/edittext/COUICutoutDrawable;

    invoke-virtual {p1, p2, p2, p2, p2}, Lcom/coui/appcompat/edittext/COUICutoutDrawable;->a(FFFF)V

    :cond_cc
    iput-boolean v2, p0, Lcom/coui/appcompat/edittext/COUIEditText;->N:Z

    goto :goto_101

    :cond_cf
    :goto_cf
    if-nez p2, :cond_d5

    iget-boolean p2, p0, Lcom/coui/appcompat/edittext/COUIEditText;->N:Z

    if-eqz p2, :cond_101

    :cond_d5
    iget-object p2, p0, Lcom/coui/appcompat/edittext/COUIEditText;->P:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_e4

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p2

    if-eqz p2, :cond_e4

    iget-object p2, p0, Lcom/coui/appcompat/edittext/COUIEditText;->P:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_e4
    const/high16 p2, 0x3f800000  # 1.0f

    if-eqz p1, :cond_f0

    iget-boolean p1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->O:Z

    if-eqz p1, :cond_f0

    invoke-virtual {p0, p2}, Lcom/coui/appcompat/edittext/COUIEditText;->a(F)V

    goto :goto_f5

    :cond_f0
    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->a:Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;

    invoke-virtual {p1, p2}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->t(F)V

    :goto_f5
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->N:Z

    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUIEditText;->c()Z

    move-result p1

    if-eqz p1, :cond_101

    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUIEditText;->h()V

    :cond_101
    :goto_101
    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->p0:Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;

    if-eqz p1, :cond_11b

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->a:Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;

    iget-object p2, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->n:Landroid/content/res/ColorStateList;

    iput-object p2, p1, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->h:Landroid/content/res/ColorStateList;

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->m:Landroid/content/res/ColorStateList;

    iput-object p0, p1, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->i:Landroid/content/res/ColorStateList;

    iget-object p0, p1, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->b:Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;

    invoke-virtual {p0, p2}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->n(Landroid/content/res/ColorStateList;)V

    iget-object p0, p1, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->b:Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;

    iget-object p1, p1, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->i:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->q(Landroid/content/res/ColorStateList;)V

    :cond_11b
    return-void
.end method

.method public final k()V
    .registers 5

    invoke-direct {p0}, Lcom/coui/appcompat/edittext/COUIEditText;->getModePaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUIEditText;->f()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {p0}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v1

    goto :goto_13

    :cond_f
    invoke-virtual {p0}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v1

    :goto_13
    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUIEditText;->f()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-virtual {p0}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v2

    goto :goto_22

    :cond_1e
    invoke-virtual {p0}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v2

    :goto_22
    invoke-virtual {p0}, Landroid/widget/EditText;->getPaddingBottom()I

    move-result v3

    invoke-static {p0, v1, v0, v2, v3}, Landroidx/core/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    return-void
.end method

.method public final l()V
    .registers 6

    iget v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->t:I

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->r:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_24

    invoke-virtual {p0}, Landroid/widget/EditText;->getRight()I

    move-result v0

    if-nez v0, :cond_f

    goto :goto_24

    :cond_f
    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/coui/appcompat/edittext/COUIEditText;->getBoundsTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/EditText;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/EditText;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/coui/appcompat/edittext/COUIEditText;->r:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUIEditText;->b()V

    :cond_24
    :goto_24
    return-void
.end method

.method public final m()V
    .registers 3

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->r:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_29

    iget v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->t:I

    if-nez v0, :cond_9

    goto :goto_29

    :cond_9
    const/4 v1, 0x2

    if-ne v0, v1, :cond_29

    invoke-virtual {p0}, Landroid/widget/EditText;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_17

    iget v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->L:I

    iput v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->F:I

    goto :goto_26

    :cond_17
    invoke-virtual {p0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_22

    iget v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->K:I

    iput v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->F:I

    goto :goto_26

    :cond_22
    iget v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->J:I

    iput v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->F:I

    :goto_26
    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUIEditText;->b()V

    :cond_29
    :goto_29
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 16

    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->p0:Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;

    iget-boolean v0, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->o:Z

    if-eqz v0, :cond_18d

    iget-boolean v0, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->m:Z

    if-eqz v0, :cond_18d

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->c()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1e

    iget v1, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->r:F

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_24

    :cond_1e
    iget v1, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->r:F

    neg-float v1, v1

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_24
    iget-object v1, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getCompoundPaddingStart()I

    move-result v1

    iget-object v3, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->a:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getCompoundPaddingEnd()I

    move-result v3

    iget-object v4, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->a:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getWidth()I

    move-result v4

    sub-int v5, v4, v3

    sub-int v6, v5, v1

    int-to-float v5, v5

    iget-object v7, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->a:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getX()F

    move-result v7

    add-float/2addr v7, v5

    iget-object v5, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->a:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getScrollX()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v7, v5

    iget v5, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->t:F

    iget-object v8, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->a:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getScrollX()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v5, v8

    int-to-float v8, v6

    sub-float/2addr v5, v8

    iget-object v9, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->a:Landroid/widget/EditText;

    const/4 v10, 0x0

    sget-object v11, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->v:Landroid/graphics/Rect;

    invoke-virtual {v9, v10, v11}, Landroid/widget/EditText;->getLineBounds(ILandroid/graphics/Rect;)I

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v9

    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->c()Z

    move-result v10

    if-nez v10, :cond_70

    int-to-float v10, v1

    iget v12, v11, Landroid/graphics/Rect;->top:I

    int-to-float v12, v12

    invoke-virtual {p1, v10, v12}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_77

    :cond_70
    int-to-float v10, v3

    iget v12, v11, Landroid/graphics/Rect;->top:I

    int-to-float v12, v12

    invoke-virtual {p1, v10, v12}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_77
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v10

    iget-object v12, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->a:Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/EditText;->getBottom()I

    move-result v12

    iget-object v13, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->a:Landroid/widget/EditText;

    invoke-virtual {v13}, Landroid/widget/EditText;->getTop()I

    move-result v13

    sub-int/2addr v12, v13

    int-to-float v12, v12

    iget v13, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->u:F

    cmpl-float v12, v12, v13

    if-nez v12, :cond_c0

    iget v12, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->t:F

    cmpl-float v8, v12, v8

    if-lez v8, :cond_c0

    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->c()Z

    move-result v8

    if-nez v8, :cond_ac

    neg-float v5, v5

    invoke-virtual {p1, v5, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v5, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->a:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getScrollX()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->u:F

    invoke-virtual {p1, v5, v2, v7, v6}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    goto :goto_c0

    :cond_ac
    iget-object v5, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->a:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getScrollX()I

    move-result v5

    add-int/2addr v5, v6

    int-to-float v5, v5

    iget-object v6, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->a:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getScrollX()I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->u:F

    invoke-virtual {p1, v5, v2, v6, v7}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    :cond_c0
    :goto_c0
    iget-object v2, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->a:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    iget-object v6, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->c:Landroid/content/res/ColorStateList;

    invoke-virtual {v6}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setColor(I)V

    invoke-virtual {v2, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    invoke-virtual {p1, v9}, Landroid/graphics/Canvas;->restoreToCount(I)V

    iget-object v2, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->a:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getTextAlignment()I

    move-result v2

    packed-switch v2, :pswitch_data_18e

    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_137

    :pswitch_e8  #0x6
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_137

    :pswitch_eb  #0x5
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_137

    :pswitch_ee  #0x4
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    goto :goto_137

    :pswitch_f1  #0x3
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_137

    :pswitch_f4  #0x2
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_137

    :pswitch_f7  #0x1
    iget-object v2, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->a:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getGravity()I

    move-result v2

    const v5, 0x800007

    and-int/2addr v2, v5

    const/4 v5, 0x1

    if-eq v2, v5, :cond_135

    const/4 v5, 0x3

    if-eq v2, v5, :cond_129

    const/4 v5, 0x5

    if-eq v2, v5, :cond_11d

    const v5, 0x800003

    if-eq v2, v5, :cond_11a

    const v5, 0x800005

    if-eq v2, v5, :cond_117

    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_137

    :cond_117
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_137

    :cond_11a
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_137

    :cond_11d
    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->c()Z

    move-result v2

    if-eqz v2, :cond_126

    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_137

    :cond_126
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_137

    :cond_129
    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->c()Z

    move-result v2

    if-eqz v2, :cond_132

    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_137

    :cond_132
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_137

    :cond_135
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    :goto_137
    iget-object v5, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->k:Landroid/graphics/Paint;

    iget v6, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->s:F

    invoke-virtual {p0, v6}, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->b(F)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne v2, v5, :cond_14c

    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->c()Z

    move-result v5

    if-eqz v5, :cond_16b

    :cond_14c
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v2, v5, :cond_157

    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->c()Z

    move-result v5

    if-eqz v5, :cond_157

    goto :goto_16b

    :cond_157
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne v2, v5, :cond_161

    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->c()Z

    move-result v5

    if-nez v5, :cond_16b

    :cond_161
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v2, v5, :cond_16f

    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->c()Z

    move-result v2

    if-nez v2, :cond_16f

    :cond_16b
    :goto_16b
    int-to-float v1, v1

    move v4, v1

    move v6, v4

    goto :goto_17e

    :cond_16f
    add-int/2addr v1, v4

    sub-int/2addr v1, v3

    int-to-float v1, v1

    const/high16 v2, 0x40000000  # 2.0f

    div-float/2addr v1, v2

    iget v3, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->t:F

    div-float v2, v3, v2

    sub-float/2addr v1, v2

    add-float v2, v1, v3

    move v4, v1

    move v6, v2

    :goto_17e
    iget v1, v11, Landroid/graphics/Rect;->top:I

    int-to-float v5, v1

    iget v1, v11, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v1

    iget-object v8, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->k:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_18d
    return-void

    :pswitch_data_18e
    .packed-switch 0x1
        :pswitch_f7  #00000001
        :pswitch_f4  #00000002
        :pswitch_f1  #00000003
        :pswitch_ee  #00000004
        :pswitch_eb  #00000005
        :pswitch_e8  #00000006
    .end packed-switch
.end method

.method public onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Landroid/widget/TextView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    iget-boolean p2, p0, Lcom/coui/appcompat/edittext/COUIEditText;->h:Z

    if-eqz p2, :cond_a

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/edittext/COUIEditText;->i(Z)V

    :cond_a
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    iget-boolean v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->h:Z

    if-eqz v0, :cond_14

    const/16 v0, 0x43

    if-ne p1, v0, :cond_14

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->k:Lcom/coui/appcompat/edittext/COUIEditText$OnPasswordDeletedListener;

    if-eqz p0, :cond_12

    invoke-interface {p0}, Lcom/coui/appcompat/edittext/COUIEditText$OnPasswordDeletedListener;->a()Z

    :cond_12
    const/4 p0, 0x1

    return p0

    :cond_14
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onLayout(ZIIII)V
    .registers 8

    invoke-super/range {p0 .. p5}, Landroid/widget/TextView;->onLayout(ZIIII)V

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->r:Landroid/graphics/drawable/GradientDrawable;

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUIEditText;->l()V

    :cond_a
    iget-boolean p1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->p:Z

    if-eqz p1, :cond_11

    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUIEditText;->k()V

    :cond_11
    invoke-virtual {p0}, Landroid/widget/EditText;->getCompoundPaddingLeft()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/EditText;->getWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/EditText;->getCompoundPaddingRight()I

    move-result p3

    sub-int/2addr p2, p3

    iget p3, p0, Lcom/coui/appcompat/edittext/COUIEditText;->t:I

    const/4 p4, 0x1

    const/4 p5, 0x0

    if-eq p3, p4, :cond_46

    const/4 p4, 0x2

    if-eq p3, p4, :cond_2f

    const/4 p4, 0x3

    if-eq p3, p4, :cond_2f

    invoke-virtual {p0}, Landroid/widget/EditText;->getPaddingTop()I

    move-result p3

    goto :goto_57

    :cond_2f
    invoke-direct {p0}, Lcom/coui/appcompat/edittext/COUIEditText;->getBoxBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    if-eqz p3, :cond_56

    invoke-direct {p0}, Lcom/coui/appcompat/edittext/COUIEditText;->getBoxBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p3

    iget p3, p3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUIEditText;->getLabelMarginTop()I

    move-result p4

    sub-int p5, p3, p4

    goto :goto_56

    :cond_46
    invoke-direct {p0}, Lcom/coui/appcompat/edittext/COUIEditText;->getBoxBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    if-eqz p3, :cond_56

    invoke-direct {p0}, Lcom/coui/appcompat/edittext/COUIEditText;->getBoxBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p3

    iget p5, p3, Landroid/graphics/Rect;->top:I

    :cond_56
    :goto_56
    move p3, p5

    :goto_57
    iget-object p4, p0, Lcom/coui/appcompat/edittext/COUIEditText;->a:Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;

    invoke-virtual {p0}, Landroid/widget/EditText;->getCompoundPaddingTop()I

    move-result p5

    invoke-virtual {p0}, Landroid/widget/EditText;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/EditText;->getCompoundPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p4, p1, p5, p2, v0}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->p(IIII)V

    iget-object p4, p0, Lcom/coui/appcompat/edittext/COUIEditText;->a:Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;

    invoke-virtual {p0}, Landroid/widget/EditText;->getHeight()I

    move-result p5

    invoke-virtual {p0}, Landroid/widget/EditText;->getCompoundPaddingBottom()I

    move-result v0

    sub-int/2addr p5, v0

    invoke-virtual {p4, p1, p3, p2, p5}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->m(IIII)V

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->a:Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;

    invoke-virtual {p1}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->k()V

    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUIEditText;->c()Z

    move-result p1

    if-eqz p1, :cond_89

    iget-boolean p1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->N:Z

    if-nez p1, :cond_89

    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUIEditText;->h()V

    :cond_89
    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->p0:Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->a:Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->b:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->c:Landroid/graphics/Rect;

    iget-object p3, p1, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->b:Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;

    iget p4, p2, Landroid/graphics/Rect;->left:I

    iget p5, p2, Landroid/graphics/Rect;->top:I

    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p3, p4, p5, v0, p2}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->p(IIII)V

    iget-object p2, p1, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->b:Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;

    iget p3, p0, Landroid/graphics/Rect;->left:I

    iget p4, p0, Landroid/graphics/Rect;->top:I

    iget p5, p0, Landroid/graphics/Rect;->right:I

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2, p3, p4, p5, p0}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->m(IIII)V

    iget-object p0, p1, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->b:Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;

    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->k()V

    return-void
.end method

.method public onMeasure(II)V
    .registers 3

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 4

    invoke-virtual {p0}, Landroid/widget/EditText;->getMaxLines()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_19

    iget-boolean v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->m0:Z

    if-eqz v0, :cond_19

    instance-of v0, p1, Lcom/coui/appcompat/edittext/COUIEditText$COUISavedState;

    if-eqz v0, :cond_19

    move-object v0, p1

    check-cast v0, Lcom/coui/appcompat/edittext/COUIEditText$COUISavedState;

    iget-object v0, v0, Lcom/coui/appcompat/edittext/COUIEditText$COUISavedState;->a:Ljava/lang/String;

    if-eqz v0, :cond_19

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_19
    invoke-super {p0, p1}, Landroid/widget/TextView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4

    invoke-super {p0}, Landroid/widget/TextView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/EditText;->getMaxLines()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_21

    iget-boolean v1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->m0:Z

    if-eqz v1, :cond_21

    invoke-virtual {p0}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-nez v1, :cond_21

    new-instance v1, Lcom/coui/appcompat/edittext/COUIEditText$COUISavedState;

    invoke-direct {v1, v0}, Lcom/coui/appcompat/edittext/COUIEditText$COUISavedState;-><init>(Landroid/os/Parcelable;)V

    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUIEditText;->getCouiEditTexttNoEllipsisText()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/coui/appcompat/edittext/COUIEditText$COUISavedState;->a:Ljava/lang/String;

    return-object v1

    :cond_21
    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    iget-boolean v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->h:Z

    if-eqz v0, :cond_a1

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a1

    invoke-virtual {p0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_a1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUIEditText;->f()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-virtual {p0}, Landroid/widget/EditText;->getCompoundPaddingLeft()I

    move-result v1

    iget v2, p0, Lcom/coui/appcompat/edittext/COUIEditText;->j0:I

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/EditText;->getCompoundDrawablePadding()I

    move-result v2

    sub-int/2addr v1, v2

    goto :goto_3a

    :cond_2c
    invoke-virtual {p0}, Landroid/widget/EditText;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/EditText;->getCompoundPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/EditText;->getCompoundDrawablePadding()I

    move-result v2

    add-int/2addr v1, v2

    :goto_3a
    iget v2, p0, Lcom/coui/appcompat/edittext/COUIEditText;->j0:I

    add-int/2addr v2, v1

    invoke-virtual {p0}, Landroid/widget/EditText;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/EditText;->getCompoundPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/widget/EditText;->getCompoundPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/coui/appcompat/edittext/COUIEditText;->j0:I

    sub-int/2addr v3, v4

    const/4 v4, 0x2

    div-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/widget/EditText;->getCompoundPaddingTop()I

    move-result v5

    add-int/2addr v5, v3

    iget v3, p0, Lcom/coui/appcompat/edittext/COUIEditText;->j0:I

    add-int/2addr v3, v5

    invoke-virtual {v0, v1, v5, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/coui/appcompat/edittext/COUIEditText;->i:Z

    if-eqz v3, :cond_a1

    if-eqz v0, :cond_a1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_9e

    if-eq v0, v2, :cond_81

    if-eq v0, v4, :cond_7c

    goto :goto_a1

    :cond_7c
    iget-boolean v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->g:Z

    if-eqz v0, :cond_a1

    return v2

    :cond_81
    iget-boolean v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->g:Z

    if-eqz v0, :cond_a1

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->j:Lcom/coui/appcompat/edittext/COUIEditText$OnTextDeletedListener;

    if-eqz p1, :cond_90

    invoke-interface {p1}, Lcom/coui/appcompat/edittext/COUIEditText$OnTextDeletedListener;->a()Z

    move-result p1

    if-eqz p1, :cond_90

    return v2

    :cond_90
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p1, v1, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    iput-boolean v1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->g:Z

    return v2

    :cond_9e
    iput-boolean v2, p0, Lcom/coui/appcompat/edittext/COUIEditText;->g:Z

    return v2

    :cond_a1
    :goto_a1
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    invoke-virtual {p0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->o0:I

    return p1
.end method

.method public setBoxBackgroundMode(I)V
    .registers 3

    iget v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->t:I

    if-ne p1, v0, :cond_5

    return-void

    :cond_5
    iput p1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->t:I

    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUIEditText;->g()V

    return-void
.end method

.method public setBoxStrokeColor(I)V
    .registers 3

    iget v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->K:I

    if-eq v0, p1, :cond_e

    iput p1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->K:I

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->V:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUIEditText;->m()V

    :cond_e
    return-void
.end method

.method public setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    if-eqz p3, :cond_c

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    :cond_c
    return-void
.end method

.method public setCouiEditTexttNoEllipsisText(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->n0:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setDefaultStrokeColor(I)V
    .registers 3

    iget v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->J:I

    if-eq v0, p1, :cond_e

    iput p1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->J:I

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->W:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUIEditText;->m()V

    :cond_e
    return-void
.end method

.method public setDisabledStrokeColor(I)V
    .registers 3

    iget v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->L:I

    if-eq v0, p1, :cond_e

    iput p1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->L:I

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->a0:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUIEditText;->m()V

    :cond_e
    return-void
.end method

.method public setEditTextDeleteIconNormal(Landroid/graphics/drawable/Drawable;)V
    .registers 5

    if-eqz p1, :cond_1d

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->j0:I

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->k0:I

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->e:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->j0:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0}, Landroid/widget/EditText;->invalidate()V

    :cond_1d
    return-void
.end method

.method public setEditTextDeleteIconPressed(Landroid/graphics/drawable/Drawable;)V
    .registers 5

    if-eqz p1, :cond_f

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->f:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->j0:I

    iget v1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->k0:I

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0}, Landroid/widget/EditText;->invalidate()V

    :cond_f
    return-void
.end method

.method public setEditTextErrorColor(I)V
    .registers 3

    iget v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->M:I

    if-eq p1, v0, :cond_d

    iput p1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->M:I

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->p0:Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;

    iput p1, v0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->e:I

    invoke-virtual {p0}, Landroid/widget/EditText;->invalidate()V

    :cond_d
    return-void
.end method

.method public setErrorState(Z)V
    .registers 3

    iput-boolean p1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->T:Z

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->p0:Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, v0}, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->d(ZZZ)V

    return-void
.end method

.method public setFastDeletable(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->h:Z

    if-eq v0, p1, :cond_26

    iput-boolean p1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->h:Z

    if-eqz p1, :cond_26

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->o:Lcom/coui/appcompat/edittext/COUIEditText$COUITextWatcher;

    if-nez p1, :cond_17

    new-instance p1, Lcom/coui/appcompat/edittext/COUIEditText$COUITextWatcher;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/coui/appcompat/edittext/COUIEditText$COUITextWatcher;-><init>(Lcom/coui/appcompat/edittext/COUIEditText;Lcom/coui/appcompat/edittext/COUIEditText$1;)V

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->o:Lcom/coui/appcompat/edittext/COUIEditText$COUITextWatcher;

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_17
    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->l:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/support/appcompat/R$dimen;->coui_edit_text_drawable_padding:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setCompoundDrawablePadding(I)V

    :cond_26
    return-void
.end method

.method public setHintEnabled(Z)V
    .registers 4

    iget-boolean v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->p:Z

    if-eq p1, v0, :cond_3c

    iput-boolean p1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->p:Z

    const/4 v0, 0x0

    if-nez p1, :cond_24

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->q:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_20

    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUIEditText;->getHint()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_20

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->q:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    :cond_20
    invoke-direct {p0, v0}, Lcom/coui/appcompat/edittext/COUIEditText;->setHintInternal(Ljava/lang/CharSequence;)V

    goto :goto_3c

    :cond_24
    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUIEditText;->getHint()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3c

    iget-object v1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->q:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/edittext/COUIEditText;->setTopHint(Ljava/lang/CharSequence;)V

    :cond_39
    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    :cond_3c
    :goto_3c
    return-void
.end method

.method public setIsEllipsisEnabled(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->m0:Z

    return-void
.end method

.method public setOnTextDeletedListener(Lcom/coui/appcompat/edittext/COUIEditText$OnTextDeletedListener;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->j:Lcom/coui/appcompat/edittext/COUIEditText$OnTextDeletedListener;

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .registers 3

    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/EditText;->length()I

    move-result p0

    invoke-static {p1, p0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    return-void
.end method

.method public setTextDeletedListener(Lcom/coui/appcompat/edittext/COUIEditText$OnPasswordDeletedListener;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->k:Lcom/coui/appcompat/edittext/COUIEditText$OnPasswordDeletedListener;

    return-void
.end method

.method public setTopHint(Ljava/lang/CharSequence;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/coui/appcompat/edittext/COUIEditText;->setHintInternal(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setmHintAnimationEnabled(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->O:Z

    return-void
.end method
