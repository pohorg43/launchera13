.class public final Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper$Companion;

.field private static final TAG:Ljava/lang/String; = "PageIndicatorTouchHelper"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDraggingEventReported:Z

.field private final mGestureDetector:Landroid/view/GestureDetector;

.field private mLastMoveEvent:Landroid/view/MotionEvent;

.field private final mLauncher:Lcom/android/launcher/Launcher;

.field private mOpenFolder:Lcom/android/launcher3/folder/Folder;

.field private mPageIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

.field private mStartDragging:Z

.field private mTouchDownEvent:Landroid/view/MotionEvent;

.field private final mTouchSlopSquare:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->Companion:Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/launcher3/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object v0

    const-string v1, "fromContext(context)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/launcher/Launcher;

    iput-object v0, p0, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    mul-int/2addr v0, v0

    iput v0, p0, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->mTouchSlopSquare:I

    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->mGestureDetector:Landroid/view/GestureDetector;

    return-void
.end method

.method private final getPageIndicator()Lcom/android/launcher/pageindicators/OplusPageIndicator;
    .registers 2

    iget-object v0, p0, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->mPageIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->updateCurrentPageIndicator()V

    :cond_7
    iget-object p0, p0, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->mPageIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    return-object p0
.end method

.method private final moveEnoughDistance(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .registers 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    sub-float/2addr p1, p2

    float-to-int p1, p1

    mul-int/2addr v0, v0

    mul-int/2addr p1, p1

    add-int/2addr p1, v0

    iget p0, p0, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->mTouchSlopSquare:I

    if-le p1, p0, :cond_1d

    const/4 p0, 0x1

    goto :goto_1e

    :cond_1d
    const/4 p0, 0x0

    :goto_1e
    return p0
.end method

.method private final onActionMove(Landroid/view/MotionEvent;)V
    .registers 5

    iget-boolean v0, p0, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->mStartDragging:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_23

    iget-object v0, p0, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->mTouchDownEvent:Landroid/view/MotionEvent;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, v0, p1}, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->moveEnoughDistance(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->mStartDragging:Z

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->mPageIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    if-nez v0, :cond_18

    goto :goto_22

    :cond_18
    invoke-virtual {v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getSearchEntry()Lcom/android/launcher3/search/SearchEntry;

    move-result-object v0

    if-nez v0, :cond_1f

    goto :goto_22

    :cond_1f
    invoke-virtual {v0, v2, v2}, Lcom/android/launcher3/search/SearchEntry;->doReplaceAnimation(ZZ)V

    :goto_22
    move v2, v1

    :cond_23
    iget-boolean v0, p0, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->mStartDragging:Z

    if-eqz v0, :cond_4f

    if-nez v2, :cond_34

    iget-object v0, p0, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->mLastMoveEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_34

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, v0, p1}, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->moveEnoughDistance(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v2

    :cond_34
    if-nez v2, :cond_37

    return-void

    :cond_37
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->mLastMoveEvent:Landroid/view/MotionEvent;

    invoke-virtual {p0, p1}, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->switchPage(Landroid/view/MotionEvent;)Z

    iget-boolean p1, p0, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->mDraggingEventReported:Z

    if-nez p1, :cond_4f

    iget-object p1, p0, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/statistics/LauncherStatistics;->statUsingPageIndicatorPressDragging()V

    iput-boolean v1, p0, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->mDraggingEventReported:Z

    :cond_4f
    return-void
.end method

.method private final onActionUp()V
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->isIndicatorPressedDragging()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-direct {p0}, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->getPageIndicator()Lcom/android/launcher/pageindicators/OplusPageIndicator;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->cancelPressDragging()V

    :cond_10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->mLastMoveEvent:Landroid/view/MotionEvent;

    iget-boolean v0, p0, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->mStartDragging:Z

    if-eqz v0, :cond_2f

    invoke-direct {p0}, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->getPageIndicator()Lcom/android/launcher/pageindicators/OplusPageIndicator;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->setCurrentActiveMarker()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->mStartDragging:Z

    iput-boolean v0, p0, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->mDraggingEventReported:Z

    iget-object p0, p0, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/OplusWorkspace;->onPageEndTranstion()V

    :cond_2f
    return-void
.end method

.method private final updateCurrentPageIndicator()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/AbstractFloatingView;->getOpenFolder(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/folder/Folder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->mOpenFolder:Lcom/android/launcher3/folder/Folder;

    if-eqz v0, :cond_18

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->getContent()Lcom/android/launcher3/folder/FolderPagedView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    goto :goto_24

    :cond_18
    iget-object v0, p0, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    :goto_24
    iput-object v0, p0, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->mPageIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    return-void
.end method


# virtual methods
.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v2, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-nez v1, :cond_2e

    iget-object v1, p0, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v5, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v1, v5}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v1

    if-nez v1, :cond_2e

    invoke-virtual {p0}, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->isIndicatorPressedDragging()Z

    move-result p1

    if-eqz p1, :cond_2d

    if-eq v0, v3, :cond_2a

    if-ne v0, v4, :cond_2d

    :cond_2a
    invoke-direct {p0}, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->onActionUp()V

    :cond_2d
    return v2

    :cond_2e
    if-nez v0, :cond_33

    invoke-direct {p0}, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->updateCurrentPageIndicator()V

    :cond_33
    invoke-direct {p0}, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->getPageIndicator()Lcom/android/launcher/pageindicators/OplusPageIndicator;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->supportQuickDrag()Z

    move-result v1

    if-nez v1, :cond_41

    return v2

    :cond_41
    if-eqz v0, :cond_59

    if-eq v0, v4, :cond_55

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4b

    if-eq v0, v3, :cond_55

    goto :goto_5f

    :cond_4b
    invoke-virtual {p0}, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->isIndicatorPressedDragging()Z

    move-result v0

    if-eqz v0, :cond_5f

    invoke-direct {p0, p1}, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->onActionMove(Landroid/view/MotionEvent;)V

    goto :goto_5f

    :cond_55
    invoke-direct {p0}, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->onActionUp()V

    goto :goto_5f

    :cond_59
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->mTouchDownEvent:Landroid/view/MotionEvent;

    :cond_5f
    :goto_5f
    iget-object p0, p0, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {p0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final isIndicatorPressedDragging()Z
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->getPageIndicator()Lcom/android/launcher/pageindicators/OplusPageIndicator;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->isPressDragging()Z

    move-result p0

    return p0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 5

    const/4 p0, 0x0

    return p0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 2

    const-string p0, "PageIndicatorTouchHelper"

    const-string/jumbo p1, "onLongPress "

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 5

    const/4 p0, 0x0

    return p0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->mOpenFolder:Lcom/android/launcher3/folder/Folder;

    const-string v1, "PageIndicatorTouchHelper"

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenView(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v0

    if-eqz v0, :cond_15

    const-string/jumbo p0, "onShowPress ignore, has floating view"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_15
    const-string/jumbo v0, "onShowPress "

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->getPageIndicator()Lcom/android/launcher/pageindicators/OplusPageIndicator;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->isInView(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_3f

    invoke-direct {p0}, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->getPageIndicator()Lcom/android/launcher/pageindicators/OplusPageIndicator;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_3f

    invoke-direct {p0}, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->getPageIndicator()Lcom/android/launcher/pageindicators/OplusPageIndicator;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->startPressDragging()V

    :cond_3f
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 5

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->mPageIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getSearchEntry()Lcom/android/launcher3/search/SearchEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/search/SearchEntry;->getView()Lcom/android/launcher3/search/SearchEntryView;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_70

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_70

    invoke-virtual {v0}, Lcom/android/launcher3/search/SearchEntryView;->isAppStartByClick()Z

    move-result v2

    if-nez v2, :cond_70

    iget-object v2, p0, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v2

    invoke-virtual {v2, v0, p1}, Lcom/android/launcher3/views/BaseDragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_70

    iget-object p1, p0, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object p1

    const-string v0, "mLauncher.dragLayer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Landroidx/core/view/ViewGroupKt;->getChildren(Landroid/view/ViewGroup;)Lo3/e;

    move-result-object p1

    invoke-interface {p1}, Lo3/e;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_40
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_52

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/view/View;

    instance-of v2, v2, Lcom/android/launcher/widget/RemoveWidgetDialog;

    if-eqz v2, :cond_40

    goto :goto_53

    :cond_52
    const/4 v0, 0x0

    :goto_53
    const-string p1, "PageIndicatorTouchHelper"

    if-eqz v0, :cond_5e

    const-string/jumbo p0, "startSearchApp failed because RemoveDialog exist"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_5e
    const-string/jumbo v0, "startSearchApp by gesture detector"

    invoke-static {p1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->mPageIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getSearchEntry()Lcom/android/launcher3/search/SearchEntry;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/search/SearchEntry;->startSearchApp()V

    :cond_70
    return v1
.end method

.method public final switchPage(Landroid/view/MotionEvent;)Z
    .registers 12

    invoke-direct {p0}, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->getPageIndicator()Lcom/android/launcher/pageindicators/OplusPageIndicator;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getSwitchTargetPage(Landroid/view/MotionEvent;)I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-eq p1, v1, :cond_5f

    invoke-direct {p0}, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->getPageIndicator()Lcom/android/launcher/pageindicators/OplusPageIndicator;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    const/4 v2, 0x1

    if-nez v1, :cond_22

    move v1, v2

    goto :goto_23

    :cond_22
    move v1, v0

    :goto_23
    if-eqz v1, :cond_26

    goto :goto_5f

    :cond_26
    iget-object v1, p0, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->mOpenFolder:Lcom/android/launcher3/folder/Folder;

    if-nez v1, :cond_48

    iget-object v1, p0, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v1

    iget-object v3, p0, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/Workspace;->getPanelCount()I

    move-result v3

    mul-int/2addr v3, p1

    invoke-virtual {v1, v3}, Lcom/android/launcher3/PagedView;->setCurrentPage(I)V

    iget-object p1, p0, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/launcher3/OplusWorkspace;->updatePageAlphaValues(Z)V

    goto :goto_52

    :cond_48
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/android/launcher3/folder/Folder;->getContent()Lcom/android/launcher3/folder/FolderPagedView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/PagedView;->setCurrentPage(I)V

    :goto_52
    iget-object v3, p0, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xc

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lcom/android/common/util/VibrationUtils;->vibrate$default(Landroid/content/Context;IJZILjava/lang/Object;)V

    return v2

    :cond_5f
    :goto_5f
    return v0
.end method
