.class Lcom/coui/appcompat/sidepane/COUISidePaneLayout$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/sidepane/COUISidePaneLayout;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/sidepane/COUISidePaneLayout;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout$3;->a:Lcom/coui/appcompat/sidepane/COUISidePaneLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 5

    iget-object p1, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout$3;->a:Lcom/coui/appcompat/sidepane/COUISidePaneLayout;

    sget-object v0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->y:Landroid/view/animation/PathInterpolator;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout$3;->a:Lcom/coui/appcompat/sidepane/COUISidePaneLayout;

    iget-object v0, p1, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->h:Lcom/coui/appcompat/sidepane/COUISidePaneLayout$PanelSlideListener;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1c

    iget p1, p1, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->s:I

    if-ne p1, v2, :cond_17

    invoke-interface {v0, v2}, Lcom/coui/appcompat/sidepane/COUISidePaneLayout$PanelSlideListener;->c(I)V

    goto :goto_1c

    :cond_17
    if-nez p1, :cond_1c

    invoke-interface {v0, v1}, Lcom/coui/appcompat/sidepane/COUISidePaneLayout$PanelSlideListener;->c(I)V

    :cond_1c
    :goto_1c
    iget-object p0, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout$3;->a:Lcom/coui/appcompat/sidepane/COUISidePaneLayout;

    iget-object p1, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->j:Lcom/coui/appcompat/sidepane/COUISidePaneLayout$PanelSlideListener;

    if-eqz p1, :cond_2f

    iget p0, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->s:I

    if-ne p0, v2, :cond_2a

    invoke-interface {p1, v2}, Lcom/coui/appcompat/sidepane/COUISidePaneLayout$PanelSlideListener;->c(I)V

    goto :goto_2f

    :cond_2a
    if-nez p0, :cond_2f

    invoke-interface {p1, v1}, Lcom/coui/appcompat/sidepane/COUISidePaneLayout$PanelSlideListener;->c(I)V

    :cond_2f
    :goto_2f
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 5

    iget-object p1, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout$3;->a:Lcom/coui/appcompat/sidepane/COUISidePaneLayout;

    iget-object v0, p1, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->h:Lcom/coui/appcompat/sidepane/COUISidePaneLayout$PanelSlideListener;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1a

    iget p1, p1, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->s:I

    if-ne p1, v2, :cond_10

    invoke-interface {v0, v2}, Lcom/coui/appcompat/sidepane/COUISidePaneLayout$PanelSlideListener;->a(I)V

    goto :goto_15

    :cond_10
    if-nez p1, :cond_15

    invoke-interface {v0, v1}, Lcom/coui/appcompat/sidepane/COUISidePaneLayout$PanelSlideListener;->a(I)V

    :cond_15
    :goto_15
    iget-object p1, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout$3;->a:Lcom/coui/appcompat/sidepane/COUISidePaneLayout;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1a
    iget-object p0, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout$3;->a:Lcom/coui/appcompat/sidepane/COUISidePaneLayout;

    iget-object p1, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->j:Lcom/coui/appcompat/sidepane/COUISidePaneLayout$PanelSlideListener;

    if-eqz p1, :cond_2d

    iget p0, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->s:I

    if-ne p0, v2, :cond_28

    invoke-interface {p1, v2}, Lcom/coui/appcompat/sidepane/COUISidePaneLayout$PanelSlideListener;->a(I)V

    goto :goto_2d

    :cond_28
    if-nez p0, :cond_2d

    invoke-interface {p1, v1}, Lcom/coui/appcompat/sidepane/COUISidePaneLayout$PanelSlideListener;->a(I)V

    :cond_2d
    :goto_2d
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout$3;->a:Lcom/coui/appcompat/sidepane/COUISidePaneLayout;

    sget-object p1, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->y:Landroid/view/animation/PathInterpolator;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
