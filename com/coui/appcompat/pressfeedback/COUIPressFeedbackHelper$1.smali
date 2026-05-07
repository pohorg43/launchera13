.class Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->b(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper$1;->a:Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 5

    iget-object v0, p0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper$1;->a:Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;

    const-string v1, "scaleHolder"

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iput v1, v0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->d:F

    iget-object v0, p0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper$1;->a:Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;

    const-string v1, "brightnessHolder"

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iput v1, v0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->e:F

    iget-object v0, p0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper$1;->a:Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;

    const-string v1, "alphaHolder"

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iput v1, v0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->j:F

    iget-object v0, p0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper$1;->a:Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;

    const-string v1, "blackAlphaHolder"

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, v0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->f:F

    iget-object p1, p0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper$1;->a:Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;

    iget v0, p1, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->d:F

    iget-object v1, p1, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->h:Landroid/view/View;

    iget p1, p1, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->i:F

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-virtual {v1, p1}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v1, p1}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    iget-object p0, p0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper$1;->a:Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;

    iget p1, p0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->j:F

    iget-object v0, p0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v1

    cmpl-float v1, p1, v1

    if-eqz v1, :cond_71

    iget p0, p0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->g:I

    const/4 v1, 0x1

    if-eq p0, v1, :cond_71

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_71
    return-void
.end method
