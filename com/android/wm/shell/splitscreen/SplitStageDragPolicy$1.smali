.class Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->startAnimation(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;FFFII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;

.field public final synthetic val$animationFinalProgress:F

.field public final synthetic val$currentDragCrop:Landroid/graphics/Rect;

.field public final synthetic val$currentDragPosition:Landroid/graphics/Point;

.field public final synthetic val$currentDragScale:F

.field public final synthetic val$currentTargetCrop:Landroid/graphics/Rect;

.field public final synthetic val$currentTargetPosition:Landroid/graphics/Point;

.field public final synthetic val$dragCrop:Landroid/graphics/Rect;

.field public final synthetic val$dragPosition:Landroid/graphics/Point;

.field public final synthetic val$dragScale:F

.field public final synthetic val$state:I

.field public final synthetic val$targetCrop:Landroid/graphics/Rect;

.field public final synthetic val$targetPosition:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;ILandroid/graphics/Point;Landroid/graphics/Point;FFFLandroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 14

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$1;->this$0:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;

    iput p2, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$1;->val$state:I

    iput-object p3, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$1;->val$targetPosition:Landroid/graphics/Point;

    iput-object p4, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$1;->val$currentTargetPosition:Landroid/graphics/Point;

    iput p5, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$1;->val$animationFinalProgress:F

    iput p6, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$1;->val$dragScale:F

    iput p7, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$1;->val$currentDragScale:F

    iput-object p8, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$1;->val$dragPosition:Landroid/graphics/Point;

    iput-object p9, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$1;->val$currentDragPosition:Landroid/graphics/Point;

    iput-object p10, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$1;->val$dragCrop:Landroid/graphics/Rect;

    iput-object p11, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$1;->val$currentDragCrop:Landroid/graphics/Rect;

    iput-object p12, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$1;->val$targetCrop:Landroid/graphics/Rect;

    iput-object p13, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$1;->val$currentTargetCrop:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 13

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$1;->this$0:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;

    invoke-static {v0}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->access$000(Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;)Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->getCurrentAnimationState()I

    move-result v0

    if-nez v0, :cond_16

    invoke-static {}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->access$100()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Animation already over"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_16
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget v0, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$1;->val$state:I

    const/4 v1, 0x4

    const/high16 v2, 0x3f800000  # 1.0f

    if-ne v0, v1, :cond_40

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$1;->this$0:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;

    invoke-static {v0}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->access$400(Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$1;->this$0:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;

    invoke-static {v3}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->access$300(Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;)Landroid/view/SurfaceControl;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$1;->this$0:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;

    invoke-static {v3}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->access$200(Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;)Landroid/view/SurfaceControl;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    :cond_40
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$1;->val$targetPosition:Landroid/graphics/Point;

    iget v3, v0, Landroid/graphics/Point;->x:I

    iget-object v4, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$1;->val$currentTargetPosition:Landroid/graphics/Point;

    iget v5, v4, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v5

    int-to-float v3, v3

    iget v6, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$1;->val$animationFinalProgress:F

    div-float v7, p1, v6

    mul-float/2addr v7, v3

    int-to-float v3, v5

    add-float/2addr v7, v3

    float-to-int v3, v7

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v4, v4, Landroid/graphics/Point;->y:I

    sub-int/2addr v0, v4

    int-to-float v0, v0

    div-float v5, p1, v6

    mul-float/2addr v5, v0

    int-to-float v0, v4

    add-float/2addr v5, v0

    float-to-int v0, v5

    iget-object v4, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$1;->this$0:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;

    invoke-static {v4}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->access$000(Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;)Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;

    move-result-object v4

    invoke-virtual {v4, v3, v0}, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->setCurrentTargetPosition(II)V

    iget-object v4, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$1;->this$0:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;

    invoke-static {v4}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->access$400(Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v4

    iget-object v5, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$1;->this$0:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;

    invoke-static {v5}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->access$500(Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;)Landroid/view/SurfaceControl;

    move-result-object v5

    int-to-float v3, v3

    int-to-float v0, v0

    invoke-virtual {v4, v5, v3, v0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    iget v0, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$1;->val$dragScale:F

    iget v3, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$1;->val$currentDragScale:F

    sub-float/2addr v0, v3

    iget v4, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$1;->val$animationFinalProgress:F

    div-float v4, p1, v4

    mul-float/2addr v4, v0

    add-float v10, v4, v3

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$1;->this$0:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;

    invoke-static {v0}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->access$000(Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;)Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->setCurrentDragSurfaceScale(F)V

    div-float v8, v2, v10

    iget v0, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$1;->val$state:I

    const/16 v2, 0x8

    if-ne v0, v2, :cond_e7

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$1;->this$0:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;

    invoke-static {v0}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->access$000(Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;)Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->getBeforeUpState()I

    move-result v0

    if-eq v0, v1, :cond_e7

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$1;->this$0:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;

    invoke-static {v0}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->access$000(Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;)Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->getBeforeUpState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_e7

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$1;->val$dragPosition:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$1;->val$currentDragPosition:Landroid/graphics/Point;

    iget v3, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    iget v4, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$1;->val$animationFinalProgress:F

    div-float v5, p1, v4

    mul-float/2addr v5, v1

    int-to-float v1, v3

    add-float/2addr v5, v1

    float-to-int v1, v5

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    div-float v3, p1, v4

    mul-float/2addr v3, v0

    int-to-float v0, v2

    add-float/2addr v3, v0

    float-to-int v0, v3

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$1;->this$0:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;

    invoke-static {v2}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->access$000(Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;)Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->setCurrentDragPosition(II)V

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$1;->this$0:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;

    invoke-static {v2}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->access$400(Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$1;->this$0:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;

    invoke-static {v3}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->access$600(Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;)Landroid/view/SurfaceControl;

    move-result-object v3

    int-to-float v1, v1

    int-to-float v0, v0

    invoke-virtual {v2, v3, v1, v0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    goto :goto_12f

    :cond_e7
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$1;->this$0:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;

    invoke-static {v0}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->access$000(Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;)Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->getCurrentMovePosition()Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$1;->this$0:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;

    invoke-static {v1}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->access$700(Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;)Landroid/graphics/PointF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/PointF;->x:F

    mul-float/2addr v1, v10

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$1;->this$0:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;

    invoke-static {v1}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->access$000(Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;)Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->getCurrentMovePosition()Landroid/graphics/PointF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$1;->this$0:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;

    invoke-static {v2}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->access$700(Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;)Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->y:F

    mul-float/2addr v2, v10

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$1;->this$0:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;

    invoke-static {v2}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->access$000(Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;)Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->setCurrentDragPosition(II)V

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$1;->this$0:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;

    invoke-static {v2}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->access$400(Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$1;->this$0:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;

    invoke-static {v3}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->access$600(Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;)Landroid/view/SurfaceControl;

    move-result-object v3

    int-to-float v0, v0

    int-to-float v1, v1

    invoke-virtual {v2, v3, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    :goto_12f
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$1;->val$dragCrop:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$1;->val$currentDragCrop:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    iget v4, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$1;->val$animationFinalProgress:F

    div-float v5, p1, v4

    mul-float/2addr v5, v1

    int-to-float v1, v3

    add-float/2addr v5, v1

    float-to-int v1, v5

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v5, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v5

    int-to-float v3, v3

    div-float v6, p1, v4

    mul-float/2addr v6, v3

    int-to-float v3, v5

    add-float/2addr v6, v3

    float-to-int v3, v6

    iget v5, v0, Landroid/graphics/Rect;->right:I

    iget v6, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    div-float v7, p1, v4

    mul-float/2addr v7, v5

    int-to-float v5, v6

    add-float/2addr v7, v5

    float-to-int v5, v7

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    div-float v4, p1, v4

    mul-float/2addr v4, v0

    int-to-float v0, v2

    add-float/2addr v4, v0

    float-to-int v0, v4

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$1;->this$0:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;

    invoke-static {v2}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->access$000(Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;)Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;

    move-result-object v2

    invoke-virtual {v2, v1, v3, v5, v0}, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->setCurrentDragBounds(IIII)V

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$1;->this$0:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;

    invoke-static {v2}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->access$800(Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    iget-object v4, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$1;->this$0:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;

    invoke-static {v4}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->access$900(Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v8

    sub-float/2addr v2, v4

    iget-object v4, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$1;->this$0:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;

    invoke-static {v4}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->access$800(Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v4

    int-to-float v1, v1

    add-float/2addr v2, v1

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$1;->this$0:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;

    invoke-static {v1}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->access$800(Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v1

    int-to-float v1, v5

    add-float/2addr v2, v1

    const/high16 v1, 0x40000000  # 2.0f

    div-float/2addr v2, v1

    float-to-int v2, v2

    iget-object v4, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$1;->this$0:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;

    invoke-static {v4}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->access$800(Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$1;->this$0:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;

    invoke-static {v5}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->access$1000(Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v8

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$1;->this$0:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;

    invoke-static {v5}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->access$800(Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;)Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v5

    int-to-float v3, v3

    add-float/2addr v4, v3

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$1;->this$0:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;

    invoke-static {v3}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->access$800(Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v3

    int-to-float v0, v0

    add-float/2addr v4, v0

    div-float/2addr v4, v1

    float-to-int v0, v4

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$1;->this$0:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;

    invoke-static {v1}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->access$400(Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$1;->this$0:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;

    invoke-static {v1}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->access$200(Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;)Landroid/view/SurfaceControl;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v5, v8

    invoke-virtual/range {v3 .. v8}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v5

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$1;->this$0:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;

    invoke-static {v1}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->access$600(Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;)Landroid/view/SurfaceControl;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    move v7, v10

    invoke-virtual/range {v5 .. v10}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$1;->this$0:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;

    invoke-static {v3}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->access$600(Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;)Landroid/view/SurfaceControl;

    move-result-object v3

    iget-object v4, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$1;->this$0:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;

    invoke-static {v4}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->access$000(Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;)Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->getCurrentDragBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$1;->this$0:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;

    invoke-static {v3}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->access$200(Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;)Landroid/view/SurfaceControl;

    move-result-object v3

    int-to-float v2, v2

    int-to-float v0, v0

    invoke-virtual {v1, v3, v2, v0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$1;->val$targetCrop:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$1;->val$currentTargetCrop:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    iget v4, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$1;->val$animationFinalProgress:F

    div-float v5, p1, v4

    mul-float/2addr v5, v1

    int-to-float v1, v3

    add-float/2addr v5, v1

    float-to-int v1, v5

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v5, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v5

    int-to-float v3, v3

    div-float v6, p1, v4

    mul-float/2addr v6, v3

    int-to-float v3, v5

    add-float/2addr v6, v3

    float-to-int v3, v6

    iget v5, v0, Landroid/graphics/Rect;->right:I

    iget v6, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    div-float v7, p1, v4

    mul-float/2addr v7, v5

    int-to-float v5, v6

    add-float/2addr v7, v5

    float-to-int v5, v7

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    div-float/2addr p1, v4

    mul-float/2addr p1, v0

    int-to-float v0, v2

    add-float/2addr p1, v0

    float-to-int p1, p1

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$1;->this$0:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;

    invoke-static {v0}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->access$000(Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;)Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;

    move-result-object v0

    invoke-virtual {v0, v1, v3, v5, p1}, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->setCurrentTargetBounds(IIII)V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$1;->this$0:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;

    invoke-static {p1}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->access$000(Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;)Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->getCurrentTargetBounds()Landroid/graphics/Rect;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$1;->this$0:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;

    invoke-static {v0}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->access$000(Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;)Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->getCurrentTargetBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr p1, v0

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$1;->this$0:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;

    invoke-static {v0}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->access$900(Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;)I

    move-result v0

    sub-int/2addr p1, v0

    div-int/lit8 p1, p1, 0x2

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$1;->this$0:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;

    invoke-static {v0}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->access$000(Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;)Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->getCurrentTargetBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$1;->this$0:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;

    invoke-static {v1}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->access$000(Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;)Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->getCurrentTargetBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$1;->this$0:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;

    invoke-static {v1}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->access$1000(Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;)I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$1;->this$0:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;

    invoke-static {v1}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->access$400(Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$1;->this$0:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;

    invoke-static {v2}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->access$500(Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;)Landroid/view/SurfaceControl;

    move-result-object v2

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$1;->this$0:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;

    invoke-static {v3}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->access$000(Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;)Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->getCurrentTargetBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$1;->this$0:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;

    invoke-static {v2}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->access$300(Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;)Landroid/view/SurfaceControl;

    move-result-object v2

    int-to-float p1, p1

    int-to-float v0, v0

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$1;->this$0:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;

    invoke-static {p0}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->access$400(Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method
