.class Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->startCropAnimationOnFoldDevice(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;

.field public final synthetic val$changeVisibleCrop:Landroid/graphics/Rect;

.field public final synthetic val$dragTopTaskSurface:Landroid/view/SurfaceControl;

.field public final synthetic val$visibleCrop:Landroid/graphics/Rect;

.field public final synthetic val$zoomFinalCrop:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/SurfaceControl;)V
    .registers 6

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$3;->this$0:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$3;->val$zoomFinalCrop:Landroid/graphics/Rect;

    iput-object p3, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$3;->val$visibleCrop:Landroid/graphics/Rect;

    iput-object p4, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$3;->val$changeVisibleCrop:Landroid/graphics/Rect;

    iput-object p5, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$3;->val$dragTopTaskSurface:Landroid/view/SurfaceControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 9

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$3;->val$zoomFinalCrop:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$3;->val$visibleCrop:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    mul-float/2addr v1, p1

    int-to-float v3, v3

    add-float/2addr v1, v3

    float-to-int v1, v1

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, p1

    int-to-float v4, v4

    add-float/2addr v3, v4

    float-to-int v3, v3

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v5, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v4, p1

    int-to-float v5, v5

    add-float/2addr v4, v5

    float-to-int v4, v4

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    mul-float/2addr v0, p1

    int-to-float p1, v2

    add-float/2addr v0, p1

    float-to-int p1, v0

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$3;->val$changeVisibleCrop:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v3, v4, p1}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$3;->this$0:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;

    invoke-static {v0}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->access$800(Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$3;->this$0:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;

    invoke-static {v2}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->access$900(Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;)I

    move-result v2

    int-to-float v2, v2

    iget-object v5, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$3;->this$0:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;

    invoke-static {v5}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->access$1500(Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;)F

    move-result v5

    const/high16 v6, 0x3f800000  # 1.0f

    div-float v5, v6, v5

    mul-float/2addr v5, v2

    sub-float/2addr v0, v5

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$3;->this$0:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;

    invoke-static {v2}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->access$800(Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$3;->this$0:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;

    invoke-static {v1}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->access$800(Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v1

    int-to-float v1, v4

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000  # 2.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$3;->this$0:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;

    invoke-static {v2}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->access$800(Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    iget-object v4, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$3;->this$0:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;

    invoke-static {v4}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->access$1000(Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$3;->this$0:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;

    invoke-static {v5}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->access$1500(Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;)F

    move-result v5

    div-float/2addr v6, v5

    mul-float/2addr v6, v4

    sub-float/2addr v2, v6

    iget-object v4, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$3;->this$0:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;

    invoke-static {v4}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->access$800(Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$3;->this$0:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;

    invoke-static {v3}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->access$800(Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, v3

    int-to-float p1, p1

    add-float/2addr v2, p1

    div-float/2addr v2, v1

    float-to-int p1, v2

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$3;->this$0:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;

    invoke-static {v1}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->access$400(Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$3;->val$dragTopTaskSurface:Landroid/view/SurfaceControl;

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$3;->val$changeVisibleCrop:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$3;->this$0:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;

    invoke-static {p0}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->access$200(Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;)Landroid/view/SurfaceControl;

    move-result-object p0

    int-to-float v0, v0

    int-to-float p1, p1

    invoke-virtual {v1, p0, v0, p1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method
