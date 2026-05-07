.class Lcom/coui/appcompat/lockview/COUISimpleLock$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/lockview/COUISimpleLock;->c()Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/lockview/COUISimpleLock;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/lockview/COUISimpleLock;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/lockview/COUISimpleLock$2;->a:Lcom/coui/appcompat/lockview/COUISimpleLock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    iget-object p1, p0, Lcom/coui/appcompat/lockview/COUISimpleLock$2;->a:Lcom/coui/appcompat/lockview/COUISimpleLock;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/coui/appcompat/lockview/COUISimpleLock;->n:Z

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    iget-object p1, p0, Lcom/coui/appcompat/lockview/COUISimpleLock$2;->a:Lcom/coui/appcompat/lockview/COUISimpleLock;

    iget-boolean v1, p1, Lcom/coui/appcompat/lockview/COUISimpleLock;->r:Z

    if-eqz v1, :cond_34

    iget-object p1, p1, Lcom/coui/appcompat/lockview/COUISimpleLock;->u:Landroid/animation/Animator;

    if-eqz p1, :cond_1e

    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_1e

    iget-object p0, p0, Lcom/coui/appcompat/lockview/COUISimpleLock$2;->a:Lcom/coui/appcompat/lockview/COUISimpleLock;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->n:Z

    return-void

    :cond_1e
    iget-object p1, p0, Lcom/coui/appcompat/lockview/COUISimpleLock$2;->a:Lcom/coui/appcompat/lockview/COUISimpleLock;

    const/4 v1, 0x5

    iput v1, p1, Lcom/coui/appcompat/lockview/COUISimpleLock;->p:I

    invoke-virtual {p1}, Lcom/coui/appcompat/lockview/COUISimpleLock;->a()Landroid/animation/Animator;

    move-result-object v1

    iput-object v1, p1, Lcom/coui/appcompat/lockview/COUISimpleLock;->u:Landroid/animation/Animator;

    iget-object p1, p0, Lcom/coui/appcompat/lockview/COUISimpleLock$2;->a:Lcom/coui/appcompat/lockview/COUISimpleLock;

    iget-object p1, p1, Lcom/coui/appcompat/lockview/COUISimpleLock;->u:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    iget-object p0, p0, Lcom/coui/appcompat/lockview/COUISimpleLock$2;->a:Lcom/coui/appcompat/lockview/COUISimpleLock;

    iput-boolean v0, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->I:Z

    :cond_34
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/lockview/COUISimpleLock$2;->a:Lcom/coui/appcompat/lockview/COUISimpleLock;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->n:Z

    return-void
.end method
