.class public Lcom/android/quickstep/views/OplusTaskViewImpl;
.super Lcom/android/quickstep/views/TaskView;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$PageCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/views/OplusTaskViewImpl$Companion;,
        Lcom/android/quickstep/views/OplusTaskViewImpl$LockEventListener;,
        Lcom/android/quickstep/views/OplusTaskViewImpl$OplusTaskOutlineProvider;,
        Lcom/android/quickstep/views/OplusTaskViewImpl$OplusFullscreenDrawParams;
    }
.end annotation


# static fields
.field private static final ADJACENT_TRANSLATE_X:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private static final ALPHA_APP_ICON_MIN:F = 0.5f

.field private static final ALPHA_MENU_MAX:F = 1.0f

.field private static final ALPHA_MENU_MIN:F = 0.0f

.field private static final CORNER_RADIUS_CHANGED_THRESHOLD:F = 0.99f

.field public static final CORNER_RADIUS_IN_TABLET:F = 1.1f

.field private static final CURVE_INTERPOLATOR:Landroid/animation/TimeInterpolator;

.field public static final Companion:Lcom/android/quickstep/views/OplusTaskViewImpl$Companion;

.field private static final EDGE_SCALE_DOWN_FACTOR:F = 0.03f

.field private static final FOLD_SCREEN_CORNER_RADIUS_CHANGED_THRESHOLD:F = 0.8f

.field private static final ONE_DECIMAL_PLACE:I = 0xa

.field private static final TAG:Ljava/lang/String; = "OplusTaskView"

.field private static final TASK_VIEW_CORNER_TABLET:F = 26.0f


# instance fields
.field private dispatchDrawVisible:Z

.field private headerAnimation:Lcom/oplus/quickstep/anim/TaskHeaderViewAnimation;

.field private isEnterAnimationRunning:Z

.field private isEnterStateAnimRunningCache:Z

.field private isTaskLaunchAnimationRunning:Z

.field private lockStableAlpha:Z

.field private mActivePointerId:I

.field private mAdjacentTranslationValid:Z

.field private mChangeTranslationX:F

.field private mCurveScale:F

.field private mHadAdjacentTransXReset:Z

.field public mHeader:Lcom/oplus/quickstep/views/OplusTaskHeaderView;

.field private mHeaderShowAnimator:Landroid/animation/Animator;

.field private mIsTaskViewDragging:Z

.field private mLastMotion:F

.field private mLockEventListener:Lcom/android/quickstep/views/OplusTaskViewImpl$LockEventListener;

.field private final mLockManager$delegate:Ly2/e;

.field private mPressedAnimation:Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;

.field private mTempProgress:F

.field private mTouchSlop:I

.field private mWorkspaceItemInfo:Lcom/android/launcher3/model/data/WorkspaceItemInfo;

.field private menuView:Lcom/android/quickstep/views/OplusTaskMenuViewImpl;

.field private thumbnailTopMargin:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/quickstep/views/OplusTaskViewImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/quickstep/views/OplusTaskViewImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/quickstep/views/OplusTaskViewImpl;->Companion:Lcom/android/quickstep/views/OplusTaskViewImpl$Companion;

    new-instance v0, Lcom/android/quickstep/views/OplusTaskViewImpl$Companion$ADJACENT_TRANSLATE_X$1;

    invoke-direct {v0}, Lcom/android/quickstep/views/OplusTaskViewImpl$Companion$ADJACENT_TRANSLATE_X$1;-><init>()V

    sput-object v0, Lcom/android/quickstep/views/OplusTaskViewImpl;->ADJACENT_TRANSLATE_X:Landroid/util/FloatProperty;

    sget-object v0, Lcom/android/quickstep/views/j;->a:Lcom/android/quickstep/views/j;

    sput-object v0, Lcom/android/quickstep/views/OplusTaskViewImpl;->CURVE_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/quickstep/views/OplusTaskViewImpl;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/quickstep/views/OplusTaskViewImpl;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/android/quickstep/views/TaskView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object p2, Ly2/g;->c:Ly2/g;

    new-instance p3, Lcom/android/quickstep/views/OplusTaskViewImpl$mLockManager$2;

    invoke-direct {p3, p0}, Lcom/android/quickstep/views/OplusTaskViewImpl$mLockManager$2;-><init>(Lcom/android/quickstep/views/OplusTaskViewImpl;)V

    invoke-static {p2, p3}, Ly2/f;->b(Ly2/g;Lkotlin/jvm/functions/Function0;)Ly2/e;

    move-result-object p2

    iput-object p2, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->mLockManager$delegate:Ly2/e;

    const/4 p2, -0x1

    iput p2, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->mActivePointerId:I

    const/high16 p2, 0x3f800000  # 1.0f

    iput p2, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->mTempProgress:F

    new-instance p2, Lcom/android/launcher/touch/b;

    invoke-direct {p2, p1, p0}, Lcom/android/launcher/touch/b;-><init>(Landroid/content/Context;Lcom/android/quickstep/views/OplusTaskViewImpl;)V

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p2, Lcom/android/quickstep/views/OplusTaskViewImpl$OplusTaskOutlineProvider;

    invoke-direct {p2}, Lcom/android/quickstep/views/OplusTaskViewImpl$OplusTaskOutlineProvider;-><init>()V

    iput-object p2, p0, Lcom/android/quickstep/views/TaskView;->mOutlineProvider:Lcom/android/quickstep/views/TaskView$TaskOutlineProvider;

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    new-instance p2, Lcom/android/quickstep/views/OplusTaskViewImpl$OplusFullscreenDrawParams;

    invoke-direct {p2, p1}, Lcom/android/quickstep/views/OplusTaskViewImpl$OplusFullscreenDrawParams;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/quickstep/views/TaskView;->mCurrentFullscreenParams:Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;

    new-instance p1, Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;

    invoke-direct {p1, p0}, Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;-><init>(Lcom/android/quickstep/views/OplusTaskViewImpl;)V

    iput-object p1, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->mPressedAnimation:Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;

    new-instance p1, Lcom/oplus/quickstep/anim/TaskHeaderViewAnimation;

    invoke-direct {p1, p0}, Lcom/oplus/quickstep/anim/TaskHeaderViewAnimation;-><init>(Lcom/android/quickstep/views/OplusTaskViewImpl;)V

    iput-object p1, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->headerAnimation:Lcom/oplus/quickstep/anim/TaskHeaderViewAnimation;

    invoke-virtual {p0, p0}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p1, p0, Lcom/android/quickstep/views/TaskView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->mTouchSlop:I

    new-instance p1, Lcom/android/quickstep/views/OplusTaskViewImpl$LockEventListener;

    invoke-direct {p1, p0}, Lcom/android/quickstep/views/OplusTaskViewImpl$LockEventListener;-><init>(Lcom/android/quickstep/views/OplusTaskViewImpl;)V

    iput-object p1, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->mLockEventListener:Lcom/android/quickstep/views/OplusTaskViewImpl$LockEventListener;

    return-void
.end method

.method private static final CURVE_INTERPOLATOR$lambda-17(F)F
    .registers 5

    float-to-double v0, p0

    const-wide v2, 0x400921fb54442d18L  # Math.PI

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    neg-double v0, v0

    double-to-float p0, v0

    const/high16 v0, 0x40000000  # 2.0f

    div-float/2addr p0, v0

    const/high16 v0, 0x3f000000  # 0.5f

    add-float/2addr p0, v0

    return p0
.end method

.method private static final _init_$lambda-0(Landroid/content/Context;Lcom/android/quickstep/views/OplusTaskViewImpl;Landroid/view/View;)V
    .registers 6

    const-string p2, "$context"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p2, "this$0"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p2, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p2, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {p0}, Lcom/android/launcher3/util/DisplayController;->getInfo()Lcom/android/launcher3/util/DisplayController$Info;

    move-result-object p0

    iget p0, p0, Lcom/android/launcher3/util/DisplayController$Info;->rotation:I

    const-string p2, "onClick, task="

    invoke-static {p2}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", rotation="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "QuickStep"

    const-string v1, "OplusTaskView"

    invoke-static {v0, v1, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p2

    if-nez p2, :cond_40

    return-void

    :cond_40
    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->confirmSecondSplitSelectApp()Z

    move-result p2

    if-eqz p2, :cond_47

    return-void

    :cond_47
    iget-object p2, p1, Lcom/android/quickstep/views/TaskView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {p2}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p2

    iget-boolean p2, p2, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    const/4 v2, 0x1

    if-nez p2, :cond_6c

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/quickstep/views/RecentsView;->getPagedViewOrientedState()Lcom/android/quickstep/util/RecentsOrientedState;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/quickstep/util/RecentsOrientedState;->isRecentsActivityRotationAllowed()Z

    move-result p2

    if-nez p2, :cond_6c

    if-eq p0, v2, :cond_65

    const/4 p2, 0x3

    if-ne p0, p2, :cond_6c

    :cond_65
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->hasLargeDisplayFeatures()Z

    move-result p0

    if-nez p0, :cond_6c

    goto :goto_6d

    :cond_6c
    const/4 v2, 0x0

    :goto_6d
    if-eqz v2, :cond_83

    sget-object p0, Lcom/oplus/quickstep/gesture/helper/SystemAutoRotateHelper;->INSTANCE:Lcom/oplus/quickstep/gesture/helper/SystemAutoRotateHelper$INSTANCE;

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/quickstep/gesture/helper/SystemAutoRotateHelper;

    invoke-virtual {p0}, Lcom/oplus/quickstep/gesture/helper/SystemAutoRotateHelper;->isAutoRotateOn()Z

    move-result p0

    if-eqz p0, :cond_83

    const-string p0, "onClick(), landscape and !canRecentsActivityRotate, return."

    invoke-static {v0, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_83
    sget-object p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->getAllTaskDismissRunning()Z

    move-result p2

    if-eqz p2, :cond_91

    const-string p0, "onClick, all task dismiss anim is running, return."

    invoke-static {v0, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_91
    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->isTaskDismissAnimRunning()Z

    move-result p0

    if-eqz p0, :cond_9d

    const-string p0, "onClick, task dismiss anim is running, return."

    invoke-static {v0, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_9d
    invoke-virtual {p1}, Lcom/android/quickstep/views/OplusTaskViewImpl;->launchTaskAnimatedAsync()V

    return-void
.end method

.method public static final synthetic access$getADJACENT_TRANSLATE_X$cp()Landroid/util/FloatProperty;
    .registers 1

    sget-object v0, Lcom/android/quickstep/views/OplusTaskViewImpl;->ADJACENT_TRANSLATE_X:Landroid/util/FloatProperty;

    return-object v0
.end method

.method public static final synthetic access$getCURVE_INTERPOLATOR$cp()Landroid/animation/TimeInterpolator;
    .registers 1

    sget-object v0, Lcom/android/quickstep/views/OplusTaskViewImpl;->CURVE_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    return-object v0
.end method

.method public static final synthetic access$getMContext$p$s-844281837(Lcom/android/quickstep/views/OplusTaskViewImpl;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private final getCurveAlphaForCurveInterpolation(FF)F
    .registers 5

    const/high16 p0, 0x3f800000  # 1.0f

    sub-float p2, p0, p2

    mul-float/2addr p2, p1

    sub-float/2addr p0, p2

    const/16 p1, 0xa

    int-to-float p1, p1

    mul-float/2addr p0, p1

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->rint(D)D

    move-result-wide v0

    double-to-float p0, v0

    div-float/2addr p0, p1

    return p0
.end method

.method private final getMLockManager()Lcom/oplus/quickstep/applock/OplusLockManager;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->mLockManager$delegate:Ly2/e;

    invoke-interface {p0}, Ly2/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/quickstep/applock/OplusLockManager;

    return-object p0
.end method

.method public static synthetic l(F)F
    .registers 1

    invoke-static {p0}, Lcom/android/quickstep/views/OplusTaskViewImpl;->CURVE_INTERPOLATOR$lambda-17(F)F

    move-result p0

    return p0
.end method

.method private static final launchTask$lambda-15(Lcom/android/quickstep/views/OplusTaskViewImpl;Ljava/lang/Boolean;)V
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_16

    const-string p1, "OplusTaskView"

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/TaskView;->notifyTaskLaunchFailed(Ljava/lang/String;)V

    :cond_16
    return-void
.end method

.method private static final launchTaskAnimatedAsync$lambda-14(Lcom/android/quickstep/views/OplusTaskViewImpl;Ljava/lang/Boolean;)V
    .registers 4

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "OplusTaskView"

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/TaskView;->notifyTaskLaunchFailed(Ljava/lang/String;)V

    goto :goto_2a

    :cond_12
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    if-eqz v0, :cond_2a

    invoke-static {}, Lcom/oplus/quickstep/memory/OplusSpecialListHelper;->getInstance()Lcom/oplus/quickstep/memory/OplusSpecialListHelper;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, v1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v1, v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v0, v1}, Lcom/oplus/quickstep/memory/OplusSpecialListHelper;->clearTaskRecorderIfNeeded(I)V

    :cond_2a
    :goto_2a
    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusTaskViewImpl;->getOplusRecentsView()Lcom/android/quickstep/views/OplusRecentsViewImpl;

    move-result-object v0

    if-nez v0, :cond_32

    const/4 v0, 0x0

    goto :goto_36

    :cond_32
    invoke-virtual {v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getSpringAnimToRecent()Z

    move-result v0

    :goto_36
    const-string v1, "it"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4e

    if-eqz v0, :cond_4e

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusTaskViewImpl;->getOplusRecentsView()Lcom/android/quickstep/views/OplusRecentsViewImpl;

    move-result-object p0

    if-nez p0, :cond_4a

    goto :goto_4e

    :cond_4a
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setWaitTaskAnimationStart(Z)V

    :cond_4e
    :goto_4e
    return-void
.end method

.method public static synthetic m(Lcom/android/quickstep/views/OplusTaskViewImpl;ILcom/android/systemui/shared/recents/model/Task;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/quickstep/views/OplusTaskViewImpl;->onTaskListVisibilityChanged$lambda-10(Lcom/android/quickstep/views/OplusTaskViewImpl;ILcom/android/systemui/shared/recents/model/Task;)V

    return-void
.end method

.method public static synthetic n(Lcom/android/quickstep/views/OplusTaskViewImpl;Ljava/lang/Boolean;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/quickstep/views/OplusTaskViewImpl;->launchTaskAnimatedAsync$lambda-14(Lcom/android/quickstep/views/OplusTaskViewImpl;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic o(Lcom/android/quickstep/views/OplusTaskViewImpl;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/quickstep/views/OplusTaskViewImpl;->onFinishInflate$lambda-6(Lcom/android/quickstep/views/OplusTaskViewImpl;Landroid/view/View;)V

    return-void
.end method

.method private static final onFinishInflate$lambda-6(Lcom/android/quickstep/views/OplusTaskViewImpl;Landroid/view/View;)V
    .registers 2

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/quickstep/views/TaskView;->mIconView:Lcom/android/quickstep/views/IconView;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/OplusTaskViewImpl;->showTaskMenu(Lcom/android/quickstep/views/IconView;)Z

    return-void
.end method

.method private static final onTaskListVisibilityChanged$lambda-10(Lcom/android/quickstep/views/OplusTaskViewImpl;ILcom/android/systemui/shared/recents/model/Task;)V
    .registers 4

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "task"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mIconView:Lcom/android/quickstep/views/IconView;

    iget-object p2, p2, Lcom/android/systemui/shared/recents/model/Task;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0, p2}, Lcom/android/quickstep/views/OplusTaskViewImpl;->setIcon(Lcom/android/quickstep/views/IconView;Landroid/graphics/drawable/Drawable;)V

    iget-object p2, p0, Lcom/android/quickstep/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {p0, p2}, Lcom/android/quickstep/views/OplusTaskViewImpl;->setTitle(Lcom/android/systemui/shared/recents/model/Task;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onTaskListVisibilityChanged: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/quickstep/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", changes="

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OplusTaskView"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static final onTaskListVisibilityChanged$lambda-9(Lcom/android/quickstep/views/OplusTaskViewImpl;Lcom/android/systemui/shared/recents/model/ThumbnailData;)V
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mSnapshotView:Lcom/android/quickstep/views/TaskThumbnailView;

    iget-object p0, p0, Lcom/android/quickstep/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v0, p0, p1}, Lcom/android/quickstep/views/TaskThumbnailView;->setThumbnail(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/ThumbnailData;)V

    return-void
.end method

.method public static synthetic p(Lcom/android/quickstep/views/OplusTaskViewImpl;Lcom/android/systemui/shared/recents/model/ThumbnailData;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/quickstep/views/OplusTaskViewImpl;->onTaskListVisibilityChanged$lambda-9(Lcom/android/quickstep/views/OplusTaskViewImpl;Lcom/android/systemui/shared/recents/model/ThumbnailData;)V

    return-void
.end method

.method public static synthetic q(Lcom/android/quickstep/views/OplusTaskViewImpl;Ljava/lang/Boolean;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/quickstep/views/OplusTaskViewImpl;->launchTask$lambda-15(Lcom/android/quickstep/views/OplusTaskViewImpl;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic r(Landroid/content/Context;Lcom/android/quickstep/views/OplusTaskViewImpl;Landroid/view/View;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/quickstep/views/OplusTaskViewImpl;->_init_$lambda-0(Landroid/content/Context;Lcom/android/quickstep/views/OplusTaskViewImpl;Landroid/view/View;)V

    return-void
.end method

.method private final setCurveScale(F)V
    .registers 2

    iput p1, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->mCurveScale:F

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setScaleX(F)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setScaleY(F)V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .registers 1

    return-void
.end method

.method public final animateToNormalIfNeed()V
    .registers 2

    iget-object p0, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->mPressedAnimation:Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;

    if-nez p0, :cond_5

    goto :goto_e

    :cond_5
    invoke-virtual {p0}, Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;->animateToNormal()V

    :cond_e
    :goto_e
    return-void
.end method

.method public applyScale()V
    .registers 3

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getPersistentScale()F

    move-result v0

    const/high16 v1, 0x3f800000  # 1.0f

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/quickstep/views/TaskView;->mDismissScale:F

    mul-float/2addr v0, v1

    cmpg-float v1, v0, v0

    if-nez v1, :cond_10

    const/4 v1, 0x1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    if-eqz v1, :cond_19

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setScaleX(F)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setScaleY(F)V

    :cond_19
    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusTaskViewImpl;->updateSnapshotRadius()V

    return-void
.end method

.method public final cancelAllAnimation()V
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->mPressedAnimation:Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;

    if-nez p0, :cond_5

    goto :goto_8

    :cond_5
    invoke-virtual {p0}, Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;->cancelAllAnimator()V

    :goto_8
    return-void
.end method

.method public final cancelLightningAnimation()V
    .registers 2

    iget-object p0, p0, Lcom/android/quickstep/views/TaskView;->mSnapshotView:Lcom/android/quickstep/views/TaskThumbnailView;

    instance-of v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;

    if-eqz v0, :cond_9

    check-cast p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    if-nez p0, :cond_d

    goto :goto_10

    :cond_d
    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->cancelLightningAnimation()V

    :goto_10
    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 3

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->dispatchDrawVisible:Z

    if-nez v0, :cond_a

    return-void

    :cond_a
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final getCurveScale()F
    .registers 1

    iget p0, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->mCurveScale:F

    return p0
.end method

.method public final getDispatchDrawVisible()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->dispatchDrawVisible:Z

    return p0
.end method

.method public final getFullscreenParams()Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;
    .registers 2

    iget-object p0, p0, Lcom/android/quickstep/views/TaskView;->mCurrentFullscreenParams:Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;

    const-string v0, "mCurrentFullscreenParams"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getHeaderView()Lcom/oplus/quickstep/views/OplusTaskHeaderView;
    .registers 1

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusTaskViewImpl;->getMHeader()Lcom/oplus/quickstep/views/OplusTaskHeaderView;

    move-result-object p0

    return-object p0
.end method

.method public getItemInfo()Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .registers 5

    iget-object v0, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->mWorkspaceItemInfo:Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v0, :cond_2c

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_a

    :cond_8
    :goto_8
    move v1, v2

    goto :goto_2a

    :cond_a
    invoke-virtual {v0}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_11

    goto :goto_8

    :cond_11
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v3, v3, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-static {v3}, Lcom/android/quickstep/TaskUtils;->getLaunchComponentKeyForTask(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Lcom/android/launcher3/util/ComponentKey;

    move-result-object v3

    iget-object v3, v3, Lcom/android/launcher3/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v1, :cond_8

    :goto_2a
    if-nez v1, :cond_32

    :cond_2c
    invoke-super {p0}, Lcom/android/quickstep/views/TaskView;->getItemInfo()Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->mWorkspaceItemInfo:Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    :cond_32
    iget-object p0, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->mWorkspaceItemInfo:Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final getLockStableAlpha()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->lockStableAlpha:Z

    return p0
.end method

.method public final getMHeader()Lcom/oplus/quickstep/views/OplusTaskHeaderView;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->mHeader:Lcom/oplus/quickstep/views/OplusTaskHeaderView;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const-string p0, "mHeader"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getMenuView()Lcom/android/quickstep/views/OplusTaskMenuViewImpl;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->menuView:Lcom/android/quickstep/views/OplusTaskMenuViewImpl;

    return-object p0
.end method

.method public final getOplusRecentsView()Lcom/android/quickstep/views/OplusRecentsViewImpl;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object p0

    instance-of v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    if-eqz v0, :cond_b

    check-cast p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return-object p0
.end method

.method public final getThumbnailTopMargin()I
    .registers 1

    iget p0, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->thumbnailTopMargin:I

    return p0
.end method

.method public interceptOnLayout()Z
    .registers 4

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-super {p0}, Lcom/android/quickstep/views/TaskView;->interceptOnLayout()Z

    move-result p0

    return p0

    :cond_d
    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mSnapshotView:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x3f000000  # 0.5f

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setPivotX(F)V

    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mSnapshotView:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setPivotY(F)V

    const/4 p0, 0x1

    return p0
.end method

.method public final isEnterAnimationRunning()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->isEnterAnimationRunning:Z

    return p0
.end method

.method public final isEnterStateAnimRunningCache()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->isEnterStateAnimRunningCache:Z

    return p0
.end method

.method public final isLocked()Z
    .registers 2

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskViewImpl;->getMLockManager()Lcom/oplus/quickstep/applock/OplusLockManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oplus/quickstep/applock/OplusLockManager;->isApplocked(Lcom/android/quickstep/views/OplusTaskViewImpl;)Z

    move-result p0

    return p0
.end method

.method public isRunningTask()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public final isSupportQuickStartup()Z
    .registers 3

    iget-object p0, p0, Lcom/android/quickstep/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_7

    goto :goto_c

    :cond_7
    iget-boolean p0, p0, Lcom/android/systemui/shared/recents/model/Task;->isSupportQuickStartup:Z

    if-ne p0, v1, :cond_c

    move v0, v1

    :cond_c
    :goto_c
    return v0
.end method

.method public final isTaskLaunchAnimationRunning()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->isTaskLaunchAnimationRunning:Z

    return p0
.end method

.method public final isTaskViewDragging()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->mIsTaskViewDragging:Z

    return p0
.end method

.method public final isViewPressed()Z
    .registers 3

    iget-object p0, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->mPressedAnimation:Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_7

    goto :goto_e

    :cond_7
    invoke-virtual {p0}, Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;->isPressed()Z

    move-result p0

    if-ne p0, v1, :cond_e

    move v0, v1

    :cond_e
    :goto_e
    return v0
.end method

.method public final launchTask(ZZ)Lcom/android/launcher3/util/RunnableList;
    .registers 5

    new-instance v0, Lcom/android/quickstep/views/k;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/quickstep/views/k;-><init>(Lcom/android/quickstep/views/OplusTaskViewImpl;I)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/quickstep/views/OplusTaskViewImpl;->launchTask(ZZLjava/util/function/Consumer;)Lcom/android/launcher3/util/RunnableList;

    move-result-object p0

    return-object p0
.end method

.method public final launchTask(ZZLjava/util/function/Consumer;)Lcom/android/launcher3/util/RunnableList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/android/launcher3/util/RunnableList;"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_c

    invoke-virtual {p0, p3, p2}, Lcom/android/quickstep/views/TaskView;->launchTask(Ljava/util/function/Consumer;Z)V

    const/4 p0, 0x0

    return-object p0

    :cond_c
    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusTaskViewImpl;->launchTaskAnimated()Lcom/android/launcher3/util/RunnableList;

    move-result-object p0

    return-object p0
.end method

.method public launchTaskAnimated()Lcom/android/launcher3/util/RunnableList;
    .registers 4

    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/statistics/LauncherStatistics;->statStartAppFromTask()V

    sget-object v0, Lcom/android/common/util/LauncherBooster;->INSTANCE:Lcom/android/common/util/LauncherBooster;

    invoke-virtual {v0}, Lcom/android/common/util/LauncherBooster;->getGpu()Lcom/android/common/util/LauncherBooster$GpuBoost;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    const/4 v2, 0x0

    if-nez v1, :cond_15

    goto :goto_1e

    :cond_15
    iget-object v1, v1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-nez v1, :cond_1a

    goto :goto_1e

    :cond_1a
    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object v2

    :goto_1e
    invoke-virtual {v0, v2}, Lcom/android/common/util/LauncherBooster$GpuBoost;->setStartAppPackage(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/android/quickstep/views/TaskView;->launchTaskAnimated()Lcom/android/launcher3/util/RunnableList;

    move-result-object p0

    return-object p0
.end method

.method public launchTaskAnimatedAsync()V
    .registers 6

    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/statistics/LauncherStatistics;->statStartAppFromTask()V

    sget-object v0, Lcom/android/common/util/LauncherBooster;->INSTANCE:Lcom/android/common/util/LauncherBooster;

    invoke-virtual {v0}, Lcom/android/common/util/LauncherBooster;->getGpu()Lcom/android/common/util/LauncherBooster$GpuBoost;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    const/4 v2, 0x0

    if-nez v1, :cond_1b

    :goto_19
    move-object v1, v2

    goto :goto_24

    :cond_1b
    iget-object v1, v1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-nez v1, :cond_20

    goto :goto_19

    :cond_20
    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object v1

    :goto_24
    invoke-virtual {v0, v1}, Lcom/android/common/util/LauncherBooster$GpuBoost;->setStartAppPackage(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v0, p0, v2}, Lcom/android/launcher3/BaseDraggingActivity;->getActivityLaunchOptions(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/ActivityOptionsWrapper;

    move-result-object v0

    const-string v1, "mActivity.getActivityLaunchOptions(this, null)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/launcher3/util/ActivityOptionsWrapper;->options:Landroid/app/ActivityOptions;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getDisplay()Landroid/view/Display;

    move-result-object v2

    if-nez v2, :cond_3c

    const/4 v2, 0x0

    goto :goto_44

    :cond_3c
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    :goto_44
    invoke-virtual {v1, v2}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/quickstep/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, v2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget-object v0, v0, Lcom/android/launcher3/util/ActivityOptionsWrapper;->options:Landroid/app/ActivityOptions;

    new-instance v3, Lcom/android/quickstep/views/k;

    const/4 v4, 0x2

    invoke-direct {v3, p0, v4}, Lcom/android/quickstep/views/k;-><init>(Lcom/android/quickstep/views/OplusTaskViewImpl;I)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {v1, v2, v0, v3, p0}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->startActivityFromRecentsAsync(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/ActivityOptions;Ljava/util/function/Consumer;Landroid/os/Handler;)V

    return-void
.end method

.method public final makeTaskHeaderHidden()V
    .registers 4

    const-string v0, "QuickStep"

    const-string v1, "OplusTaskView"

    const-string v2, "makeTaskHeaderHidden()"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->headerAnimation:Lcom/oplus/quickstep/anim/TaskHeaderViewAnimation;

    if-nez p0, :cond_e

    goto :goto_17

    :cond_e
    invoke-virtual {p0}, Lcom/oplus/quickstep/anim/TaskHeaderViewAnimation;->isHidden()Z

    move-result v0

    if-nez v0, :cond_17

    invoke-virtual {p0}, Lcom/oplus/quickstep/anim/TaskHeaderViewAnimation;->animateToHide()V

    :cond_17
    :goto_17
    return-void
.end method

.method public final makeTaskHeaderHideWithoutAnimation()V
    .registers 4

    const-string v0, "QuickStep"

    const-string v1, "OplusTaskView"

    const-string v2, "makeTaskHeaderHideWithoutAnimation()"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->headerAnimation:Lcom/oplus/quickstep/anim/TaskHeaderViewAnimation;

    if-nez p0, :cond_e

    goto :goto_17

    :cond_e
    invoke-virtual {p0}, Lcom/oplus/quickstep/anim/TaskHeaderViewAnimation;->isHidden()Z

    move-result v0

    if-nez v0, :cond_17

    invoke-virtual {p0}, Lcom/oplus/quickstep/anim/TaskHeaderViewAnimation;->hideHeaderWithoutAnimation()Z

    :cond_17
    :goto_17
    return-void
.end method

.method public final makeTaskHeaderShown()V
    .registers 4

    const-string v0, "QuickStep"

    const-string v1, "OplusTaskView"

    const-string v2, "makeTaskHeaderShown()"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->headerAnimation:Lcom/oplus/quickstep/anim/TaskHeaderViewAnimation;

    if-nez p0, :cond_e

    goto :goto_17

    :cond_e
    invoke-virtual {p0}, Lcom/oplus/quickstep/anim/TaskHeaderViewAnimation;->isHidden()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Lcom/oplus/quickstep/anim/TaskHeaderViewAnimation;->animateToShow()V

    :cond_17
    :goto_17
    return-void
.end method

.method public final makeTaskHeaderShownWithoutAnimation()V
    .registers 4

    const-string v0, "QuickStep"

    const-string v1, "OplusTaskView"

    const-string v2, "makeTaskHeaderShownWithoutAnimation()"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->headerAnimation:Lcom/oplus/quickstep/anim/TaskHeaderViewAnimation;

    if-nez p0, :cond_e

    goto :goto_1b

    :cond_e
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oplus/quickstep/anim/TaskHeaderViewAnimation;->setForceNotShowHeader(Z)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/anim/TaskHeaderViewAnimation;->isHidden()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Lcom/oplus/quickstep/anim/TaskHeaderViewAnimation;->showHeaderWithoutAnimation()Z

    :cond_1b
    :goto_1b
    return-void
.end method

.method public offerTouchToChildren(Landroid/view/MotionEvent;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public onAttachedToWindow()V
    .registers 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    invoke-static {}, Lcom/oplus/quickstep/events/EventBus;->getDefault()Lcom/oplus/quickstep/events/EventBus;

    move-result-object v0

    iget-object p0, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->mLockEventListener:Lcom/android/quickstep/views/OplusTaskViewImpl$LockEventListener;

    invoke-virtual {v0, p0}, Lcom/oplus/quickstep/events/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    invoke-static {}, Lcom/oplus/quickstep/events/EventBus;->getDefault()Lcom/oplus/quickstep/events/EventBus;

    move-result-object v0

    iget-object p0, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->mLockEventListener:Lcom/android/quickstep/views/OplusTaskViewImpl$LockEventListener;

    invoke-virtual {v0, p0}, Lcom/oplus/quickstep/events/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onFinishInflate()V
    .registers 4

    invoke-super {p0}, Lcom/android/quickstep/views/TaskView;->onFinishInflate()V

    const v0, 0x7f0a03a1

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.oplus_task_header)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/OplusTaskViewImpl;->setMHeader(Lcom/oplus/quickstep/views/OplusTaskHeaderView;)V

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusTaskViewImpl;->getMHeader()Lcom/oplus/quickstep/views/OplusTaskHeaderView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getMenuBtn()Landroid/widget/ImageButton;

    move-result-object v0

    new-instance v1, Lcom/android/launcher/v;

    invoke-direct {v1, p0}, Lcom/android/launcher/v;-><init>(Lcom/android/quickstep/views/OplusTaskViewImpl;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "resources"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0015

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/oplus/quickstep/utils/OplusTaskUtils;->convertDpToPixel(Landroid/content/res/Resources;I)I

    move-result v0

    goto :goto_51

    :cond_45
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070291

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    :goto_51
    iput v0, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->thumbnailTopMargin:I

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 6

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v0

    instance-of v1, v0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    if-eqz v1, :cond_b

    check-cast v0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_12

    :cond_10
    move v1, v2

    goto :goto_2f

    :cond_12
    invoke-virtual {v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isScrolling()Z

    move-result v3

    if-nez v3, :cond_2c

    invoke-virtual {v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getDockView()Lcom/oplus/quickstep/dock/DockView;

    move-result-object v0

    if-nez v0, :cond_20

    :cond_1e
    move v0, v2

    goto :goto_27

    :cond_20
    invoke-virtual {v0}, Lcom/oplus/quickstep/dock/DockView;->isScrolling()Z

    move-result v0

    if-ne v0, v1, :cond_1e

    move v0, v1

    :goto_27
    if-eqz v0, :cond_2a

    goto :goto_2c

    :cond_2a
    move v0, v2

    goto :goto_2d

    :cond_2c
    :goto_2c
    move v0, v1

    :goto_2d
    if-ne v0, v1, :cond_10

    :goto_2f
    if-eqz v1, :cond_32

    return-void

    :cond_32
    invoke-super {p0, p1}, Lcom/android/quickstep/views/TaskView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    return-void
.end method

.method public onPageScroll(Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$ScrollState;Z)V
    .registers 8

    const-string p2, "scrollState"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget p2, p0, Lcom/android/quickstep/views/TaskView;->mModalness:F

    const/4 v0, 0x0

    cmpl-float p2, p2, v0

    if-gtz p2, :cond_ad

    iget-boolean p2, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->dispatchDrawVisible:Z

    if-nez p2, :cond_12

    goto/16 :goto_ad

    :cond_12
    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusTaskViewImpl;->animateToNormalIfNeed()V

    sget-object p2, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {p2}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result p2

    if-eqz p2, :cond_1e

    return-void

    :cond_1e
    sget-object p2, Lcom/android/quickstep/views/OplusTaskViewImpl;->CURVE_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {p1}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$ScrollState;->getLinearInterpolation()F

    move-result p1

    invoke-interface {p2, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p1

    sget-object p2, Lcom/android/quickstep/views/OplusTaskViewImpl;->Companion:Lcom/android/quickstep/views/OplusTaskViewImpl$Companion;

    invoke-static {p2, p1}, Lcom/android/quickstep/views/OplusTaskViewImpl$Companion;->access$getCurveScaleForCurveInterpolation(Lcom/android/quickstep/views/OplusTaskViewImpl$Companion;F)F

    move-result p2

    iget-object v1, p0, Lcom/android/quickstep/views/TaskView;->mSnapshotView:Lcom/android/quickstep/views/TaskThumbnailView;

    const v2, 0x3ecccccd  # 0.4f

    mul-float/2addr v2, p1

    invoke-virtual {v1, v2}, Lcom/android/quickstep/views/TaskThumbnailView;->setDimAlpha(F)V

    iget-object v1, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->mPressedAnimation:Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_3e

    goto :goto_45

    :cond_3e
    invoke-virtual {v1}, Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;->isNormalStarted()Z

    move-result v1

    if-ne v1, v4, :cond_45

    move v3, v4

    :cond_45
    :goto_45
    if-eqz v3, :cond_50

    iget-object v1, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->mPressedAnimation:Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, p2}, Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;->setNormalScale(F)V

    goto :goto_57

    :cond_50
    iget-boolean v1, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->isTaskLaunchAnimationRunning:Z

    if-nez v1, :cond_57

    invoke-direct {p0, p2}, Lcom/android/quickstep/views/OplusTaskViewImpl;->setCurveScale(F)V

    :cond_57
    :goto_57
    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusTaskViewImpl;->getMHeader()Lcom/oplus/quickstep/views/OplusTaskHeaderView;

    move-result-object p2

    invoke-virtual {p2, v2}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->setTitleTextColor(F)V

    invoke-virtual {p2}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getTaskIcon()Lcom/android/quickstep/views/OplusIconView;

    move-result-object v1

    const/high16 v2, 0x3f000000  # 0.5f

    invoke-direct {p0, p1, v2}, Lcom/android/quickstep/views/OplusTaskViewImpl;->getCurveAlphaForCurveInterpolation(FF)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p2}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getLockIcon()Lcom/android/quickstep/views/OplusIconView;

    move-result-object v1

    invoke-direct {p0, p1, v0}, Lcom/android/quickstep/views/OplusTaskViewImpl;->getCurveAlphaForCurveInterpolation(FF)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p2}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getMenuBtn()Landroid/widget/ImageButton;

    move-result-object v1

    invoke-direct {p0, p1, v0}, Lcom/android/quickstep/views/OplusTaskViewImpl;->getCurveAlphaForCurveInterpolation(FF)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setAlpha(F)V

    invoke-virtual {p2}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getMiniWindowBtn()Landroid/widget/ImageButton;

    move-result-object v1

    invoke-direct {p0, p1, v0}, Lcom/android/quickstep/views/OplusTaskViewImpl;->getCurveAlphaForCurveInterpolation(FF)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setAlpha(F)V

    invoke-virtual {p2}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getSplitWindowBtn()Landroid/widget/ImageButton;

    move-result-object v1

    invoke-direct {p0, p1, v0}, Lcom/android/quickstep/views/OplusTaskViewImpl;->getCurveAlphaForCurveInterpolation(FF)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setAlpha(F)V

    invoke-virtual {p2}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getScaleToBigBtn()Landroid/widget/ImageButton;

    move-result-object v1

    invoke-direct {p0, p1, v0}, Lcom/android/quickstep/views/OplusTaskViewImpl;->getCurveAlphaForCurveInterpolation(FF)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setAlpha(F)V

    invoke-virtual {p2}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getScaleToSmallBtn()Landroid/widget/ImageButton;

    move-result-object p2

    invoke-direct {p0, p1, v0}, Lcom/android/quickstep/views/OplusTaskViewImpl;->getCurveAlphaForCurveInterpolation(FF)F

    move-result p0

    invoke-virtual {p2, p0}, Landroid/widget/ImageButton;->setAlpha(F)V

    :cond_ad
    :goto_ad
    return-void
.end method

.method public onTaskListVisibilityChanged(ZI)V
    .registers 9

    iget-boolean v0, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->dispatchDrawVisible:Z

    const/4 v1, 0x1

    if-nez v0, :cond_9

    if-eqz p1, :cond_9

    move v2, v1

    goto :goto_a

    :cond_9
    const/4 v2, 0x0

    :goto_a
    if-eq v0, p1, :cond_11

    iput-boolean p1, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->dispatchDrawVisible:Z

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_11
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_5b

    const-string v0, "onTaskListVisibilityChanged: id ="

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/android/quickstep/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    if-nez v4, :cond_23

    goto :goto_27

    :cond_23
    iget-object v4, v4, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-nez v4, :cond_29

    :goto_27
    move-object v4, v3

    goto :goto_2f

    :cond_29
    iget v4, v4, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_2f
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", visible = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", dispatchDrawVisible = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->dispatchDrawVisible:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", alpha = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "QuickStep"

    const-string v5, "OplusTaskView"

    invoke-static {v4, v5, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5b
    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusTaskViewImpl;->getMHeader()Lcom/oplus/quickstep/views/OplusTaskHeaderView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->hideCOUIToolTips()V

    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    if-nez v0, :cond_67

    return-void

    :cond_67
    if-eqz v2, :cond_6e

    iget v0, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->mTempProgress:F

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/OplusTaskViewImpl;->setFullscreenProgress(F)V

    :cond_6e
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->cancelPendingLoadTasks()V

    const/4 v0, 0x2

    if-eqz p1, :cond_ba

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusTaskViewImpl;->getMHeader()Lcom/oplus/quickstep/views/OplusTaskHeaderView;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusTaskViewImpl;->isLocked()Z

    move-result v2

    invoke-virtual {p1, v2}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->updateLockIconVisibility(Z)V

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

    if-eqz v0, :cond_a6

    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    new-instance v3, Lcom/android/quickstep/views/k;

    invoke-direct {v3, p0, v1}, Lcom/android/quickstep/views/k;-><init>(Lcom/android/quickstep/views/OplusTaskViewImpl;I)V

    invoke-virtual {v2, v0, v3}, Lcom/android/quickstep/TaskThumbnailCache;->updateThumbnailInBackground(Lcom/android/systemui/shared/recents/model/Task;Ljava/util/function/Consumer;)Lcom/android/quickstep/util/CancellableTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/views/TaskView;->mThumbnailLoadRequest:Lcom/android/quickstep/util/CancellableTask;

    :cond_a6
    invoke-virtual {p0, p2, v1}, Lcom/android/quickstep/views/TaskView;->needsUpdate(II)Z

    move-result v0

    if-eqz v0, :cond_d7

    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    new-instance v1, Lcom/android/quickstep/views/u;

    invoke-direct {v1, p0, p2}, Lcom/android/quickstep/views/u;-><init>(Lcom/android/quickstep/views/OplusTaskViewImpl;I)V

    invoke-virtual {p1, v0, v1}, Lcom/android/quickstep/TaskIconCache;->updateIconInBackground(Lcom/android/systemui/shared/recents/model/Task;Ljava/util/function/Consumer;)Lcom/android/quickstep/util/CancellableTask;

    move-result-object p1

    iput-object p1, p0, Lcom/android/quickstep/views/TaskView;->mIconLoadRequest:Lcom/android/quickstep/util/CancellableTask;

    goto :goto_d7

    :cond_ba
    invoke-virtual {p0, p2, v0}, Lcom/android/quickstep/views/TaskView;->needsUpdate(II)Z

    move-result p1

    if-eqz p1, :cond_cc

    iget-object p1, p0, Lcom/android/quickstep/views/TaskView;->mSnapshotView:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {p1, v3, v3}, Lcom/android/quickstep/views/TaskThumbnailView;->setThumbnail(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/ThumbnailData;)V

    iget-object p1, p0, Lcom/android/quickstep/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iput-object v3, p1, Lcom/android/systemui/shared/recents/model/Task;->thumbnail:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    :cond_cc
    invoke-virtual {p0, p2, v1}, Lcom/android/quickstep/views/TaskView;->needsUpdate(II)Z

    move-result p1

    if-eqz p1, :cond_d7

    iget-object p1, p0, Lcom/android/quickstep/views/TaskView;->mIconView:Lcom/android/quickstep/views/IconView;

    invoke-virtual {p0, p1, v3}, Lcom/android/quickstep/views/OplusTaskViewImpl;->setIcon(Lcom/android/quickstep/views/IconView;Landroid/graphics/drawable/Drawable;)V

    :cond_d7
    :goto_d7
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6

    const-string/jumbo v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "ev"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->mPressedAnimation:Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;

    const/4 v0, 0x0

    if-nez p1, :cond_11

    return v0

    :cond_11
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-nez p1, :cond_3a

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getPagedOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object p1

    invoke-interface {p1, p2, v0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryDirection(Landroid/view/MotionEvent;I)F

    move-result p1

    iput p1, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->mLastMotion:F

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->mActivePointerId:I

    iget-object p1, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->mPressedAnimation:Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget p2, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->mCurveScale:F

    invoke-virtual {p1, p2}, Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;->setNormalScale(F)V

    iget-object p0, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->mPressedAnimation:Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;->animateToPressed()V

    goto :goto_96

    :cond_3a
    const/4 v1, 0x2

    const/4 v2, -0x1

    if-ne p1, v1, :cond_6e

    iget-object v1, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->mPressedAnimation:Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_6e

    iget p1, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->mActivePointerId:I

    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result p1

    if-eq p1, v2, :cond_96

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getPagedOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v1

    invoke-interface {v1, p2, p1}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryDirection(Landroid/view/MotionEvent;I)F

    move-result p1

    iget p2, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->mLastMotion:F

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-int p1, p1

    iget p2, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->mTouchSlop:I

    if-le p1, p2, :cond_96

    iget-object p0, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->mPressedAnimation:Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;->animateToNormal()V

    goto :goto_96

    :cond_6e
    iget-object v1, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->mPressedAnimation:Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_96

    iget-boolean v1, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->mIsTaskViewDragging:Z

    if-nez v1, :cond_96

    const/4 v1, 0x1

    if-eq p1, v1, :cond_86

    const/4 v1, 0x3

    if-eq p1, v1, :cond_86

    const/4 v1, 0x5

    if-ne p1, v1, :cond_96

    :cond_86
    iget p1, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->mActivePointerId:I

    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result p1

    if-eq p1, v2, :cond_96

    iget-object p0, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->mPressedAnimation:Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;->animateToNormal()V

    :cond_96
    :goto_96
    return v0
.end method

.method public final resetPressedScaleIfNeed()V
    .registers 2

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusTaskViewImpl;->cancelAllAnimation()V

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setScaleX(F)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setScaleY(F)V

    return-void
.end method

.method public resetViewTransforms()V
    .registers 4

    invoke-super {p0}, Lcom/android/quickstep/views/TaskView;->resetViewTransforms()V

    iget-object v0, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->headerAnimation:Lcom/oplus/quickstep/anim/TaskHeaderViewAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_b

    :cond_9
    move v1, v2

    goto :goto_11

    :cond_b
    invoke-virtual {v0}, Lcom/oplus/quickstep/anim/TaskHeaderViewAnimation;->showHeaderWithoutAnimation()Z

    move-result v0

    if-ne v0, v1, :cond_9

    :goto_11
    if-nez v1, :cond_1a

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusTaskViewImpl;->getMHeader()Lcom/oplus/quickstep/views/OplusTaskHeaderView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->reset()V

    :cond_1a
    const/high16 v0, -0x40800000  # -1.0f

    iput v0, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->mChangeTranslationX:F

    iput-boolean v2, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->mHadAdjacentTransXReset:Z

    iput-boolean v2, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->isEnterStateAnimRunningCache:Z

    iput-boolean v2, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->mAdjacentTranslationValid:Z

    iput-boolean v2, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->lockStableAlpha:Z

    return-void
.end method

.method public final setAdjacentTranslationX(F)V
    .registers 6

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isInternalLogOpen()Z

    move-result v0

    if-eqz v0, :cond_4e

    const-string v0, "setAdjacentTranslationX(), changeTransX="

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->mChangeTranslationX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", curTransX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", transX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", isEnterStateCache="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->isEnterStateAnimRunningCache:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mHadAdjacentReset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->mHadAdjacentTransXReset:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", adjacentTransValid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->mAdjacentTranslationValid:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickStep"

    const-string v2, "OplusTaskView"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4e
    iget-boolean v0, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->mHadAdjacentTransXReset:Z

    if-eqz v0, :cond_56

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    return-void

    :cond_56
    iget-boolean v0, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->isEnterStateAnimRunningCache:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_66

    sget-boolean v0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->isEnterStateAnimRunning:Z

    if-nez v0, :cond_66

    iput p1, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->mChangeTranslationX:F

    iput-boolean v2, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->mAdjacentTranslationValid:Z

    iput-boolean v1, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->isEnterStateAnimRunningCache:Z

    :cond_66
    iget-boolean v0, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->mAdjacentTranslationValid:Z

    if-nez v0, :cond_6b

    return-void

    :cond_6b
    iget v0, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->mChangeTranslationX:F

    cmpl-float v3, p1, v0

    if-ltz v3, :cond_76

    sub-float/2addr p1, v0

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    goto :goto_83

    :cond_76
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    const/high16 v0, 0x3f800000  # 1.0f

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_81

    move v1, v2

    :cond_81
    iput-boolean v1, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->mHadAdjacentTransXReset:Z

    :goto_83
    return-void
.end method

.method public final setDispatchDrawVisible(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->dispatchDrawVisible:Z

    return-void
.end method

.method public final setEnterAnimationRunning(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->isEnterAnimationRunning:Z

    return-void
.end method

.method public final setEnterStateAnimRunningCache(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->isEnterStateAnimRunningCache:Z

    return-void
.end method

.method public setFullscreenProgress(F)V
    .registers 4

    iget-boolean v0, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->dispatchDrawVisible:Z

    if-nez v0, :cond_7

    iput p1, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->mTempProgress:F

    return-void

    :cond_7
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-static {p1, v0, v1}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result p1

    iput p1, p0, Lcom/android/quickstep/views/TaskView;->mFullscreenProgress:F

    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mIconView:Lcom/android/quickstep/views/IconView;

    cmpg-float v1, p1, v1

    if-gez v1, :cond_18

    const/4 v1, 0x0

    goto :goto_19

    :cond_18
    const/4 v1, 0x4

    :goto_19
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mSnapshotView:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskThumbnailView;->getTaskOverlay()Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;->setFullscreenProgress(F)V

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusTaskViewImpl;->updateSnapshotRadius()V

    iget-object p1, p0, Lcom/android/quickstep/views/TaskView;->mOutlineProvider:Lcom/android/quickstep/views/TaskView$TaskOutlineProvider;

    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mCurrentFullscreenParams:Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;

    iget-object v1, p0, Lcom/android/quickstep/views/TaskView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v1

    iget v1, v1, Lcom/android/launcher3/DeviceProfile;->overviewTaskThumbnailTopMarginPx:I

    invoke-virtual {p1, v0, v1}, Lcom/android/quickstep/views/TaskView$TaskOutlineProvider;->updateParams(Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;I)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidateOutline()V

    return-void
.end method

.method public setIcon(Lcom/android/quickstep/views/IconView;Landroid/graphics/drawable/Drawable;)V
    .registers 5

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isInternalLogOpen()Z

    move-result p1

    if-eqz p1, :cond_24

    const-string p1, "setIcon(), task="

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", icon="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "QuickStep"

    const-string v1, "OplusTaskView"

    invoke-static {v0, v1, p1}, Lcom/android/common/debug/LogUtils;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_24
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->hasLargeDisplayFeatures()Z

    move-result p1

    if-eqz p1, :cond_40

    iget-object p1, p0, Lcom/android/quickstep/views/TaskView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p1

    iget-boolean p1, p1, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-nez p1, :cond_40

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusTaskViewImpl;->getMHeader()Lcom/oplus/quickstep/views/OplusTaskHeaderView;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p2

    invoke-virtual {p1, p2, p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->setIcon(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/quickstep/views/TaskView;)V

    goto :goto_47

    :cond_40
    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusTaskViewImpl;->getMHeader()Lcom/oplus/quickstep/views/OplusTaskHeaderView;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :goto_47
    return-void
.end method

.method public final setLockStableAlpha(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->lockStableAlpha:Z

    return-void
.end method

.method public final setMHeader(Lcom/oplus/quickstep/views/OplusTaskHeaderView;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->mHeader:Lcom/oplus/quickstep/views/OplusTaskHeaderView;

    return-void
.end method

.method public setOrientationState(Lcom/android/quickstep/util/RecentsOrientedState;)V
    .registers 10

    const-string v0, "orientationState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/quickstep/util/RecentsOrientedState;->getOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->getLastComputedTaskSize()Landroid/graphics/Rect;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sub-int v4, v1, v2

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int v3, v1, v0

    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mSnapshotView:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusTaskViewImpl;->getMHeader()Lcom/oplus/quickstep/views/OplusTaskHeaderView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-static {v2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v7, v2

    check-cast v7, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->thumbnailTopMargin:I

    invoke-interface {p1, v0, v1}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;->setLayoutParamsForSnapshotView(Landroid/widget/FrameLayout$LayoutParams;I)V

    div-int/lit8 v1, v3, 0x2

    iget v2, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->thumbnailTopMargin:I

    div-int/lit8 v2, v2, 0x2

    sub-int v5, v1, v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v6

    move-object v1, p1

    move-object v2, v7

    invoke-interface/range {v1 .. v6}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;->setLayoutParamsForTaskHeader(Landroid/widget/FrameLayout$LayoutParams;IIIZ)V

    iget-object v1, p0, Lcom/android/quickstep/views/TaskView;->mSnapshotView:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusTaskViewImpl;->getMHeader()Lcom/oplus/quickstep/views/OplusTaskHeaderView;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusTaskViewImpl;->getMHeader()Lcom/oplus/quickstep/views/OplusTaskHeaderView;

    move-result-object v0

    invoke-interface {p1}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getDegreesRotated()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setRotation(F)V

    iget-object p0, p0, Lcom/android/quickstep/views/TaskView;->mSnapshotView:Lcom/android/quickstep/views/TaskThumbnailView;

    instance-of v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;

    if-eqz v0, :cond_72

    check-cast p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;

    goto :goto_73

    :cond_72
    const/4 p0, 0x0

    :goto_73
    if-nez p0, :cond_76

    goto :goto_7d

    :cond_76
    invoke-interface {p1}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getRotation()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->onRotationChanged(I)V

    :goto_7d
    return-void
.end method

.method public setStableAlpha(F)V
    .registers 3

    iget-boolean v0, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->lockStableAlpha:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    invoke-super {p0, p1}, Lcom/android/quickstep/views/TaskView;->setStableAlpha(F)V

    return-void
.end method

.method public final setTaskLaunchAnimationRunning(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->isTaskLaunchAnimationRunning:Z

    return-void
.end method

.method public final setTaskViewIsDragging(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->mIsTaskViewDragging:Z

    return-void
.end method

.method public final setTitle(Lcom/android/systemui/shared/recents/model/Task;)V
    .registers 3

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusTaskViewImpl;->getMHeader()Lcom/oplus/quickstep/views/OplusTaskHeaderView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->setTitle(Lcom/android/systemui/shared/recents/model/Task;)V

    iget-object p1, p0, Lcom/android/quickstep/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    const-string v0, ""

    if-nez p1, :cond_e

    goto :goto_14

    :cond_e
    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->titleDescription:Ljava/lang/String;

    if-nez p1, :cond_13

    goto :goto_14

    :cond_13
    move-object v0, p1

    :goto_14
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setTitle(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/Task;)V
    .registers 4

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusTaskViewImpl;->getMHeader()Lcom/oplus/quickstep/views/OplusTaskHeaderView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->setTitle(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/Task;)V

    iget-object p1, p0, Lcom/android/quickstep/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    const-string p2, ""

    if-nez p1, :cond_e

    goto :goto_14

    :cond_e
    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->titleDescription:Ljava/lang/String;

    if-nez p1, :cond_13

    goto :goto_14

    :cond_13
    move-object p2, p1

    :goto_14
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final showHeader(ZZ)V
    .registers 9

    iget-object v0, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->mHeaderShowAnimator:Landroid/animation/Animator;

    if-nez v0, :cond_5

    goto :goto_8

    :cond_5
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :goto_8
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000  # 1.0f

    if-nez p1, :cond_14

    if-eqz p2, :cond_10

    move v0, v1

    :cond_10
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    return-void

    :cond_14
    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusTaskViewImpl;->getMHeader()Lcom/oplus/quickstep/views/OplusTaskHeaderView;

    move-result-object p1

    sget-object v2, Landroid/widget/FrameLayout;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    if-eqz p2, :cond_22

    move v5, v0

    goto :goto_23

    :cond_22
    move v5, v1

    :goto_23
    aput v5, v3, v4

    const/4 v4, 0x1

    if-eqz p2, :cond_29

    move v0, v1

    :cond_29
    aput v0, v3, v4

    invoke-static {p1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    sget-object p2, Lcom/android/common/util/OplusLauncherAnimUtils$Interpolators;->CURVE_OPACITY_IN:Landroid/view/animation/OplusBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0x96

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    iput-object p1, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;->mHeaderShowAnimator:Landroid/animation/Animator;

    return-void
.end method

.method public final showLightningAnimation()V
    .registers 2

    iget-object p0, p0, Lcom/android/quickstep/views/TaskView;->mSnapshotView:Lcom/android/quickstep/views/TaskThumbnailView;

    instance-of v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;

    if-eqz v0, :cond_9

    check-cast p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    if-nez p0, :cond_d

    goto :goto_10

    :cond_d
    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->showLightningAnimation()V

    :goto_10
    return-void
.end method

.method public final showQuickStartupExitToastIfNeed()V
    .registers 4

    const-string/jumbo v0, "showQuickStartupExitToastIfNeed(), task="

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isSupportQuickStartup="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/quickstep/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    if-nez v1, :cond_17

    const/4 v1, 0x0

    goto :goto_1d

    :cond_17
    iget-boolean v1, v1, Lcom/android/systemui/shared/recents/model/Task;->isSupportQuickStartup:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :goto_1d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickStep"

    const-string v2, "OplusTaskView"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    const/4 v1, 0x0

    if-nez v0, :cond_31

    goto :goto_37

    :cond_31
    iget-boolean v0, v0, Lcom/android/systemui/shared/recents/model/Task;->isSupportQuickStartup:Z

    if-nez v0, :cond_37

    const/4 v0, 0x1

    goto :goto_38

    :cond_37
    :goto_37
    move v0, v1

    :goto_38
    if-eqz v0, :cond_3b

    return-void

    :cond_3b
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const v0, 0x7f120380

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public showTaskMenu(Lcom/android/quickstep/views/IconView;)Z
    .registers 4

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v0

    instance-of v1, v0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    if-eqz v1, :cond_b

    check-cast v0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    const/4 v1, 0x0

    if-nez v0, :cond_10

    return v1

    :cond_10
    invoke-virtual {v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->runningPendingAnimation()Lcom/android/launcher3/anim/PendingAnimation;

    move-result-object v0

    if-eqz v0, :cond_17

    return v1

    :cond_17
    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/OplusTaskViewImpl;->showTaskMenuWithContainer(Lcom/android/quickstep/views/IconView;)Z

    move-result p0

    return p0
.end method

.method public showTaskMenuWithContainer(Lcom/android/quickstep/views/IconView;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mTaskIdAttributeContainer:[Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;

    iget-object p0, p0, Lcom/android/quickstep/views/TaskView;->mIconView:Lcom/android/quickstep/views/IconView;

    if-ne p1, p0, :cond_8

    const/4 p0, 0x0

    goto :goto_9

    :cond_8
    const/4 p0, 0x1

    :goto_9
    aget-object p0, v0, p0

    sget-object p1, Lcom/android/quickstep/views/OplusTaskMenuViewImpl;->Companion:Lcom/android/quickstep/views/OplusTaskMenuViewImpl$Companion;

    const-string v0, "menuContainer"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lcom/android/quickstep/views/OplusTaskMenuViewImpl$Companion;->showForTask(Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;)Z

    move-result p0

    return p0
.end method

.method public updateSnapshotRadius()V
    .registers 3

    invoke-super {p0}, Lcom/android/quickstep/views/TaskView;->updateSnapshotRadius()V

    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mSnapshotView:Lcom/android/quickstep/views/TaskThumbnailView;

    instance-of v1, v0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;

    if-eqz v1, :cond_c

    check-cast v0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    if-nez v0, :cond_10

    goto :goto_15

    :cond_10
    iget p0, p0, Lcom/android/quickstep/views/TaskView;->mFullscreenProgress:F

    invoke-virtual {v0, p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->setFullscreenProgress(F)V

    :goto_15
    return-void
.end method

.method public updateTaskSize()V
    .registers 8

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/views/TaskView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v1

    const-string v2, "mActivity.deviceProfile"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v2, v1, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    const/4 v3, -0x1

    if-eqz v2, :cond_4b

    iget v1, v1, Lcom/android/launcher3/DeviceProfile;->overviewTaskThumbnailTopMarginPx:I

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/quickstep/views/RecentsView;->getLastComputedTaskSize()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->isFocusedTask()Z

    move-result v4

    if-eqz v4, :cond_2f

    move v4, v2

    move v5, v3

    goto :goto_3f

    :cond_2f
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/quickstep/views/RecentsView;->getLastComputedGridTaskSize()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    :goto_3f
    add-int/2addr v4, v1

    int-to-float v3, v3

    int-to-float v6, v5

    div-float/2addr v3, v6

    sub-int v1, v4, v1

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x40000000  # 2.0f

    div-float/2addr v1, v2

    goto :goto_52

    :cond_4b
    const/high16 v1, 0x3f800000  # 1.0f

    const/4 v2, 0x0

    move v4, v3

    move v5, v4

    move v3, v1

    move v1, v2

    :goto_52
    invoke-virtual {p0, v3}, Lcom/android/quickstep/views/TaskView;->setNonGridScale(F)V

    invoke-virtual {p0, v1}, Lcom/android/quickstep/views/TaskView;->setBoxTranslationY(F)V

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v1, v5, :cond_60

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v1, v4, :cond_67

    :cond_60
    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_67
    return-void
.end method
