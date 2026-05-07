.class Lcom/oplus/quickstep/anim/OplusSpringObjectAnimator$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/quickstep/anim/OplusSpringObjectAnimator;-><init>(Ljava/lang/Object;Landroid/util/FloatProperty;FFF[F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/quickstep/anim/OplusSpringObjectAnimator;


# direct methods
.method public constructor <init>(Lcom/oplus/quickstep/anim/OplusSpringObjectAnimator;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/quickstep/anim/OplusSpringObjectAnimator$1;->this$0:Lcom/oplus/quickstep/anim/OplusSpringObjectAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 4

    iget-object v0, p0, Lcom/oplus/quickstep/anim/OplusSpringObjectAnimator$1;->this$0:Lcom/oplus/quickstep/anim/OplusSpringObjectAnimator;

    invoke-static {v0}, Lcom/oplus/quickstep/anim/OplusSpringObjectAnimator;->access$200(Lcom/oplus/quickstep/anim/OplusSpringObjectAnimator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v1, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationCancel(Landroid/animation/Animator;)V

    goto :goto_a

    :cond_1a
    iget-object p0, p0, Lcom/oplus/quickstep/anim/OplusSpringObjectAnimator$1;->this$0:Lcom/oplus/quickstep/anim/OplusSpringObjectAnimator;

    invoke-static {p0}, Lcom/oplus/quickstep/anim/OplusSpringObjectAnimator;->access$400(Lcom/oplus/quickstep/anim/OplusSpringObjectAnimator;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    iget-object p1, p0, Lcom/oplus/quickstep/anim/OplusSpringObjectAnimator$1;->this$0:Lcom/oplus/quickstep/anim/OplusSpringObjectAnimator;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/oplus/quickstep/anim/OplusSpringObjectAnimator;->access$002(Lcom/oplus/quickstep/anim/OplusSpringObjectAnimator;Z)Z

    iget-object p0, p0, Lcom/oplus/quickstep/anim/OplusSpringObjectAnimator$1;->this$0:Lcom/oplus/quickstep/anim/OplusSpringObjectAnimator;

    invoke-static {p0}, Lcom/oplus/quickstep/anim/OplusSpringObjectAnimator;->access$300(Lcom/oplus/quickstep/anim/OplusSpringObjectAnimator;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4

    iget-object v0, p0, Lcom/oplus/quickstep/anim/OplusSpringObjectAnimator$1;->this$0:Lcom/oplus/quickstep/anim/OplusSpringObjectAnimator;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oplus/quickstep/anim/OplusSpringObjectAnimator;->access$002(Lcom/oplus/quickstep/anim/OplusSpringObjectAnimator;Z)Z

    iget-object v0, p0, Lcom/oplus/quickstep/anim/OplusSpringObjectAnimator$1;->this$0:Lcom/oplus/quickstep/anim/OplusSpringObjectAnimator;

    invoke-static {v0, v1}, Lcom/oplus/quickstep/anim/OplusSpringObjectAnimator;->access$102(Lcom/oplus/quickstep/anim/OplusSpringObjectAnimator;Z)Z

    iget-object p0, p0, Lcom/oplus/quickstep/anim/OplusSpringObjectAnimator$1;->this$0:Lcom/oplus/quickstep/anim/OplusSpringObjectAnimator;

    invoke-static {p0}, Lcom/oplus/quickstep/anim/OplusSpringObjectAnimator;->access$200(Lcom/oplus/quickstep/anim/OplusSpringObjectAnimator;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_15
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    goto :goto_15

    :cond_25
    return-void
.end method
