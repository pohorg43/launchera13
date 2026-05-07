.class Lcom/android/launcher3/icons/anim/OplusIconScaleAnimatorImpl$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/icons/anim/OplusIconScaleAnimatorImpl;->playIconScaleAnimation(Lcom/android/launcher3/icons/anim/IconAnimationParams;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/icons/anim/OplusIconScaleAnimatorImpl;

.field public final synthetic val$isHoming:Z


# direct methods
.method public constructor <init>(Lcom/android/launcher3/icons/anim/OplusIconScaleAnimatorImpl;Z)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher3/icons/anim/OplusIconScaleAnimatorImpl$4;->this$0:Lcom/android/launcher3/icons/anim/OplusIconScaleAnimatorImpl;

    iput-boolean p2, p0, Lcom/android/launcher3/icons/anim/OplusIconScaleAnimatorImpl$4;->val$isHoming:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;Z)V
    .registers 4

    const-string p1, "playIconScaleAnimation end, isHoming:"

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean p2, p0, Lcom/android/launcher3/icons/anim/OplusIconScaleAnimatorImpl$4;->val$isHoming:Z

    const-string v0, "OplusBubbleTextScaleAnimatorImpl"

    invoke-static {p1, p2, v0}, Lcom/android/common/config/b;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher3/icons/anim/OplusIconScaleAnimatorImpl$4;->this$0:Lcom/android/launcher3/icons/anim/OplusIconScaleAnimatorImpl;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/launcher3/icons/anim/OplusIconScaleAnimatorImpl;->access$402(Lcom/android/launcher3/icons/anim/OplusIconScaleAnimatorImpl;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    iget-boolean p1, p0, Lcom/android/launcher3/icons/anim/OplusIconScaleAnimatorImpl$4;->val$isHoming:Z

    if-eqz p1, :cond_1d

    iget-object p0, p0, Lcom/android/launcher3/icons/anim/OplusIconScaleAnimatorImpl$4;->this$0:Lcom/android/launcher3/icons/anim/OplusIconScaleAnimatorImpl;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/launcher3/icons/anim/OplusIconScaleAnimatorImpl;->access$502(Lcom/android/launcher3/icons/anim/OplusIconScaleAnimatorImpl;Z)Z

    :cond_1d
    return-void
.end method
