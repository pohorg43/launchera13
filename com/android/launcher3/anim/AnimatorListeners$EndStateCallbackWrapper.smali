.class Lcom/android/launcher3/anim/AnimatorListeners$EndStateCallbackWrapper;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/anim/AnimatorListeners;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EndStateCallbackWrapper"
.end annotation


# instance fields
.field private final mListener:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mListenerCalled:Z


# direct methods
.method public constructor <init>(Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/anim/AnimatorListeners$EndStateCallbackWrapper;->mListenerCalled:Z

    iput-object p1, p0, Lcom/android/launcher3/anim/AnimatorListeners$EndStateCallbackWrapper;->mListener:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    iget-boolean p1, p0, Lcom/android/launcher3/anim/AnimatorListeners$EndStateCallbackWrapper;->mListenerCalled:Z

    if-nez p1, :cond_e

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher3/anim/AnimatorListeners$EndStateCallbackWrapper;->mListenerCalled:Z

    iget-object p0, p0, Lcom/android/launcher3/anim/AnimatorListeners$EndStateCallbackWrapper;->mListener:Ljava/util/function/Consumer;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_e
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    iget-boolean v0, p0, Lcom/android/launcher3/anim/AnimatorListeners$EndStateCallbackWrapper;->mListenerCalled:Z

    if-nez v0, :cond_22

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/anim/AnimatorListeners$EndStateCallbackWrapper;->mListenerCalled:Z

    iget-object p0, p0, Lcom/android/launcher3/anim/AnimatorListeners$EndStateCallbackWrapper;->mListener:Ljava/util/function/Consumer;

    instance-of v1, p1, Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_1b

    check-cast p1, Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    const/high16 v1, 0x3f000000  # 0.5f

    cmpl-float p1, p1, v1

    if-lez p1, :cond_1a

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :cond_1b
    :goto_1b
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_22
    return-void
.end method
