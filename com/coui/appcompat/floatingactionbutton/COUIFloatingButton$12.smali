.class Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$12;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->f(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;IIIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Z

.field public final synthetic c:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;

.field public final synthetic d:I

.field public final synthetic e:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;IZLcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;I)V
    .registers 6

    iput-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$12;->e:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;

    iput p2, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$12;->a:I

    iput-boolean p3, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$12;->b:Z

    iput-object p4, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$12;->c:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;

    iput p5, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$12;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 5

    iget-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$12;->c:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;

    iget-object v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$12;->e:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;

    iget v1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$12;->a:I

    sget-object v2, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->t:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->m(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    iget-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$12;->c:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;

    invoke-virtual {p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->getChildFloatingButton()Landroid/widget/ImageView;

    move-result-object p1

    iget-object v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$12;->c:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;

    invoke-virtual {v0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->getChildFloatingButton()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000  # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setPivotX(F)V

    iget-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$12;->c:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;

    invoke-virtual {p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->getChildFloatingButton()Landroid/widget/ImageView;

    move-result-object p1

    iget-object v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$12;->c:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;

    invoke-virtual {v0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->getChildFloatingButton()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setPivotY(F)V

    iget-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$12;->c:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setPivotX(F)V

    iget-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$12;->c:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setPivotY(F)V

    iget-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$12;->e:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;

    iget v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$12;->a:I

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->k(I)Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_63

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result p1

    if-nez p1, :cond_63

    const/4 p1, 0x1

    goto :goto_64

    :cond_63
    move p1, v1

    :goto_64
    if-eqz p1, :cond_6c

    iget-object p0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$12;->e:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;

    iget-object p0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->a:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$InstanceState;

    iput-boolean v1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$InstanceState;->b:Z

    :cond_6c
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 5

    iget-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$12;->e:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;

    iget v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$12;->a:I

    invoke-static {p1, v0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->a(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;I)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_15

    iget-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$12;->e:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;

    iget-object v1, p1, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->a:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$InstanceState;

    iput-boolean v0, v1, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$InstanceState;->b:Z

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->setOnActionSelectedListener(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$OnActionSelectedListener;)V

    :cond_15
    iget-boolean p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$12;->b:Z

    if-eqz p1, :cond_25

    iget-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$12;->e:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;

    iget-object v1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$12;->c:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;

    iget v2, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$12;->a:I

    iget p0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$12;->d:I

    invoke-static {p1, v1, v2, p0, v0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->b(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;IIZ)V

    goto :goto_31

    :cond_25
    iget-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$12;->e:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;

    iget-object v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$12;->c:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;

    iget v1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$12;->a:I

    iget p0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$12;->d:I

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, p0, v2}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->b(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;IIZ)V

    :goto_31
    return-void
.end method
