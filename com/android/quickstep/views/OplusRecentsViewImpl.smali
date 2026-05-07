.class public abstract Lcom/android/quickstep/views/OplusRecentsViewImpl;
.super Lcom/android/quickstep/views/RecentsView;
.source ""

# interfaces
.implements Lcom/oplus/quickstep/dock/DockContract$Recent;
.implements Lcom/oplus/quickstep/common/observers/ZoomWindowChangeObserver$ZoomWindowChange;
.implements Lcom/android/launcher3/util/DisplayController$DisplayInfoChangeListener;
.implements Lcom/android/quickstep/TopTaskTracker$OnTaskStageChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/views/OplusRecentsViewImpl$Companion;,
        Lcom/android/quickstep/views/OplusRecentsViewImpl$OnCurrentScrollChangeListener;,
        Lcom/android/quickstep/views/OplusRecentsViewImpl$GoHomeListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/launcher3/statemanager/StatefulActivity<",
        "TSTATE_TYPE;>;STATE_TYPE::",
        "Lcom/android/launcher3/statemanager/BaseState<",
        "TSTATE_TYPE;>;>",
        "Lcom/android/quickstep/views/RecentsView<",
        "TT;TSTATE_TYPE;>;",
        "Lcom/oplus/quickstep/dock/DockContract$Recent;",
        "Lcom/oplus/quickstep/common/observers/ZoomWindowChangeObserver$ZoomWindowChange;",
        "Lcom/android/launcher3/util/DisplayController$DisplayInfoChangeListener;",
        "Lcom/android/quickstep/TopTaskTracker$OnTaskStageChangedListener;"
    }
.end annotation


# static fields
.field private static final ALLOW_RESIZEABLE_SCREEN:Ljava/lang/String; = "allow_resizeable_screen"

.field private static final ALPHA_FLAG:F = 0.5f

.field private static final CLEAR_ALL_EXCEPTED_TASK_VIEW_DELAY:J = 0x0L

.field private static final CLEAR_ALL_REMOVE_VIEW_TIME_OUT:J = 0x3e8L

.field public static final Companion:Lcom/android/quickstep/views/OplusRecentsViewImpl$Companion;

.field private static final DISMISS_TASK_DURATION:J = 0x12cL

.field private static final MAX_ALPHA:I = 0xff

.field private static final SHOW_EMPTY_MESSAGE_FRACTION:F = 0.5f

.field private static final SNAP_TO_NEXT_PAGE_DURATION:I = 0x2a8

.field private static final SNAP_TO_PAGE_RELATIVE_DELAY:J = 0x1f4L

.field private static final TAG:Ljava/lang/String; = "OplusRecentsView"

.field private static changeFromLauncher:Z


# instance fields
.field private actionMoveY:I

.field private final booster$delegate:Ly2/e;

.field private dockView:Lcom/oplus/quickstep/dock/DockView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/quickstep/dock/DockView<",
            "*>;"
        }
    .end annotation
.end field

.field private forceHideEmptyMessage:Z

.field private forceUpdateScaleAndPadding:Z

.field private hasReset:Z

.field private interceptUpdateCurrentScroll:Z

.field private isGoingToNormalAnimationStarted:Z

.field private isRecentsViewDragStarted:Z

.field private isRecentsViewScrollStarted:Z

.field private isRemovingAllTaskViews:Z

.field private isScrolling:Z

.field private isSetRotationByActivityInit:Z

.field private isWaitTaskAnimationStart:Z

.field private lastLoadTaskDataCenterIndex:I

.field private logLoadVisibleTaskData:Z

.field private final mAllowResizeableInSettingObserver:Landroid/database/ContentObserver;

.field private mBeginScrollOnMultiWindow:Z

.field private mCallback:Lcom/oplus/exsystemservice/fantasywindow/IFantasyCallback;

.field private mClearAllButtonImage:Landroid/view/View;

.field private mCompatibleModeObserver:Lcom/oplus/exsystemservice/fantasywindow/IFantasyObserver;

.field private mCurrentGestureState:Lcom/android/quickstep/GestureState;

.field private mCurrentScroll:I

.field private mCurrentScrollChangeListener:Lcom/android/quickstep/views/OplusRecentsViewImpl$OnCurrentScrollChangeListener;

.field private final mDelayHandler:Landroid/os/Handler;

.field private mDisallowScrollByTouch:Z

.field private mDisallowUpdateCurrentScroll:Z

.field private final mDragModeReceiver:Lcom/oplus/quickstep/receiver/DragModeReceiver;

.field private mExceptedRemovedTaskView:Lcom/android/quickstep/views/TaskView;

.field private mFirstIntoRecents:Z

.field private mFoldScreenExpanded:Z

.field private mForceReturnToOriginalPage:Z

.field private mForceUseRealScroll:Z

.field private final mGaReceiver$delegate:Ly2/e;

.field private mGestureAnimationStarted:Z

.field private mGoHomeListener:Lcom/android/quickstep/views/OplusRecentsViewImpl$GoHomeListener;

.field private mHasRemoveAllViewsTask:Z

.field private mIsCancelEventFromDispatcher:Z

.field private mIsClearViewAdded:Z

.field private mIsSnapToPageStart:Z

.field private mIsWorkspaceInvisible:Z

.field private mLastCenterPageIndex:I

.field private mLastOrientation:I

.field private mOrientationHandlerChanged:Z

.field private mPreOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

.field private final mRemoveAllViewsTask:Ljava/lang/Runnable;

.field private mRotateAnimation:Landroid/animation/AnimatorSet;

.field private final mScrollState:Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$ScrollState;

.field private mSkipSetCurrentTask:Z

.field private mTaskTopMargin:I

.field private mTouchDownScrollValue:I

.field private mZoomWindowChangeobserver:Lcom/oplus/quickstep/common/observers/ZoomWindowChangeObserver;

.field private mZoomWindowName:Ljava/lang/String;

.field private oplusCleanStorageFrameLayout:Lcom/oplus/quickstep/views/OplusCleanStorageFrameLayout;

.field private recentAnimateDragging:Z

.field private final recentsViewTransY:Lcom/android/quickstep/AnimatedFloat;

.field private final relayInteraction:Lcom/oplus/quickstep/relay/RecentRelayInteraction;

.field private reloadVisibleTaskData:Z

.field private snapImmediatelyByTaskDismiss:Z

.field private springAnimToRecent:Z

.field private final tempTaskRect:Landroid/graphics/Rect;

.field private final transYProperty$delegate:Ly2/e;

.field private windowTranslationYOffset:I

.field private xLocation:F

.field private yLocation:F


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/quickstep/views/OplusRecentsViewImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->Companion:Lcom/android/quickstep/views/OplusRecentsViewImpl$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/android/quickstep/BaseActivityInterface;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/AttributeSet;",
            "I",
            "Lcom/android/quickstep/BaseActivityInterface<",
            "**>;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "sizeStrategy"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/quickstep/views/RecentsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/android/quickstep/BaseActivityInterface;)V

    new-instance p2, Lcom/android/quickstep/AnimatedFloat;

    new-instance p3, Lcom/android/quickstep/views/h;

    const/4 p4, 0x0

    invoke-direct {p3, p0, p4}, Lcom/android/quickstep/views/h;-><init>(Lcom/android/quickstep/views/OplusRecentsViewImpl;I)V

    invoke-direct {p2, p3}, Lcom/android/quickstep/AnimatedFloat;-><init>(Ljava/lang/Runnable;)V

    iput-object p2, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->recentsViewTransY:Lcom/android/quickstep/AnimatedFloat;

    sget-object p2, Ly2/g;->c:Ly2/g;

    new-instance p3, Lcom/android/quickstep/views/OplusRecentsViewImpl$booster$2;

    invoke-direct {p3, p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl$booster$2;-><init>(Lcom/android/quickstep/views/OplusRecentsViewImpl;)V

    invoke-static {p2, p3}, Ly2/f;->b(Ly2/g;Lkotlin/jvm/functions/Function0;)Ly2/e;

    move-result-object p3

    iput-object p3, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->booster$delegate:Ly2/e;

    sget-object p3, Lcom/android/quickstep/views/OplusRecentsViewImpl$transYProperty$2;->INSTANCE:Lcom/android/quickstep/views/OplusRecentsViewImpl$transYProperty$2;

    invoke-static {p2, p3}, Ly2/f;->b(Ly2/g;Lkotlin/jvm/functions/Function0;)Ly2/e;

    move-result-object p3

    iput-object p3, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->transYProperty$delegate:Ly2/e;

    new-instance p3, Lcom/oplus/quickstep/relay/RecentRelayInteraction;

    invoke-direct {p3, p0}, Lcom/oplus/quickstep/relay/RecentRelayInteraction;-><init>(Lcom/android/quickstep/views/OplusRecentsViewImpl;)V

    iput-object p3, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->relayInteraction:Lcom/oplus/quickstep/relay/RecentRelayInteraction;

    new-instance p3, Lcom/android/quickstep/views/h;

    const/4 v0, 0x1

    invoke-direct {p3, p0, v0}, Lcom/android/quickstep/views/h;-><init>(Lcom/android/quickstep/views/OplusRecentsViewImpl;I)V

    iput-object p3, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mRemoveAllViewsTask:Ljava/lang/Runnable;

    new-instance p3, Lcom/oplus/quickstep/receiver/DragModeReceiver;

    invoke-direct {p3}, Lcom/oplus/quickstep/receiver/DragModeReceiver;-><init>()V

    iput-object p3, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mDragModeReceiver:Lcom/oplus/quickstep/receiver/DragModeReceiver;

    sget-object p3, Lcom/android/quickstep/views/OplusRecentsViewImpl$mGaReceiver$2;->INSTANCE:Lcom/android/quickstep/views/OplusRecentsViewImpl$mGaReceiver$2;

    invoke-static {p2, p3}, Ly2/f;->b(Ly2/g;Lkotlin/jvm/functions/Function0;)Ly2/e;

    move-result-object p2

    iput-object p2, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mGaReceiver$delegate:Ly2/e;

    const p2, 0x7fffffff

    iput p2, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mLastCenterPageIndex:I

    new-instance p2, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$ScrollState;

    invoke-direct {p2}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$ScrollState;-><init>()V

    iput-object p2, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mScrollState:Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$ScrollState;

    const/4 p2, -0x1

    iput p2, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mTouchDownScrollValue:I

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result p3

    iput-boolean p3, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mFoldScreenExpanded:Z

    iput-boolean v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mFirstIntoRecents:Z

    new-instance p3, Landroid/os/Handler;

    invoke-direct {p3}, Landroid/os/Handler;-><init>()V

    iput-object p3, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mDelayHandler:Landroid/os/Handler;

    iput p2, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->lastLoadTaskDataCenterIndex:I

    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    new-instance p3, Lcom/android/quickstep/views/OplusRecentsViewImpl$mAllowResizeableInSettingObserver$1;

    invoke-direct {p3, p0, p2}, Lcom/android/quickstep/views/OplusRecentsViewImpl$mAllowResizeableInSettingObserver$1;-><init>(Lcom/android/quickstep/views/OplusRecentsViewImpl;Landroid/os/Handler;)V

    iput-object p3, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mAllowResizeableInSettingObserver:Landroid/database/ContentObserver;

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->tempTaskRect:Landroid/graphics/Rect;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const p3, 0x7f0d0173

    const/4 v1, 0x0

    invoke-virtual {p2, p3, v1, p4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const-string p3, "null cannot be cast to non-null type com.oplus.quickstep.views.OplusClearAllPanelView"

    invoke-static {p2, p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Lcom/oplus/quickstep/views/OplusClearAllPanelView;

    iput-object p2, p0, Lcom/android/quickstep/views/RecentsView;->mClearAllButton:Lcom/oplus/quickstep/views/OplusClearAllPanelView;

    const p3, 0x7f0a00ec

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mClearAllButtonImage:Landroid/view/View;

    iget-object p2, p0, Lcom/android/quickstep/views/RecentsView;->mClearAllButton:Lcom/oplus/quickstep/views/OplusClearAllPanelView;

    new-instance p3, Lcom/android/launcher/touch/b;

    invoke-direct {p3, p0, p1}, Lcom/android/launcher/touch/b;-><init>(Lcom/android/quickstep/views/OplusRecentsViewImpl;Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->setOnClearClickListener(Landroid/view/View$OnClickListener;)V

    sget-object p2, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;->Companion:Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger$Companion;

    invoke-virtual {p2}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger$Companion;->shouldShowPhoneManagerCleanSwitch()Z

    move-result p2

    if-eqz p2, :cond_d5

    iget-object p2, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->oplusCleanStorageFrameLayout:Lcom/oplus/quickstep/views/OplusCleanStorageFrameLayout;

    if-nez p2, :cond_ce

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const p3, 0x7f0d0171

    invoke-virtual {p2, p3, v1, p4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const-string p3, "null cannot be cast to non-null type com.oplus.quickstep.views.OplusCleanStorageFrameLayout"

    invoke-static {p2, p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Lcom/oplus/quickstep/views/OplusCleanStorageFrameLayout;

    iput-object p2, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->oplusCleanStorageFrameLayout:Lcom/oplus/quickstep/views/OplusCleanStorageFrameLayout;

    :cond_ce
    iget-object p2, p0, Lcom/android/quickstep/views/RecentsView;->mClearAllButton:Lcom/oplus/quickstep/views/OplusClearAllPanelView;

    iget-object p3, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->oplusCleanStorageFrameLayout:Lcom/oplus/quickstep/views/OplusCleanStorageFrameLayout;

    invoke-virtual {p2, p3}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->setClearStorageView(Lcom/oplus/quickstep/views/OplusCleanStorageFrameLayout;)V

    :cond_d5
    iget-object p2, p0, Lcom/android/quickstep/views/RecentsView;->mClearAllButton:Lcom/oplus/quickstep/views/OplusClearAllPanelView;

    const-string p3, "mClearAllButton"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->addView(Landroid/view/View;)V

    const p2, 0x7f1203aa

    invoke-virtual {p1, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/android/quickstep/views/RecentsView;->mEmptyMessage:Ljava/lang/CharSequence;

    iget-object p1, p0, Lcom/android/quickstep/views/RecentsView;->mEmptyMessagePaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setFlags(I)V

    iput p4, p0, Lcom/android/quickstep/views/RecentsView;->mEmptyMessagePadding:I

    sget-object p1, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {p1}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result p2

    if-eqz p2, :cond_110

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const-string p3, "resources"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f0b0015

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p3

    invoke-static {p2, p3}, Lcom/oplus/quickstep/utils/OplusTaskUtils;->convertDpToPixel(Landroid/content/res/Resources;I)I

    move-result p2

    goto :goto_11b

    :cond_110
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f070291

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    :goto_11b
    iput p2, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mTaskTopMargin:I

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->updateEmptyMessage()V

    iput-boolean v0, p0, Lcom/android/quickstep/views/RecentsView;->mDisallowScrollToClearAll:Z

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f070d5c

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->windowTranslationYOffset:I

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result p2

    const/4 p3, 0x2

    int-to-float p3, p3

    div-float/2addr p2, p3

    iget-object p3, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    invoke-virtual {p1}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result p4

    xor-int/2addr p4, v0

    invoke-virtual {p3, p4}, Lcom/android/launcher3/util/OverScroller;->useFrictionCoefficient(Z)V

    invoke-virtual {p1}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result p1

    if-eqz p1, :cond_14b

    iget-object p1, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    invoke-virtual {p1, p2}, Lcom/android/launcher3/util/OverScroller;->setFriction(F)V

    :cond_14b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "init: scrollFriction = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, ", mTaskTopMargin = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mTaskTopMargin:I

    const-string p2, "QuickStep"

    const-string p3, "OplusRecentsView"

    invoke-static {p1, p0, p2, p3}, Lcom/android/launcher/download/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic Q(Lcom/android/quickstep/views/OplusRecentsViewImpl;)V
    .registers 1

    invoke-static {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mRemoveAllViewsTask$lambda-1(Lcom/android/quickstep/views/OplusRecentsViewImpl;)V

    return-void
.end method

.method public static synthetic R(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->goHome$lambda-35(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    return-void
.end method

.method public static synthetic S(FLcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->updatePageOffsetsAsGrid$lambda-21(FLcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)V

    return-void
.end method

.method public static synthetic T(Lcom/android/quickstep/views/OplusRecentsViewImpl;)V
    .registers 1

    invoke-static {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->reloadShortcutIcon$lambda-39(Lcom/android/quickstep/views/OplusRecentsViewImpl;)V

    return-void
.end method

.method public static synthetic U(Lcom/android/quickstep/views/OplusRecentsViewImpl;II)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->snapToPageRelative$lambda-40(Lcom/android/quickstep/views/OplusRecentsViewImpl;II)V

    return-void
.end method

.method public static synthetic V(Lcom/android/quickstep/views/OplusRecentsViewImpl;Landroid/content/Context;Landroid/view/View;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->_init_$lambda-2(Lcom/android/quickstep/views/OplusRecentsViewImpl;Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic W(Lcom/android/launcher3/DeviceProfile;Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setInsets$lambda-22(Lcom/android/launcher3/DeviceProfile;Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)V

    return-void
.end method

.method public static synthetic X(Lcom/android/quickstep/views/OplusRecentsViewImpl;)V
    .registers 1

    invoke-static {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->recentsViewTransY$lambda-0(Lcom/android/quickstep/views/OplusRecentsViewImpl;)V

    return-void
.end method

.method public static synthetic Y(Lcom/android/quickstep/views/OplusRecentsViewImpl;)V
    .registers 1

    invoke-static {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->onAttachedToWindow$lambda-3(Lcom/android/quickstep/views/OplusRecentsViewImpl;)V

    return-void
.end method

.method private static final _init_$lambda-2(Lcom/android/quickstep/views/OplusRecentsViewImpl;Landroid/content/Context;Landroid/view/View;)V
    .registers 10

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/common/util/ClickUtils;->INSTANCE:Lcom/android/common/util/ClickUtils;

    invoke-virtual {v0}, Lcom/android/common/util/ClickUtils;->clickable()Z

    move-result v0

    const-string v1, "OplusRecentsView"

    const-string v2, "QuickStep"

    if-nez v0, :cond_1d

    const-string p0, "clearAllButton quick click, return!"

    invoke-static {v2, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1d
    const-string v0, "clearAllButton Click"

    invoke-static {v2, v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->dismissAllTasks(Landroid/view/View;)V

    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->mModel:Lcom/android/quickstep/RecentsModel;

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseRecentsModel;->forceReloadedTasks()V

    const/16 v1, 0x32

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lcom/android/common/util/VibrationUtils;->vibrate$default(Landroid/content/Context;IJZILjava/lang/Object;)V

    return-void
.end method

.method public static final synthetic access$getChangeFromLauncher$cp()Z
    .registers 1

    sget-boolean v0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->changeFromLauncher:Z

    return v0
.end method

.method public static final synthetic access$getMContext$p$s1361138260(Lcom/android/quickstep/views/OplusRecentsViewImpl;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$setChangeFromLauncher$cp(Z)V
    .registers 1

    sput-boolean p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->changeFromLauncher:Z

    return-void
.end method

.method public static final synthetic access$setLayoutRotationResult(Lcom/android/quickstep/views/OplusRecentsViewImpl;II)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setLayoutRotationResult(II)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$setMRotateAnimation$p(Lcom/android/quickstep/views/OplusRecentsViewImpl;Landroid/animation/AnimatorSet;)V
    .registers 2

    iput-object p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mRotateAnimation:Landroid/animation/AnimatorSet;

    return-void
.end method

.method public static final synthetic access$showOrNoTip(Lcom/android/quickstep/views/OplusRecentsViewImpl;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->showOrNoTip(I)V

    return-void
.end method

.method private final changeTaskVisibility(Lcom/android/quickstep/views/TaskView;IIZ)V
    .registers 14

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    goto :goto_13

    :cond_8
    iget-object v2, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-nez v2, :cond_d

    goto :goto_13

    :cond_d
    iget v1, v2, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_13
    if-nez v1, :cond_16

    return-void

    :cond_16
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mTmpRunningTasks:[Lcom/android/systemui/shared/recents/model/Task;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_22

    move v7, v3

    goto :goto_2f

    :cond_22
    array-length v5, v2

    move v6, v3

    move v7, v6

    :goto_25
    if-ge v6, v5, :cond_2f

    aget-object v8, v2, v6

    if-ne v0, v8, :cond_2c

    move v7, v4

    :cond_2c
    add-int/lit8 v6, v6, 0x1

    goto :goto_25

    :cond_2f
    :goto_2f
    if-eqz p4, :cond_52

    if-eqz v7, :cond_34

    return-void

    :cond_34
    iget-object p2, p0, Lcom/android/quickstep/views/RecentsView;->mHasVisibleTaskData:Landroid/util/SparseBooleanArray;

    invoke-virtual {p2, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p2

    if-nez p2, :cond_4c

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getRunningTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object p2

    if-ne p1, p2, :cond_49

    iget-boolean p2, p0, Lcom/android/quickstep/views/RecentsView;->mGestureActive:Z

    if-eqz p2, :cond_49

    xor-int/lit8 p2, p3, 0x2

    and-int/2addr p3, p2

    :cond_49
    invoke-virtual {p1, v4, p3}, Lcom/android/quickstep/views/TaskView;->onTaskListVisibilityChanged(ZI)V

    :cond_4c
    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->mHasVisibleTaskData:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, v1, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_a0

    :cond_52
    iget p4, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    add-int/lit8 v0, p4, -0x1

    add-int/2addr p4, v4

    if-gt p2, p4, :cond_5d

    if-gt v0, p2, :cond_5d

    move p4, v4

    goto :goto_5e

    :cond_5d
    move p4, v3

    :goto_5e
    if-eqz p4, :cond_90

    if-nez v7, :cond_90

    sget-boolean p4, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->isEnterStateAnimRunning:Z

    if-nez p4, :cond_73

    sget-object p4, Lcom/android/launcher3/LauncherState;->BACKGROUND_APP:Lcom/android/launcher3/LauncherState;

    const-string v0, "BACKGROUND_APP"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p4}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isInState(Lcom/android/launcher3/LauncherState;)Z

    move-result p4

    if-eqz p4, :cond_90

    :cond_73
    iget-boolean p4, p0, Lcom/android/launcher3/PagedView;->mIsPageInTransition:Z

    if-nez p4, :cond_90

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p4

    if-eqz p4, :cond_8c

    const-string p4, "changeTaskVisibility(), change "

    const-string v0, " visibility, i=$"

    invoke-static {p4, v1, v0, p2}, Landroidx/emoji2/text/flatbuffer/b;->a(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p4

    const-string v0, "QuickStep"

    const-string v1, "OplusRecentsView"

    invoke-static {v0, v1, p4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8c
    invoke-direct {p0, p1, p2, p3, v4}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->changeTaskVisibility(Lcom/android/quickstep/views/TaskView;IIZ)V

    goto :goto_a0

    :cond_90
    iget-object p2, p0, Lcom/android/quickstep/views/RecentsView;->mHasVisibleTaskData:Landroid/util/SparseBooleanArray;

    invoke-virtual {p2, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p2

    if-eqz p2, :cond_9b

    invoke-virtual {p1, v3, p3}, Lcom/android/quickstep/views/TaskView;->onTaskListVisibilityChanged(ZI)V

    :cond_9b
    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->mHasVisibleTaskData:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, v1}, Landroid/util/SparseBooleanArray;->delete(I)V

    :goto_a0
    return-void
.end method

.method private final getLandDisplacementFromScreenCenter(II)I
    .registers 7

    iget v0, p0, Lcom/android/launcher3/PagedView;->mDownMotionY:F

    iget v1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->actionMoveY:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/4 v1, 0x0

    if-lez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    move v0, v1

    :goto_f
    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getChildVisibleSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v3

    if-ne v3, p1, :cond_21

    div-int/lit8 v1, v2, 0x2

    goto :goto_25

    :cond_21
    if-eqz v0, :cond_24

    goto :goto_25

    :cond_24
    move v1, v2

    :goto_25
    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getChildOffset(I)I

    move-result p0

    add-int/2addr p0, v1

    sub-int/2addr p0, p2

    return p0
.end method

.method private final getLastViewIndexWhenShowAsGrid(I)I
    .registers 5

    iget-boolean v0, p0, Lcom/android/quickstep/views/RecentsView;->mShowAsGridLastOnLayout:Z

    if-eqz v0, :cond_24

    iget-object p0, p0, Lcom/android/launcher3/PagedView;->mPageScrolls:[I

    const/4 v0, 0x0

    if-nez p0, :cond_b

    move v1, v0

    goto :goto_c

    :cond_b
    array-length v1, p0

    :goto_c
    const/4 v2, 0x3

    if-gt v1, v2, :cond_24

    const/4 v1, 0x1

    if-nez p0, :cond_14

    :cond_12
    move v1, v0

    goto :goto_1c

    :cond_14
    array-length p0, p0

    if-nez p0, :cond_19

    move p0, v1

    goto :goto_1a

    :cond_19
    move p0, v0

    :goto_1a
    if-nez p0, :cond_12

    :goto_1c
    if-eqz v1, :cond_24

    add-int/lit8 p1, p1, 0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    :cond_24
    return p1
.end method

.method private final getMGaReceiver()Lcom/oplus/quickstep/receiver/GoogleActionVoiceReceiver;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mGaReceiver$delegate:Ly2/e;

    invoke-interface {p0}, Ly2/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/quickstep/receiver/GoogleActionVoiceReceiver;

    return-object p0
.end method

.method private final getObserverBinder()Lcom/oplus/exsystemservice/fantasywindow/IFantasyObserver;
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "com.oplus.fantasywindow.fantasywindowprovider"

    const-string v3, "method_fantasy_get_observer"

    invoke-virtual {v1, v2, v3, v0, v0}, Landroid/content/ContentResolver;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_3d

    const-string v2, "fantasy_observer_binder"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_3d

    new-instance v2, Lcom/oplus/quickstep/common/observers/CompatibleModeObserver;

    invoke-direct {v2}, Lcom/oplus/quickstep/common/observers/CompatibleModeObserver;-><init>()V

    iput-object v2, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mCallback:Lcom/oplus/exsystemservice/fantasywindow/IFantasyCallback;

    invoke-static {v1}, Lcom/oplus/exsystemservice/fantasywindow/IFantasyObserver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/exsystemservice/fantasywindow/IFantasyObserver;

    move-result-object v1

    const-string v2, "compactwindow"

    iget-object v3, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mCallback:Lcom/oplus/exsystemservice/fantasywindow/IFantasyCallback;

    invoke-interface {v1, v2, v3}, Lcom/oplus/exsystemservice/fantasywindow/IFantasyObserver;->registerObserver(Ljava/lang/String;Lcom/oplus/exsystemservice/fantasywindow/IFantasyCallback;)V

    const-string v2, "magicwindow"

    iget-object p0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mCallback:Lcom/oplus/exsystemservice/fantasywindow/IFantasyCallback;

    invoke-interface {v1, v2, p0}, Lcom/oplus/exsystemservice/fantasywindow/IFantasyObserver;->registerObserver(Ljava/lang/String;Lcom/oplus/exsystemservice/fantasywindow/IFantasyCallback;)V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_32} :catch_33

    return-object v1

    :catch_33
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "OplusRecentsView"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3d
    return-object v0
.end method

.method private final getOplusTaskViewAtByAbsoluteIndex(I)Lcom/android/quickstep/views/OplusTaskViewImpl;
    .registers 4

    const/4 v0, 0x0

    if-ltz p1, :cond_a

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge p1, v1, :cond_a

    const/4 v0, 0x1

    :cond_a
    const/4 v1, 0x0

    if-eqz v0, :cond_18

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    instance-of p1, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;

    if-eqz p1, :cond_18

    move-object v1, p0

    check-cast v1, Lcom/android/quickstep/views/OplusTaskViewImpl;

    :cond_18
    return-object v1
.end method

.method private static final goHome$lambda-35(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$toState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isGoingToNormalAnimationStarted:Z

    iget-object p0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    const-string p1, "null cannot be cast to non-null type com.android.launcher3.states.OPlusBaseState"

    invoke-static {p0, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/states/OPlusBaseState;

    invoke-virtual {p0}, Lcom/android/launcher3/states/OPlusBaseState;->resetActionFlag()V

    return-void
.end method

.method private final invalidCurrentPage(I)Z
    .registers 3

    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsPageInTransition:Z

    if-eqz v0, :cond_19

    iget v0, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    if-eq v0, p1, :cond_19

    const/4 p1, -0x1

    if-eq v0, p1, :cond_19

    iget-boolean p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mOrientationHandlerChanged:Z

    if-nez p1, :cond_19

    iget-boolean p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mGestureAnimationStarted:Z

    if-nez p1, :cond_19

    iget-boolean p0, p0, Lcom/android/quickstep/views/RecentsView;->mGestureActive:Z

    if-nez p0, :cond_19

    const/4 p0, 0x1

    goto :goto_1a

    :cond_19
    const/4 p0, 0x0

    :goto_1a
    return p0
.end method

.method private final launchTaskViewWhenTouch()Z
    .registers 6

    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    iget v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mTouchDownScrollValue:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_12

    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v2, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScroll(Landroid/view/View;)I

    move-result v2

    if-ne v0, v2, :cond_13

    :cond_12
    return v1

    :cond_13
    invoke-virtual {p0, v1}, Lcom/android/quickstep/views/RecentsView;->getTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    if-nez v0, :cond_1a

    goto :goto_35

    :cond_1a
    iget v2, p0, Lcom/android/quickstep/views/RecentsView;->mDownX:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/quickstep/views/RecentsView;->mDownY:I

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v0, v4}, Landroid/view/ViewGroup;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result p0

    if-eqz p0, :cond_35

    const-string p0, "QuickStep"

    const-string v1, "OplusRecentsView"

    const-string v2, "launchTaskViewWhenTouch()"

    invoke-static {p0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView;->launchTaskAnimated()Lcom/android/launcher3/util/RunnableList;

    const/4 p0, 0x1

    move v1, p0

    :cond_35
    :goto_35
    return v1
.end method

.method private static final mRemoveAllViewsTask$lambda-1(Lcom/android/quickstep/views/OplusRecentsViewImpl;)V
    .registers 4

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mHasRemoveAllViewsTask:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "removeAllViews run, hasRemoved="

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickStep"

    const-string v2, "OplusRecentsView"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->removeTasksViewsAndClearAllButton()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mHasRemoveAllViewsTask:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mExceptedRemovedTaskView:Lcom/android/quickstep/views/TaskView;

    return-void
.end method

.method private static final onAttachedToWindow$lambda-3(Lcom/android/quickstep/views/OplusRecentsViewImpl;)V
    .registers 2

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getObserverBinder()Lcom/oplus/exsystemservice/fantasywindow/IFantasyObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mCompatibleModeObserver:Lcom/oplus/exsystemservice/fantasywindow/IFantasyObserver;

    return-void
.end method

.method private final onScrollingChange(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isScrolling:Z

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    iput-boolean p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isScrolling:Z

    if-eqz p1, :cond_16

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getBooster()Lcom/oplus/quickstep/utils/RecentsBooster;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/quickstep/utils/RecentsBooster;->openGpu()V

    sget-object p1, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    invoke-virtual {p1, p0}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->cancelLightningAnimation(Lcom/android/quickstep/views/OplusRecentsViewImpl;)V

    goto :goto_22

    :cond_16
    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getBooster()Lcom/oplus/quickstep/utils/RecentsBooster;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/quickstep/utils/RecentsBooster;->closeGpu()V

    sget-object p1, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    invoke-virtual {p1, p0}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->showLightningAnimation(Lcom/android/quickstep/views/OplusRecentsViewImpl;)V

    :goto_22
    return-void
.end method

.method private static final recentsViewTransY$lambda-0(Lcom/android/quickstep/views/OplusRecentsViewImpl;)V
    .registers 2

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->updateTransY()V

    return-void
.end method

.method private static final reloadShortcutIcon$lambda-39(Lcom/android/quickstep/views/OplusRecentsViewImpl;)V
    .registers 9

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->Companion:Lcom/oplus/quickstep/views/OplusTaskHeaderView$Companion;

    invoke-virtual {v0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView$Companion;->getMiniWindowName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Default"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getTaskViewCount()I

    move-result v1

    const-string v2, "OplusRecentsView"

    if-lez v1, :cond_8f

    const/4 v3, 0x0

    :goto_1b
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/quickstep/views/RecentsView;->getTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v5

    instance-of v5, v5, Lcom/android/quickstep/views/OplusTaskViewImpl;

    if-eqz v5, :cond_8a

    invoke-virtual {p0, v3}, Lcom/android/quickstep/views/RecentsView;->getTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v3

    instance-of v5, v3, Lcom/android/quickstep/views/OplusTaskViewImpl;

    const/4 v6, 0x0

    if-eqz v5, :cond_31

    check-cast v3, Lcom/android/quickstep/views/OplusTaskViewImpl;

    goto :goto_32

    :cond_31
    move-object v3, v6

    :goto_32
    if-eqz v3, :cond_85

    invoke-virtual {v3}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v5

    if-nez v5, :cond_3c

    move-object v5, v6

    goto :goto_40

    :cond_3c
    invoke-virtual {v5}, Lcom/android/systemui/shared/recents/model/Task;->getPackageName()Ljava/lang/String;

    move-result-object v5

    :goto_40
    if-eqz v5, :cond_85

    instance-of v5, v3, Lcom/android/quickstep/views/OplusGroupedTaskView;

    if-eqz v5, :cond_47

    goto :goto_85

    :cond_47
    invoke-virtual {v3}, Lcom/android/quickstep/views/OplusTaskViewImpl;->getHeaderView()Lcom/oplus/quickstep/views/OplusTaskHeaderView;

    move-result-object v5

    invoke-virtual {v3}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v7

    invoke-virtual {v5, v7, v3}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->setShortCutIcon(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/quickstep/views/TaskView;)V

    if-nez v0, :cond_8a

    invoke-virtual {v3}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v5

    if-nez v5, :cond_5b

    goto :goto_5d

    :cond_5b
    iget-object v6, v5, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    :goto_5d
    if-eqz v6, :cond_8a

    invoke-virtual {v3}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5}, Lcom/android/systemui/shared/recents/model/Task;->getPackageName()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->Companion:Lcom/oplus/quickstep/views/OplusTaskHeaderView$Companion;

    invoke-virtual {v6}, Lcom/oplus/quickstep/views/OplusTaskHeaderView$Companion;->getMiniWindowName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8a

    invoke-virtual {v3}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v3, v3, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v3, v3, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v6, v3}, Lcom/oplus/quickstep/views/OplusTaskHeaderView$Companion;->setMiniWindowTaskId(I)V

    goto :goto_8a

    :cond_85
    :goto_85
    const-string v3, "PairPkg return"

    invoke-static {v2, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8a
    :goto_8a
    if-lt v4, v1, :cond_8d

    goto :goto_8f

    :cond_8d
    move v3, v4

    goto :goto_1b

    :cond_8f
    :goto_8f
    const-string p0, "reloadShortcutIcon"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static final setInsets$lambda-22(Lcom/android/launcher3/DeviceProfile;Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)V
    .registers 3

    const-string v0, "$dp"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "remoteTargetHandle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/quickstep/util/TaskViewSimulator;->setDp(Lcom/android/launcher3/DeviceProfile;)V

    return-void
.end method

.method private final setLayoutRotationResult(II)Z
    .registers 7

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {v0, p1, p2}, Lcom/android/quickstep/util/RecentsOrientedState;->update(II)Z

    move-result v0

    const-string v1, "setLayoutRotationResult(), touchRotation="

    const-string v2, ", displayRotation="

    const-string v3, ", update="

    invoke-static {v1, p1, v2, p2, v3}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "QuickStep"

    const-string v1, "OplusRecentsView"

    invoke-static {p2, v1, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_28

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->updateOrientationHandler()V

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->updateChildTaskOrientations()V

    const/4 p0, 0x1

    return p0

    :cond_28
    const/4 p0, 0x0

    return p0
.end method

.method private final showOrNoTip(I)V
    .registers 6

    sget-object v0, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;->Companion:Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger$Companion;

    invoke-virtual {v0}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger$Companion;->needShowPhoneManagerEntranceAtLast()Z

    move-result v0

    if-eqz v0, :cond_43

    sget-object v0, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceGuide;->INSTANCE:Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceGuide;

    invoke-virtual {v0}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceGuide;->hasShowGuide()Z

    move-result v1

    if-nez v1, :cond_43

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "alpha: "

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "QuickStep"

    const-string v3, "OplusRecentsView"

    invoke-static {v2, v3, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_43

    sget-object p1, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    const-string v1, "OVERVIEW"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isInState(Lcom/android/launcher3/LauncherState;)Z

    move-result p1

    if-eqz p1, :cond_43

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getAlpha()F

    move-result p1

    const/high16 v1, 0x3f000000  # 0.5f

    cmpl-float p1, p1, v1

    if-lez p1, :cond_43

    iget-object p0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->oplusCleanStorageFrameLayout:Lcom/oplus/quickstep/views/OplusCleanStorageFrameLayout;

    invoke-virtual {v0, p0}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceGuide;->showPhoneManagerEntranceTip(Landroid/view/View;)V

    :cond_43
    return-void
.end method

.method private static final snapToPageRelative$lambda-40(Lcom/android/quickstep/views/OplusRecentsViewImpl;II)V
    .registers 4

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/2addr p1, p2

    rem-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->snapToPage(I)Z

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method private final toMsg(Lcom/android/launcher3/touch/PagedOrientationHandler;)Ljava/lang/String;
    .registers 2

    sget-object p0, Lcom/android/launcher3/touch/PagedOrientationHandler;->PORTRAIT:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    const-string p0, "PORTRAIT"

    goto :goto_23

    :cond_b
    sget-object p0, Lcom/android/launcher3/touch/PagedOrientationHandler;->LANDSCAPE:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_16

    const-string p0, "LANDSCAPE"

    goto :goto_23

    :cond_16
    sget-object p0, Lcom/android/launcher3/touch/PagedOrientationHandler;->SEASCAPE:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_21

    const-string p0, "SEASCAPE"

    goto :goto_23

    :cond_21
    const-string p0, ""

    :goto_23
    return-object p0
.end method

.method private final updatePageOffsetsAsGrid()V
    .registers 17

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/quickstep/views/RecentsView;->mAdjacentPageHorizontalOffset:F

    sget-object v2, Lcom/android/launcher3/anim/Interpolators;->ACCEL_0_75:Landroid/view/animation/Interpolator;

    iget v3, v0, Lcom/android/quickstep/views/RecentsView;->mTaskModalness:F

    invoke-interface {v2, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    iget v4, v0, Lcom/android/quickstep/views/RecentsView;->mRunningTaskViewId:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1f

    iget-boolean v4, v0, Lcom/android/quickstep/views/RecentsView;->mRunningTaskTileHidden:Z

    if-nez v4, :cond_1a

    goto :goto_1f

    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/views/RecentsView;->getRunningTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v4

    goto :goto_20

    :cond_1f
    :goto_1f
    const/4 v4, 0x0

    :goto_20
    if-nez v4, :cond_23

    goto :goto_27

    :cond_23
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v5

    :goto_27
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v4

    add-int/lit8 v6, v5, -0x1

    if-ltz v6, :cond_34

    invoke-virtual {v0, v6, v5, v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getHorizontalOffsetSize(IIF)F

    move-result v6

    goto :goto_35

    :cond_34
    const/4 v6, 0x0

    :goto_35
    add-int/lit8 v8, v5, 0x1

    if-ge v8, v3, :cond_3e

    invoke-virtual {v0, v8, v5, v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getHorizontalOffsetSize(IIF)F

    move-result v1

    goto :goto_3f

    :cond_3e
    const/4 v1, 0x0

    :goto_3f
    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->showAsGrid()Z

    move-result v8

    if-eqz v8, :cond_56

    if-nez v4, :cond_49

    const/4 v10, 0x1

    goto :goto_4a

    :cond_49
    const/4 v10, 0x0

    :goto_4a
    if-ge v10, v3, :cond_51

    invoke-virtual {v0, v10, v4, v2}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getHorizontalOffsetSize(IIF)F

    move-result v2

    goto :goto_52

    :cond_51
    const/4 v2, 0x0

    :goto_52
    move v10, v2

    const/4 v2, 0x0

    const/4 v11, 0x0

    goto :goto_6c

    :cond_56
    add-int/lit8 v10, v4, -0x1

    if-ltz v10, :cond_5f

    invoke-virtual {v0, v10, v4, v2}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getHorizontalOffsetSize(IIF)F

    move-result v10

    goto :goto_60

    :cond_5f
    const/4 v10, 0x0

    :goto_60
    add-int/lit8 v11, v4, 0x1

    if-ge v11, v3, :cond_69

    invoke-virtual {v0, v11, v4, v2}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getHorizontalOffsetSize(IIF)F

    move-result v2

    goto :goto_6a

    :cond_69
    const/4 v2, 0x0

    :goto_6a
    move v11, v10

    const/4 v10, 0x0

    :goto_6c
    if-lez v3, :cond_d6

    const/4 v12, 0x0

    :goto_6f
    add-int/lit8 v13, v12, 0x1

    if-ne v12, v5, :cond_75

    const/4 v14, 0x0

    goto :goto_7a

    :cond_75
    if-ge v12, v5, :cond_79

    move v14, v6

    goto :goto_7a

    :cond_79
    move v14, v1

    :goto_7a
    if-ne v12, v4, :cond_7e

    const/4 v15, 0x0

    goto :goto_87

    :cond_7e
    if-eqz v8, :cond_82

    move v15, v10

    goto :goto_87

    :cond_82
    if-ge v12, v4, :cond_86

    move v15, v11

    goto :goto_87

    :cond_86
    move v15, v2

    :goto_87
    add-float/2addr v14, v15

    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    instance-of v7, v15, Lcom/android/quickstep/views/TaskView;

    if-eqz v7, :cond_b1

    if-eqz v7, :cond_9f

    move-object v7, v15

    check-cast v7, Lcom/android/quickstep/views/TaskView;

    invoke-virtual {v7}, Lcom/android/quickstep/views/TaskView;->getPrimaryTaskOffsetTranslationProperty()Landroid/util/FloatProperty;

    move-result-object v7

    const-string v9, "child.primaryTaskOffsetTranslationProperty"

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_aa

    :cond_9f
    iget-object v7, v0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v7}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryViewTranslate()Landroid/util/FloatProperty;

    move-result-object v7

    const-string v9, "null cannot be cast to non-null type android.util.FloatProperty<com.android.quickstep.views.TaskView>"

    invoke-static {v7, v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :goto_aa
    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v7, v15, v9}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    :cond_b1
    sget-object v7, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_QUICKSTEP_LIVE_TILE:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v7}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v7

    if-eqz v7, :cond_d0

    iget-boolean v7, v0, Lcom/android/quickstep/views/RecentsView;->mEnableDrawingLiveTile:Z

    if-eqz v7, :cond_d0

    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/views/RecentsView;->getRunningTaskIndex()I

    move-result v7

    if-ne v12, v7, :cond_d0

    new-instance v7, Lcom/android/quickstep/views/i;

    const/4 v9, 0x0

    invoke-direct {v7, v14, v9}, Lcom/android/quickstep/views/i;-><init>(FI)V

    invoke-virtual {v0, v7}, Lcom/android/quickstep/views/RecentsView;->runActionOnRemoteHandles(Ljava/util/function/Consumer;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/views/RecentsView;->redrawLiveTile()V

    goto :goto_d1

    :cond_d0
    const/4 v9, 0x0

    :goto_d1
    if-lt v13, v3, :cond_d4

    goto :goto_d6

    :cond_d4
    move v12, v13

    goto :goto_6f

    :cond_d6
    :goto_d6
    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->updateCurveProperties()V

    return-void
.end method

.method private static final updatePageOffsetsAsGrid$lambda-21(FLcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)V
    .registers 3

    const-string v0, "remoteTargetHandle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object p1

    iget-object p1, p1, Lcom/android/quickstep/util/TaskViewSimulator;->taskPrimaryTranslation:Lcom/android/quickstep/AnimatedFloat;

    iput p0, p1, Lcom/android/quickstep/AnimatedFloat;->value:F

    return-void
.end method

.method private final updateTransY()V
    .registers 4

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {v0}, Lcom/android/quickstep/util/RecentsOrientedState;->getOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->recentsViewTransY:Lcom/android/quickstep/AnimatedFloat;

    iget v1, v1, Lcom/android/quickstep/AnimatedFloat;->value:F

    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {v2}, Lcom/android/quickstep/util/RecentsOrientedState;->getDisplayRotation()I

    move-result v2

    invoke-interface {v0, p0, v1, v2}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;->setPrimaryTranslate(Landroid/view/View;FI)V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .registers 1

    return-void
.end method

.method public addDismissedTaskAnimations(Lcom/android/quickstep/views/TaskView;JLcom/android/launcher3/anim/PendingAnimation;)V
    .registers 12

    const-string/jumbo v0, "taskView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "anim"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->addDismissedTaskAnimations(Lcom/android/quickstep/views/OplusRecentsViewImpl;Landroid/view/View;JLcom/android/launcher3/anim/PendingAnimation;)V

    return-void
.end method

.method public final addView(Landroid/view/View;)V
    .registers 4

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mClearAllButton:Lcom/oplus/quickstep/views/OplusClearAllPanelView;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    iget-boolean v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mIsClearViewAdded:Z

    if-eqz v0, :cond_1c

    const-string p0, "QuickStep"

    const-string p1, "OplusRecentsView"

    const-string v0, "addView(), mClearAllButton existed"

    invoke-static {p0, p1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mIsClearViewAdded:Z

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mClearAllButton:Lcom/oplus/quickstep/views/OplusClearAllPanelView;

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {v0, v1}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->setOrientationState(Lcom/android/quickstep/util/RecentsOrientedState;)V

    :cond_26
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public final adjustTransYPropertyState(Z)V
    .registers 2

    if-nez p1, :cond_a

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getTransYProperty()Lcom/oplus/quickstep/utils/TranslationYProperty;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/TranslationYProperty;->reset()V

    goto :goto_12

    :cond_a
    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getTransYProperty()Lcom/oplus/quickstep/utils/TranslationYProperty;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/utils/TranslationYProperty;->setGoingToRecents(Z)V

    :goto_12
    return-void
.end method

.method public allowFlingWhenFreeScroll()Z
    .registers 2

    sget-object p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->isLaunchFromButtonRunning()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->isRemoteRecentsAnimationRunning()Z

    move-result p0

    if-nez p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method public allowSnapWhenCancelEvent()Z
    .registers 3

    iget-boolean v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mIsCancelEventFromDispatcher:Z

    xor-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mIsCancelEventFromDispatcher:Z

    return v0
.end method

.method public animateRecentsRotationInPlace(I)V
    .registers 7

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->showAsGrid()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-super {p0, p1}, Lcom/android/quickstep/views/RecentsView;->animateRecentsRotationInPlace(I)V

    return-void

    :cond_a
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    const-string v1, "OplusRecentsView"

    const-string v2, "QuickStep"

    if-eqz v0, :cond_2c

    const-string v0, "animateRecentsRotationInPlace(), newRotation="

    const-string v3, ", isRecentsActivityRotationAllowed="

    invoke-static {v0, p1, v3}, Landroidx/appcompat/widget/d;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {v3}, Lcom/android/quickstep/util/RecentsOrientedState;->isRecentsActivityRotationAllowed()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2c
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {v0}, Lcom/android/quickstep/util/RecentsOrientedState;->isRecentsActivityRotationAllowed()Z

    move-result v0

    if-nez v0, :cond_77

    sget-object v0, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    const-string v3, "OVERVIEW"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isInState(Lcom/android/launcher3/LauncherState;)Z

    move-result v0

    if-nez v0, :cond_42

    goto :goto_77

    :cond_42
    sget-object v0, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceGuide;->INSTANCE:Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceGuide;

    invoke-virtual {v0}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceGuide;->dismiss()V

    iget-object v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mRotateAnimation:Landroid/animation/AnimatorSet;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_4e

    goto :goto_55

    :cond_4e
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-ne v0, v4, :cond_55

    move v3, v4

    :cond_55
    :goto_55
    if-eqz v3, :cond_64

    const-string v0, "animateRecentsRotationInPlace(), cancel last rotateAnimation."

    invoke-static {v2, v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mRotateAnimation:Landroid/animation/AnimatorSet;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_64
    sget-object v0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    invoke-virtual {v0, p0, v4, p1}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->createRotateAnimation(Lcom/android/quickstep/views/OplusRecentsViewImpl;ZI)Landroid/animation/AnimatorSet;

    move-result-object v0

    new-instance v1, Lcom/android/quickstep/views/OplusRecentsViewImpl$animateRecentsRotationInPlace$lambda-9$$inlined$addListener$default$1;

    invoke-direct {v1, p0, p1, p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl$animateRecentsRotationInPlace$lambda-9$$inlined$addListener$default$1;-><init>(Lcom/android/quickstep/views/OplusRecentsViewImpl;ILcom/android/quickstep/views/OplusRecentsViewImpl;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mRotateAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_77
    :goto_77
    return-void
.end method

.method public applyLoadPlan(Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/quickstep/util/GroupTask;",
            ">;)V"
        }
    .end annotation

    const-wide/16 v0, 0x8

    const-string v2, "RecentsView#applyLoadPlan"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    if-nez p1, :cond_b

    const/4 v2, 0x0

    goto :goto_13

    :cond_b
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_13
    const-string v3, "applyLoadPlan(), tasks.size="

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "QuickStep"

    const-string v4, "OplusRecentsView"

    invoke-static {v3, v4, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->relayInteraction:Lcom/oplus/quickstep/relay/RecentRelayInteraction;

    const/4 v3, 0x0

    if-nez p1, :cond_27

    move v4, v3

    goto :goto_2b

    :cond_27
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    :goto_2b
    invoke-virtual {v2, v4}, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->onTaskSizeChanged(I)V

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->cancelRemoveAllViewsTask()V

    iput-boolean v3, p0, Lcom/android/quickstep/views/RecentsView;->mShowEmptyMessage:Z

    if-eqz p1, :cond_3b

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3f

    :cond_3b
    new-array v2, v3, [I

    iput-object v2, p0, Lcom/android/launcher3/PagedView;->mPageScrolls:[I

    :cond_3f
    const/4 v2, 0x1

    if-nez p1, :cond_43

    goto :goto_4b

    :cond_43
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    xor-int/2addr v4, v2

    if-ne v4, v2, :cond_4b

    move v3, v2

    :cond_4b
    :goto_4b
    if-eqz v3, :cond_5d

    sget-object v3, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v3}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v3

    if-nez v3, :cond_5d

    iget-object v3, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->dockView:Lcom/oplus/quickstep/dock/DockView;

    if-nez v3, :cond_5a

    goto :goto_5d

    :cond_5a
    invoke-virtual {v3, p1}, Lcom/oplus/quickstep/dock/DockView;->applyLoadPlan(Ljava/util/ArrayList;)V

    :cond_5d
    :goto_5d
    invoke-super {p0, p1}, Lcom/android/quickstep/views/RecentsView;->applyLoadPlan(Ljava/util/ArrayList;)V

    iget-object p1, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/launcher3/util/DisplayController;->getNavigationMode(Landroid/content/Context;)Lcom/android/launcher3/util/DisplayController$NavigationMode;

    move-result-object p1

    sget-object v3, Lcom/android/launcher3/util/DisplayController$NavigationMode;->THREE_BUTTONS:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    if-ne p1, v3, :cond_75

    iget-object p1, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    invoke-virtual {p1}, Lcom/android/launcher3/util/OverScroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_75

    invoke-virtual {p0, v2}, Lcom/android/launcher3/PagedView;->abortScrollerAnimation(Z)V

    :cond_75
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public applyOverScroll()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public final calculateOffsetToTarget(FF)F
    .registers 5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/quickstep/views/RecentsView;->mTaskWidth:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    sub-float/2addr v0, v1

    neg-float v0, v0

    const/4 v1, 0x2

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1, p2, p1, v0}, Landroidx/core/content/res/a;->a(FFFF)F

    move-result p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p1, p0

    return p1
.end method

.method public calculateScrollDuration(FI)I
    .registers 4

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-super {p0, p1, p2}, Lcom/android/launcher/OplusPagedViewImpl;->calculateScrollDuration(FI)I

    move-result p0

    goto :goto_d

    :cond_b
    const/16 p0, 0x2a8

    :goto_d
    return p0
.end method

.method public canScrollByTouch()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mDisallowScrollByTouch:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public canUpdateCurrentScroll()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mDisallowUpdateCurrentScroll:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final cancelEventFromDispatcher()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mIsCancelEventFromDispatcher:Z

    return-void
.end method

.method public cancelGestureToRecentAnimation()V
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mGoHomeListener:Lcom/android/quickstep/views/OplusRecentsViewImpl$GoHomeListener;

    if-nez p0, :cond_5

    goto :goto_8

    :cond_5
    invoke-interface {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl$GoHomeListener;->cancelAllAnimationIfNeed()V

    :goto_8
    return-void
.end method

.method public final cancelRemoveAllViewsTask()V
    .registers 4

    iget-boolean v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mHasRemoveAllViewsTask:Z

    if-eqz v0, :cond_15

    const-string v0, "QuickStep"

    const-string v1, "OplusRecentsView"

    const-string v2, "cancelRemoveAllViewsTask()"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mHasRemoveAllViewsTask:Z

    iget-object v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mRemoveAllViewsTask:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mExceptedRemovedTaskView:Lcom/android/quickstep/views/TaskView;

    return-void
.end method

.method public final cancelRotateAnim()V
    .registers 2

    iget-object p0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mRotateAnimation:Landroid/animation/AnimatorSet;

    if-nez p0, :cond_5

    goto :goto_e

    :cond_5
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_e
    :goto_e
    return-void
.end method

.method public computeMaxScroll()I
    .registers 2

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getTaskViewCount()I

    move-result v0

    if-gtz v0, :cond_b

    invoke-super {p0}, Lcom/android/quickstep/views/RecentsView;->computeMaxScroll()I

    move-result p0

    return p0

    :cond_b
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getFirstViewIndex()I

    move-result v0

    goto :goto_1c

    :cond_14
    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getLastViewIndex()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getLastViewIndexWhenShowAsGrid(I)I

    move-result v0

    :goto_1c
    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getScrollForPage(I)I

    move-result p0

    return p0
.end method

.method public computeMinScroll()I
    .registers 5

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getTaskViewCount()I

    move-result v0

    if-gtz v0, :cond_b

    invoke-super {p0}, Lcom/android/quickstep/views/RecentsView;->computeMinScroll()I

    move-result p0

    return p0

    :cond_b
    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->showAsGrid()Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getLastViewIndex()I

    move-result v0

    if-gtz v0, :cond_43

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mPageScrolls:[I

    const/4 v1, 0x1

    if-nez v0, :cond_1e

    move v0, v1

    goto :goto_1f

    :cond_1e
    array-length v0, v0

    :goto_1f
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v2}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getScrollForPage(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getScrollForPage(I)I

    move-result v3

    if-lt v2, v3, :cond_34

    const-string v0, "OplusRecentsView"

    const-string v2, "computeMinScroll() : LastTaskScroll > getScrollForPage(0)"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    :cond_34
    iget-boolean v2, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v2, :cond_3a

    sub-int/2addr v0, v1

    goto :goto_3e

    :cond_3a
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getFirstViewIndex()I

    move-result v0

    :goto_3e
    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getScrollForPage(I)I

    move-result p0

    return p0

    :cond_43
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v0, :cond_4c

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getLastViewIndex()I

    move-result v0

    goto :goto_50

    :cond_4c
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getFirstViewIndex()I

    move-result v0

    :goto_50
    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getScrollForPage(I)I

    move-result p0

    return p0
.end method

.method public computeScrollHelper()Z
    .registers 8

    sget-object v0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->isTaskLaunchAnimRunning()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    :cond_a
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->superComputeScrollHelper()Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->updateCurveProperties()V

    const/4 v2, 0x1

    if-nez v0, :cond_1d

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->isHandlingTouch()Z

    move-result v3

    if-eqz v3, :cond_1b

    goto :goto_1d

    :cond_1b
    move v3, v1

    goto :goto_1e

    :cond_1d
    :goto_1d
    move v3, v2

    :goto_1e
    invoke-direct {p0, v3}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->onScrollingChange(Z)V

    iget-boolean v3, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isScrolling:Z

    if-nez v3, :cond_38

    iget-object v3, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->dockView:Lcom/oplus/quickstep/dock/DockView;

    if-nez v3, :cond_2b

    :cond_29
    move v3, v1

    goto :goto_32

    :cond_2b
    invoke-virtual {v3}, Lcom/oplus/quickstep/dock/DockView;->isScrolling()Z

    move-result v3

    if-ne v3, v2, :cond_29

    move v3, v2

    :goto_32
    if-eqz v3, :cond_35

    goto :goto_38

    :cond_35
    move v3, v1

    goto/16 :goto_a9

    :cond_38
    :goto_38
    iget-object v3, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    instance-of v4, v3, Lcom/android/launcher/Launcher;

    if-eqz v4, :cond_6c

    invoke-static {v3}, Lcom/android/launcher3/Launcher;->cast(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/Launcher;

    move-result-object v3

    check-cast v3, Lcom/android/launcher/Launcher;

    sget-object v4, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v3, v4}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v3

    if-eqz v3, :cond_6c

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageNearestToCenterOfScreen()I

    move-result v3

    iget v4, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mLastCenterPageIndex:I

    if-eq v3, v4, :cond_6c

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageNearestToCenterOfScreen()I

    move-result v3

    iput v3, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mLastCenterPageIndex:I

    iget-boolean v3, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->snapImmediatelyByTaskDismiss:Z

    if-nez v3, :cond_6c

    iget-object v3, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    const-string v4, "mContext"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v4, 0x44

    const-wide/16 v5, 0x41

    invoke-static {v3, v4, v5, v6, v2}, Lcom/android/common/util/VibrationUtils;->vibrate(Landroid/content/Context;IJZ)V

    :cond_6c
    if-nez v0, :cond_80

    iget-object v3, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->dockView:Lcom/oplus/quickstep/dock/DockView;

    if-nez v3, :cond_74

    :cond_72
    move v3, v1

    goto :goto_7b

    :cond_74
    invoke-virtual {v3}, Lcom/oplus/quickstep/dock/DockView;->isScrolling()Z

    move-result v3

    if-ne v3, v2, :cond_72

    move v3, v2

    :goto_7b
    if-eqz v3, :cond_7e

    goto :goto_80

    :cond_7e
    move v3, v1

    goto :goto_a5

    :cond_80
    :goto_80
    iget-object v3, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    invoke-virtual {v3}, Lcom/android/launcher3/util/OverScroller;->getCurrVelocity()F

    move-result v3

    iget v4, p0, Lcom/android/quickstep/views/RecentsView;->mFastFlingVelocity:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_8e

    move v3, v2

    goto :goto_8f

    :cond_8e
    move v3, v1

    :goto_8f
    iget-object v4, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->dockView:Lcom/oplus/quickstep/dock/DockView;

    if-eqz v4, :cond_a5

    if-nez v3, :cond_a5

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Lcom/oplus/quickstep/dock/DockView;->getScaleVelocity()F

    move-result v3

    iget v4, p0, Lcom/android/quickstep/views/RecentsView;->mFastFlingVelocity:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_a3

    goto :goto_a4

    :cond_a3
    move v2, v1

    :goto_a4
    move v3, v2

    :cond_a5
    :goto_a5
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->loadVisibleTaskData(I)V

    :goto_a9
    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mModel:Lcom/android/quickstep/RecentsModel;

    invoke-virtual {v2}, Lcom/android/quickstep/RecentsModel;->getThumbnailCache()Lcom/android/quickstep/TaskThumbnailCache;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/quickstep/TaskThumbnailCache;->getHighResLoadingState()Lcom/android/quickstep/TaskThumbnailCache$HighResLoadingState;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/quickstep/TaskThumbnailCache$HighResLoadingState;->setFlingingFast(Z)V

    if-nez v0, :cond_c3

    iget-boolean v2, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isRecentsViewScrollStarted:Z

    if-eqz v2, :cond_c3

    iput-boolean v1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isRecentsViewScrollStarted:Z

    sget-object p0, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->RECENTS_SCROLL:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    invoke-static {p0}, Lcom/oplus/quickstep/utils/TracePrintUtil;->asyncTraceEnd(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;)V

    :cond_c3
    return v0
.end method

.method public createAdjacentPageAnimForTaskLaunch(Lcom/android/quickstep/views/TaskView;)Landroid/animation/AnimatorSet;
    .registers 3

    const-string/jumbo v0, "tv"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->showAsGrid()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-super {p0, p1}, Lcom/android/quickstep/views/RecentsView;->createAdjacentPageAnimForTaskLaunch(Lcom/android/quickstep/views/TaskView;)Landroid/animation/AnimatorSet;

    move-result-object p0

    const-string/jumbo p1, "super.createAdjacentPageAnimForTaskLaunch(tv)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_17
    sget-object v0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    invoke-virtual {v0, p0, p1}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->createAdjacentPageAnimForTaskLaunch(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/views/TaskView;)Landroid/animation/AnimatorSet;

    move-result-object p0

    return-object p0
.end method

.method public createAllTasksDismissAnimation(J)Lcom/android/launcher3/anim/PendingAnimation;
    .registers 4

    sget-object v0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    invoke-virtual {v0, p0, p1, p2}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->createAllTasksDismissAnimation(Lcom/android/quickstep/views/OplusRecentsViewImpl;J)Lcom/android/launcher3/anim/PendingAnimation;

    move-result-object p0

    return-object p0
.end method

.method public createTaskDismissAnimation(Lcom/android/quickstep/views/TaskView;ZZJZ)Lcom/android/launcher3/anim/PendingAnimation;
    .registers 16

    const-string v0, "dismissedTaskView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->showAsGrid()Z

    move-result v0

    if-eqz v0, :cond_18

    sget-object v1, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-wide v6, p4

    move v8, p6

    invoke-virtual/range {v1 .. v8}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->createTaskDismissAnimationAsGrid(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/views/TaskView;ZZJZ)Lcom/android/launcher3/anim/PendingAnimation;

    move-result-object p0

    return-object p0

    :cond_18
    invoke-static/range {p0 .. p5}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->createTaskDismissAnimation(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/views/TaskView;ZZJ)Lcom/android/launcher3/anim/PendingAnimation;

    move-result-object p0

    return-object p0
.end method

.method public createTaskLaunchAnimation(Lcom/android/quickstep/views/TaskView;JLandroid/view/animation/Interpolator;)Lcom/android/launcher3/anim/PendingAnimation;
    .registers 13

    const-string v0, "interpolator"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->showAsGrid()Z

    move-result v0

    const-string/jumbo v1, "super.createTaskLaunchAn…, duration, interpolator)"

    if-eqz v0, :cond_16

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/quickstep/views/RecentsView;->createTaskLaunchAnimation(Lcom/android/quickstep/views/TaskView;JLandroid/view/animation/Interpolator;)Lcom/android/launcher3/anim/PendingAnimation;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_16
    sget-object v2, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/quickstep/views/RecentsView;->createTaskLaunchAnimation(Lcom/android/quickstep/views/TaskView;JLandroid/view/animation/Interpolator;)Lcom/android/launcher3/anim/PendingAnimation;

    move-result-object v5

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, p0

    move-object v4, p1

    move-wide v6, p2

    invoke-virtual/range {v2 .. v7}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->createTaskLaunchAnimation(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/views/TaskView;Lcom/android/launcher3/anim/PendingAnimation;J)Lcom/android/launcher3/anim/PendingAnimation;

    move-result-object p0

    return-object p0
.end method

.method public determineScrollingStart(Landroid/view/MotionEvent;F)V
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/android/quickstep/views/RecentsView;->determineScrollingStart(Landroid/view/MotionEvent;F)V

    iget-boolean p1, p0, Lcom/android/launcher3/PagedView;->mIsBeingDragged:Z

    if-eqz p1, :cond_17

    iget-boolean p1, p0, Lcom/android/launcher3/PagedView;->mFreeScroll:Z

    if-eqz p1, :cond_17

    iget-boolean p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isRecentsViewDragStarted:Z

    if-nez p1, :cond_17

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isRecentsViewDragStarted:Z

    sget-object p0, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->DRAG_RECENTS_VIEW_CARD:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    invoke-static {p0}, Lcom/oplus/quickstep/utils/TracePrintUtil;->asyncTraceBegin(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;)V

    :cond_17
    return-void
.end method

.method public determineScrollingStart(Landroid/view/MotionEvent;FZ)V
    .registers 5

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher/OplusPagedViewImpl;->determineScrollingStart(Landroid/view/MotionEvent;FZ)V

    iget-boolean p1, p0, Lcom/android/launcher3/PagedView;->mIsBeingDragged:Z

    if-eqz p1, :cond_1c

    iget-boolean p1, p0, Lcom/android/launcher3/PagedView;->mFreeScroll:Z

    if-eqz p1, :cond_1c

    iget-boolean p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isRecentsViewDragStarted:Z

    if-nez p1, :cond_1c

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isRecentsViewDragStarted:Z

    sget-object p0, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->DRAG_RECENTS_VIEW_CARD:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    invoke-static {p0}, Lcom/oplus/quickstep/utils/TracePrintUtil;->asyncTraceBegin(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;)V

    :cond_1c
    return-void
.end method

.method public final disallowScrollByTouch(Z)V
    .registers 4

    iget-boolean v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mDisallowScrollByTouch:Z

    if-eq v0, p1, :cond_f

    iput-boolean p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mDisallowScrollByTouch:Z

    const-string p0, "disallowScrollByTouch: disallow = "

    const-string v0, "QuickStep"

    const-string v1, "OplusRecentsView"

    invoke-static {p1, p0, v0, v1}, Lcom/android/launcher/wallpaper/e;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    return-void
.end method

.method public final disallowUpdateCurrentScroll(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mDisallowUpdateCurrentScroll:Z

    if-eq v0, p1, :cond_6

    iput-boolean p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mDisallowUpdateCurrentScroll:Z

    :cond_6
    return-void
.end method

.method public dismissAllTasks(Landroid/view/View;)V
    .registers 4

    const-string p1, "QuickStep"

    const-string v0, "OplusRecentsView"

    const-string v1, "dismissAllTasks()"

    invoke-static {p1, v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x12c

    invoke-virtual {p0, v0, v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->createAllTasksDismissAnimation(J)Lcom/android/launcher3/anim/PendingAnimation;

    move-result-object p1

    if-nez p1, :cond_12

    return-void

    :cond_12
    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/RecentsView;->runDismissAnimation(Lcom/android/launcher3/anim/PendingAnimation;)V

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->cancelRotateAnim()V

    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p0

    sget-object p1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_TASK_CLEAR_ALL:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-interface {p0, p1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 5

    const-wide/16 v0, 0x8

    const-string v2, "OplusRecentsView#draw"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-super {p0, p1}, Lcom/android/quickstep/views/RecentsView;->draw(Landroid/graphics/Canvas;)V

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public extendDurationWhenUp(I)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    const/16 p1, 0x10e

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/OverScroller;->extendDuration(I)V

    return-void
.end method

.method public findTaskView(Lcom/android/systemui/shared/recents/model/Task;)Lcom/android/quickstep/views/TaskView;
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    :cond_4
    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lez v2, :cond_2c

    :goto_b
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v4, v1, Lcom/android/quickstep/views/OplusTaskViewImpl;

    if-eqz v4, :cond_18

    check-cast v1, Lcom/android/quickstep/views/OplusTaskViewImpl;

    goto :goto_19

    :cond_18
    move-object v1, v0

    :goto_19
    if-nez v1, :cond_1c

    goto :goto_27

    :cond_1c
    invoke-virtual {v1}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v4

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    return-object v1

    :cond_27
    :goto_27
    if-lt v3, v2, :cond_2a

    goto :goto_2c

    :cond_2a
    move v1, v3

    goto :goto_b

    :cond_2c
    :goto_2c
    return-object v0
.end method

.method public forceFinishScroller()V
    .registers 4

    const-string v0, "QuickStep"

    const-string v1, "OplusRecentsView"

    const-string v2, "forceFinishScroller()"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/android/launcher3/PagedView;->forceFinishScroller()V

    return-void
.end method

.method public forceReturnToCurrentPage()Z
    .registers 3

    iget-boolean v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mForceReturnToOriginalPage:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mForceReturnToOriginalPage:Z

    return v0
.end method

.method public final forceUpdateEmptyMessage(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/android/quickstep/views/RecentsView;->mShowEmptyMessage:Z

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    iput-boolean p1, p0, Lcom/android/quickstep/views/RecentsView;->mShowEmptyMessage:Z

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/android/quickstep/views/RecentsView;->mEmptyMessage:Ljava/lang/CharSequence;

    goto :goto_e

    :cond_c
    const-string p1, ""

    :goto_e
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public final forceUseRealScroll(Z)V
    .registers 4

    iget-boolean v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mForceUseRealScroll:Z

    if-eq v0, p1, :cond_f

    iput-boolean p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mForceUseRealScroll:Z

    const-string p0, "forceUseRealScroll: force = "

    const-string v0, "QuickStep"

    const-string v1, "OplusRecentsView"

    invoke-static {p1, p0, v0, v1}, Lcom/android/launcher/wallpaper/e;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    return-void
.end method

.method public final getActivity()Lcom/android/launcher3/statemanager/StatefulActivity;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    const-string v0, "mActivity"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getBooster()Lcom/oplus/quickstep/utils/RecentsBooster;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->booster$delegate:Ly2/e;

    invoke-interface {p0}, Ly2/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/quickstep/utils/RecentsBooster;

    return-object p0
.end method

.method public getChildCountOnLayout()I
    .registers 1

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getPageCount()I

    move-result p0

    return p0
.end method

.method public getChildGap(II)I
    .registers 3

    const/4 p0, 0x0

    return p0
.end method

.method public getChildOffset(I)I
    .registers 3

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-super {p0, p1}, Lcom/android/quickstep/views/RecentsView;->getChildOffset(I)I

    move-result p0

    return p0

    :cond_d
    if-ltz p1, :cond_23

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_18

    goto :goto_23

    :cond_18
    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {p0, p1}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getChildStart(Landroid/view/View;)I

    move-result p0

    return p0

    :cond_23
    :goto_23
    const/4 p0, 0x0

    return p0
.end method

.method public getChildVisibleSize(I)I
    .registers 3

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->showAsGrid()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-super {p0, p1}, Lcom/android/quickstep/views/RecentsView;->getChildVisibleSize(I)I

    move-result p0

    return p0

    :cond_b
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getMeasuredSize(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public final getClearAllButtonAlpha()F
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->mClearAllButton:Lcom/oplus/quickstep/views/OplusClearAllPanelView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result p0

    return p0
.end method

.method public getClearAllExtraPageSpacing()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public final getCurrentGestureState()Lcom/android/quickstep/GestureState;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mCurrentGestureState:Lcom/android/quickstep/GestureState;

    return-object p0
.end method

.method public final getCurrentScroll()I
    .registers 1

    iget p0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mCurrentScroll:I

    return p0
.end method

.method public getDestinationPage(I)I
    .registers 3

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->showAsGrid()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-super {p0, p1}, Lcom/android/quickstep/views/RecentsView;->getDestinationPage(I)I

    move-result p0

    return p0

    :cond_b
    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getPageNearestToCenterOfScreen(I)I

    move-result p0

    return p0
.end method

.method public final getDeviceProfile()Lcom/android/launcher3/DeviceProfile;
    .registers 2

    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p0

    const-string v0, "mActivity.deviceProfile"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getDockView()Lcom/oplus/quickstep/dock/DockView;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/oplus/quickstep/dock/DockView<",
            "*>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->dockView:Lcom/oplus/quickstep/dock/DockView;

    return-object p0
.end method

.method public final getEnterAnimator()Landroid/animation/Animator;
    .registers 7

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->getTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    if-nez v0, :cond_e

    const/4 p0, 0x0

    return-object p0

    :cond_e
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLocationOnScreen()[I

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070285

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iget-boolean v4, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    const/4 v5, 0x0

    if-nez v4, :cond_31

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    aget v2, v2, v5

    sub-int/2addr v4, v2

    add-int/2addr v4, v3

    goto :goto_3b

    :cond_31
    aget v2, v2, v5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    add-int/2addr v4, v2

    neg-int v2, v4

    sub-int v4, v2, v3

    :goto_3b
    sget-object v2, Landroid/view/ViewGroup;->TRANSLATION_X:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v3, v3, [F

    int-to-float v4, v4

    aput v4, v3, v5

    const/4 v4, 0x0

    aput v4, v3, v1

    invoke-static {v0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-string v2, "ofFloat(secondView, TRAN…anslationX.toFloat(), 0f)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b003d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    :try_start_5e
    iget-object p0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0008

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget-object p0, Ly2/p;->a:Ly2/p;
    :try_end_6c
    .catchall {:try_start_5e .. :try_end_6c} :catchall_6d

    goto :goto_72

    :catchall_6d
    move-exception p0

    invoke-static {p0}, Lq/d;->h(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_72
    invoke-static {p0}, Ly2/j;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_79

    goto :goto_84

    :cond_79
    const-string v2, "Fail to loadInterpolator, "

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "OplusRecentsView"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_84
    new-instance p0, Lcom/android/quickstep/views/OplusRecentsViewImpl$getEnterAnimator$$inlined$addListener$default$1;

    invoke-direct {p0, v0, v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl$getEnterAnimator$$inlined$addListener$default$1;-><init>(Lcom/android/quickstep/views/TaskView;Lcom/android/quickstep/views/TaskView;)V

    invoke-virtual {v1, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v1
.end method

.method public final getForceHideEmptyMessage()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->forceHideEmptyMessage:Z

    return p0
.end method

.method public final getHasReset()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->hasReset:Z

    return p0
.end method

.method public getHorizontalOffsetSize(IIF)F
    .registers 10

    const/4 v0, 0x0

    cmpg-float v1, p3, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_9

    move v1, v2

    goto :goto_a

    :cond_9
    move v1, v3

    :goto_a
    if-eqz v1, :cond_d

    return v0

    :cond_d
    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mTempRectF:Landroid/graphics/RectF;

    const/4 v4, -0x1

    if-le p2, v4, :cond_39

    invoke-virtual {p0, p2}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getScrollForPage(I)I

    move-result v4

    iget-object v5, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v5, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScroll(Landroid/view/View;)I

    iget v5, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v5}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getScrollForPage(I)I

    invoke-virtual {p0, p2, v4, v1}, Lcom/android/quickstep/views/RecentsView;->getPersistentChildPosition(IILandroid/graphics/RectF;)V

    iget-object p2, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {p2, v1}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getStart(Landroid/graphics/RectF;)F

    move-result p2

    invoke-virtual {p0, p1, v4, v1}, Lcom/android/quickstep/views/RecentsView;->getPersistentChildPosition(IILandroid/graphics/RectF;)V

    iget-object p1, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {p1, v1}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getStart(Landroid/graphics/RectF;)F

    move-result p1

    cmpg-float p1, p1, p2

    if-gez p1, :cond_37

    goto :goto_42

    :cond_37
    move v2, v3

    goto :goto_42

    :cond_39
    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getScrollForPage(I)I

    move-result p2

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/quickstep/views/RecentsView;->getPersistentChildPosition(IILandroid/graphics/RectF;)V

    iget-boolean v2, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    :goto_42
    if-eqz v2, :cond_94

    iget-object p1, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {p1, v1}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimarySize(Landroid/graphics/RectF;)F

    move-result p1

    neg-float p1, p1

    iget-object p2, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {p2, v1}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getEnd(Landroid/graphics/RectF;)F

    move-result p2

    neg-float p2, p2

    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mLastComputedTaskStartPushOutDistance:Ljava/lang/Float;

    if-nez v2, :cond_85

    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v2, p1, v0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryValue(FF)F

    move-result v2

    iget-object v3, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v3, p1, v0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getSecondaryValue(FF)F

    move-result p1

    invoke-virtual {v1, v2, p1}, Landroid/graphics/RectF;->offsetTo(FF)V

    const/high16 p1, 0x3f800000  # 1.0f

    cmpg-float p1, p3, p1

    if-gez p1, :cond_72

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    :cond_72
    iget-object p1, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {p1, v1}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getEnd(Landroid/graphics/RectF;)F

    move-result p1

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v0, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScale(Landroid/view/View;)F

    move-result v0

    div-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/android/quickstep/views/RecentsView;->mLastComputedTaskStartPushOutDistance:Ljava/lang/Float;

    :cond_85
    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->mLastComputedTaskStartPushOutDistance:Ljava/lang/Float;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string p1, "mLastComputedTaskStartPushOutDistance!!"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    goto :goto_df

    :cond_94
    iget-object p1, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {p1, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimarySize(Landroid/view/View;)I

    move-result p1

    int-to-float p1, p1

    iget-object p2, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {p2, v1}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getStart(Landroid/graphics/RectF;)F

    move-result p2

    sub-float p2, p1, p2

    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mLastComputedTaskEndPushOutDistance:Ljava/lang/Float;

    if-nez v2, :cond_d1

    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v2, p1, v0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryValue(FF)F

    move-result v2

    iget-object v3, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v3, p1, v0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getSecondaryValue(FF)F

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/graphics/RectF;->offsetTo(FF)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v0, v1}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getStart(Landroid/graphics/RectF;)F

    move-result v0

    sub-float/2addr v0, p1

    iget-object p1, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {p1, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScale(Landroid/view/View;)F

    move-result p1

    div-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/android/quickstep/views/RecentsView;->mLastComputedTaskEndPushOutDistance:Ljava/lang/Float;

    :cond_d1
    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->mLastComputedTaskEndPushOutDistance:Ljava/lang/Float;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string p1, "mLastComputedTaskEndPushOutDistance!!"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    :goto_df
    sub-float/2addr p2, p0

    mul-float/2addr p2, p3

    return p2
.end method

.method public final getInsets()Landroid/graphics/Rect;
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    const-string v0, "mInsets"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public getLastTaskScroll(II)I
    .registers 3

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getScrollForPage(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "getLastTaskScroll() :"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "OplusRecentsView"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getLastViewIndex()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getScrollForPage(I)I

    move-result p0

    return p0
.end method

.method public getLastViewIndex()I
    .registers 4
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-boolean v0, p0, Lcom/android/quickstep/views/RecentsView;->mShowAsGridLastOnLayout:Z

    const-string v1, "getLastViewIndex() :"

    const-string v2, "OplusRecentsView"

    if-eqz v0, :cond_26

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getLastGridTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getLastGridTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p0

    goto :goto_3b

    :cond_26
    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getTaskViewCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getTaskViewCount()I

    move-result p0

    :goto_3b
    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public final getLogLoadVisibleTaskData()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->logLoadVisibleTaskData:Z

    return p0
.end method

.method public final getMClearAllButtonImage()Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mClearAllButtonImage:Landroid/view/View;

    return-object p0
.end method

.method public final getMGestureAnimationStarted()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mGestureAnimationStarted:Z

    return p0
.end method

.method public final getMGoHomeListener()Lcom/android/quickstep/views/OplusRecentsViewImpl$GoHomeListener;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mGoHomeListener:Lcom/android/quickstep/views/OplusRecentsViewImpl$GoHomeListener;

    return-object p0
.end method

.method public final getOplusCleanStorageFrameLayout()Lcom/oplus/quickstep/views/OplusCleanStorageFrameLayout;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->oplusCleanStorageFrameLayout:Lcom/oplus/quickstep/views/OplusCleanStorageFrameLayout;

    return-object p0
.end method

.method public getOverScrollAmount(FI)I
    .registers 4

    sget-object v0, Lcom/oplus/quickstep/utils/OplusOverScroll;->INSTANCE:Lcom/oplus/quickstep/utils/OplusOverScroll;

    iget-boolean p0, p0, Lcom/android/launcher3/PagedView;->mFreeScroll:Z

    invoke-virtual {v0, p1, p2, p0}, Lcom/oplus/quickstep/utils/OplusOverScroll;->dampedScroll(FIZ)I

    move-result p0

    return p0
.end method

.method public getPageCount()I
    .registers 2

    iget-boolean v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mIsClearViewAdded:Z

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    if-eqz v0, :cond_a

    add-int/lit8 p0, p0, -0x1

    :cond_a
    return p0
.end method

.method public getPageNearestToCenterOfScreen(I)I
    .registers 9

    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsLayoutValid:Z

    const/4 v1, 0x0

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsPageInTransition:Z

    if-nez v0, :cond_a

    return v1

    :cond_a
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v0, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getMeasuredSize(Landroid/view/View;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p1

    const p1, 0x7fffffff

    const/4 v2, -0x1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    iget-object v4, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v4}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getRotation()I

    move-result v4

    if-lez v3, :cond_5c

    :goto_23
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    instance-of v6, v6, Lcom/android/quickstep/views/TaskView;

    if-nez v6, :cond_2e

    goto :goto_57

    :cond_2e
    const/4 v6, 0x1

    if-eq v4, v6, :cond_34

    const/4 v6, 0x3

    if-ne v4, v6, :cond_4b

    :cond_34
    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->showAsGrid()Z

    move-result v6

    if-nez v6, :cond_4b

    sget-object v6, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v6}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v6

    if-nez v6, :cond_4b

    invoke-direct {p0, v1, v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getLandDisplacementFromScreenCenter(II)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    goto :goto_53

    :cond_4b
    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/PagedView;->getDisplacementFromScreenCenter(II)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    :goto_53
    if-ge v6, p1, :cond_57

    move v2, v1

    move p1, v6

    :cond_57
    :goto_57
    if-lt v5, v3, :cond_5a

    goto :goto_5c

    :cond_5a
    move v1, v5

    goto :goto_23

    :cond_5c
    :goto_5c
    return v2
.end method

.method public getPageScrolls([IZLcom/android/launcher3/PagedView$ComputePageScrollsLogic;)Z
    .registers 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    const-string v4, "outPageScrolls"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "scrollLogic"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v2, :cond_19

    sget-object v4, Lcom/oplus/quickstep/utils/RecentsLayoutManager;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsLayoutManager;

    invoke-virtual {v4, v0}, Lcom/oplus/quickstep/utils/RecentsLayoutManager;->layoutClearButton(Lcom/android/quickstep/views/OplusRecentsViewImpl;)V

    :cond_19
    sget-object v4, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v4}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_26

    invoke-virtual/range {p0 .. p3}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getPageScrollsAsGrid([IZLcom/android/launcher3/PagedView$ComputePageScrollsLogic;)Z

    move-result v0

    return v0

    :cond_26
    iget-object v4, v0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    iget-object v5, v0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    invoke-interface {v4, v0, v5}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getCenterForPage(Landroid/view/View;Landroid/graphics/Rect;)I

    move-result v4

    iget-object v5, v0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    iget-object v6, v0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    invoke-interface {v5, v0, v6}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getScrollOffsetStart(Landroid/view/View;Landroid/graphics/Rect;)I

    move-result v5

    iget-object v6, v0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    iget-object v7, v0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    invoke-interface {v6, v0, v7}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getScrollOffsetEnd(Landroid/view/View;Landroid/graphics/Rect;)I

    move-result v6

    iget-boolean v7, v0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    const/4 v8, 0x1

    if-eqz v7, :cond_5b

    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getPageCount()I

    move-result v7

    new-array v9, v7, [Ljava/lang/Integer;

    const/4 v10, 0x0

    :goto_4a
    if-ge v10, v7, :cond_6d

    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getPageCount()I

    move-result v11

    sub-int/2addr v11, v8

    sub-int/2addr v11, v10

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_4a

    :cond_5b
    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getPageCount()I

    move-result v7

    new-array v9, v7, [Ljava/lang/Integer;

    const/4 v10, 0x0

    :goto_62
    if-ge v10, v7, :cond_6d

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_62

    :cond_6d
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isInternalLogOpen()Z

    move-result v7

    const-string v10, ", childStart="

    const-string v11, "OplusRecentsView"

    const-string v12, "QuickStep"

    if-eqz v7, :cond_93

    const-string v7, "getPageScrolls(), pageCenter="

    const-string v13, ", offsetStart="

    const-string v14, ", offsetEnd="

    invoke-static {v7, v4, v13, v5, v14}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v12, v11, v7}, Lcom/android/common/debug/LogUtils;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_93
    iget-boolean v7, v0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v7, :cond_98

    const/4 v8, -0x1

    :cond_98
    array-length v7, v9

    const/4 v13, 0x0

    const/4 v14, 0x0

    move v15, v5

    :goto_9c
    if-ge v13, v7, :cond_156

    aget-object v16, v9, v13

    move/from16 v17, v7

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Number;->intValue()I

    move-result v7

    move-object/from16 v16, v9

    invoke-virtual {v0, v7}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v9

    invoke-interface {v3, v9}, Lcom/android/launcher3/PagedView$ComputePageScrollsLogic;->shouldIncludeView(Landroid/view/View;)Z

    move-result v18

    if-eqz v18, :cond_13a

    iget-object v3, v0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v3, v9, v15, v4, v2}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getChildBounds(Landroid/view/View;IIZ)Lcom/android/launcher3/touch/PagedOrientationHandler$ChildBounds;

    move-result-object v3

    iget-boolean v2, v0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v2, :cond_c1

    sub-int v2, v15, v5

    move/from16 v18, v4

    goto :goto_cb

    :cond_c1
    iget v2, v3, Lcom/android/launcher3/touch/PagedOrientationHandler$ChildBounds;->childPrimaryEnd:I

    sub-int/2addr v2, v6

    move/from16 v18, v4

    const/4 v4, 0x0

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    :goto_cb
    add-int v4, v7, v8

    invoke-virtual {v0, v7, v4}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getChildGap(II)I

    move-result v4

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isInternalLogOpen()Z

    move-result v19

    if-eqz v19, :cond_125

    move/from16 v19, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v20, v6

    const-string v6, "getPageScrolls(), i="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", child="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", childPrimaryEnd="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v3, Lcom/android/launcher3/touch/PagedOrientationHandler$ChildBounds;->childPrimaryEnd:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", mPageSpacing="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/android/launcher3/PagedView;->mPageSpacing:I

    const-string v9, ", childGap="

    move/from16 v21, v8

    const-string v8, ", old="

    invoke-static {v5, v6, v9, v4, v8}, Landroidx/constraintlayout/core/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    aget v6, v1, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", new="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v12, v11, v5}, Lcom/android/common/debug/LogUtils;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12b

    :cond_125
    move/from16 v19, v5

    move/from16 v20, v6

    move/from16 v21, v8

    :goto_12b
    aget v5, v1, v7

    if-eq v5, v2, :cond_132

    aput v2, v1, v7

    const/4 v14, 0x1

    :cond_132
    iget v2, v3, Lcom/android/launcher3/touch/PagedOrientationHandler$ChildBounds;->primaryDimension:I

    iget v3, v0, Lcom/android/launcher3/PagedView;->mPageSpacing:I

    add-int/2addr v2, v3

    add-int/2addr v2, v4

    add-int/2addr v15, v2

    goto :goto_142

    :cond_13a
    move/from16 v18, v4

    move/from16 v19, v5

    move/from16 v20, v6

    move/from16 v21, v8

    :goto_142
    add-int/lit8 v13, v13, 0x1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v9, v16

    move/from16 v7, v17

    move/from16 v4, v18

    move/from16 v5, v19

    move/from16 v6, v20

    move/from16 v8, v21

    goto/16 :goto_9c

    :cond_156
    const-string v2, "getPageScrolls() outPageScrolls size = "

    invoke-static {v2}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", childCount = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v11, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v14
.end method

.method public final getPageScrollsArray(ZLcom/android/launcher3/PagedView$ComputePageScrollsLogic;)[I
    .registers 4

    const-string v0, "scrollLogic"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getPageCount()I

    move-result v0

    new-array v0, v0, [I

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getPageScrolls([IZLcom/android/launcher3/PagedView$ComputePageScrollsLogic;)Z

    return-object v0
.end method

.method public final getPageScrollsAsGrid([IZLcom/android/launcher3/PagedView$ComputePageScrollsLogic;)Z
    .registers 10

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    array-length v0, p1

    new-array v0, v0, [I

    invoke-virtual {p0, v0, p2, p3}, Lcom/android/quickstep/views/RecentsView;->superGetPageScrolls([IZLcom/android/launcher3/PagedView$ComputePageScrollsLogic;)Z

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->showAsFullscreen()Z

    move-result p2

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->showAsGrid()Z

    move-result p3

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getTaskViewCount()I

    move-result v1

    if-lez v1, :cond_36

    const/4 v2, 0x0

    :goto_18
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/quickstep/views/RecentsView;->requireTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v4

    const-string v5, "requireTaskViewAt(i)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, p2, p3}, Lcom/android/quickstep/views/TaskView;->getScrollAdjustment(ZZ)F

    move-result v4

    aget v5, v0, v2

    float-to-int v4, v4

    add-int/2addr v5, v4

    aget v4, p1, v2

    if-eq v4, v5, :cond_31

    aput v5, p1, v2

    :cond_31
    if-lt v3, v1, :cond_34

    goto :goto_36

    :cond_34
    move v2, v3

    goto :goto_18

    :cond_36
    :goto_36
    const/4 p0, 0x1

    return p0
.end method

.method public final getRecentAnimateDragging()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->recentAnimateDragging:Z

    return p0
.end method

.method public final getRecentsViewTransY()Lcom/android/quickstep/AnimatedFloat;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->recentsViewTransY:Lcom/android/quickstep/AnimatedFloat;

    return-object p0
.end method

.method public final getRelayInteraction()Lcom/oplus/quickstep/relay/RecentRelayInteraction;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->relayInteraction:Lcom/oplus/quickstep/relay/RecentRelayInteraction;

    return-object p0
.end method

.method public getScrollForPage(I)I
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mPageScrolls:[I

    if-eqz v0, :cond_15

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    array-length v0, v0

    if-ge p1, v0, :cond_15

    if-gez p1, :cond_d

    goto :goto_15

    :cond_d
    iget-object p0, p0, Lcom/android/launcher3/PagedView;->mPageScrolls:[I

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    aget p0, p0, p1

    goto :goto_16

    :cond_15
    :goto_15
    const/4 p0, 0x0

    :goto_16
    return p0
.end method

.method public getScrollOffset()I
    .registers 3

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->showAsGrid()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-super {p0}, Lcom/android/quickstep/views/RecentsView;->getScrollOffset()I

    move-result p0

    return p0

    :cond_b
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getRunningTaskIndex()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-boolean v1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mDisallowScrollByTouch:Z

    if-eqz v1, :cond_24

    iget-boolean v1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mForceUseRealScroll:Z

    if-nez v1, :cond_24

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getScrollForPage(I)I

    move-result v0

    iget p0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mCurrentScroll:I

    sub-int/2addr v0, p0

    return v0

    :cond_24
    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->getScrollOffset(I)I

    move-result p0

    return p0
.end method

.method public final getSnapImmediatelyByTaskDismiss()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->snapImmediatelyByTaskDismiss:Z

    return p0
.end method

.method public final getSnapToFocusedTaskScrollDiff()I
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getSnapToFocusedTaskScrollDiff(Z)I

    move-result p0

    return p0
.end method

.method public getSnapToFocusedTaskScrollDiff(Z)I
    .registers 3

    iget-object p1, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {p1, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScroll(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getFocusedTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getScrollForPage(I)I

    move-result p0

    sub-int/2addr p1, p0

    return p1
.end method

.method public getSnapToLastTaskScrollDiff()I
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v0, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScroll(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getLastViewIndex()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getScrollForPage(I)I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method public final getSpringAnimToRecent()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->springAnimToRecent:Z

    return p0
.end method

.method public getTaskSize(Landroid/graphics/Rect;)V
    .registers 10

    const-string v0, "outRect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget-boolean v1, v0, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_26

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_26

    move v0, v3

    goto :goto_27

    :cond_26
    move v0, v2

    :goto_27
    if-eqz v0, :cond_44

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v0

    if-nez v0, :cond_44

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mSizeStrategy:Lcom/android/quickstep/BaseActivityInterface;

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    iget-object v4, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {v4}, Lcom/android/quickstep/util/RecentsOrientedState;->getLauncherDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v4

    invoke-virtual {v0, v1, v4, p1}, Lcom/android/quickstep/BaseActivityInterface;->calculateTaskSize(Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mLastComputedTaskSize:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_50

    :cond_44
    invoke-super {p0, p1}, Lcom/android/quickstep/views/RecentsView;->getTaskSize(Landroid/graphics/Rect;)V

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_50

    return-void

    :cond_50
    :goto_50
    iget-object v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->tempTaskRect:Landroid/graphics/Rect;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5d

    iget-boolean v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->forceUpdateScaleAndPadding:Z

    if-eqz v0, :cond_5d

    move v2, v3

    :cond_5d
    const-string v0, "OplusRecentsView"

    const-string v1, "QuickStep"

    if-eqz v2, :cond_91

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v4

    if-eqz v4, :cond_8c

    const-string/jumbo v4, "task size changed, we must refresh rv padding outRect="

    invoke-static {v4}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", tempTaskRect="

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->tempTaskRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8c
    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->updateSizeAndPadding()V

    iput-boolean v3, p0, Lcom/android/launcher3/PagedView;->mIsLayoutValid:Z

    :cond_91
    iget-object p1, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p1

    iget p1, p1, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    if-nez v2, :cond_ab

    iget-object v3, p0, Lcom/android/quickstep/views/RecentsView;->mClearAllButton:Lcom/oplus/quickstep/views/OplusClearAllPanelView;

    iget-object v4, p0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/quickstep/views/RecentsView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getTaskViewCount()I

    move-result v6

    invoke-virtual {v3, p1, v4, v5, v6}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->needUpdateBottomSpace(ILandroid/graphics/Rect;Landroid/graphics/Rect;I)Z

    move-result v3

    if-eqz v3, :cond_e8

    :cond_ab
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v3

    if-eqz v3, :cond_d1

    if-nez v2, :cond_d1

    const-string v2, "getTaskSize(), update bottom space, heightPx="

    const-string v3, ", mInsets="

    invoke-static {v2, p1, v3}, Landroidx/appcompat/widget/d;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mTempRect="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_d1
    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mClearAllButton:Lcom/oplus/quickstep/views/OplusClearAllPanelView;

    iget-object p1, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p1

    iget v3, p1, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    iget-object v4, p0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/quickstep/views/RecentsView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isDockViewHide()Z

    move-result v6

    iget-object v7, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->dockView:Lcom/oplus/quickstep/dock/DockView;

    invoke-virtual/range {v2 .. v7}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->onInsetsChanged(ILandroid/graphics/Rect;Landroid/graphics/Rect;ZLcom/oplus/quickstep/dock/DockView;)V

    :cond_e8
    return-void
.end method

.method public getTaskViewByTaskId(I)Lcom/android/quickstep/views/TaskView;
    .registers 9

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_5

    return-object v0

    :cond_5
    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getTaskViewCount()I

    move-result v1

    if-lez v1, :cond_2c

    const/4 v2, 0x0

    move v3, v2

    :goto_d
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/quickstep/views/RecentsView;->requireTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v3

    const-string v5, "requireTaskViewAt(i)"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/quickstep/views/TaskView;->getTaskIds()[I

    move-result-object v5

    aget v6, v5, v2

    if-eq v6, p1, :cond_2b

    const/4 v6, 0x1

    aget v5, v5, v6

    if-ne v5, p1, :cond_26

    goto :goto_2b

    :cond_26
    if-lt v4, v1, :cond_29

    goto :goto_2c

    :cond_29
    move v3, v4

    goto :goto_d

    :cond_2b
    :goto_2b
    return-object v3

    :cond_2c
    :goto_2c
    return-object v0
.end method

.method public getTaskViewCount()I
    .registers 5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1a

    move v2, v1

    :goto_8
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Lcom/android/quickstep/views/TaskView;

    if-eqz v1, :cond_14

    add-int/lit8 v2, v2, 0x1

    :cond_14
    if-lt v3, v0, :cond_18

    move v1, v2

    goto :goto_1a

    :cond_18
    move v1, v3

    goto :goto_8

    :cond_1a
    :goto_1a
    return v1
.end method

.method public final getTransYProperty()Lcom/oplus/quickstep/utils/TranslationYProperty;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/oplus/quickstep/utils/TranslationYProperty<",
            "Lcom/android/quickstep/AnimatedFloat;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->transYProperty$delegate:Ly2/e;

    invoke-interface {p0}, Ly2/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/quickstep/utils/TranslationYProperty;

    return-object p0
.end method

.method public final getWindowTranslationYOffset()I
    .registers 1

    iget p0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->windowTranslationYOffset:I

    return p0
.end method

.method public final getXLocation()F
    .registers 1

    iget p0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->xLocation:F

    return p0
.end method

.method public final getYLocation()F
    .registers 1

    iget p0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->yLocation:F

    return p0
.end method

.method public final getZoomPackage()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mZoomWindowName:Ljava/lang/String;

    return-object p0
.end method

.method public final goHome()Z
    .registers 11

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    instance-of v1, v0, Lcom/android/launcher/Launcher;

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    check-cast v0, Lcom/android/launcher/Launcher;

    goto :goto_b

    :cond_a
    move-object v0, v2

    :goto_b
    const/4 v1, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_11

    :cond_f
    :goto_f
    move v0, v3

    goto :goto_26

    :cond_11
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    if-nez v0, :cond_18

    goto :goto_f

    :cond_18
    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherState;

    if-nez v0, :cond_21

    goto :goto_f

    :cond_21
    iget-boolean v0, v0, Lcom/android/launcher3/LauncherState;->overviewUi:Z

    if-nez v0, :cond_f

    move v0, v1

    :goto_26
    if-eqz v0, :cond_2c

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->notifyGoHome()V

    return v1

    :cond_2c
    iget-object v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mGoHomeListener:Lcom/android/quickstep/views/OplusRecentsViewImpl$GoHomeListener;

    if-nez v0, :cond_31

    goto :goto_34

    :cond_31
    invoke-interface {v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl$GoHomeListener;->cancelAnimationIfNeed()V

    :goto_34
    iput-boolean v1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isGoingToNormalAnimationStarted:Z

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    instance-of v4, v0, Lcom/android/launcher/Launcher;

    if-eqz v4, :cond_3f

    check-cast v0, Lcom/android/launcher/Launcher;

    goto :goto_40

    :cond_3f
    move-object v0, v2

    :goto_40
    if-nez v0, :cond_44

    move-object v0, v2

    goto :goto_48

    :cond_44
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    :goto_48
    const-string v4, "null cannot be cast to non-null type com.android.launcher3.statemanager.OplusStateManager<*>"

    invoke-static {v0, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/statemanager/OplusStateManager;

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/OplusStateManager;->getBackState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    iget-object v5, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    instance-of v6, v5, Lcom/android/launcher/Launcher;

    if-eqz v6, :cond_5c

    check-cast v5, Lcom/android/launcher/Launcher;

    goto :goto_5d

    :cond_5c
    move-object v5, v2

    :goto_5d
    if-nez v5, :cond_61

    move-object v5, v2

    goto :goto_65

    :cond_61
    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v5

    :goto_65
    invoke-static {v5, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v5, Lcom/android/launcher3/statemanager/OplusStateManager;

    invoke-virtual {v5}, Lcom/android/launcher3/statemanager/OplusStateManager;->getLastColorState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v5

    iget-object v6, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    instance-of v7, v6, Lcom/android/launcher/Launcher;

    if-eqz v7, :cond_77

    check-cast v6, Lcom/android/launcher/Launcher;

    goto :goto_78

    :cond_77
    move-object v6, v2

    :goto_78
    if-nez v6, :cond_7c

    move-object v6, v2

    goto :goto_80

    :cond_7c
    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v6

    :goto_80
    invoke-static {v6, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v6, Lcom/android/launcher3/statemanager/OplusStateManager;

    invoke-virtual {v6}, Lcom/android/launcher3/statemanager/StateManager;->getCurrentStableState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v4

    new-instance v6, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v6}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    sget-object v7, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_106

    sget-object v7, Lcom/android/launcher3/LauncherState;->QUICK_SWITCH:Lcom/android/launcher3/LauncherState;

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_106

    sget-object v7, Lcom/android/launcher3/LauncherState;->BACKGROUND_APP:Lcom/android/launcher3/LauncherState;

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_106

    sget-object v7, Lcom/android/launcher3/LauncherState;->SPRING_LOADED:Lcom/android/launcher3/LauncherState;

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_106

    sget-object v7, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c4

    sget-object v8, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_106

    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_106

    :cond_c4
    sget-object v8, Lcom/android/launcher3/states/OplusBaseLauncherState;->ICON_FALLEN_DOWN:Lcom/android/launcher3/LauncherState;

    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_106

    sget-object v8, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e3

    sget-object v9, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-static {v5, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_106

    invoke-static {v4, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e3

    goto :goto_106

    :cond_e3
    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_108

    iget-object v4, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    instance-of v5, v4, Lcom/android/launcher/Launcher;

    if-eqz v5, :cond_f2

    check-cast v4, Lcom/android/launcher/Launcher;

    goto :goto_f3

    :cond_f2
    move-object v4, v2

    :goto_f3
    if-nez v4, :cond_f7

    :goto_f5
    move v4, v3

    goto :goto_102

    :cond_f7
    invoke-virtual {v4}, Lcom/android/launcher/Launcher;->getBatchDragViewManager()Lcom/android/launcher/batchdrag/BatchDragViewManager;

    move-result-object v4

    if-nez v4, :cond_fe

    goto :goto_f5

    :cond_fe
    invoke-virtual {v4}, Lcom/android/launcher/batchdrag/BatchDragViewManager;->getSelectedViewCount()I

    move-result v4

    :goto_102
    if-nez v4, :cond_108

    move-object v0, v8

    goto :goto_108

    :cond_106
    :goto_106
    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    :cond_108
    :goto_108
    iput-object v0, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    instance-of v4, v0, Lcom/android/launcher/Launcher;

    if-eqz v4, :cond_113

    check-cast v0, Lcom/android/launcher/Launcher;

    goto :goto_114

    :cond_113
    move-object v0, v2

    :goto_114
    if-nez v0, :cond_118

    :cond_116
    :goto_116
    move v0, v3

    goto :goto_126

    :cond_118
    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getTaskViewManager()Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;

    move-result-object v0

    if-nez v0, :cond_11f

    goto :goto_116

    :cond_11f
    invoke-virtual {v0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->canGoBackToTaskView()Z

    move-result v0

    if-ne v0, v1, :cond_116

    move v0, v1

    :goto_126
    if-eqz v0, :cond_13a

    const-string v0, "TaskView"

    const-string v4, "OplusRecentsView"

    const-string v5, "goHome: task view was shown, so we should go back to NORAML"

    invoke-static {v0, v4, v5}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    iput-object v0, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-static {v0, v3}, Lcom/android/launcher3/AbstractFloatingView;->closeAllOpenViews(Lcom/android/launcher3/views/ActivityContext;Z)V

    :cond_13a
    iget-object v0, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    sget-object v3, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14e

    iget-object v0, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    sget-object v3, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15b

    :cond_14e
    iget-object v0, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    const-string v3, "null cannot be cast to non-null type com.android.launcher3.states.OPlusBaseState"

    invoke-static {v0, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/states/OPlusBaseState;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lcom/android/launcher3/states/OPlusBaseState;->addActionFlag(I)V

    :cond_15b
    iget-object v0, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    instance-of v3, v0, Lcom/android/launcher3/LauncherState;

    if-eqz v3, :cond_164

    check-cast v0, Lcom/android/launcher3/LauncherState;

    goto :goto_165

    :cond_164
    move-object v0, v2

    :goto_165
    invoke-static {v0}, Lcom/android/launcher3/states/OPlusBaseState;->setTargetLauncherState(Lcom/android/launcher3/states/OPlusBaseState;)V

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    instance-of v3, v0, Lcom/android/launcher/Launcher;

    if-eqz v3, :cond_171

    move-object v2, v0

    check-cast v2, Lcom/android/launcher/Launcher;

    :cond_171
    if-nez v2, :cond_174

    goto :goto_18d

    :cond_174
    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    if-nez v0, :cond_17b

    goto :goto_18d

    :cond_17b
    check-cast v0, Lcom/android/launcher3/statemanager/OplusStateManager;

    iget-object v2, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Lcom/android/launcher3/statemanager/BaseState;

    new-instance v3, Lcom/android/quickstep/views/y;

    invoke-direct {v3, p0, v6}, Lcom/android/quickstep/views/y;-><init>(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-static {v3}, Lcom/android/launcher3/anim/AnimatorListeners;->forEndCallback(Ljava/lang/Runnable;)Landroid/animation/Animator$AnimatorListener;

    move-result-object p0

    invoke-virtual {v0, v2, v1, p0}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;ZLandroid/animation/Animator$AnimatorListener;)V

    :goto_18d
    return v1
.end method

.method public isClearAllHidden()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public final isCurrentPageTask(Lcom/android/quickstep/views/TaskView;)Z
    .registers 3

    const/4 v0, 0x0

    if-nez p1, :cond_4

    goto :goto_1c

    :cond_4
    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p1

    if-nez p1, :cond_b

    goto :goto_1c

    :cond_b
    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-nez p1, :cond_10

    goto :goto_1c

    :cond_10
    iget p1, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/RecentsView;->getTaskIndexForId(I)I

    move-result p1

    iget p0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    if-ne p1, p0, :cond_1c

    const/4 p0, 0x1

    move v0, p0

    :cond_1c
    :goto_1c
    return v0
.end method

.method public final isDockViewHide()Z
    .registers 3

    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p0

    const-string v0, "mActivity.deviceProfile"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_15

    return v1

    :cond_15
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-boolean v1, p0, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    goto :goto_2a

    :cond_1e
    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    if-nez v0, :cond_2a

    iget-boolean p0, p0, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-eqz p0, :cond_29

    goto :goto_2a

    :cond_29
    const/4 v1, 0x0

    :cond_2a
    :goto_2a
    return v1
.end method

.method public final isFreeScroll()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/PagedView;->mFreeScroll:Z

    return p0
.end method

.method public final isGustureActive()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/quickstep/views/RecentsView;->mGestureActive:Z

    return p0
.end method

.method public final isInState(Lcom/android/launcher3/LauncherState;)Z
    .registers 4

    const-string/jumbo v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    instance-of v0, p0, Lcom/android/launcher3/Launcher;

    if-eqz v0, :cond_f

    check-cast p0, Lcom/android/launcher3/Launcher;

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_15

    goto :goto_1c

    :cond_15
    invoke-virtual {p0, p1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p0

    if-ne p0, v1, :cond_1c

    move v0, v1

    :cond_1c
    :goto_1c
    return v0
.end method

.method public final isRemovingAllTaskViews()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isRemovingAllTaskViews:Z

    return p0
.end method

.method public final isRotateAnimationEnd()Z
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mRotateAnimation:Landroid/animation/AnimatorSet;

    if-nez p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public final isScrolling()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isScrolling:Z

    return p0
.end method

.method public final isSetRotationByActivityInit()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isSetRotationByActivityInit:Z

    return p0
.end method

.method public isSnapToPageStart()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mIsSnapToPageStart:Z

    return p0
.end method

.method public final isWaitTaskAnimationStart()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isWaitTaskAnimationStart:Z

    return p0
.end method

.method public loadVisibleTaskData(I)V
    .registers 15

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->showAsGrid()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-super {p0, p1}, Lcom/android/quickstep/views/RecentsView;->loadVisibleTaskData(I)V

    return-void

    :cond_a
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsLayoutValid:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_23

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mHasVisibleTaskData:Landroid/util/SparseBooleanArray;

    const-string v3, "mHasVisibleTaskData"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-eqz v0, :cond_1f

    move v0, v1

    goto :goto_20

    :cond_1f
    move v0, v2

    :goto_20
    if-eqz v0, :cond_23

    return-void

    :cond_23
    iget-boolean v0, p0, Lcom/android/quickstep/views/RecentsView;->mOverviewStateEnabled:Z

    if-nez v0, :cond_31

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    invoke-virtual {v0}, Lcom/android/launcher3/util/OverScroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_31

    move v0, v1

    goto :goto_32

    :cond_31
    move v0, v2

    :goto_32
    if-nez v0, :cond_134

    iget v0, p0, Lcom/android/quickstep/views/RecentsView;->mTaskListChangeId:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_3b

    goto/16 :goto_134

    :cond_3b
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageNearestToCenterOfScreen()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    add-int/lit8 v4, v0, -0x2

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v5, v0, 0x2

    add-int/lit8 v6, v3, -0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->lastLoadTaskDataCenterIndex:I

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->showAsGrid()Z

    move-result v7

    if-eqz v7, :cond_6c

    iget-object v7, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v7, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScroll(Landroid/view/View;)I

    move-result v7

    iget-object v8, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v8, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getMeasuredSize(Landroid/view/View;)I

    move-result v8

    div-int/lit8 v9, v8, 0x2

    sub-int v10, v7, v9

    add-int/2addr v7, v8

    add-int/2addr v7, v9

    goto :goto_6e

    :cond_6c
    move v7, v2

    move v10, v7

    :goto_6e
    iget-boolean v8, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->logLoadVisibleTaskData:Z

    if-eqz v8, :cond_e7

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v8

    if-eqz v8, :cond_e7

    iput-boolean v2, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->logLoadVisibleTaskData:Z

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v8

    if-eqz v8, :cond_e7

    const-string v8, "loadVisibleTaskData(), numChildren="

    const-string v9, ",dataChanges="

    const-string v11, ", lower="

    invoke-static {v8, v3, v9, p1, v11}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, ", upper="

    const-string v9, ", mTmpRunningTasks="

    invoke-static {v3, v4, v8, v5, v9}, Landroidx/constraintlayout/core/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    iget-object v8, p0, Lcom/android/quickstep/views/RecentsView;->mTmpRunningTasks:[Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", curPage="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", scroll="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v8, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScroll(Landroid/view/View;)I

    move-result v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", scale="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v8, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScale(Landroid/view/View;)F

    move-result v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, ", pivotX="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPivotX()F

    move-result v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, ", pivotY="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPivotY()F

    move-result v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, ", centerPageIndex="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "QuickStep"

    const-string v8, "OplusRecentsView"

    invoke-static {v3, v8, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_e7
    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, -0x2

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v3, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    add-int/lit8 v3, v3, 0x2

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getTaskViewCount()I

    move-result v6

    if-lez v6, :cond_134

    move v8, v2

    :goto_fe
    add-int/lit8 v9, v8, 0x1

    invoke-virtual {p0, v8}, Lcom/android/quickstep/views/RecentsView;->requireTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v8

    if-nez v8, :cond_107

    goto :goto_12f

    :cond_107
    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v11

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->showAsGrid()Z

    move-result v12

    if-eqz v12, :cond_116

    invoke-virtual {p0, v8, v10, v7}, Lcom/android/quickstep/views/RecentsView;->isTaskViewWithinBounds(Lcom/android/quickstep/views/TaskView;II)Z

    move-result v12

    goto :goto_12c

    :cond_116
    if-gt v4, v11, :cond_11c

    if-gt v11, v5, :cond_11c

    move v12, v1

    goto :goto_11d

    :cond_11c
    move v12, v2

    :goto_11d
    if-nez v12, :cond_12b

    if-gt v0, v11, :cond_125

    if-gt v11, v3, :cond_125

    move v12, v1

    goto :goto_126

    :cond_125
    move v12, v2

    :goto_126
    if-eqz v12, :cond_129

    goto :goto_12b

    :cond_129
    move v12, v2

    goto :goto_12c

    :cond_12b
    :goto_12b
    move v12, v1

    :goto_12c
    invoke-direct {p0, v8, v11, p1, v12}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->changeTaskVisibility(Lcom/android/quickstep/views/TaskView;IIZ)V

    :goto_12f
    if-lt v9, v6, :cond_132

    goto :goto_134

    :cond_132
    move v8, v9

    goto :goto_fe

    :cond_134
    :goto_134
    return-void
.end method

.method public maybeCurrentScrollWrong()V
    .registers 9

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->showAsGrid()Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, ", currentPageScroll="

    const-string v3, ", mMaxScroll="

    const-string v4, "maybeCurrentScrollWrong: mMinScrollX="

    const-string v5, "OplusRecentsView"

    const-string v6, "QuickStep"

    if-eqz v0, :cond_82

    invoke-static {v4}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p0, Lcom/android/launcher3/PagedView;->mMinScroll:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/launcher3/PagedView;->mMaxScroll:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v2}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getScrollForPage(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",currentScroll="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v2, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScroll(Landroid/view/View;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ,outPageScrolls "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mPageScrolls:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",lastViewIndex= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getLastViewIndex()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",firstViewIndex= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getFirstViewIndex()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v5, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getTaskViewCount()I

    move-result v0

    if-le v0, v1, :cond_81

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->computeMinScroll()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->computeMaxScroll()I

    move-result v1

    if-ne v0, v1, :cond_81

    const-string v0, "maybeCurrentScrollWrong: computeMinScroll() == computeMaxScroll()"

    invoke-static {v6, v5, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->reloadIfNeeded()V

    :cond_81
    return-void

    :cond_82
    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getScrollForPage(I)I

    move-result v0

    iget-object v7, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v7, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScroll(Landroid/view/View;)I

    move-result v7

    if-eq v0, v7, :cond_92

    iput-boolean v1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->reloadVisibleTaskData:Z

    :cond_92
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v1

    if-eqz v1, :cond_ae

    invoke-static {v4}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/android/launcher3/PagedView;->mMinScroll:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/launcher3/PagedView;->mMaxScroll:I

    const-string v3, ", currentScroll="

    invoke-static {v1, p0, v2, v0, v3}, Landroidx/constraintlayout/core/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-static {v1, v7, v6, v5}, Lcom/android/launcher/download/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    :cond_ae
    return-void
.end method

.method public maybeDrawEmptyMessage(Landroid/graphics/Canvas;)V
    .registers 8

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/quickstep/views/RecentsView;->mShowEmptyMessage:Z

    if-eqz v0, :cond_a0

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mEmptyTextLayout:Landroid/text/Layout;

    if-eqz v0, :cond_a0

    iget-boolean v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->forceHideEmptyMessage:Z

    if-nez v0, :cond_a0

    iget-object v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->relayInteraction:Lcom/oplus/quickstep/relay/RecentRelayInteraction;

    invoke-virtual {v0}, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->relayValid()Z

    move-result v0

    if-eqz v0, :cond_1b

    goto/16 :goto_a0

    :cond_1b
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mTempRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    add-int/2addr v2, v1

    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    add-int/2addr v3, v1

    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v4

    add-int/2addr v4, v1

    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getDegreesRotated()F

    move-result v0

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mEmptyTextLayout:Landroid/text/Layout;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/text/Layout;->getWidth()I

    move-result v1

    shr-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mEmptyTextLayout:Landroid/text/Layout;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I

    move-result v2

    shr-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mEmptyTextLayout:Landroid/text/Layout;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v2, "mEmptyTextLayout!!"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mLastComputedTaskSize:Landroid/graphics/Rect;

    const-string v3, "mLastComputedTaskSize"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/quickstep/views/RecentsView;->mTempRect:Landroid/graphics/Rect;

    const-string v4, "mTempRect"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;->getEmptyMessageLayoutTranslationX(Landroid/view/View;Landroid/text/Layout;Landroid/graphics/Rect;Landroid/graphics/Rect;)F

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mEmptyTextLayout:Landroid/text/Layout;

    iget-object v3, p0, Lcom/android/quickstep/views/RecentsView;->mLastComputedTaskSize:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/quickstep/views/RecentsView;->mTempRect:Landroid/graphics/Rect;

    invoke-interface {v1, p0, v2, v3, v4}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;->getEmptyMessageLayoutTranslationY(Landroid/view/View;Landroid/text/Layout;Landroid/graphics/Rect;Landroid/graphics/Rect;)F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->mEmptyTextLayout:Landroid/text/Layout;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_a0
    :goto_a0
    return-void
.end method

.method public needFlingWhenTouchUp(ZZ)Z
    .registers 3

    iget-object p1, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {p1, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScroll(Landroid/view/View;)I

    move-result p1

    iget p2, p0, Lcom/android/launcher3/PagedView;->mMaxScroll:I

    if-gt p1, p2, :cond_11

    iget p0, p0, Lcom/android/launcher3/PagedView;->mMinScroll:I

    if-ge p1, p0, :cond_f

    goto :goto_11

    :cond_f
    const/4 p0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 p0, 0x1

    :goto_12
    return p0
.end method

.method public final needReloadTask()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/quickstep/views/RecentsView;->mNeedReloadTask:Z

    return p0
.end method

.method public final notifyCurrentScrollChange()V
    .registers 2

    iget-boolean v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mDisallowScrollByTouch:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object p0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mCurrentScrollChangeListener:Lcom/android/quickstep/views/OplusRecentsViewImpl$OnCurrentScrollChangeListener;

    if-nez p0, :cond_a

    goto :goto_d

    :cond_a
    invoke-interface {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl$OnCurrentScrollChangeListener;->onScrollChange()V

    :goto_d
    return-void
.end method

.method public notifyCurrentScrollChange(IZ)V
    .registers 6

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isInternalLogOpen()Z

    move-result v0

    if-eqz v0, :cond_26

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyCurrentScrollChange: scroll = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isDiff = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickStep"

    const-string v2, "OplusRecentsView"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_26
    if-eqz p2, :cond_2b

    iget p2, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mCurrentScroll:I

    add-int/2addr p1, p2

    :cond_2b
    iget p2, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mCurrentScroll:I

    if-eq p2, p1, :cond_34

    iput p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mCurrentScroll:I

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->notifyCurrentScrollChange()V

    :cond_34
    return-void
.end method

.method public final notifyForceReturnToOriginalPage()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mForceReturnToOriginalPage:Z

    return-void
.end method

.method public final notifyGoHome()V
    .registers 2

    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-static {v0}, Lcom/android/launcher3/states/OPlusBaseState;->setTargetLauncherState(Lcom/android/launcher3/states/OPlusBaseState;)V

    iget-object p0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mGoHomeListener:Lcom/android/quickstep/views/OplusRecentsViewImpl$GoHomeListener;

    if-nez p0, :cond_a

    goto :goto_d

    :cond_a
    invoke-interface {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl$GoHomeListener;->onGoHome()V

    :goto_d
    return-void
.end method

.method public notifySfAnimatingIfNeed()V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    invoke-virtual {v0}, Lcom/android/launcher3/util/OverScroller;->getDuration()I

    move-result v0

    const-string v1, "OplusRecentsView"

    const-string v2, "QuickStep"

    if-gtz v0, :cond_26

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifySfAnimatingIfNeed: duration is "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", so we are not notify sf"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_26
    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getBooster()Lcom/oplus/quickstep/utils/RecentsBooster;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/oplus/quickstep/utils/RecentsBooster;->openSf(I)V

    iget-boolean v3, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isRecentsViewScrollStarted:Z

    if-nez v3, :cond_39

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isRecentsViewScrollStarted:Z

    sget-object p0, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->RECENTS_SCROLL:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    invoke-static {p0}, Lcom/oplus/quickstep/utils/TracePrintUtil;->asyncTraceBegin(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;)V

    :cond_39
    const-string p0, "notifySfAnimatingIfNeed: notify sf animating, duration is "

    invoke-static {v0, p0, v2, v1}, Lcom/android/launcher/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final notifyWorkspaceVisible(Z)V
    .registers 2

    return-void
.end method

.method public onAttachedToWindow()V
    .registers 7

    const-wide/16 v0, 0x8

    const-string v2, "RecentsView#onAttachedToWindow"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-super {p0}, Lcom/android/quickstep/views/RecentsView;->onAttachedToWindow()V

    sget-object v2, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {v2, p0}, Lcom/android/launcher3/util/DisplayController;->addChangeListener(Lcom/android/launcher3/util/DisplayController$DisplayInfoChangeListener;)V

    iget-object v2, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "allow_resizeable_screen"

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mAllowResizeableInSettingObserver:Landroid/database/ContentObserver;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    new-instance v2, Lcom/oplus/quickstep/common/observers/ZoomWindowChangeObserver;

    invoke-direct {v2}, Lcom/oplus/quickstep/common/observers/ZoomWindowChangeObserver;-><init>()V

    iput-object v2, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mZoomWindowChangeobserver:Lcom/oplus/quickstep/common/observers/ZoomWindowChangeObserver;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, p0}, Lcom/oplus/quickstep/common/observers/ZoomWindowChangeObserver;->setZoomWindowChange(Lcom/oplus/quickstep/common/observers/ZoomWindowChangeObserver$ZoomWindowChange;)V

    iget-object v2, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mZoomWindowChangeobserver:Lcom/oplus/quickstep/common/observers/ZoomWindowChangeObserver;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/oplus/quickstep/common/observers/ZoomWindowChangeObserver;->registerZoomWindowObserver()V

    sget-object v2, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v2}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result v2

    if-eqz v2, :cond_80

    sget-object v2, Lcom/oplus/quickstep/utils/CompatibleDataBaseUtils;->Companion:Lcom/oplus/quickstep/utils/CompatibleDataBaseUtils$Companion;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "context"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/oplus/quickstep/utils/CompatibleDataBaseUtils$Companion;->queryCompatibleDataBase(Landroid/content/Context;)V

    const-string v2, "OplusRecentsView"

    const-string v3, "registerCompatibleModeObserver"

    invoke-static {v2, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getObserverBinder()Lcom/oplus/exsystemservice/fantasywindow/IFantasyObserver;

    move-result-object v3

    iput-object v3, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mCompatibleModeObserver:Lcom/oplus/exsystemservice/fantasywindow/IFantasyObserver;

    if-nez v3, :cond_66

    goto :goto_80

    :cond_66
    :try_start_66
    invoke-interface {v3}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    if-nez v3, :cond_6d

    goto :goto_80

    :cond_6d
    new-instance v4, Lcom/android/quickstep/b1;

    invoke-direct {v4, p0}, Lcom/android/quickstep/b1;-><init>(Lcom/android/quickstep/views/OplusRecentsViewImpl;)V

    invoke-interface {v3, v4, v5}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_75
    .catch Landroid/os/RemoteException; {:try_start_66 .. :try_end_75} :catch_76

    goto :goto_80

    :catch_76
    move-exception v3

    const-string v4, "linkToDeath----> "

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_80
    :goto_80
    sget-object v2, Lcom/android/quickstep/TopTaskTracker;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v3, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/quickstep/TopTaskTracker;

    invoke-virtual {v2, p0}, Lcom/android/quickstep/TopTaskTracker;->addOnTaskStageChangedListener(Lcom/android/quickstep/TopTaskTracker$OnTaskStageChangedListener;)V

    iget-object v2, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mDragModeReceiver:Lcom/oplus/quickstep/receiver/DragModeReceiver;

    iget-object v3, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    const-string v4, "mActivity"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v5}, Lcom/oplus/quickstep/receiver/DragModeReceiver;->register(Lcom/android/launcher3/views/ActivityContext;Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getMGaReceiver()Lcom/oplus/quickstep/receiver/GoogleActionVoiceReceiver;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/oplus/quickstep/receiver/GoogleActionVoiceReceiver;->register(Lcom/android/quickstep/views/OplusRecentsViewImpl;)V

    iget-object p0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->relayInteraction:Lcom/oplus/quickstep/relay/RecentRelayInteraction;

    invoke-virtual {p0}, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->onRecentAttached()V

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public final onClearAllAnimationFinished(Lcom/android/quickstep/views/OplusTaskViewImpl;)V
    .registers 7

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mHasRemoveAllViewsTask:Z

    iput-object p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mExceptedRemovedTaskView:Lcom/android/quickstep/views/TaskView;

    const-string v1, "onClearAllAnimationFinished(), excepted="

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "QuickStep"

    const-string v3, "OplusRecentsView"

    invoke-static {v2, v3, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_24

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_1b

    goto :goto_24

    :cond_1b
    invoke-virtual {p1}, Lcom/android/quickstep/views/OplusTaskViewImpl;->launchTaskAnimated()Lcom/android/launcher3/util/RunnableList;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v1, v2}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->postRemoveAllViewTask(J)V

    goto :goto_2c

    :cond_24
    :goto_24
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->startHome()V

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->postRemoveAllViewTask(J)V

    :goto_2c
    instance-of v1, p1, Lcom/android/quickstep/views/OplusGroupedTaskView;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v1, :cond_44

    iget-object p0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    new-array v0, v0, [Lcom/android/systemui/shared/recents/model/Task;

    if-nez p1, :cond_3a

    move-object p1, v3

    goto :goto_3e

    :cond_3a
    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p1

    :goto_3e
    aput-object p1, v0, v2

    invoke-static {p0, v3, v0}, Lcom/oplus/quickstep/memory/KillAppWrapper;->clearAllTasksExcept(Landroid/content/Context;Ljava/lang/String;[Lcom/android/systemui/shared/recents/model/Task;)V

    goto :goto_58

    :cond_44
    check-cast p1, Lcom/android/quickstep/views/OplusGroupedTaskView;

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v1

    iget-object p1, p1, Lcom/android/quickstep/views/GroupedTaskView;->mSecondaryTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object p0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/android/systemui/shared/recents/model/Task;

    aput-object v1, v4, v2

    aput-object p1, v4, v0

    invoke-static {p0, v3, v4}, Lcom/oplus/quickstep/memory/KillAppWrapper;->clearAllTasksExcept(Landroid/content/Context;Ljava/lang/String;[Lcom/android/systemui/shared/recents/model/Task;)V

    :goto_58
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/android/quickstep/views/RecentsView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    const-string v1, "null cannot be cast to non-null type com.android.quickstep.util.OplusRecentsOrientedStateImpl"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/android/quickstep/util/OplusRecentsOrientedStateImpl;

    invoke-virtual {v0}, Lcom/android/quickstep/util/OplusRecentsOrientedStateImpl;->setSupportedByDensity()V

    :cond_17
    iget v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mLastOrientation:I

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_38

    iget-boolean v0, p0, Lcom/android/quickstep/views/RecentsView;->mHandleTaskStackChanges:Z

    if-eqz v0, :cond_38

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->updateChildTaskOrientations()V

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result v0

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    invoke-virtual {v0}, Lcom/android/launcher3/util/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_38

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->forceFinishScroller()V

    :cond_38
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mLastOrientation:I

    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 8

    const-wide/16 v0, 0x8

    const-string v2, "RecentsView#onDetachedFromWindow"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-super {p0}, Lcom/android/quickstep/views/RecentsView;->onDetachedFromWindow()V

    sget-object v2, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {v2, p0}, Lcom/android/launcher3/util/DisplayController;->removeChangeListener(Lcom/android/launcher3/util/DisplayController$DisplayInfoChangeListener;)V

    iget-object v2, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mDragModeReceiver:Lcom/oplus/quickstep/receiver/DragModeReceiver;

    iget-object v3, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    const-string v4, "mActivity"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/oplus/quickstep/receiver/DragModeReceiver;->unregister(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getMGaReceiver()Lcom/oplus/quickstep/receiver/GoogleActionVoiceReceiver;

    move-result-object v2

    iget-object v3, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    const-string v4, "mContext"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/oplus/quickstep/receiver/GoogleActionVoiceReceiver;->unregister(Landroid/content/Context;)V

    iget-object v2, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mAllowResizeableInSettingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v2, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mZoomWindowChangeobserver:Lcom/oplus/quickstep/common/observers/ZoomWindowChangeObserver;

    const/4 v3, 0x0

    if-eqz v2, :cond_53

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Lcom/oplus/quickstep/common/observers/ZoomWindowChangeObserver;->setZoomWindowChange(Lcom/oplus/quickstep/common/observers/ZoomWindowChangeObserver$ZoomWindowChange;)V

    iget-object v2, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mZoomWindowChangeobserver:Lcom/oplus/quickstep/common/observers/ZoomWindowChangeObserver;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/oplus/quickstep/common/observers/ZoomWindowChangeObserver;->unregisterZoomWindowObserver()V

    iput-object v3, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mZoomWindowChangeobserver:Lcom/oplus/quickstep/common/observers/ZoomWindowChangeObserver;

    :cond_53
    sget-object v2, Lcom/android/quickstep/TopTaskTracker;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v4, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v2, v4}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/quickstep/TopTaskTracker;

    invoke-virtual {v2, p0}, Lcom/android/quickstep/TopTaskTracker;->removeOnTaskStageChangedListener(Lcom/android/quickstep/TopTaskTracker$OnTaskStageChangedListener;)V

    iget-object v2, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mCompatibleModeObserver:Lcom/oplus/exsystemservice/fantasywindow/IFantasyObserver;

    if-eqz v2, :cond_8f

    const-string v2, "OplusRecentsView"

    const-string/jumbo v4, "unregisterCompatibleModeObserver"

    invoke-static {v2, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_6c
    iget-object v4, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mCompatibleModeObserver:Lcom/oplus/exsystemservice/fantasywindow/IFantasyObserver;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v5, "compactwindow"

    iget-object v6, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mCallback:Lcom/oplus/exsystemservice/fantasywindow/IFantasyCallback;

    invoke-interface {v4, v5, v6}, Lcom/oplus/exsystemservice/fantasywindow/IFantasyObserver;->unregisterObserver(Ljava/lang/String;Lcom/oplus/exsystemservice/fantasywindow/IFantasyCallback;)V

    iget-object v4, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mCompatibleModeObserver:Lcom/oplus/exsystemservice/fantasywindow/IFantasyObserver;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v5, "magicwindow"

    iget-object v6, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mCallback:Lcom/oplus/exsystemservice/fantasywindow/IFantasyCallback;

    invoke-interface {v4, v5, v6}, Lcom/oplus/exsystemservice/fantasywindow/IFantasyObserver;->unregisterObserver(Ljava/lang/String;Lcom/oplus/exsystemservice/fantasywindow/IFantasyCallback;)V

    iput-object v3, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mCompatibleModeObserver:Lcom/oplus/exsystemservice/fantasywindow/IFantasyObserver;
    :try_end_86
    .catch Landroid/os/RemoteException; {:try_start_6c .. :try_end_86} :catch_87

    goto :goto_8f

    :catch_87
    move-exception v3

    invoke-virtual {v3}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8f
    :goto_8f
    iget-object p0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->relayInteraction:Lcom/oplus/quickstep/relay/RecentRelayInteraction;

    invoke-virtual {p0}, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->onRecentDetached()V

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public onDisplayInfoChanged(Landroid/content/Context;Lcom/android/launcher3/util/DisplayController$Info;I)V
    .registers 5

    and-int/lit8 p1, p3, 0x2

    if-eqz p1, :cond_30

    iget-object p1, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isInternalLogOpen()Z

    move-result p2

    if-eqz p2, :cond_25

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "onDisplayInfoChanged  "

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "QuickStep"

    const-string v0, "OplusRecentsView"

    invoke-static {p3, v0, p2}, Lcom/android/common/debug/LogUtils;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_25
    iget-object p2, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {p2, p1}, Lcom/android/quickstep/util/RecentsOrientedState;->setRecentsRotation(I)Z

    move-result p1

    if-eqz p1, :cond_30

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->updateOrientationHandler()V

    :cond_30
    return-void
.end method

.method public onEdgeAbsorbingScroll()V
    .registers 1

    return-void
.end method

.method public onGestureAnimationEnd()V
    .registers 6

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mIsSnapToPageStart:Z

    iput-boolean v0, p0, Lcom/android/quickstep/views/RecentsView;->mGestureActive:Z

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {v1, v0}, Lcom/android/quickstep/util/RecentsOrientedState;->setGestureActive(Z)Z

    move-result v1

    if-eqz v1, :cond_2e

    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {v2}, Lcom/android/quickstep/util/RecentsOrientedState;->getOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->hasLargeDisplayFeatures()Z

    move-result v1

    if-eqz v1, :cond_2b

    const-string v1, "OplusRecentsView"

    const-string v2, "onGestureAnimationEnd(), rotate all child when widescreen open"

    invoke-static {v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->updateChildTaskOrientations()V

    :cond_2b
    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->updateOrientationHandler()V

    :cond_2e
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/launcher3/PagedView;->setEnableFreeScroll(Z)V

    iget-object v3, p0, Lcom/android/quickstep/views/RecentsView;->mCurrentGestureEndTarget:Lcom/android/quickstep/GestureState$GestureEndTarget;

    sget-object v4, Lcom/android/quickstep/GestureState$GestureEndTarget;->RECENTS:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-ne v3, v4, :cond_3e

    move v3, v2

    goto :goto_3f

    :cond_3e
    move v3, v0

    :goto_3f
    invoke-virtual {p0, v3}, Lcom/android/quickstep/views/RecentsView;->setEnableDrawingLiveTile(Z)V

    iget-object v3, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v3}, Lcom/android/launcher3/statemanager/StatefulActivity;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v3

    sget-object v4, Lcom/android/launcher3/LauncherState;->BACKGROUND_APP:Lcom/android/launcher3/LauncherState;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5e

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getTaskIdsForRunningTaskView()[I

    move-result-object v3

    aget v3, v3, v0

    const/4 v4, -0x1

    if-eq v3, v4, :cond_5e

    move v0, v2

    :cond_5e
    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setRunningTaskHidden(Z)V

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->animateUpTaskIconScale()V

    iput-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mCurrentGestureEndTarget:Lcom/android/quickstep/GestureState$GestureEndTarget;

    return-void
.end method

.method public onGestureAnimationStart([Lcom/android/systemui/shared/recents/model/Task;Lcom/android/quickstep/RotationTouchHelper;)V
    .registers 6

    const-string v0, "rotationTouchHelper"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "QuickStep"

    const-string v1, "OplusRecentsView"

    const-string v2, "onGestureAnimationStart()"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mIsSnapToPageStart:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mGestureAnimationStarted:Z

    invoke-super {p0, p1, p2}, Lcom/android/quickstep/views/RecentsView;->onGestureAnimationStart([Lcom/android/systemui/shared/recents/model/Task;Lcom/android/quickstep/RotationTouchHelper;)V

    iput-boolean v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mGestureAnimationStarted:Z

    iget-object p0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mGoHomeListener:Lcom/android/quickstep/views/OplusRecentsViewImpl$GoHomeListener;

    if-nez p0, :cond_1e

    goto :goto_21

    :cond_1e
    invoke-interface {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl$GoHomeListener;->cancelAnimationIfNeed()V

    :goto_21
    return-void
.end method

.method public onLayout(ZIIII)V
    .registers 7

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getPageCount()I

    move-result v0

    if-nez v0, :cond_13

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setScrollX(I)V

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setScrollY(I)V

    sget-object p1, Lcom/oplus/quickstep/utils/RecentsLayoutManager;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsLayoutManager;

    invoke-virtual {p1, p0}, Lcom/oplus/quickstep/utils/RecentsLayoutManager;->layoutClearButton(Lcom/android/quickstep/views/OplusRecentsViewImpl;)V

    return-void

    :cond_13
    invoke-super/range {p0 .. p5}, Lcom/android/quickstep/views/RecentsView;->onLayout(ZIIII)V

    return-void
.end method

.method public onNotSnappingToPageInFreeScroll()V
    .registers 7

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    invoke-virtual {v0}, Lcom/android/launcher3/util/OverScroller;->getFinalX()I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/PagedView;->mMinScroll:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iget v3, p0, Lcom/android/launcher3/PagedView;->mMaxScroll:I

    const/4 v4, 0x0

    if-ge v0, v3, :cond_13

    if-gt v1, v0, :cond_13

    move v1, v2

    goto :goto_14

    :cond_13
    move v1, v4

    :goto_14
    if-eqz v1, :cond_84

    iget-boolean v1, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-nez v1, :cond_1c

    move v1, v4

    goto :goto_21

    :cond_1c
    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getPageCount()I

    move-result v1

    sub-int/2addr v1, v2

    :goto_21
    invoke-virtual {p0, v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getScrollForPage(I)I

    move-result v1

    iget-boolean v3, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-nez v3, :cond_2f

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getPageCount()I

    move-result v3

    sub-int/2addr v3, v2

    goto :goto_30

    :cond_2f
    move v3, v4

    :goto_30
    invoke-virtual {p0, v3}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getScrollForPage(I)I

    move-result v3

    iget v5, p0, Lcom/android/launcher3/PagedView;->mMinScroll:I

    add-int/2addr v1, v5

    div-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_3c

    goto :goto_4a

    :cond_3c
    iget v5, p0, Lcom/android/launcher3/PagedView;->mMaxScroll:I

    add-int/2addr v3, v5

    div-int/lit8 v3, v3, 0x2

    if-le v0, v3, :cond_44

    goto :goto_4a

    :cond_44
    iget v0, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getScrollForPage(I)I

    move-result v5

    :goto_4a
    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->showAsGrid()Z

    move-result v0

    if-eqz v0, :cond_70

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->isSplitSelectionActive()Z

    move-result v0

    if-eqz v0, :cond_57

    return-void

    :cond_57
    iget v0, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->getTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    if-eqz v0, :cond_6c

    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView;->isFocusedTask()Z

    move-result v1

    if-eqz v1, :cond_6c

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->isTaskViewFullyVisible(Lcom/android/quickstep/views/TaskView;)Z

    move-result v0

    if-eqz v0, :cond_6c

    goto :goto_6d

    :cond_6c
    move v2, v4

    :goto_6d
    if-nez v2, :cond_70

    return-void

    :cond_70
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    invoke-virtual {v0, v5}, Lcom/android/launcher3/util/OverScroller;->setFinalX(I)V

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    invoke-virtual {v0}, Lcom/android/launcher3/util/OverScroller;->getDuration()I

    move-result v0

    rsub-int v0, v0, 0x10e

    if-lez v0, :cond_84

    iget-object p0, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/OverScroller;->extendDuration(I)V

    :cond_84
    return-void
.end method

.method public onPageBeginTransition()V
    .registers 2

    invoke-super {p0}, Lcom/android/quickstep/views/RecentsView;->onPageBeginTransition()V

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mBeginScrollOnMultiWindow:Z

    return-void
.end method

.method public onPageEndTransition()V
    .registers 2

    invoke-super {p0}, Lcom/android/quickstep/views/RecentsView;->onPageEndTransition()V

    iget-boolean v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mBeginScrollOnMultiWindow:Z

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->dockView:Lcom/oplus/quickstep/dock/DockView;

    if-nez v0, :cond_14

    goto :goto_17

    :cond_14
    invoke-virtual {v0}, Lcom/oplus/quickstep/dock/DockView;->clearEnterAnim()V

    :cond_17
    :goto_17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mBeginScrollOnMultiWindow:Z

    return-void
.end method

.method public onScrollInteractionBegin()V
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->dockView:Lcom/oplus/quickstep/dock/DockView;

    if-nez p0, :cond_5

    goto :goto_8

    :cond_5
    invoke-virtual {p0}, Lcom/oplus/quickstep/dock/DockView;->onParentScrollInteractionBegin()V

    :goto_8
    return-void
.end method

.method public onScrollOverPageChanged()V
    .registers 1

    return-void
.end method

.method public onSizeChanged(IIII)V
    .registers 5

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/RecentsView;->updateEmptyStateUi(Z)V

    return-void
.end method

.method public onSwipeUpAnimationSuccess()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->notifyWorkspaceVisible(Z)V

    invoke-super {p0}, Lcom/android/quickstep/views/RecentsView;->onSwipeUpAnimationSuccess()V

    sget-object v0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    invoke-virtual {v0, p0}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->showLightningAnimation(Lcom/android/quickstep/views/OplusRecentsViewImpl;)V

    iget-object p0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->dockView:Lcom/oplus/quickstep/dock/DockView;

    if-nez p0, :cond_11

    goto :goto_14

    :cond_11
    invoke-virtual {p0}, Lcom/oplus/quickstep/dock/DockView;->playEnterAnimationIfNeeded()V

    :goto_14
    return-void
.end method

.method public onTaskIconChanged(Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 11

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getTaskViewCount()I

    move-result v0

    if-lez v0, :cond_7e

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/quickstep/views/RecentsView;->getTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v2

    instance-of v4, v2, Lcom/android/quickstep/views/OplusTaskViewImpl;

    const/4 v5, 0x0

    if-eqz v4, :cond_16

    check-cast v2, Lcom/android/quickstep/views/OplusTaskViewImpl;

    goto :goto_17

    :cond_16
    move-object v2, v5

    :goto_17
    if-nez v2, :cond_1b

    goto/16 :goto_79

    :cond_1b
    const/4 v4, 0x1

    if-nez p1, :cond_20

    :cond_1e
    move v6, v1

    goto :goto_38

    :cond_20
    invoke-virtual {v2}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v6

    if-nez v6, :cond_28

    :goto_26
    move-object v6, v5

    goto :goto_31

    :cond_28
    iget-object v6, v6, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-nez v6, :cond_2d

    goto :goto_26

    :cond_2d
    invoke-virtual {v6}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object v6

    :goto_31
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-ne v6, v4, :cond_1e

    move v6, v4

    :goto_38
    if-eqz v6, :cond_79

    invoke-virtual {v2}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v6

    if-nez v6, :cond_42

    :goto_40
    move-object v6, v5

    goto :goto_4d

    :cond_42
    iget-object v6, v6, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-nez v6, :cond_47

    goto :goto_40

    :cond_47
    iget v6, v6, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    :goto_4d
    if-nez p2, :cond_51

    move-object v7, v5

    goto :goto_59

    :cond_51
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    :goto_59
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_79

    invoke-virtual {v2}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v6

    if-nez v6, :cond_66

    goto :goto_68

    :cond_66
    iput-object v5, v6, Lcom/android/systemui/shared/recents/model/Task;->icon:Landroid/graphics/drawable/Drawable;

    :goto_68
    invoke-virtual {v2}, Lcom/android/quickstep/views/OplusTaskViewImpl;->getHeaderView()Lcom/oplus/quickstep/views/OplusTaskHeaderView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getTaskIcon()Lcom/android/quickstep/views/OplusIconView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/quickstep/views/OplusIconView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_79

    invoke-virtual {v2, v4}, Lcom/android/quickstep/views/TaskView;->onTaskListVisibilityChanged(Z)V

    :cond_79
    :goto_79
    if-lt v3, v0, :cond_7c

    goto :goto_7e

    :cond_7c
    move v2, v3

    goto :goto_8

    :cond_7e
    :goto_7e
    return-void
.end method

.method public onTaskLaunchAnimationEnd(Z)V
    .registers 5

    const-string v0, "onTaskLaunchAnimationEnd(), success="

    const-string v1, "QuickStep"

    const-string v2, "OplusRecentsView"

    invoke-static {p1, v0, v1, v2}, Lcom/android/launcher/wallpaper/e;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->setTaskLaunchAnimRunning(Z)V

    invoke-super {p0, p1}, Lcom/android/quickstep/views/RecentsView;->onTaskLaunchAnimationEnd(Z)V

    return-void
.end method

.method public onTaskLaunchEnd(Z)V
    .registers 6

    const-string v0, "onTaskLaunchEnd(), success="

    const-string v1, ", mGestureActive="

    invoke-static {v0, p1, v1}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/quickstep/views/RecentsView;->mGestureActive:Z

    const-string v2, "QuickStep"

    const-string v3, "OplusRecentsView"

    invoke-static {v0, v1, v2, v3}, Lcom/android/launcher/d0;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/android/quickstep/views/RecentsView;->onTaskLaunchEnd(Z)V

    if-nez p1, :cond_2d

    iget-boolean p1, p0, Lcom/android/quickstep/views/RecentsView;->mGestureActive:Z

    if-nez p1, :cond_2d

    const-string p1, "onTaskLaunchEnd(), start app failed, so reset the status to overview"

    invoke-static {v2, v3, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->resetTaskVisuals()V

    iget-object p1, p0, Lcom/android/quickstep/views/RecentsView;->mClearAllButton:Lcom/oplus/quickstep/views/OplusClearAllPanelView;

    if-nez p1, :cond_27

    goto :goto_2d

    :cond_27
    const/4 v0, 0x0

    const-string v1, "onTaskLaunchEnd"

    invoke-virtual {p1, v0, v1}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->playExitAnimator(ZLjava/lang/String;)V

    :cond_2d
    :goto_2d
    iget-object p0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->dockView:Lcom/oplus/quickstep/dock/DockView;

    if-nez p0, :cond_32

    goto :goto_35

    :cond_32
    invoke-virtual {p0}, Lcom/oplus/quickstep/dock/DockView;->updateDockViewVisiblity()V

    :goto_35
    return-void
.end method

.method public onTaskStageChanged(I)V
    .registers 8

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->hasLargeDisplayFeatures()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    const-string v1, "OplusRecentsView"

    const-string v2, "QuickStep"

    if-eqz v0, :cond_35

    const-string v0, "onTaskStageChanged: id = "

    const-string v3, ", miniWindowTaskId = "

    invoke-static {v0, p1, v3}, Landroidx/appcompat/widget/d;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->Companion:Lcom/oplus/quickstep/views/OplusTaskHeaderView$Companion;

    invoke-virtual {v3}, Lcom/oplus/quickstep/views/OplusTaskHeaderView$Companion;->getMiniWindowTaskId()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", miniWindowName = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/oplus/quickstep/views/OplusTaskHeaderView$Companion;->getMiniWindowName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_35
    sget-object v0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->Companion:Lcom/oplus/quickstep/views/OplusTaskHeaderView$Companion;

    invoke-virtual {v0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView$Companion;->getMiniWindowTaskId()I

    move-result v3

    const-string v4, "Default"

    const/4 v5, 0x0

    if-eq p1, v3, :cond_6c

    invoke-virtual {v0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView$Companion;->getMiniWindowName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6c

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getTaskViewByTaskId(I)Lcom/android/quickstep/views/TaskView;

    move-result-object p1

    if-nez p1, :cond_51

    goto :goto_5c

    :cond_51
    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p1

    if-nez p1, :cond_58

    goto :goto_5c

    :cond_58
    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-nez p1, :cond_5e

    :goto_5c
    move-object p1, v5

    goto :goto_62

    :cond_5e
    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object p1

    :goto_62
    invoke-virtual {v0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView$Companion;->getMiniWindowName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7a

    :cond_6c
    const/4 p1, -0x1

    invoke-virtual {v0, p1}, Lcom/oplus/quickstep/views/OplusTaskHeaderView$Companion;->setMiniWindowTaskId(I)V

    invoke-virtual {v0, v4}, Lcom/oplus/quickstep/views/OplusTaskHeaderView$Companion;->setMiniWindowName(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mZoomWindowName:Ljava/lang/String;

    const-string p0, "onTaskStageChanged: reset miniWindowName"

    invoke-static {v2, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7a
    return-void
.end method

.method public onTaskThumbnailChanged(ILcom/android/systemui/shared/recents/model/ThumbnailData;)Lcom/android/systemui/shared/recents/model/Task;
    .registers 8

    const-string v0, "onTaskThumbnailChanged(), taskId="

    const-string v1, ", mHandleChanges="

    invoke-static {v0, p1, v1}, Landroidx/appcompat/widget/d;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/quickstep/views/RecentsView;->mHandleTaskStackChanges:Z

    const-string v2, "QuickStep"

    const-string v3, "OplusRecentsView"

    invoke-static {v0, v1, v2, v3}, Lcom/android/launcher/d0;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/quickstep/views/RecentsView;->mHandleTaskStackChanges:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2b

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getTaskViewByTaskId(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    if-nez v0, :cond_1d

    goto :goto_2a

    :cond_1d
    sget-object v0, Lcom/android/quickstep/RecentsModel;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object p0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/RecentsModel;

    invoke-virtual {p0, p1, p2}, Lcom/android/quickstep/OplusBaseRecentsModel;->preLoadTaskThumbnail(ILcom/android/systemui/shared/recents/model/ThumbnailData;)V

    :goto_2a
    return-object v1

    :cond_2b
    if-eqz v0, :cond_62

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getTaskViewByTaskId(I)Lcom/android/quickstep/views/TaskView;

    move-result-object p0

    if-eqz p0, :cond_62

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getTaskIdAttributeContainers()[Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;

    move-result-object p0

    const-string/jumbo v0, "taskView.taskIdAttributeContainers"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    array-length v2, p0

    :cond_3f
    :goto_3f
    if-ge v0, v2, :cond_62

    aget-object v3, p0, v0

    add-int/lit8 v0, v0, 0x1

    if-eqz v3, :cond_3f

    invoke-virtual {v3}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v4

    iget-object v4, v4, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v4, v4, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    if-eq p1, v4, :cond_52

    goto :goto_3f

    :cond_52
    invoke-virtual {v3}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getThumbnailView()Lcom/android/quickstep/views/TaskThumbnailView;

    move-result-object v1

    invoke-virtual {v3}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v4

    invoke-virtual {v1, v4, p2}, Lcom/android/quickstep/views/TaskThumbnailView;->setThumbnail(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/ThumbnailData;)V

    invoke-virtual {v3}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v1

    goto :goto_3f

    :cond_62
    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 10

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x3

    const-string v2, "OplusRecentsView"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v4, :cond_13

    if-eq v0, v1, :cond_13

    goto :goto_2b

    :cond_13
    const-string v0, "clearAllButtonDeadZoneConsumed  onTouchEvent  ACTION_UP  start"

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsBeingDragged:Z

    if-eqz v0, :cond_2b

    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mFreeScroll:Z

    if-eqz v0, :cond_2b

    iget-boolean v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isRecentsViewDragStarted:Z

    if-eqz v0, :cond_2b

    iput-boolean v3, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isRecentsViewDragStarted:Z

    sget-object v0, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->DRAG_RECENTS_VIEW_CARD:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    invoke-static {v0}, Lcom/oplus/quickstep/utils/TracePrintUtil;->asyncTraceEnd(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;)V

    :cond_2b
    :goto_2b
    invoke-super {p0, p1}, Lcom/android/quickstep/views/RecentsView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    const/4 v6, -0x1

    if-eqz v5, :cond_93

    if-eq v5, v4, :cond_4c

    const/4 v2, 0x2

    if-eq v5, v2, :cond_43

    if-eq v5, v1, :cond_3f

    goto/16 :goto_133

    :cond_3f
    iput v3, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->actionMoveY:I

    goto/16 :goto_133

    :cond_43
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->actionMoveY:I

    goto/16 :goto_133

    :cond_4c
    iget-boolean p1, p0, Lcom/android/quickstep/views/RecentsView;->mTouchDownToStartHome:Z

    if-eqz p1, :cond_89

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->launchTaskViewWhenTouch()Z

    move-result p1

    if-nez p1, :cond_87

    const-string p1, "QuickStep"

    const-string v0, "onTouchEvent: startHome"

    invoke-static {p1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    instance-of v0, p1, Lcom/android/launcher/Launcher;

    const/4 v1, 0x0

    if-eqz v0, :cond_67

    check-cast p1, Lcom/android/launcher/Launcher;

    goto :goto_68

    :cond_67
    move-object p1, v1

    :goto_68
    if-nez p1, :cond_6b

    goto :goto_6f

    :cond_6b
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v1

    :goto_6f
    if-nez v1, :cond_72

    goto :goto_75

    :cond_72
    invoke-virtual {v1, v4}, Lcom/android/launcher3/statemanager/StateManager;->setBackHome(Z)V

    :goto_75
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->startHome()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-le p1, v4, :cond_87

    iget-object p1, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/statistics/LauncherStatistics;->statClickBlackToHome()V

    :cond_87
    iput-boolean v3, p0, Lcom/android/quickstep/views/RecentsView;->mTouchDownToStartHome:Z

    :cond_89
    iput v6, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mTouchDownScrollValue:I

    iput v3, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->actionMoveY:I

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->isHandlingTouch()Z

    move-result v0

    goto/16 :goto_133

    :cond_93
    const/16 v0, 0x14

    invoke-static {v0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "clearAllButtonDeadZoneConsumed  onTouchEvent  ACTION_DOWN  start  callers:"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iget-boolean v5, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-nez v5, :cond_b1

    goto :goto_b7

    :cond_b1
    iget-object v5, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v5, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScroll(Landroid/view/View;)I

    move-result v6

    :goto_b7
    iput v6, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mTouchDownScrollValue:I

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->isHandlingTouch()Z

    move-result v5

    if-nez v5, :cond_12b

    iget v5, p0, Lcom/android/quickstep/views/RecentsView;->mTaskModalness:F

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_12b

    iget-boolean v5, p0, Lcom/android/quickstep/views/RecentsView;->mShowEmptyMessage:Z

    if-eqz v5, :cond_cd

    iput-boolean v4, p0, Lcom/android/quickstep/views/RecentsView;->mTouchDownToStartHome:Z

    goto :goto_12b

    :cond_cd
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->updateDeadZoneRects()V

    iget-object v5, p0, Lcom/android/quickstep/views/RecentsView;->mClearAllButton:Lcom/oplus/quickstep/views/OplusClearAllPanelView;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result v5

    const/high16 v6, 0x3f800000  # 1.0f

    cmpg-float v5, v5, v6

    if-nez v5, :cond_de

    move v5, v4

    goto :goto_df

    :cond_de
    move v5, v3

    :goto_df
    if-eqz v5, :cond_eb

    iget-object v5, p0, Lcom/android/quickstep/views/RecentsView;->mClearAllButtonDeadZoneRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_eb

    move v5, v4

    goto :goto_ec

    :cond_eb
    move v5, v3

    :goto_ec
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result p1

    and-int/lit16 p1, p1, 0x100

    if-eqz p1, :cond_f6

    move p1, v4

    goto :goto_f7

    :cond_f6
    move p1, v3

    :goto_f7
    iget-object v6, p0, Lcom/android/quickstep/views/RecentsView;->mPendingAnimation:Lcom/android/launcher3/anim/PendingAnimation;

    if-eqz v6, :cond_fc

    move v3, v4

    :cond_fc
    const-string v6, "clearAllButtonDeadZoneConsumed:"

    const-string v7, " ,mClearAllButtonDeadZoneRect:"

    invoke-static {v6, v5, v7}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/quickstep/views/RecentsView;->mClearAllButtonDeadZoneRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "  ，x:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " , y:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6, v1, v2}, Lcom/android/common/config/h;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    if-nez v5, :cond_12b

    if-nez p1, :cond_12b

    iget-object p1, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mTaskViewDeadZoneRect:Landroid/graphics/Rect;

    invoke-interface {p1, p0, v2, v0, v1}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;->isPageViewPointInRect(Landroid/view/View;Landroid/graphics/Rect;II)Z

    move-result p1

    if-nez p1, :cond_12b

    if-nez v3, :cond_12b

    iput-boolean v4, p0, Lcom/android/quickstep/views/RecentsView;->mTouchDownToStartHome:Z

    :cond_12b
    :goto_12b
    iput v0, p0, Lcom/android/quickstep/views/RecentsView;->mDownX:I

    iput v1, p0, Lcom/android/quickstep/views/RecentsView;->mDownY:I

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->isHandlingTouch()Z

    move-result v0

    :goto_133
    return v0
.end method

.method public onViewAdded(Landroid/view/View;)V
    .registers 3

    const-string v0, "child"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->onViewAdded(Landroid/view/View;)V

    instance-of v0, p1, Lcom/oplus/quickstep/views/OplusClearAllPanelView;

    if-nez v0, :cond_11

    iget v0, p0, Lcom/android/quickstep/views/RecentsView;->mContentAlpha:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_11
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutDirection(I)V

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->updateEmptyMessage()V

    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .registers 5

    instance-of v0, p1, Lcom/android/quickstep/views/TaskView;

    if-eqz v0, :cond_14

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mSplitHiddenTaskView:Lcom/android/quickstep/views/TaskView;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    move-object v1, p1

    check-cast v1, Lcom/android/quickstep/views/TaskView;

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-virtual {v1, v2}, Lcom/android/quickstep/views/TaskView;->setStableAlpha(F)V

    :cond_14
    invoke-super {p0, p1}, Lcom/android/quickstep/views/RecentsView;->onViewRemoved(Landroid/view/View;)V

    if-eqz v0, :cond_27

    iget-object p0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->dockView:Lcom/oplus/quickstep/dock/DockView;

    if-nez p0, :cond_1e

    goto :goto_27

    :cond_1e
    check-cast p1, Lcom/android/quickstep/views/TaskView;

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/dock/DockView;->onTaskViewRemoved(Lcom/android/systemui/shared/recents/model/Task;)V

    :cond_27
    :goto_27
    return-void
.end method

.method public onZoomWindowHide(Lcom/oplus/zoomwindow/OplusZoomWindowInfo;)V
    .registers 8

    sget-object v0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->Companion:Lcom/oplus/quickstep/views/OplusTaskHeaderView$Companion;

    invoke-virtual {v0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView$Companion;->getMiniWindowName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-nez p1, :cond_b

    move-object v3, v2

    goto :goto_d

    :cond_b
    iget-object v3, p1, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;->zoomPkg:Ljava/lang/String;

    :goto_d
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "onZoomWindowHide miniWindowName："

    const-string v4, "OplusRecentsView"

    const-string v5, "Default"

    if-nez v1, :cond_43

    invoke-virtual {v0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView$Companion;->getMiniWindowName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_43

    invoke-static {v3}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView$Companion;->getMiniWindowName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  oplusZoomWindowInfo?.zoomPkg="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_36

    goto :goto_38

    :cond_36
    iget-object v2, p1, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;->zoomPkg:Ljava/lang/String;

    :goto_38
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_43
    iput-object v2, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mZoomWindowName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/oplus/quickstep/views/OplusTaskHeaderView$Companion;->setMiniWindowName(Ljava/lang/String;)V

    const/4 p1, -0x1

    invoke-virtual {v0, p1}, Lcom/oplus/quickstep/views/OplusTaskHeaderView$Companion;->setMiniWindowTaskId(I)V

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->reloadShortcutIcon()V

    sget-object p1, Lcom/android/quickstep/TopTaskTracker;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object p0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/TopTaskTracker;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/quickstep/TopTaskTracker;->updateOrderedTaskList:Z

    invoke-virtual {v0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView$Companion;->getMiniWindowName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onZoomWindowShow(Lcom/oplus/zoomwindow/OplusZoomWindowInfo;)V
    .registers 6

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, p1, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;->zoomPkg:Ljava/lang/String;

    const-string v1, "OplusRecentsView"

    if-nez v0, :cond_f

    const-string p0, "onZoomWindowShow null return"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_f
    iget-object v2, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mZoomWindowName:Ljava/lang/String;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    const-string v0, "onZoomWindowShow equals return"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p1, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;->zoomPkg:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mZoomWindowName:Ljava/lang/String;

    return-void

    :cond_21
    iget-object v0, p1, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;->zoomPkg:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mZoomWindowName:Ljava/lang/String;

    sget-object v2, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->Companion:Lcom/oplus/quickstep/views/OplusTaskHeaderView$Companion;

    const-string v3, "oplusZoomWindowInfo.zoomPkg"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView$Companion;->setMiniWindowName(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->reloadShortcutIcon()V

    iget-object p0, p1, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;->zoomPkg:Ljava/lang/String;

    const-string p1, "onZoomWindowShow  miniWindowName: "

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public overScroll(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    invoke-virtual {v0}, Lcom/android/launcher3/util/OverScroller;->isSpringing()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void

    :cond_c
    if-nez p1, :cond_f

    return-void

    :cond_f
    invoke-virtual {p0, p1}, Lcom/android/launcher/OplusPagedViewImpl;->dampedOverScroll(I)V

    return-void
.end method

.method public pageBeginTransition()V
    .registers 1

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->onScrollInteractionBegin()V

    invoke-super {p0}, Lcom/android/launcher3/PagedView;->pageBeginTransition()V

    return-void
.end method

.method public pageEndTransition()V
    .registers 2

    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsPageInTransition:Z

    if-eqz v0, :cond_16

    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsBeingDragged:Z

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    invoke-virtual {v0}, Lcom/android/launcher3/util/OverScroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsPageInTransition:Z

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->onPageEndTransition()V

    :cond_16
    return-void
.end method

.method public pageScrollsInitialized()Z
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mPageScrolls:[I

    if-eqz v0, :cond_10

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    array-length v0, v0

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getTaskViewCount()I

    move-result p0

    if-ne v0, p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method public pageUpdate()V
    .registers 3

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->showAsGrid()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->dockView:Lcom/oplus/quickstep/dock/DockView;

    if-nez v0, :cond_c

    goto :goto_11

    :cond_c
    iget v1, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {v0, v1}, Lcom/oplus/quickstep/dock/DockView;->updateCurrentPage(I)Z

    :goto_11
    iget-object v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->relayInteraction:Lcom/oplus/quickstep/relay/RecentRelayInteraction;

    iget p0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {v0, p0}, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->setCurrentPage(I)V

    return-void
.end method

.method public performHapticFeedback(II)Z
    .registers 11

    const/4 v0, 0x1

    if-eq p1, v0, :cond_b

    if-ne p2, v0, :cond_6

    goto :goto_b

    :cond_6
    invoke-super {p0, p1, p2}, Landroid/view/View;->performHapticFeedback(II)Z

    move-result v0

    goto :goto_1c

    :cond_b
    :goto_b
    iget-object v1, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    const-string p0, "mContext"

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/android/common/util/VibrationUtils;->vibrate$default(Landroid/content/Context;IJZILjava/lang/Object;)V

    :goto_1c
    return v0
.end method

.method public final playClearAllEnterAnimation(Lcom/android/launcher3/LauncherState;ZLcom/android/launcher3/states/StateAnimationConfig;)V
    .registers 6

    const-string/jumbo v0, "toState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->hasLargeDisplayFeatures()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    goto :goto_18

    :cond_e
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {v0}, Lcom/android/quickstep/util/RecentsOrientedState;->getOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getRotation()I

    move-result v0

    :goto_18
    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mClearAllButton:Lcom/oplus/quickstep/views/OplusClearAllPanelView;

    invoke-virtual {v1, p1, p2, v0, p3}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->playEnterAnimation(Lcom/android/launcher3/LauncherState;ZILcom/android/launcher3/states/StateAnimationConfig;)V

    sget-object p1, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;->Companion:Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger$Companion;

    invoke-virtual {p1}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger$Companion;->needShowPhoneManagerEntranceAtLast()Z

    move-result p1

    if-eqz p1, :cond_38

    iget-object p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mClearAllButtonImage:Landroid/view/View;

    if-nez p1, :cond_34

    iget-object p1, p0, Lcom/android/quickstep/views/RecentsView;->mClearAllButton:Lcom/oplus/quickstep/views/OplusClearAllPanelView;

    const p2, 0x7f0a00ec

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mClearAllButtonImage:Landroid/view/View;

    :cond_34
    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->mClearAllButton:Lcom/oplus/quickstep/views/OplusClearAllPanelView;

    iput v0, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mRotationFlag:I

    :cond_38
    return-void
.end method

.method public final postRemoveAllViewTask(J)V
    .registers 4

    iget-object v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mRemoveAllViewsTask:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-boolean v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mHasRemoveAllViewsTask:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mRemoveAllViewsTask:Ljava/lang/Runnable;

    invoke-virtual {p0, v0, p1, p2}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_e
    return-void
.end method

.method public reloadShortcutIcon()V
    .registers 4

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->hasLargeDisplayFeatures()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/quickstep/views/h;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/android/quickstep/views/h;-><init>(Lcom/android/quickstep/views/OplusRecentsViewImpl;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public removeAllViews()V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mIsClearViewAdded:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isRemovingAllTaskViews:Z

    invoke-super {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    iput-boolean v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isRemovingAllTaskViews:Z

    return-void
.end method

.method public removeCurrentScrollChangeListener()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mCurrentScrollChangeListener:Lcom/android/quickstep/views/OplusRecentsViewImpl$OnCurrentScrollChangeListener;

    return-void
.end method

.method public removeGoHomeListener()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mGoHomeListener:Lcom/android/quickstep/views/OplusRecentsViewImpl$GoHomeListener;

    return-void
.end method

.method public final removeTask(Lcom/android/quickstep/views/TaskView;)V
    .registers 5

    const-string/jumbo v0, "taskView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    const-string v1, "remove task: "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickStep"

    const-string v2, "OplusRecentsView"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    if-nez v0, :cond_1e

    return-void

    :cond_1e
    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/quickstep/memory/KillAppWrapper;->canRemoveTask(Lcom/android/systemui/shared/recents/model/Task;)Z

    move-result v0

    if-eqz v0, :cond_69

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, v1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v1, v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->removeTask(I)V

    iget-object v0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/quickstep/memory/KillAppWrapper;->forceStopIfNeeded(Landroid/content/Context;Lcom/android/systemui/shared/recents/model/Task;)V

    instance-of v0, p1, Lcom/android/quickstep/views/OplusGroupedTaskView;

    if-eqz v0, :cond_5e

    check-cast p1, Lcom/android/quickstep/views/OplusGroupedTaskView;

    iget-object p1, p1, Lcom/android/quickstep/views/GroupedTaskView;->mSecondaryTask:Lcom/android/systemui/shared/recents/model/Task;

    if-nez p1, :cond_4e

    goto :goto_5e

    :cond_4e
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    iget-object v1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v1, v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->removeTask(I)V

    iget-object v0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/oplus/quickstep/memory/KillAppWrapper;->forceStopIfNeeded(Landroid/content/Context;Lcom/android/systemui/shared/recents/model/Task;)V

    :cond_5e
    :goto_5e
    iget-object p1, p0, Lcom/android/quickstep/views/RecentsView;->mClearAllButton:Lcom/oplus/quickstep/views/OplusClearAllPanelView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->updateMeminfo(Z)V

    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->mModel:Lcom/android/quickstep/RecentsModel;

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseRecentsModel;->forceReloadedTasks()V

    :cond_69
    return-void
.end method

.method public removeTasksViewsAndClearAllButton()V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isRemovingAllTaskViews:Z

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getTaskViewCount()I

    move-result v1

    sub-int/2addr v1, v0

    if-ltz v1, :cond_1b

    :goto_a
    add-int/lit8 v0, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/quickstep/views/RecentsView;->getTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v1

    if-nez v1, :cond_13

    goto :goto_16

    :cond_13
    invoke-virtual {p0, v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->removeView(Landroid/view/View;)V

    :goto_16
    if-gez v0, :cond_19

    goto :goto_1b

    :cond_19
    move v1, v0

    goto :goto_a

    :cond_1b
    :goto_1b
    iget-object v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->dockView:Lcom/oplus/quickstep/dock/DockView;

    if-nez v0, :cond_20

    goto :goto_23

    :cond_20
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :goto_23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isRemovingAllTaskViews:Z

    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .registers 3

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mClearAllButton:Lcom/oplus/quickstep/views/OplusClearAllPanelView;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mIsClearViewAdded:Z

    :cond_11
    iget-object v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mExceptedRemovedTaskView:Lcom/android/quickstep/views/TaskView;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    return-void

    :cond_1a
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public final requestLayoutIfNeeded()V
    .registers 2

    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsLayoutValid:Z

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->requestLayout()V

    :cond_7
    return-void
.end method

.method public reset()V
    .registers 6

    const-string v0, "OplusRecentsView"

    const-string v1, "reset()"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mSkipSetCurrentTask:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    invoke-super {p0}, Lcom/android/quickstep/views/RecentsView;->reset()V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mSkipSetCurrentTask:Z

    invoke-virtual {p0, v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setCurrentTask(I)V

    invoke-virtual {p0, v2}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->notifyWorkspaceVisible(Z)V

    iget-object v1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->dockView:Lcom/oplus/quickstep/dock/DockView;

    if-nez v1, :cond_1e

    goto :goto_2c

    :cond_1e
    iget-object v3, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {v3}, Lcom/android/quickstep/util/RecentsOrientedState;->getRecentsActivityRotation()I

    move-result v3

    if-nez v3, :cond_28

    move v3, v0

    goto :goto_29

    :cond_28
    move v3, v2

    :goto_29
    invoke-virtual {v1, v3}, Lcom/oplus/quickstep/dock/DockView;->reset(Z)V

    :goto_2c
    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mClearAllButton:Lcom/oplus/quickstep/views/OplusClearAllPanelView;

    iget-object v3, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {v3}, Lcom/android/quickstep/util/RecentsOrientedState;->getRecentsActivityRotation()I

    move-result v3

    if-nez v3, :cond_37

    goto :goto_38

    :cond_37
    move v0, v2

    :goto_38
    invoke-virtual {v1, v0}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->setIsRecentsViewPortrait(Z)V

    sget-object v0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->reset()V

    iput-boolean v2, p0, Lcom/android/quickstep/views/RecentsView;->mShowEmptyMessage:Z

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getTaskViewCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_62

    :goto_49
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/quickstep/views/RecentsView;->getTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v2

    instance-of v4, v2, Lcom/android/quickstep/views/OplusTaskViewImpl;

    if-eqz v4, :cond_56

    check-cast v2, Lcom/android/quickstep/views/OplusTaskViewImpl;

    goto :goto_57

    :cond_56
    move-object v2, v1

    :goto_57
    if-nez v2, :cond_5a

    goto :goto_5d

    :cond_5a
    invoke-virtual {v2, v1}, Lcom/android/quickstep/views/OplusTaskViewImpl;->setTitle(Lcom/android/systemui/shared/recents/model/Task;)V

    :goto_5d
    if-lt v3, v0, :cond_60

    goto :goto_62

    :cond_60
    move v2, v3

    goto :goto_49

    :cond_62
    :goto_62
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    if-nez v0, :cond_84

    iget-boolean v0, p0, Lcom/android/quickstep/views/RecentsView;->mGestureActive:Z

    if-nez v0, :cond_84

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    instance-of v2, v0, Lcom/android/launcher/Launcher;

    if-eqz v2, :cond_73

    move-object v1, v0

    check-cast v1, Lcom/android/launcher/Launcher;

    :cond_73
    if-nez v1, :cond_76

    goto :goto_84

    :cond_76
    invoke-virtual {v1}, Lcom/android/launcher/Launcher;->getTriggerPanel()Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;

    move-result-object v0

    if-nez v0, :cond_7d

    goto :goto_84

    :cond_7d
    invoke-virtual {v1}, Lcom/android/launcher/Launcher;->getTriggerPanel()Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->resetIfNeed()V

    :cond_84
    :goto_84
    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->mModel:Lcom/android/quickstep/RecentsModel;

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseRecentsModel;->forceReloadedTasks()V

    return-void
.end method

.method public final resetTaskLauncherAnimRunning()V
    .registers 1

    return-void
.end method

.method public resetTaskVisuals()V
    .registers 3

    iget-object v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->dockView:Lcom/oplus/quickstep/dock/DockView;

    if-nez v0, :cond_5

    goto :goto_a

    :cond_5
    iget v1, p0, Lcom/android/quickstep/views/RecentsView;->mIgnoreResetTaskId:I

    invoke-virtual {v0, v1}, Lcom/oplus/quickstep/dock/DockView;->resetTaskVisuals(I)V

    :goto_a
    invoke-super {p0}, Lcom/android/quickstep/views/RecentsView;->resetTaskVisuals()V

    return-void
.end method

.method public resetTouchState()V
    .registers 1

    invoke-super {p0}, Lcom/android/launcher3/PagedView;->resetTouchState()V

    return-void
.end method

.method public runOnPageScrollsInitialized(Ljava/lang/Runnable;)V
    .registers 3

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->runOnPageScrollsInitialized(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->pageScrollsInitialized()Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mOnPageScrollsInitializedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_19

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->requestLayout()V

    :cond_19
    return-void
.end method

.method public final runningPendingAnimation()Lcom/android/launcher3/anim/PendingAnimation;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->mPendingAnimation:Lcom/android/launcher3/anim/PendingAnimation;

    return-object p0
.end method

.method public scrollBy(II)V
    .registers 4

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->allowFlingWhenFreeScroll()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-super {p0, p1, p2}, Lcom/android/launcher/OplusPagedViewImpl;->scrollBy(II)V

    return-void
.end method

.method public scrollTo(II)V
    .registers 4

    iget-object v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->dockView:Lcom/oplus/quickstep/dock/DockView;

    if-nez v0, :cond_5

    goto :goto_8

    :cond_5
    invoke-virtual {v0, p1, p2}, Lcom/oplus/quickstep/dock/DockView;->scrollDock(II)V

    :goto_8
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/PagedView;->scrollTo(II)V

    return-void
.end method

.method public final setClearAllButtonVisible(ZLjava/lang/String;)V
    .registers 3

    const-string p1, "invokeFrom"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->mClearAllButton:Lcom/oplus/quickstep/views/OplusClearAllPanelView;

    const-string p1, "#setControlViewVisible"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->playExitAnimator(ZLjava/lang/String;)V

    return-void
.end method

.method public setColorTint(F)V
    .registers 5

    iput p1, p0, Lcom/android/quickstep/views/RecentsView;->mColorTint:F

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getCurrentPageTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_10

    :cond_9
    iget v1, p0, Lcom/android/quickstep/views/RecentsView;->mColorTint:F

    iget v2, p0, Lcom/android/quickstep/views/RecentsView;->mTintingColor:I

    invoke-virtual {v0, v1, v2}, Lcom/android/quickstep/views/TaskView;->setColorTint(FI)V

    :goto_10
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getScrimView()Lcom/android/launcher3/views/ScrimView;

    move-result-object v0

    if-nez v0, :cond_19

    goto :goto_42

    :cond_19
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_20

    goto :goto_42

    :cond_20
    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    if-nez v1, :cond_27

    const/4 v1, 0x1

    goto :goto_28

    :cond_27
    const/4 v1, 0x0

    :goto_28
    if-eqz v1, :cond_2f

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_42

    :cond_2f
    sget-object v1, Landroid/graphics/BlendMode;->SRC_OVER:Landroid/graphics/BlendMode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintBlendMode(Landroid/graphics/BlendMode;)V

    iget p0, p0, Lcom/android/quickstep/views/RecentsView;->mTintingColor:I

    const/16 v1, 0xff

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int p1, v1

    invoke-static {p0, p1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :goto_42
    return-void
.end method

.method public setContentAlpha(F)V
    .registers 9

    sget-boolean v0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->changeFromLauncher:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget v0, p0, Lcom/android/quickstep/views/RecentsView;->mContentAlpha:F

    cmpg-float v0, v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_f

    move v0, v1

    goto :goto_10

    :cond_f
    move v0, v2

    :goto_10
    if-eqz v0, :cond_13

    return-void

    :cond_13
    const/high16 v0, 0x3f800000  # 1.0f

    const/4 v3, 0x0

    invoke-static {p1, v3, v0}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result p1

    iput p1, p0, Lcom/android/quickstep/views/RecentsView;->mContentAlpha:F

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getTaskIdsForRunningTaskView()[I

    move-result-object p1

    aget p1, p1, v2

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getTaskViewCount()I

    move-result v0

    sub-int/2addr v0, v1

    if-ltz v0, :cond_4e

    :goto_29
    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->requireTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    const-string v5, "requireTaskViewAt(i)"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView;->getTaskIds()[I

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/quickstep/views/RecentsView;->mRunningTaskTileHidden:Z

    if-eqz v6, :cond_44

    aget v6, v5, v2

    if-eq v6, p1, :cond_49

    aget v5, v5, v1

    if-eq v5, p1, :cond_49

    :cond_44
    iget v5, p0, Lcom/android/quickstep/views/RecentsView;->mContentAlpha:F

    invoke-virtual {v0, v5}, Lcom/android/quickstep/views/TaskView;->setStableAlpha(F)V

    :cond_49
    if-gez v4, :cond_4c

    goto :goto_4e

    :cond_4c
    move v0, v4

    goto :goto_29

    :cond_4e
    :goto_4e
    iget p1, p0, Lcom/android/quickstep/views/RecentsView;->mContentAlpha:F

    cmpl-float p1, p1, v3

    if-lez p1, :cond_58

    invoke-virtual {p0, v2}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setVisibility(I)V

    goto :goto_75

    :cond_58
    iget-boolean p1, p0, Lcom/android/quickstep/views/RecentsView;->mFreezeViewVisibility:Z

    if-nez p1, :cond_75

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setVisibility(I)V

    sget-object v0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    invoke-virtual {v0, p0}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->cancelLightningAnimation(Lcom/android/quickstep/views/OplusRecentsViewImpl;)V

    iget-object v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->dockView:Lcom/oplus/quickstep/dock/DockView;

    if-nez v0, :cond_6a

    goto :goto_6d

    :cond_6a
    invoke-virtual {v0, v2}, Lcom/oplus/quickstep/dock/DockView;->clearEnterAnim(Z)V

    :goto_6d
    iget-object p0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->dockView:Lcom/oplus/quickstep/dock/DockView;

    if-nez p0, :cond_72

    goto :goto_75

    :cond_72
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_75
    :goto_75
    return-void
.end method

.method public final setControlViewVisible(ZLjava/lang/String;)V
    .registers 5

    const-string v0, "invokeFrom"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mClearAllButton:Lcom/oplus/quickstep/views/OplusClearAllPanelView;

    const-string v1, "#setControlViewVisible"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->playExitAnimator(ZLjava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setDockViewVisible(Z)V

    return-void
.end method

.method public final setControlViewVisibleWithAnimation()V
    .registers 9

    const-string v0, "setControlViewVisibleWithAnimation: "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isGoingToNormalAnimationStarted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickStep"

    const-string v2, "OplusRecentsView"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isGoingToNormalAnimationStarted:Z

    if-nez v0, :cond_65

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    goto :goto_65

    :cond_3f
    sget-object v2, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    const-string v0, "OVERVIEW"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->playClearAllEnterAnimation(Lcom/android/launcher3/LauncherState;ZLcom/android/launcher3/states/StateAnimationConfig;)V

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_56

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->updateSizeAndPadding()V

    :cond_56
    iget-object v1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->dockView:Lcom/oplus/quickstep/dock/DockView;

    if-nez v1, :cond_5b

    goto :goto_64

    :cond_5b
    const/4 v3, 0x1

    const/high16 v4, 0x3f800000  # 1.0f

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/oplus/quickstep/dock/DockView;->prepareEnterAnimation(Lcom/android/launcher3/LauncherState;ZFZLcom/android/launcher3/anim/PropertySetter;Lcom/android/launcher3/states/StateAnimationConfig;)V

    :goto_64
    return-void

    :cond_65
    :goto_65
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mClearAllButton:Lcom/oplus/quickstep/views/OplusClearAllPanelView;

    invoke-virtual {v0}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->clearEnterAnim()V

    iget-object p0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->dockView:Lcom/oplus/quickstep/dock/DockView;

    if-nez p0, :cond_6f

    goto :goto_72

    :cond_6f
    invoke-virtual {p0}, Lcom/oplus/quickstep/dock/DockView;->clearEnterAnim()V

    :goto_72
    return-void
.end method

.method public setCurrentPage(I)V
    .registers 8

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    const-string v1, "OplusRecentsView"

    const-string v2, "QuickStep"

    if-eqz v0, :cond_53

    const-string v0, "setCurrentPage(), current="

    const-string v3, ", next="

    invoke-static {v0, p1, v3}, Landroidx/appcompat/widget/d;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", inTransition="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/launcher3/PagedView;->mIsPageInTransition:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mOrientationHandlerChanged="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mOrientationHandlerChanged:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mGestureAnimationStarted="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mGestureAnimationStarted:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mGestureActive = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/quickstep/views/RecentsView;->mGestureActive:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", lastLoadTaskDataCenterIndex = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->lastLoadTaskDataCenterIndex:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", reloadVisibleTaskData = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->reloadVisibleTaskData:Z

    invoke-static {v0, v3, v2, v1}, Lcom/android/launcher/d0;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/lang/String;)V

    :cond_53
    sget-object v0, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;->Companion:Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger$Companion;

    invoke-virtual {v0}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger$Companion;->needShowPhoneManagerEntranceAtLast()Z

    move-result v0

    if-eqz v0, :cond_75

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v0

    const/high16 v3, 0x3f000000  # 0.5f

    cmpl-float v0, v0, v3

    if-lez v0, :cond_75

    iget-object v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->oplusCleanStorageFrameLayout:Lcom/oplus/quickstep/views/OplusCleanStorageFrameLayout;

    if-nez v0, :cond_6a

    goto :goto_75

    :cond_6a
    iget-object v3, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {v3}, Lcom/android/quickstep/util/RecentsOrientedState;->getDisplayRotation()I

    move-result v3

    iget-object v4, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mClearAllButtonImage:Landroid/view/View;

    invoke-virtual {v0, v3, v4}, Lcom/oplus/quickstep/views/OplusCleanStorageFrameLayout;->updatePhoneManagerEntrancePositionWhenRotation(ILandroid/view/View;)V

    :cond_75
    :goto_75
    invoke-direct {p0, p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->invalidCurrentPage(I)Z

    move-result v0

    if-eqz v0, :cond_7c

    return-void

    :cond_7c
    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->setCurrentPage(I)V

    iget-object v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->dockView:Lcom/oplus/quickstep/dock/DockView;

    const/4 v3, 0x1

    if-nez v0, :cond_85

    goto :goto_8a

    :cond_85
    iget v4, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {v0, v4, v3}, Lcom/oplus/quickstep/dock/DockView;->updateCurrentPage(IZ)Z

    :goto_8a
    iget-object v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->relayInteraction:Lcom/oplus/quickstep/relay/RecentRelayInteraction;

    if-nez v0, :cond_8f

    goto :goto_94

    :cond_8f
    iget v4, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {v0, v4}, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->setCurrentPage(I)V

    :goto_94
    iget-boolean v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->reloadVisibleTaskData:Z

    const/4 v4, 0x0

    if-nez v0, :cond_ae

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getScrollForPage(I)I

    move-result v0

    iget-object v5, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v5, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScroll(Landroid/view/View;)I

    move-result v5

    if-ne v0, v5, :cond_ae

    iget v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->lastLoadTaskDataCenterIndex:I

    if-eq p1, v0, :cond_ad

    const/4 v5, -0x1

    if-eq v0, v5, :cond_ad

    goto :goto_ae

    :cond_ad
    move v3, v4

    :cond_ae
    :goto_ae
    iput-boolean v3, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->reloadVisibleTaskData:Z

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_d4

    const-string v0, "setCurrentPage(), reloadVisibleTaskData="

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v3, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->reloadVisibleTaskData:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", ScrollForPage="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getScrollForPage(I)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v1, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_d4
    iget-boolean p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->reloadVisibleTaskData:Z

    if-eqz p1, :cond_e3

    iget-object p1, p0, Lcom/android/quickstep/views/RecentsView;->mHasVisibleTaskData:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->clear()V

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->loadVisibleTaskData(I)V

    iput-boolean v4, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->reloadVisibleTaskData:Z

    :cond_e3
    return-void
.end method

.method public setCurrentPageIfNeed(Z)V
    .registers 3

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isScrolling:Z

    if-nez v0, :cond_f

    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->setCurrentPageIfNeed(Z)V

    :cond_f
    return-void

    :cond_10
    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->setCurrentPageIfNeed(Z)V

    return-void
.end method

.method public setCurrentPageWhenTaskUpdate(Lcom/android/quickstep/views/TaskView;Z)V
    .registers 5

    const/4 v0, 0x0

    if-eqz p2, :cond_d

    iget-boolean v1, p0, Lcom/android/launcher3/PagedView;->mIsBeingDragged:Z

    if-eqz v1, :cond_d

    iget-boolean v1, p0, Lcom/android/launcher3/PagedView;->mFreeScroll:Z

    if-nez v1, :cond_d

    const/4 v1, 0x1

    goto :goto_e

    :cond_d
    move v1, v0

    :goto_e
    iput-boolean v1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->interceptUpdateCurrentScroll:Z

    invoke-super {p0, p1, p2}, Lcom/android/quickstep/views/RecentsView;->setCurrentPageWhenTaskUpdate(Lcom/android/quickstep/views/TaskView;Z)V

    iput-boolean v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->interceptUpdateCurrentScroll:Z

    return-void
.end method

.method public setCurrentTask(I)V
    .registers 3

    iget-boolean v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mSkipSetCurrentTask:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    invoke-super {p0, p1}, Lcom/android/quickstep/views/RecentsView;->setCurrentTask(I)V

    iget-boolean p1, p0, Lcom/android/quickstep/views/RecentsView;->mRunningTaskTileHidden:Z

    if-nez p1, :cond_1c

    iget-object p1, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    const-string v0, "null cannot be cast to non-null type com.android.quickstep.util.OplusRecentsOrientedStateImpl"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lcom/android/quickstep/util/OplusRecentsOrientedStateImpl;

    invoke-virtual {p1}, Lcom/android/quickstep/util/OplusRecentsOrientedStateImpl;->isGestureActive()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setRunningTaskHidden(Z)V

    :cond_1c
    invoke-static {}, Lcom/oplus/quickstep/memory/OplusSpecialListHelper;->getInstance()Lcom/oplus/quickstep/memory/OplusSpecialListHelper;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getTaskIdsForRunningTaskView()[I

    move-result-object p0

    const/4 v0, 0x0

    aget p0, p0, v0

    invoke-virtual {p1, p0}, Lcom/oplus/quickstep/memory/OplusSpecialListHelper;->setRunningTaskId(I)V

    return-void
.end method

.method public setDisallowScrollToClearAll(Z)V
    .registers 2

    const/4 p1, 0x1

    invoke-super {p0, p1}, Lcom/android/quickstep/views/RecentsView;->setDisallowScrollToClearAll(Z)V

    return-void
.end method

.method public final setDockView(Lcom/oplus/quickstep/dock/DockView;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/quickstep/dock/DockView<",
            "*>;)V"
        }
    .end annotation

    if-eqz p1, :cond_7

    iput-object p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->dockView:Lcom/oplus/quickstep/dock/DockView;

    invoke-virtual {p1, p0}, Lcom/oplus/quickstep/dock/DockView;->setRecentsView(Lcom/android/quickstep/views/OplusRecentsViewImpl;)V

    :cond_7
    return-void
.end method

.method public final setDockViewVisible(Z)V
    .registers 5

    iget-object p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->dockView:Lcom/oplus/quickstep/dock/DockView;

    if-nez p1, :cond_5

    goto :goto_29

    :cond_5
    iget-object v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mRotateAnimation:Landroid/animation/AnimatorSet;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_c

    goto :goto_13

    :cond_c
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-ne v0, v2, :cond_13

    move v1, v2

    :cond_13
    :goto_13
    if-eqz v1, :cond_26

    const-string v0, "QuickStep"

    const-string v1, "OplusRecentsView"

    const-string v2, "setDockViewVisible: cancel last fade animation"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mRotateAnimation:Landroid/animation/AnimatorSet;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_26
    invoke-virtual {p1}, Lcom/oplus/quickstep/dock/DockView;->updateDockViewVisiblity()V

    :goto_29
    return-void
.end method

.method public final setForceHideEmptyMessage(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->forceHideEmptyMessage:Z

    if-eq v0, p1, :cond_9

    iput-boolean p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->forceHideEmptyMessage:Z

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_9
    return-void
.end method

.method public setFullscreenProgress(F)V
    .registers 7

    iput p1, p0, Lcom/android/quickstep/views/RecentsView;->mFullscreenProgress:F

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getTaskViewCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1d

    move v2, v1

    :goto_a
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/quickstep/views/RecentsView;->getTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v2

    if-nez v2, :cond_13

    goto :goto_18

    :cond_13
    iget v4, p0, Lcom/android/quickstep/views/RecentsView;->mFullscreenProgress:F

    invoke-virtual {v2, v4}, Lcom/android/quickstep/views/TaskView;->setFullscreenProgress(F)V

    :goto_18
    if-lt v3, v0, :cond_1b

    goto :goto_1d

    :cond_1b
    move v2, v3

    goto :goto_a

    :cond_1d
    :goto_1d
    sget-object v0, Lcom/android/launcher3/LauncherState;->QUICK_SWITCH:Lcom/android/launcher3/LauncherState;

    const-string v2, "QUICK_SWITCH"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isInState(Lcom/android/launcher3/LauncherState;)Z

    move-result v0

    if-eqz v0, :cond_34

    const/high16 v0, 0x3f000000  # 0.5f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_31

    const/4 v1, 0x1

    :cond_31
    invoke-virtual {p0, v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setForceHideEmptyMessage(Z)V

    :cond_34
    return-void
.end method

.method public setGoHomeListener(Lcom/android/quickstep/views/OplusRecentsViewImpl$GoHomeListener;)V
    .registers 3

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mGoHomeListener:Lcom/android/quickstep/views/OplusRecentsViewImpl$GoHomeListener;

    return-void
.end method

.method public setGridProgress(F)V
    .registers 5

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getTaskViewCount()I

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iput p1, p0, Lcom/android/quickstep/views/RecentsView;->mGridProgress:F

    const/4 v1, 0x0

    if-lez v0, :cond_1a

    :goto_c
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/quickstep/views/RecentsView;->requireTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/quickstep/views/TaskView;->setGridProgress(F)V

    if-lt v2, v0, :cond_18

    goto :goto_1a

    :cond_18
    move v1, v2

    goto :goto_c

    :cond_1a
    :goto_1a
    return-void
.end method

.method public final setHasReset(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->hasReset:Z

    return-void
.end method

.method public final setIgnoreTranslate(Z)V
    .registers 2

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getTransYProperty()Lcom/oplus/quickstep/utils/TranslationYProperty;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/utils/TranslationYProperty;->setIgnoreTranslate(Z)V

    return-void
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .registers 10

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->updateSizeAndPadding()V

    iget-object p1, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p1

    const-string v0, "mActivity.deviceProfile"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/launcher3/statemanager/BaseState;->displayOverviewTasksAsGrid(Lcom/android/launcher3/DeviceProfile;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->setOverviewGridEnabled(Z)V

    iget v0, p1, Lcom/android/launcher3/DeviceProfile;->overviewPageSpacing:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->setPageSpacing(I)V

    new-instance v0, Lcom/android/launcher3/taskbar/allapps/a;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/android/launcher3/taskbar/allapps/a;-><init>(Lcom/android/launcher3/DeviceProfile;I)V

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->runActionOnRemoteHandles(Ljava/util/function/Consumer;)V

    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mClearAllButton:Lcom/oplus/quickstep/views/OplusClearAllPanelView;

    iget v3, p1, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    iget-object v4, p0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/quickstep/views/RecentsView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isDockViewHide()Z

    move-result v6

    iget-object v7, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->dockView:Lcom/oplus/quickstep/dock/DockView;

    invoke-virtual/range {v2 .. v7}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->onInsetsChanged(ILandroid/graphics/Rect;Landroid/graphics/Rect;ZLcom/oplus/quickstep/dock/DockView;)V

    iget-boolean v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mFoldScreenExpanded:Z

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result v1

    if-eq v0, v1, :cond_9d

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mFoldScreenExpanded:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mFirstIntoRecents:Z

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    const/4 v2, 0x0

    if-nez v1, :cond_78

    iget-boolean v1, p0, Lcom/android/quickstep/views/RecentsView;->mGestureActive:Z

    if-nez v1, :cond_78

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    instance-of v3, v1, Lcom/android/launcher/Launcher;

    if-eqz v3, :cond_66

    check-cast v1, Lcom/android/launcher/Launcher;

    goto :goto_67

    :cond_66
    move-object v1, v2

    :goto_67
    if-nez v1, :cond_6a

    goto :goto_78

    :cond_6a
    invoke-virtual {v1}, Lcom/android/launcher/Launcher;->getTriggerPanel()Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;

    move-result-object v3

    if-nez v3, :cond_71

    goto :goto_78

    :cond_71
    invoke-virtual {v1}, Lcom/android/launcher/Launcher;->getTriggerPanel()Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->reset()V

    :cond_78
    :goto_78
    sget-object v1, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    const-string v3, "OVERVIEW"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isInState(Lcom/android/launcher3/LauncherState;)Z

    move-result v1

    if-eqz v1, :cond_9d

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    instance-of v3, v1, Lcom/android/launcher/Launcher;

    if-eqz v3, :cond_8e

    move-object v2, v1

    check-cast v2, Lcom/android/launcher/Launcher;

    :cond_8e
    if-nez v2, :cond_91

    goto :goto_9d

    :cond_91
    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v1

    if-nez v1, :cond_98

    goto :goto_9d

    :cond_98
    sget-object v2, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v1, v2, v0}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;Z)V

    :cond_9d
    :goto_9d
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {v0, p1}, Lcom/android/quickstep/util/RecentsOrientedState;->setDeviceProfile(Lcom/android/launcher3/DeviceProfile;)V

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->updateOrientationHandler()V

    return-void
.end method

.method public setLayoutRotation(II)V
    .registers 4

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {v0, p1, p2}, Lcom/android/quickstep/util/RecentsOrientedState;->update(II)Z

    move-result p1

    if-eqz p1, :cond_e

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->updateOrientationHandler()V

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->updateChildTaskOrientations()V

    :cond_e
    return-void
.end method

.method public final setLogLoadVisibleTaskData(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->logLoadVisibleTaskData:Z

    return-void
.end method

.method public final setMClearAllButtonImage(Landroid/view/View;)V
    .registers 2

    iput-object p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mClearAllButtonImage:Landroid/view/View;

    return-void
.end method

.method public final setMGestureAnimationStarted(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mGestureAnimationStarted:Z

    return-void
.end method

.method public final setMGoHomeListener(Lcom/android/quickstep/views/OplusRecentsViewImpl$GoHomeListener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mGoHomeListener:Lcom/android/quickstep/views/OplusRecentsViewImpl$GoHomeListener;

    return-void
.end method

.method public final setOnCurrentScrollChangeListener(Lcom/android/quickstep/views/OplusRecentsViewImpl$OnCurrentScrollChangeListener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mCurrentScrollChangeListener:Lcom/android/quickstep/views/OplusRecentsViewImpl$OnCurrentScrollChangeListener;

    return-void
.end method

.method public final setOplusCleanStorageFrameLayout(Lcom/oplus/quickstep/views/OplusCleanStorageFrameLayout;)V
    .registers 2

    iput-object p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->oplusCleanStorageFrameLayout:Lcom/oplus/quickstep/views/OplusCleanStorageFrameLayout;

    return-void
.end method

.method public setOverviewSelectEnabled(Z)V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isWaitTaskAnimationStart:Z

    invoke-super {p0, p1}, Lcom/android/quickstep/views/RecentsView;->setOverviewSelectEnabled(Z)V

    return-void
.end method

.method public setOverviewStateEnabled(Z)V
    .registers 4

    invoke-super {p0, p1}, Lcom/android/quickstep/views/RecentsView;->setOverviewStateEnabled(Z)V

    if-eqz p1, :cond_20

    iget-object p1, p0, Lcom/android/quickstep/views/RecentsView;->mClearAllButton:Lcom/oplus/quickstep/views/OplusClearAllPanelView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->updateMeminfo(Z)V

    iget-object p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->oplusCleanStorageFrameLayout:Lcom/oplus/quickstep/views/OplusCleanStorageFrameLayout;

    if-nez p1, :cond_10

    goto :goto_20

    :cond_10
    sget-object v0, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;->Companion:Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger$Companion;

    iget-object p0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    const-string v1, "mContext"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger$Companion;->getInstance(Landroid/content/Context;)Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;->updateCleanButton(Landroid/view/View;)V

    :cond_20
    :goto_20
    return-void
.end method

.method public final setPendingAnimation(Lcom/android/launcher3/anim/PendingAnimation;)V
    .registers 2

    iput-object p1, p0, Lcom/android/quickstep/views/RecentsView;->mPendingAnimation:Lcom/android/launcher3/anim/PendingAnimation;

    return-void
.end method

.method public final setRecentAnimateDragging(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->recentAnimateDragging:Z

    return-void
.end method

.method public final setRemovingAllTaskViews(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isRemovingAllTaskViews:Z

    return-void
.end method

.method public setRunningTaskHidden(Z)V
    .registers 6

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_36

    const-string v0, "setRunningTaskHidden(), old="

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/quickstep/views/RecentsView;->mRunningTaskTileHidden:Z

    const-string v2, ", isHidden="

    const-string v3, ", runningTask null ? "

    invoke-static {v0, v1, v2, p1, v3}, Lcom/android/launcher/g0;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getRunningTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v1

    if-nez v1, :cond_1d

    const/4 v1, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v1, 0x0

    :goto_1e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mContentAlpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/quickstep/views/RecentsView;->mContentAlpha:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickStep"

    const-string v2, "OplusRecentsView"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_36
    invoke-super {p0, p1}, Lcom/android/quickstep/views/RecentsView;->setRunningTaskHidden(Z)V

    return-void
.end method

.method public final setRunningTaskHiddenWhenNeed(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/android/quickstep/views/RecentsView;->mRunningTaskTileHidden:Z

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    invoke-super {p0, p1}, Lcom/android/quickstep/views/RecentsView;->setRunningTaskHidden(Z)V

    return-void
.end method

.method public final setSetRotationByActivityInit(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isSetRotationByActivityInit:Z

    return-void
.end method

.method public final setSnapImmediatelyByTaskDismiss(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->snapImmediatelyByTaskDismiss:Z

    return-void
.end method

.method public final setSpringAnimToRecent(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->springAnimToRecent:Z

    return-void
.end method

.method public setTaskModalness(F)V
    .registers 2

    iput p1, p0, Lcom/android/quickstep/views/RecentsView;->mTaskModalness:F

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->updatePageOffsets()V

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getCurrentPageTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object p0

    if-nez p0, :cond_c

    goto :goto_f

    :cond_c
    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/TaskView;->setModalness(F)V

    :goto_f
    return-void
.end method

.method public setTaskViewsPrimarySplitTranslation(F)V
    .registers 7

    iget v0, p0, Lcom/android/quickstep/views/RecentsView;->mTaskViewsPrimarySplitTranslation:F

    cmpg-float v0, v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    move v0, v1

    :goto_a
    if-eqz v0, :cond_d

    return-void

    :cond_d
    iput p1, p0, Lcom/android/quickstep/views/RecentsView;->mTaskViewsPrimarySplitTranslation:F

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getTaskViewCount()I

    move-result v0

    if-lez v0, :cond_30

    :goto_15
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/quickstep/views/RecentsView;->requireTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v1

    const-string v3, "requireTaskViewAt(i)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/quickstep/views/TaskView;->getPrimarySplitTranslationProperty()Landroid/util/FloatProperty;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    if-lt v2, v0, :cond_2e

    goto :goto_30

    :cond_2e
    move v1, v2

    goto :goto_15

    :cond_30
    :goto_30
    return-void
.end method

.method public setVisibility(I)V
    .registers 5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-ne v0, p1, :cond_7

    return-void

    :cond_7
    const-string v0, "OplusRecentsView"

    const/4 v1, 0x4

    if-ne p1, v1, :cond_1a

    const-string/jumbo v2, "setVisibility: oplusCleanStorageFrameLayout?.visibility = INVISIBLE"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->oplusCleanStorageFrameLayout:Lcom/oplus/quickstep/views/OplusCleanStorageFrameLayout;

    if-nez v2, :cond_17

    goto :goto_1a

    :cond_17
    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_1a
    :goto_1a
    const-string/jumbo v1, "setVisibility: alpha = "

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_32

    const-string v2, "VISIBLE"

    goto :goto_34

    :cond_32
    const-string v2, "INVISIBLE"

    :goto_34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QuickStep"

    invoke-static {v2, v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/android/quickstep/views/RecentsView;->setVisibility(I)V

    return-void
.end method

.method public final setWaitTaskAnimationStart(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isWaitTaskAnimationStart:Z

    return-void
.end method

.method public final setXLocation(F)V
    .registers 2

    iput p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->xLocation:F

    return-void
.end method

.method public final setYLocation(F)V
    .registers 2

    iput p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->yLocation:F

    return-void
.end method

.method public shouldAddStubTaskView([Lcom/android/systemui/shared/recents/model/Task;)Z
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_4

    goto :goto_3c

    :cond_4
    array-length v1, p1

    const/4 v2, 0x1

    if-le v1, v2, :cond_e

    invoke-super {p0, p1}, Lcom/android/quickstep/views/RecentsView;->shouldAddStubTaskView([Lcom/android/systemui/shared/recents/model/Task;)Z

    move-result p0

    move v0, p0

    goto :goto_3c

    :cond_e
    aget-object p1, p1, v0

    if-nez p1, :cond_13

    goto :goto_3c

    :cond_13
    invoke-static {}, Lcom/oplus/quickstep/privacy/OplusPrivacyManager;->getInstance()Lcom/oplus/quickstep/privacy/OplusPrivacyManager;

    move-result-object v1

    iget-object v3, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v3}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v4, v4, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {v1, v3, v4}, Lcom/oplus/quickstep/privacy/OplusPrivacyManager;->isHiddenPkg(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_3c

    iget-object v1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v1, v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {p0, v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getTaskViewByTaskId(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v1

    if-nez v1, :cond_3c

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget p1, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->windowingMode:I

    if-ne p1, v2, :cond_3c

    iget-boolean p0, p0, Lcom/android/quickstep/views/RecentsView;->mNeedReloadTask:Z

    if-eqz p0, :cond_3c

    move v0, v2

    :cond_3c
    :goto_3c
    return v0
.end method

.method public showAsGrid()Z
    .registers 2

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-super {p0}, Lcom/android/quickstep/views/RecentsView;->showAsGrid()Z

    move-result p0

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    return p0
.end method

.method public final showEmptyMessage()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/quickstep/views/RecentsView;->mShowEmptyMessage:Z

    return p0
.end method

.method public final showNextTask()V
    .registers 3

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getRunningTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    if-nez v0, :cond_18

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getTaskViewCount()I

    move-result v0

    if-lez v0, :cond_2c

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->getTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object p0

    if-nez p0, :cond_14

    goto :goto_2c

    :cond_14
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->launchTaskAnimated()Lcom/android/launcher3/util/RunnableList;

    goto :goto_2c

    :cond_18
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getNextTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v1

    if-eqz v1, :cond_29

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getNextTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object p0

    if-nez p0, :cond_25

    goto :goto_2c

    :cond_25
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->launchTaskAnimated()Lcom/android/launcher3/util/RunnableList;

    goto :goto_2c

    :cond_29
    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView;->launchTaskAnimated()Lcom/android/launcher3/util/RunnableList;

    :cond_2c
    :goto_2c
    return-void
.end method

.method public snapToDestination()V
    .registers 6

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageNearestToCenterOfScreen()I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/PagedView;->mPageSnapAnimationDuration:I

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v2

    if-eqz v2, :cond_1c

    const-string/jumbo v2, "snapToDestination(), nearestToCenterOfScreen="

    const-string v3, ", pageSnapDuration="

    invoke-static {v2, v0, v3, v1}, Landroidx/emoji2/text/flatbuffer/b;->a(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "QuickStep"

    const-string v4, "OplusRecentsView"

    invoke-static {v3, v4, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c
    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/PagedView;->snapToPage(II)Z

    return-void
.end method

.method public snapToPage(IIIZ)Z
    .registers 6

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mIsSnapToPageStart:Z

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/launcher/OplusPagedViewImpl;->snapToPage(IIIZ)Z

    move-result p0

    return p0
.end method

.method public snapToPageRelative(IIZ)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v1

    add-int/2addr v1, p2

    if-nez p3, :cond_10

    if-ltz v1, :cond_f

    if-lt v1, p1, :cond_10

    :cond_f
    return v0

    :cond_10
    new-instance p2, Lcom/android/launcher/sellmode/a;

    invoke-direct {p2, p0, v1, p1}, Lcom/android/launcher/sellmode/a;-><init>(Lcom/android/quickstep/views/OplusRecentsViewImpl;II)V

    iget-object p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mDelayHandler:Landroid/os/Handler;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p1

    if-eqz p1, :cond_22

    iget-object p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mDelayHandler:Landroid/os/Handler;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_22
    iget-object p0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mDelayHandler:Landroid/os/Handler;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 p0, 0x1

    return p0
.end method

.method public superScrollTo(II)V
    .registers 5

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->canUpdateCurrentScroll()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    sget-object v1, Lcom/android/launcher3/touch/PagedOrientationHandler;->PORTRAIT:Lcom/android/launcher3/touch/PagedOrientationHandler;

    if-eq v0, v1, :cond_e

    move v0, p2

    goto :goto_f

    :cond_e
    move v0, p1

    :goto_f
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->notifyCurrentScrollChange(IZ)V

    :cond_13
    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->canScrollByTouch()Z

    move-result v0

    if-nez v0, :cond_20

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->canUpdateCurrentScroll()Z

    move-result v0

    if-eqz v0, :cond_20

    return-void

    :cond_20
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/PagedView;->superScrollTo(II)V

    return-void
.end method

.method public updateActionsViewFocusedScroll()V
    .registers 1

    return-void
.end method

.method public updateChildTaskOrientations()V
    .registers 7

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->showAsGrid()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mClearAllButton:Lcom/oplus/quickstep/views/OplusClearAllPanelView;

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {v0, v1}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->setOrientationState(Lcom/android/quickstep/util/RecentsOrientedState;)V

    invoke-super {p0}, Lcom/android/quickstep/views/RecentsView;->updateChildTaskOrientations()V

    return-void

    :cond_11
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {v0}, Lcom/android/quickstep/util/RecentsOrientedState;->getOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getTaskViewCount()I

    move-result v1

    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mClearAllButton:Lcom/oplus/quickstep/views/OplusClearAllPanelView;

    iget-object v3, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {v2, v3}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->setOrientationState(Lcom/android/quickstep/util/RecentsOrientedState;)V

    const/4 v2, 0x0

    if-lez v1, :cond_8f

    :goto_25
    add-int/lit8 v3, v2, 0x1

    iget-object v4, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {v4}, Lcom/android/quickstep/util/RecentsOrientedState;->getOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v4

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7e

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v1

    if-eqz v1, :cond_7a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateChildTaskOrientations(), start="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "startHandler"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->toMsg(Lcom/android/launcher3/touch/PagedOrientationHandler;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", current="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "currentHandler"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->toMsg(Lcom/android/launcher3/touch/PagedOrientationHandler;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", i="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", restart rotate."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickStep"

    const-string v2, "OplusRecentsView"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7a
    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->updateChildTaskOrientations()V

    return-void

    :cond_7e
    invoke-virtual {p0, v2}, Lcom/android/quickstep/views/RecentsView;->getTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v2

    if-nez v2, :cond_85

    goto :goto_8a

    :cond_85
    iget-object v4, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {v2, v4}, Lcom/android/quickstep/views/TaskView;->setOrientationState(Lcom/android/quickstep/util/RecentsOrientedState;)V

    :goto_8a
    if-lt v3, v1, :cond_8d

    goto :goto_8f

    :cond_8d
    move v2, v3

    goto :goto_25

    :cond_8f
    :goto_8f
    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    const/16 v0, 0x800

    invoke-static {p0, v0}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenViewWithType(Lcom/android/launcher3/views/ActivityContext;I)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object p0

    instance-of v0, p0, Lcom/android/quickstep/views/TaskMenuView;

    if-eqz v0, :cond_9e

    check-cast p0, Lcom/android/quickstep/views/TaskMenuView;

    goto :goto_9f

    :cond_9e
    const/4 p0, 0x0

    :goto_9f
    if-nez p0, :cond_a2

    goto :goto_a5

    :cond_a2
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskMenuView;->onRotationChanged()V

    :goto_a5
    return-void
.end method

.method public final updateCurrentGestureState(Lcom/android/quickstep/GestureState;)V
    .registers 3

    const-string v0, "gestureState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mCurrentGestureState:Lcom/android/quickstep/GestureState;

    return-void
.end method

.method public updateCurrentPage(I)V
    .registers 3

    iput p1, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    iget-object v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->relayInteraction:Lcom/oplus/quickstep/relay/RecentRelayInteraction;

    if-nez v0, :cond_a

    goto :goto_d

    :cond_a
    invoke-virtual {v0, p1}, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->setCurrentPage(I)V

    :goto_d
    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->updateCurrentPageScroll()V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string/jumbo p1, "updateCurrentPage(), index="

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "QuickStep"

    const-string v0, "OplusRecentsView"

    invoke-static {p1, v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateCurrentPageScroll()V
    .registers 6

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->showAsGrid()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-super {p0}, Lcom/android/launcher3/PagedView;->updateCurrentPageScroll()V

    return-void

    :cond_a
    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getPageCount()I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    const/4 v2, 0x0

    if-ltz v1, :cond_17

    if-ge v1, v0, :cond_17

    const/4 v0, 0x1

    goto :goto_18

    :cond_17
    move v0, v2

    :goto_18
    if-eqz v0, :cond_43

    invoke-virtual {p0, v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getScrollForPage(I)I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/PagedView;->mCurrentPageScrollDiff:I

    add-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->interceptUpdateCurrentScroll:Z

    if-eqz v1, :cond_44

    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v1, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScroll(Landroid/view/View;)I

    move-result v1

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v3

    if-eqz v3, :cond_41

    const-string/jumbo v3, "updateCurrentPageScroll: currentScroll = "

    const-string v4, ", newPosition = "

    invoke-static {v3, v1, v4, v0}, Landroidx/emoji2/text/flatbuffer/b;->a(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "QuickStep"

    const-string v4, "OplusRecentsView"

    invoke-static {v3, v4, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_41
    move v0, v1

    goto :goto_44

    :cond_43
    move v0, v2

    :cond_44
    :goto_44
    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    sget-object v3, Lcom/android/launcher3/touch/PagedOrientationHandler;->VIEW_SCROLL_TO:Lcom/android/launcher3/touch/PagedOrientationHandler$Int2DAction;

    invoke-interface {v1, p0, v3, v0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->setPrimary(Ljava/lang/Object;Lcom/android/launcher3/touch/PagedOrientationHandler$Int2DAction;I)V

    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    invoke-virtual {v1}, Lcom/android/launcher3/util/OverScroller;->getCurrX()I

    move-result v3

    iget-object v4, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/util/OverScroller;

    invoke-virtual {v4}, Lcom/android/launcher3/util/OverScroller;->getCurrX()I

    move-result v4

    sub-int/2addr v0, v4

    invoke-virtual {v1, v3, v2, v0, v2}, Lcom/android/launcher3/util/OverScroller;->startScroll(IIII)V

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->forceFinishScroller()V

    return-void
.end method

.method public updateCurrentTaskActionsVisibility()V
    .registers 3

    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->mActionsView:Lcom/android/quickstep/views/OverviewActionsView;

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v0

    const/16 v1, 0x8

    invoke-virtual {p0, v1, v0}, Lcom/android/quickstep/views/OverviewActionsView;->updateHiddenFlags(IZ)V

    return-void
.end method

.method public updateCurveProperties()V
    .registers 9

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    const-string v2, "mInsets"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mScrollState:Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$ScrollState;

    invoke-interface {v0, p0, v1, v2}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;->getCurveProperties(Lcom/android/launcher3/PagedView;Landroid/graphics/Rect;Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$CurveProperties;)V

    iget-object v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mScrollState:Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$ScrollState;

    iget-boolean v1, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v1, :cond_19

    invoke-virtual {v0}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$CurveProperties;->getScroll()I

    move-result v1

    goto :goto_20

    :cond_19
    iget v1, p0, Lcom/android/launcher3/PagedView;->mMaxScroll:I

    invoke-virtual {v0}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$CurveProperties;->getScroll()I

    move-result v2

    sub-int/2addr v1, v2

    :goto_20
    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$ScrollState;->setScrollFromEdge(F)V

    iget-boolean v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mIsClearViewAdded:Z

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mClearAllButton:Lcom/oplus/quickstep/views/OplusClearAllPanelView;

    iget-object v1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mScrollState:Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$ScrollState;

    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {v0, v1, v2}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->onPageScroll(Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$ScrollState;Lcom/android/quickstep/util/RecentsOrientedState;)V

    :cond_31
    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getPageCount()I

    move-result v0

    if-eqz v0, :cond_a4

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_40

    :cond_3e
    move v2, v1

    goto :goto_47

    :cond_40
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    if-nez v2, :cond_3e

    const/4 v2, 0x1

    :goto_47
    if-eqz v2, :cond_4a

    goto :goto_a4

    :cond_4a
    if-lez v0, :cond_a4

    move v2, v1

    :goto_4d
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v4, v1, Lcom/android/quickstep/views/TaskView;

    if-eqz v4, :cond_59

    add-int/lit8 v2, v2, 0x1

    :cond_59
    const/4 v4, 0x2

    if-ne v2, v4, :cond_77

    sget-object v4, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    invoke-virtual {v4}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->isLaunchFromButtonRunning()Z

    move-result v4

    if-eqz v4, :cond_77

    iget-object v4, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mScrollState:Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$ScrollState;

    iget-object v5, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v5}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v5

    iget-object v6, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v6, v1}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getChildStart(Landroid/view/View;)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$ScrollState;->updateInterpolation(Lcom/android/launcher3/DeviceProfile;F)V

    goto :goto_8d

    :cond_77
    iget-object v4, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mScrollState:Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$ScrollState;

    iget-object v5, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v5}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v5

    iget-object v6, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    const-string v7, "child"

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v6, v1}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;->getChildStartWithTranslation(Landroid/view/View;)F

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$ScrollState;->updateInterpolation(Lcom/android/launcher3/DeviceProfile;F)V

    :goto_8d
    instance-of v4, v1, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$PageCallbacks;

    if-eqz v4, :cond_94

    check-cast v1, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$PageCallbacks;

    goto :goto_95

    :cond_94
    const/4 v1, 0x0

    :goto_95
    if-nez v1, :cond_98

    goto :goto_9f

    :cond_98
    iget-object v4, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mScrollState:Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$ScrollState;

    iget-boolean v5, p0, Lcom/android/quickstep/views/RecentsView;->mOverviewGridEnabled:Z

    invoke-interface {v1, v4, v5}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$PageCallbacks;->onPageScroll(Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$ScrollState;Z)V

    :goto_9f
    if-lt v3, v0, :cond_a2

    goto :goto_a4

    :cond_a2
    move v1, v3

    goto :goto_4d

    :cond_a4
    :goto_a4
    return-void
.end method

.method public final updateDraggingMaxProgress(F)V
    .registers 2

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getTransYProperty()Lcom/oplus/quickstep/utils/TranslationYProperty;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/utils/TranslationYProperty;->setMaxProgress(F)V

    return-void
.end method

.method public updateGridProperties(ZI)V
    .registers 37

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getTaskViewCount()I

    move-result v2

    const-string v3, "OplusRecentsView"

    const-string v4, "QuickStep"

    if-eqz v2, :cond_288

    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->showAsGrid()Z

    move-result v5

    if-nez v5, :cond_16

    goto/16 :goto_288

    :cond_16
    iget-object v5, v0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v5}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v5

    iget v5, v5, Lcom/android/launcher3/DeviceProfile;->overviewTaskThumbnailTopMarginPx:I

    new-instance v6, Lcom/android/launcher3/util/IntSet;

    invoke-direct {v6}, Lcom/android/launcher3/util/IntSet;-><init>()V

    new-instance v7, Lcom/android/launcher3/util/IntSet;

    invoke-direct {v7}, Lcom/android/launcher3/util/IntSet;-><init>()V

    new-array v8, v2, [F

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v9

    invoke-virtual {v0, v9}, Lcom/android/quickstep/views/RecentsView;->getTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/views/RecentsView;->getHomeTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v11

    if-nez v1, :cond_3d

    iget-object v12, v0, Lcom/android/quickstep/views/RecentsView;->mTopRowIdSet:Lcom/android/launcher3/util/IntSet;

    invoke-virtual {v12}, Lcom/android/launcher3/util/IntSet;->clear()V

    :cond_3d
    const-string v12, "requireTaskViewAt(i)"

    if-lez v2, :cond_1be

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const v18, 0x7fffffff

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v31, v16

    move-object/from16 v16, v3

    move/from16 v3, v31

    move/from16 v32, v17

    move-object/from16 v17, v4

    move/from16 v4, v32

    move/from16 v33, v18

    move/from16 v18, v9

    move/from16 v9, v33

    :goto_65
    move/from16 v23, v2

    add-int/lit8 v2, v15, 0x1

    move/from16 v24, v2

    invoke-virtual {v0, v15}, Lcom/android/quickstep/views/RecentsView;->requireTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v2

    invoke-static {v2, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v25, v12

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    iget v12, v12, Landroid/view/ViewGroup$LayoutParams;->width:I

    move-object/from16 v26, v7

    iget v7, v0, Lcom/android/launcher3/PagedView;->mPageSpacing:I

    add-int/2addr v12, v7

    invoke-virtual {v2}, Lcom/android/quickstep/views/TaskView;->isFocusedTask()Z

    move-result v7

    if-eqz v7, :cond_bf

    add-int/2addr v4, v12

    add-int/2addr v13, v12

    aget v3, v8, v15

    int-to-float v7, v14

    add-float/2addr v3, v7

    aput v3, v8, v15

    aget v3, v8, v15

    iget-boolean v7, v0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v7, :cond_95

    move v7, v12

    goto :goto_96

    :cond_95
    neg-int v7, v12

    :goto_96
    int-to-float v7, v7

    add-float/2addr v3, v7

    aput v3, v8, v15

    iget-object v3, v0, Lcom/android/quickstep/views/RecentsView;->mLastComputedTaskSize:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    add-int/2addr v3, v5

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    iget v7, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int/2addr v3, v7

    int-to-float v3, v3

    const/high16 v7, 0x40000000  # 2.0f

    div-float/2addr v3, v7

    invoke-virtual {v2, v3}, Lcom/android/quickstep/views/TaskView;->setGridTranslationY(F)V

    if-ne v2, v10, :cond_b3

    move/from16 v22, v12

    :cond_b3
    move/from16 v27, v5

    move v3, v12

    move v9, v15

    move/from16 v2, v23

    move/from16 v15, v24

    move-object/from16 v5, v26

    goto/16 :goto_1b4

    :cond_bf
    if-le v15, v9, :cond_d1

    aget v7, v8, v15

    move/from16 v27, v5

    iget-boolean v5, v0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v5, :cond_cb

    move v5, v3

    goto :goto_cc

    :cond_cb
    neg-int v5, v3

    :goto_cc
    int-to-float v5, v5

    add-float/2addr v7, v5

    aput v7, v8, v15

    goto :goto_db

    :cond_d1
    move/from16 v27, v5

    iget-boolean v5, v0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v5, :cond_d9

    move v5, v12

    goto :goto_da

    :cond_d9
    neg-int v5, v12

    :goto_da
    add-int/2addr v14, v5

    :goto_db
    invoke-virtual {v2}, Lcom/android/quickstep/views/TaskView;->getTaskViewId()I

    move-result v5

    if-eqz v1, :cond_f8

    move/from16 v7, p2

    if-le v15, v7, :cond_ef

    move/from16 v28, v3

    iget-object v3, v0, Lcom/android/quickstep/views/RecentsView;->mTopRowIdSet:Lcom/android/launcher3/util/IntSet;

    invoke-virtual {v3, v5}, Lcom/android/launcher3/util/IntSet;->remove(I)V

    if-gt v4, v13, :cond_100

    goto :goto_fe

    :cond_ef
    move/from16 v28, v3

    iget-object v3, v0, Lcom/android/quickstep/views/RecentsView;->mTopRowIdSet:Lcom/android/launcher3/util/IntSet;

    invoke-virtual {v3, v5}, Lcom/android/launcher3/util/IntSet;->contains(I)Z

    move-result v3

    goto :goto_101

    :cond_f8
    move/from16 v7, p2

    move/from16 v28, v3

    if-gt v4, v13, :cond_100

    :goto_fe
    const/4 v3, 0x1

    goto :goto_101

    :cond_100
    const/4 v3, 0x0

    :goto_101
    if-eqz v3, :cond_157

    if-eqz v11, :cond_10a

    if-nez v20, :cond_10a

    move-object/from16 v20, v2

    goto :goto_10b

    :cond_10a
    add-int/2addr v4, v12

    :goto_10b
    invoke-virtual {v6, v15}, Lcom/android/launcher3/util/IntSet;->add(I)V

    iget-object v12, v0, Lcom/android/quickstep/views/RecentsView;->mTopRowIdSet:Lcom/android/launcher3/util/IntSet;

    invoke-virtual {v12, v5}, Lcom/android/launcher3/util/IntSet;->add(I)V

    iget v5, v0, Lcom/android/quickstep/views/RecentsView;->mTaskGridVerticalDiff:F

    invoke-virtual {v2, v5}, Lcom/android/quickstep/views/TaskView;->setGridTranslationY(F)V

    add-int/lit8 v5, v15, -0x1

    const/4 v12, 0x0

    :goto_11b
    invoke-virtual {v6, v5}, Lcom/android/launcher3/util/IntSet;->contains(I)Z

    move-result v29

    if-nez v29, :cond_140

    if-ltz v5, :cond_140

    if-ne v5, v9, :cond_128

    add-int/lit8 v5, v5, -0x1

    goto :goto_11b

    :cond_128
    invoke-virtual {v0, v5}, Lcom/android/quickstep/views/RecentsView;->requireTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v29

    move/from16 v30, v4

    invoke-virtual/range {v29 .. v29}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v7, v0, Lcom/android/launcher3/PagedView;->mPageSpacing:I

    add-int/2addr v4, v7

    int-to-float v4, v4

    add-float/2addr v12, v4

    add-int/lit8 v5, v5, -0x1

    move/from16 v7, p2

    move/from16 v4, v30

    goto :goto_11b

    :cond_140
    move/from16 v30, v4

    iget-boolean v4, v0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v4, :cond_147

    goto :goto_148

    :cond_147
    neg-float v12, v12

    :goto_148
    aget v4, v8, v15

    add-float v21, v21, v12

    add-float v4, v4, v21

    aput v4, v8, v15

    move-object/from16 v5, v26

    move/from16 v4, v30

    move/from16 v26, v9

    goto :goto_1a3

    :cond_157
    add-int/2addr v13, v12

    move-object/from16 v5, v26

    invoke-virtual {v5, v15}, Lcom/android/launcher3/util/IntSet;->add(I)V

    iget v7, v0, Lcom/android/quickstep/views/RecentsView;->mTopBottomRowHeightDiff:F

    iget v12, v0, Lcom/android/quickstep/views/RecentsView;->mTaskGridVerticalDiff:F

    add-float/2addr v7, v12

    invoke-virtual {v2, v7}, Lcom/android/quickstep/views/TaskView;->setGridTranslationY(F)V

    add-int/lit8 v7, v15, -0x1

    const/4 v12, 0x0

    :goto_168
    invoke-virtual {v5, v7}, Lcom/android/launcher3/util/IntSet;->contains(I)Z

    move-result v26

    if-nez v26, :cond_18f

    if-ltz v7, :cond_18f

    if-ne v7, v9, :cond_175

    add-int/lit8 v7, v7, -0x1

    goto :goto_168

    :cond_175
    invoke-virtual {v0, v7}, Lcom/android/quickstep/views/RecentsView;->requireTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v26

    move/from16 v29, v4

    invoke-virtual/range {v26 .. v26}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v26, v9

    iget v9, v0, Lcom/android/launcher3/PagedView;->mPageSpacing:I

    add-int/2addr v4, v9

    int-to-float v4, v4

    add-float/2addr v12, v4

    add-int/lit8 v7, v7, -0x1

    move/from16 v9, v26

    move/from16 v4, v29

    goto :goto_168

    :cond_18f
    move/from16 v29, v4

    move/from16 v26, v9

    iget-boolean v4, v0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v4, :cond_198

    goto :goto_199

    :cond_198
    neg-float v12, v12

    :goto_199
    aget v4, v8, v15

    add-float v19, v19, v12

    add-float v4, v4, v19

    aput v4, v8, v15

    move/from16 v4, v29

    :goto_1a3
    if-ne v2, v10, :cond_1ac

    if-eqz v3, :cond_1aa

    move/from16 v22, v4

    goto :goto_1ac

    :cond_1aa
    move/from16 v22, v13

    :cond_1ac
    :goto_1ac
    move/from16 v2, v23

    move/from16 v15, v24

    move/from16 v9, v26

    move/from16 v3, v28

    :goto_1b4
    if-lt v15, v2, :cond_1b7

    goto :goto_1cb

    :cond_1b7
    move-object v7, v5

    move-object/from16 v12, v25

    move/from16 v5, v27

    goto/16 :goto_65

    :cond_1be
    move-object/from16 v16, v3

    move-object/from16 v17, v4

    move-object v5, v7

    move/from16 v18, v9

    move-object/from16 v25, v12

    const/4 v13, 0x0

    const/4 v4, 0x0

    const/16 v22, 0x0

    :goto_1cb
    if-eqz v10, :cond_1d6

    const/4 v1, 0x1

    const/4 v3, 0x0

    invoke-virtual {v10, v1, v3}, Lcom/android/quickstep/views/TaskView;->getScrollAdjustment(ZZ)F

    move-result v1

    aget v7, v8, v18

    goto :goto_1d9

    :cond_1d6
    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v1, 0x0

    :goto_1d9
    add-int/lit8 v9, v2, -0x1

    invoke-virtual {v6, v9}, Lcom/android/launcher3/util/IntSet;->contains(I)Z

    if-gt v4, v13, :cond_1e4

    invoke-virtual {v6, v9}, Lcom/android/launcher3/util/IntSet;->contains(I)Z

    goto :goto_1e7

    :cond_1e4
    invoke-virtual {v5, v9}, Lcom/android/launcher3/util/IntSet;->contains(I)Z

    :goto_1e7
    invoke-static {v4, v13}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget-object v5, v0, Lcom/android/quickstep/views/RecentsView;->mLastComputedGridSize:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    if-ge v4, v5, :cond_1fe

    iget-object v4, v0, Lcom/android/quickstep/views/RecentsView;->mLastComputedGridSize:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    iget-object v4, v0, Lcom/android/quickstep/views/RecentsView;->mLastComputedGridSize:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    :cond_1fe
    if-eqz v10, :cond_227

    sub-int v4, v4, v22

    iget v5, v0, Lcom/android/launcher3/PagedView;->mPageSpacing:I

    add-int/2addr v4, v5

    iget v5, v0, Lcom/android/quickstep/views/RecentsView;->mTaskWidth:I

    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    sub-int/2addr v5, v6

    iget-object v6, v0, Lcom/android/quickstep/views/RecentsView;->mLastComputedGridSize:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    iget v9, v0, Lcom/android/quickstep/views/RecentsView;->mTaskWidth:I

    const/4 v10, 0x2

    invoke-static {v6, v9, v10, v5}, Landroidx/appcompat/widget/a;->a(IIII)I

    move-result v5

    if-ge v4, v5, :cond_227

    sub-int/2addr v5, v4

    iget-boolean v4, v0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v4, :cond_224

    int-to-float v4, v5

    goto :goto_226

    :cond_224
    int-to-float v4, v5

    neg-float v4, v4

    :goto_226
    add-float/2addr v7, v4

    :cond_227
    if-lez v2, :cond_282

    :goto_229
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v0, v3}, Lcom/android/quickstep/views/RecentsView;->requireTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v5

    move-object/from16 v6, v25

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aget v9, v8, v3

    sub-float/2addr v9, v7

    add-float/2addr v9, v1

    invoke-virtual {v5, v9}, Lcom/android/quickstep/views/TaskView;->setGridTranslationX(F)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "taskView.gridTranslationX="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/android/quickstep/views/TaskView;->getGridTranslationX()F

    move-result v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "：i= "

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "：gridTranslations = "

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "：：snappedTaskGridTranslationX = "

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v5, v16

    move-object/from16 v9, v17

    invoke-static {v9, v5, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-lt v4, v2, :cond_27a

    goto :goto_282

    :cond_27a
    move v3, v4

    move-object/from16 v16, v5

    move-object/from16 v25, v6

    move-object/from16 v17, v9

    goto :goto_229

    :cond_282
    :goto_282
    iget v1, v0, Lcom/android/quickstep/views/RecentsView;->mGridProgress:F

    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setGridProgress(F)V

    return-void

    :cond_288
    :goto_288
    move-object v5, v3

    move-object v9, v4

    const-string/jumbo v3, "updateGridProperties(), taskCount="

    const-string v4, ", showAsGrid()="

    invoke-static {v3, v2, v4}, Landroidx/appcompat/widget/d;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->showAsGrid()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isTaskDismissal="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " ,mOverviewGridEnabled="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, v0, Lcom/android/quickstep/views/RecentsView;->mOverviewGridEnabled:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v5, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateIsBeingDraggedOnTouchDown(Landroid/view/MotionEvent;)V
    .registers 3

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher/OplusPagedViewImpl;->superUpdateIsBeingDraggedOnTouchDown(Landroid/view/MotionEvent;)V

    iget-boolean p1, p0, Lcom/android/launcher3/PagedView;->mIsBeingDragged:Z

    if-eqz p1, :cond_1c

    iget-boolean p1, p0, Lcom/android/launcher3/PagedView;->mFreeScroll:Z

    if-eqz p1, :cond_1c

    iget-boolean p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isRecentsViewDragStarted:Z

    if-nez p1, :cond_1c

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isRecentsViewDragStarted:Z

    sget-object p0, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->DRAG_RECENTS_VIEW_CARD:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    invoke-static {p0}, Lcom/oplus/quickstep/utils/TracePrintUtil;->asyncTraceBegin(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;)V

    :cond_1c
    return-void
.end method

.method public updateOrientationHandler()V
    .registers 6

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    iput-object v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mPreOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-super {p0}, Lcom/android/quickstep/views/RecentsView;->updateOrientationHandler()V

    iget-object v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mPreOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_14

    iput-boolean v1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mOrientationHandlerChanged:Z

    :cond_14
    sget-object v0, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    const-string v2, "OVERVIEW"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isInState(Lcom/android/launcher3/LauncherState;)Z

    move-result v0

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v2

    if-eqz v2, :cond_5e

    const-string/jumbo v2, "updateOrientationHandler(), pre="

    invoke-static {v2}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mPreOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    const/4 v4, 0x0

    if-nez v3, :cond_33

    move-object v3, v4

    goto :goto_37

    :cond_33
    invoke-direct {p0, v3}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->toMsg(Lcom/android/launcher3/touch/PagedOrientationHandler;)Ljava/lang/String;

    move-result-object v3

    :goto_37
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", new="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    if-nez v3, :cond_44

    goto :goto_48

    :cond_44
    invoke-direct {p0, v3}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->toMsg(Lcom/android/launcher3/touch/PagedOrientationHandler;)Ljava/lang/String;

    move-result-object v4

    :goto_48
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", isInOverview="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "QuickStep"

    const-string v4, "OplusRecentsView"

    invoke-static {v3, v4, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5e
    if-eqz v0, :cond_6d

    iget-object v2, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mPreOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    iget-object v3, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6d

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mTouchDownScrollValue:I

    :cond_6d
    iget-boolean v2, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isSetRotationByActivityInit:Z

    if-eqz v2, :cond_83

    iget-object v2, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mPreOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    iget-object v3, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_83

    if-nez v0, :cond_83

    sget-object v0, Lcom/oplus/quickstep/utils/RecentsLayoutManager;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsLayoutManager;

    invoke-virtual {v0, p0}, Lcom/oplus/quickstep/utils/RecentsLayoutManager;->layoutImmediately(Landroid/view/View;)V

    goto :goto_86

    :cond_83
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->requestLayout()V

    :goto_86
    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setCurrentPage(I)V

    iget-object v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->dockView:Lcom/oplus/quickstep/dock/DockView;

    const/4 v2, 0x0

    if-nez v0, :cond_91

    goto :goto_a3

    :cond_91
    iget-object v3, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {v3}, Lcom/android/quickstep/util/RecentsOrientedState;->getOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getRotation()I

    move-result v3

    if-nez v3, :cond_9f

    move v3, v1

    goto :goto_a0

    :cond_9f
    move v3, v2

    :goto_a0
    invoke-virtual {v0, v3}, Lcom/oplus/quickstep/dock/DockView;->setIsRecentsViewPortrait(Z)V

    :goto_a3
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mClearAllButton:Lcom/oplus/quickstep/views/OplusClearAllPanelView;

    iget-object v3, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {v3}, Lcom/android/quickstep/util/RecentsOrientedState;->getOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getRotation()I

    move-result v3

    if-nez v3, :cond_b2

    goto :goto_b3

    :cond_b2
    move v1, v2

    :goto_b3
    invoke-virtual {v0, v1}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->setIsRecentsViewPortrait(Z)V

    iput-boolean v2, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mOrientationHandlerChanged:Z

    return-void
.end method

.method public updatePageOffsets()V
    .registers 13

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->updatePageOffsetsAsGrid()V

    return-void

    :cond_c
    sget-object v0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->isLaunchFromButtonRunning()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1f

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->isTaskLaunchAnimRunning()Z

    move-result v1

    if-eqz v1, :cond_1d

    goto :goto_1f

    :cond_1d
    move v1, v2

    goto :goto_20

    :cond_1f
    :goto_1f
    move v1, v3

    :goto_20
    if-eqz v1, :cond_23

    return-void

    :cond_23
    iget v1, p0, Lcom/android/quickstep/views/RecentsView;->mAdjacentPageHorizontalOffset:F

    iget-object v4, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v6

    invoke-interface {v4, v5, v6}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryValue(II)I

    move-result v4

    iget-boolean v5, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v5, :cond_38

    neg-int v4, v4

    :cond_38
    int-to-float v4, v4

    mul-float/2addr v1, v4

    sget-object v4, Lcom/android/launcher3/anim/Interpolators;->ACCEL_0_75:Landroid/view/animation/Interpolator;

    iget v5, p0, Lcom/android/quickstep/views/RecentsView;->mTaskModalness:F

    invoke-interface {v4, v5}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v4

    iget-object v5, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v7

    invoke-interface {v5, v6, v7}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryValue(II)I

    move-result v5

    iget-boolean v6, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v6, :cond_55

    neg-int v5, v5

    :cond_55
    int-to-float v5, v5

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/android/quickstep/views/RecentsView;->mRunningTaskViewId:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_66

    iget-boolean v5, p0, Lcom/android/quickstep/views/RecentsView;->mRunningTaskTileHidden:Z

    if-nez v5, :cond_61

    goto :goto_66

    :cond_61
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getRunningTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v5

    goto :goto_67

    :cond_66
    :goto_66
    const/4 v5, 0x0

    :goto_67
    if-nez v5, :cond_6a

    goto :goto_6e

    :cond_6a
    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v6

    :goto_6e
    iget-boolean v5, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mHasRemoveAllViewsTask:Z

    if-eqz v5, :cond_85

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->isExitStateAnimRunning()Z

    move-result v0

    if-eqz v0, :cond_85

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v0

    const/4 v5, 0x2

    if-le v0, v5, :cond_85

    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    if-le v0, v3, :cond_85

    sub-int/2addr v0, v3

    goto :goto_86

    :cond_85
    move v0, v2

    :goto_86
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v0, v5, :cond_eb

    :goto_8c
    add-int/lit8 v7, v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getOplusTaskViewAtByAbsoluteIndex(I)Lcom/android/quickstep/views/OplusTaskViewImpl;

    move-result-object v8

    if-eqz v8, :cond_e6

    invoke-virtual {v8}, Lcom/android/quickstep/views/OplusTaskViewImpl;->getDispatchDrawVisible()Z

    move-result v9

    const/4 v10, 0x0

    if-nez v9, :cond_b1

    iget v9, p0, Lcom/android/quickstep/views/RecentsView;->mAdjacentPageHorizontalOffset:F

    cmpg-float v11, v9, v10

    if-nez v11, :cond_a3

    move v11, v3

    goto :goto_a4

    :cond_a3
    move v11, v2

    :goto_a4
    if-nez v11, :cond_b1

    const/high16 v11, 0x3f800000  # 1.0f

    cmpg-float v9, v9, v11

    if-nez v9, :cond_ae

    move v9, v3

    goto :goto_af

    :cond_ae
    move v9, v2

    :goto_af
    if-eqz v9, :cond_e6

    :cond_b1
    invoke-virtual {v8}, Lcom/android/quickstep/views/OplusTaskViewImpl;->isEnterAnimationRunning()Z

    move-result v8

    if-eqz v8, :cond_b8

    goto :goto_e6

    :cond_b8
    if-ne v0, v6, :cond_bc

    move v8, v10

    goto :goto_c1

    :cond_bc
    if-ge v0, v6, :cond_c0

    neg-float v8, v1

    goto :goto_c1

    :cond_c0
    move v8, v1

    :goto_c1
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v9

    if-ne v0, v9, :cond_c8

    goto :goto_d1

    :cond_c8
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v9

    if-ge v0, v9, :cond_d0

    neg-float v10, v4

    goto :goto_d1

    :cond_d0
    move v10, v4

    :goto_d1
    iget-object v9, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const-string v11, "getChildAt(i)"

    invoke-static {v0, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    add-float/2addr v8, v10

    iget-object v10, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {v10}, Lcom/android/quickstep/util/RecentsOrientedState;->getDisplayRotation()I

    move-result v10

    invoke-interface {v9, v0, v8, v10}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;->setAdjacentTaskViewTranslate(Landroid/view/View;FI)V

    :cond_e6
    :goto_e6
    if-lt v7, v5, :cond_e9

    goto :goto_eb

    :cond_e9
    move v0, v7

    goto :goto_8c

    :cond_eb
    :goto_eb
    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->updateCurveProperties()V

    return-void
.end method

.method public updateSizeAndPadding()V
    .registers 9

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-super {p0}, Lcom/android/quickstep/views/RecentsView;->updateSizeAndPadding()V

    return-void

    :cond_c
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->forceUpdateScaleAndPadding:Z

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    invoke-virtual {v0, v1}, Lcom/android/quickstep/util/RecentsOrientedState;->setMultiWindowMode(Z)V

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mTempRect:Landroid/graphics/Rect;

    const-string v1, "mTempRect"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getTaskSize(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->tempTaskRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, p0, Lcom/android/quickstep/views/RecentsView;->mTaskWidth:I

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p0, Lcom/android/quickstep/views/RecentsView;->mTaskHeight:I

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mClearAllButton:Lcom/oplus/quickstep/views/OplusClearAllPanelView;

    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v1}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getRotation()I

    move-result v1

    iput v1, v0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mRotationFlag:I

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getRotation()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_74

    const/4 v2, 0x2

    if-eq v0, v2, :cond_6a

    const/4 v2, 0x3

    if-eq v0, v2, :cond_60

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mTaskTopMargin:I

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->top:I

    goto :goto_7d

    :cond_60
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mTaskTopMargin:I

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->left:I

    goto :goto_7d

    :cond_6a
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget v3, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mTaskTopMargin:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_7d

    :cond_74
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->right:I

    iget v3, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mTaskTopMargin:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->right:I

    :goto_7d
    const-string/jumbo v0, "updateSizeAndPadding:  80dp->pixel:"

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070253

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , mClearAllButton.width:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mClearAllButton:Lcom/oplus/quickstep/views/OplusClearAllPanelView;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ,mTaskWidth："

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/quickstep/views/RecentsView;->mTaskWidth:I

    const-string v3, "QuickStep"

    const-string v4, "OplusRecentsView"

    invoke-static {v0, v2, v3, v4}, Lcom/android/launcher/download/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v6

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v5

    iget-object v5, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v5}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v5

    iget v5, v5, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    iget-object v6, p0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/android/quickstep/views/RecentsView;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v6}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v6

    iget v6, v6, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    iget-object v7, p0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v7

    iget-object v7, p0, Lcom/android/quickstep/views/RecentsView;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v7

    invoke-virtual {p0, v2, v0, v5, v6}, Landroid/view/ViewGroup;->setPadding(IIII)V

    iput-boolean v1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->forceUpdateScaleAndPadding:Z

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_141

    const-string/jumbo v0, "updateSizeAndPadding: rotation: "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v1}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getRotation()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mTempRect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mTaskTopMargin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->mTaskTopMargin:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mInsets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", widthPx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v1

    iget v1, v1, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", heightPx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p0

    iget p0, p0, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    invoke-static {v0, p0, v3, v4}, Lcom/android/launcher/download/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    :cond_141
    return-void
.end method

.method public updateTaskSize(Z)V
    .registers 9

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getTaskViewCount()I

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const/4 v1, 0x0

    if-lez v0, :cond_4b

    const/4 v2, 0x0

    move v3, v2

    :goto_c
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/quickstep/views/RecentsView;->requireTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v1

    const-string v5, "requireTaskViewAt(i)"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/quickstep/views/TaskView;->updateTaskSize()V

    invoke-virtual {v1}, Lcom/android/quickstep/views/TaskView;->getPrimaryNonGridTranslationProperty()Landroid/util/FloatProperty;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    invoke-virtual {v1}, Lcom/android/quickstep/views/TaskView;->getSecondaryNonGridTranslationProperty()Landroid/util/FloatProperty;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v5, v5

    const/4 v6, 0x1

    int-to-float v6, v6

    invoke-virtual {v1}, Lcom/android/quickstep/views/TaskView;->getNonGridScale()F

    move-result v1

    sub-float/2addr v6, v1

    mul-float/2addr v6, v5

    iget-boolean v1, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v1, :cond_44

    goto :goto_45

    :cond_44
    neg-float v6, v6

    :goto_45
    add-float/2addr v3, v6

    if-lt v4, v0, :cond_49

    goto :goto_4b

    :cond_49
    move v1, v4

    goto :goto_c

    :cond_4b
    :goto_4b
    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/RecentsView;->updateGridProperties(Z)V

    return-void
.end method

.method public updateThumbnail(ILcom/android/systemui/shared/recents/model/ThumbnailData;Z)Lcom/android/quickstep/views/TaskView;
    .registers 8

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getTaskViewByTaskId(I)Lcom/android/quickstep/views/TaskView;

    move-result-object p0

    if-nez p0, :cond_7

    goto :goto_48

    :cond_7
    instance-of v0, p0, Lcom/android/quickstep/views/GroupedTaskView;

    if-eqz v0, :cond_3a

    move-object v0, p0

    check-cast v0, Lcom/android/quickstep/views/GroupedTaskView;

    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView;->getTaskIds()[I

    move-result-object v1

    const/4 v2, 0x0

    aget v1, v1, v2

    const/4 v3, 0x1

    if-ne p1, v1, :cond_1d

    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p1

    goto :goto_2d

    :cond_1d
    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView;->getTaskIds()[I

    move-result-object v1

    aget v1, v1, v3

    if-ne p1, v1, :cond_29

    iget-object p1, v0, Lcom/android/quickstep/views/GroupedTaskView;->mSecondaryTask:Lcom/android/systemui/shared/recents/model/Task;

    move v2, v3

    goto :goto_2d

    :cond_29
    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p1

    :goto_2d
    invoke-virtual {v0}, Lcom/android/quickstep/views/GroupedTaskView;->getThumbnails()[Lcom/android/quickstep/views/TaskThumbnailView;

    move-result-object v0

    aget-object v0, v0, v2

    if-nez v0, :cond_36

    goto :goto_48

    :cond_36
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/quickstep/views/TaskThumbnailView;->setThumbnail(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/ThumbnailData;Z)V

    goto :goto_48

    :cond_3a
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getThumbnail()Lcom/android/quickstep/views/TaskThumbnailView;

    move-result-object p1

    if-nez p1, :cond_41

    goto :goto_48

    :cond_41
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    invoke-virtual {p1, v0, p2, p3}, Lcom/android/quickstep/views/TaskThumbnailView;->setThumbnail(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/ThumbnailData;Z)V

    :goto_48
    return-object p0
.end method
