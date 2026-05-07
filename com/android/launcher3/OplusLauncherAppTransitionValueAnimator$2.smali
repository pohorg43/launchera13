.class Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->getAnimator(Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;

.field public final synthetic val$interruptParam:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator$2;->this$0:Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;

    iput-object p2, p0, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator$2;->val$interruptParam:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3

    const-string p1, "SpringValueAnimator"

    const-string/jumbo v0, "onAnimationCancel"

    invoke-static {p1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator$2;->val$interruptParam:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;

    invoke-virtual {p0}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;->resetCacheProgressWhenAnimationCancel()V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    const-string p0, "SpringValueAnimator"

    const-string/jumbo p1, "onAnimationEnd"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
