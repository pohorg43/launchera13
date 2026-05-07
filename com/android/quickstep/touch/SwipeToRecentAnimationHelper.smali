.class public final Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/quickstep/views/OplusRecentsViewImpl$GoHomeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper$Companion;
    }
.end annotation


# static fields
.field private static final BACKGROUND_SCALE_SIZE:F = 0.92f

.field private static final COMPUTE_MIN_FRACTION:F = 0.001f

.field public static final Companion:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper$Companion;

.field private static final DEFAULT_DRAG_STIFFNESS:F = 500.0f

.field private static final DEFAULT_FLING_STIFFNESS:F = 200.0f

.field private static final DRAG_SCALE_PATH:Landroid/view/animation/PathInterpolator;

.field private static final FLAG_SWITCH_TO_APP:I = 0x1

.field private static final FLAG_SWITCH_TO_HOME:I = 0x0

.field private static final FLAG_SWITCH_TO_OVERVIEW:I = 0x2

.field private static final GO_OTHER_ACTION_SPEED_Y_BOTTOM:F = 0.3f

.field private static final GO_OVERVIEW_Y_THRESHOLD:F = -0.1f

.field private static final GO_QUICK_SWITCH_TRANSX_FRACTION:F = 0.15f

.field private static final MAX_SCROLL_FRACTION:F = 0.8f

.field private static final OFFSET_DEFAULT:F = 1.0f

.field private static final OFFSET_MINI:F = 0.5f

.field private static final OFFSET_MOST:F = 1.2f

.field private static final SPRING_FINAL_POSITION_TABLET:F = 1.5f

.field private static final SPRING_MINI_CHANGE_DEFAULT:F = 0.01f

.field private static final SPRING_MINI_CHANGE_SMALL_X:F = 9.1E-4f

.field private static final SPRING_MINI_CHANGE_SMALL_Y:F = 0.001684f

.field private static final START_ANIM_THRESHOLD:F = 0.3f

.field private static final SWIPE_DOWN_DIRECTION:I = 0x1

.field private static final SWIPE_LEFT_DIRECTION:I = 0x3

.field private static final SWIPE_RIGHT_DIRECTION:I = 0x4

.field private static final SWIPE_UP_BACKGROUND_PATH:Landroid/view/animation/PathInterpolator;

.field private static final SWIPE_UP_DIRECTION:I = 0x0

.field private static final S_TO_MS:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "FollowTouchAnimationHelper"

.field private static final TASK_CARD_FULL_SCREEN_SCALE:F = 1.73f

.field private static final TASK_CARD_MAX_SCALE:F = 1.58f

.field private static final TASK_CARD_MINI_SCALE:F = 0.95f

.field private static final TASK_PEEK_OFFSET:F = 0.5f


# instance fields
.field private final backgroundScaleHolder:Landroidx/dynamicanimation/animation/FloatValueHolder;

.field private final backgroundVisionHolder:Landroidx/dynamicanimation/animation/FloatValueHolder;

.field private final goHomeEndListener:Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;

.field private final goOverViewEndListener:Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;

.field private final goQuickSwitchEndListener:Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;

.field private mBackgroundScaleSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private mBackrgoundAlphaAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private mChangeQuickSwitch:Z

.field private mClearButton:Lcom/oplus/quickstep/views/OplusClearAllPanelView;

.field private final mDepthController:Lcom/android/launcher3/uioverrides/states/OplusDepthController;

.field private final mDirectionChangeFraction:F

.field private final mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

.field private mDragTaskInitSucceed:Z

.field private mFullScreenTaskScale:F

.field private mGoOverViewCanceled:Z

.field private final mGoPeekPoint:Landroid/graphics/PointF;

.field private mHasRecentTask:Z

.field private mIsClearViewEnterAnimationStarted:Z

.field private mIsDockViewEnterAnimationStarted:Z

.field private mIsGoingHome:Z

.field private mIsGoingOverview:Z

.field private mIsOverlayShow:Z

.field private final mIsRTL:Z

.field private mLastDirectionPointF:Landroid/graphics/PointF;

.field private mLastScaleSpeedRate:F

.field private mLastTransSpeed:F

.field private final mLauncher:Lcom/android/launcher/Launcher;

.field private mPaused:Z

.field private final mQuiteRecnetSpeedY:F

.field private mRecentHeight:I

.field private mRecentSpringScale:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private mRecentSpringX:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private mRecentWidth:I

.field private final mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;"
        }
    .end annotation
.end field

.field private mSwipeDirectionX:I

.field private mSwipeDirectionY:I

.field private mWallPaperBlurStart:F

.field private mWallPaperScaleStart:F

.field private final recentScaleHolder:Landroidx/dynamicanimation/animation/FloatValueHolder;

.field private final recentTranXHolder:Landroidx/dynamicanimation/animation/FloatValueHolder;


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    new-instance v0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->Companion:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper$Companion;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ed1eb85  # 0.41f

    const v2, 0x3f75c28f  # 0.96f

    const v3, 0x3f70a3d7  # 0.94f

    invoke-direct {v0, v1, v2, v3, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->DRAG_SCALE_PATH:Landroid/view/animation/PathInterpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v1, v2, v3, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->SWIPE_UP_BACKGROUND_PATH:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher/Launcher;)V
    .registers 5

    const-string v0, "mLauncher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object v0

    const-string v1, "mLauncher.getOverviewPanel()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    iput-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v1

    const-string v2, "mLauncher.dragLayer"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {p1}, Lcom/android/launcher3/BaseQuickstepLauncher;->getDepthController()Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    move-result-object v1

    const-string v2, "mLauncher.depthController"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mDepthController:Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    const v1, 0x3fdd70a4  # 1.73f

    iput v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mFullScreenTaskScale:F

    new-instance v1, Landroid/graphics/PointF;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLastDirectionPointF:Landroid/graphics/PointF;

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mGoPeekPoint:Landroid/graphics/PointF;

    new-instance v1, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper$recentTranXHolder$1;

    invoke-direct {v1, p0}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper$recentTranXHolder$1;-><init>(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)V

    iput-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->recentTranXHolder:Landroidx/dynamicanimation/animation/FloatValueHolder;

    new-instance v1, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper$recentScaleHolder$1;

    invoke-direct {v1, p0}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper$recentScaleHolder$1;-><init>(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)V

    iput-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->recentScaleHolder:Landroidx/dynamicanimation/animation/FloatValueHolder;

    new-instance v1, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper$backgroundScaleHolder$1;

    invoke-direct {v1, p0}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper$backgroundScaleHolder$1;-><init>(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)V

    iput-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->backgroundScaleHolder:Landroidx/dynamicanimation/animation/FloatValueHolder;

    new-instance v1, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper$backgroundVisionHolder$1;

    invoke-direct {v1, p0}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper$backgroundVisionHolder$1;-><init>(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)V

    iput-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->backgroundVisionHolder:Landroidx/dynamicanimation/animation/FloatValueHolder;

    new-instance v1, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper$goOverViewEndListener$1;

    invoke-direct {v1, p0}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper$goOverViewEndListener$1;-><init>(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)V

    iput-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->goOverViewEndListener:Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;

    new-instance v1, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper$goQuickSwitchEndListener$1;

    invoke-direct {v1, p0}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper$goQuickSwitchEndListener$1;-><init>(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)V

    iput-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->goQuickSwitchEndListener:Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;

    new-instance v1, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper$goHomeEndListener$1;

    invoke-direct {v1, p0}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper$goHomeEndListener$1;-><init>(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)V

    iput-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->goHomeEndListener:Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;

    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->getClearAllButton()Lcom/oplus/quickstep/views/OplusClearAllPanelView;

    move-result-object v1

    const-string v2, "mRecentsView.clearAllButton"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mClearButton:Lcom/oplus/quickstep/views/OplusClearAllPanelView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentHeight:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentWidth:I

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->isLayoutRtl()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mIsRTL:Z

    invoke-virtual {v0, p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setGoHomeListener(Lcom/android/quickstep/views/OplusRecentsViewImpl$GoHomeListener;)V

    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->getMaxScaleForFullScreen()F

    move-result v0

    iput v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mFullScreenTaskScale:F

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0709f7

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mQuiteRecnetSpeedY:F

    const v0, 0x7f070694

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mDirectionChangeFraction:F

    invoke-direct {p0}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->initSpring()V

    return-void
.end method

.method public static synthetic a(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->initSpring$lambda-2(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V

    return-void
.end method

.method public static final synthetic access$getMChangeQuickSwitch$p(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mChangeQuickSwitch:Z

    return p0
.end method

.method public static final synthetic access$getMDepthController$p(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)Lcom/android/launcher3/uioverrides/states/OplusDepthController;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mDepthController:Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    return-object p0
.end method

.method public static final synthetic access$getMDragLayer$p(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)Lcom/android/launcher3/dragndrop/DragLayer;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    return-object p0
.end method

.method public static final synthetic access$getMIsGoingHome$p(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mIsGoingHome:Z

    return p0
.end method

.method public static final synthetic access$getMIsGoingOverview$p(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mIsGoingOverview:Z

    return p0
.end method

.method public static final synthetic access$getMLauncher$p(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)Lcom/android/launcher/Launcher;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLauncher:Lcom/android/launcher/Launcher;

    return-object p0
.end method

.method public static final synthetic access$getMRecentSpringX$p(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)Landroidx/dynamicanimation/animation/SpringAnimation;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringX:Landroidx/dynamicanimation/animation/SpringAnimation;

    return-object p0
.end method

.method public static final synthetic access$getMRecentsView$p(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)Lcom/android/quickstep/views/OplusRecentsViewImpl;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    return-object p0
.end method

.method public static final synthetic access$getMWallPaperBlurStart$p(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)F
    .registers 1

    iget p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mWallPaperBlurStart:F

    return p0
.end method

.method public static final synthetic access$updateBackground(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;F)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->updateBackground(F)V

    return-void
.end method

.method public static synthetic b(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->initSpring$lambda-1(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V

    return-void
.end method

.method public static synthetic c(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;Ljava/util/ArrayList;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->initState$lambda-0(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;Ljava/util/ArrayList;)V

    return-void
.end method

.method private final computeCardScale(F)F
    .registers 7

    iget p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentHeight:I

    int-to-float p0, p0

    const v0, 0x3f4ccccd  # 0.8f

    mul-float/2addr p0, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/4 v0, 0x0

    invoke-static {p1, v0, p0}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result p1

    sget-object v0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->DRAG_SCALE_PATH:Landroid/view/animation/PathInterpolator;

    div-float v1, p1, p0

    invoke-virtual {v0, v1}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v0

    const v1, 0x3fca3d71  # 1.58f

    const v2, 0x3f733333  # 0.95f

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v1

    const-string v2, "computeCardScale: "

    const-string v3, "   distance:"

    const-string v4, " maxDistance:"

    invoke-static {v2, v1, v3, p1, v4}, Lcom/android/launcher/pageindicators/e;->a(Ljava/lang/String;FLjava/lang/String;FLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, "   "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FollowTouchAnimationHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private final computeCardScaleWithSpeed(FF)[F
    .registers 10

    const/4 v0, 0x2

    new-array v0, v0, [F

    iget p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentHeight:I

    int-to-float p0, p0

    const v1, 0x3f4ccccd  # 0.8f

    mul-float/2addr p0, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/4 v1, 0x0

    invoke-static {p1, v1, p0}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result p1

    div-float v2, p1, p0

    sget-object v3, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->DRAG_SCALE_PATH:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v3, v2}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v4

    const v5, 0x3fca3d71  # 1.58f

    const v6, 0x3f733333  # 0.95f

    invoke-static {v4, v5, v6}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v5

    const/4 v6, 0x0

    aput v5, v0, v6

    const v5, 0x3a83126f  # 0.001f

    cmpg-float v6, v2, v5

    if-gez v6, :cond_30

    goto :goto_46

    :cond_30
    invoke-virtual {v3, v2}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v1

    sub-float/2addr v2, v5

    invoke-virtual {v3, v2}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v2

    sub-float/2addr v1, v2

    div-float/2addr v1, v5

    const v2, 0x3f2147af  # 0.63000005f

    mul-float/2addr p2, v2

    const/16 v2, 0x3e8

    int-to-float v2, v2

    mul-float/2addr p2, v2

    mul-float/2addr p2, v1

    div-float v1, p2, p0

    :goto_46
    const/4 p2, 0x1

    aput v1, v0, p2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "computeCardScale: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " distance:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " maxDistance:"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 p0, 0x20

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FollowTouchAnimationHelper"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic d(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->goOverviewAnimation$lambda-3(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V

    return-void
.end method

.method private static final goOverviewAnimation$lambda-3(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .registers 4

    sget-object p0, Lcom/android/common/util/LauncherBooster;->INSTANCE:Lcom/android/common/util/LauncherBooster;

    invoke-virtual {p0}, Lcom/android/common/util/LauncherBooster;->getCpu()Lcom/android/common/util/LauncherBooster$CpuBoost;

    move-result-object p0

    const/4 p1, 0x3

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/common/util/LauncherBooster$CpuBoost;->updateAppSceneAndAction(IZ)V

    return-void
.end method

.method private final initSpring()V
    .registers 8

    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->recentTranXHolder:Landroidx/dynamicanimation/animation/FloatValueHolder;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatValueHolder;F)V

    iput-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringX:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    const/high16 v1, 0x43fa0000  # 500.0f

    if-nez v0, :cond_13

    goto :goto_16

    :cond_13
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    :goto_16
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringX:Landroidx/dynamicanimation/animation/SpringAnimation;

    const/4 v3, 0x0

    if-nez v0, :cond_1d

    move-object v0, v3

    goto :goto_21

    :cond_1d
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    :goto_21
    const/high16 v4, 0x3f800000  # 1.0f

    if-nez v0, :cond_26

    goto :goto_29

    :cond_26
    invoke-virtual {v0, v4}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    :goto_29
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringX:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-nez v0, :cond_2e

    goto :goto_34

    :cond_2e
    const v5, 0x3a6e8d11  # 9.1E-4f

    invoke-virtual {v0, v5}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setMinimumVisibleChange(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    :goto_34
    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v5, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->recentScaleHolder:Landroidx/dynamicanimation/animation/FloatValueHolder;

    invoke-direct {v0, v5, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatValueHolder;F)V

    iput-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringScale:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    if-nez v0, :cond_44

    goto :goto_47

    :cond_44
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    :goto_47
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringScale:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-nez v0, :cond_4d

    move-object v0, v3

    goto :goto_51

    :cond_4d
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    :goto_51
    if-nez v0, :cond_54

    goto :goto_57

    :cond_54
    invoke-virtual {v0, v4}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    :goto_57
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringScale:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-nez v0, :cond_5c

    goto :goto_62

    :cond_5c
    const v5, 0x3adcb9aa  # 0.001684f

    invoke-virtual {v0, v5}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setMinimumVisibleChange(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    :goto_62
    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v5, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->backgroundScaleHolder:Landroidx/dynamicanimation/animation/FloatValueHolder;

    invoke-direct {v0, v5, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatValueHolder;F)V

    iput-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mBackgroundScaleSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    if-nez v0, :cond_72

    goto :goto_75

    :cond_72
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    :goto_75
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mBackgroundScaleSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-nez v0, :cond_7b

    move-object v0, v3

    goto :goto_7f

    :cond_7b
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    :goto_7f
    if-nez v0, :cond_82

    goto :goto_85

    :cond_82
    invoke-virtual {v0, v4}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    :goto_85
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mBackgroundScaleSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    const v5, 0x3c23d70a  # 0.01f

    if-nez v0, :cond_8d

    goto :goto_90

    :cond_8d
    invoke-virtual {v0, v5}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setMinimumVisibleChange(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    :goto_90
    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v6, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->backgroundVisionHolder:Landroidx/dynamicanimation/animation/FloatValueHolder;

    invoke-direct {v0, v6, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatValueHolder;F)V

    iput-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mBackrgoundAlphaAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    if-nez v0, :cond_a0

    goto :goto_a3

    :cond_a0
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    :goto_a3
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mBackrgoundAlphaAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-nez v0, :cond_a8

    goto :goto_ac

    :cond_a8
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v3

    :goto_ac
    if-nez v3, :cond_af

    goto :goto_b2

    :cond_af
    invoke-virtual {v3, v4}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    :goto_b2
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mBackrgoundAlphaAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-nez v0, :cond_b7

    goto :goto_ba

    :cond_b7
    invoke-virtual {v0, v5}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setMinimumVisibleChange(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    :goto_ba
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringX:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-nez v0, :cond_bf

    goto :goto_cb

    :cond_bf
    new-instance v1, Lf0/b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lf0/b;-><init>(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;I)V

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object v0

    check-cast v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    :goto_cb
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringScale:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-nez v0, :cond_d0

    goto :goto_dc

    :cond_d0
    new-instance v1, Lf0/b;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lf0/b;-><init>(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;I)V

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object p0

    check-cast p0, Landroidx/dynamicanimation/animation/SpringAnimation;

    :goto_dc
    return-void
.end method

.method private static final initSpring$lambda-1(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .registers 4

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput p3, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLastTransSpeed:F

    return-void
.end method

.method private static final initSpring$lambda-2(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .registers 4

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput p3, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLastScaleSpeedRate:F

    return-void
.end method

.method private static final initState$lambda-0(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;Ljava/util/ArrayList;)V
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->updateTaskInfo(Ljava/util/ArrayList;)V

    return-void
.end method

.method private final resetHolders()V
    .registers 4

    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->recentScaleHolder:Landroidx/dynamicanimation/animation/FloatValueHolder;

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/FloatValueHolder;->setValue(F)V

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_12

    const/high16 v0, 0x3fc00000  # 1.5f

    goto :goto_13

    :cond_12
    move v0, v1

    :goto_13
    iget-object v2, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->recentTranXHolder:Landroidx/dynamicanimation/animation/FloatValueHolder;

    invoke-virtual {v2, v0}, Landroidx/dynamicanimation/animation/FloatValueHolder;->setValue(F)V

    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->backgroundScaleHolder:Landroidx/dynamicanimation/animation/FloatValueHolder;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/dynamicanimation/animation/FloatValueHolder;->setValue(F)V

    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->backgroundVisionHolder:Landroidx/dynamicanimation/animation/FloatValueHolder;

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/FloatValueHolder;->setValue(F)V

    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringX:Landroidx/dynamicanimation/animation/SpringAnimation;

    const/4 v1, 0x0

    if-nez v0, :cond_2a

    move-object v0, v1

    goto :goto_2e

    :cond_2a
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    :goto_2e
    const/high16 v2, 0x43fa0000  # 500.0f

    if-nez v0, :cond_33

    goto :goto_36

    :cond_33
    invoke-virtual {v0, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    :goto_36
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringScale:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-nez v0, :cond_3c

    move-object v0, v1

    goto :goto_40

    :cond_3c
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    :goto_40
    if-nez v0, :cond_43

    goto :goto_46

    :cond_43
    invoke-virtual {v0, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    :goto_46
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mBackgroundScaleSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-nez v0, :cond_4c

    move-object v0, v1

    goto :goto_50

    :cond_4c
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    :goto_50
    if-nez v0, :cond_53

    goto :goto_56

    :cond_53
    invoke-virtual {v0, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    :goto_56
    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mBackrgoundAlphaAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-nez p0, :cond_5b

    goto :goto_5f

    :cond_5b
    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    :goto_5f
    if-nez v1, :cond_62

    goto :goto_65

    :cond_62
    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    :goto_65
    return-void
.end method

.method private final updateBackground(F)V
    .registers 6

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v1, 0x0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    const v1, 0x3f6b851f  # 0.92f

    invoke-static {p1, v0, v1}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v1

    iget-boolean v2, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mIsOverlayShow:Z

    if-nez v2, :cond_27

    iget v2, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mWallPaperScaleStart:F

    const/high16 v3, 0x3f000000  # 0.5f

    cmpg-float v3, v2, v3

    if-gez v3, :cond_27

    invoke-static {p1, v2, v0}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result p1

    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mDepthController:Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->setDepthWithoutAnim(F)V

    :cond_27
    iget-object p1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p1

    if-nez p1, :cond_31

    const/4 p1, 0x0

    goto :goto_37

    :cond_31
    invoke-virtual {p1}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/LauncherState;

    :goto_37
    sget-object v0, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5b

    iget-boolean p1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mIsOverlayShow:Z

    if-nez p1, :cond_5b

    iget-object p1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->isBrowserNewsVisible()Z

    move-result p1

    if-nez p1, :cond_5b

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    if-nez p1, :cond_5b

    iget-object p1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setScaleX(F)V

    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setScaleY(F)V

    :cond_5b
    return-void
.end method


# virtual methods
.method public final calculateBackgroundAnimate(F)V
    .registers 4

    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mBackgroundScaleSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-nez v0, :cond_5

    goto :goto_12

    :cond_5
    sget-object v1, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->SWIPE_UP_BACKGROUND_PATH:Landroid/view/animation/PathInterpolator;

    iget p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentHeight:I

    int-to-float p0, p0

    div-float/2addr p1, p0

    invoke-virtual {v1, p1}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    :goto_12
    return-void
.end method

.method public final calculateScaleAndAnimate(FF)V
    .registers 4

    iget-boolean v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mDragTaskInitSucceed:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->computeCardScaleWithSpeed(FF)[F

    move-result-object p1

    const/4 p2, 0x0

    aget p1, p1, p2

    const/4 p2, 0x0

    const v0, 0x3fca3d71  # 1.58f

    invoke-static {p1, p2, v0}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result p1

    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringScale:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-nez p0, :cond_19

    goto :goto_1c

    :cond_19
    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    :goto_1c
    return-void
.end method

.method public final calculateTranslateAndAnimate(F)V
    .registers 3

    iget-boolean v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mDragTaskInitSucceed:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mGoPeekPoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr p1, v0

    iget-boolean v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mIsRTL:Z

    if-eqz v0, :cond_f

    goto :goto_10

    :cond_f
    neg-float p1, p1

    :goto_10
    iget v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentWidth:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    const/high16 v0, 0x3f800000  # 1.0f

    mul-float/2addr p1, v0

    const/high16 v0, 0x3f000000  # 0.5f

    add-float/2addr p1, v0

    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringX:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-nez p0, :cond_1f

    goto :goto_22

    :cond_1f
    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    :goto_22
    return-void
.end method

.method public cancelAllAnimationIfNeed()V
    .registers 2

    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mBackrgoundAlphaAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-nez v0, :cond_5

    goto :goto_8

    :cond_5
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    :goto_8
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mBackgroundScaleSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-nez v0, :cond_d

    goto :goto_10

    :cond_d
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    :goto_10
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringX:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-nez v0, :cond_15

    goto :goto_18

    :cond_15
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    :goto_18
    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringScale:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-nez p0, :cond_1d

    goto :goto_20

    :cond_1d
    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    :goto_20
    return-void
.end method

.method public cancelAnimationIfNeed()V
    .registers 2

    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mBackrgoundAlphaAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-nez v0, :cond_5

    goto :goto_8

    :cond_5
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    :goto_8
    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mBackgroundScaleSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-nez p0, :cond_d

    goto :goto_10

    :cond_d
    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    :goto_10
    return-void
.end method

.method public final cancelControlEnterAnimation()V
    .registers 4

    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getDockView()Lcom/oplus/quickstep/dock/DockView;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_11

    :cond_9
    invoke-virtual {v0}, Lcom/oplus/quickstep/dock/DockView;->clearEnterAnim()V

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/oplus/quickstep/dock/DockView;->updateLastState(Lcom/android/launcher3/LauncherState;)V

    :goto_11
    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    const-string v1, "NORMAL"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->playClearAllEnterAnimation(Lcom/android/launcher3/LauncherState;ZLcom/android/launcher3/states/StateAnimationConfig;)V

    return-void
.end method

.method public final cancelStateAnimationIfNeed()V
    .registers 4

    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->isInTransition()Z

    move-result v0

    const-string v1, "cancelStateAnimationIfNeed lastState: "

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/statemanager/StateManager;->getLastState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FollowTouchAnimationHelper"

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_63

    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getLastColorState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherState;

    iget-boolean v0, v0, Lcom/android/launcher3/LauncherState;->overviewUi:Z

    if-eqz v0, :cond_63

    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherState;

    iget-boolean v0, v0, Lcom/android/launcher3/LauncherState;->overviewUi:Z

    if-nez v0, :cond_63

    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StateManager;->cancelAnimation()V

    :cond_63
    return-void
.end method

.method public final checkRecentsViewAlpha()V
    .registers 4

    iget-boolean v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mDragTaskInitSucceed:Z

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->getContentAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000  # 1.0f

    cmpg-float v0, v0, v1

    if-nez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    if-nez v0, :cond_35

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->getContentAlpha()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v2, "checkRecentsViewAlpha(), contentAlpha="

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "FollowTouchAnimationHelper"

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_30
    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {p0, v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setContentAlpha(F)V

    :cond_35
    return-void
.end method

.method public final checkSwitchMode(FFLandroid/graphics/PointF;)I
    .registers 6

    const-string/jumbo v0, "swipeVendor"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkSwitchMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, "  "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 p1, 0x20

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FollowTouchAnimationHelper"

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget p1, p3, Landroid/graphics/PointF;->y:F

    iget v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentHeight:I

    int-to-float v0, v0

    const v1, -0x42333333  # -0.1f

    mul-float/2addr v0, v1

    cmpl-float p1, p1, v0

    const/4 v0, 0x1

    if-lez p1, :cond_41

    const p1, 0x3e99999a  # 0.3f

    cmpl-float p1, p2, p1

    if-gtz p1, :cond_4b

    :cond_41
    iget p1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mQuiteRecnetSpeedY:F

    cmpl-float p1, p2, p1

    if-lez p1, :cond_60

    iget p1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mSwipeDirectionY:I

    if-ne p1, v0, :cond_60

    :cond_4b
    iget p1, p3, Landroid/graphics/PointF;->x:F

    const p2, 0x3e19999a  # 0.15f

    iget p3, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentWidth:I

    int-to-float p3, p3

    mul-float/2addr p3, p2

    cmpl-float p1, p1, p3

    if-gtz p1, :cond_61

    iget p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mSwipeDirectionX:I

    const/4 p1, 0x4

    if-ne p0, p1, :cond_5e

    goto :goto_61

    :cond_5e
    const/4 v0, 0x0

    goto :goto_61

    :cond_60
    const/4 v0, 0x2

    :cond_61
    :goto_61
    return v0
.end method

.method public final clearState()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mPaused:Z

    iput-boolean v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mDragTaskInitSucceed:Z

    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setRecentAnimateDragging(Z)V

    sget-object p0, Lcom/oplus/quickstep/utils/GestureBooster;->INSTANCE:Lcom/oplus/quickstep/utils/GestureBooster;

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/GestureBooster;->removeExtendTimeCallbacks()V

    return-void
.end method

.method public final goHomeAnimation()V
    .registers 4

    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringX:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    :goto_a
    if-nez v0, :cond_d

    goto :goto_12

    :cond_d
    const/high16 v1, 0x43480000  # 200.0f

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    :goto_12
    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v0

    const/high16 v1, 0x3f800000  # 1.0f

    if-eqz v0, :cond_1f

    const/high16 v0, 0x3fc00000  # 1.5f

    goto :goto_20

    :cond_1f
    move v0, v1

    :goto_20
    iget-object v2, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringX:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-nez v2, :cond_25

    goto :goto_28

    :cond_25
    invoke-virtual {v2, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    :goto_28
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringX:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-nez v0, :cond_2d

    goto :goto_35

    :cond_2d
    iget-object v2, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->goHomeEndListener:Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;

    invoke-virtual {v0, v2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object v0

    check-cast v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    :goto_35
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringScale:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-nez v0, :cond_3a

    goto :goto_3d

    :cond_3a
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    :goto_3d
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mBackrgoundAlphaAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-nez v0, :cond_42

    goto :goto_45

    :cond_42
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    :goto_45
    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mBackgroundScaleSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-nez p0, :cond_4a

    goto :goto_4e

    :cond_4a
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    :goto_4e
    return-void
.end method

.method public final goOverviewAnimation()V
    .registers 8

    sget-object v0, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->HOME_TO_RECENTS:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    invoke-static {v0}, Lcom/oplus/quickstep/utils/TracePrintUtil;->asyncTraceBegin(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mIsGoingOverview:Z

    iget-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v1, v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setSpringAnimToRecent(Z)V

    sget-object v1, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    invoke-virtual {v1, v0}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->setOverviewPeeking(Z)V

    iget-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringX:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-nez v1, :cond_17

    goto :goto_1b

    :cond_17
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    :goto_1b
    iget-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringScale:Landroidx/dynamicanimation/animation/SpringAnimation;

    const/high16 v2, 0x3f800000  # 1.0f

    if-nez v1, :cond_22

    goto :goto_25

    :cond_22
    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    :goto_25
    iget-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mBackgroundScaleSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-nez v1, :cond_2a

    goto :goto_2d

    :cond_2a
    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    :goto_2d
    sget-object v1, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v1}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_79

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v3, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    sget-object v4, Lcom/android/quickstep/views/RecentsView;->RECENTS_GRID_PROGRESS:Landroid/util/FloatProperty;

    new-array v5, v0, [F

    const/4 v6, 0x0

    aput v2, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    sget-object v2, Lcom/android/common/util/OplusLauncherAnimUtils$Interpolators;->GESTURE_TO_RECNETS:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    iget-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v0, v1}, Lcom/android/common/util/ScreenUtils;->lockOrientationInTablet(ZLandroid/app/Activity;)V

    iget-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    if-nez v1, :cond_5c

    goto :goto_79

    :cond_5c
    invoke-virtual {v1}, Lcom/android/quickstep/views/RecentsView;->getFocusedTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v1

    if-nez v1, :cond_63

    goto :goto_79

    :cond_63
    invoke-virtual {v1}, Lcom/android/quickstep/views/TaskView;->getTaskIdAttributeContainers()[Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;

    move-result-object v1

    if-nez v1, :cond_6a

    goto :goto_79

    :cond_6a
    aget-object v1, v1, v6

    if-nez v1, :cond_6f

    goto :goto_79

    :cond_6f
    invoke-virtual {v1}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getThumbnailView()Lcom/android/quickstep/views/TaskThumbnailView;

    move-result-object v1

    if-nez v1, :cond_76

    goto :goto_79

    :cond_76
    invoke-virtual {v1}, Lcom/android/quickstep/views/TaskThumbnailView;->refresh()V

    :cond_79
    :goto_79
    iget-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringX:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-nez v1, :cond_7e

    goto :goto_83

    :cond_7e
    iget-object v2, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->goHomeEndListener:Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;

    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->removeEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)V

    :goto_83
    iget-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringX:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-nez v1, :cond_88

    goto :goto_90

    :cond_88
    iget-object v2, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->goOverViewEndListener:Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;

    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object v1

    check-cast v1, Landroidx/dynamicanimation/animation/SpringAnimation;

    :goto_90
    sget-object v1, Lcom/android/common/util/LauncherBooster;->INSTANCE:Lcom/android/common/util/LauncherBooster;

    invoke-virtual {v1}, Lcom/android/common/util/LauncherBooster;->getCpu()Lcom/android/common/util/LauncherBooster$CpuBoost;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0}, Lcom/android/common/util/LauncherBooster$CpuBoost;->updateAppSceneAndAction(IZ)V

    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringX:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-nez p0, :cond_9f

    goto :goto_a7

    :cond_9f
    sget-object v0, Lf0/a;->a:Lf0/a;

    invoke-virtual {p0, v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object p0

    check-cast p0, Landroidx/dynamicanimation/animation/SpringAnimation;

    :goto_a7
    return-void
.end method

.method public final goSwitchAppAnimation()V
    .registers 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mIsGoingOverview:Z

    iput-boolean v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mChangeQuickSwitch:Z

    sget-object v1, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    invoke-virtual {v1, v0}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->setOverviewPeeking(Z)V

    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringX:Landroidx/dynamicanimation/animation/SpringAnimation;

    const/4 v1, 0x0

    if-nez v0, :cond_10

    goto :goto_13

    :cond_10
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    :goto_13
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringScale:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-nez v0, :cond_18

    goto :goto_1d

    :cond_18
    iget v2, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mFullScreenTaskScale:F

    invoke-virtual {v0, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    :goto_1d
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringX:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-nez v0, :cond_22

    goto :goto_2a

    :cond_22
    iget-object v2, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->goQuickSwitchEndListener:Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;

    invoke-virtual {v0, v2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object v0

    check-cast v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    :goto_2a
    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mBackgroundScaleSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-nez p0, :cond_2f

    goto :goto_32

    :cond_2f
    invoke-virtual {p0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    :goto_32
    return-void
.end method

.method public final initDragParam(Landroid/graphics/PointF;)Z
    .registers 10

    const-string v0, "lastDisplacement"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mIsOverlayShow:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    return v1

    :cond_b
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->isBrowserNewsVisible()Z

    move-result v0

    const-string v2, "FollowTouchAnimationHelper"

    if-eqz v0, :cond_1b

    const-string p0, "initDragParam show browsernewss,return"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1b
    invoke-virtual {p0}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->cancelStateAnimationIfNeed()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->updateRecentViewState(Z)V

    iget v3, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentWidth:I

    if-eqz v3, :cond_2a

    iget v3, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentHeight:I

    if-nez v3, :cond_3a

    :cond_2a
    iget-object v3, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    iput v3, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentHeight:I

    iget-object v3, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    iput v3, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentWidth:I

    :cond_3a
    iget-object v3, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v3}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getTaskViewCount()I

    move-result v3

    const/high16 v4, 0x3f800000  # 1.0f

    if-ge v3, v0, :cond_48

    iget-boolean v5, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mHasRecentTask:Z

    if-eqz v5, :cond_52

    :cond_48
    iget-object v5, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v5

    iget-boolean v5, v5, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-eqz v5, :cond_5e

    :cond_52
    sget-object p1, Lcom/android/quickstep/views/RecentsView;->ADJACENT_PAGE_HORIZONTAL_OFFSET:Landroid/util/FloatProperty;

    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    return v1

    :cond_5e
    iget-object v5, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v5}, Lcom/android/quickstep/views/RecentsView;->getClearAllButton()Lcom/oplus/quickstep/views/OplusClearAllPanelView;

    move-result-object v5

    const-string v6, "mRecentsView.clearAllButton"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mClearButton:Lcom/oplus/quickstep/views/OplusClearAllPanelView;

    iget v5, p1, Landroid/graphics/PointF;->y:F

    invoke-direct {p0, v5}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->computeCardScale(F)F

    move-result v5

    iget-object v6, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mGoPeekPoint:Landroid/graphics/PointF;

    iget v7, p1, Landroid/graphics/PointF;->x:F

    iput v7, v6, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    iput p1, v6, Landroid/graphics/PointF;->y:F

    const/high16 p1, 0x3f000000  # 0.5f

    const v6, 0x3f99999a  # 1.2f

    invoke-static {v4, p1, v6}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result p1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "initDragParam: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_a4

    move p1, v4

    :cond_a4
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_ab

    move v5, v4

    :cond_ab
    iget-object v2, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mClearButton:Lcom/oplus/quickstep/views/OplusClearAllPanelView;

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->setAlpha(F)V

    iget-object v2, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->setScaleX(F)V

    iget-object v2, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->setScaleY(F)V

    iget-object v2, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->recentScaleHolder:Landroidx/dynamicanimation/animation/FloatValueHolder;

    invoke-virtual {v2, v5}, Landroidx/dynamicanimation/animation/FloatValueHolder;->setValue(F)V

    iget-object v2, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v2, v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-object v2, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v2}, Lcom/android/launcher3/PagedView;->isHandlingTouch()Z

    move-result v2

    if-eqz v2, :cond_d7

    iget-object v2, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v2}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->resetTouchState()V

    :cond_d7
    iget-object v2, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v2}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getTaskViewCount()I

    move-result v2

    if-lez v2, :cond_ec

    iget-object v2, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v2}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v2

    if-eqz v2, :cond_ec

    iget-object v2, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v2, v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setCurrentPage(I)V

    :cond_ec
    sget-object v2, Lcom/android/quickstep/views/RecentsView;->ADJACENT_PAGE_HORIZONTAL_OFFSET:Landroid/util/FloatProperty;

    iget-object v5, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    iget-object v2, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->recentTranXHolder:Landroidx/dynamicanimation/animation/FloatValueHolder;

    invoke-virtual {v2, p1}, Landroidx/dynamicanimation/animation/FloatValueHolder;->setValue(F)V

    iget-object p1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {p1, v4}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setContentAlpha(F)V

    if-lez v3, :cond_126

    :goto_103
    add-int/lit8 p1, v1, 0x1

    iget-object v2, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v2, v1}, Lcom/android/quickstep/views/RecentsView;->getTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v1

    instance-of v2, v1, Lcom/android/quickstep/views/OplusTaskViewImpl;

    const/4 v5, 0x0

    if-eqz v2, :cond_113

    check-cast v1, Lcom/android/quickstep/views/OplusTaskViewImpl;

    goto :goto_114

    :cond_113
    move-object v1, v5

    :goto_114
    if-nez v1, :cond_117

    goto :goto_11b

    :cond_117
    invoke-virtual {v1}, Lcom/android/quickstep/views/OplusTaskViewImpl;->getHeaderView()Lcom/oplus/quickstep/views/OplusTaskHeaderView;

    move-result-object v5

    :goto_11b
    if-nez v5, :cond_11e

    goto :goto_121

    :cond_11e
    invoke-virtual {v5, v4}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :goto_121
    if-lt p1, v3, :cond_124

    goto :goto_126

    :cond_124
    move v1, p1

    goto :goto_103

    :cond_126
    :goto_126
    iput-boolean v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mDragTaskInitSucceed:Z

    return v0
.end method

.method public final initState()V
    .registers 11

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mPaused:Z

    iput-boolean v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mDragTaskInitSucceed:Z

    iput-boolean v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mHasRecentTask:Z

    iput-boolean v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mGoOverViewCanceled:Z

    iput-boolean v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mIsGoingOverview:Z

    iput-boolean v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mIsGoingHome:Z

    iput-boolean v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mChangeQuickSwitch:Z

    iput-boolean v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mIsDockViewEnterAnimationStarted:Z

    iput-boolean v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mIsClearViewEnterAnimationStarted:Z

    iget-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getTaskViewCount()I

    move-result v1

    const/high16 v2, 0x3f800000  # 1.0f

    const/4 v3, 0x1

    if-ge v1, v3, :cond_39

    iget-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v1, v2}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setContentAlpha(F)V

    sget-object v1, Lcom/android/quickstep/RecentsModel;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v4, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/quickstep/RecentsModel;

    new-instance v4, Lcom/android/quickstep/fallback/a;

    invoke-direct {v4, p0}, Lcom/android/quickstep/fallback/a;-><init>(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)V

    invoke-virtual {v1, v4}, Lcom/android/quickstep/RecentsModel;->getTasks(Ljava/util/function/Consumer;)I

    :cond_39
    iget v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentWidth:I

    if-eqz v1, :cond_41

    iget v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentHeight:I

    if-nez v1, :cond_51

    :cond_41
    iget-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentHeight:I

    iget-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentWidth:I

    :cond_51
    iget-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mDepthController:Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    invoke-virtual {v1}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->getCurrentDepth()F

    move-result v1

    iput v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mWallPaperScaleStart:F

    iget-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher/Launcher;->isAssistScreenShown()Z

    move-result v1

    if-nez v1, :cond_69

    iget-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher/Launcher;->isOverlayScrolling()Z

    move-result v1

    if-eqz v1, :cond_6a

    :cond_69
    move v0, v3

    :cond_6a
    iput-boolean v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mIsOverlayShow:Z

    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mDepthController:Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    invoke-virtual {v0}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->getCurrentBlur()F

    move-result v0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_83

    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/OplusWorkspace;->isFolderOpened()Z

    move-result v0

    if-nez v0, :cond_83

    const/4 v2, 0x0

    :cond_83
    iput v2, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mWallPaperBlurStart:F

    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringX:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-nez v0, :cond_8a

    goto :goto_8f

    :cond_8a
    iget-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->goOverViewEndListener:Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->removeEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)V

    :goto_8f
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringX:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-nez v0, :cond_94

    goto :goto_99

    :cond_94
    iget-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->goQuickSwitchEndListener:Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->removeEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)V

    :goto_99
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringX:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-nez v0, :cond_9e

    goto :goto_a3

    :cond_9e
    iget-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->goHomeEndListener:Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->removeEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)V

    :goto_a3
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v0, v3}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setRecentAnimateDragging(Z)V

    sget-object v4, Lcom/oplus/quickstep/utils/GestureBooster;->INSTANCE:Lcom/oplus/quickstep/utils/GestureBooster;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x7

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lcom/oplus/quickstep/utils/GestureBooster;->openSf$default(Lcom/oplus/quickstep/utils/GestureBooster;IZZILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->resetHolders()V

    return-void
.end method

.method public final isAnimatingRunning()Z
    .registers 4

    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringX:Landroidx/dynamicanimation/animation/SpringAnimation;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_8

    :cond_6
    move v0, v1

    goto :goto_f

    :cond_8
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result v0

    if-ne v0, v2, :cond_6

    move v0, v2

    :goto_f
    if-nez v0, :cond_20

    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringScale:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-nez p0, :cond_17

    :cond_15
    move p0, v1

    goto :goto_1e

    :cond_17
    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result p0

    if-ne p0, v2, :cond_15

    move p0, v2

    :goto_1e
    if-eqz p0, :cond_21

    :cond_20
    move v1, v2

    :cond_21
    return v1
.end method

.method public final isAnimatingToOverView()Z
    .registers 4

    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringX:Landroidx/dynamicanimation/animation/SpringAnimation;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_8

    :cond_6
    move v0, v1

    goto :goto_f

    :cond_8
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result v0

    if-ne v0, v2, :cond_6

    move v0, v2

    :goto_f
    if-eqz v0, :cond_16

    iget-boolean p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mIsGoingOverview:Z

    if-eqz p0, :cond_16

    move v1, v2

    :cond_16
    return v1
.end method

.method public onGoHome()V
    .registers 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mIsGoingOverview:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mIsGoingHome:Z

    iput-boolean v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mIsDockViewEnterAnimationStarted:Z

    iput-boolean v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mIsClearViewEnterAnimationStarted:Z

    iget-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v1, v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setSpringAnimToRecent(Z)V

    iget-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringX:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-nez v1, :cond_14

    goto :goto_19

    :cond_14
    iget-object v2, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->goOverViewEndListener:Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;

    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->removeEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)V

    :goto_19
    iget-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringX:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-nez v1, :cond_1e

    goto :goto_26

    :cond_1e
    iget-object v2, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->goHomeEndListener:Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;

    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object v1

    check-cast v1, Landroidx/dynamicanimation/animation/SpringAnimation;

    :goto_26
    sget-object v1, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v1}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v1

    const/high16 v2, 0x3f800000  # 1.0f

    if-eqz v1, :cond_38

    const/high16 v1, 0x3fc00000  # 1.5f

    iget-object v3, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v0, v3}, Lcom/android/common/util/ScreenUtils;->lockOrientationInTablet(ZLandroid/app/Activity;)V

    goto :goto_39

    :cond_38
    move v1, v2

    :goto_39
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringX:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-nez v0, :cond_3e

    goto :goto_41

    :cond_3e
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    :goto_41
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringScale:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-nez v0, :cond_46

    goto :goto_49

    :cond_46
    invoke-virtual {v0, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    :goto_49
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mBackrgoundAlphaAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-nez v0, :cond_4e

    goto :goto_51

    :cond_4e
    invoke-virtual {v0, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    :goto_51
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mBackgroundScaleSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-nez v0, :cond_56

    goto :goto_5a

    :cond_56
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    :goto_5a
    invoke-virtual {p0}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->cancelControlEnterAnimation()V

    return-void
.end method

.method public final playControlEnterAnimation()V
    .registers 9

    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getDockView()Lcom/oplus/quickstep/dock/DockView;

    move-result-object v1

    const/4 v0, 0x1

    if-nez v1, :cond_a

    goto :goto_2b

    :cond_a
    invoke-virtual {v1}, Lcom/oplus/quickstep/dock/DockView;->isEnterAnimatorRunning()Z

    move-result v2

    if-nez v2, :cond_2b

    iget-boolean v2, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mIsDockViewEnterAnimationStarted:Z

    if-nez v2, :cond_2b

    iput-boolean v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mIsDockViewEnterAnimationStarted:Z

    sget-object v2, Lcom/oplus/quickstep/dock/DockView;->ADJACENT_DOCK_VIEW_OFFSET:Landroid/util/FloatProperty;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    sget-object v2, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    const/4 v3, 0x0

    const/high16 v4, 0x40400000  # 3.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/oplus/quickstep/dock/DockView;->prepareEnterAnimation(Lcom/android/launcher3/LauncherState;ZFZLcom/android/launcher3/anim/PropertySetter;Lcom/android/launcher3/states/StateAnimationConfig;)V

    :cond_2b
    :goto_2b
    iget-boolean v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mIsClearViewEnterAnimationStarted:Z

    if-nez v1, :cond_3e

    iput-boolean v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mIsClearViewEnterAnimationStarted:Z

    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    sget-object v1, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    const-string v2, "OVERVIEW"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->playClearAllEnterAnimation(Lcom/android/launcher3/LauncherState;ZLcom/android/launcher3/states/StateAnimationConfig;)V

    :cond_3e
    return-void
.end method

.method public final updatePaused(Z)V
    .registers 5

    if-nez p1, :cond_1f

    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringX:Landroidx/dynamicanimation/animation/SpringAnimation;

    const/high16 v1, 0x3f800000  # 1.0f

    if-nez v0, :cond_9

    goto :goto_c

    :cond_9
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    :goto_c
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringScale:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-nez v0, :cond_11

    goto :goto_16

    :cond_11
    iget v2, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mFullScreenTaskScale:F

    invoke-virtual {v0, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    :goto_16
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mBackrgoundAlphaAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-nez v0, :cond_1b

    goto :goto_34

    :cond_1b
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    goto :goto_34

    :cond_1f
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mBackrgoundAlphaAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    const/4 v1, 0x0

    if-nez v0, :cond_25

    goto :goto_28

    :cond_25
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    :goto_28
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mSwipeDirectionY:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mSwipeDirectionX:I

    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLastDirectionPointF:Landroid/graphics/PointF;

    iput v1, v0, Landroid/graphics/PointF;->x:F

    iput v1, v0, Landroid/graphics/PointF;->y:F

    :goto_34
    iput-boolean p1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mPaused:Z

    return-void
.end method

.method public final updateRecentViewState(Z)V
    .registers 6

    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v0, p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setOverviewStateEnabled(Z)V

    const/4 v0, 0x0

    if-eqz p1, :cond_2c

    iget-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    sget-object v2, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    iget-object v3, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/launcher3/statemanager/BaseState;->displayOverviewTasksAsGrid(Lcom/android/launcher3/DeviceProfile;)Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/quickstep/views/RecentsView;->setOverviewGridEnabled(Z)V

    iget-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherState;->getOverviewFullscreenProgress()F

    move-result v2

    const/high16 v3, 0x3f800000  # 1.0f

    cmpg-float v2, v2, v3

    if-nez v2, :cond_27

    const/4 v2, 0x1

    goto :goto_28

    :cond_27
    move v2, v0

    :goto_28
    invoke-virtual {v1, v2}, Lcom/android/quickstep/views/RecentsView;->setOverviewFullscreenEnabled(Z)V

    goto :goto_36

    :cond_2c
    iget-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v1, v0}, Lcom/android/quickstep/views/RecentsView;->setOverviewGridEnabled(Z)V

    iget-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v1, v0}, Lcom/android/quickstep/views/RecentsView;->setOverviewFullscreenEnabled(Z)V

    :goto_36
    iget-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v1, p1}, Lcom/android/quickstep/views/RecentsView;->setFreezeViewVisibility(Z)V

    if-eqz p1, :cond_3f

    move v1, v0

    goto :goto_40

    :cond_3f
    const/4 v1, 0x4

    :goto_40
    iget-object v2, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v2, v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setVisibility(I)V

    if-eqz p1, :cond_4c

    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->disallowScrollByTouch(Z)V

    :cond_4c
    return-void
.end method

.method public final updateStiffnessWhenFling()V
    .registers 4

    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringX:Landroidx/dynamicanimation/animation/SpringAnimation;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    move-object v0, v1

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    :goto_b
    const/high16 v2, 0x43480000  # 200.0f

    if-nez v0, :cond_10

    goto :goto_13

    :cond_10
    invoke-virtual {v0, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    :goto_13
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentSpringScale:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-nez v0, :cond_19

    move-object v0, v1

    goto :goto_1d

    :cond_19
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    :goto_1d
    if-nez v0, :cond_20

    goto :goto_23

    :cond_20
    invoke-virtual {v0, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    :goto_23
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mBackgroundScaleSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-nez v0, :cond_29

    move-object v0, v1

    goto :goto_2d

    :cond_29
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    :goto_2d
    if-nez v0, :cond_30

    goto :goto_33

    :cond_30
    invoke-virtual {v0, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    :goto_33
    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mBackrgoundAlphaAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-nez p0, :cond_38

    goto :goto_3c

    :cond_38
    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    :goto_3c
    if-nez v1, :cond_3f

    goto :goto_42

    :cond_3f
    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    :goto_42
    return-void
.end method

.method public final updateSwipeDirection(FFFF)V
    .registers 10

    iget v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mSwipeDirectionY:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_8

    move v0, v1

    goto :goto_9

    :cond_8
    move v0, v2

    :goto_9
    const/4 v3, 0x0

    cmpg-float v4, p3, v3

    if-gez v4, :cond_10

    move v4, v1

    goto :goto_11

    :cond_10
    move v4, v2

    :goto_11
    xor-int/2addr v0, v4

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLastDirectionPointF:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    sub-float v0, p2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v4, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mDirectionChangeFraction:F

    cmpl-float v0, v0, v4

    if-lez v0, :cond_36

    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLastDirectionPointF:Landroid/graphics/PointF;

    iput p2, v0, Landroid/graphics/PointF;->y:F

    cmpl-float p2, p3, v3

    if-lez p2, :cond_2e

    move p2, v1

    goto :goto_2f

    :cond_2e
    move p2, v2

    :goto_2f
    iput p2, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mSwipeDirectionY:I

    goto :goto_36

    :cond_32
    iget-object p3, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLastDirectionPointF:Landroid/graphics/PointF;

    iput p2, p3, Landroid/graphics/PointF;->y:F

    :cond_36
    :goto_36
    iget p2, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mSwipeDirectionX:I

    const/4 p3, 0x4

    if-ne p2, p3, :cond_3d

    move p2, v1

    goto :goto_3e

    :cond_3d
    move p2, v2

    :goto_3e
    cmpl-float p4, p4, v3

    if-lez p4, :cond_43

    goto :goto_44

    :cond_43
    move v1, v2

    :goto_44
    xor-int/2addr p2, v1

    if-eqz p2, :cond_62

    iget-object p2, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLastDirectionPointF:Landroid/graphics/PointF;

    iget p2, p2, Landroid/graphics/PointF;->x:F

    sub-float p2, p1, p2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    iget v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mDirectionChangeFraction:F

    cmpl-float p2, p2, v0

    if-lez p2, :cond_66

    iget-object p2, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLastDirectionPointF:Landroid/graphics/PointF;

    iput p1, p2, Landroid/graphics/PointF;->x:F

    if-lez p4, :cond_5e

    goto :goto_5f

    :cond_5e
    const/4 p3, 0x3

    :goto_5f
    iput p3, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mSwipeDirectionX:I

    goto :goto_66

    :cond_62
    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mLastDirectionPointF:Landroid/graphics/PointF;

    iput p1, p0, Landroid/graphics/PointF;->x:F

    :cond_66
    :goto_66
    return-void
.end method

.method public final updateTaskInfo(Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/quickstep/util/GroupTask;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_4c

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_4c

    :cond_9
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mHasRecentTask:Z

    const/4 p1, 0x0

    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getTaskViewCount()I

    move-result v0

    const/high16 v1, 0x3f800000  # 1.0f

    if-lez v0, :cond_41

    :goto_17
    add-int/lit8 v2, p1, 0x1

    iget-object v3, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v3, p1}, Lcom/android/quickstep/views/RecentsView;->getTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object p1

    instance-of v3, p1, Lcom/android/quickstep/views/OplusTaskViewImpl;

    const/4 v4, 0x0

    if-eqz v3, :cond_27

    check-cast p1, Lcom/android/quickstep/views/OplusTaskViewImpl;

    goto :goto_28

    :cond_27
    move-object p1, v4

    :goto_28
    if-nez p1, :cond_2b

    goto :goto_2e

    :cond_2b
    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :goto_2e
    if-nez p1, :cond_31

    goto :goto_35

    :cond_31
    invoke-virtual {p1}, Lcom/android/quickstep/views/OplusTaskViewImpl;->getHeaderView()Lcom/oplus/quickstep/views/OplusTaskHeaderView;

    move-result-object v4

    :goto_35
    if-nez v4, :cond_38

    goto :goto_3c

    :cond_38
    const/4 p1, 0x0

    invoke-virtual {v4, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :goto_3c
    if-lt v2, v0, :cond_3f

    goto :goto_41

    :cond_3f
    move p1, v2

    goto :goto_17

    :cond_41
    :goto_41
    sget-object p1, Lcom/android/quickstep/views/RecentsView;->ADJACENT_PAGE_HORIZONTAL_OFFSET:Landroid/util/FloatProperty;

    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    :cond_4c
    :goto_4c
    return-void
.end method
