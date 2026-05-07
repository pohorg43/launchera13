.class Lcom/coui/appcompat/panel/COUIBottomSheetDialog$14;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/coui/appcompat/panel/COUIPanelPullUpListener;


# instance fields
.field public a:I

.field public final synthetic b:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$14;->b:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$14;->a:I

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 8

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$14;->b:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->r(Z)V

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$14;->b:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    iget v2, v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->s:I

    sub-int/2addr p1, v2

    iget-object v0, v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->d:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTop()I

    move-result v0

    sub-int/2addr v0, p1

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$14;->b:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    iget p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->s:I

    sub-int/2addr p1, v0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lm1/h;->d()Lm1/h;

    move-result-object v0

    invoke-virtual {v0}, Lm1/b;->b()Lm1/d;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->w:Lm1/d;

    const-wide/high16 v2, 0x4018000000000000L  # 6.0

    const-wide/high16 v4, 0x4045000000000000L  # 42.0

    invoke-static {v2, v3, v4, v5}, Lm1/e;->a(DD)Lm1/e;

    move-result-object v2

    invoke-virtual {v0, v2}, Lm1/d;->f(Lm1/e;)Lm1/d;

    iput v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->t:I

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->w:Lm1/d;

    new-instance v1, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$15;

    invoke-direct {v1, p0, p1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$15;-><init>(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;I)V

    invoke-virtual {v0, v1}, Lm1/d;->a(Lm1/g;)Lm1/d;

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->w:Lm1/d;

    int-to-double v0, p1

    invoke-virtual {p0, v0, v1}, Lm1/d;->e(D)Lm1/d;

    return-void
.end method

.method public b(II)I
    .registers 8

    iget-object p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$14;->b:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    iget-object v0, p2, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->w:Lm1/d;

    if-eqz v0, :cond_18

    iget-object v1, v0, Lm1/d;->c:Lm1/d$b;

    iget-wide v1, v1, Lm1/d$b;->b:D

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-eqz v1, :cond_18

    invoke-virtual {v0}, Lm1/d;->c()Lm1/d;

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$14;->b:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    iget p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->s:I

    return p0

    :cond_18
    iget-object p2, p2, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->v:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getPaddingBottom()I

    move-result p2

    int-to-float p2, p2

    int-to-float p1, p1

    const v0, 0x3e4ccccc  # 0.19999999f

    mul-float/2addr p1, v0

    sub-float/2addr p2, p1

    float-to-int p1, p2

    const/4 p2, 0x0

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$14;->b:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    iget v1, v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->r:I

    iget-object v0, v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->d:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTop()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p1, p2, v0}, Landroidx/core/math/MathUtils;->clamp(III)I

    move-result p1

    iget-object p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$14;->b:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    iget v0, p2, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->s:I

    if-eq v0, p1, :cond_44

    iput p1, p2, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->s:I

    invoke-static {p2, p1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->d(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;I)V

    :cond_44
    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$14;->b:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    iget p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->s:I

    return p0
.end method

.method public c()V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$14;->b:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    iget-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->f0:Z

    if-eqz v0, :cond_c

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->d0:Lcom/coui/appcompat/panel/COUIPanelBarView;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/panel/COUIPanelBarView;->setIsBeingDragged(Z)V

    :cond_c
    return-void
.end method

.method public d()V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$14;->b:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    iget-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->f0:Z

    if-eqz v0, :cond_c

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->d0:Lcom/coui/appcompat/panel/COUIPanelBarView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/panel/COUIPanelBarView;->setIsBeingDragged(Z)V

    :cond_c
    return-void
.end method

.method public e(F)V
    .registers 6

    iget v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$14;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_f

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$14;->b:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    iget-object v0, v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->d:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$14;->a:I

    :cond_f
    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$14;->b:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    sget-object v1, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->u0:Landroid/view/animation/Interpolator;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$14;->b:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    iget-boolean v1, v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->a0:Z

    if-eqz v1, :cond_81

    iget-boolean v1, v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->P:Z

    if-nez v1, :cond_31

    iget-object v1, v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->b:Landroid/view/View;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->j(F)F

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$14;->b:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->j(F)F

    move-result v1

    iput v1, v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->J:F

    :cond_31
    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$14;->b:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/coui/appcompat/panel/COUIPanelMultiWindowUtils;->n(Landroid/content/Context;Landroid/content/res/Configuration;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$14;->b:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "hide_navigationbar_enable"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v0, :cond_81

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$14;->b:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coui/appcompat/panel/COUINavigationBarUtil;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_81

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$14;->b:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_81

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$14;->b:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    iget v3, v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->V:F

    mul-float/2addr v3, p1

    float-to-int v3, v3

    if-eqz v3, :cond_81

    const/4 v3, 0x3

    if-eq v1, v3, :cond_81

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$14;->b:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    iget v1, v1, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->V:F

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    :cond_81
    const/high16 v0, 0x3f800000  # 1.0f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_ab

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$14;->b:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    iget-boolean v1, v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->f0:Z

    if-eqz v1, :cond_ab

    iget-object v1, v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->d0:Lcom/coui/appcompat/panel/COUIPanelBarView;

    iget v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$14;->a:I

    iget-object v0, v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->d:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    sub-int/2addr v2, v0

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/panel/COUIPanelBarView;->setPanelOffset(I)V

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$14;->b:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    iget-object v0, v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->d:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int p1, v0

    iput p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$14;->a:I

    :cond_ab
    return-void
.end method

.method public onCancel()V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$14;->b:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->d(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;I)V

    return-void
.end method
