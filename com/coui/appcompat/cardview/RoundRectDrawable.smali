.class Lcom/coui/appcompat/cardview/RoundRectDrawable;
.super Landroid/graphics/drawable/Drawable;
.source ""


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x15
.end annotation


# instance fields
.field public a:F

.field public final b:Landroid/graphics/Paint;

.field public final c:Landroid/graphics/RectF;

.field public final d:Landroid/graphics/Rect;

.field public e:F

.field public f:Z

.field public g:Z

.field public h:Landroid/content/res/ColorStateList;

.field public i:Landroid/graphics/PorterDuffColorFilter;

.field public j:Landroid/content/res/ColorStateList;

.field public k:Landroid/graphics/PorterDuff$Mode;


# direct methods
.method public constructor <init>(Landroid/content/res/ColorStateList;F)V
    .registers 4

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/cardview/RoundRectDrawable;->f:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/cardview/RoundRectDrawable;->g:Z

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Lcom/coui/appcompat/cardview/RoundRectDrawable;->k:Landroid/graphics/PorterDuff$Mode;

    iput p2, p0, Lcom/coui/appcompat/cardview/RoundRectDrawable;->a:F

    new-instance p2, Landroid/graphics/Paint;

    const/4 v0, 0x5

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/coui/appcompat/cardview/RoundRectDrawable;->b:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/cardview/RoundRectDrawable;->b(Landroid/content/res/ColorStateList;)V

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/cardview/RoundRectDrawable;->c:Landroid/graphics/RectF;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/cardview/RoundRectDrawable;->d:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .registers 4

    if-eqz p1, :cond_14

    if-nez p2, :cond_5

    goto :goto_14

    :cond_5
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p0

    new-instance p1, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {p1, p0, p2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    return-object p1

    :cond_14
    :goto_14
    const/4 p0, 0x0

    return-object p0
.end method

.method public final b(Landroid/content/res/ColorStateList;)V
    .registers 4

    if-nez p1, :cond_7

    const/4 p1, 0x0

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    :cond_7
    iput-object p1, p0, Lcom/coui/appcompat/cardview/RoundRectDrawable;->h:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Lcom/coui/appcompat/cardview/RoundRectDrawable;->b:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v1

    iget-object p0, p0, Lcom/coui/appcompat/cardview/RoundRectDrawable;->h:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p0

    invoke-virtual {p1, v1, p0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public final c(Landroid/graphics/Rect;)V
    .registers 7

    if-nez p1, :cond_6

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    :cond_6
    iget-object v0, p0, Lcom/coui/appcompat/cardview/RoundRectDrawable;->c:Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v3, p1, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/coui/appcompat/cardview/RoundRectDrawable;->d:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-boolean p1, p0, Lcom/coui/appcompat/cardview/RoundRectDrawable;->f:Z

    if-eqz p1, :cond_4c

    iget p1, p0, Lcom/coui/appcompat/cardview/RoundRectDrawable;->e:F

    iget v0, p0, Lcom/coui/appcompat/cardview/RoundRectDrawable;->a:F

    iget-boolean v1, p0, Lcom/coui/appcompat/cardview/RoundRectDrawable;->g:Z

    invoke-static {p1, v0, v1}, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->b(FFZ)F

    move-result p1

    iget v0, p0, Lcom/coui/appcompat/cardview/RoundRectDrawable;->e:F

    iget v1, p0, Lcom/coui/appcompat/cardview/RoundRectDrawable;->a:F

    iget-boolean v2, p0, Lcom/coui/appcompat/cardview/RoundRectDrawable;->g:Z

    invoke-static {v0, v1, v2}, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->a(FFZ)F

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/cardview/RoundRectDrawable;->d:Landroid/graphics/Rect;

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int p1, v2

    invoke-virtual {v1, v0, p1}, Landroid/graphics/Rect;->inset(II)V

    iget-object p1, p0, Lcom/coui/appcompat/cardview/RoundRectDrawable;->c:Landroid/graphics/RectF;

    iget-object p0, p0, Lcom/coui/appcompat/cardview/RoundRectDrawable;->d:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    :cond_4c
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 7

    iget-object v0, p0, Lcom/coui/appcompat/cardview/RoundRectDrawable;->b:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/coui/appcompat/cardview/RoundRectDrawable;->i:Landroid/graphics/PorterDuffColorFilter;

    if-eqz v1, :cond_13

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v1

    if-nez v1, :cond_13

    iget-object v1, p0, Lcom/coui/appcompat/cardview/RoundRectDrawable;->i:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    const/4 v1, 0x1

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    invoke-static {}, Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;->a()Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;

    move-result-object v2

    iget-object v3, p0, Lcom/coui/appcompat/cardview/RoundRectDrawable;->c:Landroid/graphics/RectF;

    iget v4, p0, Lcom/coui/appcompat/cardview/RoundRectDrawable;->a:F

    iget-object v2, v2, Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;->a:Landroid/graphics/Path;

    invoke-static {v2, v3, v4}, Lcom/coui/appcompat/roundRect/COUIShapePath;->a(Landroid/graphics/Path;Landroid/graphics/RectF;F)Landroid/graphics/Path;

    iget-object p0, p0, Lcom/coui/appcompat/cardview/RoundRectDrawable;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    if-eqz v1, :cond_2c

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_2c
    return-void
.end method

.method public getOpacity()I
    .registers 1

    const/4 p0, -0x3

    return p0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .registers 3

    iget-object v0, p0, Lcom/coui/appcompat/cardview/RoundRectDrawable;->d:Landroid/graphics/Rect;

    iget p0, p0, Lcom/coui/appcompat/cardview/RoundRectDrawable;->a:F

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    return-void
.end method

.method public isStateful()Z
    .registers 2

    iget-object v0, p0, Lcom/coui/appcompat/cardview/RoundRectDrawable;->j:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_1a

    :cond_a
    iget-object v0, p0, Lcom/coui/appcompat/cardview/RoundRectDrawable;->h:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_1a

    :cond_14
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result p0

    if-eqz p0, :cond_1c

    :cond_1a
    const/4 p0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 p0, 0x0

    :goto_1d
    return p0
.end method

.method public onBoundsChange(Landroid/graphics/Rect;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/cardview/RoundRectDrawable;->c(Landroid/graphics/Rect;)V

    return-void
.end method

.method public onStateChange([I)Z
    .registers 5

    iget-object v0, p0, Lcom/coui/appcompat/cardview/RoundRectDrawable;->h:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    iget-object v0, p0, Lcom/coui/appcompat/cardview/RoundRectDrawable;->b:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    const/4 v1, 0x1

    if-eq p1, v0, :cond_15

    move v0, v1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    if-eqz v0, :cond_1d

    iget-object v2, p0, Lcom/coui/appcompat/cardview/RoundRectDrawable;->b:Landroid/graphics/Paint;

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_1d
    iget-object p1, p0, Lcom/coui/appcompat/cardview/RoundRectDrawable;->j:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_2c

    iget-object v2, p0, Lcom/coui/appcompat/cardview/RoundRectDrawable;->k:Landroid/graphics/PorterDuff$Mode;

    if-eqz v2, :cond_2c

    invoke-virtual {p0, p1, v2}, Lcom/coui/appcompat/cardview/RoundRectDrawable;->a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/cardview/RoundRectDrawable;->i:Landroid/graphics/PorterDuffColorFilter;

    return v1

    :cond_2c
    return v0
.end method

.method public setAlpha(I)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/cardview/RoundRectDrawable;->b:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/cardview/RoundRectDrawable;->b:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .registers 3

    iput-object p1, p0, Lcom/coui/appcompat/cardview/RoundRectDrawable;->j:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Lcom/coui/appcompat/cardview/RoundRectDrawable;->k:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, p1, v0}, Lcom/coui/appcompat/cardview/RoundRectDrawable;->a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/cardview/RoundRectDrawable;->i:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 3

    iput-object p1, p0, Lcom/coui/appcompat/cardview/RoundRectDrawable;->k:Landroid/graphics/PorterDuff$Mode;

    iget-object v0, p0, Lcom/coui/appcompat/cardview/RoundRectDrawable;->j:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0, p1}, Lcom/coui/appcompat/cardview/RoundRectDrawable;->a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/cardview/RoundRectDrawable;->i:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
