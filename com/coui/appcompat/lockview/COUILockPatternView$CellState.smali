.class public Lcom/coui/appcompat/lockview/COUILockPatternView$CellState;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/lockview/COUILockPatternView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CellState"
.end annotation


# instance fields
.field public a:F

.field public b:F

.field public c:F

.field public d:F

.field public e:F

.field public f:F

.field public g:Landroid/animation/ValueAnimator;

.field public h:F

.field public i:F

.field public j:F

.field public k:F

.field public l:Z

.field public m:Lcom/coui/appcompat/lockview/COUILockPatternView$OnCellDrawListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/coui/appcompat/lockview/COUILockPatternView$CellState;->e:F

    iput v0, p0, Lcom/coui/appcompat/lockview/COUILockPatternView$CellState;->f:F

    return-void
.end method


# virtual methods
.method public setCellDrawListener(Lcom/coui/appcompat/lockview/COUILockPatternView$OnCellDrawListener;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/lockview/COUILockPatternView$CellState;->m:Lcom/coui/appcompat/lockview/COUILockPatternView$OnCellDrawListener;

    return-void
.end method

.method public setCellNumberAlpha(F)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/lockview/COUILockPatternView$CellState;->d:F

    iget-object p0, p0, Lcom/coui/appcompat/lockview/COUILockPatternView$CellState;->m:Lcom/coui/appcompat/lockview/COUILockPatternView$OnCellDrawListener;

    invoke-interface {p0}, Lcom/coui/appcompat/lockview/COUILockPatternView$OnCellDrawListener;->a()V

    return-void
.end method

.method public setCellNumberTranslateX(I)V
    .registers 2

    int-to-float p1, p1

    iput p1, p0, Lcom/coui/appcompat/lockview/COUILockPatternView$CellState;->b:F

    iget-object p0, p0, Lcom/coui/appcompat/lockview/COUILockPatternView$CellState;->m:Lcom/coui/appcompat/lockview/COUILockPatternView$OnCellDrawListener;

    invoke-interface {p0}, Lcom/coui/appcompat/lockview/COUILockPatternView$OnCellDrawListener;->a()V

    return-void
.end method

.method public setCellNumberTranslateY(I)V
    .registers 2

    int-to-float p1, p1

    iput p1, p0, Lcom/coui/appcompat/lockview/COUILockPatternView$CellState;->a:F

    iget-object p0, p0, Lcom/coui/appcompat/lockview/COUILockPatternView$CellState;->m:Lcom/coui/appcompat/lockview/COUILockPatternView$OnCellDrawListener;

    invoke-interface {p0}, Lcom/coui/appcompat/lockview/COUILockPatternView$OnCellDrawListener;->a()V

    return-void
.end method
