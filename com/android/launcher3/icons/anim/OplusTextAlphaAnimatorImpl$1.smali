.class Lcom/android/launcher3/icons/anim/OplusTextAlphaAnimatorImpl$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/icons/anim/OplusTextAlphaAnimatorImpl;->playTextAlphaAnimation(JLandroid/view/animation/Interpolator;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/icons/anim/OplusTextAlphaAnimatorImpl;

.field public final synthetic val$show:Z


# direct methods
.method public constructor <init>(Lcom/android/launcher3/icons/anim/OplusTextAlphaAnimatorImpl;Z)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher3/icons/anim/OplusTextAlphaAnimatorImpl$1;->this$0:Lcom/android/launcher3/icons/anim/OplusTextAlphaAnimatorImpl;

    iput-boolean p2, p0, Lcom/android/launcher3/icons/anim/OplusTextAlphaAnimatorImpl$1;->val$show:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p0, p0, Lcom/android/launcher3/icons/anim/OplusTextAlphaAnimatorImpl$1;->this$0:Lcom/android/launcher3/icons/anim/OplusTextAlphaAnimatorImpl;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/launcher3/icons/anim/OplusTextAlphaAnimatorImpl;->access$002(Lcom/android/launcher3/icons/anim/OplusTextAlphaAnimatorImpl;Z)Z

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    iget-boolean p1, p0, Lcom/android/launcher3/icons/anim/OplusTextAlphaAnimatorImpl$1;->val$show:Z

    if-eqz p1, :cond_d

    iget-object p0, p0, Lcom/android/launcher3/icons/anim/OplusTextAlphaAnimatorImpl$1;->this$0:Lcom/android/launcher3/icons/anim/OplusTextAlphaAnimatorImpl;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/launcher3/icons/anim/OplusTextAlphaAnimatorImpl;->access$002(Lcom/android/launcher3/icons/anim/OplusTextAlphaAnimatorImpl;Z)Z

    :cond_d
    return-void
.end method
