.class Lcom/coui/appcompat/lockview/COUISimpleLock$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/lockview/COUISimpleLock;->b()Landroid/animation/ValueAnimator;
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

    iput-object p1, p0, Lcom/coui/appcompat/lockview/COUISimpleLock$4;->a:Lcom/coui/appcompat/lockview/COUISimpleLock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/lockview/COUISimpleLock$4;->a:Lcom/coui/appcompat/lockview/COUISimpleLock;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->m:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/lockview/COUISimpleLock$4;->a:Lcom/coui/appcompat/lockview/COUISimpleLock;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->m:Z

    return-void
.end method
