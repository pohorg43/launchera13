.class public Lcom/coui/appcompat/roundRect/COUIRoundDrawable;
.super Landroid/graphics/drawable/Drawable;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;
    }
.end annotation


# instance fields
.field public a:Landroid/graphics/Paint;

.field public b:Landroid/graphics/Paint;

.field public c:Z

.field public d:Landroid/graphics/RectF;

.field public e:Landroid/graphics/Path;

.field public f:Landroid/graphics/Path;

.field public g:Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;

.field public h:Landroid/graphics/PorterDuffColorFilter;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public i:Landroid/graphics/PorterDuffColorFilter;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    new-instance v0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;

    invoke-direct {v0}, Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;-><init>()V

    invoke-direct {p0, v0}, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;-><init>(Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;)V

    return-void
.end method

.method public constructor <init>(Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;)V
    .registers 4
    .param p1  # Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->a:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->b:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->d:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->e:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->f:Landroid/graphics/Path;

    iput-object p1, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->g:Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;

    iget-object p1, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->a:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p0, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->b:Landroid/graphics/Paint;

    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .registers 5
    .param p1  # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2  # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    if-eqz p1, :cond_14

    if-nez p2, :cond_5

    goto :goto_14

    :cond_5
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p0

    invoke-direct {v0, p0, p2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_15

    :cond_14
    :goto_14
    const/4 v0, 0x0

    :goto_15
    return-object v0
.end method

.method public b(I)V
    .registers 4
    .param p1  # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iget-object v0, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->g:Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;

    iget-object v1, v0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;->b:Landroid/content/res/ColorStateList;

    if-eq v1, p1, :cond_13

    iput-object p1, v0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;->b:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->onStateChange([I)Z

    :cond_13
    return-void
.end method

.method public c(F)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->g:Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;

    iput p1, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;->i:F

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 8
    .param p1  # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->a:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->h:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v0, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->a:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->a:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->g:Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;

    iget v2, v2, Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;->h:I

    ushr-int/lit8 v3, v2, 0x7

    add-int/2addr v2, v3

    mul-int/2addr v2, v0

    ushr-int/lit8 v2, v2, 0x8

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->b:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->g:Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;

    iget v2, v2, Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;->g:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->b:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->i:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v1, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->b:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    iget-object v2, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->b:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->g:Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;

    iget v3, v3, Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;->h:I

    ushr-int/lit8 v4, v3, 0x7

    add-int/2addr v3, v4

    mul-int/2addr v3, v1

    ushr-int/lit8 v3, v3, 0x8

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-boolean v2, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->c:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_74

    iget-object v2, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->f:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->d:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-object v4, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->d:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->g:Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;

    iget v5, v5, Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;->i:F

    invoke-static {v2, v4, v5}, Lcom/coui/appcompat/roundRect/COUIShapePath;->a(Landroid/graphics/Path;Landroid/graphics/RectF;F)Landroid/graphics/Path;

    iput-object v2, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->f:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->e:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->d:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-object v4, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->d:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->g:Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;

    iget v5, v5, Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;->i:F

    invoke-static {v2, v4, v5}, Lcom/coui/appcompat/roundRect/COUIShapePath;->a(Landroid/graphics/Path;Landroid/graphics/RectF;F)Landroid/graphics/Path;

    iput-object v2, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->e:Landroid/graphics/Path;

    iput-boolean v3, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->c:Z

    :cond_74
    iget-object v2, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->a:Landroid/graphics/Paint;

    const/4 v4, 0x1

    if-eqz v2, :cond_7f

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    if-nez v2, :cond_83

    :cond_7f
    iget-object v2, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->h:Landroid/graphics/PorterDuffColorFilter;

    if-eqz v2, :cond_85

    :cond_83
    move v2, v4

    goto :goto_86

    :cond_85
    move v2, v3

    :goto_86
    if-eqz v2, :cond_8f

    iget-object v2, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->e:Landroid/graphics/Path;

    iget-object v5, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_8f
    iget-object v2, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->b:Landroid/graphics/Paint;

    if-eqz v2, :cond_a4

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    const/4 v5, 0x0

    cmpl-float v2, v2, v5

    if-lez v2, :cond_a4

    iget-object v2, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->b:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    if-nez v2, :cond_a8

    :cond_a4
    iget-object v2, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->i:Landroid/graphics/PorterDuffColorFilter;

    if-eqz v2, :cond_a9

    :cond_a8
    move v3, v4

    :cond_a9
    if-eqz v3, :cond_b2

    iget-object v2, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->f:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_b2
    iget-object p1, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p0, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->b:Landroid/graphics/Paint;

    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->g:Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;

    return-object p0
.end method

.method public getOpacity()I
    .registers 1

    const/4 p0, -0x3

    return p0
.end method

.method public invalidateSelf()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->c:Z

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public isStateful()Z
    .registers 2

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-nez v0, :cond_39

    iget-object v0, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->g:Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;

    iget-object v0, v0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;->e:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_39

    :cond_12
    iget-object v0, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->g:Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;

    iget-object v0, v0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;->d:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_39

    :cond_1e
    iget-object v0, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->g:Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;

    iget-object v0, v0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;->c:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_2a

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_39

    :cond_2a
    iget-object p0, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->g:Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;

    iget-object p0, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;->b:Landroid/content/res/ColorStateList;

    if-eqz p0, :cond_37

    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result p0

    if-eqz p0, :cond_37

    goto :goto_39

    :cond_37
    const/4 p0, 0x0

    goto :goto_3a

    :cond_39
    :goto_39
    const/4 p0, 0x1

    :goto_3a
    return p0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .registers 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;

    iget-object v1, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->g:Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;

    invoke-direct {v0, v1}, Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;-><init>(Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;)V

    iput-object v0, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->g:Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;

    return-object p0
.end method

.method public onBoundsChange(Landroid/graphics/Rect;)V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->c:Z

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    return-void
.end method

.method public onStateChange([I)Z
    .registers 6

    iget-object v0, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->g:Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;

    iget-object v0, v0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;->b:Landroid/content/res/ColorStateList;

    const/4 v1, 0x1

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->a:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    iget-object v2, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->g:Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;

    iget-object v2, v2, Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;->b:Landroid/content/res/ColorStateList;

    invoke-virtual {v2, p1, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    if-eq v0, v2, :cond_1e

    iget-object v0, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    move v0, v1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    iget-object v2, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->g:Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;

    iget-object v2, v2, Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;->c:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_3b

    iget-object v2, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->b:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    iget-object v3, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->g:Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;

    iget-object v3, v3, Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;->c:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, p1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    if-eq v2, p1, :cond_3b

    iget-object v0, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_3c

    :cond_3b
    move v1, v0

    :goto_3c
    if-eqz v1, :cond_41

    invoke-virtual {p0}, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->invalidateSelf()V

    :cond_41
    return v1
.end method

.method public setAlpha(I)V
    .registers 4
    .param p1  # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param

    iget-object v0, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->g:Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;

    iget v1, v0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;->h:I

    if-eq v1, p1, :cond_b

    iput p1, v0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;->h:I

    invoke-virtual {p0}, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->invalidateSelf()V

    :cond_b
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 4
    .param p1  # Landroid/graphics/ColorFilter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->g:Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;

    iget-object v1, v0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;->a:Landroid/graphics/ColorFilter;

    if-eq v1, p1, :cond_b

    iput-object p1, v0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;->a:Landroid/graphics/ColorFilter;

    invoke-virtual {p0}, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->invalidateSelf()V

    :cond_b
    return-void
.end method

.method public setTint(I)V
    .registers 2
    .param p1  # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .registers 3
    .param p1  # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->g:Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;

    iput-object p1, v0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;->e:Landroid/content/res/ColorStateList;

    iget-object v0, v0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;->f:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, p1, v0}, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->i:Landroid/graphics/PorterDuffColorFilter;

    iput-object p1, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->h:Landroid/graphics/PorterDuffColorFilter;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->c:Z

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 3
    .param p1  # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->g:Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;

    iput-object p1, v0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;->f:Landroid/graphics/PorterDuff$Mode;

    iget-object v0, v0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;->e:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0, p1}, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->i:Landroid/graphics/PorterDuffColorFilter;

    iput-object p1, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->h:Landroid/graphics/PorterDuffColorFilter;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->c:Z

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
