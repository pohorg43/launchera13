.class Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress$2;->a:Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 5

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress$2;->a:Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;

    const-string v1, "circleRadiusHolder"

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iput v1, v0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->F:F

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress$2;->a:Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;

    const-string v1, "circleBrightnessHolder"

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iput v1, v0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->W:F

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress$2;->a:Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;

    iget-boolean v0, v0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->n0:Z

    if-eqz v0, :cond_42

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v0

    long-to-float v0, v0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v1

    long-to-float p1, v1

    const v1, 0x3ecccccd  # 0.4f

    mul-float/2addr p1, v1

    cmpl-float p1, v0, p1

    if-lez p1, :cond_42

    iget-object p0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress$2;->a:Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->n0:Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->n(Z)V

    goto :goto_47

    :cond_42
    iget-object p0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress$2;->a:Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;

    invoke-virtual {p0}, Landroid/widget/Button;->invalidate()V

    :goto_47
    return-void
.end method
