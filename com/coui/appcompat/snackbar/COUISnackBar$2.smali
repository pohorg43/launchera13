.class Lcom/coui/appcompat/snackbar/COUISnackBar$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/snackbar/COUISnackBar;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/snackbar/COUISnackBar;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar$2;->a:Lcom/coui/appcompat/snackbar/COUISnackBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    iget-object p1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar$2;->a:Lcom/coui/appcompat/snackbar/COUISnackBar;

    iget-object p1, p1, Lcom/coui/appcompat/snackbar/COUISnackBar;->n:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar$2;->a:Lcom/coui/appcompat/snackbar/COUISnackBar;

    iget-object v0, p1, Lcom/coui/appcompat/snackbar/COUISnackBar;->i:Landroid/view/ViewGroup;

    if-eqz v0, :cond_14

    iget-object p1, p1, Lcom/coui/appcompat/snackbar/COUISnackBar;->n:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_14
    iget-object p0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar$2;->a:Lcom/coui/appcompat/snackbar/COUISnackBar;

    iget-object p1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->t:Lcom/coui/appcompat/snackbar/COUISnackBar$OnStatusChangeListener;

    if-eqz p1, :cond_1d

    invoke-interface {p1, p0}, Lcom/coui/appcompat/snackbar/COUISnackBar$OnStatusChangeListener;->onDismissed(Lcom/coui/appcompat/snackbar/COUISnackBar;)V

    :cond_1d
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
