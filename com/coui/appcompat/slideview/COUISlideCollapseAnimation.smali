.class public abstract Lcom/coui/appcompat/slideview/COUISlideCollapseAnimation;
.super Landroid/view/animation/Animation;
.source ""

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field public a:Landroid/view/View;

.field public b:I


# virtual methods
.method public abstract a()V
.end method

.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .registers 5

    const/high16 p2, 0x3f800000  # 1.0f

    cmpl-float p2, p1, p2

    if-nez p2, :cond_e

    iget-object p0, p0, Lcom/coui/appcompat/slideview/COUISlideCollapseAnimation;->a:Landroid/view/View;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_21

    :cond_e
    iget-object p2, p0, Lcom/coui/appcompat/slideview/COUISlideCollapseAnimation;->a:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iget v0, p0, Lcom/coui/appcompat/slideview/COUISlideCollapseAnimation;->b:I

    int-to-float v1, v0

    mul-float/2addr v1, p1

    float-to-int p1, v1

    sub-int/2addr v0, p1

    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p0, p0, Lcom/coui/appcompat/slideview/COUISlideCollapseAnimation;->a:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :goto_21
    return-void
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 2

    invoke-virtual {p0}, Lcom/coui/appcompat/slideview/COUISlideCollapseAnimation;->a()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method

.method public willChangeBounds()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method
