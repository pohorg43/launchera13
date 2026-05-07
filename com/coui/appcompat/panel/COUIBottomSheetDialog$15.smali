.class Lcom/coui/appcompat/panel/COUIBottomSheetDialog$15;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lm1/g;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;I)V
    .registers 3

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$15;->b:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    iput p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$15;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSpringActivate(Lm1/d;)V
    .registers 2

    return-void
.end method

.method public onSpringAtRest(Lm1/d;)V
    .registers 3

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$15;->b:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-virtual {p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->getBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object p1

    instance-of p1, p1, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    if-eqz p1, :cond_22

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$15;->b:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    iget-object v0, p1, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->v:Landroid/view/View;

    if-eqz v0, :cond_22

    const/4 v0, 0x0

    iput v0, p1, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->s:I

    invoke-static {p1, v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->d(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;I)V

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$15;->b:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-virtual {p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->getBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object p1

    check-cast p1, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->setStateInternal(I)V

    :cond_22
    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$15;->b:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->r(Z)V

    return-void
.end method

.method public onSpringEndStateChange(Lm1/d;)V
    .registers 2

    return-void
.end method

.method public onSpringUpdate(Lm1/d;)V
    .registers 9

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$15;->b:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    iget-object v1, v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->w:Lm1/d;

    if-eqz v1, :cond_33

    iget-object v2, v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->d:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    if-nez v2, :cond_b

    goto :goto_33

    :cond_b
    iget-boolean v3, p1, Lm1/d;->h:Z

    if-eqz v3, :cond_1d

    iget-object v3, p1, Lm1/d;->c:Lm1/d$b;

    iget-wide v3, v3, Lm1/d$b;->b:D

    const-wide/16 v5, 0x0

    cmpl-double v3, v3, v5

    if-nez v3, :cond_1d

    invoke-virtual {v1}, Lm1/d;->c()Lm1/d;

    goto :goto_33

    :cond_1d
    iget-object p1, p1, Lm1/d;->c:Lm1/d$b;

    iget-wide v3, p1, Lm1/d$b;->a:D

    double-to-int p1, v3

    iget v0, v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->t:I

    sub-int v0, p1, v0

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->offsetTopAndBottom(I)V

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$15;->b:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    iput p1, v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->t:I

    iget p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$15;->a:I

    sub-int/2addr p0, p1

    invoke-static {v0, p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->d(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;I)V

    :cond_33
    :goto_33
    return-void
.end method
