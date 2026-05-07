.class public Lcom/android/quickstep/SwipeUpHandlerExtOplusImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/quickstep/ISwipeUpHandlerExt;
.implements Lcom/oplus/ext/core/IExtCreator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/quickstep/ISwipeUpHandlerExt;",
        "Lcom/oplus/ext/core/IExtCreator<",
        "Lcom/android/quickstep/ISwipeUpHandlerExt;",
        ">;"
    }
.end annotation


# instance fields
.field private mHost:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler<",
            "***>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public applyIconRectOffset(Lcom/android/launcher3/touch/PagedOrientationHandler;Landroid/graphics/RectF;F)V
    .registers 4

    const-string p0, "orientationHandler"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "iconRect"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/android/launcher3/touch/PagedOrientationHandler;->PORTRAIT:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {p0, p2, p3}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;->applyIconRectOffset(Landroid/graphics/RectF;F)V

    return-void
.end method

.method public createExtWith(Ljava/lang/Object;)Lcom/android/quickstep/ISwipeUpHandlerExt;
    .registers 3

    instance-of v0, p1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    if-eqz v0, :cond_7

    check-cast p1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    :goto_8
    iput-object p1, p0, Lcom/android/quickstep/SwipeUpHandlerExtOplusImpl;->mHost:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    return-object p0
.end method

.method public bridge synthetic createExtWith(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/quickstep/SwipeUpHandlerExtOplusImpl;->createExtWith(Ljava/lang/Object;)Lcom/android/quickstep/ISwipeUpHandlerExt;

    move-result-object p0

    return-object p0
.end method

.method public getAngleInCreateAnimateMiniWindow()F
    .registers 2

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpHandlerExtOplusImpl;->mHost:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-virtual {p0}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/quickstep/util/TaskViewSimulator;->getOrientationState()Lcom/android/quickstep/util/RecentsOrientedState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/quickstep/util/RecentsOrientedState;->getOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object p0

    sget-object v0, Lcom/android/launcher3/touch/PagedOrientationHandler;->SEASCAPE:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_21

    const/high16 p0, 0x42b40000  # 90.0f

    goto :goto_23

    :cond_21
    const/high16 p0, 0x43870000  # 270.0f

    :goto_23
    return p0
.end method

.method public getCropHeightInCreateAnimateMiniWindow()F
    .registers 2

    invoke-virtual {p0}, Lcom/android/quickstep/SwipeUpHandlerExtOplusImpl;->isTaskLandscape()Z

    move-result v0

    if-eqz v0, :cond_a

    const v0, 0x7f07085c

    goto :goto_d

    :cond_a
    const v0, 0x7f070862

    :goto_d
    iget-object p0, p0, Lcom/android/quickstep/SwipeUpHandlerExtOplusImpl;->mHost:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    return p0
.end method

.method public getCropWidthInCreateAnimateMiniWindow()F
    .registers 2

    invoke-virtual {p0}, Lcom/android/quickstep/SwipeUpHandlerExtOplusImpl;->isTaskLandscape()Z

    move-result v0

    if-eqz v0, :cond_a

    const v0, 0x7f07085d

    goto :goto_d

    :cond_a
    const v0, 0x7f070863

    :goto_d
    iget-object p0, p0, Lcom/android/quickstep/SwipeUpHandlerExtOplusImpl;->mHost:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    return p0
.end method

.method public final getMHost()Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler<",
            "***>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpHandlerExtOplusImpl;->mHost:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    return-object p0
.end method

.method public getPagedOrientationHandler(Landroid/graphics/RectF;)Lcom/android/launcher3/touch/PagedOrientationHandler;
    .registers 3

    const-string/jumbo v0, "startRect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpHandlerExtOplusImpl;->mHost:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    const/4 p1, 0x0

    aget-object p0, p0, p1

    invoke-virtual {p0}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/quickstep/util/TaskViewSimulator;->getOrientationState()Lcom/android/quickstep/util/RecentsOrientedState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/quickstep/util/RecentsOrientedState;->getOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object p0

    const-string p1, "mHost!!.mRemoteTargetHan…nState.orientationHandler"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public getRightOffsetInCreateAnimateMiniWindow()F
    .registers 2

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpHandlerExtOplusImpl;->mHost:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f070865

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    return p0
.end method

.method public getTopOffsetInCreateAnimateMiniWindow()F
    .registers 2

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpHandlerExtOplusImpl;->mHost:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f070866

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    return p0
.end method

.method public isLandscape()Z
    .registers 3

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpHandlerExtOplusImpl;->mHost:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    goto :goto_1a

    :cond_6
    iget-object p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    if-nez p0, :cond_b

    goto :goto_1a

    :cond_b
    invoke-virtual {p0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->getRotationTouchHelper()Lcom/android/quickstep/RotationTouchHelper;

    move-result-object p0

    if-nez p0, :cond_12

    goto :goto_1a

    :cond_12
    invoke-virtual {p0}, Lcom/android/quickstep/RotationTouchHelper;->getDisplayRotation()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_1a
    const/4 p0, 0x1

    if-nez v0, :cond_1e

    goto :goto_24

    :cond_1e
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, p0, :cond_30

    :goto_24
    const/4 v1, 0x3

    if-nez v0, :cond_28

    goto :goto_2f

    :cond_28
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_2f

    goto :goto_30

    :cond_2f
    :goto_2f
    const/4 p0, 0x0

    :cond_30
    :goto_30
    return p0
.end method

.method public isTaskLandscape()Z
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpHandlerExtOplusImpl;->mHost:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->isLandscape()Z

    move-result p0

    return p0
.end method

.method public offsetZoomWindowRectBottom(Landroid/graphics/RectF;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/quickstep/ISwipeUpHandlerExt$DefaultImpls;->offsetZoomWindowRectBottom(Lcom/android/quickstep/ISwipeUpHandlerExt;Landroid/graphics/RectF;)V

    return-void
.end method

.method public final setMHost(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler<",
            "***>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/quickstep/SwipeUpHandlerExtOplusImpl;->mHost:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    return-void
.end method

.method public setTaskViewSimulatorScroll()V
    .registers 1

    invoke-static {p0}, Lcom/android/quickstep/ISwipeUpHandlerExt$DefaultImpls;->setTaskViewSimulatorScroll(Lcom/android/quickstep/ISwipeUpHandlerExt;)V

    return-void
.end method

.method public updateTargetBoundsInCreateAnimateMiniWindow(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Rect;FF[FFF)V
    .registers 14

    const-string/jumbo v0, "targetBounds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "closeWindowRect"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "targetCropRect"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "angle"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/quickstep/SwipeUpHandlerExtOplusImpl;->isTaskLandscape()Z

    move-result v0

    if-eqz v0, :cond_b9

    iget-object p8, p0, Lcom/android/quickstep/SwipeUpHandlerExtOplusImpl;->mHost:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-static {p8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p8, p8, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    invoke-virtual {p8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p8

    const/4 v0, 0x2

    int-to-float v0, v0

    div-float/2addr p5, v0

    const v1, 0x7f070864

    invoke-virtual {p8, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    add-float/2addr v1, p5

    iget-object p5, p0, Lcom/android/quickstep/SwipeUpHandlerExtOplusImpl;->mHost:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-static {p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p5, p5, Lcom/android/quickstep/SwipeUpAnimationLogic;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    const/4 v2, 0x0

    aget-object p5, p5, v2

    invoke-virtual {p5}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object p5

    invoke-virtual {p5}, Lcom/android/quickstep/util/TaskViewSimulator;->getOrientationState()Lcom/android/quickstep/util/RecentsOrientedState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/quickstep/util/RecentsOrientedState;->getOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v3

    const-string v4, "res"

    invoke-static {p8, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3, p3, p2, p8}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;->calculatePreviewTargetCropRect(Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/content/res/Resources;)V

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p2

    div-float/2addr p4, p2

    invoke-virtual {p1, p4}, Landroid/graphics/RectF;->scale(F)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2}, Landroid/graphics/RectF;->offsetTo(FF)V

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpHandlerExtOplusImpl;->mHost:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDp:Lcom/android/launcher3/DeviceProfile;

    invoke-virtual {p5}, Lcom/android/quickstep/util/TaskViewSimulator;->getOrientationState()Lcom/android/quickstep/util/RecentsOrientedState;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/quickstep/util/RecentsOrientedState;->getOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object p2

    sget-object p3, Lcom/android/launcher3/touch/PagedOrientationHandler;->SEASCAPE:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a1

    iget p2, p0, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    iget p0, p0, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    if-le p2, p0, :cond_7b

    move p3, p2

    goto :goto_7c

    :cond_7b
    move p3, p0

    :goto_7c
    if-ge p2, p0, :cond_7f

    goto :goto_80

    :cond_7f
    move p2, p0

    :goto_80
    int-to-float p0, p3

    sub-float/2addr p0, p7

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p3

    div-float/2addr p3, v0

    sub-float/2addr p0, p3

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result p3

    sub-float/2addr p0, p3

    int-to-float p2, p2

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p3

    sub-float/2addr p2, p3

    sub-float/2addr p2, v1

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result p3

    add-float/2addr p3, p2

    invoke-virtual {p1, p0, p3}, Landroid/graphics/RectF;->offset(FF)V

    const/high16 p0, 0x42b40000  # 90.0f

    aput p0, p6, v2

    goto :goto_ce

    :cond_a1
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p0

    div-float/2addr p0, v0

    add-float/2addr p0, p7

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result p2

    sub-float/2addr p0, p2

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result p2

    sub-float/2addr v1, p2

    invoke-virtual {p1, p0, v1}, Landroid/graphics/RectF;->offset(FF)V

    const/high16 p0, 0x43870000  # 270.0f

    aput p0, p6, v2

    goto :goto_ce

    :cond_b9
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p0

    div-float/2addr p4, p0

    invoke-virtual {p1, p4}, Landroid/graphics/RectF;->scale(F)V

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p2

    sub-float/2addr p0, p2

    sub-float/2addr p0, p8

    invoke-virtual {p1, p0, p7}, Landroid/graphics/RectF;->offsetTo(FF)V

    :goto_ce
    return-void
.end method

.method public updateTargetCropRectInCreateAnimateMiniWindow(Landroid/graphics/Rect;Landroid/graphics/RectF;FF)V
    .registers 6

    const-string p0, "rect"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "closeWindowRect"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget p0, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p2

    div-float/2addr p2, p3

    mul-float/2addr p2, p4

    sub-float/2addr v0, p2

    float-to-int p2, v0

    sub-int/2addr p0, p2

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public updateTmpSrc(Landroid/graphics/RectF;)V
    .registers 2

    const-string/jumbo p0, "tmpSrc"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public updateZoomWindowRectInCreateAnimateMiniWindow(Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Rect;Landroid/graphics/RectF;FF)V
    .registers 9

    const-string/jumbo v0, "targetCropRect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "targetBounds"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "zoomWindowRect"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "closeWindowRect"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/quickstep/SwipeUpHandlerExtOplusImpl;->getCropHeightInCreateAnimateMiniWindow()F

    move-result v0

    invoke-virtual {p0}, Lcom/android/quickstep/SwipeUpHandlerExtOplusImpl;->isTaskLandscape()Z

    move-result v1

    if-eqz v1, :cond_6c

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1, p1}, Landroid/graphics/RectF;->offsetTo(FF)V

    invoke-virtual {p0, v0}, Lcom/android/quickstep/SwipeUpHandlerExtOplusImpl;->offsetZoomWindowRectBottom(Landroid/graphics/RectF;)V

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p1

    invoke-virtual {p4}, Landroid/graphics/RectF;->height()F

    move-result p2

    div-float/2addr p1, p2

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->scale(F)V

    invoke-virtual {p0, v0}, Lcom/android/quickstep/SwipeUpHandlerExtOplusImpl;->updateTmpSrc(Landroid/graphics/RectF;)V

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpHandlerExtOplusImpl;->mHost:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDp:Lcom/android/launcher3/DeviceProfile;

    iget p1, p0, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    iget p0, p0, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    if-ge p1, p0, :cond_4a

    goto :goto_4b

    :cond_4a
    move p1, p0

    :goto_4b
    int-to-float p0, p1

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result p1

    const/4 p2, 0x2

    int-to-float p2, p2

    div-float/2addr p1, p2

    sub-float/2addr p0, p1

    sub-float/2addr p0, p6

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result p1

    div-float/2addr p1, p2

    add-float/2addr p1, p5

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result p2

    sub-float/2addr p0, p2

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result p2

    sub-float/2addr p1, p2

    invoke-virtual {v0, p0, p1}, Landroid/graphics/RectF;->offset(FF)V

    invoke-virtual {v0, p3}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    goto :goto_73

    :cond_6c
    iget p0, p3, Landroid/graphics/Rect;->top:I

    int-to-float p0, p0

    add-float/2addr p0, v0

    float-to-int p0, p0

    iput p0, p3, Landroid/graphics/Rect;->bottom:I

    :goto_73
    return-void
.end method
