.class Lcom/android/launcher/batchdrag/BatchDragTailAnimation$TailValueAnimator$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/batchdrag/BatchDragTailAnimation$TailValueAnimator;-><init>(Lcom/android/launcher/batchdrag/BatchDragTailAnimation;Landroid/view/View;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/launcher/batchdrag/BatchDragTailAnimation$TailValueAnimator;

.field public final synthetic val$this$0:Lcom/android/launcher/batchdrag/BatchDragTailAnimation;

.field public final synthetic val$view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/android/launcher/batchdrag/BatchDragTailAnimation$TailValueAnimator;Lcom/android/launcher/batchdrag/BatchDragTailAnimation;Landroid/view/View;)V
    .registers 4

    iput-object p1, p0, Lcom/android/launcher/batchdrag/BatchDragTailAnimation$TailValueAnimator$1;->this$1:Lcom/android/launcher/batchdrag/BatchDragTailAnimation$TailValueAnimator;

    iput-object p2, p0, Lcom/android/launcher/batchdrag/BatchDragTailAnimation$TailValueAnimator$1;->val$this$0:Lcom/android/launcher/batchdrag/BatchDragTailAnimation;

    iput-object p3, p0, Lcom/android/launcher/batchdrag/BatchDragTailAnimation$TailValueAnimator$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 6

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/android/launcher/batchdrag/BatchDragTailAnimation$TailValueAnimator$1;->this$1:Lcom/android/launcher/batchdrag/BatchDragTailAnimation$TailValueAnimator;

    iget v1, v0, Lcom/android/launcher/batchdrag/BatchDragTailAnimation$TailValueAnimator;->mFinalDeltaX:F

    mul-float/2addr v1, p1

    const/high16 v2, 0x3f800000  # 1.0f

    sub-float/2addr v2, p1

    iget v3, v0, Lcom/android/launcher/batchdrag/BatchDragTailAnimation$TailValueAnimator;->mInitDeltaX:F

    mul-float/2addr v3, v2

    add-float/2addr v3, v1

    iget v1, v0, Lcom/android/launcher/batchdrag/BatchDragTailAnimation$TailValueAnimator;->mFinalDeltaY:F

    mul-float/2addr p1, v1

    iget v0, v0, Lcom/android/launcher/batchdrag/BatchDragTailAnimation$TailValueAnimator;->mInitDeltaY:F

    mul-float/2addr v2, v0

    add-float/2addr v2, p1

    iget-object p1, p0, Lcom/android/launcher/batchdrag/BatchDragTailAnimation$TailValueAnimator$1;->val$view:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setTranslationX(F)V

    iget-object p0, p0, Lcom/android/launcher/batchdrag/BatchDragTailAnimation$TailValueAnimator$1;->val$view:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method
