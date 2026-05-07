.class Lcom/android/quickstep/views/RecentsView$15;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/views/RecentsView;->createTaskDismissAnimation(Lcom/android/quickstep/views/TaskView;ZZJZ)Lcom/android/launcher3/anim/PendingAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/quickstep/views/RecentsView;

.field public final synthetic val$currentPageSnapsToEndOfGrid:Z

.field public final synthetic val$dismissedIndex:I

.field public final synthetic val$dismissedTaskView:Lcom/android/quickstep/views/TaskView;

.field public final synthetic val$dismissedTaskViewId:I

.field public final synthetic val$finalCloseGapBetweenClearAll:Z

.field public final synthetic val$finalIsFocusedTaskDismissed:Z

.field public final synthetic val$finalNextFocusedTaskView:Lcom/android/quickstep/views/TaskView;

.field public final synthetic val$finalSnapToLastTask:Z

.field public final synthetic val$isClearAllHidden:Z

.field public final synthetic val$isSplitPlaceholderFirstInGrid:Z

.field public final synthetic val$isSplitPlaceholderLastInGrid:Z

.field public final synthetic val$shouldRemoveTask:Z

.field public final synthetic val$showAsGrid:Z

.field public final synthetic val$taskCount:I


# direct methods
.method public constructor <init>(Lcom/android/quickstep/views/RecentsView;Lcom/android/quickstep/views/TaskView;ZIZZZIZLcom/android/quickstep/views/TaskView;ZZIZZ)V
    .registers 16

    iput-object p1, p0, Lcom/android/quickstep/views/RecentsView$15;->this$0:Lcom/android/quickstep/views/RecentsView;

    iput-object p2, p0, Lcom/android/quickstep/views/RecentsView$15;->val$dismissedTaskView:Lcom/android/quickstep/views/TaskView;

    iput-boolean p3, p0, Lcom/android/quickstep/views/RecentsView$15;->val$shouldRemoveTask:Z

    iput p4, p0, Lcom/android/quickstep/views/RecentsView$15;->val$dismissedTaskViewId:I

    iput-boolean p5, p0, Lcom/android/quickstep/views/RecentsView$15;->val$showAsGrid:Z

    iput-boolean p6, p0, Lcom/android/quickstep/views/RecentsView$15;->val$finalCloseGapBetweenClearAll:Z

    iput-boolean p7, p0, Lcom/android/quickstep/views/RecentsView$15;->val$finalSnapToLastTask:Z

    iput p8, p0, Lcom/android/quickstep/views/RecentsView$15;->val$taskCount:I

    iput-boolean p9, p0, Lcom/android/quickstep/views/RecentsView$15;->val$isClearAllHidden:Z

    iput-object p10, p0, Lcom/android/quickstep/views/RecentsView$15;->val$finalNextFocusedTaskView:Lcom/android/quickstep/views/TaskView;

    iput-boolean p11, p0, Lcom/android/quickstep/views/RecentsView$15;->val$isSplitPlaceholderFirstInGrid:Z

    iput-boolean p12, p0, Lcom/android/quickstep/views/RecentsView$15;->val$isSplitPlaceholderLastInGrid:Z

    iput p13, p0, Lcom/android/quickstep/views/RecentsView$15;->val$dismissedIndex:I

    iput-boolean p14, p0, Lcom/android/quickstep/views/RecentsView$15;->val$finalIsFocusedTaskDismissed:Z

    iput-boolean p15, p0, Lcom/android/quickstep/views/RecentsView$15;->val$currentPageSnapsToEndOfGrid:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/quickstep/views/RecentsView$15;Ljava/lang/Boolean;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/quickstep/views/RecentsView$15;->lambda$accept$0(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/quickstep/views/RecentsView$15;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/quickstep/views/RecentsView$15;->lambda$onEnd$1(I)V

    return-void
.end method

.method private synthetic lambda$accept$0(Ljava/lang/Boolean;)V
    .registers 2

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/quickstep/views/RecentsView$15;->onEnd(Z)V

    return-void
.end method

.method private synthetic lambda$onEnd$1(I)V
    .registers 2

    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView$15;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/RecentsView;->removeTaskInternal(I)V

    return-void
.end method

.method private onEnd(Z)V
    .registers 12

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView$15;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->resetTaskVisuals()V

    if-eqz p1, :cond_280

    iget-boolean p1, p0, Lcom/android/quickstep/views/RecentsView$15;->val$shouldRemoveTask:Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_54

    iget-object p1, p0, Lcom/android/quickstep/views/RecentsView$15;->val$dismissedTaskView:Lcom/android/quickstep/views/TaskView;

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p1

    if-eqz p1, :cond_54

    sget-object p1, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_QUICKSTEP_LIVE_TILE:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {p1}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result p1

    if-eqz p1, :cond_32

    iget-object p1, p0, Lcom/android/quickstep/views/RecentsView$15;->val$dismissedTaskView:Lcom/android/quickstep/views/TaskView;

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->isRunningTask()Z

    move-result p1

    if-eqz p1, :cond_32

    iget-object p1, p0, Lcom/android/quickstep/views/RecentsView$15;->this$0:Lcom/android/quickstep/views/RecentsView;

    iget v2, p0, Lcom/android/quickstep/views/RecentsView$15;->val$dismissedTaskViewId:I

    new-instance v3, Lcom/android/quickstep/views/x;

    invoke-direct {v3, p0, v2}, Lcom/android/quickstep/views/x;-><init>(Lcom/android/quickstep/views/RecentsView$15;I)V

    invoke-virtual {p1, v0, v1, v3}, Lcom/android/quickstep/views/RecentsView;->finishRecentsAnimation(ZZLjava/lang/Runnable;)V

    goto :goto_39

    :cond_32
    iget-object p1, p0, Lcom/android/quickstep/views/RecentsView$15;->this$0:Lcom/android/quickstep/views/RecentsView;

    iget v2, p0, Lcom/android/quickstep/views/RecentsView$15;->val$dismissedTaskViewId:I

    invoke-virtual {p1, v2}, Lcom/android/quickstep/views/RecentsView;->removeTaskInternal(I)V

    :goto_39
    iget-object p1, p0, Lcom/android/quickstep/views/RecentsView$15;->this$0:Lcom/android/quickstep/views/RecentsView;

    iget-object p1, p1, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p1

    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView$15;->val$dismissedTaskView:Lcom/android/quickstep/views/TaskView;

    invoke-virtual {v2}, Lcom/android/quickstep/views/TaskView;->getItemInfo()Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p1

    sget-object v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_TASK_DISMISS_SWIPE_UP:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-interface {p1, v2}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    :cond_54
    iget-object p1, p0, Lcom/android/quickstep/views/RecentsView$15;->this$0:Lcom/android/quickstep/views/RecentsView;

    iget v2, p1, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    iput v1, p1, Lcom/android/launcher3/PagedView;->mCurrentPageScrollDiff:I

    iget-boolean v3, p0, Lcom/android/quickstep/views/RecentsView$15;->val$showAsGrid:Z

    const/4 v4, -0x1

    if-eqz v3, :cond_145

    iget-boolean v3, p0, Lcom/android/quickstep/views/RecentsView$15;->val$finalCloseGapBetweenClearAll:Z

    if-eqz v3, :cond_7f

    iget-boolean v3, p0, Lcom/android/quickstep/views/RecentsView$15;->val$finalSnapToLastTask:Z

    if-eqz v3, :cond_6b

    move v2, v4

    move v5, v2

    goto/16 :goto_151

    :cond_6b
    iget v3, p0, Lcom/android/quickstep/views/RecentsView$15;->val$taskCount:I

    const/4 v5, 0x2

    if-le v3, v5, :cond_78

    iget-object v2, p1, Lcom/android/quickstep/views/RecentsView;->mClearAllButton:Lcom/oplus/quickstep/views/OplusClearAllPanelView;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    goto/16 :goto_150

    :cond_78
    iget-boolean p1, p0, Lcom/android/quickstep/views/RecentsView$15;->val$isClearAllHidden:Z

    if-eqz p1, :cond_150

    move v2, v1

    goto/16 :goto_150

    :cond_7f
    invoke-virtual {p1, v2}, Lcom/android/quickstep/views/RecentsView;->getTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object p1

    if-eqz p1, :cond_100

    iget-boolean v3, p0, Lcom/android/quickstep/views/RecentsView$15;->val$finalSnapToLastTask:Z

    if-nez v3, :cond_100

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->getTaskViewId()I

    move-result v3

    iget-object v5, p0, Lcom/android/quickstep/views/RecentsView$15;->this$0:Lcom/android/quickstep/views/RecentsView;

    iget v5, v5, Lcom/android/quickstep/views/RecentsView;->mFocusedTaskViewId:I

    if-ne v3, v5, :cond_a6

    iget-object p1, p0, Lcom/android/quickstep/views/RecentsView$15;->val$finalNextFocusedTaskView:Lcom/android/quickstep/views/TaskView;

    if-eqz p1, :cond_9e

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->getTaskViewId()I

    move-result v5

    :goto_9b
    move p1, v0

    goto/16 :goto_102

    :cond_9e
    iget p1, p0, Lcom/android/quickstep/views/RecentsView$15;->val$dismissedTaskViewId:I

    if-eq p1, v5, :cond_a3

    goto :goto_9b

    :cond_a3
    move p1, v1

    move v2, p1

    goto :goto_101

    :cond_a6
    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->getTaskViewId()I

    move-result p1

    iget-object v3, p0, Lcom/android/quickstep/views/RecentsView$15;->this$0:Lcom/android/quickstep/views/RecentsView;

    iget-object v3, v3, Lcom/android/quickstep/views/RecentsView;->mTopRowIdSet:Lcom/android/launcher3/util/IntSet;

    invoke-virtual {v3, p1}, Lcom/android/launcher3/util/IntSet;->contains(I)Z

    move-result v3

    if-eqz v3, :cond_bb

    iget-object v5, p0, Lcom/android/quickstep/views/RecentsView$15;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v5}, Lcom/android/quickstep/views/RecentsView;->getTopRowIdArray()Lcom/android/launcher3/util/IntArray;

    move-result-object v5

    goto :goto_c1

    :cond_bb
    iget-object v5, p0, Lcom/android/quickstep/views/RecentsView$15;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v5}, Lcom/android/quickstep/views/RecentsView;->getBottomRowIdArray()Lcom/android/launcher3/util/IntArray;

    move-result-object v5

    :goto_c1
    invoke-virtual {v5, p1}, Lcom/android/launcher3/util/IntArray;->indexOf(I)I

    move-result p1

    iget v6, p0, Lcom/android/quickstep/views/RecentsView$15;->val$dismissedTaskViewId:I

    invoke-virtual {v5, v6}, Lcom/android/launcher3/util/IntArray;->removeValue(I)V

    iget-object v6, p0, Lcom/android/quickstep/views/RecentsView$15;->val$finalNextFocusedTaskView:Lcom/android/quickstep/views/TaskView;

    if-eqz v6, :cond_d5

    invoke-virtual {v6}, Lcom/android/quickstep/views/TaskView;->getTaskViewId()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/launcher3/util/IntArray;->removeValue(I)V

    :cond_d5
    invoke-virtual {v5}, Lcom/android/launcher3/util/IntArray;->size()I

    move-result v6

    if-ge p1, v6, :cond_e0

    invoke-virtual {v5, p1}, Lcom/android/launcher3/util/IntArray;->get(I)I

    move-result v5

    goto :goto_9b

    :cond_e0
    invoke-virtual {v5}, Lcom/android/launcher3/util/IntArray;->size()I

    move-result v5

    if-ne p1, v5, :cond_100

    if-eqz v3, :cond_ef

    iget-object v3, p0, Lcom/android/quickstep/views/RecentsView$15;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v3}, Lcom/android/quickstep/views/RecentsView;->getBottomRowIdArray()Lcom/android/launcher3/util/IntArray;

    move-result-object v3

    goto :goto_f5

    :cond_ef
    iget-object v3, p0, Lcom/android/quickstep/views/RecentsView$15;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v3}, Lcom/android/quickstep/views/RecentsView;->getTopRowIdArray()Lcom/android/launcher3/util/IntArray;

    move-result-object v3

    :goto_f5
    invoke-virtual {v3}, Lcom/android/launcher3/util/IntArray;->size()I

    move-result v5

    if-ge p1, v5, :cond_100

    invoke-virtual {v3, p1}, Lcom/android/launcher3/util/IntArray;->get(I)I

    move-result v5

    goto :goto_9b

    :cond_100
    move p1, v0

    :goto_101
    move v5, v4

    :goto_102
    if-eqz p1, :cond_151

    iget-object p1, p0, Lcom/android/quickstep/views/RecentsView$15;->this$0:Lcom/android/quickstep/views/RecentsView;

    iget-object v3, p1, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v3, p1}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScroll(Landroid/view/View;)I

    move-result p1

    iget-object v3, p0, Lcom/android/quickstep/views/RecentsView$15;->this$0:Lcom/android/quickstep/views/RecentsView;

    iget v6, v3, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {v3, v6}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result v3

    iget-object v6, p0, Lcom/android/quickstep/views/RecentsView$15;->this$0:Lcom/android/quickstep/views/RecentsView;

    sub-int/2addr p1, v3

    iput p1, v6, Lcom/android/launcher3/PagedView;->mCurrentPageScrollDiff:I

    iget-boolean v3, p0, Lcom/android/quickstep/views/RecentsView$15;->val$isSplitPlaceholderFirstInGrid:Z

    if-eqz v3, :cond_12f

    iget-boolean v3, p0, Lcom/android/quickstep/views/RecentsView$15;->val$finalSnapToLastTask:Z

    if-nez v3, :cond_12f

    iget-boolean v3, v6, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v3, :cond_129

    iget v3, v6, Lcom/android/quickstep/views/RecentsView;->mSplitPlaceholderSize:I

    neg-int v3, v3

    goto :goto_12b

    :cond_129
    iget v3, v6, Lcom/android/quickstep/views/RecentsView;->mSplitPlaceholderSize:I

    :goto_12b
    add-int/2addr p1, v3

    iput p1, v6, Lcom/android/launcher3/PagedView;->mCurrentPageScrollDiff:I

    goto :goto_151

    :cond_12f
    iget-boolean v3, p0, Lcom/android/quickstep/views/RecentsView$15;->val$isSplitPlaceholderLastInGrid:Z

    if-eqz v3, :cond_151

    iget-boolean v3, p0, Lcom/android/quickstep/views/RecentsView$15;->val$finalSnapToLastTask:Z

    if-eqz v3, :cond_151

    iget-boolean v3, v6, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v3, :cond_13e

    iget v3, v6, Lcom/android/quickstep/views/RecentsView;->mSplitPlaceholderSize:I

    goto :goto_141

    :cond_13e
    iget v3, v6, Lcom/android/quickstep/views/RecentsView;->mSplitPlaceholderSize:I

    neg-int v3, v3

    :goto_141
    add-int/2addr p1, v3

    iput p1, v6, Lcom/android/launcher3/PagedView;->mCurrentPageScrollDiff:I

    goto :goto_151

    :cond_145
    iget p1, p0, Lcom/android/quickstep/views/RecentsView$15;->val$dismissedIndex:I

    if-lt p1, v2, :cond_14e

    iget p1, p0, Lcom/android/quickstep/views/RecentsView$15;->val$taskCount:I

    sub-int/2addr p1, v0

    if-ne v2, p1, :cond_150

    :cond_14e
    add-int/lit8 v2, v2, -0x1

    :cond_150
    :goto_150
    move v5, v4

    :cond_151
    :goto_151
    iget-object p1, p0, Lcom/android/quickstep/views/RecentsView$15;->val$dismissedTaskView:Lcom/android/quickstep/views/TaskView;

    iget-object v3, p0, Lcom/android/quickstep/views/RecentsView$15;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v3}, Lcom/android/quickstep/views/RecentsView;->getHomeTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v3

    if-ne p1, v3, :cond_15d

    move p1, v0

    goto :goto_15e

    :cond_15d
    move p1, v1

    :goto_15e
    iget-object v3, p0, Lcom/android/quickstep/views/RecentsView$15;->this$0:Lcom/android/quickstep/views/RecentsView;

    iget-object v6, p0, Lcom/android/quickstep/views/RecentsView$15;->val$dismissedTaskView:Lcom/android/quickstep/views/TaskView;

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    iget-object v3, p0, Lcom/android/quickstep/views/RecentsView$15;->this$0:Lcom/android/quickstep/views/RecentsView;

    iget-object v3, v3, Lcom/android/quickstep/views/RecentsView;->mTopRowIdSet:Lcom/android/launcher3/util/IntSet;

    iget v6, p0, Lcom/android/quickstep/views/RecentsView$15;->val$dismissedTaskViewId:I

    invoke-virtual {v3, v6}, Lcom/android/launcher3/util/IntSet;->remove(I)V

    iget v3, p0, Lcom/android/quickstep/views/RecentsView$15;->val$taskCount:I

    if-ne v3, v0, :cond_189

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView$15;->this$0:Lcom/android/quickstep/views/RecentsView;

    iget-object v1, v0, Lcom/android/quickstep/views/RecentsView;->mClearAllButton:Lcom/oplus/quickstep/views/OplusClearAllPanelView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    if-eqz p1, :cond_182

    iget-object p1, p0, Lcom/android/quickstep/views/RecentsView$15;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {p1}, Lcom/android/quickstep/views/RecentsView;->updateEmptyMessage()V

    goto/16 :goto_280

    :cond_182
    iget-object p1, p0, Lcom/android/quickstep/views/RecentsView$15;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {p1}, Lcom/android/quickstep/views/RecentsView;->startHome()V

    goto/16 :goto_280

    :cond_189
    iget-boolean p1, p0, Lcom/android/quickstep/views/RecentsView$15;->val$finalIsFocusedTaskDismissed:Z

    if-eqz p1, :cond_1a7

    iget-object p1, p0, Lcom/android/quickstep/views/RecentsView$15;->val$finalNextFocusedTaskView:Lcom/android/quickstep/views/TaskView;

    if-eqz p1, :cond_1a7

    iget-object v3, p0, Lcom/android/quickstep/views/RecentsView$15;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->getTaskViewId()I

    move-result p1

    iput p1, v3, Lcom/android/quickstep/views/RecentsView;->mFocusedTaskViewId:I

    iget-object p1, p0, Lcom/android/quickstep/views/RecentsView$15;->this$0:Lcom/android/quickstep/views/RecentsView;

    iget-object v3, p1, Lcom/android/quickstep/views/RecentsView;->mTopRowIdSet:Lcom/android/launcher3/util/IntSet;

    iget p1, p1, Lcom/android/quickstep/views/RecentsView;->mFocusedTaskViewId:I

    invoke-virtual {v3, p1}, Lcom/android/launcher3/util/IntSet;->remove(I)V

    iget-object p1, p0, Lcom/android/quickstep/views/RecentsView$15;->val$finalNextFocusedTaskView:Lcom/android/quickstep/views/TaskView;

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->animateIconScaleAndDimIntoView()V

    :cond_1a7
    iget-object p1, p0, Lcom/android/quickstep/views/RecentsView$15;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {p1, v0}, Lcom/android/quickstep/views/RecentsView;->updateTaskSize(Z)V

    iget-object p1, p0, Lcom/android/quickstep/views/RecentsView$15;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {p1}, Lcom/android/quickstep/views/RecentsView;->updateChildTaskOrientations()V

    iget-object p1, p0, Lcom/android/quickstep/views/RecentsView$15;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {p1}, Lcom/android/quickstep/views/RecentsView;->updateScrollSynchronously()V

    iget-boolean p1, p0, Lcom/android/quickstep/views/RecentsView$15;->val$showAsGrid:Z

    if-eqz p1, :cond_251

    iget-object p1, p0, Lcom/android/quickstep/views/RecentsView$15;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {p1}, Lcom/android/quickstep/views/RecentsView;->getHighestVisibleTaskIndex()I

    move-result p1

    const v3, 0x7fffffff

    if-ge p1, v3, :cond_21b

    iget-object v3, p0, Lcom/android/quickstep/views/RecentsView$15;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v3, p1}, Lcom/android/quickstep/views/RecentsView;->requireTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v3

    iget-object v6, p0, Lcom/android/quickstep/views/RecentsView$15;->this$0:Lcom/android/quickstep/views/RecentsView;

    iget-object v7, v6, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v7, v6}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScroll(Landroid/view/View;)I

    move-result v6

    iget-object v7, p0, Lcom/android/quickstep/views/RecentsView$15;->this$0:Lcom/android/quickstep/views/RecentsView;

    iget-object v7, v7, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v7, v3}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getChildStart(Landroid/view/View;)I

    move-result v7

    invoke-virtual {v3, v1, v0}, Lcom/android/quickstep/views/TaskView;->getOffsetAdjustment(ZZ)F

    move-result v8

    float-to-int v8, v8

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/android/quickstep/views/RecentsView$15;->this$0:Lcom/android/quickstep/views/RecentsView;

    iget-boolean v9, v8, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v9, :cond_1f0

    iget v3, v8, Lcom/android/launcher3/PagedView;->mPageSpacing:I

    add-int/2addr v6, v3

    if-gt v7, v6, :cond_1ee

    :goto_1ec
    move v3, v0

    goto :goto_20f

    :cond_1ee
    move v3, v1

    goto :goto_20f

    :cond_1f0
    iget-object v9, v8, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v9, v8}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getMeasuredSize(Landroid/view/View;)I

    move-result v8

    add-int/2addr v8, v6

    iget-object v6, p0, Lcom/android/quickstep/views/RecentsView$15;->this$0:Lcom/android/quickstep/views/RecentsView;

    iget-object v6, v6, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v6, v3}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getMeasuredSize(Landroid/view/View;)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v3, v1}, Lcom/android/quickstep/views/TaskView;->getSizeAdjustment(Z)F

    move-result v3

    mul-float/2addr v3, v6

    float-to-int v3, v3

    add-int/2addr v7, v3

    iget-object v3, p0, Lcom/android/quickstep/views/RecentsView$15;->this$0:Lcom/android/quickstep/views/RecentsView;

    iget v3, v3, Lcom/android/launcher3/PagedView;->mPageSpacing:I

    sub-int/2addr v8, v3

    if-lt v7, v8, :cond_1ee

    goto :goto_1ec

    :goto_20f
    if-eqz v3, :cond_21b

    iget-object v3, p0, Lcom/android/quickstep/views/RecentsView$15;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v3, v0, p1}, Lcom/android/quickstep/views/RecentsView;->updateGridProperties(ZI)V

    iget-object p1, p0, Lcom/android/quickstep/views/RecentsView$15;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {p1}, Lcom/android/quickstep/views/RecentsView;->updateScrollSynchronously()V

    :cond_21b
    iget-object p1, p0, Lcom/android/quickstep/views/RecentsView$15;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {p1}, Lcom/android/quickstep/views/RecentsView;->getTopRowIdArray()Lcom/android/launcher3/util/IntArray;

    move-result-object p1

    iget-object v3, p0, Lcom/android/quickstep/views/RecentsView$15;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v3}, Lcom/android/quickstep/views/RecentsView;->getBottomRowIdArray()Lcom/android/launcher3/util/IntArray;

    move-result-object v3

    iget-boolean v6, p0, Lcom/android/quickstep/views/RecentsView$15;->val$finalSnapToLastTask:Z

    if-eqz v6, :cond_236

    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView$15;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v2, p1, v3}, Lcom/android/quickstep/views/RecentsView;->getLastGridTaskView(Lcom/android/launcher3/util/IntArray;Lcom/android/launcher3/util/IntArray;)Lcom/android/quickstep/views/TaskView;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    goto :goto_251

    :cond_236
    if-eq v5, v4, :cond_251

    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView$15;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v2, v5}, Lcom/android/quickstep/views/RecentsView;->getTaskViewFromTaskViewId(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    iget-boolean v4, p0, Lcom/android/quickstep/views/RecentsView$15;->val$currentPageSnapsToEndOfGrid:Z

    if-nez v4, :cond_251

    iget-object v4, p0, Lcom/android/quickstep/views/RecentsView$15;->this$0:Lcom/android/quickstep/views/RecentsView;

    iget v5, v4, Lcom/android/launcher3/PagedView;->mCurrentPageScrollDiff:I

    invoke-virtual {v4, v2, p1, v3}, Lcom/android/quickstep/views/RecentsView;->getOffsetFromScrollPosition(ILcom/android/launcher3/util/IntArray;Lcom/android/launcher3/util/IntArray;)I

    move-result p1

    add-int/2addr p1, v5

    iput p1, v4, Lcom/android/launcher3/PagedView;->mCurrentPageScrollDiff:I

    :cond_251
    :goto_251
    iget-object p1, p0, Lcom/android/quickstep/views/RecentsView$15;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {p1}, Lcom/android/launcher3/PagedView;->pageBeginTransition()V

    iget-object p1, p0, Lcom/android/quickstep/views/RecentsView$15;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {p1, v2}, Lcom/android/launcher3/PagedView;->setCurrentPage(I)V

    iget-object p1, p0, Lcom/android/quickstep/views/RecentsView$15;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {p1}, Lcom/android/quickstep/views/RecentsView;->dispatchScrollChanged()V

    iget-object p1, p0, Lcom/android/quickstep/views/RecentsView$15;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {p1}, Lcom/android/quickstep/views/RecentsView;->updateActionsViewFocusedScroll()V

    iget-object p1, p0, Lcom/android/quickstep/views/RecentsView$15;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {p1}, Lcom/android/quickstep/views/RecentsView;->isClearAllHidden()Z

    move-result p1

    if-eqz p1, :cond_280

    iget-object p1, p0, Lcom/android/quickstep/views/RecentsView$15;->this$0:Lcom/android/quickstep/views/RecentsView;

    iget-object p1, p1, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p1

    iget-boolean p1, p1, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-nez p1, :cond_280

    iget-object p1, p0, Lcom/android/quickstep/views/RecentsView$15;->this$0:Lcom/android/quickstep/views/RecentsView;

    iget-object p1, p1, Lcom/android/quickstep/views/RecentsView;->mActionsView:Lcom/android/quickstep/views/OverviewActionsView;

    invoke-virtual {p1, v0, v1}, Lcom/android/quickstep/views/OverviewActionsView;->updateDisabledFlags(IZ)V

    :cond_280
    :goto_280
    iget-object p1, p0, Lcom/android/quickstep/views/RecentsView$15;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {p1}, Lcom/android/quickstep/views/RecentsView;->updateCurrentTaskActionsVisibility()V

    iget-object p1, p0, Lcom/android/quickstep/views/RecentsView$15;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {p1}, Lcom/android/quickstep/views/RecentsView;->onDismissAnimationEnds()V

    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView$15;->this$0:Lcom/android/quickstep/views/RecentsView;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/quickstep/views/RecentsView;->mPendingAnimation:Lcom/android/launcher3/anim/PendingAnimation;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Boolean;)V
    .registers 6

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_QUICKSTEP_LIVE_TILE:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView$15;->this$0:Lcom/android/quickstep/views/RecentsView;

    iget-boolean v0, v0, Lcom/android/quickstep/views/RecentsView;->mEnableDrawingLiveTile:Z

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView$15;->val$dismissedTaskView:Lcom/android/quickstep/views/TaskView;

    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView;->isRunningTask()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView$15;->this$0:Lcom/android/quickstep/views/RecentsView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v3, Lcom/android/quickstep/views/y;

    invoke-direct {v3, p0, p1}, Lcom/android/quickstep/views/y;-><init>(Lcom/android/quickstep/views/RecentsView$15;Ljava/lang/Boolean;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/quickstep/views/RecentsView;->finishRecentsAnimation(ZZLjava/lang/Runnable;)V

    goto :goto_30

    :cond_29
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/quickstep/views/RecentsView$15;->onEnd(Z)V

    :goto_30
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/RecentsView$15;->accept(Ljava/lang/Boolean;)V

    return-void
.end method
