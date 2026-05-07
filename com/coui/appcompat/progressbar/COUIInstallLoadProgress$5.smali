.class Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->n(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress$5;->a:Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress$5;->a:Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;

    const-string v1, "circleRadiusHolder"

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iput v1, v0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->F:F

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress$5;->a:Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;

    const-string v1, "circleBrightnessHolder"

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iput v1, v0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->W:F

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress$5;->a:Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;

    const-string v1, "circleInAlphaHolder"

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->G:I

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress$5;->a:Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;

    const-string v1, "circleOutAlphaHolder"

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->H:I

    iget-object p0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress$5;->a:Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;

    invoke-virtual {p0}, Landroid/widget/Button;->invalidate()V

    return-void
.end method
