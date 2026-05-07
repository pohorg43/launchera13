.class Lcom/android/launcher/batchdrag/BatchDragView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/batchdrag/BatchDragView;->animateView(Landroid/animation/ValueAnimator$AnimatorUpdateListener;ILandroid/animation/TimeInterpolator;Ljava/lang/Runnable;ILandroid/view/View;)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/batchdrag/BatchDragView;

.field public final synthetic val$animationEndStyle:I

.field public final synthetic val$onCompleteRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/android/launcher/batchdrag/BatchDragView;Ljava/lang/Runnable;I)V
    .registers 4

    iput-object p1, p0, Lcom/android/launcher/batchdrag/BatchDragView$2;->this$0:Lcom/android/launcher/batchdrag/BatchDragView;

    iput-object p2, p0, Lcom/android/launcher/batchdrag/BatchDragView$2;->val$onCompleteRunnable:Ljava/lang/Runnable;

    iput p3, p0, Lcom/android/launcher/batchdrag/BatchDragView$2;->val$animationEndStyle:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    iget-object p1, p0, Lcom/android/launcher/batchdrag/BatchDragView$2;->val$onCompleteRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_7

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_7
    iget p1, p0, Lcom/android/launcher/batchdrag/BatchDragView$2;->val$animationEndStyle:I

    if-eqz p1, :cond_c

    goto :goto_16

    :cond_c
    iget-object p1, p0, Lcom/android/launcher/batchdrag/BatchDragView$2;->this$0:Lcom/android/launcher/batchdrag/BatchDragView;

    invoke-virtual {p1}, Lcom/android/launcher3/dragndrop/OplusDragView;->remove()V

    iget-object p1, p0, Lcom/android/launcher/batchdrag/BatchDragView$2;->this$0:Lcom/android/launcher/batchdrag/BatchDragView;

    invoke-virtual {p1}, Lcom/android/launcher/batchdrag/BatchDragView;->clearAnimatedView()V

    :goto_16
    iget-object p0, p0, Lcom/android/launcher/batchdrag/BatchDragView$2;->this$0:Lcom/android/launcher/batchdrag/BatchDragView;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/launcher/batchdrag/BatchDragView;->access$302(Lcom/android/launcher/batchdrag/BatchDragView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    return-void
.end method
