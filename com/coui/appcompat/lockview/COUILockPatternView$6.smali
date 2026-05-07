.class Lcom/coui/appcompat/lockview/COUILockPatternView$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/lockview/COUILockPatternView$CellState;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/lockview/COUILockPatternView;Lcom/coui/appcompat/lockview/COUILockPatternView$CellState;)V
    .registers 3

    iput-object p2, p0, Lcom/coui/appcompat/lockview/COUILockPatternView$6;->a:Lcom/coui/appcompat/lockview/COUILockPatternView$CellState;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/lockview/COUILockPatternView$6;->a:Lcom/coui/appcompat/lockview/COUILockPatternView$CellState;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/coui/appcompat/lockview/COUILockPatternView$CellState;->g:Landroid/animation/ValueAnimator;

    return-void
.end method
