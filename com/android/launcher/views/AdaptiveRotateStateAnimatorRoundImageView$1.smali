.class Lcom/android/launcher/views/AdaptiveRotateStateAnimatorRoundImageView$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/views/AdaptiveRotateStateAnimatorRoundImageView;->animateToPress()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/views/AdaptiveRotateStateAnimatorRoundImageView;


# direct methods
.method public constructor <init>(Lcom/android/launcher/views/AdaptiveRotateStateAnimatorRoundImageView;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorRoundImageView$1;->this$0:Lcom/android/launcher/views/AdaptiveRotateStateAnimatorRoundImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorRoundImageView$1;->this$0:Lcom/android/launcher/views/AdaptiveRotateStateAnimatorRoundImageView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorRoundImageView;->access$002(Lcom/android/launcher/views/AdaptiveRotateStateAnimatorRoundImageView;F)F

    iget-object p1, p0, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorRoundImageView$1;->this$0:Lcom/android/launcher/views/AdaptiveRotateStateAnimatorRoundImageView;

    invoke-static {p1}, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorRoundImageView;->access$000(Lcom/android/launcher/views/AdaptiveRotateStateAnimatorRoundImageView;)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleX(F)V

    iget-object p0, p0, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorRoundImageView$1;->this$0:Lcom/android/launcher/views/AdaptiveRotateStateAnimatorRoundImageView;

    invoke-static {p0}, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorRoundImageView;->access$000(Lcom/android/launcher/views/AdaptiveRotateStateAnimatorRoundImageView;)F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setScaleY(F)V

    return-void
.end method
