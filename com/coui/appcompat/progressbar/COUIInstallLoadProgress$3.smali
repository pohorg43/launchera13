.class Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress$3;
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

    iput-object p1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress$3;->a:Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 8

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress$3;->a:Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;

    const-string v1, "brightnessHolder"

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iput v1, v0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->W:F

    const-string v0, "narrowHolderX"

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const-string v1, "narrowHolderY"

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress$3;->a:Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;

    const-string v3, "narrowHolderFont"

    invoke-virtual {p1, v3}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, v2, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->f0:F

    iget-object p0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress$3;->a:Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;

    float-to-double v2, v0

    const-wide/high16 v4, 0x3fe0000000000000L  # 0.5

    add-double/2addr v2, v4

    double-to-int p1, v2

    iput p1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->e0:I

    float-to-double v0, v1

    add-double/2addr v0, v4

    double-to-int p1, v0

    iput p1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->d0:I

    invoke-virtual {p0}, Landroid/widget/Button;->invalidate()V

    return-void
.end method
