.class Lcom/coui/appcompat/cardview/CardViewBaseImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/coui/appcompat/cardview/CardViewImpl;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p0, Landroid/graphics/RectF;

    invoke-direct {p0}, Landroid/graphics/RectF;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/coui/appcompat/cardview/CardViewDelegate;Landroid/content/Context;Landroid/content/res/ColorStateList;FFF)V
    .registers 14

    new-instance v6, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    move-object v0, v6

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;-><init>(Landroid/content/res/Resources;Landroid/content/res/ColorStateList;FFF)V

    invoke-interface {p1}, Lcom/coui/appcompat/cardview/CardViewDelegate;->getPreventCornerOverlap()Z

    move-result p2

    iput-boolean p2, v6, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->o:Z

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    invoke-interface {p1, v6}, Lcom/coui/appcompat/cardview/CardViewDelegate;->setCardBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/cardview/CardViewBaseImpl;->n(Lcom/coui/appcompat/cardview/CardViewDelegate;)V

    return-void
.end method

.method public b(Lcom/coui/appcompat/cardview/CardViewDelegate;F)V
    .registers 5

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/cardview/CardViewBaseImpl;->o(Lcom/coui/appcompat/cardview/CardViewDelegate;)Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    cmpg-float v1, p2, v1

    if-ltz v1, :cond_24

    const/high16 v1, 0x3f000000  # 0.5f

    add-float/2addr p2, v1

    float-to-int p2, p2

    int-to-float p2, p2

    iget v1, v0, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->f:F

    cmpl-float v1, v1, p2

    if-nez v1, :cond_18

    goto :goto_20

    :cond_18
    iput p2, v0, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->f:F

    const/4 p2, 0x1

    iput-boolean p2, v0, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->l:Z

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :goto_20
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/cardview/CardViewBaseImpl;->n(Lcom/coui/appcompat/cardview/CardViewDelegate;)V

    return-void

    :cond_24
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid radius "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, ". Must be >= 0"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public c(Lcom/coui/appcompat/cardview/CardViewDelegate;F)V
    .registers 5

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/cardview/CardViewBaseImpl;->o(Lcom/coui/appcompat/cardview/CardViewDelegate;)Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;

    move-result-object v0

    iget v1, v0, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->j:F

    invoke-virtual {v0, v1, p2}, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->d(FF)V

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/cardview/CardViewBaseImpl;->n(Lcom/coui/appcompat/cardview/CardViewDelegate;)V

    return-void
.end method

.method public d(Lcom/coui/appcompat/cardview/CardViewDelegate;)V
    .registers 4

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/cardview/CardViewBaseImpl;->o(Lcom/coui/appcompat/cardview/CardViewDelegate;)Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;

    move-result-object v0

    invoke-interface {p1}, Lcom/coui/appcompat/cardview/CardViewDelegate;->getPreventCornerOverlap()Z

    move-result v1

    iput-boolean v1, v0, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->o:Z

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/cardview/CardViewBaseImpl;->n(Lcom/coui/appcompat/cardview/CardViewDelegate;)V

    return-void
.end method

.method public e(Lcom/coui/appcompat/cardview/CardViewDelegate;)F
    .registers 5

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/cardview/CardViewBaseImpl;->o(Lcom/coui/appcompat/cardview/CardViewDelegate;)Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;

    move-result-object p0

    iget p1, p0, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->h:F

    iget v0, p0, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->f:F

    iget v1, p0, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->a:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000  # 2.0f

    div-float v2, p1, v1

    add-float/2addr v2, v0

    invoke-static {p1, v2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    mul-float/2addr p1, v1

    iget v0, p0, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->h:F

    iget p0, p0, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->a:I

    int-to-float p0, p0

    add-float/2addr v0, p0

    mul-float/2addr v0, v1

    add-float/2addr v0, p1

    return v0
.end method

.method public f(Lcom/coui/appcompat/cardview/CardViewDelegate;)Landroid/content/res/ColorStateList;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/cardview/CardViewBaseImpl;->o(Lcom/coui/appcompat/cardview/CardViewDelegate;)Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;

    move-result-object p0

    iget-object p0, p0, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->k:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public g(Lcom/coui/appcompat/cardview/CardViewDelegate;)F
    .registers 6

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/cardview/CardViewBaseImpl;->o(Lcom/coui/appcompat/cardview/CardViewDelegate;)Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;

    move-result-object p0

    iget p1, p0, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->h:F

    iget v0, p0, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->f:F

    iget v1, p0, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->a:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    const/high16 v1, 0x3fc00000  # 1.5f

    mul-float v2, p1, v1

    const/high16 v3, 0x40000000  # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v2, v0

    invoke-static {p1, v2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    mul-float/2addr p1, v3

    iget v0, p0, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->h:F

    mul-float/2addr v0, v1

    iget p0, p0, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->a:I

    int-to-float p0, p0

    add-float/2addr v0, p0

    mul-float/2addr v0, v3

    add-float/2addr v0, p1

    return v0
.end method

.method public h(Lcom/coui/appcompat/cardview/CardViewDelegate;)F
    .registers 2

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/cardview/CardViewBaseImpl;->o(Lcom/coui/appcompat/cardview/CardViewDelegate;)Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;

    move-result-object p0

    iget p0, p0, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->h:F

    return p0
.end method

.method public i(Lcom/coui/appcompat/cardview/CardViewDelegate;Landroid/content/res/ColorStateList;)V
    .registers 3
    .param p2  # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/cardview/CardViewBaseImpl;->o(Lcom/coui/appcompat/cardview/CardViewDelegate;)Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->c(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public j(Lcom/coui/appcompat/cardview/CardViewDelegate;)F
    .registers 2

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/cardview/CardViewBaseImpl;->o(Lcom/coui/appcompat/cardview/CardViewDelegate;)Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;

    move-result-object p0

    iget p0, p0, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->j:F

    return p0
.end method

.method public k(Lcom/coui/appcompat/cardview/CardViewDelegate;)F
    .registers 2

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/cardview/CardViewBaseImpl;->o(Lcom/coui/appcompat/cardview/CardViewDelegate;)Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;

    move-result-object p0

    iget p0, p0, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->f:F

    return p0
.end method

.method public l(Lcom/coui/appcompat/cardview/CardViewDelegate;F)V
    .registers 3

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/cardview/CardViewBaseImpl;->o(Lcom/coui/appcompat/cardview/CardViewDelegate;)Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;

    move-result-object p0

    iget p1, p0, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->h:F

    invoke-virtual {p0, p2, p1}, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->d(FF)V

    return-void
.end method

.method public m(Lcom/coui/appcompat/cardview/CardViewDelegate;)V
    .registers 2

    return-void
.end method

.method public n(Lcom/coui/appcompat/cardview/CardViewDelegate;)V
    .registers 6

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/cardview/CardViewBaseImpl;->o(Lcom/coui/appcompat/cardview/CardViewDelegate;)Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->getPadding(Landroid/graphics/Rect;)Z

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/cardview/CardViewBaseImpl;->e(Lcom/coui/appcompat/cardview/CardViewDelegate;)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/cardview/CardViewBaseImpl;->g(Lcom/coui/appcompat/cardview/CardViewDelegate;)F

    move-result p0

    float-to-double v2, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int p0, v2

    invoke-interface {p1, v1, p0}, Lcom/coui/appcompat/cardview/CardViewDelegate;->setMinWidthHeightInternal(II)V

    iget p0, v0, Landroid/graphics/Rect;->left:I

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v2, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-interface {p1, p0, v1, v2, v0}, Lcom/coui/appcompat/cardview/CardViewDelegate;->setShadowPadding(IIII)V

    return-void
.end method

.method public final o(Lcom/coui/appcompat/cardview/CardViewDelegate;)Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;
    .registers 2

    invoke-interface {p1}, Lcom/coui/appcompat/cardview/CardViewDelegate;->getCardBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;

    return-object p0
.end method
