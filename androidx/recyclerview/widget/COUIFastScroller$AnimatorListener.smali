.class Landroidx/recyclerview/widget/COUIFastScroller$AnimatorListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/COUIFastScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AnimatorListener"
.end annotation


# instance fields
.field private mCanceled:Z

.field public final synthetic this$0:Landroidx/recyclerview/widget/COUIFastScroller;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/COUIFastScroller;)V
    .registers 2

    iput-object p1, p0, Landroidx/recyclerview/widget/COUIFastScroller$AnimatorListener;->this$0:Landroidx/recyclerview/widget/COUIFastScroller;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/recyclerview/widget/COUIFastScroller$AnimatorListener;->mCanceled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/recyclerview/widget/COUIFastScroller$AnimatorListener;->mCanceled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    iget-boolean p1, p0, Landroidx/recyclerview/widget/COUIFastScroller$AnimatorListener;->mCanceled:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    iput-boolean v0, p0, Landroidx/recyclerview/widget/COUIFastScroller$AnimatorListener;->mCanceled:Z

    return-void

    :cond_8
    iget-object p1, p0, Landroidx/recyclerview/widget/COUIFastScroller$AnimatorListener;->this$0:Landroidx/recyclerview/widget/COUIFastScroller;

    iget-object p1, p1, Landroidx/recyclerview/widget/COUIFastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/4 v1, 0x0

    cmpl-float p1, p1, v1

    if-nez p1, :cond_23

    iget-object p0, p0, Landroidx/recyclerview/widget/COUIFastScroller$AnimatorListener;->this$0:Landroidx/recyclerview/widget/COUIFastScroller;

    iput v0, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mAnimationState:I

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/COUIFastScroller;->setState(I)V

    goto :goto_2b

    :cond_23
    iget-object p0, p0, Landroidx/recyclerview/widget/COUIFastScroller$AnimatorListener;->this$0:Landroidx/recyclerview/widget/COUIFastScroller;

    const/4 p1, 0x2

    iput p1, p0, Landroidx/recyclerview/widget/COUIFastScroller;->mAnimationState:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/COUIFastScroller;->requestRedraw()V

    :goto_2b
    return-void
.end method
