.class public Lcom/android/quickstep/views/GroupedTaskView;
.super Lcom/android/quickstep/views/OplusTaskViewImpl;
.source ""


# instance fields
.field private final mDigitalWellBeingToast2:Lcom/android/quickstep/views/DigitalWellBeingToast;

.field private final mIcon2CenterCoords:[F

.field private mIcon2TouchDelegate:Lcom/android/launcher3/util/TransformingTouchDelegate;

.field public mIconLoadRequest2:Lcom/android/quickstep/util/CancellableTask;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public mIconView2:Lcom/android/quickstep/views/IconView;

.field public mSecondaryTask:Lcom/android/systemui/shared/recents/model/Task;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public mSnapshotView2:Lcom/android/quickstep/views/TaskThumbnailView;

.field public mSplitBoundsConfig:Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public mThumbnailLoadRequest2:Lcom/android/quickstep/util/CancellableTask;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/quickstep/views/GroupedTaskView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/quickstep/views/GroupedTaskView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/quickstep/views/OplusTaskViewImpl;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x2

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/android/quickstep/views/GroupedTaskView;->mIcon2CenterCoords:[F

    new-instance p1, Lcom/android/quickstep/views/DigitalWellBeingToast;

    iget-object p2, p0, Lcom/android/quickstep/views/TaskView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-direct {p1, p2, p0}, Lcom/android/quickstep/views/DigitalWellBeingToast;-><init>(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView;)V

    iput-object p1, p0, Lcom/android/quickstep/views/GroupedTaskView;->mDigitalWellBeingToast2:Lcom/android/quickstep/views/DigitalWellBeingToast;

    return-void
.end method

.method private isCoordInView(Landroid/view/View;Landroid/graphics/PointF;)Z
    .registers 6

    const/4 v0, 0x2

    new-array v0, v0, [F

    iget v1, p2, Landroid/graphics/PointF;->x:F

    const/4 v2, 0x0

    aput v1, v0, v2

    iget p2, p2, Landroid/graphics/PointF;->y:F

    const/4 v1, 0x1

    aput p2, v0, v1

    invoke-static {p1, p0, v0}, Lcom/android/launcher3/Utilities;->mapCoordInSelfToDescendant(Landroid/view/View;Landroid/view/View;[F)V

    aget p0, v0, v2

    aget p2, v0, v1

    const/4 v0, 0x0

    invoke-static {p1, p0, p2, v0}, Lcom/android/launcher3/Utilities;->pointInView(Landroid/view/View;FFF)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$launchTaskAnimated$2(Lcom/android/launcher3/util/RunnableList;Ljava/lang/Boolean;)V
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher3/util/RunnableList;->executeAllAndDestroy()V

    const/16 p0, 0x31

    invoke-static {p0}, Lcom/android/systemui/shared/system/InteractionJankMonitorWrapper;->end(I)V

    return-void
.end method

.method private synthetic lambda$onTaskListVisibilityChanged$0(Lcom/android/systemui/shared/recents/model/ThumbnailData;)V
    .registers 3

    iget-object v0, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSnapshotView2:Lcom/android/quickstep/views/TaskThumbnailView;

    iget-object p0, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSecondaryTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v0, p0, p1}, Lcom/android/quickstep/views/TaskThumbnailView;->setThumbnail(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/ThumbnailData;)V

    return-void
.end method

.method private synthetic lambda$onTaskListVisibilityChanged$1(Lcom/android/systemui/shared/recents/model/Task;)V
    .registers 3

    iget-object v0, p0, Lcom/android/quickstep/views/GroupedTaskView;->mIconView2:Lcom/android/quickstep/views/IconView;

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0, p1}, Lcom/android/quickstep/views/OplusTaskViewImpl;->setIcon(Lcom/android/quickstep/views/IconView;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static synthetic s(Lcom/android/quickstep/views/GroupedTaskView;Lcom/android/systemui/shared/recents/model/ThumbnailData;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/quickstep/views/GroupedTaskView;->lambda$onTaskListVisibilityChanged$0(Lcom/android/systemui/shared/recents/model/ThumbnailData;)V

    return-void
.end method

.method public static synthetic t(Lcom/android/launcher3/util/RunnableList;Ljava/lang/Boolean;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/quickstep/views/GroupedTaskView;->lambda$launchTaskAnimated$2(Lcom/android/launcher3/util/RunnableList;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic u(Lcom/android/quickstep/views/GroupedTaskView;Lcom/android/systemui/shared/recents/model/Task;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/quickstep/views/GroupedTaskView;->lambda$onTaskListVisibilityChanged$1(Lcom/android/systemui/shared/recents/model/Task;)V

    return-void
.end method

.method private updateIconPlacement()V
    .registers 13

    iget-object v0, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSplitBoundsConfig:Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v10

    iget v4, v10, Lcom/android/launcher3/DeviceProfile;->overviewTaskIconSizePx:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_16

    move v9, v1

    goto :goto_18

    :cond_16
    const/4 v0, 0x0

    move v9, v0

    :goto_18
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getPagedOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/quickstep/views/TaskView;->mIconView:Lcom/android/quickstep/views/IconView;

    iget-object v3, p0, Lcom/android/quickstep/views/GroupedTaskView;->mIconView2:Lcom/android/quickstep/views/IconView;

    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mSnapshotView:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mSnapshotView:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v8

    iget-object v11, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSplitBoundsConfig:Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;

    invoke-interface/range {v1 .. v11}, Lcom/android/launcher3/touch/PagedOrientationHandler;->setSplitIconParams(Landroid/view/View;Landroid/view/View;IIIIIZLcom/android/launcher3/DeviceProfile;Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;)V

    return-void
.end method

.method private updateSecondaryDwbPlacement()V
    .registers 1

    return-void
.end method


# virtual methods
.method public bind(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/Task;Lcom/android/quickstep/util/RecentsOrientedState;Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;)V
    .registers 12
    .param p4  # Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p3}, Lcom/android/quickstep/views/TaskView;->bind(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/quickstep/util/RecentsOrientedState;)V

    iput-object p2, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSecondaryTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object p1, p0, Lcom/android/quickstep/views/TaskView;->mTaskIdContainer:[I

    iget-object p3, p2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget p3, p3, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    const/4 v0, 0x1

    aput p3, p1, v0

    iget-object p1, p0, Lcom/android/quickstep/views/TaskView;->mTaskIdAttributeContainer:[Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;

    new-instance p3, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;

    iget-object v4, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSnapshotView2:Lcom/android/quickstep/views/TaskThumbnailView;

    iget-object v5, p0, Lcom/android/quickstep/views/GroupedTaskView;->mIconView2:Lcom/android/quickstep/views/IconView;

    const/4 v6, 0x1

    move-object v1, p3

    move-object v2, p0

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;-><init>(Lcom/android/quickstep/views/TaskView;Lcom/android/systemui/shared/recents/model/Task;Lcom/android/quickstep/views/TaskThumbnailView;Lcom/android/quickstep/views/IconView;I)V

    aput-object p3, p1, v0

    iget-object p1, p0, Lcom/android/quickstep/views/TaskView;->mTaskIdAttributeContainer:[Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;

    const/4 p3, 0x0

    aget-object p1, p1, p3

    invoke-virtual {p1, p3}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->setStagePosition(I)V

    iget-object p1, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSnapshotView2:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {p1, p2}, Lcom/android/quickstep/views/TaskThumbnailView;->bind(Lcom/android/systemui/shared/recents/model/Task;)V

    iput-object p4, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSplitBoundsConfig:Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;

    return-void
.end method

.method public cancelPendingLoadTasks()V
    .registers 3

    invoke-super {p0}, Lcom/android/quickstep/views/TaskView;->cancelPendingLoadTasks()V

    iget-object v0, p0, Lcom/android/quickstep/views/GroupedTaskView;->mThumbnailLoadRequest2:Lcom/android/quickstep/util/CancellableTask;

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/android/quickstep/util/CancellableTask;->cancel()V

    iput-object v1, p0, Lcom/android/quickstep/views/GroupedTaskView;->mThumbnailLoadRequest2:Lcom/android/quickstep/util/CancellableTask;

    :cond_d
    iget-object v0, p0, Lcom/android/quickstep/views/GroupedTaskView;->mIconLoadRequest2:Lcom/android/quickstep/util/CancellableTask;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lcom/android/quickstep/util/CancellableTask;->cancel()V

    iput-object v1, p0, Lcom/android/quickstep/views/GroupedTaskView;->mIconLoadRequest2:Lcom/android/quickstep/util/CancellableTask;

    :cond_16
    return-void
.end method

.method public getChildTaskIndexAtPosition(Landroid/graphics/PointF;)I
    .registers 3

    iget-object v0, p0, Lcom/android/quickstep/views/GroupedTaskView;->mIconView2:Lcom/android/quickstep/views/IconView;

    invoke-direct {p0, v0, p1}, Lcom/android/quickstep/views/GroupedTaskView;->isCoordInView(Landroid/view/View;Landroid/graphics/PointF;)Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSnapshotView2:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-direct {p0, v0, p1}, Lcom/android/quickstep/views/GroupedTaskView;->isCoordInView(Landroid/view/View;Landroid/graphics/PointF;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_16

    :cond_11
    invoke-super {p0, p1}, Lcom/android/quickstep/views/TaskView;->getChildTaskIndexAtPosition(Landroid/graphics/PointF;)I

    move-result p0

    return p0

    :cond_16
    :goto_16
    const/4 p0, 0x1

    return p0
.end method

.method public getSplitRatio()F
    .registers 2

    iget-object p0, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSplitBoundsConfig:Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;

    if-eqz p0, :cond_e

    iget-boolean v0, p0, Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;->appsStackedVertically:Z

    if-eqz v0, :cond_b

    iget p0, p0, Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;->topTaskPercent:F

    goto :goto_d

    :cond_b
    iget p0, p0, Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;->leftTaskPercent:F

    :goto_d
    return p0

    :cond_e
    const/high16 p0, 0x3f000000  # 0.5f

    return p0
.end method

.method public getThumbnails()[Lcom/android/quickstep/views/TaskThumbnailView;
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/quickstep/views/TaskThumbnailView;

    iget-object v1, p0, Lcom/android/quickstep/views/TaskView;->mSnapshotView:Lcom/android/quickstep/views/TaskThumbnailView;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object p0, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSnapshotView2:Lcom/android/quickstep/views/TaskThumbnailView;

    const/4 v1, 0x1

    aput-object p0, v0, v1

    return-object v0
.end method

.method public launchTask(Ljava/util/function/Consumer;Z)V
    .registers 11
    .param p1  # Ljava/util/function/Consumer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->getSplitPlaceholder()Lcom/android/quickstep/util/SplitSelectStateController;

    move-result-object v1

    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v2, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    iget-object v0, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSecondaryTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v3, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {p0}, Lcom/android/quickstep/views/GroupedTaskView;->getSplitRatio()F

    move-result v7

    const/4 v4, 0x0

    move-object v5, p1

    move v6, p2

    invoke-virtual/range {v1 .. v7}, Lcom/android/quickstep/util/SplitSelectStateController;->launchTasks(IIILjava/util/function/Consumer;ZF)V

    return-void
.end method

.method public launchTaskAnimated()Lcom/android/launcher3/util/RunnableList;
    .registers 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSecondaryTask:Lcom/android/systemui/shared/recents/model/Task;

    if-nez v0, :cond_9

    goto :goto_2a

    :cond_9
    new-instance v0, Lcom/android/launcher3/util/RunnableList;

    invoke-direct {v0}, Lcom/android/launcher3/util/RunnableList;-><init>()V

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v1

    const/16 v2, 0x31

    const-string v3, "Enter form GroupedTaskView"

    invoke-static {p0, v2, v3}, Lcom/android/systemui/shared/system/InteractionJankMonitorWrapper;->begin(Landroid/view/View;ILjava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/quickstep/views/RecentsView;->getSplitPlaceholder()Lcom/android/quickstep/util/SplitSelectStateController;

    move-result-object v2

    new-instance v3, Lcom/android/quickstep/views/d;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Lcom/android/quickstep/views/d;-><init>(Lcom/android/launcher3/util/RunnableList;I)V

    invoke-virtual {v2, p0, v3, v4}, Lcom/android/quickstep/util/SplitSelectStateController;->launchTasks(Lcom/android/quickstep/views/GroupedTaskView;Ljava/util/function/Consumer;Z)V

    invoke-virtual {v1, v0}, Lcom/android/quickstep/views/RecentsView;->addSideTaskLaunchCallback(Lcom/android/launcher3/util/RunnableList;)V

    return-object v0

    :cond_2a
    :goto_2a
    const/4 p0, 0x0

    return-object p0
.end method

.method public offerTouchToChildren(Landroid/view/MotionEvent;)Z
    .registers 5

    iget-object v0, p0, Lcom/android/quickstep/views/GroupedTaskView;->mIconView2:Lcom/android/quickstep/views/IconView;

    iget-object v1, p0, Lcom/android/quickstep/views/GroupedTaskView;->mIcon2CenterCoords:[F

    iget-object v2, p0, Lcom/android/quickstep/views/GroupedTaskView;->mIcon2TouchDelegate:Lcom/android/launcher3/util/TransformingTouchDelegate;

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/quickstep/views/TaskView;->computeAndSetIconTouchDelegate(Lcom/android/quickstep/views/IconView;[FLcom/android/launcher3/util/TransformingTouchDelegate;)V

    iget-object v0, p0, Lcom/android/quickstep/views/GroupedTaskView;->mIcon2TouchDelegate:Lcom/android/launcher3/util/TransformingTouchDelegate;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/TransformingTouchDelegate;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 p0, 0x1

    return p0

    :cond_13
    invoke-super {p0, p1}, Lcom/android/quickstep/views/OplusTaskViewImpl;->offerTouchToChildren(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onFinishInflate()V
    .registers 3

    invoke-super {p0}, Lcom/android/quickstep/views/OplusTaskViewImpl;->onFinishInflate()V

    const v0, 0x7f0a00e0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/views/TaskThumbnailView;

    iput-object v0, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSnapshotView2:Lcom/android/quickstep/views/TaskThumbnailView;

    const v0, 0x7f0a00d5

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/views/IconView;

    iput-object v0, p0, Lcom/android/quickstep/views/GroupedTaskView;->mIconView2:Lcom/android/quickstep/views/IconView;

    new-instance v0, Lcom/android/launcher3/util/TransformingTouchDelegate;

    iget-object v1, p0, Lcom/android/quickstep/views/GroupedTaskView;->mIconView2:Lcom/android/quickstep/views/IconView;

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/TransformingTouchDelegate;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/quickstep/views/GroupedTaskView;->mIcon2TouchDelegate:Lcom/android/launcher3/util/TransformingTouchDelegate;

    return-void
.end method

.method public onMeasure(II)V
    .registers 11

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    invoke-virtual {p0, v3, v4}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    iget-object p1, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSplitBoundsConfig:Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;

    if-eqz p1, :cond_3c

    iget-object p1, p0, Lcom/android/quickstep/views/TaskView;->mSnapshotView:Lcom/android/quickstep/views/TaskThumbnailView;

    if-eqz p1, :cond_3c

    iget-object p1, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSnapshotView2:Lcom/android/quickstep/views/TaskThumbnailView;

    if-nez p1, :cond_1b

    goto :goto_3c

    :cond_1b
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getPagedOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/views/TaskView;->mSnapshotView:Lcom/android/quickstep/views/TaskThumbnailView;

    iget-object v2, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSnapshotView2:Lcom/android/quickstep/views/TaskThumbnailView;

    iget-object v5, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSplitBoundsConfig:Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;

    iget-object p1, p0, Lcom/android/quickstep/views/TaskView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v6

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutDirection()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_34

    move v7, p2

    goto :goto_36

    :cond_34
    const/4 p1, 0x0

    move v7, p1

    :goto_36
    invoke-interface/range {v0 .. v7}, Lcom/android/launcher3/touch/PagedOrientationHandler;->measureGroupedTaskViewThumbnailBounds(Landroid/view/View;Landroid/view/View;IILcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;Lcom/android/launcher3/DeviceProfile;Z)V

    invoke-direct {p0}, Lcom/android/quickstep/views/GroupedTaskView;->updateIconPlacement()V

    :cond_3c
    :goto_3c
    return-void
.end method

.method public onRecycle()V
    .registers 4

    invoke-super {p0}, Lcom/android/quickstep/views/TaskView;->onRecycle()V

    iget-object v0, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSnapshotView2:Lcom/android/quickstep/views/TaskThumbnailView;

    iget-object v1, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSecondaryTask:Lcom/android/systemui/shared/recents/model/Task;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/quickstep/views/TaskThumbnailView;->setThumbnail(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/ThumbnailData;)V

    iput-object v2, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSplitBoundsConfig:Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;

    return-void
.end method

.method public onTaskListVisibilityChanged(ZI)V
    .registers 8

    invoke-super {p0, p1, p2}, Lcom/android/quickstep/views/OplusTaskViewImpl;->onTaskListVisibilityChanged(ZI)V

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eqz p1, :cond_43

    sget-object p1, Lcom/android/quickstep/RecentsModel;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/quickstep/RecentsModel;

    invoke-virtual {p1}, Lcom/android/quickstep/RecentsModel;->getThumbnailCache()Lcom/android/quickstep/TaskThumbnailCache;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/quickstep/RecentsModel;->getIconCache()Lcom/android/quickstep/TaskIconCache;

    move-result-object p1

    invoke-virtual {p0, p2, v0}, Lcom/android/quickstep/views/TaskView;->needsUpdate(II)Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSecondaryTask:Lcom/android/systemui/shared/recents/model/Task;

    new-instance v3, Lcom/android/quickstep/views/e;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/quickstep/views/e;-><init>(Lcom/android/quickstep/views/GroupedTaskView;I)V

    invoke-virtual {v2, v0, v3}, Lcom/android/quickstep/TaskThumbnailCache;->updateThumbnailInBackground(Lcom/android/systemui/shared/recents/model/Task;Ljava/util/function/Consumer;)Lcom/android/quickstep/util/CancellableTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/views/GroupedTaskView;->mThumbnailLoadRequest2:Lcom/android/quickstep/util/CancellableTask;

    :cond_2f
    invoke-virtual {p0, p2, v1}, Lcom/android/quickstep/views/TaskView;->needsUpdate(II)Z

    move-result p2

    if-eqz p2, :cond_5e

    iget-object p2, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSecondaryTask:Lcom/android/systemui/shared/recents/model/Task;

    new-instance v0, Lcom/android/quickstep/views/e;

    invoke-direct {v0, p0, v1}, Lcom/android/quickstep/views/e;-><init>(Lcom/android/quickstep/views/GroupedTaskView;I)V

    invoke-virtual {p1, p2, v0}, Lcom/android/quickstep/TaskIconCache;->updateIconInBackground(Lcom/android/systemui/shared/recents/model/Task;Ljava/util/function/Consumer;)Lcom/android/quickstep/util/CancellableTask;

    move-result-object p1

    iput-object p1, p0, Lcom/android/quickstep/views/GroupedTaskView;->mIconLoadRequest2:Lcom/android/quickstep/util/CancellableTask;

    goto :goto_5e

    :cond_43
    invoke-virtual {p0, p2, v0}, Lcom/android/quickstep/views/TaskView;->needsUpdate(II)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_53

    iget-object p1, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSnapshotView2:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {p1, v0, v0}, Lcom/android/quickstep/views/TaskThumbnailView;->setThumbnail(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/ThumbnailData;)V

    iget-object p1, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSecondaryTask:Lcom/android/systemui/shared/recents/model/Task;

    iput-object v0, p1, Lcom/android/systemui/shared/recents/model/Task;->thumbnail:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    :cond_53
    invoke-virtual {p0, p2, v1}, Lcom/android/quickstep/views/TaskView;->needsUpdate(II)Z

    move-result p1

    if-eqz p1, :cond_5e

    iget-object p1, p0, Lcom/android/quickstep/views/GroupedTaskView;->mIconView2:Lcom/android/quickstep/views/IconView;

    invoke-virtual {p0, p1, v0}, Lcom/android/quickstep/views/OplusTaskViewImpl;->setIcon(Lcom/android/quickstep/views/IconView;Landroid/graphics/drawable/Drawable;)V

    :cond_5e
    :goto_5e
    return-void
.end method

.method public refreshThumbnails(Ljava/util/HashMap;)V
    .registers 3
    .param p1  # Ljava/util/HashMap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/systemui/shared/recents/model/ThumbnailData;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/android/quickstep/views/TaskView;->refreshThumbnails(Ljava/util/HashMap;)V

    iget-object v0, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSecondaryTask:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz v0, :cond_21

    if-eqz p1, :cond_21

    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v0, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/shared/recents/model/ThumbnailData;

    if-eqz p1, :cond_21

    iget-object v0, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSnapshotView2:Lcom/android/quickstep/views/TaskThumbnailView;

    iget-object p0, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSecondaryTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v0, p0, p1}, Lcom/android/quickstep/views/TaskThumbnailView;->setThumbnail(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/ThumbnailData;)V

    return-void

    :cond_21
    iget-object p0, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSnapshotView2:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskThumbnailView;->refresh()V

    return-void
.end method

.method public setColorTint(FI)V
    .registers 4

    invoke-super {p0, p1, p2}, Lcom/android/quickstep/views/TaskView;->setColorTint(FI)V

    iget-object v0, p0, Lcom/android/quickstep/views/GroupedTaskView;->mIconView2:Lcom/android/quickstep/views/IconView;

    invoke-virtual {v0, p2, p1}, Lcom/android/quickstep/views/IconView;->setIconColorTint(IF)V

    iget-object p0, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSnapshotView2:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/TaskThumbnailView;->setDimAlpha(F)V

    return-void
.end method

.method public setIconAndDimTransitionProgress(FZ)V
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/android/quickstep/views/TaskView;->setIconAndDimTransitionProgress(FZ)V

    iget-object p1, p0, Lcom/android/quickstep/views/TaskView;->mIconView:Lcom/android/quickstep/views/IconView;

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p1

    iget-object p0, p0, Lcom/android/quickstep/views/GroupedTaskView;->mIconView2:Lcom/android/quickstep/views/IconView;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/IconView;->setAlpha(F)V

    return-void
.end method

.method public setOrientationState(Lcom/android/quickstep/util/RecentsOrientedState;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/android/quickstep/views/OplusTaskViewImpl;->setOrientationState(Lcom/android/quickstep/util/RecentsOrientedState;)V

    iget-object p1, p0, Lcom/android/quickstep/views/TaskView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p1

    iget-boolean v0, p1, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->isFocusedTask()Z

    move-result v0

    if-nez v0, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    if-eqz v0, :cond_1b

    iget p1, p1, Lcom/android/launcher3/DeviceProfile;->overviewTaskIconDrawableSizeGridPx:I

    goto :goto_1d

    :cond_1b
    iget p1, p1, Lcom/android/launcher3/DeviceProfile;->overviewTaskIconDrawableSizePx:I

    :goto_1d
    iget-object v0, p0, Lcom/android/quickstep/views/GroupedTaskView;->mIconView2:Lcom/android/quickstep/views/IconView;

    invoke-virtual {v0, p1, p1}, Lcom/android/quickstep/views/IconView;->setDrawableSize(II)V

    iget-object p1, p0, Lcom/android/quickstep/views/GroupedTaskView;->mIconView2:Lcom/android/quickstep/views/IconView;

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getPagedOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getDegreesRotated()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setRotation(F)V

    invoke-direct {p0}, Lcom/android/quickstep/views/GroupedTaskView;->updateIconPlacement()V

    invoke-direct {p0}, Lcom/android/quickstep/views/GroupedTaskView;->updateSecondaryDwbPlacement()V

    return-void
.end method

.method public setOverlayEnabled(Z)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/quickstep/views/TaskView;->setOverlayEnabled(Z)V

    iget-object p0, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSnapshotView2:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/TaskThumbnailView;->setOverlayEnabled(Z)V

    return-void
.end method

.method public updateSnapshotRadius()V
    .registers 2

    invoke-super {p0}, Lcom/android/quickstep/views/OplusTaskViewImpl;->updateSnapshotRadius()V

    iget-object v0, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSnapshotView2:Lcom/android/quickstep/views/TaskThumbnailView;

    iget-object p0, p0, Lcom/android/quickstep/views/TaskView;->mCurrentFullscreenParams:Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;

    invoke-virtual {v0, p0}, Lcom/android/quickstep/views/TaskThumbnailView;->setFullscreenParams(Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;)V

    return-void
.end method

.method public updateSplitBoundsConfig(Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;)V
    .registers 2

    iput-object p1, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSplitBoundsConfig:Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method
