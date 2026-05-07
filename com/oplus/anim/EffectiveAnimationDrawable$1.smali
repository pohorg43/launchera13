.class Lcom/oplus/anim/EffectiveAnimationDrawable$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/anim/EffectiveAnimationDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/anim/EffectiveAnimationDrawable;


# direct methods
.method public constructor <init>(Lcom/oplus/anim/EffectiveAnimationDrawable;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/anim/EffectiveAnimationDrawable$1;->this$0:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 2

    iget-object p1, p0, Lcom/oplus/anim/EffectiveAnimationDrawable$1;->this$0:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-static {p1}, Lcom/oplus/anim/EffectiveAnimationDrawable;->access$000(Lcom/oplus/anim/EffectiveAnimationDrawable;)Lcom/oplus/anim/model/layer/CompositionLayer;

    move-result-object p1

    if-eqz p1, :cond_1b

    iget-object p1, p0, Lcom/oplus/anim/EffectiveAnimationDrawable$1;->this$0:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-static {p1}, Lcom/oplus/anim/EffectiveAnimationDrawable;->access$000(Lcom/oplus/anim/EffectiveAnimationDrawable;)Lcom/oplus/anim/model/layer/CompositionLayer;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable$1;->this$0:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-static {p0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->access$100(Lcom/oplus/anim/EffectiveAnimationDrawable;)Lcom/oplus/anim/utils/EffectiveValueAnimator;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->getAnimatedValueAbsolute()F

    move-result p0

    invoke-virtual {p1, p0}, Lcom/oplus/anim/model/layer/CompositionLayer;->setProgress(F)V

    :cond_1b
    return-void
.end method
