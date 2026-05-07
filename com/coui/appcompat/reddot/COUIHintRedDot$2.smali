.class Lcom/coui/appcompat/reddot/COUIHintRedDot$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/reddot/COUIHintRedDot;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/reddot/COUIHintRedDot;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot$2;->a:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot$2;->a:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->m:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot$2;->a:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->m:Z

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4

    iget-object p0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot$2;->a:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->m:Z

    iget-object p1, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->n:Landroid/animation/ValueAnimator;

    if-nez p1, :cond_2e

    const/4 p1, 0x2

    new-array p1, p1, [I

    fill-array-data p1, :array_34

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->n:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x96

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->n:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/coui/appcompat/reddot/COUIHintRedDot$3;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/reddot/COUIHintRedDot$3;-><init>(Lcom/coui/appcompat/reddot/COUIHintRedDot;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->n:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/coui/appcompat/reddot/COUIHintRedDot$4;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/reddot/COUIHintRedDot$4;-><init>(Lcom/coui/appcompat/reddot/COUIHintRedDot;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_2e
    iget-object p0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->n:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_34
    .array-data 4
        0xff
        0x0
    .end array-data
.end method
