.class public Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonTouchAnimation;
.super Landroid/view/animation/ScaleAnimation;
.source ""


# instance fields
.field public a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public final b:F

.field public final c:F

.field public d:I


# direct methods
.method public constructor <init>(FFFF)V
    .registers 12

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    const/4 p3, 0x0

    iput p3, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonTouchAnimation;->d:I

    iput p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonTouchAnimation;->b:F

    iput p2, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonTouchAnimation;->c:F

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .registers 8

    invoke-super {p0, p1, p2}, Landroid/view/animation/ScaleAnimation;->applyTransformation(FLandroid/view/animation/Transformation;)V

    iget-object p2, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonTouchAnimation;->a:Ljava/lang/ref/WeakReference;

    if-eqz p2, :cond_8a

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    const/high16 v1, -0x80000000

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    goto :goto_2e

    :cond_1a
    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v0, :cond_2d

    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v0

    goto :goto_2e

    :cond_2d
    move v0, v1

    :goto_2e
    if-eq v0, v1, :cond_8a

    iget v1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonTouchAnimation;->b:F

    iget v2, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonTouchAnimation;->c:F

    cmpl-float v3, v1, v2

    const/high16 v4, 0x3f800000  # 1.0f

    if-lez v3, :cond_40

    const v1, -0x41b33334  # -0.19999999f

    mul-float/2addr p1, v1

    add-float/2addr v4, p1

    goto :goto_4d

    :cond_40
    cmpg-float v1, v1, v2

    if-gez v1, :cond_4d

    const v1, 0x3f4ccccd  # 0.8f

    const v2, 0x3e4ccccc  # 0.19999999f

    mul-float/2addr p1, v2

    add-float v4, p1, v1

    :cond_4d
    :goto_4d
    const/4 p1, 0x3

    new-array p1, p1, [F

    invoke-static {v0, p1}, Landroidx/core/graphics/ColorUtils;->colorToHSL(I[F)V

    const/4 v0, 0x2

    aget v1, p1, v0

    mul-float/2addr v1, v4

    aput v1, p1, v0

    invoke-static {p1}, Landroidx/core/graphics/ColorUtils;->HSLToColor([F)I

    move-result p1

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    const/16 v1, 0xff

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    invoke-static {p1, v0, v2, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonTouchAnimation;->d:I

    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget p0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonTouchAnimation;->d:I

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_8a
    return-void
.end method

.method public getBackgroundColor()I
    .registers 1

    iget p0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonTouchAnimation;->d:I

    return p0
.end method
