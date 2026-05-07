.class Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->startHomeAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public mHasStartAlphaAnim:Z

.field public final synthetic this$0:Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;

.field public final synthetic val$currentRect:Landroid/graphics/RectF;

.field public final synthetic val$multi:F

.field public final synthetic val$set:Landroid/animation/AnimatorSet;

.field public final synthetic val$startRect:Landroid/graphics/Rect;

.field public final synthetic val$targetRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;Landroid/graphics/Rect;Landroid/graphics/Rect;FLandroid/animation/AnimatorSet;Landroid/graphics/RectF;)V
    .registers 7

    iput-object p1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage$2;->this$0:Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;

    iput-object p2, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage$2;->val$startRect:Landroid/graphics/Rect;

    iput-object p3, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage$2;->val$targetRect:Landroid/graphics/Rect;

    iput p4, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage$2;->val$multi:F

    iput-object p5, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage$2;->val$set:Landroid/animation/AnimatorSet;

    iput-object p6, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage$2;->val$currentRect:Landroid/graphics/RectF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage$2;->mHasStartAlphaAnim:Z

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 8

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage$2;->val$startRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage$2;->val$targetRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-static {p1, v0, v1}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v0

    iget v1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage$2;->val$multi:F

    mul-float/2addr v1, p1

    iget-object v2, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage$2;->val$startRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage$2;->val$targetRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-static {v1, v2, v3}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v1

    iget v2, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage$2;->val$multi:F

    mul-float/2addr v2, p1

    iget-object v3, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage$2;->val$startRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage$2;->val$targetRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    invoke-static {v2, v3, v4}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v2

    sub-float/2addr v2, v1

    sub-float v1, v2, v0

    const/4 v3, 0x0

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_47

    move v2, v0

    :cond_47
    iget-object v1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage$2;->this$0:Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;

    invoke-static {v1}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->access$300(Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;)I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage$2;->this$0:Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;

    invoke-static {v3}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->access$300(Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;)I

    move-result v3

    iget-object v4, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage$2;->this$0:Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;

    invoke-static {v4}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->access$400(Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, p1

    sub-float/2addr v1, v3

    iget-object v3, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage$2;->this$0:Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;

    invoke-static {v3}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->access$500(Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;)Lcom/android/launcher/views/RoundImageView;

    move-result-object v3

    float-to-int v1, v1

    invoke-virtual {v3, v1}, Lcom/android/launcher/views/RoundImageView;->setRoundRadius(I)V

    iget-object v3, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage$2;->this$0:Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;

    invoke-static {v3}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->access$600(Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;)Lcom/android/launcher/views/RoundImageView;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/launcher/views/RoundImageView;->setRoundRadius(I)V

    sget-boolean v1, Lcom/android/common/config/FeatureOption;->isOPDevice:Z

    if-nez v1, :cond_8d

    float-to-int v1, v2

    float-to-int v3, v0

    if-ne v1, v3, :cond_8d

    iget-object v1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage$2;->val$set:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v1

    if-nez v1, :cond_8d

    iget-boolean v1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage$2;->mHasStartAlphaAnim:Z

    if-nez v1, :cond_8d

    iget-object v1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage$2;->val$set:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage$2;->mHasStartAlphaAnim:Z

    :cond_8d
    sget-boolean v1, Lcom/android/common/config/FeatureOption;->isOPDevice:Z

    if-eqz v1, :cond_9d

    iget-object v1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage$2;->this$0:Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;

    invoke-static {v1}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->access$600(Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;)Lcom/android/launcher/views/RoundImageView;

    move-result-object v1

    const/high16 v3, 0x3f800000  # 1.0f

    sub-float/2addr v3, p1

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_9d
    iget-object v1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage$2;->val$startRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage$2;->val$targetRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    int-to-float v3, v3

    invoke-static {p1, v1, v3}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v1

    iget-object v3, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage$2;->val$startRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage$2;->val$targetRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    int-to-float v4, v4

    invoke-static {p1, v3, v4}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result p1

    iget-object v3, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage$2;->val$currentRect:Landroid/graphics/RectF;

    const/high16 v4, 0x40000000  # 2.0f

    div-float/2addr v0, v4

    sub-float v5, v1, v0

    div-float/2addr v2, v4

    sub-float v4, p1, v2

    add-float/2addr v1, v0

    add-float/2addr p1, v2

    invoke-virtual {v3, v5, v4, v1, p1}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage$2;->this$0:Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;

    iget-object p0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage$2;->val$currentRect:Landroid/graphics/RectF;

    invoke-static {p1, p0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->access$700(Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;Landroid/graphics/RectF;)V

    return-void
.end method
