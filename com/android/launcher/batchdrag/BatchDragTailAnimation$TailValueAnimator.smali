.class Lcom/android/launcher/batchdrag/BatchDragTailAnimation$TailValueAnimator;
.super Landroid/animation/ValueAnimator;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/batchdrag/BatchDragTailAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TailValueAnimator"
.end annotation


# instance fields
.field public mFinalDeltaX:F

.field public mFinalDeltaY:F

.field public mInitDeltaX:F

.field public mInitDeltaY:F

.field public final synthetic this$0:Lcom/android/launcher/batchdrag/BatchDragTailAnimation;


# direct methods
.method public constructor <init>(Lcom/android/launcher/batchdrag/BatchDragTailAnimation;Landroid/view/View;Landroid/view/View;)V
    .registers 5

    iput-object p1, p0, Lcom/android/launcher/batchdrag/BatchDragTailAnimation$TailValueAnimator;->this$0:Lcom/android/launcher/batchdrag/BatchDragTailAnimation;

    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher/batchdrag/BatchDragTailAnimation$TailValueAnimator;->mFinalDeltaX:F

    iput v0, p0, Lcom/android/launcher/batchdrag/BatchDragTailAnimation$TailValueAnimator;->mFinalDeltaY:F

    iput v0, p0, Lcom/android/launcher/batchdrag/BatchDragTailAnimation$TailValueAnimator;->mInitDeltaX:F

    iput v0, p0, Lcom/android/launcher/batchdrag/BatchDragTailAnimation$TailValueAnimator;->mInitDeltaY:F

    new-instance v0, Lcom/android/launcher/batchdrag/BatchDragTailAnimation$TailValueAnimator$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/launcher/batchdrag/BatchDragTailAnimation$TailValueAnimator$1;-><init>(Lcom/android/launcher/batchdrag/BatchDragTailAnimation$TailValueAnimator;Lcom/android/launcher/batchdrag/BatchDragTailAnimation;Landroid/view/View;)V

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Lcom/android/launcher/batchdrag/BatchDragTailAnimation$TailValueAnimator$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/launcher/batchdrag/BatchDragTailAnimation$TailValueAnimator$2;-><init>(Lcom/android/launcher/batchdrag/BatchDragTailAnimation$TailValueAnimator;Lcom/android/launcher/batchdrag/BatchDragTailAnimation;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method
