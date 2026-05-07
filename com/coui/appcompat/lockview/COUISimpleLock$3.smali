.class Lcom/coui/appcompat/lockview/COUISimpleLock$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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

    iput-object p1, p0, Lcom/coui/appcompat/lockview/COUISimpleLock$3;->a:Lcom/coui/appcompat/lockview/COUISimpleLock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/coui/appcompat/lockview/COUISimpleLock$3;->a:Lcom/coui/appcompat/lockview/COUISimpleLock;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/lockview/COUISimpleLock;->setOpacity(I)V

    iget-object p0, p0, Lcom/coui/appcompat/lockview/COUISimpleLock$3;->a:Lcom/coui/appcompat/lockview/COUISimpleLock;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
