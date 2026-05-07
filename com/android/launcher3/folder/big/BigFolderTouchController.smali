.class public final Lcom/android/launcher3/folder/big/BigFolderTouchController;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/folder/big/BigFolderTouchController$Companion;
    }
.end annotation


# static fields
.field public static final CALLER_DEPTH:I = 0x4

.field public static final Companion:Lcom/android/launcher3/folder/big/BigFolderTouchController$Companion;

.field private static final FLOAT_FACTOR:I = 0xa

.field private static final FOLDER_PAGE_SNAP_SPEED_DP:F = 0.5f

.field private static final FOLDER_PAGE_SNAP_THRESHOLD_DP:F = 20.0f

.field public static final ICON_PAGE_OVER_SCROLL_DURATION:I = 0x190

.field public static final INVALID_POINT:I = -0x1

.field private static final OVERSCROLL_RIGIDITY:I = 0x3

.field private static final SCROLL_CONTINUE_THRESHOLD:F = 20.0f

.field public static final SNAP_ICON_HALF_PAGE_DURATION:I = 0x226

.field public static final SNAP_ICON_PAGE_DURATION:I = 0x1f4

.field public static final SNAP_PAGE_MIN_DURATION:I = 0x96

.field public static final TAG:Ljava/lang/String; = "BigFolderTouchController"


# instance fields
.field private mActivePoint:I

.field private final mBigFolderIcon:Lcom/android/launcher3/folder/big/BigFolderIcon;

.field private mCanIntercept:Z

.field private mCurrentPage:I

.field private final mDownPoint:Landroid/graphics/PointF;

.field private mIsDrag:Z

.field private mIsOverScroll:Z

.field private final mIsRtl:Z

.field private mLastScrollMount:F

.field private final mLauncher:Lcom/android/launcher/Launcher;

.field private mOverScrollStartX:I

.field private mOverScroller:Lcom/android/launcher/OplusSpringOverScroller;

.field private mPageFlingSpeed:F

.field private mPrePage:I

.field private mScrollEndRunnable:Ljava/lang/Runnable;

.field private mScrollStart:Z

.field private mScrollStartPoint:Landroid/graphics/PointF;

.field private mScrollStartX:F

.field private mSnapPageAnimator:Landroid/animation/ValueAnimator;

.field private final mSnapPageThreshold:F

.field private final mSwipeThreshold:F

.field private mTargetPageInAnimation:F

.field private mTemptMount:F

.field private final mVelocityTracking:Landroid/view/VelocityTracker;

.field private final onClickListener:Landroid/view/View$OnClickListener;

.field private page:I

.field private touchIconAnim:Lcom/android/launcher3/folder/big/TouchIconAnim;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/folder/big/BigFolderTouchController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/folder/big/BigFolderTouchController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->Companion:Lcom/android/launcher3/folder/big/BigFolderTouchController$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher/Launcher;Lcom/android/launcher3/folder/big/BigFolderIcon;)V
    .registers 6

    const-string v0, "launcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mBigFolderIcon:Lcom/android/launcher3/folder/big/BigFolderIcon;

    new-instance v0, Landroid/graphics/PointF;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mDownPoint:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mScrollStartPoint:Landroid/graphics/PointF;

    iput-object p1, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->page:I

    new-instance v1, Lcom/android/launcher/OplusSpringOverScroller;

    invoke-direct {v1, p1}, Lcom/android/launcher/OplusSpringOverScroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mOverScroller:Lcom/android/launcher/OplusSpringOverScroller;

    new-instance v1, Lcom/android/launcher3/folder/big/TouchIconAnim;

    invoke-direct {v1}, Lcom/android/launcher3/folder/big/TouchIconAnim;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->touchIconAnim:Lcom/android/launcher3/folder/big/TouchIconAnim;

    iput v0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mActivePoint:I

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mVelocityTracking:Landroid/view/VelocityTracker;

    new-instance v0, Lcom/android/launcher/v;

    invoke-direct {v0, p0}, Lcom/android/launcher/v;-><init>(Lcom/android/launcher3/folder/big/BigFolderTouchController;)V

    iput-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x41a00000  # 20.0f

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mSnapPageThreshold:F

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x3f000000  # 0.5f

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mPageFlingSpeed:F

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mSwipeThreshold:F

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mIsRtl:Z

    if-nez p2, :cond_71

    goto :goto_74

    :cond_71
    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_74
    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/folder/big/BigFolderTouchController;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/folder/big/BigFolderTouchController;->snapToPageWithFloat$lambda-3(Lcom/android/launcher3/folder/big/BigFolderTouchController;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static final synthetic access$getMBigFolderIcon$p(Lcom/android/launcher3/folder/big/BigFolderTouchController;)Lcom/android/launcher3/folder/big/BigFolderIcon;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mBigFolderIcon:Lcom/android/launcher3/folder/big/BigFolderIcon;

    return-object p0
.end method

.method public static final synthetic access$getMScrollStart$p(Lcom/android/launcher3/folder/big/BigFolderTouchController;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mScrollStart:Z

    return p0
.end method

.method public static final synthetic access$getMTargetPageInAnimation$p(Lcom/android/launcher3/folder/big/BigFolderTouchController;)F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mTargetPageInAnimation:F

    return p0
.end method

.method public static synthetic b(Lcom/android/launcher3/folder/big/BigFolderTouchController;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/folder/big/BigFolderTouchController;->onClickListener$lambda-0(Lcom/android/launcher3/folder/big/BigFolderTouchController;Landroid/view/View;)V

    return-void
.end method

.method private final checkTouchDownAnim()V
    .registers 1

    return-void
.end method

.method private static final checkTouchDownAnim$lambda-6(Lcom/android/launcher3/folder/big/BigFolderTouchController;Landroid/animation/ValueAnimator;)V
    .registers 2

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mBigFolderIcon:Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method private final checkTouchResetAnim(Landroid/view/MotionEvent;)V
    .registers 2

    return-void
.end method

.method private static final checkTouchResetAnim$lambda-7(Lcom/android/launcher3/folder/big/BigFolderTouchController;Landroid/animation/ValueAnimator;)V
    .registers 2

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mBigFolderIcon:Lcom/android/launcher3/folder/big/BigFolderIcon;

    if-nez p0, :cond_b

    goto :goto_e

    :cond_b
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :goto_e
    return-void
.end method

.method private final clearFloatingIconIfNeed()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getFloatingIconContainer()Lcom/android/launcher3/views/FloatingIconViewContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/views/FloatingIconViewContainer;->getMOriginalView()Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lcom/android/launcher3/folder/big/BigFolderItemIcon;

    if-eqz v1, :cond_25

    check-cast v0, Lcom/android/launcher3/folder/big/BigFolderItemIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/BigFolderItemIcon;->getParentFolderIcon()Lcom/android/launcher3/folder/big/BigFolderIcon;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mBigFolderIcon:Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object p0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getFloatingIconContainer()Lcom/android/launcher3/views/FloatingIconViewContainer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/views/FloatingIconViewContainer;->finish()V

    :cond_25
    return-void
.end method

.method private final computeOverScroll(F)V
    .registers 6

    iget v0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mOverScrollStartX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mScrollStartX:F

    sub-float/2addr v1, p1

    sub-float/2addr v0, v1

    iget-boolean p1, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mScrollStart:Z

    if-eqz p1, :cond_37

    iget p1, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mTemptMount:F

    sub-float p1, v0, p1

    float-to-int p1, p1

    iget v1, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mLastScrollMount:F

    sget-object v2, Lcom/android/launcher3/folder/big/BigFolderTouchController;->Companion:Lcom/android/launcher3/folder/big/BigFolderTouchController$Companion;

    iget-object v3, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mBigFolderIcon:Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getIconWidth()I

    move-result v3

    invoke-virtual {v2, p1, v1, v3}, Lcom/android/launcher3/folder/big/BigFolderTouchController$Companion;->calcRealOverScrollDist(IFI)I

    move-result p1

    int-to-float p1, p1

    add-float/2addr v1, p1

    iput v1, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mLastScrollMount:F

    iput v0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mTemptMount:F

    iget p1, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mOverScrollStartX:I

    int-to-float v0, p1

    sub-float/2addr v0, v1

    iget-boolean v2, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mIsRtl:Z

    if-eqz v2, :cond_32

    int-to-float p1, p1

    add-float v0, p1, v1

    :cond_32
    iget-object p0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mBigFolderIcon:Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->updateScrollDistance(F)V

    :cond_37
    return-void
.end method

.method private final editState()Z
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v1, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-nez v0, :cond_17

    iget-object p0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v0, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p0

    if-eqz p0, :cond_15

    goto :goto_17

    :cond_15
    const/4 p0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 p0, 0x1

    :goto_18
    return p0
.end method

.method private final getMNextPage()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->page:I

    return p0
.end method

.method private final isKeyBoardEnterPressed(Landroid/graphics/PointF;)Z
    .registers 5

    iget-object p0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mBigFolderIcon:Lcom/android/launcher3/folder/big/BigFolderIcon;

    const/4 v0, 0x0

    if-nez p0, :cond_7

    move-object p0, v0

    goto :goto_b

    :cond_7
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getFolderBackground()Lcom/android/launcher3/folder/PreviewBackground;

    move-result-object p0

    :goto_b
    instance-of v1, p0, Lcom/android/launcher3/folder/big/BigFolderBackground;

    if-eqz v1, :cond_12

    move-object v0, p0

    check-cast v0, Lcom/android/launcher3/folder/big/BigFolderBackground;

    :cond_12
    const/4 p0, 0x0

    if-nez v0, :cond_16

    goto :goto_39

    :cond_16
    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/BigFolderBackground;->getMIconsRect()Landroid/graphics/RectF;

    move-result-object v0

    if-nez v0, :cond_1d

    goto :goto_39

    :cond_1d
    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/PointF;->x:F

    cmpg-float v1, v1, v2

    const/4 v2, 0x1

    if-nez v1, :cond_28

    move v1, v2

    goto :goto_29

    :cond_28
    move v1, p0

    :goto_29
    if-eqz v1, :cond_39

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    cmpg-float p1, v0, p1

    if-nez p1, :cond_35

    move p1, v2

    goto :goto_36

    :cond_35
    move p1, p0

    :goto_36
    if-eqz p1, :cond_39

    move p0, v2

    :cond_39
    :goto_39
    return p0
.end method

.method private static final onClickListener$lambda-0(Lcom/android/launcher3/folder/big/BigFolderTouchController;Landroid/view/View;)V
    .registers 4

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_d

    return-void

    :cond_d
    iget-object p1, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/Workspace;->isFinishedSwitchingState()Z

    move-result p1

    if-nez p1, :cond_1a

    return-void

    :cond_1a
    iget-object p1, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mBigFolderIcon:Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/launcher3/folder/big/BigFolderIcon;->isScrolling()Z

    move-result p1

    if-eqz p1, :cond_26

    return-void

    :cond_26
    iget-object p1, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mBigFolderIcon:Lcom/android/launcher3/folder/big/BigFolderIcon;

    iget-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mDownPoint:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v1, v0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->inIconsRectArea(FF)I

    move-result p1

    const/4 v0, -0x2

    if-le p1, v0, :cond_58

    const/4 v0, -0x1

    if-le p1, v0, :cond_3f

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/big/BigFolderTouchController;->isClickedSmallIcon(I)Z

    move-result p1

    if-eqz p1, :cond_3f

    return-void

    :cond_3f
    iget-object p1, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mBigFolderIcon:Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/big/BigFolderTouchController;->inNoSufficedPage(Lcom/android/launcher3/folder/big/BigFolderIcon;)Z

    move-result p1

    if-nez p1, :cond_55

    invoke-direct {p0}, Lcom/android/launcher3/folder/big/BigFolderTouchController;->editState()Z

    move-result p1

    if-nez p1, :cond_55

    iget-object p1, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mDownPoint:Landroid/graphics/PointF;

    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/big/BigFolderTouchController;->isKeyBoardEnterPressed(Landroid/graphics/PointF;)Z

    move-result p1

    if-eqz p1, :cond_58

    :cond_55
    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderTouchController;->openFolderByClick()V

    :cond_58
    return-void
.end method

.method private final resetScroll()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mTemptMount:F

    iput v0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mLastScrollMount:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mScrollStart:Z

    iput-boolean v0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mIsOverScroll:Z

    return-void
.end method

.method private final setMNextPage(I)V
    .registers 3

    iget v0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->page:I

    if-eq v0, p1, :cond_e

    iput p1, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->page:I

    iget-object p0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mBigFolderIcon:Lcom/android/launcher3/folder/big/BigFolderIcon;

    if-nez p0, :cond_b

    goto :goto_e

    :cond_b
    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/big/BigFolderIcon;->updateNextPageStatus(I)V

    :cond_e
    :goto_e
    return-void
.end method

.method private final snapToPageWithFloat(FZ)V
    .registers 11

    iput p1, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mTargetPageInAnimation:F

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "snapToPageWithFloat: nextPage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", followTouch = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", caller: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x4

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BigFolderTouchController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mSnapPageAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_36

    :cond_34
    move v0, v1

    goto :goto_3d

    :cond_36
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-ne v0, v2, :cond_34

    move v0, v2

    :goto_3d
    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mSnapPageAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_47
    const/4 v0, -0x1

    int-to-float v0, v0

    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_58

    iget-object p0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mBigFolderIcon:Lcom/android/launcher3/folder/big/BigFolderIcon;

    if-nez p0, :cond_54

    goto :goto_57

    :cond_54
    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->onScrollPageEnd()V

    :goto_57
    return-void

    :cond_58
    iget-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mBigFolderIcon:Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getScrollDistance()F

    move-result v0

    iget-object v3, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mBigFolderIcon:Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-virtual {v3}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getIconWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p1

    invoke-static {v0, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-nez v4, :cond_78

    iget-object p0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mBigFolderIcon:Lcom/android/launcher3/folder/big/BigFolderIcon;

    if-nez p0, :cond_74

    goto :goto_77

    :cond_74
    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->onScrollPageEnd()V

    :goto_77
    return-void

    :cond_78
    iget-boolean v4, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mIsOverScroll:Z

    if-eqz v4, :cond_7f

    const/16 v4, 0x190

    goto :goto_a0

    :cond_7f
    if-eqz p2, :cond_9e

    const/16 v4, 0x96

    const/16 v5, 0x12c

    sub-float v6, v0, v3

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-int v6, v6

    iget-object v7, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mBigFolderIcon:Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-virtual {v7}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getIconWidth()I

    move-result v7

    div-int/2addr v6, v7

    mul-int/lit16 v6, v6, 0x1f4

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    goto :goto_a0

    :cond_9e
    const/16 v4, 0x226

    :goto_a0
    const/4 v5, 0x2

    new-array v5, v5, [F

    aput v0, v5, v1

    aput v3, v5, v2

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mSnapPageAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_b0

    goto :goto_ba

    :cond_b0
    if-eqz p2, :cond_b5

    sget-object p2, Lcom/android/launcher3/anim/Interpolators;->DEACCEL_2:Landroid/view/animation/Interpolator;

    goto :goto_b7

    :cond_b5
    sget-object p2, Lcom/android/common/config/AnimationConstant;->PATH_INTERPOLATOR_1:Landroid/view/animation/Interpolator;

    :goto_b7
    invoke-virtual {v0, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :goto_ba
    iget-object p2, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mSnapPageAnimator:Landroid/animation/ValueAnimator;

    if-nez p2, :cond_bf

    goto :goto_c3

    :cond_bf
    int-to-long v0, v4

    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    :goto_c3
    iget-object p2, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mSnapPageAnimator:Landroid/animation/ValueAnimator;

    if-nez p2, :cond_c8

    goto :goto_d0

    :cond_c8
    new-instance v0, Lcom/android/launcher/batchdrag/a;

    invoke-direct {v0, p0}, Lcom/android/launcher/batchdrag/a;-><init>(Lcom/android/launcher3/folder/big/BigFolderTouchController;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :goto_d0
    iget-object p2, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mSnapPageAnimator:Landroid/animation/ValueAnimator;

    if-nez p2, :cond_d5

    goto :goto_dd

    :cond_d5
    new-instance v0, Lcom/android/launcher3/folder/big/BigFolderTouchController$snapToPageWithFloat$$inlined$doOnStart$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/folder/big/BigFolderTouchController$snapToPageWithFloat$$inlined$doOnStart$1;-><init>(Lcom/android/launcher3/folder/big/BigFolderTouchController;)V

    invoke-virtual {p2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :goto_dd
    iget-object p2, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mSnapPageAnimator:Landroid/animation/ValueAnimator;

    if-nez p2, :cond_e2

    goto :goto_ea

    :cond_e2
    new-instance v0, Lcom/android/launcher3/folder/big/BigFolderTouchController$snapToPageWithFloat$$inlined$doOnEnd$1;

    invoke-direct {v0, p0, p1, v3}, Lcom/android/launcher3/folder/big/BigFolderTouchController$snapToPageWithFloat$$inlined$doOnEnd$1;-><init>(Lcom/android/launcher3/folder/big/BigFolderTouchController;FF)V

    invoke-virtual {p2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :goto_ea
    iget-object p0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mSnapPageAnimator:Landroid/animation/ValueAnimator;

    if-nez p0, :cond_ef

    goto :goto_f2

    :cond_ef
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :goto_f2
    return-void
.end method

.method private static final snapToPageWithFloat$lambda-3(Lcom/android/launcher3/folder/big/BigFolderTouchController;Landroid/animation/ValueAnimator;)V
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mBigFolderIcon:Lcom/android/launcher3/folder/big/BigFolderIcon;

    if-nez v0, :cond_1a

    goto :goto_1d

    :cond_1a
    invoke-virtual {v0, p1}, Lcom/android/launcher3/folder/big/BigFolderIcon;->updateScrollDistance(F)V

    :goto_1d
    iget-object p0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mBigFolderIcon:Lcom/android/launcher3/folder/big/BigFolderIcon;

    if-nez p0, :cond_22

    goto :goto_25

    :cond_22
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :goto_25
    return-void
.end method

.method private final snapToPageWithTouch(I)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mBigFolderIcon:Lcom/android/launcher3/folder/big/BigFolderIcon;

    if-nez v1, :cond_b

    const/4 v1, 0x0

    goto :goto_f

    :cond_b
    invoke-virtual {v1}, Lcom/android/launcher3/folder/big/BigFolderIcon;->logInfo()Ljava/lang/String;

    move-result-object v1

    :goto_f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", snapToPageWithTouch nextPage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BigFolderTouchController"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    int-to-float p1, p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/folder/big/BigFolderTouchController;->snapToPageWithFloat(FZ)V

    return-void
.end method


# virtual methods
.method public final abortScroll()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mOverScroller:Lcom/android/launcher/OplusSpringOverScroller;

    invoke-virtual {v0}, Lcom/android/launcher/OplusSpringOverScroller;->abortAnimation()V

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/launcher3/folder/big/BigFolderTouchController;->setMNextPage(I)V

    iget-object p0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mBigFolderIcon:Lcom/android/launcher3/folder/big/BigFolderIcon;

    if-nez p0, :cond_e

    goto :goto_11

    :cond_e
    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->onScrollPageEnd()V

    :goto_11
    return-void
.end method

.method public final computeScroll(F)Z
    .registers 10

    iget-boolean v0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mScrollStart:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_98

    iget v0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mScrollStartX:F

    sub-float v2, v0, p1

    iget-boolean v3, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mIsRtl:Z

    if-eqz v3, :cond_f

    add-float v2, v0, p1

    :cond_f
    iget-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mBigFolderIcon:Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getIconWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v0, v2, v0

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-float v0, v3

    float-to-int v0, v0

    iget-object v3, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mBigFolderIcon:Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getIconWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v3, v2, v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-float v3, v3

    float-to-int v3, v3

    const/4 v4, 0x0

    cmpg-float v4, p1, v4

    const/4 v5, 0x1

    if-gez v4, :cond_3d

    move v4, v5

    goto :goto_3e

    :cond_3d
    move v4, v1

    :goto_3e
    iget-boolean v6, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mIsRtl:Z

    xor-int/2addr v4, v6

    if-eqz v4, :cond_44

    goto :goto_47

    :cond_44
    move v7, v3

    move v3, v0

    move v0, v7

    :goto_47
    if-ltz v0, :cond_56

    iget-object v4, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mBigFolderIcon:Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getIconPageNum()I

    move-result v4

    if-ge v0, v4, :cond_56

    iput v0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mPrePage:I

    :cond_56
    if-ltz v3, :cond_6f

    iget-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mBigFolderIcon:Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getIconPageNum()I

    move-result v0

    if-lt v3, v0, :cond_64

    goto :goto_6f

    :cond_64
    invoke-direct {p0, v3}, Lcom/android/launcher3/folder/big/BigFolderTouchController;->setMNextPage(I)V

    iput-boolean v5, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mIsOverScroll:Z

    iget-object p1, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mBigFolderIcon:Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-virtual {p1, v2}, Lcom/android/launcher3/folder/big/BigFolderIcon;->updateScrollDistance(F)V

    goto :goto_8f

    :cond_6f
    :goto_6f
    if-gez v3, :cond_72

    goto :goto_86

    :cond_72
    iget-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mBigFolderIcon:Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getIconPageNum()I

    move-result v0

    sub-int/2addr v0, v5

    iget-object v1, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mBigFolderIcon:Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getIconWidth()I

    move-result v1

    mul-int/2addr v1, v0

    :goto_86
    iput v1, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mOverScrollStartX:I

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/launcher3/folder/big/BigFolderTouchController;->setMNextPage(I)V

    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/big/BigFolderTouchController;->computeOverScroll(F)V

    :goto_8f
    iget-object p0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mBigFolderIcon:Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return v5

    :cond_98
    return v1
.end method

.method public final getMIsDrag()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mIsDrag:Z

    return p0
.end method

.method public final getMScrollEndRunnable()Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mScrollEndRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public final inNoSufficedPage(Lcom/android/launcher3/folder/big/BigFolderIcon;)Z
    .registers 5

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getPreviewItemManager()Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->getMPreviewPage()I

    move-result p0

    sget-object v0, Lcom/android/launcher3/folder/big/BigFolderIcon;->Companion:Lcom/android/launcher3/folder/big/BigFolderIcon$Companion;

    invoke-virtual {p1}, Lcom/android/launcher3/folder/OplusFolderIcon;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v1

    const-string v2, "info"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/big/BigFolderIcon$Companion;->getPreviewPageCount(Lcom/android/launcher3/model/data/FolderInfo;)I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ne p0, v0, :cond_34

    invoke-virtual {p1}, Lcom/android/launcher3/folder/OplusFolderIcon;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object p0

    iget-object p0, p0, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    sget-object p1, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->Companion:Lcom/android/launcher3/folder/big/SizeSpacingConfig$Companion;

    invoke-virtual {p1}, Lcom/android/launcher3/folder/big/SizeSpacingConfig$Companion;->getMAX_PREVIEW()I

    move-result p1

    rem-int/2addr p0, p1

    if-eqz p0, :cond_34

    goto :goto_35

    :cond_34
    const/4 v1, 0x0

    :goto_35
    return v1
.end method

.method public final isClickedSmallIcon(I)Z
    .registers 9

    iget-boolean v0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mScrollStart:Z

    const/4 v1, 0x0

    if-nez v0, :cond_d9

    iget-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v2, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-nez v0, :cond_11

    goto/16 :goto_d9

    :cond_11
    iget-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mBigFolderIcon:Lcom/android/launcher3/folder/big/BigFolderIcon;

    const/4 v2, 0x0

    if-nez v0, :cond_17

    goto :goto_22

    :cond_17
    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getPreviewItemManager()Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;

    move-result-object v0

    if-nez v0, :cond_1e

    goto :goto_22

    :cond_1e
    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->getMItemRectArray()Landroid/util/SparseArray;

    move-result-object v2

    :goto_22
    iget-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mBigFolderIcon:Lcom/android/launcher3/folder/big/BigFolderIcon;

    if-eqz v0, :cond_d9

    if-eqz v2, :cond_d9

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_30

    goto/16 :goto_d9

    :cond_30
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iget-object v3, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mDownPoint:Landroid/graphics/PointF;

    invoke-virtual {v0, v3}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    iget-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mBigFolderIcon:Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getPreviewItemManager()Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->getMPreviewPage()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/launcher3/folder/FolderIcon;->getPreviewItemsOnPage(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge p1, v3, :cond_d9

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    iget-object v1, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mBigFolderIcon:Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getPreviewItemManager()Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v3}, Lcom/android/launcher3/folder/PreviewItemManager;->getNewIcon(Lcom/android/launcher3/model/data/WorkspaceItemInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    new-instance v3, Lcom/android/launcher3/folder/big/BigFolderItemIcon;

    iget-object v4, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-direct {v3, v4}, Lcom/android/launcher3/folder/big/BigFolderItemIcon;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Lcom/android/launcher3/folder/big/BigFolderItemIcon;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v3}, Lcom/android/launcher3/folder/big/BigFolderItemIcon;->getIconRectBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    float-to-int v4, v4

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    float-to-int v5, v5

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    float-to-int v6, v6

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    float-to-int v2, v2

    invoke-virtual {v1, v4, v5, v6, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v1, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mBigFolderIcon:Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-virtual {v3, v1}, Lcom/android/launcher3/folder/big/BigFolderItemIcon;->setParentFolderIcon(Lcom/android/launcher3/folder/big/BigFolderIcon;)V

    invoke-virtual {v3, v0}, Lcom/android/launcher3/folder/big/BigFolderItemIcon;->setItemInfo(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    invoke-virtual {v3, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v3, p1}, Lcom/android/launcher3/folder/big/BigFolderItemIcon;->setIndex(I)V

    const-string p1, "ClickedSmallIcon, info = "

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "BigFolderTouchController"

    invoke-static {v1, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_c6

    iget-object p1, v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "{\n                    in…ageName\n                }"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_d2

    :cond_c6
    iget-object p1, v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "{\n                    in…ckage()\n                }"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_d2
    iget-object p0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v3, v0, p0, p1}, Lcom/android/launcher3/touch/OplusItemClickHandler;->onClickBigFolderSmallIcon(Landroid/view/View;Lcom/android/launcher3/model/data/WorkspaceItemInfo;Lcom/android/launcher3/Launcher;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_d9
    :goto_d9
    return v1
.end method

.method public final isSnapPageAnimRunning()Z
    .registers 3

    iget-object p0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mSnapPageAnimator:Landroid/animation/ValueAnimator;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_7

    goto :goto_e

    :cond_7
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p0

    if-ne p0, v1, :cond_e

    move v0, v1

    :cond_e
    :goto_e
    return v0
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)V
    .registers 4

    const/16 v0, 0x42

    if-ne v0, p1, :cond_37

    const/4 p1, 0x0

    if-nez p2, :cond_8

    goto :goto_f

    :cond_8
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    if-nez p2, :cond_f

    const/4 p1, 0x1

    :cond_f
    :goto_f
    if-eqz p1, :cond_37

    iget-object p1, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mBigFolderIcon:Lcom/android/launcher3/folder/big/BigFolderIcon;

    const/4 p2, 0x0

    if-nez p1, :cond_18

    move-object p1, p2

    goto :goto_1c

    :cond_18
    invoke-virtual {p1}, Lcom/android/launcher3/folder/FolderIcon;->getFolderBackground()Lcom/android/launcher3/folder/PreviewBackground;

    move-result-object p1

    :goto_1c
    instance-of v0, p1, Lcom/android/launcher3/folder/big/BigFolderBackground;

    if-eqz v0, :cond_23

    move-object p2, p1

    check-cast p2, Lcom/android/launcher3/folder/big/BigFolderBackground;

    :cond_23
    if-nez p2, :cond_26

    goto :goto_37

    :cond_26
    invoke-virtual {p2}, Lcom/android/launcher3/folder/big/BigFolderBackground;->getMIconsRect()Landroid/graphics/RectF;

    move-result-object p1

    if-nez p1, :cond_2d

    goto :goto_37

    :cond_2d
    iget-object p0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mDownPoint:Landroid/graphics/PointF;

    iget p2, p1, Landroid/graphics/RectF;->left:F

    iput p2, p0, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/RectF;->top:F

    iput p1, p0, Landroid/graphics/PointF;->y:F

    :cond_37
    :goto_37
    return-void
.end method

.method public final onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .registers 7

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mActivePoint:I

    if-ne v1, v2, :cond_59

    if-nez v0, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iget-object v4, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mBigFolderIcon:Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4, v3}, Lcom/android/launcher3/folder/FolderIcon;->getPreviewBounds(Landroid/graphics/Rect;)V

    float-to-int v1, v1

    float-to-int v2, v2

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_52

    iget-object v1, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mBigFolderIcon:Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getScrollDistance()F

    move-result v1

    iput v1, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mScrollStartX:F

    iget-object v1, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mScrollStartPoint:Landroid/graphics/PointF;

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mActivePoint:I

    goto :goto_59

    :cond_52
    iget-boolean v0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mScrollStart:Z

    if-eqz v0, :cond_59

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/big/BigFolderTouchController;->scrollEndAction(Landroid/view/MotionEvent;)V

    :cond_59
    :goto_59
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mBigFolderIcon:Lcom/android/launcher3/folder/big/BigFolderIcon;

    if-nez v0, :cond_b

    const/4 v0, 0x0

    goto :goto_f

    :cond_b
    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getPreviewItemManager()Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;

    move-result-object v0

    :goto_f
    const/4 v1, 0x0

    if-nez v0, :cond_13

    return v1

    :cond_13
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_29

    iget-object v2, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mDownPoint:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, v2, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mDownPoint:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, v2, Landroid/graphics/PointF;->y:F

    :cond_29
    iget-object v2, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mBigFolderIcon:Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getPreviewVerifier()Lcom/android/launcher3/folder/big/BigFolderGridOrganizer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/folder/big/BigFolderGridOrganizer;->getDoClosingAnim()Z

    move-result v2

    if-nez v2, :cond_190

    iget-object v2, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mBigFolderIcon:Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/FolderIcon;->getFolder()Lcom/android/launcher3/folder/Folder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/folder/Folder;->isAnimateClosing()Z

    move-result v2

    if-eqz v2, :cond_43

    goto/16 :goto_190

    :cond_43
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_59

    iget-object v2, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mBigFolderIcon:Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/folder/big/BigFolderIcon;->inSwipeArea(FF)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mCanIntercept:Z

    :cond_59
    iget-boolean v2, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mCanIntercept:Z

    if-nez v2, :cond_5e

    return v1

    :cond_5e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_150

    if-eq v2, v3, :cond_13f

    const/4 v4, 0x2

    if-eq v2, v4, :cond_8f

    const/4 v3, 0x3

    if-eq v2, v3, :cond_77

    const/4 v0, 0x6

    if-eq v2, v0, :cond_72

    goto/16 :goto_18f

    :cond_72
    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/big/BigFolderTouchController;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_18f

    :cond_77
    iget-boolean v2, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mScrollStart:Z

    if-eqz v2, :cond_85

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->getMPreviewPage()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/folder/big/BigFolderTouchController;->snapToPageWithTouch(I)V

    invoke-direct {p0}, Lcom/android/launcher3/folder/big/BigFolderTouchController;->resetScroll()V

    :cond_85
    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/big/BigFolderTouchController;->checkTouchResetAnim(Landroid/view/MotionEvent;)V

    iget-object p0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mVelocityTracking:Landroid/view/VelocityTracker;

    invoke-virtual {p0}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_18f

    :cond_8f
    iget v2, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mActivePoint:I

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_99

    return v1

    :cond_99
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    iget-object v5, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mDownPoint:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    sub-float/2addr v4, v5

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    iget-object v6, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mDownPoint:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    sub-float/2addr v5, v6

    iget-boolean v6, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mScrollStart:Z

    if-nez v6, :cond_12d

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderTouchController;->snapPageValid()Z

    move-result v6

    if-nez v6, :cond_b6

    goto :goto_d7

    :cond_b6
    iget-object v6, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/android/launcher/OplusPagedViewImpl;->setMBigFolderIntercept(Z)V

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v5, v6, v5

    if-lez v5, :cond_d7

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mSwipeThreshold:F

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_d7

    move v4, v3

    goto :goto_d8

    :cond_d7
    :goto_d7
    move v4, v1

    :goto_d8
    iput-boolean v4, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mScrollStart:Z

    if-eqz v4, :cond_13b

    invoke-direct {p0}, Lcom/android/launcher3/folder/big/BigFolderTouchController;->clearFloatingIconIfNeed()V

    iget-object v4, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mSnapPageAnimator:Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_f4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_f4

    iget-object v4, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mSnapPageAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_f4
    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->getMPreviewPage()I

    move-result v4

    iput v4, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mPrePage:I

    iget-object v4, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mBigFolderIcon:Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getScrollDistance()F

    move-result v4

    iput v4, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mScrollStartX:F

    iget-object v4, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mScrollStartPoint:Landroid/graphics/PointF;

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {v4, v5, v2}, Landroid/graphics/PointF;->set(FF)V

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->getMPreviewPage()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mCurrentPage:I

    iget-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mBigFolderIcon:Lcom/android/launcher3/folder/big/BigFolderIcon;

    if-nez v0, :cond_11d

    goto :goto_120

    :cond_11d
    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->onScrollPageStart()V

    :goto_120
    iget-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mBigFolderIcon:Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getIndicator()Lcom/coui/appcompat/indicator/COUIPageIndicator;

    move-result-object v0

    if-nez v0, :cond_129

    goto :goto_13b

    :cond_129
    invoke-virtual {v0, v3}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->c(I)V

    goto :goto_13b

    :cond_12d
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mScrollStartPoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/big/BigFolderTouchController;->computeScroll(F)Z

    move-result v0

    move v1, v0

    :cond_13b
    :goto_13b
    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/big/BigFolderTouchController;->checkTouchResetAnim(Landroid/view/MotionEvent;)V

    goto :goto_18f

    :cond_13f
    iget-boolean v0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mScrollStart:Z

    if-eqz v0, :cond_147

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/big/BigFolderTouchController;->scrollEndAction(Landroid/view/MotionEvent;)V

    move v1, v3

    :cond_147
    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/big/BigFolderTouchController;->checkTouchResetAnim(Landroid/view/MotionEvent;)V

    iget-object p0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mVelocityTracking:Landroid/view/VelocityTracker;

    invoke-virtual {p0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_18f

    :cond_150
    iget-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mVelocityTracking:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mActivePoint:I

    iget-object p1, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mBigFolderIcon:Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/launcher3/folder/big/BigFolderIcon;->isScrolling()Z

    move-result p1

    if-eqz p1, :cond_189

    iget-object p1, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mBigFolderIcon:Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getScrollDistance()F

    move-result p1

    iget v0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mTargetPageInAnimation:F

    iget-object v2, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mBigFolderIcon:Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getIconWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v0, v2

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v0, 0x41a00000  # 20.0f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_189

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderTouchController;->scrollStartAction()V

    move v1, v3

    goto :goto_18c

    :cond_189
    invoke-direct {p0}, Lcom/android/launcher3/folder/big/BigFolderTouchController;->resetScroll()V

    :goto_18c
    invoke-direct {p0}, Lcom/android/launcher3/folder/big/BigFolderTouchController;->checkTouchDownAnim()V

    :goto_18f
    return v1

    :cond_190
    :goto_190
    const-string p1, "onTouchEvent return false, doClosingAnim: "

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mBigFolderIcon:Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getPreviewVerifier()Lcom/android/launcher3/folder/big/BigFolderGridOrganizer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/BigFolderGridOrganizer;->getDoClosingAnim()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " , isAnimateClosing: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mBigFolderIcon:Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getFolder()Lcom/android/launcher3/folder/Folder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->isAnimateClosing()Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BigFolderTouchController"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public final openFolderByClick()V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->hasBeenResumed()Z

    move-result v0

    const-string v1, "BigFolderTouchController"

    if-nez v0, :cond_10

    const-string p0, "onClickListener, click BG or Title, but launcher is not resumed"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_10
    iget-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v2, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/togglebar/ToggleBarManager;->getTopState()Lcom/android/launcher/togglebar/state/ToggleBarBaseState;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher/togglebar/state/ToggleBarWidgetState;

    if-eqz v0, :cond_33

    iget-object p0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher/togglebar/ToggleBarManager;->onBackPressed(Z)Z

    return-void

    :cond_33
    iget-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mBigFolderIcon:Lcom/android/launcher3/folder/big/BigFolderIcon;

    if-nez v0, :cond_38

    goto :goto_59

    :cond_38
    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->logInfo()Ljava/lang/String;

    move-result-object v2

    const-string v3, "onClick - "

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/launcher3/touch/ItemClickHandler;->onClickFolderIcon(Landroid/view/View;)V

    iget-object p0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mBigFolderIcon:Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object p0

    invoke-virtual {v0}, Lcom/android/launcher3/folder/OplusFolderIcon;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/statistics/LauncherStatistics;->statOpenBFByClick(Lcom/android/launcher3/model/data/FolderInfo;)V

    :goto_59
    return-void
.end method

.method public final scrollEndAction(Landroid/view/MotionEvent;)V
    .registers 6

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mBigFolderIcon:Lcom/android/launcher3/folder/big/BigFolderIcon;

    if-nez v0, :cond_b

    const/4 v0, 0x0

    goto :goto_f

    :cond_b
    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getPreviewItemManager()Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;

    move-result-object v0

    :goto_f
    if-nez v0, :cond_12

    return-void

    :cond_12
    iget-object v1, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mVelocityTracking:Landroid/view/VelocityTracker;

    iget v2, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mActivePoint:I

    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v1

    invoke-direct {p0}, Lcom/android/launcher3/folder/big/BigFolderTouchController;->getMNextPage()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_4a

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v2, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mDownPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v2, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mSnapPageThreshold:F

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_42

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v2, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mPageFlingSpeed:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_3f

    goto :goto_42

    :cond_3f
    iget v0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mPrePage:I

    goto :goto_46

    :cond_42
    :goto_42
    invoke-direct {p0}, Lcom/android/launcher3/folder/big/BigFolderTouchController;->getMNextPage()I

    move-result v0

    :goto_46
    invoke-direct {p0, v0}, Lcom/android/launcher3/folder/big/BigFolderTouchController;->snapToPageWithTouch(I)V

    goto :goto_6f

    :cond_4a
    iget-object v2, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mBigFolderIcon:Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getLeftPage()I

    move-result v2

    if-eq v2, v3, :cond_59

    iget-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mBigFolderIcon:Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getLeftPage()I

    move-result v0

    goto :goto_6c

    :cond_59
    iget-object v2, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mBigFolderIcon:Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getRightPage()I

    move-result v2

    if-eq v2, v3, :cond_68

    iget-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mBigFolderIcon:Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getRightPage()I

    move-result v0

    goto :goto_6c

    :cond_68
    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->getMPreviewPage()I

    move-result v0

    :goto_6c
    invoke-direct {p0, v0}, Lcom/android/launcher3/folder/big/BigFolderTouchController;->snapToPageWithTouch(I)V

    :goto_6f
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_b4

    const-string v0, "scrollEndAction: leftPage: "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mBigFolderIcon:Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getLeftPage()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " rightPage: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mBigFolderIcon:Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getRightPage()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " distance: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget-object v2, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mDownPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr p1, v2

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " speed: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BigFolderTouchController"

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b4
    invoke-direct {p0}, Lcom/android/launcher3/folder/big/BigFolderTouchController;->resetScroll()V

    return-void
.end method

.method public final scrollStartAction()V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mScrollStart:Z

    iget-object v1, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mSnapPageAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_18

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mSnapPageAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_18
    iget-object v1, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mBigFolderIcon:Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getScrollDistance()F

    move-result v1

    iput v1, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mScrollStartX:F

    iget-object v1, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mDownPoint:Landroid/graphics/PointF;

    iput-object v1, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mScrollStartPoint:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mBigFolderIcon:Lcom/android/launcher3/folder/big/BigFolderIcon;

    if-nez v1, :cond_2c

    goto :goto_2f

    :cond_2c
    invoke-virtual {v1}, Lcom/android/launcher3/folder/big/BigFolderIcon;->onScrollPageStart()V

    :goto_2f
    iget-object p0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/launcher/OplusPagedViewImpl;->setMBigFolderIntercept(Z)V

    return-void
.end method

.method public final setMIsDrag(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mIsDrag:Z

    return-void
.end method

.method public final setMScrollEndRunnable(Ljava/lang/Runnable;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mScrollEndRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public final snapHalfPage()V
    .registers 3

    const/high16 v0, 0x3f000000  # 0.5f

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/folder/big/BigFolderTouchController;->snapToPageWithFloat(FZ)V

    return-void
.end method

.method public final snapPageValid()Z
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mBigFolderIcon:Lcom/android/launcher3/folder/big/BigFolderIcon;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    goto :goto_e

    :cond_6
    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getIconPageNum()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_e
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v0, 0x1

    if-le p0, v0, :cond_19

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    return v0
.end method

.method public final snapToPage(I)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController;->mBigFolderIcon:Lcom/android/launcher3/folder/big/BigFolderIcon;

    if-nez v1, :cond_b

    const/4 v1, 0x0

    goto :goto_f

    :cond_b
    invoke-virtual {v1}, Lcom/android/launcher3/folder/big/BigFolderIcon;->logInfo()Ljava/lang/String;

    move-result-object v1

    :goto_f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", snapToPage nextPage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BigFolderTouchController"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    int-to-float p1, p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/folder/big/BigFolderTouchController;->snapToPageWithFloat(FZ)V

    return-void
.end method
