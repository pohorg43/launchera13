.class Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper$ShakeInterpolator;
    }
.end annotation


# static fields
.field public static final v:Landroid/graphics/Rect;


# instance fields
.field public final a:Landroid/widget/EditText;

.field public final b:Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;

.field public c:Landroid/content/res/ColorStateList;

.field public d:I

.field public e:I

.field public f:I

.field public g:Lcom/coui/appcompat/edittext/COUICutoutDrawable;

.field public h:Landroid/content/res/ColorStateList;

.field public i:Landroid/content/res/ColorStateList;

.field public j:Landroid/graphics/Paint;

.field public k:Landroid/graphics/Paint;

.field public l:Landroid/animation/AnimatorSet;

.field public m:Z

.field public n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/coui/appcompat/edittext/COUIEditText$OnErrorStateChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field public o:Z

.field public p:Z

.field public q:F

.field public r:F

.field public s:F

.field public t:F

.field public u:F


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->v:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/widget/EditText;)V
    .registers 3
    .param p1  # Landroid/widget/EditText;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->a:Landroid/widget/EditText;

    new-instance v0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;

    invoke-direct {v0, p1}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->b:Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;

    new-instance p0, Lcom/coui/appcompat/animation/COUILinearInterpolator;

    invoke-direct {p0}, Lcom/coui/appcompat/animation/COUILinearInterpolator;-><init>()V

    iput-object p0, v0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->D:Landroid/view/animation/Interpolator;

    invoke-virtual {v0}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->k()V

    new-instance p0, Lcom/coui/appcompat/animation/COUILinearInterpolator;

    invoke-direct {p0}, Lcom/coui/appcompat/animation/COUILinearInterpolator;-><init>()V

    iput-object p0, v0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->C:Landroid/view/animation/Interpolator;

    invoke-virtual {v0}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->k()V

    const p0, 0x800033

    invoke-virtual {v0, p0}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->o(I)V

    return-void
.end method


# virtual methods
.method public final a(IIF)I
    .registers 8

    const/4 p0, 0x0

    cmpg-float p0, p3, p0

    if-gtz p0, :cond_6

    return p1

    :cond_6
    const/high16 p0, 0x3f800000  # 1.0f

    cmpl-float v0, p3, p0

    if-ltz v0, :cond_d

    return p2

    :cond_d
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p0, p3

    mul-float/2addr v0, p0

    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p3

    add-float/2addr v1, v0

    float-to-int v0, v1

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p0

    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p3

    add-float/2addr v2, v1

    float-to-int v1, v2

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p0

    invoke-static {p2}, Landroid/graphics/Color;->green(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p3

    add-float/2addr v3, v2

    float-to-int v2, v3

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, p0

    invoke-static {p2}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, p3

    add-float/2addr p0, p1

    float-to-int p0, p0

    const/16 p1, 0xff

    if-le v0, p1, :cond_4b

    move v0, p1

    :cond_4b
    if-le v1, p1, :cond_4e

    move v1, p1

    :cond_4e
    if-le v2, p1, :cond_51

    move v2, p1

    :cond_51
    if-le p0, p1, :cond_54

    move p0, p1

    :cond_54
    invoke-static {v0, v1, v2, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method public final b(F)I
    .registers 4

    const/high16 v0, 0x437f0000  # 255.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iget v0, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->e:I

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    iget v1, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->e:I

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    iget p0, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->e:I

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    invoke-static {p1, v0, v1, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method public final c()Z
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->a:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getLayoutDirection()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_a

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public final d(ZZZ)V
    .registers 7

    iget-boolean v0, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->m:Z

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    iput-boolean p1, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->m:Z

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->n:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_23

    move v0, v1

    :goto_d
    iget-object v2, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->n:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_23

    iget-object v2, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->n:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coui/appcompat/edittext/COUIEditText$OnErrorStateChangedListener;

    invoke-interface {v2, p1}, Lcom/coui/appcompat/edittext/COUIEditText$OnErrorStateChangedListener;->b(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_23
    const/4 v0, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_67

    if-eqz p1, :cond_56

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->l:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result p1

    if-eqz p1, :cond_36

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->l:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_36
    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->a:Landroid/widget/EditText;

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setTextColor(I)V

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->a:Landroid/widget/EditText;

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setHighlightColor(I)V

    iput v0, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->q:F

    iput v0, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->r:F

    iput v0, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->s:F

    iput-boolean v2, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->o:Z

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->a:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->isFocused()Z

    move-result p1

    iput-boolean p1, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->p:Z

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->l:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_78

    :cond_56
    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->l:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result p1

    if-eqz p1, :cond_63

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->l:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_63
    invoke-virtual {p0, v1, v1, p3}, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->e(ZZZ)V

    goto :goto_78

    :cond_67
    if-eqz p1, :cond_75

    const/high16 p1, 0x3f800000  # 1.0f

    iput p1, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->q:F

    iput v0, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->r:F

    iput v0, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->s:F

    invoke-virtual {p0, v2, v1, p3}, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->e(ZZZ)V

    goto :goto_78

    :cond_75
    invoke-virtual {p0, v1, v1, p3}, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->e(ZZZ)V

    :goto_78
    return-void
.end method

.method public final e(ZZZ)V
    .registers 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->o:Z

    if-eqz p1, :cond_2a

    if-eqz p2, :cond_e

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->a:Landroid/widget/EditText;

    iget-object p2, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->c:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_e
    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->a:Landroid/widget/EditText;

    const p2, 0x3e99999a  # 0.3f

    invoke-virtual {p0, p2}, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->b(F)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setHighlightColor(I)V

    if-eqz p3, :cond_38

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->a:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Landroid/widget/EditText;->setSelection(II)V

    goto :goto_38

    :cond_2a
    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->a:Landroid/widget/EditText;

    iget-object p2, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->c:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->a:Landroid/widget/EditText;

    iget p0, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->d:I

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setHighlightColor(I)V

    :cond_38
    :goto_38
    return-void
.end method
