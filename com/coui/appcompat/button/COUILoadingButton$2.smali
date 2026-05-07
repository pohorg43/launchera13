.class Lcom/coui/appcompat/button/COUILoadingButton$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/button/COUILoadingButton;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/button/COUILoadingButton;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/button/COUILoadingButton$2;->a:Lcom/coui/appcompat/button/COUILoadingButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object p0, p0, Lcom/coui/appcompat/button/COUILoadingButton$2;->a:Lcom/coui/appcompat/button/COUILoadingButton;

    float-to-int p1, p1

    iput p1, p0, Lcom/coui/appcompat/button/COUILoadingButton;->r:I

    invoke-virtual {p0}, Landroid/widget/Button;->invalidate()V

    return-void
.end method
