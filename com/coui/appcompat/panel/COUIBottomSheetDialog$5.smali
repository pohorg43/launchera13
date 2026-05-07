.class Lcom/coui/appcompat/panel/COUIBottomSheetDialog$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$5;->a:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$5;->a:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->P:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$5;->a:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    iget-object p1, p1, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->e0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog$BottomSheetDialogAnimatorListener;

    if-eqz p1, :cond_c

    invoke-interface {p1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$BottomSheetDialogAnimatorListener;->onBottomSheetDialogCollapsed()V

    :cond_c
    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$5;->a:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->P:Z

    iget-boolean v0, p1, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->R:Z

    if-eqz v0, :cond_2f

    iget v0, p1, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->S:I

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->e(I)Landroid/animation/ValueAnimator;

    move-result-object p1

    if-eqz p1, :cond_29

    new-instance v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$5$1;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$5$1;-><init>(Lcom/coui/appcompat/panel/COUIBottomSheetDialog$5;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_32

    :cond_29
    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$5;->a:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-static {p1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->a(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)V

    goto :goto_32

    :cond_2f
    invoke-static {p1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->a(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)V

    :goto_32
    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$5;->a:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-virtual {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->o()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$5;->a:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->P:Z

    return-void
.end method
