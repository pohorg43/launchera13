.class Lcom/coui/appcompat/chip/COUIChip$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/chip/COUIChip;->c(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lcom/coui/appcompat/chip/COUIChip;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/chip/COUIChip;Z)V
    .registers 3

    iput-object p1, p0, Lcom/coui/appcompat/chip/COUIChip$1;->b:Lcom/coui/appcompat/chip/COUIChip;

    iput-boolean p2, p0, Lcom/coui/appcompat/chip/COUIChip$1;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 6

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/coui/appcompat/chip/COUIChip$1;->b:Lcom/coui/appcompat/chip/COUIChip;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iput v3, v2, Lcom/coui/appcompat/chip/COUIChip;->j:F

    iget-object v2, p0, Lcom/coui/appcompat/chip/COUIChip$1;->b:Lcom/coui/appcompat/chip/COUIChip;

    iget-boolean v2, v2, Lcom/coui/appcompat/chip/COUIChip;->l:Z

    if-eqz v2, :cond_34

    iget-boolean v2, p0, Lcom/coui/appcompat/chip/COUIChip$1;->a:Z

    if-eqz v2, :cond_34

    long-to-float v0, v0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v1

    long-to-float v1, v1

    const v2, 0x3f4ccccd  # 0.8f

    mul-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_34

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object p0, p0, Lcom/coui/appcompat/chip/COUIChip$1;->b:Lcom/coui/appcompat/chip/COUIChip;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/chip/COUIChip;->c(Z)V

    goto :goto_3b

    :cond_34
    iget-object p0, p0, Lcom/coui/appcompat/chip/COUIChip$1;->b:Lcom/coui/appcompat/chip/COUIChip;

    iget p1, p0, Lcom/coui/appcompat/chip/COUIChip;->j:F

    invoke-static {p0, p1}, Lcom/coui/appcompat/chip/COUIChip;->a(Lcom/coui/appcompat/chip/COUIChip;F)V

    :goto_3b
    return-void
.end method
