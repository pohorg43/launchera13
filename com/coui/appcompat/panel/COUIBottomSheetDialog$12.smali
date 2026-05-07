.class Lcom/coui/appcompat/panel/COUIBottomSheetDialog$12;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/panel/COUIBottomSheetDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$12;->a:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .registers 6

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$12;->a:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    iget-object v1, v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->b:Landroid/view/View;

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v0, v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->t0:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_f
    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$12;->a:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    iget-object v1, v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->d:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_69

    invoke-virtual {v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->i()I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$12;->a:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    iget-boolean v4, v1, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->F:Z

    if-eqz v4, :cond_23

    iget v0, v1, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->z:I

    :cond_23
    iget-object v1, v1, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->f:Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    if-eqz v1, :cond_2d

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->findFocus()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_35

    :cond_2d
    iget-object v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$12;->a:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    iget-object v1, v1, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->d:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    :cond_35
    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$12;->a:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    iget-object v0, v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->b:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$12;->a:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    iget-object v0, v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->d:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    invoke-virtual {v0}, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->getRatio()F

    move-result v0

    const/high16 v1, 0x40000000  # 2.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_5f

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$12;->a:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    iget-object v1, v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->c:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$12;->a:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-static {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->b(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)Landroid/animation/Animator$AnimatorListener;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->c(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;ILandroid/animation/Animator$AnimatorListener;)V

    goto :goto_68

    :cond_5f
    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$12;->a:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-static {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->b(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v0

    invoke-static {p0, v3, v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->c(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;ILandroid/animation/Animator$AnimatorListener;)V

    :goto_68
    return v2

    :cond_69
    new-instance p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$13;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$13;-><init>(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)V

    invoke-static {v0, v3, p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->c(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;ILandroid/animation/Animator$AnimatorListener;)V

    return v2
.end method
