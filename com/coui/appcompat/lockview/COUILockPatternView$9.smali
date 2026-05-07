.class Lcom/coui/appcompat/lockview/COUILockPatternView$9;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/lockview/COUILockPatternView$CellState;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/lockview/COUILockPatternView;Lcom/coui/appcompat/lockview/COUILockPatternView$CellState;)V
    .registers 3

    iput-object p2, p0, Lcom/coui/appcompat/lockview/COUILockPatternView$9;->a:Lcom/coui/appcompat/lockview/COUILockPatternView$CellState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/lockview/COUILockPatternView$9;->a:Lcom/coui/appcompat/lockview/COUILockPatternView$CellState;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/lockview/COUILockPatternView$CellState;->j:F

    return-void
.end method
