.class Lcom/coui/appcompat/panel/COUIBottomSheetDialog$8;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->f(ZFLandroid/view/animation/PathInterpolator;)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;Z)V
    .registers 3

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$8;->b:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    iput-boolean p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$8;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$8;->b:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    iget-object v1, v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->b:Landroid/view/View;

    if-eqz v1, :cond_1f

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->j(F)F

    move-result p1

    iput p1, v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->J:F

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$8;->b:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    iget-object v0, p1, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->b:Landroid/view/View;

    iget p1, p1, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->J:F

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_1f
    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$8;->b:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    iget-object v0, p1, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->f:Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    if-eqz v0, :cond_3b

    iget-boolean p1, p1, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->Y:Z

    if-eqz p1, :cond_3b

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->findFocus()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3b

    iget-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$8;->a:Z

    if-eqz v0, :cond_3b

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$8;->b:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->G:Landroid/view/inputmethod/InputMethodManager;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_3b
    return-void
.end method
