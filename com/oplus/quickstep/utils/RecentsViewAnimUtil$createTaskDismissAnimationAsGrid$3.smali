.class public final Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createTaskDismissAnimationAsGrid$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->createTaskDismissAnimationAsGrid(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/views/TaskView;ZZJZ)Lcom/android/launcher3/anim/PendingAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
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
.field public final synthetic $currentPageSnapsToEndOfGrid:Z

.field public final synthetic $dismissedIndex:I

.field public final synthetic $dismissedTaskView:Lcom/android/quickstep/views/TaskView;

.field public final synthetic $dismissedTaskViewId:I

.field public final synthetic $finalIsFocusedTaskDismissed:Z

.field public final synthetic $finalNextFocusedTaskView:Lcom/android/quickstep/views/TaskView;

.field public final synthetic $finalSnapToLastTask:Z

.field public final synthetic $isSplitPlaceholderFirstInGrid:Z

.field public final synthetic $isSplitPlaceholderLastInGrid:Z

.field public final synthetic $rv:Lcom/android/quickstep/views/OplusRecentsViewImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;"
        }
    .end annotation
.end field

.field public final synthetic $shouldRemoveTask:Z

.field public final synthetic $taskCount:I


# direct methods
.method public constructor <init>(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/views/TaskView;ZZLcom/android/quickstep/views/TaskView;IZZIIZZ)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;",
            "Lcom/android/quickstep/views/TaskView;",
            "ZZ",
            "Lcom/android/quickstep/views/TaskView;",
            "IZZIIZZ)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createTaskDismissAnimationAsGrid$3;->$rv:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    iput-object p2, p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createTaskDismissAnimationAsGrid$3;->$dismissedTaskView:Lcom/android/quickstep/views/TaskView;

    iput-boolean p3, p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createTaskDismissAnimationAsGrid$3;->$shouldRemoveTask:Z

    iput-boolean p4, p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createTaskDismissAnimationAsGrid$3;->$finalSnapToLastTask:Z

    iput-object p5, p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createTaskDismissAnimationAsGrid$3;->$finalNextFocusedTaskView:Lcom/android/quickstep/views/TaskView;

    iput p6, p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createTaskDismissAnimationAsGrid$3;->$dismissedTaskViewId:I

    iput-boolean p7, p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createTaskDismissAnimationAsGrid$3;->$isSplitPlaceholderFirstInGrid:Z

    iput-boolean p8, p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createTaskDismissAnimationAsGrid$3;->$isSplitPlaceholderLastInGrid:Z

    iput p9, p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createTaskDismissAnimationAsGrid$3;->$dismissedIndex:I

    iput p10, p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createTaskDismissAnimationAsGrid$3;->$taskCount:I

    iput-boolean p11, p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createTaskDismissAnimationAsGrid$3;->$finalIsFocusedTaskDismissed:Z

    iput-boolean p12, p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createTaskDismissAnimationAsGrid$3;->$currentPageSnapsToEndOfGrid:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/views/TaskView;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createTaskDismissAnimationAsGrid$3;->onEnd$lambda-1(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/views/TaskView;)V

    return-void
.end method

.method private static final accept$lambda-0(Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createTaskDismissAnimationAsGrid$3;Z)V
    .registers 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createTaskDismissAnimationAsGrid$3;->onEnd(Z)V

    return-void
.end method

.method public static synthetic b(Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createTaskDismissAnimationAsGrid$3;Z)V
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createTaskDismissAnimationAsGrid$3;->accept$lambda-0(Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createTaskDismissAnimationAsGrid$3;Z)V

    return-void
.end method

.method private final onEnd(Z)V
    .registers 12

    iget-object v0, p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createTaskDismissAnimationAsGrid$3;->$rv:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->resetTaskVisuals()V

    if-eqz p1, :cond_228

    iget-boolean p1, p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createTaskDismissAnimationAsGrid$3;->$shouldRemoveTask:Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_39

    iget-object p1, p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createTaskDismissAnimationAsGrid$3;->$dismissedTaskView:Lcom/android/quickstep/views/TaskView;

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p1

    if-eqz p1, :cond_39

    sget-object p1, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_QUICKSTEP_LIVE_TILE:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {p1}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result p1

    if-eqz p1, :cond_32

    iget-object p1, p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createTaskDismissAnimationAsGrid$3;->$dismissedTaskView:Lcom/android/quickstep/views/TaskView;

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->isRunningTask()Z

    move-result p1

    if-eqz p1, :cond_32

    iget-object p1, p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createTaskDismissAnimationAsGrid$3;->$rv:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    iget-object v2, p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createTaskDismissAnimationAsGrid$3;->$dismissedTaskView:Lcom/android/quickstep/views/TaskView;

    new-instance v3, Lcom/android/wm/shell/bubbles/animation/o;

    invoke-direct {v3, p1, v2}, Lcom/android/wm/shell/bubbles/animation/o;-><init>(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/views/TaskView;)V

    invoke-virtual {p1, v1, v0, v3}, Lcom/android/quickstep/views/RecentsView;->finishRecentsAnimation(ZZLjava/lang/Runnable;)V

    goto :goto_39

    :cond_32
    iget-object p1, p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createTaskDismissAnimationAsGrid$3;->$rv:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    iget-object v2, p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createTaskDismissAnimationAsGrid$3;->$dismissedTaskView:Lcom/android/quickstep/views/TaskView;

    invoke-virtual {p1, v2}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->removeTask(Lcom/android/quickstep/views/TaskView;)V

    :cond_39
    :goto_39
    iget-object p1, p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createTaskDismissAnimationAsGrid$3;->$rv:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    iget v2, p1, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    iput v0, p1, Lcom/android/launcher3/PagedView;->mCurrentPageScrollDiff:I

    invoke-virtual {p1, v2}, Lcom/android/quickstep/views/RecentsView;->getTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object p1

    const/4 v3, -0x1

    if-eqz p1, :cond_d4

    iget-boolean v4, p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createTaskDismissAnimationAsGrid$3;->$finalSnapToLastTask:Z

    if-nez v4, :cond_d4

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->getTaskViewId()I

    move-result v4

    iget-object v5, p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createTaskDismissAnimationAsGrid$3;->$rv:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    iget v6, v5, Lcom/android/quickstep/views/RecentsView;->mFocusedTaskViewId:I

    if-ne v4, v6, :cond_68

    iget-object p1, p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createTaskDismissAnimationAsGrid$3;->$finalNextFocusedTaskView:Lcom/android/quickstep/views/TaskView;

    if-eqz p1, :cond_5f

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->getTaskViewId()I

    move-result v6

    :goto_5c
    move p1, v1

    goto/16 :goto_d6

    :cond_5f
    iget p1, p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createTaskDismissAnimationAsGrid$3;->$dismissedTaskViewId:I

    if-eq p1, v6, :cond_64

    goto :goto_5c

    :cond_64
    move p1, v0

    move v2, p1

    goto/16 :goto_d5

    :cond_68
    iget-object v4, v5, Lcom/android/quickstep/views/RecentsView;->mTopRowIdSet:Lcom/android/launcher3/util/IntSet;

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->getTaskViewId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/launcher3/util/IntSet;->contains(I)Z

    move-result v4

    if-eqz v4, :cond_7b

    iget-object v4, p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createTaskDismissAnimationAsGrid$3;->$rv:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v4}, Lcom/android/quickstep/views/RecentsView;->getTopRowIdArray()Lcom/android/launcher3/util/IntArray;

    move-result-object v4

    goto :goto_81

    :cond_7b
    iget-object v4, p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createTaskDismissAnimationAsGrid$3;->$rv:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v4}, Lcom/android/quickstep/views/RecentsView;->getBottomRowIdArray()Lcom/android/launcher3/util/IntArray;

    move-result-object v4

    :goto_81
    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->getTaskViewId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/launcher3/util/IntArray;->indexOf(I)I

    move-result v5

    iget v6, p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createTaskDismissAnimationAsGrid$3;->$dismissedTaskViewId:I

    invoke-virtual {v4, v6}, Lcom/android/launcher3/util/IntArray;->removeValue(I)V

    iget-object v6, p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createTaskDismissAnimationAsGrid$3;->$finalNextFocusedTaskView:Lcom/android/quickstep/views/TaskView;

    if-eqz v6, :cond_99

    invoke-virtual {v6}, Lcom/android/quickstep/views/TaskView;->getTaskViewId()I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/android/launcher3/util/IntArray;->removeValue(I)V

    :cond_99
    if-eq v5, v3, :cond_a6

    invoke-virtual {v4}, Lcom/android/launcher3/util/IntArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_a6

    invoke-virtual {v4, v5}, Lcom/android/launcher3/util/IntArray;->get(I)I

    move-result v6

    goto :goto_5c

    :cond_a6
    invoke-virtual {v4}, Lcom/android/launcher3/util/IntArray;->size()I

    move-result v4

    if-ne v5, v4, :cond_d4

    iget-object v4, p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createTaskDismissAnimationAsGrid$3;->$rv:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    iget-object v4, v4, Lcom/android/quickstep/views/RecentsView;->mTopRowIdSet:Lcom/android/launcher3/util/IntSet;

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->getTaskViewId()I

    move-result p1

    invoke-virtual {v4, p1}, Lcom/android/launcher3/util/IntSet;->contains(I)Z

    move-result p1

    if-eqz p1, :cond_c1

    iget-object p1, p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createTaskDismissAnimationAsGrid$3;->$rv:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {p1}, Lcom/android/quickstep/views/RecentsView;->getBottomRowIdArray()Lcom/android/launcher3/util/IntArray;

    move-result-object p1

    goto :goto_c7

    :cond_c1
    iget-object p1, p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createTaskDismissAnimationAsGrid$3;->$rv:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {p1}, Lcom/android/quickstep/views/RecentsView;->getTopRowIdArray()Lcom/android/launcher3/util/IntArray;

    move-result-object p1

    :goto_c7
    if-eq v5, v3, :cond_d4

    invoke-virtual {p1}, Lcom/android/launcher3/util/IntArray;->size()I

    move-result v4

    if-ge v5, v4, :cond_d4

    invoke-virtual {p1, v5}, Lcom/android/launcher3/util/IntArray;->get(I)I

    move-result v6

    goto :goto_5c

    :cond_d4
    move p1, v1

    :goto_d5
    move v6, v3

    :goto_d6
    if-eqz p1, :cond_118

    iget-object p1, p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createTaskDismissAnimationAsGrid$3;->$rv:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    iget-object v4, p1, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v4, p1}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScroll(Landroid/view/View;)I

    move-result p1

    iget-object v4, p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createTaskDismissAnimationAsGrid$3;->$rv:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    iget v5, v4, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {v4, v5}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getScrollForPage(I)I

    move-result v4

    iget-object v5, p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createTaskDismissAnimationAsGrid$3;->$rv:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    sub-int/2addr p1, v4

    iput p1, v5, Lcom/android/launcher3/PagedView;->mCurrentPageScrollDiff:I

    iget-boolean v4, p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createTaskDismissAnimationAsGrid$3;->$isSplitPlaceholderFirstInGrid:Z

    if-eqz v4, :cond_103

    iget-boolean v4, p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createTaskDismissAnimationAsGrid$3;->$finalSnapToLastTask:Z

    if-nez v4, :cond_103

    iget-boolean v4, v5, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v4, :cond_fd

    iget v4, v5, Lcom/android/quickstep/views/RecentsView;->mSplitPlaceholderSize:I

    neg-int v4, v4

    goto :goto_ff

    :cond_fd
    iget v4, v5, Lcom/android/quickstep/views/RecentsView;->mSplitPlaceholderSize:I

    :goto_ff
    add-int/2addr p1, v4

    iput p1, v5, Lcom/android/launcher3/PagedView;->mCurrentPageScrollDiff:I

    goto :goto_118

    :cond_103
    iget-boolean v4, p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createTaskDismissAnimationAsGrid$3;->$isSplitPlaceholderLastInGrid:Z

    if-eqz v4, :cond_118

    iget-boolean v4, p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createTaskDismissAnimationAsGrid$3;->$finalSnapToLastTask:Z

    if-eqz v4, :cond_118

    iget-boolean v4, v5, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v4, :cond_112

    iget v4, v5, Lcom/android/quickstep/views/RecentsView;->mSplitPlaceholderSize:I

    goto :goto_115

    :cond_112
    iget v4, v5, Lcom/android/quickstep/views/RecentsView;->mSplitPlaceholderSize:I

    neg-int v4, v4

    :goto_115
    add-int/2addr p1, v4

    iput p1, v5, Lcom/android/launcher3/PagedView;->mCurrentPageScrollDiff:I

    :cond_118
    :goto_118
    iget p1, p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createTaskDismissAnimationAsGrid$3;->$dismissedIndex:I

    if-lt p1, v2, :cond_121

    iget p1, p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createTaskDismissAnimationAsGrid$3;->$taskCount:I

    sub-int/2addr p1, v1

    if-ne v2, p1, :cond_123

    :cond_121
    add-int/lit8 v2, v2, -0x1

    :cond_123
    iget-object p1, p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createTaskDismissAnimationAsGrid$3;->$dismissedTaskView:Lcom/android/quickstep/views/TaskView;

    iget-object v4, p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createTaskDismissAnimationAsGrid$3;->$rv:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v4}, Lcom/android/quickstep/views/RecentsView;->getHomeTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v4

    if-ne p1, v4, :cond_12f

    move p1, v1

    goto :goto_130

    :cond_12f
    move p1, v0

    :goto_130
    iget-object v4, p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createTaskDismissAnimationAsGrid$3;->$rv:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    iget-object v5, p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createTaskDismissAnimationAsGrid$3;->$dismissedTaskView:Lcom/android/quickstep/views/TaskView;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    iget-object v4, p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createTaskDismissAnimationAsGrid$3;->$rv:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    iget-object v4, v4, Lcom/android/quickstep/views/RecentsView;->mTopRowIdSet:Lcom/android/launcher3/util/IntSet;

    iget v5, p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createTaskDismissAnimationAsGrid$3;->$dismissedTaskViewId:I

    invoke-virtual {v4, v5}, Lcom/android/launcher3/util/IntSet;->remove(I)V

    iget v4, p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createTaskDismissAnimationAsGrid$3;->$taskCount:I

    if-ne v4, v1, :cond_154

    if-eqz p1, :cond_14d

    iget-object p1, p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createTaskDismissAnimationAsGrid$3;->$rv:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {p1}, Lcom/android/quickstep/views/RecentsView;->updateEmptyMessage()V

    goto/16 :goto_228

    :cond_14d
    iget-object p1, p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createTaskDismissAnimationAsGrid$3;->$rv:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {p1}, Lcom/android/quickstep/views/RecentsView;->startHome()V

    goto/16 :goto_228

    :cond_154
    iget-boolean p1, p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createTaskDismissAnimationAsGrid$3;->$finalIsFocusedTaskDismissed:Z

    if-eqz p1, :cond_172

    iget-object p1, p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createTaskDismissAnimationAsGrid$3;->$finalNextFocusedTaskView:Lcom/android/quickstep/views/TaskView;

    if-eqz p1, :cond_172

    iget-object v4, p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createTaskDismissAnimationAsGrid$3;->$rv:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->getTaskViewId()I

    move-result p1

    iput p1, v4, Lcom/android/quickstep/views/RecentsView;->mFocusedTaskViewId:I

    iget-object p1, p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createTaskDismissAnimationAsGrid$3;->$rv:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    iget-object v4, p1, Lcom/android/quickstep/views/RecentsView;->mTopRowIdSet:Lcom/android/launcher3/util/IntSet;

    iget p1, p1, Lcom/android/quickstep/views/RecentsView;->mFocusedTaskViewId:I

    invoke-virtual {v4, p1}, Lcom/android/launcher3/util/IntSet;->remove(I)V

    iget-object p1, p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createTaskDismissAnimationAsGrid$3;->$finalNextFocusedTaskView:Lcom/android/quickstep/views/TaskView;

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->animateIconScaleAndDimIntoView()V

    :cond_172
    iget-object p1, p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createTaskDismissAnimationAsGrid$3;->$rv:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {p1, v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->updateTaskSize(Z)V

    iget-object p1, p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createTaskDismissAnimationAsGrid$3;->$rv:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->updateChildTaskOrientations()V

    iget-object p1, p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createTaskDismissAnimationAsGrid$3;->$rv:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {p1}, Lcom/android/quickstep/views/RecentsView;->updateScrollSynchronously()V

    iget-object p1, p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createTaskDismissAnimationAsGrid$3;->$rv:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {p1}, Lcom/android/quickstep/views/RecentsView;->getHighestVisibleTaskIndex()I

    move-result p1

    const v4, 0x7fffffff

    if-ge p1, v4, :cond_1e5

    iget-object v4, p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createTaskDismissAnimationAsGrid$3;->$rv:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v4, p1}, Lcom/android/quickstep/views/RecentsView;->requireTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v4

    const-string v5, "rv.requireTaskViewAt(highestVisibleTaskIndex)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createTaskDismissAnimationAsGrid$3;->$rv:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    iget-object v7, v5, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v7, v5}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScroll(Landroid/view/View;)I

    move-result v5

    iget-object v7, p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createTaskDismissAnimationAsGrid$3;->$rv:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    iget-object v7, v7, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v7, v4}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getChildStart(Landroid/view/View;)I

    move-result v7

    invoke-virtual {v4, v0, v1}, Lcom/android/quickstep/views/TaskView;->getOffsetAdjustment(ZZ)F

    move-result v8

    float-to-int v8, v8

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createTaskDismissAnimationAsGrid$3;->$rv:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    iget-boolean v9, v8, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v9, :cond_1ba

    iget v4, v8, Lcom/android/launcher3/PagedView;->mPageSpacing:I

    add-int/2addr v5, v4

    if-gt v7, v5, :cond_1d9

    :goto_1b8
    move v0, v1

    goto :goto_1d9

    :cond_1ba
    iget-object v9, v8, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v9, v8}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getMeasuredSize(Landroid/view/View;)I

    move-result v8

    add-int/2addr v8, v5

    iget-object v5, p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createTaskDismissAnimationAsGrid$3;->$rv:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    iget-object v5, v5, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v5, v4}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getMeasuredSize(Landroid/view/View;)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v0}, Lcom/android/quickstep/views/TaskView;->getSizeAdjustment(Z)F

    move-result v4

    mul-float/2addr v4, v5

    float-to-int v4, v4

    add-int/2addr v7, v4

    iget-object v4, p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createTaskDismissAnimationAsGrid$3;->$rv:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    iget v4, v4, Lcom/android/launcher3/PagedView;->mPageSpacing:I

    sub-int/2addr v8, v4

    if-lt v7, v8, :cond_1d9

    goto :goto_1b8

    :cond_1d9
    :goto_1d9
    if-eqz v0, :cond_1e5

    iget-object v0, p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createTaskDismissAnimationAsGrid$3;->$rv:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v0, v1, p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->updateGridProperties(ZI)V

    iget-object p1, p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createTaskDismissAnimationAsGrid$3;->$rv:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {p1}, Lcom/android/quickstep/views/RecentsView;->updateScrollSynchronously()V

    :cond_1e5
    iget-boolean p1, p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createTaskDismissAnimationAsGrid$3;->$finalSnapToLastTask:Z

    if-eqz p1, :cond_1f4

    iget-object p1, p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createTaskDismissAnimationAsGrid$3;->$rv:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {p1}, Lcom/android/quickstep/views/RecentsView;->getLastGridTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    goto :goto_219

    :cond_1f4
    if-eq v6, v3, :cond_219

    iget-object p1, p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createTaskDismissAnimationAsGrid$3;->$rv:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {p1, v6}, Lcom/android/quickstep/views/RecentsView;->getTaskViewFromTaskViewId(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    iget-boolean p1, p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createTaskDismissAnimationAsGrid$3;->$currentPageSnapsToEndOfGrid:Z

    if-nez p1, :cond_219

    iget-object p1, p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createTaskDismissAnimationAsGrid$3;->$rv:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    iget v0, p1, Lcom/android/launcher3/PagedView;->mCurrentPageScrollDiff:I

    invoke-virtual {p1}, Lcom/android/quickstep/views/RecentsView;->getTopRowIdArray()Lcom/android/launcher3/util/IntArray;

    move-result-object v1

    iget-object v3, p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createTaskDismissAnimationAsGrid$3;->$rv:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v3}, Lcom/android/quickstep/views/RecentsView;->getBottomRowIdArray()Lcom/android/launcher3/util/IntArray;

    move-result-object v3

    invoke-virtual {p1, v2, v1, v3}, Lcom/android/quickstep/views/RecentsView;->getOffsetFromScrollPosition(ILcom/android/launcher3/util/IntArray;Lcom/android/launcher3/util/IntArray;)I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p1, Lcom/android/launcher3/PagedView;->mCurrentPageScrollDiff:I

    :cond_219
    :goto_219
    iget-object p1, p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createTaskDismissAnimationAsGrid$3;->$rv:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->pageBeginTransition()V

    iget-object p1, p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createTaskDismissAnimationAsGrid$3;->$rv:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {p1, v2}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setCurrentPage(I)V

    iget-object p1, p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createTaskDismissAnimationAsGrid$3;->$rv:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {p1}, Lcom/android/quickstep/views/RecentsView;->dispatchScrollChanged()V

    :cond_228
    :goto_228
    iget-object p1, p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createTaskDismissAnimationAsGrid$3;->$rv:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->updateCurrentTaskActionsVisibility()V

    iget-object p0, p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createTaskDismissAnimationAsGrid$3;->$rv:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/quickstep/views/RecentsView;->mPendingAnimation:Lcom/android/launcher3/anim/PendingAnimation;

    return-void
.end method

.method private static final onEnd$lambda-1(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/views/TaskView;)V
    .registers 3

    const-string v0, "$rv"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$dismissedTaskView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->removeTask(Lcom/android/quickstep/views/TaskView;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createTaskDismissAnimationAsGrid$3;->accept(Z)V

    return-void
.end method

.method public accept(Z)V
    .registers 6

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_QUICKSTEP_LIVE_TILE:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createTaskDismissAnimationAsGrid$3;->$rv:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    iget-boolean v0, v0, Lcom/android/quickstep/views/RecentsView;->mEnableDrawingLiveTile:Z

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createTaskDismissAnimationAsGrid$3;->$dismissedTaskView:Lcom/android/quickstep/views/TaskView;

    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView;->isRunningTask()Z

    move-result v0

    if-eqz v0, :cond_25

    if-eqz p1, :cond_25

    iget-object v0, p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createTaskDismissAnimationAsGrid$3;->$rv:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v3, Lcom/android/common/util/g0;

    invoke-direct {v3, p0, p1}, Lcom/android/common/util/g0;-><init>(Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createTaskDismissAnimationAsGrid$3;Z)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/quickstep/views/RecentsView;->finishRecentsAnimation(ZZLjava/lang/Runnable;)V

    goto :goto_28

    :cond_25
    invoke-direct {p0, p1}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createTaskDismissAnimationAsGrid$3;->onEnd(Z)V

    :goto_28
    return-void
.end method
