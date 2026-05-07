.class Lcom/android/launcher/views/AdaptiveRotateStateAnimatorRoundImageView$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/views/AdaptiveRotateStateAnimatorRoundImageView;->foregroundAnimateToSelected()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/views/AdaptiveRotateStateAnimatorRoundImageView;

.field public final synthetic val$foreground:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Lcom/android/launcher/views/AdaptiveRotateStateAnimatorRoundImageView;Landroid/graphics/drawable/Drawable;)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorRoundImageView$3;->this$0:Lcom/android/launcher/views/AdaptiveRotateStateAnimatorRoundImageView;

    iput-object p2, p0, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorRoundImageView$3;->val$foreground:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorRoundImageView$3;->val$foreground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorRoundImageView$3;->this$0:Lcom/android/launcher/views/AdaptiveRotateStateAnimatorRoundImageView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorRoundImageView;->access$102(Lcom/android/launcher/views/AdaptiveRotateStateAnimatorRoundImageView;I)I

    iget-object p1, p0, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorRoundImageView$3;->val$foreground:Landroid/graphics/drawable/Drawable;

    iget-object p0, p0, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorRoundImageView$3;->this$0:Lcom/android/launcher/views/AdaptiveRotateStateAnimatorRoundImageView;

    invoke-static {p0}, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorRoundImageView;->access$100(Lcom/android/launcher/views/AdaptiveRotateStateAnimatorRoundImageView;)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_1e
    return-void
.end method
