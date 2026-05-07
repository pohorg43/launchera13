.class Lcom/coui/appcompat/lockview/COUILockPatternView$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/lockview/COUILockPatternView$CellState;

.field public final synthetic b:F

.field public final synthetic c:F

.field public final synthetic d:F

.field public final synthetic e:F

.field public final synthetic f:Lcom/coui/appcompat/lockview/COUILockPatternView;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/lockview/COUILockPatternView;Lcom/coui/appcompat/lockview/COUILockPatternView$CellState;FFFF)V
    .registers 7

    iput-object p1, p0, Lcom/coui/appcompat/lockview/COUILockPatternView$5;->f:Lcom/coui/appcompat/lockview/COUILockPatternView;

    iput-object p2, p0, Lcom/coui/appcompat/lockview/COUILockPatternView$5;->a:Lcom/coui/appcompat/lockview/COUILockPatternView$CellState;

    iput p3, p0, Lcom/coui/appcompat/lockview/COUILockPatternView$5;->b:F

    iput p4, p0, Lcom/coui/appcompat/lockview/COUILockPatternView$5;->c:F

    iput p5, p0, Lcom/coui/appcompat/lockview/COUILockPatternView$5;->d:F

    iput p6, p0, Lcom/coui/appcompat/lockview/COUILockPatternView$5;->e:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 6

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/coui/appcompat/lockview/COUILockPatternView$5;->a:Lcom/coui/appcompat/lockview/COUILockPatternView$CellState;

    const/high16 v1, 0x3f800000  # 1.0f

    sub-float/2addr v1, p1

    iget v2, p0, Lcom/coui/appcompat/lockview/COUILockPatternView$5;->b:F

    mul-float/2addr v2, v1

    iget v3, p0, Lcom/coui/appcompat/lockview/COUILockPatternView$5;->c:F

    mul-float/2addr v3, p1

    add-float/2addr v3, v2

    iput v3, v0, Lcom/coui/appcompat/lockview/COUILockPatternView$CellState;->e:F

    iget v2, p0, Lcom/coui/appcompat/lockview/COUILockPatternView$5;->d:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/coui/appcompat/lockview/COUILockPatternView$5;->e:F

    mul-float/2addr p1, v2

    add-float/2addr p1, v1

    iput p1, v0, Lcom/coui/appcompat/lockview/COUILockPatternView$CellState;->f:F

    iget-object p0, p0, Lcom/coui/appcompat/lockview/COUILockPatternView$5;->f:Lcom/coui/appcompat/lockview/COUILockPatternView;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
