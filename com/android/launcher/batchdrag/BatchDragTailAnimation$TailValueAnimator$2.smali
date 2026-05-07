.class Lcom/android/launcher/batchdrag/BatchDragTailAnimation$TailValueAnimator$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


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

.field public final synthetic val$followView:Landroid/view/View;

.field public final synthetic val$this$0:Lcom/android/launcher/batchdrag/BatchDragTailAnimation;

.field public final synthetic val$view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/android/launcher/batchdrag/BatchDragTailAnimation$TailValueAnimator;Lcom/android/launcher/batchdrag/BatchDragTailAnimation;Landroid/view/View;Landroid/view/View;)V
    .registers 5

    iput-object p1, p0, Lcom/android/launcher/batchdrag/BatchDragTailAnimation$TailValueAnimator$2;->this$1:Lcom/android/launcher/batchdrag/BatchDragTailAnimation$TailValueAnimator;

    iput-object p2, p0, Lcom/android/launcher/batchdrag/BatchDragTailAnimation$TailValueAnimator$2;->val$this$0:Lcom/android/launcher/batchdrag/BatchDragTailAnimation;

    iput-object p3, p0, Lcom/android/launcher/batchdrag/BatchDragTailAnimation$TailValueAnimator$2;->val$view:Landroid/view/View;

    iput-object p4, p0, Lcom/android/launcher/batchdrag/BatchDragTailAnimation$TailValueAnimator$2;->val$followView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    iget-object p1, p0, Lcom/android/launcher/batchdrag/BatchDragTailAnimation$TailValueAnimator$2;->val$view:Landroid/view/View;

    iget-object v0, p0, Lcom/android/launcher/batchdrag/BatchDragTailAnimation$TailValueAnimator$2;->this$1:Lcom/android/launcher/batchdrag/BatchDragTailAnimation$TailValueAnimator;

    iget v0, v0, Lcom/android/launcher/batchdrag/BatchDragTailAnimation$TailValueAnimator;->mFinalDeltaX:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    iget-object p1, p0, Lcom/android/launcher/batchdrag/BatchDragTailAnimation$TailValueAnimator$2;->val$view:Landroid/view/View;

    iget-object p0, p0, Lcom/android/launcher/batchdrag/BatchDragTailAnimation$TailValueAnimator$2;->this$1:Lcom/android/launcher/batchdrag/BatchDragTailAnimation$TailValueAnimator;

    iget p0, p0, Lcom/android/launcher/batchdrag/BatchDragTailAnimation$TailValueAnimator;->mFinalDeltaY:F

    invoke-virtual {p1, p0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4

    iget-object p1, p0, Lcom/android/launcher/batchdrag/BatchDragTailAnimation$TailValueAnimator$2;->this$1:Lcom/android/launcher/batchdrag/BatchDragTailAnimation$TailValueAnimator;

    iget-object v0, p0, Lcom/android/launcher/batchdrag/BatchDragTailAnimation$TailValueAnimator$2;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    iput v0, p1, Lcom/android/launcher/batchdrag/BatchDragTailAnimation$TailValueAnimator;->mInitDeltaX:F

    iget-object p1, p0, Lcom/android/launcher/batchdrag/BatchDragTailAnimation$TailValueAnimator$2;->this$1:Lcom/android/launcher/batchdrag/BatchDragTailAnimation$TailValueAnimator;

    iget-object v0, p0, Lcom/android/launcher/batchdrag/BatchDragTailAnimation$TailValueAnimator$2;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    iput v0, p1, Lcom/android/launcher/batchdrag/BatchDragTailAnimation$TailValueAnimator;->mInitDeltaY:F

    iget-object p1, p0, Lcom/android/launcher/batchdrag/BatchDragTailAnimation$TailValueAnimator$2;->this$1:Lcom/android/launcher/batchdrag/BatchDragTailAnimation$TailValueAnimator;

    iget-object v0, p0, Lcom/android/launcher/batchdrag/BatchDragTailAnimation$TailValueAnimator$2;->val$followView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    const/high16 v1, 0x40000000  # 2.0f

    add-float/2addr v0, v1

    iput v0, p1, Lcom/android/launcher/batchdrag/BatchDragTailAnimation$TailValueAnimator;->mFinalDeltaX:F

    iget-object p1, p0, Lcom/android/launcher/batchdrag/BatchDragTailAnimation$TailValueAnimator$2;->this$1:Lcom/android/launcher/batchdrag/BatchDragTailAnimation$TailValueAnimator;

    iget-object p0, p0, Lcom/android/launcher/batchdrag/BatchDragTailAnimation$TailValueAnimator$2;->val$followView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result p0

    const/high16 v0, -0x40000000  # -2.0f

    add-float/2addr p0, v0

    iput p0, p1, Lcom/android/launcher/batchdrag/BatchDragTailAnimation$TailValueAnimator;->mFinalDeltaY:F

    return-void
.end method
