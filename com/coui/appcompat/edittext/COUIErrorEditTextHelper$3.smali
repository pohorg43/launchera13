.class Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper$3;->a:Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper$3;->a:Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;

    iget-boolean v1, v0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->p:Z

    if-eqz v1, :cond_12

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, v0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->r:F

    :cond_12
    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper$3;->a:Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->a:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->invalidate()V

    return-void
.end method
