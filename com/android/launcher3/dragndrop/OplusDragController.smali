.class public Lcom/android/launcher3/dragndrop/OplusDragController;
.super Lcom/android/launcher3/dragndrop/LauncherDragController;
.source ""


# static fields
.field private static final DELAY_CHECK_DRAG_IN_EDIT:J = 0x96L

.field private static final INVALID_POINTER:I = -0x1

.field private static final TAG:Ljava/lang/String; = "OplusDragController"


# instance fields
.field private mActivePointerId:I

.field private mDeferredRemoveCallback:Lcom/android/launcher3/popup/DeferredRemoveForPopup;

.field private mDragScrollerTargets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/dragndrop/DragScroller;",
            ">;"
        }
    .end annotation
.end field

.field private mFixedDragScroller:Lcom/android/launcher3/dragndrop/DragScroller;

.field private mPowerManager:Landroid/os/PowerManager;

.field private final mScrollerRect:Landroid/graphics/Rect;

.field private mSecondPointerId:I

.field private mVariableScroller:Lcom/android/launcher3/dragndrop/DragScroller;


# direct methods
.method public constructor <init>(Lcom/android/launcher/Launcher;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/android/launcher3/dragndrop/LauncherDragController;-><init>(Lcom/android/launcher/Launcher;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/OplusDragController;->mScrollerRect:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/OplusDragController;->mVariableScroller:Lcom/android/launcher3/dragndrop/DragScroller;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/dragndrop/OplusDragController;->mDragScrollerTargets:Ljava/util/ArrayList;

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/launcher3/dragndrop/OplusDragController;->mActivePointerId:I

    iput v1, p0, Lcom/android/launcher3/dragndrop/OplusDragController;->mSecondPointerId:I

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/OplusDragController;->mDeferredRemoveCallback:Lcom/android/launcher3/popup/DeferredRemoveForPopup;

    new-instance v0, Lcom/android/launcher3/dragndrop/OplusFlingToDeleteHelper;

    invoke-direct {v0, p1}, Lcom/android/launcher3/dragndrop/OplusFlingToDeleteHelper;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/LauncherDragController;->mFlingToDeleteHelper:Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;

    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/OplusDragController;->mPowerManager:Landroid/os/PowerManager;

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher3/dragndrop/OplusDragController;Lcom/android/launcher3/widget/LauncherAppWidgetHostView;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/dragndrop/OplusDragController;->lambda$onStartDrag$0(Lcom/android/launcher3/widget/LauncherAppWidgetHostView;)V

    return-void
.end method

.method private cancelDragAndDrop()V
    .registers 7

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragController;->isDragging()Z

    move-result v0

    const-string v1, "cancelDragAndDrop, mDragging = "

    const-string v2, ", mLastDropTarget = "

    invoke-static {v1, v0, v2}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/DragController;->mLastDropTarget:Lcom/android/launcher3/DropTarget;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Drag"

    const-string v3, "OplusDragController"

    invoke-static {v2, v3, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_d9

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v0, v0, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    instance-of v0, v0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;

    const/4 v1, 0x1

    if-eqz v0, :cond_29

    iput-boolean v1, p0, Lcom/android/launcher3/dragndrop/DragController;->mIsInPreDrag:Z

    :cond_29
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-static {v0}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->getPopupContainer(Lcom/android/launcher3/views/ActivityContext;)Landroid/view/View;

    move-result-object v0

    instance-of v2, v0, Lcom/android/launcher3/AbstractFloatingView;

    const/4 v4, 0x0

    if-eqz v2, :cond_52

    move-object v2, v0

    check-cast v2, Lcom/android/launcher3/AbstractFloatingView;

    invoke-virtual {v2}, Lcom/android/launcher3/AbstractFloatingView;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_52

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "floating view is opened."

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_56

    :cond_52
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iput-boolean v4, v0, Lcom/android/launcher3/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    :goto_56
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mLastDropTarget:Lcom/android/launcher3/DropTarget;

    if-nez v0, :cond_66

    sget-object v0, Lcom/android/launcher/settings/LauncherSettingsUtils;->INSTANCE:Lcom/android/launcher/settings/LauncherSettingsUtils;

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/DragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    check-cast v2, Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/android/launcher/settings/LauncherSettingsUtils;->isLauncherLayoutLocked(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a1

    :cond_66
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mCoordinatesTemp:[I

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    aget v3, v0, v4

    iput v3, v2, Lcom/android/launcher3/DropTarget$DragObject;->x:I

    aget v0, v0, v1

    iput v0, v2, Lcom/android/launcher3/DropTarget$DragObject;->y:I

    iput-boolean v1, v2, Lcom/android/launcher3/DropTarget$DragObject;->dragComplete:Z

    iput-boolean v1, v2, Lcom/android/launcher3/DropTarget$DragObject;->cancelled:Z

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mLastDropTarget:Lcom/android/launcher3/DropTarget;

    if-eqz v0, :cond_a1

    invoke-interface {v0, v2}, Lcom/android/launcher3/DropTarget;->onDragExit(Lcom/android/launcher3/DropTarget$DragObject;)V

    iget-boolean v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mIsInPreDrag:Z

    if-nez v0, :cond_a1

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    check-cast v0, Lcom/android/launcher/Launcher;

    sget-object v2, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-nez v0, :cond_a1

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mLastDropTarget:Lcom/android/launcher3/DropTarget;

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    invoke-interface {v0, v2}, Lcom/android/launcher3/DropTarget;->acceptDrop(Lcom/android/launcher3/DropTarget$DragObject;)Z

    move-result v0

    if-eqz v0, :cond_a1

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mLastDropTarget:Lcom/android/launcher3/DropTarget;

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v3, p0, Lcom/android/launcher3/dragndrop/DragController;->mOptions:Lcom/android/launcher3/dragndrop/DragOptions;

    invoke-interface {v0, v2, v3}, Lcom/android/launcher3/DropTarget;->onDrop(Lcom/android/launcher3/DropTarget$DragObject;Lcom/android/launcher3/dragndrop/DragOptions;)V

    goto :goto_a2

    :cond_a1
    move v1, v4

    :goto_a2
    iget-boolean v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mIsInPreDrag:Z

    if-nez v0, :cond_d9

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v2, v0, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    iget-object v3, p0, Lcom/android/launcher3/dragndrop/DragController;->mLastDropTarget:Lcom/android/launcher3/DropTarget;

    check-cast v3, Landroid/view/View;

    invoke-interface {v2, v3, v0, v1}, Lcom/android/launcher3/DragSource;->onDropCompleted(Landroid/view/View;Lcom/android/launcher3/DropTarget$DragObject;Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isBatchDrag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    instance-of v1, v1, Lcom/android/launcher/batchdrag/BatchDragObject;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", DropTarget = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragController;->mLastDropTarget:Lcom/android/launcher3/DropTarget;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v1, v1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    const-string v2, "Cancel Drag"

    invoke-static {v2, v1, v0}, Lcom/android/common/debug/TraceLog;->traceAction(Ljava/lang/String;Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/String;)V

    :cond_d9
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/OplusDragController;->endDrag()V

    return-void
.end method

.method private synthetic lambda$onStartDrag$0(Lcom/android/launcher3/widget/LauncherAppWidgetHostView;)V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    check-cast v0, Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragController;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/DragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    check-cast p0, Lcom/android/launcher/Launcher;

    const/4 v0, 0x0

    invoke-static {p1, v0, v0, v0, p0}, Lcom/android/common/util/StateSwitchUtils;->applyStateChangeWithCertainView(Landroid/view/View;ZIZLcom/android/launcher/Launcher;)V

    :cond_16
    return-void
.end method


# virtual methods
.method public addDragScrollerTarget(Lcom/android/launcher3/dragndrop/DragScroller;)V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/OplusDragController;->mDragScrollerTargets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/OplusDragController;->mDragScrollerTargets:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    return-void
.end method

.method public addDropTarget(ILcom/android/launcher3/DropTarget;)V
    .registers 3

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDropTargets:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public addShowOriginalIconOpsForPop(Ljava/lang/Runnable;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/OplusDragController;->mDeferredRemoveCallback:Lcom/android/launcher3/popup/DeferredRemoveForPopup;

    if-nez p0, :cond_8

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_b

    :cond_8
    invoke-virtual {p0, p1}, Lcom/android/launcher3/popup/DeferredRemoveForPopup;->addShowOriginalIconOps(Ljava/lang/Runnable;)V

    :goto_b
    return-void
.end method

.method public callOnDragEnd()V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    invoke-static {v0}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDragHelper;->isDragHotseatExpandItem(Lcom/android/launcher3/DropTarget$DragObject;)Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "OplusDragController"

    if-eqz v0, :cond_18

    iget-boolean v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mIsInPreDrag:Z

    if-nez v0, :cond_18

    iput-boolean v1, p0, Lcom/android/launcher3/dragndrop/DragController;->mIsInPreDrag:Z

    const-string v0, "Hotseat"

    const-string v3, "drag hotseat expand item callOnDragEnd ensure mIsInPreDrag true"

    invoke-static {v0, v2, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_18
    invoke-super {p0}, Lcom/android/launcher3/dragndrop/DragController;->callOnDragEnd()V

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/OplusDragController;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    const-string v3, " pm.isScreenOn() "

    invoke-static {v3, v0, v2}, Lcom/android/common/rus/a;->a(Ljava/lang/String;ZLjava/lang/String;)V

    if-eqz v0, :cond_51

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    if-eqz v0, :cond_33

    check-cast v0, Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    goto :goto_34

    :cond_33
    const/4 v0, 0x0

    :goto_34
    if-eqz v0, :cond_3d

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->workspaceInModalState()Z

    move-result v0

    if-nez v0, :cond_3d

    goto :goto_3e

    :cond_3d
    const/4 v1, 0x0

    :goto_3e
    if-eqz v1, :cond_51

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    check-cast v0, Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getGuidePageManager()Lcom/android/launcher/guide/GuidePageManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/DragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    check-cast p0, Lcom/android/launcher3/Launcher;

    sget-object v1, Lcom/android/launcher/guide/GuidePageManager$Page;->MULTI_FINGER:Lcom/android/launcher/guide/GuidePageManager$Page;

    invoke-virtual {v0, p0, v1}, Lcom/android/launcher/guide/GuidePageManager;->showGuidePage(Lcom/android/launcher3/Launcher;Lcom/android/launcher/guide/GuidePageManager$Page;)V

    :cond_51
    return-void
.end method

.method public callOnDragStart()V
    .registers 3

    invoke-super {p0}, Lcom/android/launcher3/dragndrop/DragController;->callOnDragStart()V

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    if-eqz v0, :cond_e

    check-cast v0, Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    if-eqz v0, :cond_19

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->workspaceInModalState()Z

    move-result v0

    if-nez v0, :cond_19

    const/4 v0, 0x1

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    check-cast v0, Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getGuidePageManager()Lcom/android/launcher/guide/GuidePageManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/DragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    check-cast p0, Lcom/android/launcher3/Launcher;

    sget-object v1, Lcom/android/launcher/guide/GuidePageManager$Page;->MULTI_FINGER:Lcom/android/launcher/guide/GuidePageManager$Page;

    invoke-virtual {v0, p0, v1}, Lcom/android/launcher/guide/GuidePageManager;->showGuidePage(Lcom/android/launcher3/Launcher;Lcom/android/launcher/guide/GuidePageManager$Page;)V

    :cond_2d
    return-void
.end method

.method public cancelDrag()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragDriver:Lcom/android/launcher3/dragndrop/DragDriver;

    instance-of v0, v0, Lcom/android/launcher3/dragndrop/DragDriver$InternalDragDriver;

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragController;->isGlobalDragging()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object p0, p0, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void

    :cond_15
    invoke-direct {p0}, Lcom/android/launcher3/dragndrop/OplusDragController;->cancelDragAndDrop()V

    return-void
.end method

.method public cancelDragBeforeHotseatExpandAnim()V
    .registers 5

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragController;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    if-nez v0, :cond_b

    goto :goto_40

    :cond_b
    iget-object v0, v0, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    const-string v1, "OplusDragController"

    const-string v2, "Hotseat_expand"

    if-eqz v0, :cond_22

    iget v0, v0, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v3, -0x65

    if-ne v0, v3, :cond_22

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/OplusDragController;->cancelDrag()V

    const-string p0, "cancelDragBeforeHotseatExpandAnim for drag out hotseat"

    invoke-static {v2, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_22
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    check-cast v0, Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/OplusWorkspace;->getDragTargetLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v0

    iget-object v3, p0, Lcom/android/launcher3/dragndrop/DragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    check-cast v3, Lcom/android/launcher/Launcher;

    invoke-virtual {v3, v0}, Lcom/android/launcher3/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/OplusDragController;->cancelDrag()V

    const-string p0, "cancelDragBeforeHotseatExpandAnim for drag in hotseat"

    invoke-static {v2, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_40
    :goto_40
    return-void
.end method

.method public cancelGlobalDragIfNeed()V
    .registers 3

    iget-boolean v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mIsGlobalDragging:Z

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    check-cast v0, Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getDragEventHandler()Lcom/android/launcher3/dragndrop/IDragEventHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/launcher3/dragndrop/IDragEventHandler;->getOriginalView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_26

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/OplusDragController;->getDragView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_26

    const-string v0, "OplusDragController"

    const-string v1, "cancelGlobalDrag"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object p0, p0, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->cancelDragAndDrop()V

    :cond_26
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/DragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    instance-of v0, p0, Lcom/android/launcher/Launcher;

    if-eqz v0, :cond_13

    check-cast p0, Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getBatchDragViewManager()Lcom/android/launcher/batchdrag/BatchDragViewManager;

    move-result-object p0

    if-eqz p0, :cond_13

    invoke-virtual {p0, p1}, Lcom/android/launcher/batchdrag/BatchDragViewManager;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_13
    const/4 p0, 0x0

    return p0
.end method

.method public dropTraceLayoutInject(ZLcom/android/launcher3/DropTarget;)V
    .registers 4

    if-nez p1, :cond_1c

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object p0, p0, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "dropTarget = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Can not Drop"

    invoke-static {p2, p0, p1}, Lcom/android/common/debug/TraceLog;->traceAction(Ljava/lang/String;Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/String;)V

    :cond_1c
    return-void
.end method

.method public endDrag()V
    .registers 8

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    check-cast v0, Lcom/android/launcher/Launcher;

    sget-object v1, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v1

    sget-object v2, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_5a

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    if-eqz v1, :cond_20

    iget-object v1, v1, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    instance-of v1, v1, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;

    if-eqz v1, :cond_20

    move v1, v4

    goto :goto_21

    :cond_20
    move v1, v5

    :goto_21
    if-nez v1, :cond_26

    invoke-static {v4, v5, v5, v0}, Lcom/android/common/util/StateSwitchUtils;->applyStateChange(ZIZLcom/android/launcher/Launcher;)V

    :cond_26
    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getBatchDragViewManager()Lcom/android/launcher/batchdrag/BatchDragViewManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher/batchdrag/BatchDragViewManager;->getSelectedViewCount()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher/togglebar/ToggleBarManager;->getToggleToolbar()Lcom/android/launcher/togglebar/views/ToggleStateToolbar;

    move-result-object v6

    invoke-virtual {v6, v1, v5}, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->setSecondaryTitle(IZ)V

    if-gtz v1, :cond_5a

    invoke-static {v0}, Lcom/android/launcher3/folder/Folder;->getOpen(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/folder/Folder;

    move-result-object v1

    if-nez v1, :cond_5a

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    if-eqz v1, :cond_5a

    iget-object v1, v1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    instance-of v1, v1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    if-nez v1, :cond_5a

    sget-object v1, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->INSTANCE:Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;

    invoke-virtual {v1}, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->isSurfaceAnimRunning()Z

    move-result v1

    if-nez v1, :cond_5a

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;)V

    :cond_5a
    if-eqz v3, :cond_77

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher/togglebar/ToggleBarManager;->isCardStorePanelExpand()Z

    move-result v1

    if-nez v1, :cond_77

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher/togglebar/ToggleBarManager;->getTopState()Lcom/android/launcher/togglebar/state/ToggleBarBaseState;

    move-result-object v1

    if-eqz v1, :cond_74

    invoke-virtual {v1}, Lcom/android/launcher/togglebar/state/ToggleBarBaseState;->supportIconSelected()Z

    move-result v4

    :cond_74
    invoke-static {v4, v5, v5, v0}, Lcom/android/common/util/StateSwitchUtils;->applyStateChange(ZIZLcom/android/launcher/Launcher;)V

    :cond_77
    invoke-super {p0}, Lcom/android/launcher3/dragndrop/LauncherDragController;->endDrag()V

    sget-object v1, Lcom/android/launcher3/card/uscard/USCardManager;->INSTANCE:Lcom/android/launcher3/card/uscard/USCardManager;

    invoke-virtual {v1}, Lcom/android/launcher3/card/uscard/USCardManager;->getUSCardContainer()Lcom/android/launcher3/card/uscard/USCardContainerView;

    move-result-object v1

    if-eqz v1, :cond_8b

    invoke-virtual {v1}, Lcom/android/launcher3/card/uscard/USCardContainerView;->isShowingInVisiblePage()Z

    move-result v2

    if-eqz v2, :cond_8b

    invoke-virtual {v1, v5}, Lcom/android/launcher3/card/uscard/USCardContainerView;->setUseViewScreenshotOnDraw(Z)V

    :cond_8b
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    if-eqz v1, :cond_9a

    iget-object v1, v1, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    if-eqz v1, :cond_9a

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/OplusWorkspace;->notifyEndDrag()V

    :cond_9a
    invoke-virtual {p0, v5}, Lcom/android/launcher3/dragndrop/DragController;->setGlobalDragging(Z)V

    return-void
.end method

.method public findDropTarget(II[I)Lcom/android/launcher3/DropTarget;
    .registers 5

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/launcher3/dragndrop/OplusDragController;->findDropTarget(II[IZ)Lcom/android/launcher3/DropTarget;

    move-result-object p0

    return-object p0
.end method

.method public findDropTarget(II[IZ)Lcom/android/launcher3/DropTarget;
    .registers 14

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iput p1, v0, Lcom/android/launcher3/DropTarget$DragObject;->x:I

    iput p2, v0, Lcom/android/launcher3/DropTarget$DragObject;->y:I

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mRectTemp:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragController;->mDropTargets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_10
    const/4 v5, 0x1

    if-ge v4, v2, :cond_8b

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/DropTarget;

    instance-of v7, v6, Landroid/view/View;

    if-eqz v7, :cond_26

    move-object v7, v6

    check-cast v7, Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_75

    :cond_26
    invoke-interface {v6}, Lcom/android/launcher3/DropTarget;->isDropEnabled()Z

    move-result v7

    if-nez v7, :cond_2d

    goto :goto_75

    :cond_2d
    invoke-interface {v6, v0}, Lcom/android/launcher3/DropTarget;->getHitRectRelativeToDragLayer(Landroid/graphics/Rect;)V

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v7

    if-nez v7, :cond_78

    instance-of v7, v6, Lcom/android/launcher3/folder/OplusFolder;

    if-eqz v7, :cond_44

    move-object v8, v6

    check-cast v8, Lcom/android/launcher3/folder/OplusFolder;

    invoke-virtual {v8}, Lcom/android/launcher3/folder/OplusFolder;->isExternalDragInProgress()Z

    move-result v8

    if-eqz v8, :cond_44

    goto :goto_78

    :cond_44
    if-eqz v7, :cond_75

    iget-object v7, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v8, v7, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    if-ne v8, v6, :cond_75

    iget-object v7, v7, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    instance-of v7, v7, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v7, :cond_75

    invoke-static {}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->getSInstance()Lcom/android/launcher/folder/download/FolderRecommendUtils;

    move-result-object v7

    iget-object v8, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v8, v8, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    check-cast v8, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {v7, v8}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->isRecommendItemInfo(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)Z

    move-result v7

    if-eqz v7, :cond_75

    aput p1, p3, v3

    aput p2, p3, v5

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/DragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    check-cast p0, Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object p0

    move-object p1, v6

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p3}, Lcom/android/launcher3/views/BaseDragLayer;->mapCoordInSelfToDescendant(Landroid/view/View;[I)V

    return-object v6

    :cond_75
    :goto_75
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    :cond_78
    :goto_78
    aput p1, p3, v3

    aput p2, p3, v5

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/DragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    check-cast p0, Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object p0

    move-object p1, v6

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p3}, Lcom/android/launcher3/views/BaseDragLayer;->mapCoordInSelfToDescendant(Landroid/view/View;[I)V

    return-object v6

    :cond_8b
    aput p1, p3, v3

    aput p2, p3, v5

    iget-object p2, p0, Lcom/android/launcher3/dragndrop/DragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    check-cast p2, Lcom/android/launcher/Launcher;

    invoke-virtual {p2}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p2

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    check-cast v1, Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Lcom/android/launcher3/views/BaseDragLayer;->mapCoordInSelfToDescendant(Landroid/view/View;[I)V

    iget-object p3, p0, Lcom/android/launcher3/dragndrop/DragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    check-cast p3, Lcom/android/launcher/Launcher;

    invoke-virtual {p3}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p3

    if-nez p4, :cond_b4

    iget-object p4, p0, Lcom/android/launcher3/dragndrop/DragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-static {p4}, Lcom/android/launcher3/folder/Folder;->getOpen(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/folder/Folder;

    move-result-object p4

    if-nez p4, :cond_c6

    :cond_b4
    invoke-virtual {p2, v0}, Lcom/android/launcher3/Workspace;->getHitRectRelativeToDragLayer(Landroid/graphics/Rect;)V

    iget-boolean p4, p3, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-nez p4, :cond_c6

    iget-boolean p4, p3, Lcom/android/launcher3/OplusDeviceProfile;->mIsNarBarShowingInNavMode:Z

    if-eqz p4, :cond_c6

    iget p4, v0, Landroid/graphics/Rect;->bottom:I

    iget v1, p3, Lcom/android/launcher3/OplusDeviceProfile;->mNavBarHeight:I

    sub-int/2addr p4, v1

    iput p4, v0, Landroid/graphics/Rect;->bottom:I

    :cond_c6
    iget-object p4, p0, Lcom/android/launcher3/dragndrop/DragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    check-cast p4, Lcom/android/launcher/Launcher;

    sget-object v1, Lcom/android/launcher3/LauncherState;->SPRING_LOADED:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p4, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p4

    if-eqz p4, :cond_f1

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/DragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    check-cast p0, Lcom/android/launcher3/Launcher;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/LauncherState;->getWorkspaceScaleAndTranslation(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherState$ScaleAndTranslation;

    move-result-object p0

    iget p0, p0, Lcom/android/launcher3/LauncherState$ScaleAndTranslation;->scale:F

    const/high16 p4, 0x3f800000  # 1.0f

    div-float/2addr p4, p0

    new-instance p0, Landroid/graphics/PointF;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {p0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-static {v0, p4, p0}, Lcom/android/common/util/PointUtils;->offsetRectAboutPoint(Landroid/graphics/Rect;FLandroid/graphics/PointF;)V

    :cond_f1
    invoke-virtual {p3}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result p0

    if-eqz p0, :cond_108

    invoke-virtual {p3}, Lcom/android/launcher3/DeviceProfile;->isSeascape()Z

    move-result p0

    const/4 p3, 0x0

    if-eqz p0, :cond_103

    iget p0, v0, Landroid/graphics/Rect;->left:I

    if-ge p1, p0, :cond_108

    return-object p3

    :cond_103
    iget p0, v0, Landroid/graphics/Rect;->right:I

    if-le p1, p0, :cond_108

    return-object p3

    :cond_108
    return-object p2
.end method

.method public getDeferredRemoveCallback()Lcom/android/launcher3/popup/DeferredRemoveForPopup;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/OplusDragController;->mDeferredRemoveCallback:Lcom/android/launcher3/popup/DeferredRemoveForPopup;

    return-object p0
.end method

.method public getDragObject()Lcom/android/launcher3/DropTarget$DragObject;
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragController;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDragScroller(II)Lcom/android/launcher3/dragndrop/DragScroller;
    .registers 8

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/OplusDragController;->mDragScrollerTargets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/OplusDragController;->mScrollerRect:Landroid/graphics/Rect;

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_28

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/dragndrop/DragScroller;

    invoke-interface {v3}, Lcom/android/launcher3/dragndrop/DragScroller;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_18

    goto :goto_25

    :cond_18
    move-object v4, v3

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4, p0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_25

    return-object v3

    :cond_25
    :goto_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_28
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDragView()Landroid/view/View;
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragController;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object p0, p0, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method public handleNotDrawnDragView()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v0, v0, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragView;->hasDrawn()Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    :cond_b
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    check-cast v0, Lcom/android/launcher/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getOpen(Landroid/content/Context;)Lcom/android/launcher3/popup/PopupContainerWithArrow;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleNotDrawnDragView, popupView = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusDragController"

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_41

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v0, v0, Lcom/android/launcher3/DropTarget$DragObject;->originalView:Lcom/android/launcher3/dragndrop/DraggableView;

    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_39

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_39
    iget-object p0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object p0, p0, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragView;->remove()V

    goto :goto_4a

    :cond_41
    iget-object p0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object p0, p0, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    check-cast p0, Lcom/android/launcher3/dragndrop/OplusDragView;

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/OplusDragView;->stopAnimation()V

    :goto_4a
    return-void
.end method

.method public isDragCancelled()Z
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    if-eqz p0, :cond_7

    iget-boolean p0, p0, Lcom/android/launcher3/DropTarget$DragObject;->cancelled:Z

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mOptions:Lcom/android/launcher3/dragndrop/DragOptions;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    iget-boolean v0, v0, Lcom/android/launcher3/dragndrop/DragOptions;->isAccessibleDrag:Z

    if-eqz v0, :cond_a

    return v1

    :cond_a
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/LauncherDragController;->mFlingToDeleteHelper:Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;->recordMotionEvent(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/android/launcher3/dragndrop/DragController;->getClampedDragLayerPos(FF)Landroid/graphics/Point;

    move-result-object v2

    iget v3, v2, Landroid/graphics/Point;->x:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    const/4 v4, 0x1

    if-eqz v0, :cond_73

    const/4 v2, -0x1

    if-eq v0, v4, :cond_70

    const/4 v3, 0x3

    if-eq v0, v3, :cond_54

    const/4 v2, 0x5

    if-eq v0, v2, :cond_30

    goto :goto_84

    :cond_30
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/dragndrop/OplusDragController;->mSecondPointerId:I

    invoke-static {p1, v0}, Lcom/android/common/util/TouchEventUtils;->safeGetX(Landroid/view/MotionEvent;I)F

    move-result v0

    float-to-int v0, v0

    iget v2, p0, Lcom/android/launcher3/dragndrop/OplusDragController;->mSecondPointerId:I

    invoke-static {p1, v2}, Lcom/android/common/util/TouchEventUtils;->safeGetY(Landroid/view/MotionEvent;I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0, v0, v2}, Lcom/android/launcher3/dragndrop/OplusDragController;->getDragScroller(II)Lcom/android/launcher3/dragndrop/DragScroller;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/OplusDragController;->mVariableScroller:Lcom/android/launcher3/dragndrop/DragScroller;

    if-eqz v0, :cond_4e

    invoke-interface {v0, p1}, Lcom/android/launcher3/dragndrop/DragScroller;->handleMotionEvent(Landroid/view/MotionEvent;)Z

    goto :goto_84

    :cond_4e
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/OplusDragController;->mFixedDragScroller:Lcom/android/launcher3/dragndrop/DragScroller;

    invoke-interface {v0, p1}, Lcom/android/launcher3/dragndrop/DragScroller;->handleMotionEvent(Landroid/view/MotionEvent;)Z

    goto :goto_84

    :cond_54
    iput v2, p0, Lcom/android/launcher3/dragndrop/OplusDragController;->mActivePointerId:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0, v0, v2}, Lcom/android/launcher3/dragndrop/OplusDragController;->getDragScroller(II)Lcom/android/launcher3/dragndrop/DragScroller;

    move-result-object v0

    if-eqz v0, :cond_6a

    invoke-interface {v0, p1}, Lcom/android/launcher3/dragndrop/DragScroller;->handleMotionEvent(Landroid/view/MotionEvent;)Z

    goto :goto_84

    :cond_6a
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/OplusDragController;->mFixedDragScroller:Lcom/android/launcher3/dragndrop/DragScroller;

    invoke-interface {v0, p1}, Lcom/android/launcher3/dragndrop/DragScroller;->handleMotionEvent(Landroid/view/MotionEvent;)Z

    goto :goto_84

    :cond_70
    iput v2, p0, Lcom/android/launcher3/dragndrop/OplusDragController;->mActivePointerId:I

    goto :goto_84

    :cond_73
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mMotionDown:Landroid/graphics/Point;

    iput v3, v0, Landroid/graphics/Point;->x:I

    iput v2, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/dragndrop/OplusDragController;->mActivePointerId:I

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mLastTouch:Landroid/graphics/Point;

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Point;->set(II)V

    :goto_84
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    check-cast v0, Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getBatchDragViewManager()Lcom/android/launcher/batchdrag/BatchDragViewManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragDriver:Lcom/android/launcher3/dragndrop/DragDriver;

    if-eqz p0, :cond_96

    invoke-virtual {p0, p1}, Lcom/android/launcher3/dragndrop/DragDriver;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-nez p0, :cond_9e

    :cond_96
    if-eqz v0, :cond_9f

    invoke-virtual {v0, p1}, Lcom/android/launcher/batchdrag/BatchDragViewManager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_9f

    :cond_9e
    move v1, v4

    :cond_9f
    return v1
.end method

.method public onControllerTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 10

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragDriver:Lcom/android/launcher3/dragndrop/DragDriver;

    const/4 v1, 0x0

    if-eqz v0, :cond_1b9

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mOptions:Lcom/android/launcher3/dragndrop/DragOptions;

    if-eqz v0, :cond_1b9

    iget-boolean v0, v0, Lcom/android/launcher3/dragndrop/DragOptions;->isAccessibleDrag:Z

    if-eqz v0, :cond_f

    goto/16 :goto_1b9

    :cond_f
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragController;->isDragging()Z

    move-result v0

    const/4 v2, 0x2

    if-eqz v0, :cond_42

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-lt v0, v2, :cond_42

    sget-object v0, Lcom/android/launcher/settings/LauncherSettingsUtils;->INSTANCE:Lcom/android/launcher/settings/LauncherSettingsUtils;

    iget-object v3, p0, Lcom/android/launcher3/dragndrop/DragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    check-cast v3, Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcom/android/launcher/settings/LauncherSettingsUtils;->isLauncherLayoutLocked(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_32

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v0, v0, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {v0, v1}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDragHelper;->hotseatExpandItemShouldNotDragOutAndToast(Lcom/android/launcher3/model/data/ItemInfo;Z)Z

    move-result v0

    if-eqz v0, :cond_42

    :cond_32
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/16 v0, 0x105

    if-ne p1, v0, :cond_41

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/DragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    check-cast p0, Landroid/content/Context;

    invoke-static {p0}, Lcom/android/launcher/settings/LauncherSettingsUtils;->checkLauncherLockedAndToast(Landroid/content/Context;)Z

    :cond_41
    return v1

    :cond_42
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragController;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_5b

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-lt v0, v2, :cond_5b

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    check-cast v0, Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-eqz v0, :cond_5b

    return v1

    :cond_5b
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/LauncherDragController;->mFlingToDeleteHelper:Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;->recordMotionEvent(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const-string v3, ", ev.getRawY() = "

    const-string v4, "Drag"

    const-string v5, "OplusDragController"

    if-eqz v0, :cond_167

    const/4 v6, -0x1

    const/4 v7, 0x1

    if-eq v0, v7, :cond_143

    if-eq v0, v2, :cond_e8

    const/4 v3, 0x3

    const/4 v7, 0x0

    if-eq v0, v3, :cond_d0

    const/4 v3, 0x5

    if-eq v0, v3, :cond_a4

    const/4 v3, 0x6

    if-eq v0, v3, :cond_7e

    goto/16 :goto_1b0

    :cond_7e
    const-string/jumbo v0, "onTouchEvent -- ACTION_POINTER_UP "

    invoke-static {v4, v5, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/dragndrop/OplusDragController;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/OplusDragController;->mVariableScroller:Lcom/android/launcher3/dragndrop/DragScroller;

    if-eqz v0, :cond_9d

    invoke-interface {v0, p1}, Lcom/android/launcher3/dragndrop/DragScroller;->handleMotionEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-gt v0, v2, :cond_1b0

    iput-object v7, p0, Lcom/android/launcher3/dragndrop/OplusDragController;->mVariableScroller:Lcom/android/launcher3/dragndrop/DragScroller;

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/OplusDragController;->mFixedDragScroller:Lcom/android/launcher3/dragndrop/DragScroller;

    invoke-interface {v0, p1}, Lcom/android/launcher3/dragndrop/DragScroller;->handleMotionEvent(Landroid/view/MotionEvent;)Z

    goto/16 :goto_1b0

    :cond_9d
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/OplusDragController;->mFixedDragScroller:Lcom/android/launcher3/dragndrop/DragScroller;

    invoke-interface {v0, p1}, Lcom/android/launcher3/dragndrop/DragScroller;->handleMotionEvent(Landroid/view/MotionEvent;)Z

    goto/16 :goto_1b0

    :cond_a4
    const-string/jumbo v0, "onTouchEvent -- ACTION_POINTER_DOWN "

    invoke-static {v4, v5, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/dragndrop/OplusDragController;->mSecondPointerId:I

    invoke-static {p1, v0}, Lcom/android/common/util/TouchEventUtils;->safeGetX(Landroid/view/MotionEvent;I)F

    move-result v0

    float-to-int v0, v0

    iget v2, p0, Lcom/android/launcher3/dragndrop/OplusDragController;->mSecondPointerId:I

    invoke-static {p1, v2}, Lcom/android/common/util/TouchEventUtils;->safeGetY(Landroid/view/MotionEvent;I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0, v0, v2}, Lcom/android/launcher3/dragndrop/OplusDragController;->getDragScroller(II)Lcom/android/launcher3/dragndrop/DragScroller;

    move-result-object v0

    if-eqz v0, :cond_c9

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/OplusDragController;->mVariableScroller:Lcom/android/launcher3/dragndrop/DragScroller;

    invoke-interface {v0, p1}, Lcom/android/launcher3/dragndrop/DragScroller;->handleMotionEvent(Landroid/view/MotionEvent;)Z

    goto/16 :goto_1b0

    :cond_c9
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/OplusDragController;->mFixedDragScroller:Lcom/android/launcher3/dragndrop/DragScroller;

    invoke-interface {v0, p1}, Lcom/android/launcher3/dragndrop/DragScroller;->handleMotionEvent(Landroid/view/MotionEvent;)Z

    goto/16 :goto_1b0

    :cond_d0
    const-string/jumbo v0, "onTouchEvent -- CANCEL -- cancelDragAndDrop "

    invoke-static {v4, v5, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput v6, p0, Lcom/android/launcher3/dragndrop/OplusDragController;->mActivePointerId:I

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/OplusDragController;->mFixedDragScroller:Lcom/android/launcher3/dragndrop/DragScroller;

    invoke-interface {v0, p1}, Lcom/android/launcher3/dragndrop/DragScroller;->handleMotionEvent(Landroid/view/MotionEvent;)Z

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/OplusDragController;->mVariableScroller:Lcom/android/launcher3/dragndrop/DragScroller;

    if-eqz v0, :cond_1b0

    invoke-interface {v0, p1}, Lcom/android/launcher3/dragndrop/DragScroller;->handleMotionEvent(Landroid/view/MotionEvent;)Z

    iput-object v7, p0, Lcom/android/launcher3/dragndrop/OplusDragController;->mVariableScroller:Lcom/android/launcher3/dragndrop/DragScroller;

    goto/16 :goto_1b0

    :cond_e8
    :try_start_e8
    iget v0, p0, Lcom/android/launcher3/dragndrop/OplusDragController;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    iget v3, p0, Lcom/android/launcher3/dragndrop/OplusDragController;->mSecondPointerId:I

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    if-lt v0, v4, :cond_11c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onTouchEvent -- pointerIndex = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "/ ev.getPointerCount() = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v7

    :cond_11c
    iget v1, p0, Lcom/android/launcher3/dragndrop/OplusDragController;->mActivePointerId:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-lt v0, v2, :cond_1b0

    if-ltz v3, :cond_136

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/OplusDragController;->mVariableScroller:Lcom/android/launcher3/dragndrop/DragScroller;

    if-eqz v0, :cond_12f

    invoke-interface {v0, p1}, Lcom/android/launcher3/dragndrop/DragScroller;->handleMotionEvent(Landroid/view/MotionEvent;)Z

    goto/16 :goto_1b0

    :cond_12f
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/OplusDragController;->mFixedDragScroller:Lcom/android/launcher3/dragndrop/DragScroller;

    invoke-interface {v0, p1}, Lcom/android/launcher3/dragndrop/DragScroller;->handleMotionEvent(Landroid/view/MotionEvent;)Z

    goto/16 :goto_1b0

    :cond_136
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/OplusDragController;->mFixedDragScroller:Lcom/android/launcher3/dragndrop/DragScroller;

    invoke-interface {v0, p1}, Lcom/android/launcher3/dragndrop/DragScroller;->handleMotionEvent(Landroid/view/MotionEvent;)Z
    :try_end_13b
    .catch Ljava/lang/Exception; {:try_start_e8 .. :try_end_13b} :catch_13c

    goto :goto_1b0

    :catch_13c
    move-exception v0

    const-string v2, " onTouchEvent "

    invoke-static {v2, v0, v5}, Lcom/android/common/config/i;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_1b0

    :cond_143
    const-string/jumbo v0, "onTouchEvent -- ACTION_UP  ev.getRawX() = "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v5, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/android/launcher3/dragndrop/OplusDragController;->mActivePointerId:I

    iput v6, p0, Lcom/android/launcher3/dragndrop/OplusDragController;->mActivePointerId:I

    goto :goto_1b0

    :cond_167
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/android/launcher3/dragndrop/DragController;->getClampedDragLayerPos(FF)Landroid/graphics/Point;

    move-result-object v0

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget-object v6, p0, Lcom/android/launcher3/dragndrop/DragController;->mMotionDown:Landroid/graphics/Point;

    iput v2, v6, Landroid/graphics/Point;->x:I

    iput v0, v6, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/dragndrop/OplusDragController;->mActivePointerId:I

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_1b0

    const-string/jumbo v0, "onTouchEvent -- ACTION_DOWN  ev.getRawX() = "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ",ev="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v5, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1b0
    :goto_1b0
    iget-object p0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragDriver:Lcom/android/launcher3/dragndrop/DragDriver;

    check-cast p0, Lcom/android/launcher3/dragndrop/OplusDragDriver;

    invoke-virtual {p0, p1, v1}, Lcom/android/launcher3/dragndrop/OplusDragDriver;->onTouchEvent(Landroid/view/MotionEvent;I)Z

    move-result p0

    return p0

    :cond_1b9
    :goto_1b9
    return v1
.end method

.method public onDeferredEndDrag(Lcom/android/launcher3/dragndrop/DragView;)V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-static {v0}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->getPopupContainer(Lcom/android/launcher3/views/ActivityContext;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDeferredEndDrag, popView = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusDragController"

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_27

    new-instance v0, Lcom/android/launcher3/popup/DeferredRemoveForPopup;

    invoke-direct {v0, p1}, Lcom/android/launcher3/popup/DeferredRemoveForPopup;-><init>(Lcom/android/launcher3/dragndrop/DragView;)V

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/OplusDragController;->mDeferredRemoveCallback:Lcom/android/launcher3/popup/DeferredRemoveForPopup;

    goto :goto_2a

    :cond_27
    invoke-virtual {p1}, Lcom/android/launcher3/dragndrop/DragView;->remove()V

    :goto_2a
    iget-object p1, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-boolean p1, p1, Lcom/android/launcher3/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    if-eqz p1, :cond_33

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/OplusDragController;->callOnDragEnd()V

    :cond_33
    return-void
.end method

.method public onDriverDragEndPre(FF)V
    .registers 3

    iget-object p1, p0, Lcom/android/launcher3/dragndrop/DragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    check-cast p1, Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/OplusHotseat;->needHotseatShowCenterMode(Lcom/android/launcher3/CellLayout;)Z

    move-result p1

    if-eqz p1, :cond_19

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/DragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    check-cast p0, Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/OplusHotseat;->finishAnimation()V

    :cond_19
    return-void
.end method

.method public onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .registers 8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    const-string/jumbo v2, "onSecondaryPointerUp , ev.getActionMasked() = "

    invoke-static {v2}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", getPointerCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", pointerIndex = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", pointerId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mActivePointerId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/launcher3/dragndrop/OplusDragController;->mActivePointerId:I

    const-string v4, "Drag"

    const-string v5, "OplusDragController"

    invoke-static {v2, v3, v4, v5}, Lcom/android/launcher/download/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    iget v2, p0, Lcom/android/launcher3/dragndrop/OplusDragController;->mActivePointerId:I

    if-ne v1, v2, :cond_8d

    if-nez v0, :cond_48

    const/4 v0, 0x1

    goto :goto_49

    :cond_48
    const/4 v0, 0x0

    :goto_49
    invoke-static {p1, v0}, Lcom/android/common/util/TouchEventUtils;->safeGetX(Landroid/view/MotionEvent;I)F

    move-result v1

    invoke-static {p1, v0}, Lcom/android/common/util/TouchEventUtils;->safeGetY(Landroid/view/MotionEvent;I)F

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/launcher3/dragndrop/DragController;->getClampedDragLayerPos(FF)Landroid/graphics/Point;

    move-result-object v1

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lcom/android/launcher3/dragndrop/DragController;->mMotionDown:Landroid/graphics/Point;

    iput v2, v3, Landroid/graphics/Point;->x:I

    iput v1, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v2, v1}, Lcom/android/launcher3/dragndrop/DragController;->handleMoveEvent(II)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onSecondaryPointerUp mMotionDownX = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/DragController;->mMotionDown:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mMotionDownY = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/DragController;->mMotionDown:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v5, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/dragndrop/OplusDragController;->mActivePointerId:I

    goto :goto_94

    :cond_8d
    iget p1, p0, Lcom/android/launcher3/dragndrop/OplusDragController;->mSecondPointerId:I

    if-ne v1, p1, :cond_94

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/launcher3/dragndrop/OplusDragController;->mSecondPointerId:I

    :cond_94
    :goto_94
    return-void
.end method

.method public onStartDrag(Lcom/android/launcher3/dragndrop/DragView;)V
    .registers 8
    .param p1  # Lcom/android/launcher3/dragndrop/DragView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1a

    iget-object v0, v0, Lcom/android/launcher3/DropTarget$DragObject;->originalView:Lcom/android/launcher3/dragndrop/DraggableView;

    instance-of v3, v0, Lcom/android/launcher3/card/uscard/USCardContainerView;

    if-eqz v3, :cond_1a

    check-cast v0, Lcom/android/launcher3/card/uscard/USCardContainerView;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/card/uscard/USCardContainerView;->animBg(Z)V

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v0, v0, Lcom/android/launcher3/DropTarget$DragObject;->originalView:Lcom/android/launcher3/dragndrop/DraggableView;

    check-cast v0, Lcom/android/launcher3/card/uscard/USCardContainerView;

    invoke-virtual {v0, v2, v2}, Lcom/android/launcher3/card/uscard/USCardContainerView;->animCardAlpha(ZZ)V

    :cond_1a
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    check-cast v0, Lcom/android/launcher/Launcher;

    sget-object v3, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-nez v0, :cond_32

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    check-cast v0, Lcom/android/launcher/Launcher;

    sget-object v3, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_75

    :cond_32
    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/android/launcher3/dragndrop/DragView;->getContentView()Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    if-eqz v3, :cond_42

    invoke-virtual {p1}, Lcom/android/launcher3/dragndrop/DragView;->getContentView()Landroid/view/View;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    :cond_42
    iget-object p1, p0, Lcom/android/launcher3/dragndrop/DragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils;->areAnimationsEnabled(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_5f

    iget-object p1, p0, Lcom/android/launcher3/dragndrop/DragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    check-cast p1, Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Landroid/app/Activity;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v3, Lcom/android/launcher3/dragndrop/m;

    invoke-direct {v3, p0, v0}, Lcom/android/launcher3/dragndrop/m;-><init>(Lcom/android/launcher3/dragndrop/OplusDragController;Lcom/android/launcher3/widget/LauncherAppWidgetHostView;)V

    const-wide/16 v4, 0x96

    invoke-virtual {p1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_66

    :cond_5f
    iget-object p1, p0, Lcom/android/launcher3/dragndrop/DragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    check-cast p1, Lcom/android/launcher/Launcher;

    invoke-static {v0, v2, v2, v2, p1}, Lcom/android/common/util/StateSwitchUtils;->applyStateChangeWithCertainView(Landroid/view/View;ZIZLcom/android/launcher/Launcher;)V

    :goto_66
    iget-object p1, p0, Lcom/android/launcher3/dragndrop/DragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    check-cast p1, Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher/togglebar/ToggleBarManager;->getToggleToolbar()Lcom/android/launcher/togglebar/views/ToggleStateToolbar;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->setSecondaryTitle(IZ)V

    :cond_75
    iget-object p0, p0, Lcom/android/launcher3/dragndrop/DragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    check-cast p0, Landroid/content/Context;

    invoke-static {p0}, Lcom/android/common/LauncherAssetManager;->getInstance(Landroid/content/Context;)Lcom/android/common/LauncherAssetManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/common/LauncherAssetManager;->reloadCategoryMapIfNeeded()V

    return-void
.end method

.method public removeDragScrollerTarget(Lcom/android/launcher3/dragndrop/DragScroller;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/OplusDragController;->mDragScrollerTargets:Ljava/util/ArrayList;

    if-eqz p0, :cond_7

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_7
    return-void
.end method

.method public runDeferredRemoveCallback()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/OplusDragController;->mDeferredRemoveCallback:Lcom/android/launcher3/popup/DeferredRemoveForPopup;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/android/launcher3/popup/DeferredRemoveForPopup;->run()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/OplusDragController;->mDeferredRemoveCallback:Lcom/android/launcher3/popup/DeferredRemoveForPopup;

    :cond_a
    return-void
.end method

.method public setDragScroller(Lcom/android/launcher3/dragndrop/DragScroller;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/OplusDragController;->mFixedDragScroller:Lcom/android/launcher3/dragndrop/DragScroller;

    return-void
.end method

.method public showOriginalIconOpsAhead()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/OplusDragController;->mDeferredRemoveCallback:Lcom/android/launcher3/popup/DeferredRemoveForPopup;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lcom/android/launcher3/popup/DeferredRemoveForPopup;->runShowOriginalIconOps()V

    :cond_7
    return-void
.end method

.method public startBatchDrag(Lcom/android/launcher/batchdrag/BatchDragView;Ljava/util/List;Landroid/graphics/Rect;IIIILcom/android/launcher3/DragSource;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/dragndrop/DragOptions;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher/batchdrag/BatchDragView;",
            "Ljava/util/List<",
            "Lcom/android/launcher/batchdrag/BatchDragView;",
            ">;",
            "Landroid/graphics/Rect;",
            "IIII",
            "Lcom/android/launcher3/DragSource;",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            "Lcom/android/launcher3/dragndrop/DragOptions;",
            ")V"
        }
    .end annotation

    iput-object p10, p0, Lcom/android/launcher3/dragndrop/DragController;->mOptions:Lcom/android/launcher3/dragndrop/DragOptions;

    const/4 p10, 0x0

    iput-boolean p10, p0, Lcom/android/launcher3/dragndrop/DragController;->mIsInPreDrag:Z

    new-instance v0, Lcom/android/launcher/batchdrag/BatchDragObject;

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/launcher/batchdrag/BatchDragObject;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iput-object p1, v0, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    iput-object p2, v0, Lcom/android/launcher/batchdrag/BatchDragObject;->batchDragViewList:Ljava/util/List;

    iput-boolean p10, v0, Lcom/android/launcher3/DropTarget$DragObject;->dragComplete:Z

    iget p2, p3, Landroid/graphics/Rect;->left:I

    sub-int/2addr p6, p2

    iput p6, v0, Lcom/android/launcher3/DropTarget$DragObject;->xOffset:I

    iget p2, p3, Landroid/graphics/Rect;->top:I

    sub-int/2addr p7, p2

    iput p7, v0, Lcom/android/launcher3/DropTarget$DragObject;->yOffset:I

    invoke-static {p1}, Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;->createFor(Landroid/view/View;)Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;

    move-result-object p1

    iput-object p1, v0, Lcom/android/launcher3/DropTarget$DragObject;->stateAnnouncer:Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;

    iget-object p1, p0, Lcom/android/launcher3/dragndrop/DragController;->mOptions:Lcom/android/launcher3/dragndrop/DragOptions;

    iget-object p2, p0, Lcom/android/launcher3/dragndrop/LauncherDragController;->mFlingToDeleteHelper:Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p3, Lcom/android/launcher3/dragndrop/u;

    const/4 p6, 0x1

    invoke-direct {p3, p2, p6}, Lcom/android/launcher3/dragndrop/u;-><init>(Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;I)V

    invoke-static {p0, p1, p3}, Lcom/android/launcher3/dragndrop/DragDriver;->create(Lcom/android/launcher3/dragndrop/DragController;Lcom/android/launcher3/dragndrop/DragOptions;Ljava/util/function/Consumer;)Lcom/android/launcher3/dragndrop/DragDriver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragDriver:Lcom/android/launcher3/dragndrop/DragDriver;

    iget-object p1, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iput-object p8, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    iput-object p9, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    new-instance p2, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-direct {p2}, Lcom/android/launcher3/model/data/ItemInfo;-><init>()V

    iput-object p2, p1, Lcom/android/launcher3/DropTarget$DragObject;->originalDragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iget-object p1, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object p1, p1, Lcom/android/launcher3/DropTarget$DragObject;->originalDragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {p1, p9}, Lcom/android/launcher3/model/data/ItemInfo;->copyFrom(Lcom/android/launcher3/model/data/ItemInfo;)V

    iget-object p1, p0, Lcom/android/launcher3/dragndrop/DragController;->mMotionDown:Landroid/graphics/Point;

    iput p4, p1, Landroid/graphics/Point;->x:I

    iput p5, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/OplusDragController;->callOnDragStart()V

    iput p10, p0, Lcom/android/launcher3/dragndrop/DragController;->mDistanceSinceScroll:I

    iget-object p1, p0, Lcom/android/launcher3/dragndrop/DragController;->mLastTouch:Landroid/graphics/Point;

    iget-object p2, p0, Lcom/android/launcher3/dragndrop/DragController;->mMotionDown:Landroid/graphics/Point;

    iget p3, p2, Landroid/graphics/Point;->x:I

    iput p3, p1, Landroid/graphics/Point;->x:I

    iget p3, p2, Landroid/graphics/Point;->y:I

    iput p3, p1, Landroid/graphics/Point;->y:I

    iget p1, p2, Landroid/graphics/Point;->x:I

    iget p2, p2, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/dragndrop/DragController;->handleMoveEvent(II)V

    iget-object p1, p0, Lcom/android/launcher3/dragndrop/DragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    check-cast p1, Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    iget-object p1, p0, Lcom/android/launcher3/dragndrop/DragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/statistics/LauncherStatistics;->statsBatchDrag()V

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/DragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    check-cast p0, Lcom/android/launcher/Launcher;

    invoke-static {p10, p10, p10, p0}, Lcom/android/common/util/StateSwitchUtils;->applyStateChange(ZIZLcom/android/launcher/Launcher;)V

    return-void
.end method

.method public startDrag(Landroid/graphics/drawable/Drawable;Lcom/android/launcher3/dragndrop/DraggableView;IILcom/android/launcher3/DragSource;Lcom/android/launcher3/model/data/ItemInfo;Landroid/graphics/Point;Landroid/graphics/Rect;FFLcom/android/launcher3/dragndrop/DragOptions;)Lcom/android/launcher3/dragndrop/DragView;
    .registers 27

    move-object v12, p0

    move-object/from16 v13, p5

    move-object/from16 v14, p6

    const-string/jumbo v0, "startDrag -- dragInfo = "

    const-string v1, "OplusDragController"

    invoke-static {v0, v14, v1}, Lcom/android/common/util/x;->a(Ljava/lang/String;Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/String;)V

    instance-of v0, v14, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    if-eqz v0, :cond_30

    iget-boolean v0, v12, Lcom/android/launcher3/dragndrop/DragController;->mIsGlobalDragging:Z

    if-nez v0, :cond_30

    iget-object v0, v12, Lcom/android/launcher3/dragndrop/DragController;->mMotionDown:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget-object v1, v12, Lcom/android/launcher3/dragndrop/DragController;->mMotionDown:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    move-object/from16 v8, p8

    move v3, v0

    move v4, v1

    goto :goto_41

    :cond_30
    instance-of v0, v13, Lcom/android/launcher3/popup/PopupContainerWithArrow;

    if-eqz v0, :cond_3b

    const/4 v0, 0x0

    move/from16 v3, p3

    move/from16 v4, p4

    move-object v8, v0

    goto :goto_41

    :cond_3b
    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v8, p8

    :goto_41
    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v9, p9

    move/from16 v10, p10

    move-object/from16 v11, p11

    invoke-super/range {v0 .. v11}, Lcom/android/launcher3/dragndrop/DragController;->startDrag(Landroid/graphics/drawable/Drawable;Lcom/android/launcher3/dragndrop/DraggableView;IILcom/android/launcher3/DragSource;Lcom/android/launcher3/model/data/ItemInfo;Landroid/graphics/Point;Landroid/graphics/Rect;FFLcom/android/launcher3/dragndrop/DragOptions;)Lcom/android/launcher3/dragndrop/DragView;

    move-result-object v0

    iget v1, v14, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_5f

    instance-of v2, v13, Lcom/android/launcher3/views/OplusWidgetsFullSheet;

    if-nez v2, :cond_67

    :cond_5f
    const/16 v2, 0x64

    if-ne v1, v2, :cond_6f

    instance-of v1, v13, Lcom/android/launcher3/popup/PopupContainerWithArrow;

    if-eqz v1, :cond_6f

    :cond_67
    iget-object v1, v12, Lcom/android/launcher3/dragndrop/DragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    check-cast v1, Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/common/util/VibrationUtils;->vibrate(Landroid/content/Context;I)V

    :cond_6f
    invoke-virtual {p0, v0}, Lcom/android/launcher3/dragndrop/OplusDragController;->onStartDrag(Lcom/android/launcher3/dragndrop/DragView;)V

    return-object v0
.end method

.method public startDrag(Landroid/view/View;Lcom/android/launcher3/dragndrop/DraggableView;IILcom/android/launcher3/DragSource;Lcom/android/launcher3/model/data/ItemInfo;Landroid/graphics/Point;Landroid/graphics/Rect;FFLcom/android/launcher3/dragndrop/DragOptions;)Lcom/android/launcher3/dragndrop/DragView;
    .registers 12

    invoke-super/range {p0 .. p11}, Lcom/android/launcher3/dragndrop/DragController;->startDrag(Landroid/view/View;Lcom/android/launcher3/dragndrop/DraggableView;IILcom/android/launcher3/DragSource;Lcom/android/launcher3/model/data/ItemInfo;Landroid/graphics/Point;Landroid/graphics/Rect;FFLcom/android/launcher3/dragndrop/DragOptions;)Lcom/android/launcher3/dragndrop/DragView;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/dragndrop/OplusDragController;->onStartDrag(Lcom/android/launcher3/dragndrop/DragView;)V

    return-object p1
.end method

.method public tryMarkIsInPreDrag()V
    .registers 3

    iget-boolean v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mIsInPreDrag:Z

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragController;->isGlobalDragging()Z

    move-result v1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mIsInPreDrag:Z

    return-void
.end method
