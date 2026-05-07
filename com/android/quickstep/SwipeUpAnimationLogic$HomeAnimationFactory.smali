.class public abstract Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/SwipeUpAnimationLogic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "HomeAnimationFactory"
.end annotation


# instance fields
.field public mAnimType:I

.field public mSwipeVelocity:F

.field public final synthetic this$0:Lcom/android/quickstep/SwipeUpAnimationLogic;


# direct methods
.method public constructor <init>(Lcom/android/quickstep/SwipeUpAnimationLogic;)V
    .registers 2

    iput-object p1, p0, Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;->this$0:Lcom/android/quickstep/SwipeUpAnimationLogic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;->mAnimType:I

    return-void
.end method


# virtual methods
.method public calculateScrollX(F)I
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public canUseWorkspaceItemView()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public abstract createActivityAnimationToHome()Lcom/android/launcher3/anim/AnimatorPlaybackController;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public getCardAnimRadius(Landroid/content/res/Resources;)I
    .registers 2

    const p0, 0x7f07021f

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public getEndRadius(Landroid/graphics/RectF;)F
    .registers 2

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p0

    const/high16 p1, 0x40000000  # 2.0f

    div-float/2addr p0, p1

    return p0
.end method

.method public getWindowAlpha(F)F
    .registers 9

    const/4 p0, 0x0

    cmpg-float v0, p1, p0

    if-gtz v0, :cond_8

    const/high16 p0, 0x3f800000  # 1.0f

    return p0

    :cond_8
    const v0, 0x3f59999a  # 0.85f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_10

    return p0

    :cond_10
    const/4 v2, 0x0

    const v3, 0x3f59999a  # 0.85f

    const/high16 v4, 0x3f800000  # 1.0f

    const/4 v5, 0x0

    sget-object v6, Lcom/android/launcher3/anim/Interpolators;->ACCEL_1_5:Landroid/view/animation/Interpolator;

    move v1, p1

    invoke-static/range {v1 .. v6}, Lcom/android/launcher3/Utilities;->mapToRange(FFFFFLandroid/view/animation/Interpolator;)F

    move-result p0

    return p0
.end method

.method public getWindowTargetRect()Landroid/graphics/RectF;
    .registers 6
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;->this$0:Lcom/android/quickstep/SwipeUpAnimationLogic;

    invoke-virtual {v0}, Lcom/android/quickstep/SwipeUpAnimationLogic;->getOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;->this$0:Lcom/android/quickstep/SwipeUpAnimationLogic;

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDp:Lcom/android/launcher3/DeviceProfile;

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    invoke-interface {v0, v2, v3}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryValue(II)I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    iget v4, p0, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    invoke-interface {v0, v3, v4}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getSecondaryValue(II)I

    move-result v0

    int-to-float v0, v0

    const/high16 v3, 0x40000000  # 2.0f

    div-float/2addr v2, v3

    iget p0, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarSizePx:I

    int-to-float p0, p0

    sub-float/2addr v0, p0

    new-instance p0, Landroid/graphics/RectF;

    int-to-float v1, v1

    sub-float v3, v2, v1

    sub-float v4, v0, v1

    add-float/2addr v2, v1

    add-float/2addr v0, v1

    invoke-direct {p0, v3, v4, v2, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object p0
.end method

.method public isCard()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public onCancel()V
    .registers 1

    return-void
.end method

.method public onEnd()V
    .registers 1

    return-void
.end method

.method public playAtomicAnimation(F)V
    .registers 2

    return-void
.end method

.method public setAnimType(I)V
    .registers 2

    return-void
.end method

.method public setAnimation(Lcom/android/quickstep/util/RectFSpringAnim;)V
    .registers 2

    return-void
.end method

.method public setSwipeVelocity(F)V
    .registers 2

    iput p1, p0, Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;->mSwipeVelocity:F

    return-void
.end method

.method public update(FFLandroid/graphics/RectF;FFLjava/util/function/Supplier;Ljava/util/function/Supplier;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF",
            "Landroid/graphics/RectF;",
            "FF",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public update(Landroid/graphics/RectF;FF)V
    .registers 4

    return-void
.end method
