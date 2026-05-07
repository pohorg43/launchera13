.class Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->setFloatingButtonExpandEnable(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$2;->a:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_2f

    iget-object p0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$2;->a:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;

    sget-object p1, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->t:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->i()V

    iget-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->e:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-static {p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFABPressFeedbackUtil;->a(Landroid/view/View;)Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonTouchAnimation;

    move-result-object p1

    invoke-static {}, Lcom/coui/appcompat/floatingactionbutton/COUIFABPressFeedbackUtil;->b()Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->h:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$4;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$4;-><init>(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p2, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$5;

    invoke-direct {p2, p0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$5;-><init>(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;)V

    invoke-virtual {p1, p2}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object p0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->e:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_66

    :cond_2f
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_4b

    iget-object p0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$2;->a:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;

    sget-object p1, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->t:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->i()V

    iget-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->e:Lcom/google/android/material/imageview/ShapeableImageView;

    iget p2, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->b:F

    invoke-static {p1, p2}, Lcom/coui/appcompat/floatingactionbutton/COUIFABPressFeedbackUtil;->c(Landroid/view/View;F)Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonTouchAnimation;

    move-result-object p1

    iget-object p0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->e:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_66

    :cond_4b
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_66

    iget-object p0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$2;->a:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;

    sget-object p1, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->t:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->i()V

    iget-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->e:Lcom/google/android/material/imageview/ShapeableImageView;

    iget p2, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->b:F

    invoke-static {p1, p2}, Lcom/coui/appcompat/floatingactionbutton/COUIFABPressFeedbackUtil;->c(Landroid/view/View;F)Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonTouchAnimation;

    move-result-object p1

    iget-object p0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->e:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_66
    :goto_66
    const/4 p0, 0x0

    return p0
.end method
