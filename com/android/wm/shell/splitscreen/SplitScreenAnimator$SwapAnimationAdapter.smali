.class Lcom/android/wm/shell/splitscreen/SplitScreenAnimator$SwapAnimationAdapter;
.super Lcom/android/wm/shell/splitscreen/SplitScreenAnimator$AnimationAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/splitscreen/SplitScreenAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SwapAnimationAdapter"
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/SurfaceControl;Landroid/view/animation/Animation;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/splitscreen/SplitScreenAnimator$AnimationAdapter;-><init>(Landroid/view/SurfaceControl;Landroid/view/animation/Animation;)V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/view/SurfaceControl$Transaction;J)V
    .registers 7

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenAnimator$AnimationAdapter;->mAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v1

    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenAnimator$AnimationAdapter;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0, p2, p3, v1}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/SplitScreenAnimator$AnimationAdapter;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {p2}, Landroid/view/animation/Transformation;->hasClipRect()Z

    move-result p2

    if-nez p2, :cond_18

    return-void

    :cond_18
    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/SplitScreenAnimator$AnimationAdapter;->mLeash:Landroid/view/SurfaceControl;

    if-eqz p2, :cond_38

    invoke-virtual {p2}, Landroid/view/SurfaceControl;->isValid()Z

    move-result p2

    if-nez p2, :cond_23

    goto :goto_38

    :cond_23
    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/SplitScreenAnimator$AnimationAdapter;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getClipRect()Landroid/graphics/Rect;

    move-result-object p2

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenAnimator$AnimationAdapter;->mLeash:Landroid/view/SurfaceControl;

    iget p3, p2, Landroid/graphics/Rect;->left:I

    int-to-float p3, p3

    iget p2, p2, Landroid/graphics/Rect;->top:I

    int-to-float p2, p2

    invoke-virtual {p1, p0, p3, p2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_38
    :goto_38
    return-void
.end method
