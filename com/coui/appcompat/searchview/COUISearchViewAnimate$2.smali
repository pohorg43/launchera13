.class Lcom/coui/appcompat/searchview/COUISearchViewAnimate$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/coui/appcompat/searchview/COUISearchViewAnimate$OnStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/searchview/COUISearchViewAnimate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;


# virtual methods
.method public a(II)V
    .registers 5

    const/4 p1, 0x1

    if-ne p2, p1, :cond_9

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$2;->a:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-virtual {p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->m()V

    goto :goto_4f

    :cond_9
    if-nez p2, :cond_4f

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$2;->a:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    iget-boolean p2, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->n:Z

    if-eqz p2, :cond_12

    goto :goto_4f

    :cond_12
    iput-boolean p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->n:Z

    iget-object p2, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->d:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchCancelButton;

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setVisibility(I)V

    iget-object p2, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->e:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-boolean p2, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->m:Z

    if-nez p2, :cond_25

    iput-boolean p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->m:Z

    :cond_25
    const/4 p1, 0x2

    new-array p1, p1, [F

    fill-array-data p1, :array_50

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iget-wide v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->k:J

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$7;

    invoke-direct {p2, p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$7;-><init>(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p2, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$8;

    invoke-direct {p2, p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$8;-><init>(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    iget-boolean p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->r:Z

    if-eqz p1, :cond_4f

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->j(Z)V

    :cond_4f
    :goto_4f
    return-void

    :array_50
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method
