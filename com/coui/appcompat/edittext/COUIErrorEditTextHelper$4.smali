.class Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper$4;->a:Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper$4;->a:Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;

    iget-boolean v0, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->p:Z

    if-eqz v0, :cond_12

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->s:F

    :cond_12
    return-void
.end method
