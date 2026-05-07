.class Lcom/coui/appcompat/lockview/COUILockPatternView$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/lockview/COUILockPatternView;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/lockview/COUILockPatternView;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/lockview/COUILockPatternView$2;->a:Lcom/coui/appcompat/lockview/COUILockPatternView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 6

    iget-object v0, p0, Lcom/coui/appcompat/lockview/COUILockPatternView$2;->a:Lcom/coui/appcompat/lockview/COUILockPatternView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, v0, Lcom/coui/appcompat/lockview/COUILockPatternView;->c:F

    iget-object p1, p0, Lcom/coui/appcompat/lockview/COUILockPatternView$2;->a:Lcom/coui/appcompat/lockview/COUILockPatternView;

    iget-object p1, p1, Lcom/coui/appcompat/lockview/COUILockPatternView;->g:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_16
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/lockview/COUILockPatternView$Cell;

    iget-object v1, p0, Lcom/coui/appcompat/lockview/COUILockPatternView$2;->a:Lcom/coui/appcompat/lockview/COUILockPatternView;

    iget-object v2, v1, Lcom/coui/appcompat/lockview/COUILockPatternView;->a:[[Lcom/coui/appcompat/lockview/COUILockPatternView$CellState;

    iget v3, v0, Lcom/coui/appcompat/lockview/COUILockPatternView$Cell;->a:I

    aget-object v2, v2, v3

    iget v0, v0, Lcom/coui/appcompat/lockview/COUILockPatternView$Cell;->b:I

    aget-object v0, v2, v0

    iget v1, v1, Lcom/coui/appcompat/lockview/COUILockPatternView;->c:F

    iput v1, v0, Lcom/coui/appcompat/lockview/COUILockPatternView$CellState;->j:F

    const v2, 0x3dcccccd  # 0.1f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_3b

    const/4 v1, 0x1

    goto :goto_3c

    :cond_3b
    const/4 v1, 0x0

    :goto_3c
    iput-boolean v1, v0, Lcom/coui/appcompat/lockview/COUILockPatternView$CellState;->l:Z

    goto :goto_16

    :cond_3f
    iget-object p0, p0, Lcom/coui/appcompat/lockview/COUILockPatternView$2;->a:Lcom/coui/appcompat/lockview/COUILockPatternView;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
