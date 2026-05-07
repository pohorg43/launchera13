.class Lcom/android/launcher/batchdrag/BatchDragView$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/batchdrag/BatchDragView;->animateView(Landroid/graphics/Rect;Landroid/graphics/Rect;FFFFFILandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;ILjava/lang/Runnable;ILandroid/view/View;I)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/batchdrag/BatchDragView;

.field public final synthetic val$alphaInterpolator:Landroid/view/animation/Interpolator;

.field public final synthetic val$dropViewScale:F

.field public final synthetic val$finalAlpha:F

.field public final synthetic val$finalScaleX:F

.field public final synthetic val$finalScaleY:F

.field public final synthetic val$from:Landroid/graphics/Rect;

.field public final synthetic val$initAlpha:F

.field public final synthetic val$initScaleX:F

.field public final synthetic val$initScaleY:F

.field public final synthetic val$motionInterpolator:Landroid/view/animation/Interpolator;

.field public final synthetic val$motionXInterpolator:Landroid/view/animation/Interpolator;

.field public final synthetic val$to:Landroid/graphics/Rect;

.field public final synthetic val$transOffset:I

.field public final synthetic val$view:Lcom/android/launcher/batchdrag/BatchDragView;

.field public final synthetic val$xDistance:I


# direct methods
.method public constructor <init>(Lcom/android/launcher/batchdrag/BatchDragView;Lcom/android/launcher/batchdrag/BatchDragView;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;FFFFFFFLandroid/graphics/Rect;ILandroid/graphics/Rect;I)V
    .registers 19

    move-object v0, p0

    move-object v1, p1

    iput-object v1, v0, Lcom/android/launcher/batchdrag/BatchDragView$1;->this$0:Lcom/android/launcher/batchdrag/BatchDragView;

    move-object v1, p2

    iput-object v1, v0, Lcom/android/launcher/batchdrag/BatchDragView$1;->val$view:Lcom/android/launcher/batchdrag/BatchDragView;

    move-object v1, p3

    iput-object v1, v0, Lcom/android/launcher/batchdrag/BatchDragView$1;->val$alphaInterpolator:Landroid/view/animation/Interpolator;

    move-object v1, p4

    iput-object v1, v0, Lcom/android/launcher/batchdrag/BatchDragView$1;->val$motionInterpolator:Landroid/view/animation/Interpolator;

    move-object v1, p5

    iput-object v1, v0, Lcom/android/launcher/batchdrag/BatchDragView$1;->val$motionXInterpolator:Landroid/view/animation/Interpolator;

    move v1, p6

    iput v1, v0, Lcom/android/launcher/batchdrag/BatchDragView$1;->val$initScaleX:F

    move v1, p7

    iput v1, v0, Lcom/android/launcher/batchdrag/BatchDragView$1;->val$dropViewScale:F

    move v1, p8

    iput v1, v0, Lcom/android/launcher/batchdrag/BatchDragView$1;->val$initScaleY:F

    move v1, p9

    iput v1, v0, Lcom/android/launcher/batchdrag/BatchDragView$1;->val$finalScaleX:F

    move v1, p10

    iput v1, v0, Lcom/android/launcher/batchdrag/BatchDragView$1;->val$finalScaleY:F

    move v1, p11

    iput v1, v0, Lcom/android/launcher/batchdrag/BatchDragView$1;->val$finalAlpha:F

    move v1, p12

    iput v1, v0, Lcom/android/launcher/batchdrag/BatchDragView$1;->val$initAlpha:F

    move-object v1, p13

    iput-object v1, v0, Lcom/android/launcher/batchdrag/BatchDragView$1;->val$from:Landroid/graphics/Rect;

    move/from16 v1, p14

    iput v1, v0, Lcom/android/launcher/batchdrag/BatchDragView$1;->val$xDistance:I

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/android/launcher/batchdrag/BatchDragView$1;->val$to:Landroid/graphics/Rect;

    move/from16 v1, p16

    iput v1, v0, Lcom/android/launcher/batchdrag/BatchDragView$1;->val$transOffset:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 14

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/android/launcher/batchdrag/BatchDragView$1;->val$view:Lcom/android/launcher/batchdrag/BatchDragView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher/batchdrag/BatchDragView$1;->val$view:Lcom/android/launcher/batchdrag/BatchDragView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher/batchdrag/BatchDragView$1;->val$alphaInterpolator:Landroid/view/animation/Interpolator;

    if-nez v2, :cond_1c

    move v2, p1

    goto :goto_20

    :cond_1c
    invoke-interface {v2, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    :goto_20
    iget-object v3, p0, Lcom/android/launcher/batchdrag/BatchDragView$1;->val$motionInterpolator:Landroid/view/animation/Interpolator;

    if-nez v3, :cond_26

    move v3, p1

    goto :goto_2a

    :cond_26
    invoke-interface {v3, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    :goto_2a
    iget-object v4, p0, Lcom/android/launcher/batchdrag/BatchDragView$1;->val$motionXInterpolator:Landroid/view/animation/Interpolator;

    if-nez v4, :cond_30

    const/4 v4, 0x0

    goto :goto_34

    :cond_30
    invoke-interface {v4, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v4

    :goto_34
    iget v5, p0, Lcom/android/launcher/batchdrag/BatchDragView$1;->val$initScaleX:F

    iget v6, p0, Lcom/android/launcher/batchdrag/BatchDragView$1;->val$dropViewScale:F

    mul-float/2addr v5, v6

    iget v7, p0, Lcom/android/launcher/batchdrag/BatchDragView$1;->val$initScaleY:F

    mul-float/2addr v7, v6

    iget v6, p0, Lcom/android/launcher/batchdrag/BatchDragView$1;->val$finalScaleX:F

    mul-float/2addr v6, p1

    const/high16 v8, 0x3f800000  # 1.0f

    sub-float v9, v8, p1

    mul-float v10, v5, v9

    add-float/2addr v10, v6

    iget v6, p0, Lcom/android/launcher/batchdrag/BatchDragView$1;->val$finalScaleY:F

    mul-float/2addr v6, p1

    mul-float/2addr v9, v7

    add-float/2addr v9, v6

    iget p1, p0, Lcom/android/launcher/batchdrag/BatchDragView$1;->val$finalAlpha:F

    mul-float/2addr p1, v2

    iget v6, p0, Lcom/android/launcher/batchdrag/BatchDragView$1;->val$initAlpha:F

    invoke-static {v8, v2, v6, p1}, Landroidx/appcompat/graphics/drawable/a;->a(FFFF)F

    move-result p1

    iget-object v2, p0, Lcom/android/launcher/batchdrag/BatchDragView$1;->val$from:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    sub-float/2addr v5, v8

    int-to-float v0, v0

    const/high16 v11, 0x40000000  # 2.0f

    invoke-static {v5, v0, v11, v6}, Landroidx/constraintlayout/core/motion/utils/a;->a(FFFF)F

    move-result v0

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    sub-float/2addr v7, v8

    int-to-float v1, v1

    invoke-static {v7, v1, v11, v2}, Landroidx/constraintlayout/core/motion/utils/a;->a(FFFF)F

    move-result v1

    iget-object v2, p0, Lcom/android/launcher/batchdrag/BatchDragView$1;->this$0:Lcom/android/launcher/batchdrag/BatchDragView;

    invoke-static {v2}, Lcom/android/launcher/batchdrag/BatchDragView;->access$000(Lcom/android/launcher/batchdrag/BatchDragView;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr v2, v0

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v0, v2

    float-to-int v0, v0

    iget-object v2, p0, Lcom/android/launcher/batchdrag/BatchDragView$1;->this$0:Lcom/android/launcher/batchdrag/BatchDragView;

    invoke-static {v2}, Lcom/android/launcher/batchdrag/BatchDragView;->access$000(Lcom/android/launcher/batchdrag/BatchDragView;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    sub-float/2addr v2, v1

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p0, Lcom/android/launcher/batchdrag/BatchDragView$1;->val$xDistance:I

    int-to-float v2, v2

    mul-float/2addr v2, v4

    float-to-int v2, v2

    iget-object v3, p0, Lcom/android/launcher/batchdrag/BatchDragView$1;->this$0:Lcom/android/launcher/batchdrag/BatchDragView;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result v3

    sub-int/2addr v0, v3

    iget-object v3, p0, Lcom/android/launcher/batchdrag/BatchDragView$1;->this$0:Lcom/android/launcher/batchdrag/BatchDragView;

    invoke-static {v3}, Lcom/android/launcher/batchdrag/BatchDragView;->access$100(Lcom/android/launcher/batchdrag/BatchDragView;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_b4

    iget-object v3, p0, Lcom/android/launcher/batchdrag/BatchDragView$1;->this$0:Lcom/android/launcher/batchdrag/BatchDragView;

    invoke-static {v3}, Lcom/android/launcher/batchdrag/BatchDragView;->access$200(Lcom/android/launcher/batchdrag/BatchDragView;)I

    move-result v3

    iget-object v4, p0, Lcom/android/launcher/batchdrag/BatchDragView$1;->this$0:Lcom/android/launcher/batchdrag/BatchDragView;

    invoke-static {v4}, Lcom/android/launcher/batchdrag/BatchDragView;->access$100(Lcom/android/launcher/batchdrag/BatchDragView;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getScrollX()I

    move-result v4

    sub-int/2addr v3, v4

    goto :goto_b5

    :cond_b4
    const/4 v3, 0x0

    :goto_b5
    add-int/2addr v0, v3

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/android/launcher/batchdrag/BatchDragView$1;->this$0:Lcom/android/launcher/batchdrag/BatchDragView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/launcher/batchdrag/BatchDragView$1;->val$from:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/launcher/batchdrag/BatchDragView$1;->val$to:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_dd

    iget-object v0, p0, Lcom/android/launcher/batchdrag/BatchDragView$1;->this$0:Lcom/android/launcher/batchdrag/BatchDragView;

    iget-object v1, p0, Lcom/android/launcher/batchdrag/BatchDragView$1;->val$from:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    iget-object v0, p0, Lcom/android/launcher/batchdrag/BatchDragView$1;->this$0:Lcom/android/launcher/batchdrag/BatchDragView;

    iget-object v1, p0, Lcom/android/launcher/batchdrag/BatchDragView$1;->val$from:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    goto :goto_102

    :cond_dd
    iget v2, p0, Lcom/android/launcher/batchdrag/BatchDragView$1;->val$transOffset:I

    if-lez v2, :cond_f6

    iget-object v3, p0, Lcom/android/launcher/batchdrag/BatchDragView$1;->this$0:Lcom/android/launcher/batchdrag/BatchDragView;

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1

    int-to-float v0, v0

    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    iget-object v0, p0, Lcom/android/launcher/batchdrag/BatchDragView$1;->this$0:Lcom/android/launcher/batchdrag/BatchDragView;

    iget v2, p0, Lcom/android/launcher/batchdrag/BatchDragView$1;->val$transOffset:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    goto :goto_102

    :cond_f6
    iget-object v2, p0, Lcom/android/launcher/batchdrag/BatchDragView$1;->this$0:Lcom/android/launcher/batchdrag/BatchDragView;

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    iget-object v0, p0, Lcom/android/launcher/batchdrag/BatchDragView$1;->this$0:Lcom/android/launcher/batchdrag/BatchDragView;

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    :goto_102
    iget-object v0, p0, Lcom/android/launcher/batchdrag/BatchDragView$1;->this$0:Lcom/android/launcher/batchdrag/BatchDragView;

    invoke-virtual {v0, v10}, Landroid/widget/FrameLayout;->setScaleX(F)V

    iget-object v0, p0, Lcom/android/launcher/batchdrag/BatchDragView$1;->this$0:Lcom/android/launcher/batchdrag/BatchDragView;

    invoke-virtual {v0, v9}, Landroid/widget/FrameLayout;->setScaleY(F)V

    iget-object p0, p0, Lcom/android/launcher/batchdrag/BatchDragView$1;->this$0:Lcom/android/launcher/batchdrag/BatchDragView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    return-void
.end method
