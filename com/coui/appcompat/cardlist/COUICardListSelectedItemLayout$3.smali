.class Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout$3;->a:Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;

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

    iget-object p0, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout$3;->a:Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;

    sget p1, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->u:I

    const/4 p1, 0x1

    iput p1, p0, Lcom/coui/appcompat/preference/ListSelectedItemLayout;->f:I

    iget-boolean p1, p0, Lcom/coui/appcompat/preference/ListSelectedItemLayout;->d:Z

    if-eqz p1, :cond_17

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/coui/appcompat/preference/ListSelectedItemLayout;->d:Z

    iget-boolean p1, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->q:Z

    if-nez p1, :cond_17

    iget-object p0, p0, Lcom/coui/appcompat/preference/ListSelectedItemLayout;->b:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_17
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method
