.class public Lcom/android/launcher/guide/GuidePageManager;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher/guide/AbsGuideView$OnGuideFinishCallback;
.implements Lcom/android/launcher/ILauncherLifecycleObserver;
.implements Lcom/android/launcher3/statemanager/StateManager$StateListener;
.implements Lcom/android/launcher/guide/BaseNavGesturesHelper$OnNavigationFinishedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/guide/GuidePageManager$Page;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/launcher/guide/AbsGuideView$OnGuideFinishCallback;",
        "Lcom/android/launcher/ILauncherLifecycleObserver;",
        "Lcom/android/launcher3/statemanager/StateManager$StateListener<",
        "Lcom/android/launcher3/LauncherState;",
        ">;",
        "Lcom/android/launcher/guide/BaseNavGesturesHelper$OnNavigationFinishedListener;"
    }
.end annotation


# static fields
.field private static final BOTTOMSHEET_SHOW:Ljava/lang/Long;

.field private static final DELAY_WITHOUT_ANIMATION:J = 0x32L

.field private static final DURATION_DO_COLLAPSED_ANIM:Ljava/lang/Long;

.field private static final FIRST_PAGE_BULB_ANIM:I = 0x2bc

.field private static final LAUNCHER_SLID_SLIP_ENABLE_STATE:Ljava/lang/String; = "launcher_slid_slip_enable_state"

.field private static final OTHER_PAGE_BULB_ANIM:I = 0x1f4

.field private static final SLIDE_ANIMATION_SHOW_TIME:Ljava/lang/Long;

.field private static final SLIDE_GUIDE_DELAY_TIME:Ljava/lang/Long;

.field private static final SLIDE_SLIP_DISABLE:I = 0x1

.field private static final SLIDE_SLIP_ENABLE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "GuidePageManager"

.field private static final _FLOAT_0:F = 0.0f

.field private static final _FLOAT_0_15:F = 0.15f

.field private static final _FLOAT_1:F = 1.0f

.field private static sIsBracketSpaceRunning:Z


# instance fields
.field private mBottemSheet:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mColorPageIndicator:Lcom/coui/appcompat/indicator/COUIPageIndicator;

.field private mCurrentGuidePage:Lcom/android/launcher/guide/GuidePageManager$Page;

.field private mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

.field private mGuidContent:Landroidx/viewpager2/widget/ViewPager2;

.field private mGuidePagerAdapter:Lcom/android/launcher/guide/GuidePagerAdapter;

.field private mGuideSlideView:Lcom/oplus/anim/EffectiveAnimationView;

.field private mGuideView:Lcom/android/launcher/guide/AbsGuideView;

.field private mGuideViewPanel:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

.field private mHandler:Landroid/os/Handler;

.field private mInited:Z

.field public mIsFirstDrag:Z

.field private mIsFirstEnterTogglebar:Z

.field private mIsOnPause:Z

.field private mIsShowingNavGestures:Z

.field private mLauncherRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/launcher/Launcher;",
            ">;"
        }
    .end annotation
.end field

.field private mNavGesturesHelper:Lcom/android/launcher/guide/BaseNavGesturesHelper;

.field private mNeedShowCardStoreGuide:Z

.field public mNeedShowGestureContentObserver:Landroid/database/ContentObserver;

.field private mNeedShowWidgetMoveGuide:Z

.field private mOnPageChangeCallback:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

.field private mPanelGuideBehavior:Lcom/coui/appcompat/panel/COUIGuideBehavior;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/coui/appcompat/panel/COUIGuideBehavior<",
            "Landroid/widget/FrameLayout;",
            ">;"
        }
    .end annotation
.end field

.field private mSlidGuideTips:Lcom/coui/appcompat/tooltips/COUIToolTips;

.field private mToggleBarSlideGuide:Lcom/android/launcher/guide/ToggleBarSlideGuide;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const-wide/16 v0, 0xd48

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/android/launcher/guide/GuidePageManager;->SLIDE_ANIMATION_SHOW_TIME:Ljava/lang/Long;

    const-wide/16 v0, 0x64

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/android/launcher/guide/GuidePageManager;->SLIDE_GUIDE_DELAY_TIME:Ljava/lang/Long;

    const-wide/16 v0, 0x12c

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/android/launcher/guide/GuidePageManager;->DURATION_DO_COLLAPSED_ANIM:Ljava/lang/Long;

    const-wide/16 v0, 0x136

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/android/launcher/guide/GuidePageManager;->BOTTOMSHEET_SHOW:Ljava/lang/Long;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher/guide/GuidePageManager;->sIsBracketSpaceRunning:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/launcher/guide/GuidePageManager$Page;->NO_GUIDE:Lcom/android/launcher/guide/GuidePageManager$Page;

    iput-object v0, p0, Lcom/android/launcher/guide/GuidePageManager;->mCurrentGuidePage:Lcom/android/launcher/guide/GuidePageManager$Page;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher/guide/GuidePageManager;->mIsOnPause:Z

    new-instance v1, Lcom/android/launcher/guide/GuidePageManager$1;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/launcher/guide/GuidePageManager$1;-><init>(Lcom/android/launcher/guide/GuidePageManager;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/launcher/guide/GuidePageManager;->mNeedShowGestureContentObserver:Landroid/database/ContentObserver;

    invoke-static {p1}, Lcom/android/launcher/guide/GuidePrefUtils;->getShowMultiFingerOperationGuide(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/launcher/guide/GuidePageManager;->mIsFirstDrag:Z

    invoke-static {p1}, Lcom/android/launcher/guide/GuidePrefUtils;->getShowBatchProcessIconsGuide(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/launcher/guide/GuidePageManager;->mIsFirstEnterTogglebar:Z

    new-instance v1, Lcom/android/launcher/guide/ToggleBarSlideGuide;

    invoke-direct {v1, p1}, Lcom/android/launcher/guide/ToggleBarSlideGuide;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/launcher/guide/GuidePageManager;->mToggleBarSlideGuide:Lcom/android/launcher/guide/ToggleBarSlideGuide;

    invoke-static {p1}, Lcom/android/launcher/guide/GuidePrefUtils;->needShowCardStoreGuide(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3c

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportCard()Z

    move-result v1

    if-eqz v1, :cond_3c

    sget-boolean v1, Lcom/android/common/config/FeatureOption;->isSupportCardAndWidgetCombine:Z

    if-nez v1, :cond_3c

    move v1, v2

    goto :goto_3d

    :cond_3c
    move v1, v0

    :goto_3d
    iput-boolean v1, p0, Lcom/android/launcher/guide/GuidePageManager;->mNeedShowCardStoreGuide:Z

    invoke-static {p1}, Lcom/android/launcher/guide/GuidePrefUtils;->needShowWidgetMoveGuide(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_5a

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportCard()Z

    move-result p1

    if-eqz p1, :cond_5a

    sget-boolean p1, Lcom/android/common/config/FeatureOption;->isSupportCardAndWidgetCombine:Z

    if-eqz p1, :cond_5a

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher/mode/LauncherModeManager;->shouldShowToolTips()Z

    move-result p1

    if-eqz p1, :cond_5a

    move v0, v2

    :cond_5a
    iput-boolean v0, p0, Lcom/android/launcher/guide/GuidePageManager;->mNeedShowWidgetMoveGuide:Z

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;Z)Ljava/lang/Boolean;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/guide/GuidePageManager;->lambda$setSlideSlipSettings$0(Landroid/content/Context;Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$000(Lcom/android/launcher/guide/GuidePageManager;)Lcom/android/launcher/Launcher;
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/guide/GuidePageManager;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/launcher/guide/GuidePageManager;)Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/guide/GuidePageManager;->mGuideViewPanel:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    return-object p0
.end method

.method public static synthetic access$1000(Lcom/android/launcher/guide/GuidePageManager;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/guide/GuidePageManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic access$1002(Lcom/android/launcher/guide/GuidePageManager;Landroid/os/Handler;)Landroid/os/Handler;
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/guide/GuidePageManager;->mHandler:Landroid/os/Handler;

    return-object p1
.end method

.method public static synthetic access$200(Lcom/android/launcher/guide/GuidePageManager;)Lcom/android/launcher3/dragndrop/DragLayer;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/guide/GuidePageManager;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/launcher/guide/GuidePageManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/guide/GuidePageManager;->changeSettings()V

    return-void
.end method

.method public static synthetic access$400(Lcom/android/launcher/guide/GuidePageManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/guide/GuidePageManager;->release()V

    return-void
.end method

.method public static synthetic access$502(Lcom/android/launcher/guide/GuidePageManager;Lcom/android/launcher/guide/GuidePageManager$Page;)Lcom/android/launcher/guide/GuidePageManager$Page;
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/guide/GuidePageManager;->mCurrentGuidePage:Lcom/android/launcher/guide/GuidePageManager$Page;

    return-object p1
.end method

.method public static synthetic access$600(Lcom/android/launcher/guide/GuidePageManager;)Lcom/coui/appcompat/indicator/COUIPageIndicator;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/guide/GuidePageManager;->mColorPageIndicator:Lcom/coui/appcompat/indicator/COUIPageIndicator;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/android/launcher/guide/GuidePageManager;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/guide/GuidePageManager;->setGuidContentHeight(I)V

    return-void
.end method

.method public static synthetic access$800(Lcom/android/launcher/guide/GuidePageManager;)Lcom/android/launcher/guide/GuidePagerAdapter;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/guide/GuidePageManager;->mGuidePagerAdapter:Lcom/android/launcher/guide/GuidePagerAdapter;

    return-object p0
.end method

.method public static synthetic access$900(Lcom/android/launcher/guide/GuidePageManager;)Lcom/coui/appcompat/panel/COUIGuideBehavior;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/guide/GuidePageManager;->mPanelGuideBehavior:Lcom/coui/appcompat/panel/COUIGuideBehavior;

    return-object p0
.end method

.method public static synthetic b(Lcom/android/launcher/guide/GuidePageManager;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/guide/GuidePageManager;->lambda$showGuidePage$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/launcher/guide/GuidePageManager;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/guide/GuidePageManager;->lambda$setColorGuidePagerCall$2(I)V

    return-void
.end method

.method private changeSettings()V
    .registers 5

    invoke-direct {p0}, Lcom/android/launcher/guide/GuidePageManager;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    const-string v1, "mIsOnPause"

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/launcher/guide/GuidePageManager;->mIsOnPause:Z

    const-string v3, "GuidePageManager"

    invoke-static {v1, v2, v3}, Lcom/android/common/config/b;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher/guide/GuidePageManager;->mCurrentGuidePage:Lcom/android/launcher/guide/GuidePageManager$Page;

    sget-object v2, Lcom/android/launcher/guide/GuidePageManager$Page;->MULTI_FINGER:Lcom/android/launcher/guide/GuidePageManager$Page;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1d

    invoke-static {v0, v3}, Lcom/android/launcher/guide/GuidePrefUtils;->setShowMultiFingerOperationGuide(Landroid/content/Context;Z)V

    iput-boolean v3, p0, Lcom/android/launcher/guide/GuidePageManager;->mIsFirstDrag:Z

    :cond_1d
    iget-object v1, p0, Lcom/android/launcher/guide/GuidePageManager;->mCurrentGuidePage:Lcom/android/launcher/guide/GuidePageManager$Page;

    sget-object v2, Lcom/android/launcher/guide/GuidePageManager$Page;->ENTER_TOGGLE_BAR:Lcom/android/launcher/guide/GuidePageManager$Page;

    if-ne v1, v2, :cond_28

    invoke-static {v0, v3}, Lcom/android/launcher/guide/GuidePrefUtils;->setShowBatchProcessIconsGuide(Landroid/content/Context;Z)V

    iput-boolean v3, p0, Lcom/android/launcher/guide/GuidePageManager;->mIsFirstEnterTogglebar:Z

    :cond_28
    if-eqz v0, :cond_3b

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-static {v0}, Lcom/android/launcher3/folder/Folder;->getOpen(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/folder/Folder;

    move-result-object v1

    if-nez v1, :cond_3b

    invoke-static {v0, v3}, Lcom/android/launcher/guide/GuidePageManager;->setSlideSlipSettings(Landroid/content/Context;Z)V

    :cond_3b
    sget-object v0, Lcom/android/launcher/guide/GuidePageManager$Page;->NO_GUIDE:Lcom/android/launcher/guide/GuidePageManager$Page;

    iput-object v0, p0, Lcom/android/launcher/guide/GuidePageManager;->mCurrentGuidePage:Lcom/android/launcher/guide/GuidePageManager$Page;

    return-void
.end method

.method private checkInitState()V
    .registers 2

    iget-boolean p0, p0, Lcom/android/launcher/guide/GuidePageManager;->mInited:Z

    if-nez p0, :cond_b

    const-string p0, "GuidePageManager"

    const-string v0, "The guidepage manager has not been inited yet!"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    return-void
.end method

.method public static synthetic d(Lcom/android/launcher/guide/GuidePageManager;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/guide/GuidePageManager;->lambda$setGuidContentHeight$3(Landroid/view/View;)V

    return-void
.end method

.method private doCollapsedAnim()V
    .registers 6

    iget-object v0, p0, Lcom/android/launcher/guide/GuidePageManager;->mBottemSheet:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/launcher/guide/GuidePageManager;->mGuideViewPanel:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/launcher/guide/GuidePageManager;->mPanelGuideBehavior:Lcom/coui/appcompat/panel/COUIGuideBehavior;

    if-nez v0, :cond_f

    goto :goto_11

    :cond_f
    move v0, v1

    goto :goto_12

    :cond_11
    :goto_11
    move v0, v2

    :goto_12
    if-eqz v0, :cond_15

    return-void

    :cond_15
    const/4 v0, 0x2

    new-array v0, v0, [I

    aput v1, v0, v1

    iget-object v1, p0, Lcom/android/launcher/guide/GuidePageManager;->mGuideViewPanel:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-static {v1}, Lcom/android/launcher/guide/GuidePrefUtils;->getDisplayViewSize(Landroid/view/View;)[I

    move-result-object v1

    aget v1, v1, v2

    aput v1, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/launcher/guide/GuidePageManager;->DURATION_DO_COLLAPSED_ANIM:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3e19999a  # 0.15f

    const/high16 v3, 0x3f800000  # 1.0f

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/android/launcher/guide/GuidePageManager$5;

    invoke-direct {v1, p0}, Lcom/android/launcher/guide/GuidePageManager$5;-><init>(Lcom/android/launcher/guide/GuidePageManager;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iget-object v0, p0, Lcom/android/launcher/guide/GuidePageManager;->mBottemSheet:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v1, Lcom/android/launcher/guide/b;

    invoke-direct {v1, p0}, Lcom/android/launcher/guide/b;-><init>(Lcom/android/launcher/guide/GuidePageManager;)V

    sget-object p0, Lcom/android/launcher/guide/GuidePageManager;->BOTTOMSHEET_SHOW:Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static synthetic e(Lcom/android/launcher/guide/GuidePageManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/guide/GuidePageManager;->lambda$doCollapsedAnim$4()V

    return-void
.end method

.method private getLauncher()Lcom/android/launcher/Launcher;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/guide/GuidePageManager;->mLauncherRef:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_b

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher/Launcher;

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return-object p0
.end method

.method private initView(Lcom/android/launcher/guide/GuidePageManager$Page;)V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher/guide/GuidePageManager;->mGuidContent:Landroidx/viewpager2/widget/ViewPager2;

    invoke-static {v0}, Lcom/android/launcher/guide/GuidePrefUtils;->removeOverScrollShade(Landroid/view/ViewGroup;)V

    iget-object v0, p0, Lcom/android/launcher/guide/GuidePageManager;->mGuidContent:Landroidx/viewpager2/widget/ViewPager2;

    iget-object v1, p0, Lcom/android/launcher/guide/GuidePageManager;->mGuidePagerAdapter:Lcom/android/launcher/guide/GuidePagerAdapter;

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/android/launcher/guide/GuidePageManager;->mGuidePagerAdapter:Lcom/android/launcher/guide/GuidePagerAdapter;

    invoke-virtual {v0}, Lcom/android/launcher/guide/GuidePagerAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_21

    iget-object v0, p0, Lcom/android/launcher/guide/GuidePageManager;->mColorPageIndicator:Lcom/coui/appcompat/indicator/COUIPageIndicator;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->setDotsCount(I)V

    iget-object v0, p0, Lcom/android/launcher/guide/GuidePageManager;->mColorPageIndicator:Lcom/coui/appcompat/indicator/COUIPageIndicator;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_2c

    :cond_21
    iget-object v0, p0, Lcom/android/launcher/guide/GuidePageManager;->mColorPageIndicator:Lcom/coui/appcompat/indicator/COUIPageIndicator;

    iget-object v2, p0, Lcom/android/launcher/guide/GuidePageManager;->mGuidePagerAdapter:Lcom/android/launcher/guide/GuidePagerAdapter;

    invoke-virtual {v2}, Lcom/android/launcher/guide/GuidePagerAdapter;->getItemCount()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->setDotsCount(I)V

    :goto_2c
    const-string v0, "GuidePageManager"

    const-string v2, "dragLayer.addView(mGuidViewPanel)"

    invoke-static {v0, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher/guide/GuidePageManager;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    iget-object v2, p0, Lcom/android/launcher/guide/GuidePageManager;->mGuideViewPanel:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/android/launcher/guide/GuidePageManager;->setColorGuidePagerCall()V

    iget-object v0, p0, Lcom/android/launcher/guide/GuidePageManager;->mPanelGuideBehavior:Lcom/coui/appcompat/panel/COUIGuideBehavior;

    if-eqz v0, :cond_53

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/panel/COUIGuideBehavior;->setHideable(Z)V

    iget-object v0, p0, Lcom/android/launcher/guide/GuidePageManager;->mPanelGuideBehavior:Lcom/coui/appcompat/panel/COUIGuideBehavior;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/panel/COUIGuideBehavior;->setSkipCollapsed(Z)V

    iget-object v0, p0, Lcom/android/launcher/guide/GuidePageManager;->mPanelGuideBehavior:Lcom/coui/appcompat/panel/COUIGuideBehavior;

    new-instance v1, Lcom/android/launcher/guide/GuidePageManager$3;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher/guide/GuidePageManager$3;-><init>(Lcom/android/launcher/guide/GuidePageManager;Lcom/android/launcher/guide/GuidePageManager$Page;)V

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/panel/COUIGuideBehavior;->addBottomSheetCallback(Lcom/coui/appcompat/panel/COUIGuideBehavior$COUIBottomSheetCallback;)V

    :cond_53
    invoke-direct {p0}, Lcom/android/launcher/guide/GuidePageManager;->doCollapsedAnim()V

    return-void
.end method

.method private initViewId(Lcom/android/launcher3/Launcher;)V
    .registers 7

    iget-object v0, p0, Lcom/android/launcher/guide/GuidePageManager;->mGuideViewPanel:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    const v1, 0x7f0a0277

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/launcher/guide/GuidePageManager;->mGuideViewPanel:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    const v2, 0x7f0a00d9

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v1, p0, Lcom/android/launcher/guide/GuidePageManager;->mBottemSheet:Landroidx/constraintlayout/widget/ConstraintLayout;

    sget-boolean v2, Lcom/android/common/config/ScreenInfo;->hasNavigationBar:Z

    if-eqz v2, :cond_33

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    iget-object v3, p0, Lcom/android/launcher/guide/GuidePageManager;->mBottemSheet:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    iget-object v4, p0, Lcom/android/launcher/guide/GuidePageManager;->mBottemSheet:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v4

    invoke-static {p1}, Lcom/android/common/config/ScreenInfo;->getNavBarHeightByWindowInsets(Landroid/content/Context;)I

    move-result p1

    invoke-virtual {v1, v2, v3, v4, p1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    :cond_33
    iget-object p1, p0, Lcom/android/launcher/guide/GuidePageManager;->mGuideViewPanel:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    const v1, 0x7f0a0275

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/viewpager2/widget/ViewPager2;

    iput-object p1, p0, Lcom/android/launcher/guide/GuidePageManager;->mGuidContent:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setFocusable(Z)V

    iget-object p1, p0, Lcom/android/launcher/guide/GuidePageManager;->mGuideViewPanel:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    const v1, 0x7f0a0276

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/coui/appcompat/indicator/COUIPageIndicator;

    iput-object p1, p0, Lcom/android/launcher/guide/GuidePageManager;->mColorPageIndicator:Lcom/coui/appcompat/indicator/COUIPageIndicator;

    invoke-static {v0}, Lcom/coui/appcompat/panel/COUIGuideBehavior;->from(Landroid/view/View;)Lcom/coui/appcompat/panel/COUIGuideBehavior;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher/guide/GuidePageManager;->mPanelGuideBehavior:Lcom/coui/appcompat/panel/COUIGuideBehavior;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/panel/COUIGuideBehavior;->setState(I)V

    invoke-direct {p0}, Lcom/android/launcher/guide/GuidePageManager;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getRootView()Lcom/android/launcher3/LauncherRootView;

    move-result-object p0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setSystemGestureExclusionRects(Ljava/util/List;)V

    return-void
.end method

.method private synthetic lambda$doCollapsedAnim$4()V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/guide/GuidePageManager;->mBottemSheet:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz p0, :cond_8

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_8
    return-void
.end method

.method private synthetic lambda$setColorGuidePagerCall$2(I)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/guide/GuidePageManager;->mGuidContent:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p0, p1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(I)V

    return-void
.end method

.method private synthetic lambda$setGuidContentHeight$3(Landroid/view/View;)V
    .registers 5

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    const/high16 v1, 0x40000000  # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    iget-object v0, p0, Lcom/android/launcher/guide/GuidePageManager;->mGuidContent:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    if-eq v1, v2, :cond_49

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p0, p0, Lcom/android/launcher/guide/GuidePageManager;->mGuidContent:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mGuidContent lp "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " view "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GuidePageManager"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_49
    return-void
.end method

.method private static synthetic lambda$setSlideSlipSettings$0(Landroid/content/Context;Z)Ljava/lang/Boolean;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    xor-int/lit8 p1, p1, 0x1

    const-string v0, "launcher_slid_slip_enable_state"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$showGuidePage$1(Landroid/view/View;)V
    .registers 2

    const-string/jumbo p1, "other_case"

    invoke-virtual {p0, p1}, Lcom/android/launcher/guide/GuidePageManager;->forceHideGuidePage(Ljava/lang/String;)Z

    return-void
.end method

.method private release()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/guide/GuidePageManager;->mGuidContent:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v0, :cond_b

    iget-object v1, p0, Lcom/android/launcher/guide/GuidePageManager;->mOnPageChangeCallback:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    if-eqz v1, :cond_b

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->unregisterOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    :cond_b
    iget-object v0, p0, Lcom/android/launcher/guide/GuidePageManager;->mSlidGuideTips:Lcom/coui/appcompat/tooltips/COUIToolTips;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Lcom/android/launcher/guide/GuidePageManager;->hideSlidGuide()V

    :cond_18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher/guide/GuidePageManager;->mBottemSheet:Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/android/launcher/guide/GuidePageManager;->mGuidContent:Landroidx/viewpager2/widget/ViewPager2;

    iput-object v0, p0, Lcom/android/launcher/guide/GuidePageManager;->mColorPageIndicator:Lcom/coui/appcompat/indicator/COUIPageIndicator;

    iput-object v0, p0, Lcom/android/launcher/guide/GuidePageManager;->mPanelGuideBehavior:Lcom/coui/appcompat/panel/COUIGuideBehavior;

    iput-object v0, p0, Lcom/android/launcher/guide/GuidePageManager;->mGuidePagerAdapter:Lcom/android/launcher/guide/GuidePagerAdapter;

    iput-object v0, p0, Lcom/android/launcher/guide/GuidePageManager;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    iput-object v0, p0, Lcom/android/launcher/guide/GuidePageManager;->mGuideViewPanel:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    const-string p0, "GuidePageManager"

    const-string/jumbo v0, "release"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setColorGuidePagerCall()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/guide/GuidePageManager;->mColorPageIndicator:Lcom/coui/appcompat/indicator/COUIPageIndicator;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/launcher/guide/GuidePageManager;->mGuidContent:Landroidx/viewpager2/widget/ViewPager2;

    if-nez v0, :cond_9

    goto :goto_1f

    :cond_9
    new-instance v0, Lcom/android/launcher/guide/GuidePageManager$4;

    invoke-direct {v0, p0}, Lcom/android/launcher/guide/GuidePageManager$4;-><init>(Lcom/android/launcher/guide/GuidePageManager;)V

    iput-object v0, p0, Lcom/android/launcher/guide/GuidePageManager;->mOnPageChangeCallback:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    iget-object v1, p0, Lcom/android/launcher/guide/GuidePageManager;->mGuidContent:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v1, v0}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    iget-object v0, p0, Lcom/android/launcher/guide/GuidePageManager;->mColorPageIndicator:Lcom/coui/appcompat/indicator/COUIPageIndicator;

    new-instance v1, Landroidx/core/view/a;

    invoke-direct {v1, p0}, Landroidx/core/view/a;-><init>(Lcom/android/launcher/guide/GuidePageManager;)V

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->setOnDotClickListener(Lcom/coui/appcompat/indicator/COUIPageIndicator$OnIndicatorDotClickListener;)V

    :cond_1f
    :goto_1f
    return-void
.end method

.method private setGuidContentHeight(I)V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher/guide/GuidePageManager;->mGuidePagerAdapter:Lcom/android/launcher/guide/GuidePagerAdapter;

    const-string v1, "GuidePageManager"

    if-nez v0, :cond_c

    const-string p0, "mGuidePagerAdapter == null,return"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_c
    invoke-virtual {v0}, Lcom/android/launcher/guide/GuidePagerAdapter;->getItemCount()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_4d

    iget-object v0, p0, Lcom/android/launcher/guide/GuidePageManager;->mGuidePagerAdapter:Lcom/android/launcher/guide/GuidePagerAdapter;

    invoke-virtual {v0}, Lcom/android/launcher/guide/GuidePagerAdapter;->getGuidImageView()[Lcom/oplus/anim/EffectiveAnimationView;

    move-result-object v0

    aget-object v0, v0, p1

    if-nez v0, :cond_37

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mGuidePagerAdapter.getGuidImageView()["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "] == null,return"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_37
    iget-object v0, p0, Lcom/android/launcher/guide/GuidePageManager;->mGuidePagerAdapter:Lcom/android/launcher/guide/GuidePagerAdapter;

    invoke-virtual {v0}, Lcom/android/launcher/guide/GuidePagerAdapter;->getGuidImageView()[Lcom/oplus/anim/EffectiveAnimationView;

    move-result-object v0

    aget-object p1, v0, p1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    new-instance v0, Lcom/android/launcher/guide/c;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher/guide/c;-><init>(Lcom/android/launcher/guide/GuidePageManager;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_4d
    return-void
.end method

.method public static setSlideSlipSettings(Landroid/content/Context;Z)V
    .registers 5

    invoke-static {}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideHelper;->isSideGesturesRunning()Z

    move-result v0

    const-string v1, "GuidePageManager"

    if-eqz v0, :cond_f

    const-string/jumbo p0, "setSlideSlipSettings, gestures guide is running..."

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_f
    invoke-static {p0}, Lcom/android/launcher3/util/DisplayController;->getNavigationMode(Landroid/content/Context;)Lcom/android/launcher3/util/DisplayController$NavigationMode;

    move-result-object v0

    sget-object v2, Lcom/android/launcher3/util/DisplayController$NavigationMode;->THREE_BUTTONS:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    if-ne v0, v2, :cond_1e

    const-string/jumbo p0, "setSlideSlipSettings, ignore change state, because of the nav mode is not gesture"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1e
    sget-boolean v0, Lcom/android/launcher/guide/GuidePageManager;->sIsBracketSpaceRunning:Z

    if-eqz v0, :cond_29

    const-string/jumbo p0, "setSlideSlipSettings, ignore change state, because of the bracket space is running"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_29
    const-string/jumbo v0, "setBackGesture enabled : "

    invoke-static {v0, p1, v1}, Lcom/android/common/rus/a;->a(Ljava/lang/String;ZLjava/lang/String;)V

    sget-object v0, Lcom/oplus/util/OplusExecutors;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/launcher/guide/d;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher/guide/d;-><init>(Landroid/content/Context;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private showInState(Lcom/android/launcher3/LauncherState;)Z
    .registers 2

    sget-object p0, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    if-ne p1, p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method private unRegisterNeedShowGestureListener(Lcom/android/launcher/Launcher;)V
    .registers 4

    if-eqz p1, :cond_13

    const-string v0, "GuidePageManager"

    const-string/jumbo v1, "unRegisterNeedShowGestureListener"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher/guide/GuidePageManager;->mNeedShowGestureContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_13
    return-void
.end method


# virtual methods
.method public forceHideGuidePage(Ljava/lang/String;)Z
    .registers 9

    invoke-direct {p0}, Lcom/android/launcher/guide/GuidePageManager;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/launcher/guide/GuidePageManager;->changeSettings()V

    const-string/jumbo v1, "on_pause"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "GuidePageManager"

    if-nez v2, :cond_20

    const-string v2, "!interruptType.equals(AbsGuideView.INTERRUPT_BY_ON_PAUSE)"

    invoke-static {v3, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/launcher/guide/GuidePageManager;->mPanelGuideBehavior:Lcom/coui/appcompat/panel/COUIGuideBehavior;

    if-eqz v2, :cond_33

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/coui/appcompat/panel/COUIGuideBehavior;->setState(I)V

    goto :goto_33

    :cond_20
    const-string v2, "AbsGuideView.INTERRUPT_BY_ON_PAUSE"

    invoke-static {v3, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/launcher/guide/GuidePageManager;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    iget-object v3, p0, Lcom/android/launcher/guide/GuidePageManager;->mGuideViewPanel:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    sget-object v2, Lcom/android/launcher/guide/GuidePageManager$Page;->NO_GUIDE:Lcom/android/launcher/guide/GuidePageManager$Page;

    iput-object v2, p0, Lcom/android/launcher/guide/GuidePageManager;->mCurrentGuidePage:Lcom/android/launcher/guide/GuidePageManager$Page;

    invoke-static {v0}, Lcom/android/launcher/guide/GuidePrefUtils;->changeNavigationColor(Lcom/android/launcher/Launcher;)V

    :cond_33
    :goto_33
    invoke-direct {p0}, Lcom/android/launcher/guide/GuidePageManager;->checkInitState()V

    iget-object v2, p0, Lcom/android/launcher/guide/GuidePageManager;->mGuidePagerAdapter:Lcom/android/launcher/guide/GuidePagerAdapter;

    const/4 v3, 0x0

    if-eqz v2, :cond_4d

    invoke-virtual {v2}, Lcom/android/launcher/guide/GuidePagerAdapter;->getGuidImageView()[Lcom/oplus/anim/EffectiveAnimationView;

    move-result-object v2

    array-length v4, v2

    move v5, v3

    :goto_41
    if-ge v5, v4, :cond_4d

    aget-object v6, v2, v5

    if-eqz v6, :cond_4a

    invoke-virtual {v6}, Lcom/oplus/anim/EffectiveAnimationView;->cancelAnimation()V

    :cond_4a
    add-int/lit8 v5, v5, 0x1

    goto :goto_41

    :cond_4d
    iput-boolean v3, p0, Lcom/android/launcher/guide/GuidePageManager;->mIsOnPause:Z

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher/togglebar/ToggleBarManager;->getTopState()Lcom/android/launcher/togglebar/state/ToggleBarBaseState;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher/togglebar/state/ToggleBarMainState;

    if-eqz v2, :cond_66

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/togglebar/ToggleBarManager;->getToggleBarView()Lcom/android/launcher/togglebar/ToggleBarRootView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_66
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6f

    invoke-direct {p0}, Lcom/android/launcher/guide/GuidePageManager;->release()V

    :cond_6f
    iget-object p1, p0, Lcom/android/launcher/guide/GuidePageManager;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_79

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/launcher/guide/GuidePageManager;->mHandler:Landroid/os/Handler;

    :cond_79
    const/4 p0, 0x1

    return p0
.end method

.method public hideCardStoreTip(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/launcher/guide/GuidePrefUtils;->setCardStoreGuide(Landroid/content/Context;Z)V

    iput-boolean v0, p0, Lcom/android/launcher/guide/GuidePageManager;->mNeedShowCardStoreGuide:Z

    return-void
.end method

.method public hideGuidePage(Ljava/lang/String;)Z
    .registers 4

    const-string v0, " hideGuidePage,interruptType"

    const-string v1, ", mCurrentGuidePage = "

    invoke-static {v0, p1, v1}, Landroidx/activity/result/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher/guide/GuidePageManager;->mCurrentGuidePage:Lcom/android/launcher/guide/GuidePageManager$Page;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GuidePageManager"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher/guide/GuidePageManager;->isGuideShowing()Z

    move-result v0

    if-nez v0, :cond_1e

    const/4 p0, 0x0

    return p0

    :cond_1e
    invoke-virtual {p0, p1}, Lcom/android/launcher/guide/GuidePageManager;->forceHideGuidePage(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public hideSlidGuide()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/guide/GuidePageManager;->mToggleBarSlideGuide:Lcom/android/launcher/guide/ToggleBarSlideGuide;

    invoke-virtual {p0}, Lcom/android/launcher/guide/ToggleBarSlideGuide;->hide()V

    return-void
.end method

.method public hideWidgetMoveTip(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/launcher/guide/GuidePrefUtils;->setWidgetMoveGuide(Landroid/content/Context;Z)V

    iput-boolean v0, p0, Lcom/android/launcher/guide/GuidePageManager;->mNeedShowWidgetMoveGuide:Z

    return-void
.end method

.method public init(Lcom/android/launcher/Launcher;)Lcom/android/launcher/guide/GuidePageManager;
    .registers 4

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/launcher/guide/GuidePageManager;->mLauncherRef:Ljava/lang/ref/WeakReference;

    iget-object p1, p0, Lcom/android/launcher/guide/GuidePageManager;->mToggleBarSlideGuide:Lcom/android/launcher/guide/ToggleBarSlideGuide;

    invoke-virtual {p1, v0}, Lcom/android/launcher/guide/ToggleBarSlideGuide;->setLauncherRef(Ljava/lang/ref/WeakReference;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher/guide/GuidePageManager;->mInited:Z

    const-string p1, "GuidePageManager: init mIsFirstEnterTogglebar: "

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean v0, p0, Lcom/android/launcher/guide/GuidePageManager;->mIsFirstEnterTogglebar:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mIsFirstDrag: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/launcher/guide/GuidePageManager;->mIsFirstDrag:Z

    const-string v1, "GuidePageManager"

    invoke-static {p1, v0, v1}, Lcom/android/common/config/b;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    return-object p0
.end method

.method public isGuideShowing()Z
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/guide/GuidePageManager;->mCurrentGuidePage:Lcom/android/launcher/guide/GuidePageManager$Page;

    sget-object v0, Lcom/android/launcher/guide/GuidePageManager$Page;->NO_GUIDE:Lcom/android/launcher/guide/GuidePageManager$Page;

    if-eq p0, v0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public isOnPause()Z
    .registers 3

    iget-boolean v0, p0, Lcom/android/launcher/guide/GuidePageManager;->mIsOnPause:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    iput-boolean v1, p0, Lcom/android/launcher/guide/GuidePageManager;->mIsOnPause:Z

    const/4 p0, 0x1

    return p0

    :cond_9
    return v1
.end method

.method public onBackPressed(Lcom/android/launcher/Launcher;)Z
    .registers 2
    .param p1  # Lcom/android/launcher/Launcher;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string p1, "back_key"

    invoke-virtual {p0, p1}, Lcom/android/launcher/guide/GuidePageManager;->hideGuidePage(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public onCreate(Landroidx/lifecycle/LifecycleOwner;)V
    .registers 3
    .param p1  # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/android/launcher/guide/GuidePageManager;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object p1

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/statemanager/StateManager;->addStateListener(Lcom/android/launcher3/statemanager/StateManager$StateListener;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher/guide/GuidePageManager;->registerNeedShowGestureListener(Lcom/android/launcher/Launcher;)V

    :cond_10
    return-void
.end method

.method public onDestroy(Landroidx/lifecycle/LifecycleOwner;)V
    .registers 4
    .param p1  # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string/jumbo v0, "other_case"

    invoke-virtual {p0, v0}, Lcom/android/launcher/guide/GuidePageManager;->hideGuidePage(Ljava/lang/String;)Z

    check-cast p1, Lcom/android/launcher/Launcher;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onDestroy: Launcher: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GuidePageManager"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher/guide/GuidePageManager;->mNavGesturesHelper:Lcom/android/launcher/guide/BaseNavGesturesHelper;

    if-eqz v0, :cond_26

    invoke-virtual {v0, p1}, Lcom/android/launcher/guide/BaseNavGesturesHelper;->removeGuidePage(Landroid/content/Context;)V

    :cond_26
    invoke-direct {p0, p1}, Lcom/android/launcher/guide/GuidePageManager;->unRegisterNeedShowGestureListener(Lcom/android/launcher/Launcher;)V

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/launcher3/statemanager/StateManager;->removeStateListener(Lcom/android/launcher3/statemanager/StateManager$StateListener;)V

    iget-object p1, p0, Lcom/android/launcher/guide/GuidePageManager;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    if-eqz p1, :cond_45

    iget-object p1, p0, Lcom/android/launcher/guide/GuidePageManager;->mGuideViewPanel:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-eqz p1, :cond_45

    const-string/jumbo p1, "remove  GuideViewPanel"

    invoke-static {v1, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher/guide/GuidePageManager;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    iget-object v0, p0, Lcom/android/launcher/guide/GuidePageManager;->mGuideViewPanel:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_45
    invoke-direct {p0}, Lcom/android/launcher/guide/GuidePageManager;->release()V

    return-void
.end method

.method public onGuideFinished(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Lcom/android/launcher/guide/GuidePageManager;->checkInitState()V

    invoke-direct {p0}, Lcom/android/launcher/guide/GuidePageManager;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object p1

    if-eqz p1, :cond_25

    invoke-static {p1}, Lcom/android/launcher/guide/GuidePrefUtils;->getShowMultiFingerOperationGuide(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher/guide/GuidePageManager;->mIsFirstDrag:Z

    invoke-static {p1}, Lcom/android/launcher/guide/GuidePrefUtils;->getShowBatchProcessIconsGuide(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher/guide/GuidePageManager;->mIsFirstEnterTogglebar:Z

    sget-object v0, Lcom/android/launcher/guide/GuidePageManager$Page;->NO_GUIDE:Lcom/android/launcher/guide/GuidePageManager$Page;

    iput-object v0, p0, Lcom/android/launcher/guide/GuidePageManager;->mCurrentGuidePage:Lcom/android/launcher/guide/GuidePageManager$Page;

    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_25

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/launcher/guide/GuidePageManager;->setSlideSlipSettings(Landroid/content/Context;Z)V

    :cond_25
    iget-object p1, p0, Lcom/android/launcher/guide/GuidePageManager;->mGuideView:Lcom/android/launcher/guide/AbsGuideView;

    if-eqz p1, :cond_2c

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/launcher/guide/GuidePageManager;->mGuideView:Lcom/android/launcher/guide/AbsGuideView;

    :cond_2c
    return-void
.end method

.method public onHomeKeyPressed(Lcom/android/launcher/Launcher;)V
    .registers 3
    .param p1  # Lcom/android/launcher/Launcher;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string p1, "GuidePageManager"

    const-string/jumbo v0, "onHomeKeyPressed!"

    invoke-static {p1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "home_key"

    invoke-virtual {p0, p1}, Lcom/android/launcher/guide/GuidePageManager;->hideGuidePage(Ljava/lang/String;)Z

    return-void
.end method

.method public onNavGuideFinished(Lcom/android/launcher/guide/BaseNavGesturesHelper;)V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher/guide/GuidePageManager;->mIsShowingNavGestures:Z

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/launcher/guide/BaseNavGesturesHelper;->setOnNavGuideFinishedListener(Lcom/android/launcher/guide/BaseNavGesturesHelper$OnNavigationFinishedListener;)V

    invoke-virtual {p0}, Lcom/android/launcher/guide/GuidePageManager;->showAppGuideViewIfNeeded()V

    return-void
.end method

.method public onOverlayHidden()V
    .registers 2

    iget-boolean v0, p0, Lcom/android/launcher/guide/GuidePageManager;->mNeedShowWidgetMoveGuide:Z

    if-eqz v0, :cond_1f

    invoke-direct {p0}, Lcom/android/launcher/guide/GuidePageManager;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object p0

    if-eqz p0, :cond_4e

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/togglebar/ToggleBarManager;->getTopState()Lcom/android/launcher/togglebar/state/ToggleBarBaseState;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher/togglebar/state/ToggleBarMainState;

    if-eqz v0, :cond_4e

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher/togglebar/ToggleBarManager;->showOrDismissMainUIControllerToolTips(Z)V

    goto :goto_4e

    :cond_1f
    iget-boolean v0, p0, Lcom/android/launcher/guide/GuidePageManager;->mNeedShowCardStoreGuide:Z

    if-eqz v0, :cond_41

    invoke-direct {p0}, Lcom/android/launcher/guide/GuidePageManager;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object p0

    if-eqz p0, :cond_4e

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/togglebar/ToggleBarManager;->getTopState()Lcom/android/launcher/togglebar/state/ToggleBarBaseState;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher/togglebar/state/ToggleBarMainState;

    if-eqz v0, :cond_4e

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/togglebar/ToggleBarManager;->getToggleToolbar()Lcom/android/launcher/togglebar/views/ToggleStateToolbar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->showToolTip()V

    goto :goto_4e

    :cond_41
    iget-object v0, p0, Lcom/android/launcher/guide/GuidePageManager;->mToggleBarSlideGuide:Lcom/android/launcher/guide/ToggleBarSlideGuide;

    invoke-virtual {v0}, Lcom/android/launcher/guide/ToggleBarSlideGuide;->isShowing()Z

    move-result v0

    if-nez v0, :cond_4e

    iget-object p0, p0, Lcom/android/launcher/guide/GuidePageManager;->mToggleBarSlideGuide:Lcom/android/launcher/guide/ToggleBarSlideGuide;

    invoke-virtual {p0}, Lcom/android/launcher/guide/ToggleBarSlideGuide;->needShow()Z

    :cond_4e
    :goto_4e
    return-void
.end method

.method public onPause(Landroidx/lifecycle/LifecycleOwner;)V
    .registers 3
    .param p1  # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string p1, "GuidePageManager"

    const-string/jumbo v0, "onPause!"

    invoke-static {p1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher/guide/GuidePageManager;->isGuideShowing()Z

    move-result p1

    if-nez p1, :cond_11

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher/guide/GuidePageManager;->mIsOnPause:Z

    :cond_11
    iget-object p0, p0, Lcom/android/launcher/guide/GuidePageManager;->mNavGesturesHelper:Lcom/android/launcher/guide/BaseNavGesturesHelper;

    if-eqz p0, :cond_18

    invoke-virtual {p0}, Lcom/android/launcher/guide/BaseNavGesturesHelper;->onPause()V

    :cond_18
    return-void
.end method

.method public onResume(Landroidx/lifecycle/LifecycleOwner;)V
    .registers 3
    .param p1  # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/android/launcher/guide/GuidePageManager;->mNavGesturesHelper:Lcom/android/launcher/guide/BaseNavGesturesHelper;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/android/launcher/guide/BaseNavGesturesHelper;->onResume()V

    :cond_7
    invoke-virtual {p0}, Lcom/android/launcher/guide/GuidePageManager;->isGuideShowing()Z

    move-result p1

    if-eqz p1, :cond_18

    iget-boolean p1, p0, Lcom/android/launcher/guide/GuidePageManager;->mIsOnPause:Z

    if-nez p1, :cond_18

    const-string/jumbo p1, "on_pause"

    invoke-virtual {p0, p1}, Lcom/android/launcher/guide/GuidePageManager;->hideGuidePage(Ljava/lang/String;)Z

    goto :goto_27

    :cond_18
    invoke-virtual {p0}, Lcom/android/launcher/guide/GuidePageManager;->isGuideShowing()Z

    move-result p1

    if-eqz p1, :cond_24

    iget-object p1, p0, Lcom/android/launcher/guide/GuidePageManager;->mPanelGuideBehavior:Lcom/coui/appcompat/panel/COUIGuideBehavior;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/panel/COUIGuideBehavior;->setState(I)V

    :cond_24
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher/guide/GuidePageManager;->mIsOnPause:Z

    :goto_27
    return-void
.end method

.method public onStateTransitionComplete(Lcom/android/launcher3/LauncherState;)V
    .registers 9

    iget-object v0, p0, Lcom/android/launcher/guide/GuidePageManager;->mGuideViewPanel:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_14

    invoke-direct {p0, p1}, Lcom/android/launcher/guide/GuidePageManager;->showInState(Lcom/android/launcher3/LauncherState;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/android/launcher/guide/GuidePageManager;->isGuideShowing()Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_12
    move v0, v1

    goto :goto_15

    :cond_14
    move v0, v2

    :goto_15
    invoke-direct {p0}, Lcom/android/launcher/guide/GuidePageManager;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v3

    if-eqz v3, :cond_6d

    const-string/jumbo v4, "onStateTransitionComplete: LauncherState: "

    invoke-static {v4}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lcom/android/launcher3/LauncherState;->ordinal:I

    const-string v6, "GuidePageManager"

    invoke-static {v4, v5, v6}, Lcom/android/common/config/h;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    sget-object v4, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    if-ne p1, v4, :cond_37

    invoke-static {v3}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenView(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v1

    if-nez v1, :cond_3a

    invoke-static {v3, v2}, Lcom/android/launcher/guide/GuidePageManager;->setSlideSlipSettings(Landroid/content/Context;Z)V

    goto :goto_3a

    :cond_37
    invoke-static {v3, v1}, Lcom/android/launcher/guide/GuidePageManager;->setSlideSlipSettings(Landroid/content/Context;Z)V

    :cond_3a
    :goto_3a
    if-eqz v0, :cond_42

    const-string/jumbo v0, "other_case"

    invoke-virtual {p0, v0}, Lcom/android/launcher/guide/GuidePageManager;->hideGuidePage(Ljava/lang/String;)Z

    :cond_42
    sget-object v0, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    if-ne p1, v0, :cond_6d

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p1

    if-eqz p1, :cond_6d

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/statemanager/StateManager;->getLastColorState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object p1

    if-ne p1, v4, :cond_6d

    invoke-virtual {v3}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object p1

    if-eqz p1, :cond_6d

    invoke-virtual {v3}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher/togglebar/ToggleBarManager;->getTopState()Lcom/android/launcher/togglebar/state/ToggleBarBaseState;

    move-result-object p1

    instance-of p1, p1, Lcom/android/launcher/togglebar/state/ToggleBarMainState;

    if-eqz p1, :cond_6d

    sget-object p1, Lcom/android/launcher/guide/GuidePageManager$Page;->ENTER_TOGGLE_BAR:Lcom/android/launcher/guide/GuidePageManager$Page;

    invoke-virtual {p0, v3, p1}, Lcom/android/launcher/guide/GuidePageManager;->showGuidePage(Lcom/android/launcher3/Launcher;Lcom/android/launcher/guide/GuidePageManager$Page;)V

    :cond_6d
    invoke-virtual {p0}, Lcom/android/launcher/guide/GuidePageManager;->hideSlidGuide()V

    return-void
.end method

.method public bridge synthetic onStateTransitionComplete(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1}, Lcom/android/launcher/guide/GuidePageManager;->onStateTransitionComplete(Lcom/android/launcher3/LauncherState;)V

    return-void
.end method

.method public onStateTransitionStart(Lcom/android/launcher3/LauncherState;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onStateTransitionStart, toState"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GuidePageManager"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher/guide/GuidePageManager;->hideSlidGuide()V

    iget-object v0, p0, Lcom/android/launcher/guide/GuidePageManager;->mGuideViewPanel:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-eqz v0, :cond_2c

    invoke-direct {p0, p1}, Lcom/android/launcher/guide/GuidePageManager;->showInState(Lcom/android/launcher3/LauncherState;)Z

    move-result p1

    if-eqz p1, :cond_2a

    invoke-virtual {p0}, Lcom/android/launcher/guide/GuidePageManager;->isGuideShowing()Z

    move-result p1

    if-eqz p1, :cond_2c

    :cond_2a
    const/4 p1, 0x1

    goto :goto_2d

    :cond_2c
    const/4 p1, 0x0

    :goto_2d
    if-eqz p1, :cond_35

    const-string/jumbo p1, "other_case"

    invoke-virtual {p0, p1}, Lcom/android/launcher/guide/GuidePageManager;->hideGuidePage(Ljava/lang/String;)Z

    :cond_35
    return-void
.end method

.method public bridge synthetic onStateTransitionStart(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1}, Lcom/android/launcher/guide/GuidePageManager;->onStateTransitionStart(Lcom/android/launcher3/LauncherState;)V

    return-void
.end method

.method public onStop(Landroidx/lifecycle/LifecycleOwner;)V
    .registers 2
    .param p1  # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string p0, "GuidePageManager"

    const-string/jumbo p1, "onStop"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public registerNeedShowGestureListener(Lcom/android/launcher/Launcher;)V
    .registers 5

    if-eqz p1, :cond_1f

    const-string v0, "GuidePageManager"

    const-string/jumbo v1, "registerNeedShowGestureListener"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "show_navigation_gestures_guide"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x1

    iget-object p0, p0, Lcom/android/launcher/guide/GuidePageManager;->mNeedShowGestureContentObserver:Landroid/database/ContentObserver;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_1f
    return-void
.end method

.method public setBracketSpaceRunning(Z)V
    .registers 4

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setBracketSpaceRunning: running = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TaskView"

    const-string v1, "GuidePageManager"

    invoke-static {v0, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean p1, Lcom/android/launcher/guide/GuidePageManager;->sIsBracketSpaceRunning:Z

    return-void
.end method

.method public showAppGuideViewIfNeeded()V
    .registers 2

    iget-boolean v0, p0, Lcom/android/launcher/guide/GuidePageManager;->mIsShowingNavGestures:Z

    if-nez v0, :cond_f

    invoke-static {}, Lcom/android/launcher/guide/appguide/AppGuideManager;->getInstance()Lcom/android/launcher/guide/appguide/AppGuideManager;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/launcher/guide/GuidePageManager;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/launcher/guide/appguide/AppGuideManager;->showAppGuideView(Lcom/android/launcher/Launcher;)V

    :cond_f
    return-void
.end method

.method public showGestureViewIfNeeded(Lcom/android/launcher/Launcher;)V
    .registers 2

    invoke-static {p1}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideHelper;->showGestureViewIfNeeded(Landroid/content/Context;)V

    return-void
.end method

.method public showGuidePage(Lcom/android/launcher3/Launcher;Lcom/android/launcher/guide/GuidePageManager$Page;)V
    .registers 9

    const-string v0, "GuidePageManager"

    if-nez p1, :cond_b

    const-string/jumbo p0, "showGuidePage: launcher is null!"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_b
    invoke-virtual {p1}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v1

    if-eqz v1, :cond_18

    const-string/jumbo p0, "showGuidePage: in multi mode!"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_18
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->isOverlayShown()Z

    move-result v1

    if-eqz v1, :cond_29

    const-string/jumbo p0, "showGuidePage: Overlay is showing!"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_29
    const v1, 0x7f0a01be

    invoke-virtual {p1, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3c

    instance-of v1, v1, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;

    if-eqz v1, :cond_3c

    const-string p0, "Popup Window is showing!"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3c
    iget-object v1, p0, Lcom/android/launcher/guide/GuidePageManager;->mCurrentGuidePage:Lcom/android/launcher/guide/GuidePageManager$Page;

    if-ne p2, v1, :cond_5b

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "showGuidePage: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is showing already!"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5b
    invoke-static {p1}, Lcom/android/launcher3/folder/Folder;->getOpen(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/folder/Folder;

    move-result-object v1

    if-eqz v1, :cond_67

    const-string p0, "Can\'t show guide page as folder opening"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_67
    sget-object v1, Lcom/android/launcher/guide/GuidePageManager$Page;->ENTER_TOGGLE_BAR:Lcom/android/launcher/guide/GuidePageManager$Page;

    const/4 v2, 0x1

    if-ne p2, v1, :cond_a7

    iget-boolean v1, p0, Lcom/android/launcher/guide/GuidePageManager;->mNeedShowWidgetMoveGuide:Z

    if-eqz v1, :cond_7e

    invoke-direct {p0}, Lcom/android/launcher/guide/GuidePageManager;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object p0

    if-eqz p0, :cond_7d

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/android/launcher/togglebar/ToggleBarManager;->showOrDismissMainUIControllerToolTips(Z)V

    :cond_7d
    return-void

    :cond_7e
    iget-boolean v1, p0, Lcom/android/launcher/guide/GuidePageManager;->mNeedShowCardStoreGuide:Z

    if-eqz v1, :cond_94

    invoke-direct {p0}, Lcom/android/launcher/guide/GuidePageManager;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object p0

    if-eqz p0, :cond_93

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/togglebar/ToggleBarManager;->getToggleToolbar()Lcom/android/launcher/togglebar/views/ToggleStateToolbar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->showToolTip()V

    :cond_93
    return-void

    :cond_94
    iget-object v1, p0, Lcom/android/launcher/guide/GuidePageManager;->mToggleBarSlideGuide:Lcom/android/launcher/guide/ToggleBarSlideGuide;

    invoke-virtual {v1}, Lcom/android/launcher/guide/ToggleBarSlideGuide;->needShow()Z

    move-result v1

    if-eqz v1, :cond_9d

    return-void

    :cond_9d
    iget-boolean v1, p0, Lcom/android/launcher/guide/GuidePageManager;->mIsFirstEnterTogglebar:Z

    if-nez v1, :cond_c3

    const-string p0, "!mIsFirstEnterTogglebar"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_a7
    sget-object v1, Lcom/android/launcher/guide/GuidePageManager$Page;->MULTI_FINGER:Lcom/android/launcher/guide/GuidePageManager$Page;

    if-ne p2, v1, :cond_c3

    iget-boolean v1, p0, Lcom/android/launcher/guide/GuidePageManager;->mIsFirstDrag:Z

    if-nez v1, :cond_b5

    const-string p0, "!mIsFirstDrag"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_b5
    sget-object v1, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->INSTANCE:Lcom/android/launcher3/folder/big/FolderFunctionGuide;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->isSomethingShowing()Z

    move-result v1

    if-eqz v1, :cond_c3

    const-string p0, "FolderFunctionGuide is showing"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_c3
    iget-object v1, p0, Lcom/android/launcher/guide/GuidePageManager;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    if-nez v1, :cond_cd

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher/guide/GuidePageManager;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    :cond_cd
    iget-object v1, p0, Lcom/android/launcher/guide/GuidePageManager;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    iget-object v3, p0, Lcom/android/launcher/guide/GuidePageManager;->mGuideViewPanel:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_df

    const-string/jumbo p0, "showGuidePage: has added mGuideViewPanel"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_df
    new-instance v1, Lcom/android/launcher/guide/GuidePagerAdapter;

    invoke-direct {v1, p2}, Lcom/android/launcher/guide/GuidePagerAdapter;-><init>(Lcom/android/launcher/guide/GuidePageManager$Page;)V

    iput-object v1, p0, Lcom/android/launcher/guide/GuidePageManager;->mGuidePagerAdapter:Lcom/android/launcher/guide/GuidePagerAdapter;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f0d00fb

    iget-object v4, p0, Lcom/android/launcher/guide/GuidePageManager;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iput-object v1, p0, Lcom/android/launcher/guide/GuidePageManager;->mGuideViewPanel:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    invoke-static {}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->getInstance()Lcom/oplus/splitscreen/OplusSplitScreenManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->isInSplitScreenMode()Z

    move-result v3

    if-eqz v3, :cond_119

    sget-boolean v3, Lcom/android/common/config/ScreenInfo;->hasNavigationBar:Z

    if-eqz v3, :cond_10f

    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_11f

    :cond_10f
    iget v3, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-static {p1}, Lcom/android/common/config/ScreenInfo;->getNavBarHeightByWindowInsets(Landroid/content/Context;)I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_11f

    :cond_119
    invoke-static {p1}, Lcom/android/common/config/ScreenInfo;->getNavBarHeightByWindowInsets(Landroid/content/Context;)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    :goto_11f
    iget-object v3, p0, Lcom/android/launcher/guide/GuidePageManager;->mGuideViewPanel:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/android/launcher/guide/GuidePageManager;->mGuideViewPanel:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    new-instance v3, Lcom/android/launcher/guide/GuidePageManager$2;

    invoke-direct {v3, p0}, Lcom/android/launcher/guide/GuidePageManager$2;-><init>(Lcom/android/launcher/guide/GuidePageManager;)V

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/launcher/guide/GuidePageManager;->mGuideViewPanel:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    const v3, 0x7f0a0165

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v3, Lcom/android/launcher/v;

    invoke-direct {v3, p0}, Lcom/android/launcher/v;-><init>(Lcom/android/launcher/guide/GuidePageManager;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v1, Lcom/android/launcher/guide/GuidePageManager$6;->$SwitchMap$com$android$launcher$guide$GuidePageManager$Page:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v1, v1, v3

    const/4 v3, 0x2

    if-eq v1, v2, :cond_168

    if-eq v1, v3, :cond_162

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "showGuidePage: wrong type: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16d

    :cond_162
    const-string v1, "ENTER_TOGGLE_BAR "

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16d

    :cond_168
    const-string v1, "MULTI_FINGER "

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_16d
    iget-object v1, p0, Lcom/android/launcher/guide/GuidePageManager;->mGuideViewPanel:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-eqz v1, :cond_180

    const-string/jumbo v1, "showGuidePage: add view in draglayer."

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, v2}, Lcom/android/launcher/guide/GuidePageManager;->setSlideSlipSettings(Landroid/content/Context;Z)V

    invoke-direct {p0, p1}, Lcom/android/launcher/guide/GuidePageManager;->initViewId(Lcom/android/launcher3/Launcher;)V

    invoke-direct {p0, p2}, Lcom/android/launcher/guide/GuidePageManager;->initView(Lcom/android/launcher/guide/GuidePageManager$Page;)V

    :cond_180
    invoke-static {p1, v3}, Lcom/android/launcher3/AbstractFloatingView;->closeOpenContainer(Lcom/android/launcher3/views/ActivityContext;I)V

    const-string p0, " mCurrentGuidePage = whichPage"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
