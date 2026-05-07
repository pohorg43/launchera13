.class public Lcom/android/launcher3/dragndrop/OplusDragView;
.super Lcom/android/launcher3/dragndrop/LauncherDragView;
.source ""


# static fields
.field private static final DRAG_VIEW_OUT_PATH:Landroid/view/animation/PathInterpolator;

.field public static final DURATION_FADE_OUT:I = 0xb4

.field private static final TAG:Ljava/lang/String; = "OplusDragView"

.field public static final VIEW_ZOOM_DURATION:I = 0xfa


# instance fields
.field private mAnimCornerRadius:I

.field private mHasMovedParent:Z

.field private mItemInfo:Lcom/android/launcher3/model/data/ItemInfo;

.field private mPopupContainerWithArrow:Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e99999a  # 0.3f

    const/4 v2, 0x0

    const v3, 0x3e570a3d  # 0.21f

    const/high16 v4, 0x3f800000  # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/launcher3/dragndrop/OplusDragView;->DRAG_VIEW_OUT_PATH:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/Launcher;Landroid/graphics/drawable/Drawable;IIFFF)V
    .registers 8

    invoke-direct/range {p0 .. p7}, Lcom/android/launcher3/dragndrop/LauncherDragView;-><init>(Lcom/android/launcher3/Launcher;Landroid/graphics/drawable/Drawable;IIFFF)V

    const/16 p3, 0x27

    iput p3, p0, Lcom/android/launcher3/dragndrop/OplusDragView;->mAnimCornerRadius:I

    const/4 p3, 0x0

    iput-boolean p3, p0, Lcom/android/launcher3/dragndrop/OplusDragView;->mHasMovedParent:Z

    const/4 p3, 0x0

    iput-object p3, p0, Lcom/android/launcher3/dragndrop/OplusDragView;->mPopupContainerWithArrow:Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/dragndrop/OplusDragView;->init(Lcom/android/launcher3/Launcher;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/Launcher;Landroid/view/View;IIIIFFF)V
    .registers 10

    invoke-direct/range {p0 .. p9}, Lcom/android/launcher3/dragndrop/LauncherDragView;-><init>(Lcom/android/launcher3/Launcher;Landroid/view/View;IIIIFFF)V

    const/16 p2, 0x27

    iput p2, p0, Lcom/android/launcher3/dragndrop/OplusDragView;->mAnimCornerRadius:I

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/launcher3/dragndrop/OplusDragView;->mHasMovedParent:Z

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/android/launcher3/dragndrop/OplusDragView;->mPopupContainerWithArrow:Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/dragndrop/OplusDragView;->init(Lcom/android/launcher3/Launcher;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private init(Lcom/android/launcher3/Launcher;Landroid/graphics/drawable/Drawable;)V
    .registers 6

    invoke-static {p1}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->getPopupContainer(Lcom/android/launcher3/views/ActivityContext;)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;

    if-eqz v1, :cond_c

    check-cast v0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/OplusDragView;->mPopupContainerWithArrow:Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;

    :cond_c
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mAnim:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mAnim:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/android/launcher3/dragndrop/OplusDragView;->DRAG_VIEW_OUT_PATH:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/launcher3/dragndrop/OplusDragView$1;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/dragndrop/OplusDragView$1;-><init>(Lcom/android/launcher3/dragndrop/OplusDragView;Lcom/android/launcher3/Launcher;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    instance-of v0, p2, Lcom/android/launcher3/dragndrop/SmartCardDrawable;

    if-eqz v0, :cond_42

    check-cast p2, Lcom/android/launcher3/dragndrop/SmartCardDrawable;

    invoke-virtual {p0, p2}, Lcom/android/launcher3/dragndrop/OplusDragView;->updateDrawable(Lcom/android/launcher3/dragndrop/SmartCardDrawable;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07021f

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/dragndrop/OplusDragView;->mAnimCornerRadius:I

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setForceDarkAllowed(Z)V

    :cond_42
    return-void
.end method

.method private isDragViewVisible(Lcom/android/launcher3/LauncherState;)Z
    .registers 5

    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_15

    sget-object v0, Lcom/android/launcher3/LauncherState;->SPRING_LOADED:Lcom/android/launcher3/LauncherState;

    if-eq p1, v0, :cond_15

    sget-object v0, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    if-eq p1, v0, :cond_15

    iget-boolean p1, p1, Lcom/android/launcher3/LauncherState;->overviewUi:Z

    if-eqz p1, :cond_13

    goto :goto_15

    :cond_13
    move p1, v1

    goto :goto_16

    :cond_15
    :goto_15
    move p1, v2

    :goto_16
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/OplusDragView;->mPopupContainerWithArrow:Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;

    if-eqz v0, :cond_22

    invoke-virtual {v0}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->getShortcutType()I

    move-result v0

    if-ne v0, v2, :cond_22

    move v0, v2

    goto :goto_23

    :cond_22
    move v0, v1

    :goto_23
    if-eqz p1, :cond_36

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/DragView;->mActivity:Landroid/content/Context;

    check-cast p0, Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragController;->isGlobalDragging()Z

    move-result p0

    if-nez p0, :cond_36

    if-nez v0, :cond_36

    move v1, v2

    :cond_36
    return v1
.end method


# virtual methods
.method public getItemInfo()Lcom/android/launcher3/model/data/ItemInfo;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/OplusDragView;->mItemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    return-object p0
.end method

.method public getPreviewDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragView;->getContentView()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragView;->getContentView()Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method

.method public ignoreSetItemInfoInject(Lcom/android/launcher3/model/data/ItemInfo;)Z
    .registers 2

    const/4 p0, 0x1

    return p0
.end method

.method public isHasMovedParent()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/dragndrop/OplusDragView;->mHasMovedParent:Z

    return p0
.end method

.method public isLongClickAnimRunning()Z
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/DragView;->mAnim:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public isPendingCardType()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/dragndrop/DragView;->mIsPendingCardType:Z

    return p0
.end method

.method public onAttachedToWindow()V
    .registers 2

    invoke-super {p0}, Lcom/android/launcher3/dragndrop/LauncherDragView;->onAttachedToWindow()V

    instance-of v0, p0, Lcom/android/launcher/batchdrag/BatchDragView;

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mActivity:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/statemanager/StateManager;->addStateListener(Lcom/android/launcher3/statemanager/StateManager$StateListener;)V

    :cond_12
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 2

    invoke-super {p0}, Lcom/android/launcher3/dragndrop/LauncherDragView;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mActivity:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/statemanager/StateManager;->removeStateListener(Lcom/android/launcher3/statemanager/StateManager$StateListener;)V

    return-void
.end method

.method public onStateTransitionComplete(Lcom/android/launcher3/LauncherState;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/dragndrop/OplusDragView;->isDragViewVisible(Lcom/android/launcher3/LauncherState;)Z

    move-result p1

    if-eqz p1, :cond_8

    const/4 p1, 0x0

    goto :goto_9

    :cond_8
    const/4 p1, 0x4

    :goto_9
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public bridge synthetic onStateTransitionComplete(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/dragndrop/OplusDragView;->onStateTransitionComplete(Lcom/android/launcher3/LauncherState;)V

    return-void
.end method

.method public remove()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mActivity:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/OplusDragView;->mItemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {v0, v1}, Lcom/android/launcher3/card/reorder/CardReorderInject;->onDragViewRemoved(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/model/data/ItemInfo;)V

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragView;->getContentView()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/OplusDragView;->mItemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    instance-of v1, v0, Lcom/android/launcher3/card/LauncherCardInfo;

    if-eqz v1, :cond_30

    check-cast v0, Lcom/android/launcher3/card/LauncherCardInfo;

    iget v0, v0, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    const v1, 0xd3ecf26

    if-ne v0, v1, :cond_30

    sget-object v0, Lcom/android/launcher3/card/uscard/USCardManager;->INSTANCE:Lcom/android/launcher3/card/uscard/USCardManager;

    invoke-virtual {v0}, Lcom/android/launcher3/card/uscard/USCardManager;->getUSCardContainer()Lcom/android/launcher3/card/uscard/USCardContainerView;

    move-result-object v1

    if-eqz v1, :cond_30

    invoke-virtual {v0}, Lcom/android/launcher3/card/uscard/USCardManager;->getUSCardContainer()Lcom/android/launcher3/card/uscard/USCardContainerView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/card/uscard/USCardContainerView;->setMDragView(Lcom/android/launcher3/dragndrop/DragView;)V

    :cond_30
    invoke-super {p0}, Lcom/android/launcher3/dragndrop/DragView;->remove()V

    return-void
.end method

.method public removeWithAnim(I)V
    .registers 6

    sget-object v0, Landroid/widget/FrameLayout;->ALPHA:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object p1, Lcom/android/common/config/AnimationConstant;->PATH_INTERPOLATOR_2:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance p1, Lcom/android/launcher3/dragndrop/OplusDragView$2;

    invoke-direct {p1, p0}, Lcom/android/launcher3/dragndrop/OplusDragView$2;-><init>(Lcom/android/launcher3/dragndrop/OplusDragView;)V

    invoke-virtual {v0, p1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public setHasMovedParent(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/dragndrop/OplusDragView;->mHasMovedParent:Z

    return-void
.end method

.method public setItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 5

    invoke-super {p0, p1}, Lcom/android/launcher3/dragndrop/DragView;->setItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)V

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/OplusDragView;->mItemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v2, -0x6b

    if-ne v0, v2, :cond_17

    const v0, 0x7f0a047c

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setId(I)V

    goto :goto_1d

    :cond_17
    const v0, 0x7f0a01ce

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setId(I)V

    :goto_1d
    instance-of p1, p1, Lcom/android/launcher3/card/PendingAddCardInfo;

    if-eqz p1, :cond_23

    iput-boolean v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mIsPendingCardType:Z

    :cond_23
    return-void
.end method

.method public stopAnimation()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mAnim:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/DragView;->mAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_1b

    :cond_11
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/launcher3/dragndrop/OplusDragView$3;

    invoke-direct {v1, p0}, Lcom/android/launcher3/dragndrop/OplusDragView$3;-><init>(Lcom/android/launcher3/dragndrop/OplusDragView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :goto_1b
    return-void
.end method

.method public updateDrawable(Lcom/android/launcher3/dragndrop/SmartCardDrawable;)V
    .registers 5

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragView;->getContentView()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragView;->getContentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_11
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher3/dragndrop/DragView;->mHasDrawn:Z

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mActivity:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getScaleX()F

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mActivity:Landroid/content/Context;

    check-cast v1, Lcom/android/launcher3/Launcher;

    sget-object v2, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v1

    const/high16 v2, 0x3f800000  # 1.0f

    if-eqz v1, :cond_2f

    move v0, v2

    :cond_2f
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setScaleX(F)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setScaleY(F)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setForceDarkAllowed(Z)V

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setElevation(F)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method
