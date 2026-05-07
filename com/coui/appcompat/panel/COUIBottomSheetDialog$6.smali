.class Lcom/coui/appcompat/panel/COUIBottomSheetDialog$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$6;->a:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 4

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$6;->a:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->P:Z

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$6;->a:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    iget-object p1, p1, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->e0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog$BottomSheetDialogAnimatorListener;

    if-eqz p1, :cond_9

    invoke-interface {p1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$BottomSheetDialogAnimatorListener;->onBottomSheetDialogCollapsed()V

    :cond_9
    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$6;->a:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->P:Z

    invoke-static {p1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->a(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)V

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$6;->a:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-virtual {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->o()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$6;->a:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->P:Z

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    return-void
.end method
