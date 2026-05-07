.class Lcom/coui/appcompat/lockview/COUILockPatternView$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/lockview/COUILockPatternView;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/lockview/COUILockPatternView;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/lockview/COUILockPatternView$3;->a:Lcom/coui/appcompat/lockview/COUILockPatternView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 9

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const/4 v2, 0x3

    if-ge v1, v2, :cond_2e

    move v3, v0

    :goto_6
    if-ge v3, v2, :cond_2b

    iget-object v4, p0, Lcom/coui/appcompat/lockview/COUILockPatternView$3;->a:Lcom/coui/appcompat/lockview/COUILockPatternView;

    iget-object v4, v4, Lcom/coui/appcompat/lockview/COUILockPatternView;->a:[[Lcom/coui/appcompat/lockview/COUILockPatternView$CellState;

    aget-object v4, v4, v1

    aget-object v4, v4, v3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    iput v5, v4, Lcom/coui/appcompat/lockview/COUILockPatternView$CellState;->j:F

    const v6, 0x3dcccccd  # 0.1f

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_25

    const/4 v5, 0x1

    goto :goto_26

    :cond_25
    move v5, v0

    :goto_26
    iput-boolean v5, v4, Lcom/coui/appcompat/lockview/COUILockPatternView$CellState;->l:Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2e
    iget-object p0, p0, Lcom/coui/appcompat/lockview/COUILockPatternView$3;->a:Lcom/coui/appcompat/lockview/COUILockPatternView;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
