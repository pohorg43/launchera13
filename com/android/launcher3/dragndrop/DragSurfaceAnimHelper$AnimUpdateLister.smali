.class public final Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper$AnimUpdateLister;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AnimUpdateLister"
.end annotation


# instance fields
.field private completedRunnable:Ljava/lang/Runnable;

.field private final mTmpValues:[F

.field private multiScreenTop:F

.field private needAlpha:Z

.field private needScale:Z

.field private needTranslation:Z

.field private final params:[Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;

.field private surfaceApplier:Lcom/android/quickstep/util/SurfaceTransactionApplier;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper$AnimUpdateLister;->needTranslation:Z

    iput-boolean v0, p0, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper$AnimUpdateLister;->needScale:Z

    const/16 v1, 0x9

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper$AnimUpdateLister;->mTmpValues:[F

    new-array v0, v0, [Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper$AnimUpdateLister;->params:[Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;

    return-void
.end method


# virtual methods
.method public final getCompletedRunnable()Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper$AnimUpdateLister;->completedRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public final getMTmpValues()[F
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper$AnimUpdateLister;->mTmpValues:[F

    return-object p0
.end method

.method public final getMultiScreenTop()F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper$AnimUpdateLister;->multiScreenTop:F

    return p0
.end method

.method public final getNeedAlpha()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper$AnimUpdateLister;->needAlpha:Z

    return p0
.end method

.method public final getNeedScale()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper$AnimUpdateLister;->needScale:Z

    return p0
.end method

.method public final getNeedTranslation()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper$AnimUpdateLister;->needTranslation:Z

    return p0
.end method

.method public final getParams()[Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper$AnimUpdateLister;->params:[Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;

    return-object p0
.end method

.method public final getSurfaceApplier()Lcom/android/quickstep/util/SurfaceTransactionApplier;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper$AnimUpdateLister;->surfaceApplier:Lcom/android/quickstep/util/SurfaceTransactionApplier;

    return-object p0
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper$AnimUpdateLister;->completedRunnable:Ljava/lang/Runnable;

    if-nez p0, :cond_5

    goto :goto_8

    :cond_5
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :goto_8
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4

    sget-object p1, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->INSTANCE:Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;

    invoke-virtual {p1}, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->getDragView()Lcom/android/launcher3/dragndrop/OplusDragView;

    move-result-object v0

    if-eqz v0, :cond_34

    invoke-virtual {p1}, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->getDragView()Lcom/android/launcher3/dragndrop/OplusDragView;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setPivotX(F)V

    invoke-virtual {p1}, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->getDragView()Lcom/android/launcher3/dragndrop/OplusDragView;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setPivotY(F)V

    invoke-virtual {p1}, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->getDragView()Lcom/android/launcher3/dragndrop/OplusDragView;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    new-instance v0, Lcom/android/quickstep/util/SurfaceTransactionApplier;

    invoke-virtual {p1}, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->getDragView()Lcom/android/launcher3/dragndrop/OplusDragView;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/quickstep/util/SurfaceTransactionApplier;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper$AnimUpdateLister;->surfaceApplier:Lcom/android/quickstep/util/SurfaceTransactionApplier;

    :cond_34
    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 13

    const-string v0, "animator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iget-boolean v1, p0, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper$AnimUpdateLister;->needAlpha:Z

    const-string/jumbo v2, "null cannot be cast to non-null type kotlin.Float"

    if-eqz v1, :cond_21

    const-string v1, "alpha"

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    goto :goto_23

    :cond_21
    const/high16 v1, 0x3f800000  # 1.0f

    :goto_23
    iget-boolean v3, p0, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper$AnimUpdateLister;->needScale:Z

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_93

    const-string/jumbo v3, "scaleX"

    invoke-virtual {p1, v3}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const-string/jumbo v6, "scaleY"

    invoke-virtual {p1, v6}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-virtual {v0, v3, v6}, Landroid/graphics/Matrix;->setScale(FF)V

    sget-object v7, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->INSTANCE:Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;

    invoke-virtual {v7}, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->getDragView()Lcom/android/launcher3/dragndrop/OplusDragView;

    move-result-object v8

    if-eqz v8, :cond_93

    invoke-virtual {v7}, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->getDragView()Lcom/android/launcher3/dragndrop/OplusDragView;

    move-result-object v8

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v7, v8}, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->getContentWidthAndHeight(Lcom/android/launcher3/dragndrop/OplusDragView;)[F

    move-result-object v8

    invoke-virtual {v7}, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->getDragView()Lcom/android/launcher3/dragndrop/OplusDragView;

    move-result-object v9

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v7}, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v10

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v10}, Landroid/view/SurfaceControl;->getWidth()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v3

    aget v3, v8, v5

    div-float/2addr v10, v3

    invoke-virtual {v9, v10}, Landroid/widget/FrameLayout;->setScaleX(F)V

    invoke-virtual {v7}, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->getDragView()Lcom/android/launcher3/dragndrop/OplusDragView;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v7}, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v7

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v7}, Landroid/view/SurfaceControl;->getHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v6

    aget v6, v8, v4

    div-float/2addr v7, v6

    invoke-virtual {v3, v7}, Landroid/widget/FrameLayout;->setScaleY(F)V

    :cond_93
    iget-boolean v3, p0, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper$AnimUpdateLister;->needTranslation:Z

    if-eqz v3, :cond_ec

    const-string/jumbo v3, "x"

    invoke-virtual {p1, v3}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const-string/jumbo v6, "y"

    invoke-virtual {p1, v6}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, v3, p1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    sget-object v2, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->INSTANCE:Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;

    invoke-virtual {v2}, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->getDragView()Lcom/android/launcher3/dragndrop/OplusDragView;

    move-result-object v6

    if-eqz v6, :cond_ec

    invoke-virtual {v2}, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->getDragView()Lcom/android/launcher3/dragndrop/OplusDragView;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, v6}, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->getContentPadding(Lcom/android/launcher3/dragndrop/OplusDragView;)[I

    move-result-object v6

    invoke-virtual {v2}, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->getDragView()Lcom/android/launcher3/dragndrop/OplusDragView;

    move-result-object v7

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    aget v8, v6, v5

    int-to-float v8, v8

    add-float/2addr v3, v8

    invoke-virtual {v7, v3}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    invoke-virtual {v2}, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->getDragView()Lcom/android/launcher3/dragndrop/OplusDragView;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v3, p0, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper$AnimUpdateLister;->multiScreenTop:F

    sub-float/2addr p1, v3

    aget v3, v6, v4

    int-to-float v3, v3

    add-float/2addr p1, v3

    invoke-virtual {v2, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    :cond_ec
    sget-object p1, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->INSTANCE:Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;

    invoke-virtual {p1}, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v2

    if-eqz v2, :cond_15e

    invoke-virtual {p1}, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v2

    if-nez v2, :cond_102

    goto :goto_15e

    :cond_102
    iget-object v2, p0, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper$AnimUpdateLister;->params:[Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;

    new-instance v3, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    invoke-virtual {p1}, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;-><init>(Landroid/view/SurfaceControl;)V

    invoke-virtual {v3, v1}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withAlpha(F)Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withMatrix(Landroid/graphics/Matrix;)Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->build()Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;

    move-result-object v3

    aput-object v3, v2, v5

    :try_start_11b
    iget-object v2, p0, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper$AnimUpdateLister;->surfaceApplier:Lcom/android/quickstep/util/SurfaceTransactionApplier;

    if-nez v2, :cond_121

    const/4 v2, 0x0

    goto :goto_12f

    :cond_121
    iget-object v3, p0, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper$AnimUpdateLister;->params:[Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;

    array-length v4, v3

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;

    invoke-virtual {v2, v3}, Lcom/android/quickstep/util/SurfaceTransactionApplier;->scheduleApply([Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;)V

    sget-object v2, Ly2/p;->a:Ly2/p;

    :goto_12f
    if-nez v2, :cond_15e

    invoke-virtual {p1}, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->getTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    invoke-virtual {v0}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v3

    if-nez v3, :cond_146

    invoke-virtual {p1}, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper$AnimUpdateLister;->getMTmpValues()[F

    move-result-object p0

    invoke-virtual {v2, v3, v0, p0}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;

    :cond_146
    invoke-virtual {p1}, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p0

    invoke-virtual {v2, p0, v1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v2}, Landroid/view/SurfaceControl$Transaction;->apply()V
    :try_end_150
    .catch Ljava/lang/Exception; {:try_start_11b .. :try_end_150} :catch_151

    goto :goto_15e

    :catch_151
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_159

    goto :goto_15e

    :cond_159
    const-string p1, "DragSurfaceAnimHelper"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_15e
    :goto_15e
    return-void
.end method

.method public final setCompletedRunnable(Ljava/lang/Runnable;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper$AnimUpdateLister;->completedRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public final setMultiScreenTop(F)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper$AnimUpdateLister;->multiScreenTop:F

    return-void
.end method

.method public final setNeedAlpha(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper$AnimUpdateLister;->needAlpha:Z

    return-void
.end method

.method public final setNeedScale(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper$AnimUpdateLister;->needScale:Z

    return-void
.end method

.method public final setNeedTranslation(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper$AnimUpdateLister;->needTranslation:Z

    return-void
.end method

.method public final setSurfaceApplier(Lcom/android/quickstep/util/SurfaceTransactionApplier;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper$AnimUpdateLister;->surfaceApplier:Lcom/android/quickstep/util/SurfaceTransactionApplier;

    return-void
.end method
