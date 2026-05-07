.class Lcom/coui/appcompat/cardview/CardViewApi21Impl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/coui/appcompat/cardview/CardViewImpl;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x15
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/coui/appcompat/cardview/CardViewDelegate;Landroid/content/Context;Landroid/content/res/ColorStateList;FFF)V
    .registers 7

    new-instance p2, Lcom/coui/appcompat/cardview/RoundRectDrawable;

    invoke-direct {p2, p3, p4}, Lcom/coui/appcompat/cardview/RoundRectDrawable;-><init>(Landroid/content/res/ColorStateList;F)V

    invoke-interface {p1, p2}, Lcom/coui/appcompat/cardview/CardViewDelegate;->setCardBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-interface {p1}, Lcom/coui/appcompat/cardview/CardViewDelegate;->getCardView()Landroid/view/View;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/view/View;->setClipToOutline(Z)V

    invoke-virtual {p2, p5}, Landroid/view/View;->setElevation(F)V

    invoke-virtual {p0, p1, p6}, Lcom/coui/appcompat/cardview/CardViewApi21Impl;->c(Lcom/coui/appcompat/cardview/CardViewDelegate;F)V

    return-void
.end method

.method public b(Lcom/coui/appcompat/cardview/CardViewDelegate;F)V
    .registers 3

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/cardview/CardViewApi21Impl;->o(Lcom/coui/appcompat/cardview/CardViewDelegate;)Lcom/coui/appcompat/cardview/RoundRectDrawable;

    move-result-object p0

    iget p1, p0, Lcom/coui/appcompat/cardview/RoundRectDrawable;->a:F

    cmpl-float p1, p2, p1

    if-nez p1, :cond_b

    goto :goto_14

    :cond_b
    iput p2, p0, Lcom/coui/appcompat/cardview/RoundRectDrawable;->a:F

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/cardview/RoundRectDrawable;->c(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :goto_14
    return-void
.end method

.method public c(Lcom/coui/appcompat/cardview/CardViewDelegate;F)V
    .registers 7

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/cardview/CardViewApi21Impl;->o(Lcom/coui/appcompat/cardview/CardViewDelegate;)Lcom/coui/appcompat/cardview/RoundRectDrawable;

    move-result-object v0

    invoke-interface {p1}, Lcom/coui/appcompat/cardview/CardViewDelegate;->getUseCompatPadding()Z

    move-result v1

    invoke-interface {p1}, Lcom/coui/appcompat/cardview/CardViewDelegate;->getPreventCornerOverlap()Z

    move-result v2

    iget v3, v0, Lcom/coui/appcompat/cardview/RoundRectDrawable;->e:F

    cmpl-float v3, p2, v3

    if-nez v3, :cond_1b

    iget-boolean v3, v0, Lcom/coui/appcompat/cardview/RoundRectDrawable;->f:Z

    if-ne v3, v1, :cond_1b

    iget-boolean v3, v0, Lcom/coui/appcompat/cardview/RoundRectDrawable;->g:Z

    if-ne v3, v2, :cond_1b

    goto :goto_28

    :cond_1b
    iput p2, v0, Lcom/coui/appcompat/cardview/RoundRectDrawable;->e:F

    iput-boolean v1, v0, Lcom/coui/appcompat/cardview/RoundRectDrawable;->f:Z

    iput-boolean v2, v0, Lcom/coui/appcompat/cardview/RoundRectDrawable;->g:Z

    const/4 p2, 0x0

    invoke-virtual {v0, p2}, Lcom/coui/appcompat/cardview/RoundRectDrawable;->c(Landroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :goto_28
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/cardview/CardViewApi21Impl;->n(Lcom/coui/appcompat/cardview/CardViewDelegate;)V

    return-void
.end method

.method public d(Lcom/coui/appcompat/cardview/CardViewDelegate;)V
    .registers 3

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/cardview/CardViewApi21Impl;->o(Lcom/coui/appcompat/cardview/CardViewDelegate;)Lcom/coui/appcompat/cardview/RoundRectDrawable;

    move-result-object v0

    iget v0, v0, Lcom/coui/appcompat/cardview/RoundRectDrawable;->e:F

    invoke-virtual {p0, p1, v0}, Lcom/coui/appcompat/cardview/CardViewApi21Impl;->c(Lcom/coui/appcompat/cardview/CardViewDelegate;F)V

    return-void
.end method

.method public e(Lcom/coui/appcompat/cardview/CardViewDelegate;)F
    .registers 2

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/cardview/CardViewApi21Impl;->o(Lcom/coui/appcompat/cardview/CardViewDelegate;)Lcom/coui/appcompat/cardview/RoundRectDrawable;

    move-result-object p0

    iget p0, p0, Lcom/coui/appcompat/cardview/RoundRectDrawable;->a:F

    const/high16 p1, 0x40000000  # 2.0f

    mul-float/2addr p0, p1

    return p0
.end method

.method public f(Lcom/coui/appcompat/cardview/CardViewDelegate;)Landroid/content/res/ColorStateList;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/cardview/CardViewApi21Impl;->o(Lcom/coui/appcompat/cardview/CardViewDelegate;)Lcom/coui/appcompat/cardview/RoundRectDrawable;

    move-result-object p0

    iget-object p0, p0, Lcom/coui/appcompat/cardview/RoundRectDrawable;->h:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public g(Lcom/coui/appcompat/cardview/CardViewDelegate;)F
    .registers 2

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/cardview/CardViewApi21Impl;->o(Lcom/coui/appcompat/cardview/CardViewDelegate;)Lcom/coui/appcompat/cardview/RoundRectDrawable;

    move-result-object p0

    iget p0, p0, Lcom/coui/appcompat/cardview/RoundRectDrawable;->a:F

    const/high16 p1, 0x40000000  # 2.0f

    mul-float/2addr p0, p1

    return p0
.end method

.method public h(Lcom/coui/appcompat/cardview/CardViewDelegate;)F
    .registers 2

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/cardview/CardViewApi21Impl;->o(Lcom/coui/appcompat/cardview/CardViewDelegate;)Lcom/coui/appcompat/cardview/RoundRectDrawable;

    move-result-object p0

    iget p0, p0, Lcom/coui/appcompat/cardview/RoundRectDrawable;->e:F

    return p0
.end method

.method public i(Lcom/coui/appcompat/cardview/CardViewDelegate;Landroid/content/res/ColorStateList;)V
    .registers 3
    .param p2  # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/cardview/CardViewApi21Impl;->o(Lcom/coui/appcompat/cardview/CardViewDelegate;)Lcom/coui/appcompat/cardview/RoundRectDrawable;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/coui/appcompat/cardview/RoundRectDrawable;->b(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public j(Lcom/coui/appcompat/cardview/CardViewDelegate;)F
    .registers 2

    invoke-interface {p1}, Lcom/coui/appcompat/cardview/CardViewDelegate;->getCardView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getElevation()F

    move-result p0

    return p0
.end method

.method public k(Lcom/coui/appcompat/cardview/CardViewDelegate;)F
    .registers 2

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/cardview/CardViewApi21Impl;->o(Lcom/coui/appcompat/cardview/CardViewDelegate;)Lcom/coui/appcompat/cardview/RoundRectDrawable;

    move-result-object p0

    iget p0, p0, Lcom/coui/appcompat/cardview/RoundRectDrawable;->a:F

    return p0
.end method

.method public l(Lcom/coui/appcompat/cardview/CardViewDelegate;F)V
    .registers 3

    invoke-interface {p1}, Lcom/coui/appcompat/cardview/CardViewDelegate;->getCardView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/view/View;->setElevation(F)V

    return-void
.end method

.method public m(Lcom/coui/appcompat/cardview/CardViewDelegate;)V
    .registers 3

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/cardview/CardViewApi21Impl;->o(Lcom/coui/appcompat/cardview/CardViewDelegate;)Lcom/coui/appcompat/cardview/RoundRectDrawable;

    move-result-object v0

    iget v0, v0, Lcom/coui/appcompat/cardview/RoundRectDrawable;->e:F

    invoke-virtual {p0, p1, v0}, Lcom/coui/appcompat/cardview/CardViewApi21Impl;->c(Lcom/coui/appcompat/cardview/CardViewDelegate;F)V

    return-void
.end method

.method public n(Lcom/coui/appcompat/cardview/CardViewDelegate;)V
    .registers 6

    invoke-interface {p1}, Lcom/coui/appcompat/cardview/CardViewDelegate;->getUseCompatPadding()Z

    move-result v0

    if-nez v0, :cond_b

    const/4 p0, 0x0

    invoke-interface {p1, p0, p0, p0, p0}, Lcom/coui/appcompat/cardview/CardViewDelegate;->setShadowPadding(IIII)V

    return-void

    :cond_b
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/cardview/CardViewApi21Impl;->o(Lcom/coui/appcompat/cardview/CardViewDelegate;)Lcom/coui/appcompat/cardview/RoundRectDrawable;

    move-result-object v0

    iget v0, v0, Lcom/coui/appcompat/cardview/RoundRectDrawable;->e:F

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/cardview/CardViewApi21Impl;->o(Lcom/coui/appcompat/cardview/CardViewDelegate;)Lcom/coui/appcompat/cardview/RoundRectDrawable;

    move-result-object p0

    iget p0, p0, Lcom/coui/appcompat/cardview/RoundRectDrawable;->a:F

    invoke-interface {p1}, Lcom/coui/appcompat/cardview/CardViewDelegate;->getPreventCornerOverlap()Z

    move-result v1

    invoke-static {v0, p0, v1}, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->a(FFZ)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-interface {p1}, Lcom/coui/appcompat/cardview/CardViewDelegate;->getPreventCornerOverlap()Z

    move-result v2

    invoke-static {v0, p0, v2}, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->b(FFZ)F

    move-result p0

    float-to-double v2, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int p0, v2

    invoke-interface {p1, v1, p0, v1, p0}, Lcom/coui/appcompat/cardview/CardViewDelegate;->setShadowPadding(IIII)V

    return-void
.end method

.method public final o(Lcom/coui/appcompat/cardview/CardViewDelegate;)Lcom/coui/appcompat/cardview/RoundRectDrawable;
    .registers 2

    invoke-interface {p1}, Lcom/coui/appcompat/cardview/CardViewDelegate;->getCardBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Lcom/coui/appcompat/cardview/RoundRectDrawable;

    return-object p0
.end method
