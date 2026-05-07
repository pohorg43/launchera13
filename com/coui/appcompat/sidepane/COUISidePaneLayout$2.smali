.class Lcom/coui/appcompat/sidepane/COUISidePaneLayout$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/sidepane/COUISidePaneLayout;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/sidepane/COUISidePaneLayout;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout$2;->a:Lcom/coui/appcompat/sidepane/COUISidePaneLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 6

    iget-object v0, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout$2;->a:Lcom/coui/appcompat/sidepane/COUISidePaneLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5a

    iget-object v0, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout$2;->a:Lcom/coui/appcompat/sidepane/COUISidePaneLayout;

    iget v2, v0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->s:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_33

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout$2;->a:Lcom/coui/appcompat/sidepane/COUISidePaneLayout;

    invoke-virtual {v1}, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->c()Z

    move-result v1

    iget-object p0, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout$2;->a:Lcom/coui/appcompat/sidepane/COUISidePaneLayout;

    if-eqz v1, :cond_21

    iget p0, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->m:F

    goto :goto_24

    :cond_21
    iget p0, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->m:F

    neg-float p0, p0

    :goto_24
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    mul-float/2addr p1, p0

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_5a

    :cond_33
    if-nez v2, :cond_5a

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout$2;->a:Lcom/coui/appcompat/sidepane/COUISidePaneLayout;

    invoke-virtual {v1}, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->c()Z

    move-result v1

    const/high16 v2, 0x3f800000  # 1.0f

    iget-object p0, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout$2;->a:Lcom/coui/appcompat/sidepane/COUISidePaneLayout;

    if-eqz v1, :cond_48

    iget p0, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->m:F

    goto :goto_4b

    :cond_48
    iget p0, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->m:F

    neg-float p0, p0

    :goto_4b
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    sub-float/2addr v2, p1

    mul-float/2addr v2, p0

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    :cond_5a
    :goto_5a
    return-void
.end method
