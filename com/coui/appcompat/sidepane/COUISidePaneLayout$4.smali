.class Lcom/coui/appcompat/sidepane/COUISidePaneLayout$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:F

.field public final synthetic b:Lcom/coui/appcompat/sidepane/COUISidePaneLayout;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/sidepane/COUISidePaneLayout;F)V
    .registers 3

    iput-object p1, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout$4;->b:Lcom/coui/appcompat/sidepane/COUISidePaneLayout;

    iput p2, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout$4;->a:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 6

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    iget v1, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout$4;->a:F

    const/high16 v2, 0x3f800000  # 1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_13

    iget-object v1, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout$4;->b:Lcom/coui/appcompat/sidepane/COUISidePaneLayout;

    iget v1, v1, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->l:F

    mul-float/2addr v1, v0

    float-to-int v0, v1

    goto :goto_1b

    :cond_13
    iget-object v1, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout$4;->b:Lcom/coui/appcompat/sidepane/COUISidePaneLayout;

    iget v1, v1, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->l:F

    sub-float v0, v2, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    :goto_1b
    iget-object v1, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout$4;->b:Lcom/coui/appcompat/sidepane/COUISidePaneLayout;

    iget v1, v1, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->s:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_28

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    sub-float/2addr v2, p1

    goto :goto_2c

    :cond_28
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v2

    :goto_2c
    iget-object p1, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout$4;->b:Lcom/coui/appcompat/sidepane/COUISidePaneLayout;

    iget-object v1, p1, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->e:Landroid/view/View;

    if-eqz v1, :cond_44

    iget-object p1, p1, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->h:Lcom/coui/appcompat/sidepane/COUISidePaneLayout$PanelSlideListener;

    if-eqz p1, :cond_39

    invoke-interface {p1, v1, v2}, Lcom/coui/appcompat/sidepane/COUISidePaneLayout$PanelSlideListener;->onPanelSlide(Landroid/view/View;F)V

    :cond_39
    iget-object p1, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout$4;->b:Lcom/coui/appcompat/sidepane/COUISidePaneLayout;

    iget-object v1, p1, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->j:Lcom/coui/appcompat/sidepane/COUISidePaneLayout$PanelSlideListener;

    if-eqz v1, :cond_44

    iget-object p1, p1, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->e:Landroid/view/View;

    invoke-interface {v1, p1, v2}, Lcom/coui/appcompat/sidepane/COUISidePaneLayout$PanelSlideListener;->onPanelSlide(Landroid/view/View;F)V

    :cond_44
    iget-object p0, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout$4;->b:Lcom/coui/appcompat/sidepane/COUISidePaneLayout;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->e(I)V

    return-void
.end method
