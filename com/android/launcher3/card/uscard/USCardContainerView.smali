.class public final Lcom/android/launcher3/card/uscard/USCardContainerView;
.super Lcom/android/launcher3/card/LauncherCardView;
.source ""

# interfaces
.implements Lcom/android/launcher3/statemanager/StateManager$StateListener;
.implements Landroidx/lifecycle/DefaultLifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/card/uscard/USCardContainerView$Companion;,
        Lcom/android/launcher3/card/uscard/USCardContainerView$CardSizeMap;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher3/card/LauncherCardView;",
        "Lcom/android/launcher3/statemanager/StateManager$StateListener<",
        "Lcom/android/launcher3/LauncherState;",
        ">;",
        "Landroidx/lifecycle/DefaultLifecycleObserver;"
    }
.end annotation


# static fields
.field private static final AVOID_ANIM_TYPES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/quickstep/utils/TracePrintUtil$Type;",
            ">;"
        }
    .end annotation
.end field

.field private static final BG_ANIM_IN_DURATION:J = 0xfaL

.field private static final BG_ANIM_OUT_DURATION:J = 0x226L

.field private static final CARD_DRAG_FADE_IN_DURATION:J = 0x29bL

.field private static final CARD_FADE_IN_DURATION:J = 0x258L

.field private static final CARD_FADE_OUT_DURATION:J = 0x226L

.field public static final CARD_REFRESH_TIME:J = 0x1f4L

.field private static final COLUMN_FIVE:I = 0x5

.field public static final Companion:Lcom/android/launcher3/card/uscard/USCardContainerView$Companion;

.field private static final INNER_CARD_CLASS_NAME:Ljava/lang/String; = "com.android.launcher.InnerCard"

.field private static final INNER_CARD_PKG_NAME:Ljava/lang/String; = "com.android.launcher"

.field private static final LOADING_TO_CONTENT:J = 0x12cL

.field private static final LOADING_TO_NO_ADVICE_THRESHOLD:J = 0x1388L

.field private static final MAX_DELAY_CLEAR_ANIM_END:J = 0x3e8L

.field private static final MIN_CARD_ALPHA:F = 0.3f

.field public static final REFRESH_DELAY:J = 0x1f4L

.field private static final REFRESH_MUTEX_RELEASE_DELAY:J = 0x320L

.field private static final SHOW_BG_DELAY_AFTER_BINDING:J = 0x64L

.field private static final TAG:Ljava/lang/String; = "LauncherCardView-USCardContainerView"

.field private static final XIAO_BU_ADVICE_BUTTON_TEXT_SIZE:F = 12.0f


# instance fields
.field private final cardLoadChecker$delegate:Ly2/e;

.field private cardName:Lcom/android/launcher3/OplusBubbleTextView;

.field private final coroutineScope:Landroidx/lifecycle/LifecycleCoroutineScope;

.field private defaultCard:Lcom/android/launcher3/card/DefaultCardView;

.field private isLoadTimeout:Z

.field private mBgAnimator:Landroid/animation/ValueAnimator;

.field private final mBgDrawRectOnAnimEnd:Landroid/graphics/Rect;

.field private final mBgDrawRectOnAnimStart:Landroid/graphics/Rect;

.field private final mBgRadius:F

.field private mBgWidth:I

.field private mCardAlpha:F

.field private mCardAlphaAnim:Landroid/animation/ValueAnimator;

.field private final mCardBoundsMarginForShortCut:I

.field private final mCardEdge:Landroid/graphics/Rect;

.field private final mCardGap:I

.field private final mCardNamePaddingTop:I

.field private mCardRefreshAnimatorList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private mCardRefreshMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mCardSizeMap:Lcom/android/launcher3/card/uscard/USCardContainerView$CardSizeMap;

.field private mContentChanged:Z

.field private final mDp:Lcom/android/launcher3/OplusInvariantDeviceProfile;

.field private mDragView:Lcom/android/launcher3/dragndrop/DragView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/dragndrop/DragView<",
            "*>;"
        }
    .end annotation
.end field

.field private mDuringAnimationPendingRunnable:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final mEvaluator:Landroid/animation/RectEvaluator;

.field private final mInnerMargin:I

.field private final mInnerRadius:F

.field private mIsInDragMode:Z

.field private mIsNeedDrawBg:Z

.field private mIsTouching:Z

.field private mItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mLongPressedView:Landroid/view/View;

.field private mOccupied:Lcom/android/launcher3/util/GridOccupancy;

.field private final mOuterRadius:F

.field private final mPaddingCache:Landroid/graphics/Rect;

.field private final mPaint:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;

.field private mPendingItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mRefreshAnimSet:Landroid/animation/AnimatorSet;

.field private mRefreshJob:Lq3/i1;

.field private final mRefreshMutex:Lx3/b;

.field private mScaleFractionDuringRecovery:F

.field private final mShadowColor:I

.field private final mStatisticsRecorder$delegate:Ly2/e;

.field private mStoreContentResult:Lcom/android/launcher3/card/seed/SeedContentResult;

.field private mStoreContentResultForRefresh:Lcom/android/launcher3/card/seed/SeedContentResult;

.field private mTempLongPressedView:Landroid/view/View;

.field private final mTouchDownPos:Landroid/graphics/Point;

.field private mUpdateAnimHelper:Lcom/android/launcher3/card/uscard/USUpdateAnimHelper;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/android/launcher3/card/uscard/USCardContainerView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/card/uscard/USCardContainerView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/card/uscard/USCardContainerView;->Companion:Lcom/android/launcher3/card/uscard/USCardContainerView$Companion;

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    sget-object v1, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->LAUNCH_APP:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->MENU_BACK_TO_HOME:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->GESTURE_TO_HOME:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->RECENTS_TO_HOME:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->DRAG_WORKSPACE:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->WORKSPACE_SCROLL:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->GESTURE_TO_RECENTS:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->MENU_TO_RECENTS:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->HOME_TO_RECENTS:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    invoke-static {v0}, Li1/j;->l([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/card/uscard/USCardContainerView;->AVOID_ANIM_TYPES:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 8

    invoke-direct {p0, p1}, Lcom/android/launcher3/card/LauncherCardView;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mPaddingCache:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher/Launcher;

    move-result-object p1

    const-string v0, "getLauncher(context)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->coroutineScope:Landroidx/lifecycle/LifecycleCoroutineScope;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mCardRefreshAnimatorList:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mCardRefreshMap:Ljava/util/Map;

    const/high16 p1, 0x3f800000  # 1.0f

    iput p1, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mCardAlpha:F

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mBgDrawRectOnAnimStart:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mBgDrawRectOnAnimEnd:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mCardEdge:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mPath:Landroid/graphics/Path;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070022

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mInnerRadius:F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070020

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mOuterRadius:F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07001c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mBgRadius:F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07001b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mCardGap:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mInnerMargin:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070211

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mCardBoundsMarginForShortCut:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mItemList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mPendingItemList:Ljava/util/List;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mTouchDownPos:Landroid/graphics/Point;

    new-instance v0, Landroid/animation/RectEvaluator;

    invoke-direct {v0}, Landroid/animation/RectEvaluator;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mEvaluator:Landroid/animation/RectEvaluator;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/OplusInvariantDeviceProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mDp:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x7f06000f

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mShadowColor:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lx3/e;->a(ZI)Lx3/b;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mRefreshMutex:Lx3/b;

    iget-object v2, p0, Lcom/android/launcher3/card/LauncherCardView;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f070600

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mCardNamePaddingTop:I

    new-instance v2, Lcom/android/launcher3/card/uscard/USCardContainerView$cardLoadChecker$2;

    invoke-direct {v2, p0}, Lcom/android/launcher3/card/uscard/USCardContainerView$cardLoadChecker$2;-><init>(Lcom/android/launcher3/card/uscard/USCardContainerView;)V

    invoke-static {v2}, Ly2/f;->a(Lkotlin/jvm/functions/Function0;)Ly2/e;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->cardLoadChecker$delegate:Ly2/e;

    sget-object v2, Lcom/android/launcher3/card/uscard/USCardContainerView$mStatisticsRecorder$2;->INSTANCE:Lcom/android/launcher3/card/uscard/USCardContainerView$mStatisticsRecorder$2;

    invoke-static {v2}, Ly2/f;->a(Lkotlin/jvm/functions/Function0;)Ly2/e;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mStatisticsRecorder$delegate:Ly2/e;

    new-instance v2, Lcom/android/launcher3/util/GridOccupancy;

    const/4 v4, 0x4

    const/4 v5, 0x2

    invoke-direct {v2, v4, v5}, Lcom/android/launcher3/util/GridOccupancy;-><init>(II)V

    iput-object v2, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    new-instance v2, Lcom/android/launcher3/card/uscard/USCardContainerView$CardSizeMap;

    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-direct {v2, p0, v4, v5}, Lcom/android/launcher3/card/uscard/USCardContainerView$CardSizeMap;-><init>(Lcom/android/launcher3/card/uscard/USCardContainerView;Ljava/util/Map;Ljava/util/Map;)V

    iput-object v2, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mCardSizeMap:Lcom/android/launcher3/card/uscard/USCardContainerView$CardSizeMap;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mDuringAnimationPendingRunnable:Ljava/util/List;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Lcom/android/launcher3/card/uscard/USUpdateAnimHelper;

    iget-object v1, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mCardRefreshMap:Ljava/util/Map;

    invoke-direct {v0, v2, p1, v1}, Lcom/android/launcher3/card/uscard/USUpdateAnimHelper;-><init>(Lcom/android/launcher3/card/uscard/USCardContainerView$CardSizeMap;ILjava/util/Map;)V

    iput-object v0, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mUpdateAnimHelper:Lcom/android/launcher3/card/uscard/USUpdateAnimHelper;

    iget-object p1, p0, Lcom/android/launcher3/card/LauncherCardView;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v0, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p1

    if-eqz p1, :cond_146

    iput-boolean v3, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mIsNeedDrawBg:Z

    :cond_146
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/card/LauncherCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mPaddingCache:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher/Launcher;

    move-result-object p1

    const-string p2, "getLauncher(context)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->coroutineScope:Landroidx/lifecycle/LifecycleCoroutineScope;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mCardRefreshAnimatorList:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mCardRefreshMap:Ljava/util/Map;

    const/high16 p1, 0x3f800000  # 1.0f

    iput p1, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mCardAlpha:F

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mBgDrawRectOnAnimStart:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mBgDrawRectOnAnimEnd:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mCardEdge:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mPath:Landroid/graphics/Path;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070022

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mInnerRadius:F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070020

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mOuterRadius:F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07001c

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mBgRadius:F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07001b

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mCardGap:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070021

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mInnerMargin:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070211

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mCardBoundsMarginForShortCut:I

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mItemList:Ljava/util/List;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mPendingItemList:Ljava/util/List;

    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mTouchDownPos:Landroid/graphics/Point;

    new-instance p2, Landroid/animation/RectEvaluator;

    invoke-direct {p2}, Landroid/animation/RectEvaluator;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mEvaluator:Landroid/animation/RectEvaluator;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/OplusInvariantDeviceProfile;

    move-result-object p2

    iput-object p2, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mDp:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x7f06000f

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mShadowColor:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lx3/e;->a(ZI)Lx3/b;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mRefreshMutex:Lx3/b;

    iget-object v1, p0, Lcom/android/launcher3/card/LauncherCardView;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f070600

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mCardNamePaddingTop:I

    new-instance v1, Lcom/android/launcher3/card/uscard/USCardContainerView$cardLoadChecker$2;

    invoke-direct {v1, p0}, Lcom/android/launcher3/card/uscard/USCardContainerView$cardLoadChecker$2;-><init>(Lcom/android/launcher3/card/uscard/USCardContainerView;)V

    invoke-static {v1}, Ly2/f;->a(Lkotlin/jvm/functions/Function0;)Ly2/e;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->cardLoadChecker$delegate:Ly2/e;

    sget-object v1, Lcom/android/launcher3/card/uscard/USCardContainerView$mStatisticsRecorder$2;->INSTANCE:Lcom/android/launcher3/card/uscard/USCardContainerView$mStatisticsRecorder$2;

    invoke-static {v1}, Ly2/f;->a(Lkotlin/jvm/functions/Function0;)Ly2/e;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mStatisticsRecorder$delegate:Ly2/e;

    new-instance v1, Lcom/android/launcher3/util/GridOccupancy;

    const/4 v3, 0x4

    const/4 v4, 0x2

    invoke-direct {v1, v3, v4}, Lcom/android/launcher3/util/GridOccupancy;-><init>(II)V

    iput-object v1, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    new-instance v1, Lcom/android/launcher3/card/uscard/USCardContainerView$CardSizeMap;

    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-direct {v1, p0, v3, v4}, Lcom/android/launcher3/card/uscard/USCardContainerView$CardSizeMap;-><init>(Lcom/android/launcher3/card/uscard/USCardContainerView;Ljava/util/Map;Ljava/util/Map;)V

    iput-object v1, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mCardSizeMap:Lcom/android/launcher3/card/uscard/USCardContainerView$CardSizeMap;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mDuringAnimationPendingRunnable:Ljava/util/List;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    new-instance p2, Lcom/android/launcher3/card/uscard/USUpdateAnimHelper;

    iget-object v0, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mCardRefreshMap:Ljava/util/Map;

    invoke-direct {p2, v1, p1, v0}, Lcom/android/launcher3/card/uscard/USUpdateAnimHelper;-><init>(Lcom/android/launcher3/card/uscard/USCardContainerView$CardSizeMap;ILjava/util/Map;)V

    iput-object p2, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mUpdateAnimHelper:Lcom/android/launcher3/card/uscard/USUpdateAnimHelper;

    iget-object p1, p0, Lcom/android/launcher3/card/LauncherCardView;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object p2, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p1, p2}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p1

    if-eqz p1, :cond_146

    iput-boolean v2, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mIsNeedDrawBg:Z

    :cond_146
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/card/LauncherCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mPaddingCache:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher/Launcher;

    move-result-object p1

    const-string p2, "getLauncher(context)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->coroutineScope:Landroidx/lifecycle/LifecycleCoroutineScope;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mCardRefreshAnimatorList:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mCardRefreshMap:Ljava/util/Map;

    const/high16 p1, 0x3f800000  # 1.0f

    iput p1, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mCardAlpha:F

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mBgDrawRectOnAnimStart:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mBgDrawRectOnAnimEnd:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mCardEdge:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mPath:Landroid/graphics/Path;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070022

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mInnerRadius:F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070020

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mOuterRadius:F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07001c

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mBgRadius:F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07001b

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mCardGap:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f070021

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mInnerMargin:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f070211

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mCardBoundsMarginForShortCut:I

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mItemList:Ljava/util/List;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mPendingItemList:Ljava/util/List;

    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mTouchDownPos:Landroid/graphics/Point;

    new-instance p2, Landroid/animation/RectEvaluator;

    invoke-direct {p2}, Landroid/animation/RectEvaluator;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mEvaluator:Landroid/animation/RectEvaluator;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/OplusInvariantDeviceProfile;

    move-result-object p2

    iput-object p2, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mDp:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const v1, 0x7f06000f

    invoke-virtual {p3, v1, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p3

    iput p3, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mShadowColor:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lx3/e;->a(ZI)Lx3/b;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mRefreshMutex:Lx3/b;

    iget-object v0, p0, Lcom/android/launcher3/card/LauncherCardView;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070600

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mCardNamePaddingTop:I

    new-instance v0, Lcom/android/launcher3/card/uscard/USCardContainerView$cardLoadChecker$2;

    invoke-direct {v0, p0}, Lcom/android/launcher3/card/uscard/USCardContainerView$cardLoadChecker$2;-><init>(Lcom/android/launcher3/card/uscard/USCardContainerView;)V

    invoke-static {v0}, Ly2/f;->a(Lkotlin/jvm/functions/Function0;)Ly2/e;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->cardLoadChecker$delegate:Ly2/e;

    sget-object v0, Lcom/android/launcher3/card/uscard/USCardContainerView$mStatisticsRecorder$2;->INSTANCE:Lcom/android/launcher3/card/uscard/USCardContainerView$mStatisticsRecorder$2;

    invoke-static {v0}, Ly2/f;->a(Lkotlin/jvm/functions/Function0;)Ly2/e;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mStatisticsRecorder$delegate:Ly2/e;

    new-instance v0, Lcom/android/launcher3/util/GridOccupancy;

    const/4 v2, 0x4

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3}, Lcom/android/launcher3/util/GridOccupancy;-><init>(II)V

    iput-object v0, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    new-instance v0, Lcom/android/launcher3/card/uscard/USCardContainerView$CardSizeMap;

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-direct {v0, p0, v2, v3}, Lcom/android/launcher3/card/uscard/USCardContainerView$CardSizeMap;-><init>(Lcom/android/launcher3/card/uscard/USCardContainerView;Ljava/util/Map;Ljava/util/Map;)V

    iput-object v0, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mCardSizeMap:Lcom/android/launcher3/card/uscard/USCardContainerView$CardSizeMap;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mDuringAnimationPendingRunnable:Ljava/util/List;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    new-instance p2, Lcom/android/launcher3/card/uscard/USUpdateAnimHelper;

    iget-object p3, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mCardRefreshMap:Ljava/util/Map;

    invoke-direct {p2, v0, p1, p3}, Lcom/android/launcher3/card/uscard/USUpdateAnimHelper;-><init>(Lcom/android/launcher3/card/uscard/USCardContainerView$CardSizeMap;ILjava/util/Map;)V

    iput-object p2, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mUpdateAnimHelper:Lcom/android/launcher3/card/uscard/USUpdateAnimHelper;

    iget-object p1, p0, Lcom/android/launcher3/card/LauncherCardView;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object p2, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p1, p2}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p1

    if-eqz p1, :cond_146

    iput-boolean v1, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mIsNeedDrawBg:Z

    :cond_146
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 8

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/launcher3/card/LauncherCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mPaddingCache:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher/Launcher;

    move-result-object p1

    const-string p2, "getLauncher(context)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->coroutineScope:Landroidx/lifecycle/LifecycleCoroutineScope;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mCardRefreshAnimatorList:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mCardRefreshMap:Ljava/util/Map;

    const/high16 p1, 0x3f800000  # 1.0f

    iput p1, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mCardAlpha:F

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mBgDrawRectOnAnimStart:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mBgDrawRectOnAnimEnd:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mCardEdge:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mPath:Landroid/graphics/Path;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070022

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mInnerRadius:F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070020

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mOuterRadius:F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07001c

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mBgRadius:F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07001b

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mCardGap:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f070021

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mInnerMargin:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f070211

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mCardBoundsMarginForShortCut:I

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mItemList:Ljava/util/List;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mPendingItemList:Ljava/util/List;

    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mTouchDownPos:Landroid/graphics/Point;

    new-instance p2, Landroid/animation/RectEvaluator;

    invoke-direct {p2}, Landroid/animation/RectEvaluator;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mEvaluator:Landroid/animation/RectEvaluator;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/OplusInvariantDeviceProfile;

    move-result-object p2

    iput-object p2, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mDp:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p4

    const v0, 0x7f06000f

    invoke-virtual {p3, v0, p4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p3

    iput p3, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mShadowColor:I

    const/4 p4, 0x0

    const/4 v0, 0x1

    invoke-static {p4, v0}, Lx3/e;->a(ZI)Lx3/b;

    move-result-object p4

    iput-object p4, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mRefreshMutex:Lx3/b;

    iget-object p4, p0, Lcom/android/launcher3/card/LauncherCardView;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    const v1, 0x7f070600

    invoke-virtual {p4, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    iput p4, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mCardNamePaddingTop:I

    new-instance p4, Lcom/android/launcher3/card/uscard/USCardContainerView$cardLoadChecker$2;

    invoke-direct {p4, p0}, Lcom/android/launcher3/card/uscard/USCardContainerView$cardLoadChecker$2;-><init>(Lcom/android/launcher3/card/uscard/USCardContainerView;)V

    invoke-static {p4}, Ly2/f;->a(Lkotlin/jvm/functions/Function0;)Ly2/e;

    move-result-object p4

    iput-object p4, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->cardLoadChecker$delegate:Ly2/e;

    sget-object p4, Lcom/android/launcher3/card/uscard/USCardContainerView$mStatisticsRecorder$2;->INSTANCE:Lcom/android/launcher3/card/uscard/USCardContainerView$mStatisticsRecorder$2;

    invoke-static {p4}, Ly2/f;->a(Lkotlin/jvm/functions/Function0;)Ly2/e;

    move-result-object p4

    iput-object p4, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mStatisticsRecorder$delegate:Ly2/e;

    new-instance p4, Lcom/android/launcher3/util/GridOccupancy;

    const/4 v1, 0x4

    const/4 v2, 0x2

    invoke-direct {p4, v1, v2}, Lcom/android/launcher3/util/GridOccupancy;-><init>(II)V

    iput-object p4, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    new-instance p4, Lcom/android/launcher3/card/uscard/USCardContainerView$CardSizeMap;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-direct {p4, p0, v1, v2}, Lcom/android/launcher3/card/uscard/USCardContainerView$CardSizeMap;-><init>(Lcom/android/launcher3/card/uscard/USCardContainerView;Ljava/util/Map;Ljava/util/Map;)V

    iput-object p4, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mCardSizeMap:Lcom/android/launcher3/card/uscard/USCardContainerView$CardSizeMap;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mDuringAnimationPendingRunnable:Ljava/util/List;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    new-instance p2, Lcom/android/launcher3/card/uscard/USUpdateAnimHelper;

    iget-object p3, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mCardRefreshMap:Ljava/util/Map;

    invoke-direct {p2, p4, p1, p3}, Lcom/android/launcher3/card/uscard/USUpdateAnimHelper;-><init>(Lcom/android/launcher3/card/uscard/USCardContainerView$CardSizeMap;ILjava/util/Map;)V

    iput-object p2, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mUpdateAnimHelper:Lcom/android/launcher3/card/uscard/USUpdateAnimHelper;

    iget-object p1, p0, Lcom/android/launcher3/card/LauncherCardView;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object p2, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p1, p2}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p1

    if-eqz p1, :cond_146

    iput-boolean v0, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mIsNeedDrawBg:Z

    :cond_146
    return-void
.end method

.method public static final synthetic access$clearStatusAfterRefresh(Lcom/android/launcher3/card/uscard/USCardContainerView;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/card/uscard/USCardContainerView;->clearStatusAfterRefresh(Z)V

    return-void
.end method

.method public static final synthetic access$getMCardRefreshAnimatorList$p(Lcom/android/launcher3/card/uscard/USCardContainerView;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mCardRefreshAnimatorList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static final synthetic access$getMContentChanged$p(Lcom/android/launcher3/card/uscard/USCardContainerView;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mContentChanged:Z

    return p0
.end method

.method public static final synthetic access$getMDp$p(Lcom/android/launcher3/card/uscard/USCardContainerView;)Lcom/android/launcher3/OplusInvariantDeviceProfile;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mDp:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    return-object p0
.end method

.method public static final synthetic access$getMLauncher$p$s2093876888(Lcom/android/launcher3/card/uscard/USCardContainerView;)Lcom/android/launcher/Launcher;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/LauncherCardView;->mLauncher:Lcom/android/launcher/Launcher;

    return-object p0
.end method

.method public static final synthetic access$getMRefreshMutex$p(Lcom/android/launcher3/card/uscard/USCardContainerView;)Lx3/b;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mRefreshMutex:Lx3/b;

    return-object p0
.end method

.method public static final synthetic access$getMStoreContentResultForRefresh$p(Lcom/android/launcher3/card/uscard/USCardContainerView;)Lcom/android/launcher3/card/seed/SeedContentResult;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mStoreContentResultForRefresh:Lcom/android/launcher3/card/seed/SeedContentResult;

    return-object p0
.end method

.method public static final synthetic access$initCardName(Lcom/android/launcher3/card/uscard/USCardContainerView;Lcom/android/launcher3/card/LauncherCardInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/card/uscard/USCardContainerView;->initCardName(Lcom/android/launcher3/card/LauncherCardInfo;)V

    return-void
.end method

.method public static final synthetic access$invalidateChildren(Lcom/android/launcher3/card/uscard/USCardContainerView;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/card/uscard/USCardContainerView;->invalidateChildren()V

    return-void
.end method

.method public static final synthetic access$refreshOldChildrenDrawState(Lcom/android/launcher3/card/uscard/USCardContainerView;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/card/uscard/USCardContainerView;->refreshOldChildrenDrawState()V

    return-void
.end method

.method public static final synthetic access$setIsNeedShowBg(Lcom/android/launcher3/card/uscard/USCardContainerView;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/card/uscard/USCardContainerView;->setIsNeedShowBg(Z)V

    return-void
.end method

.method public static final synthetic access$setMLongPressedView$p(Lcom/android/launcher3/card/uscard/USCardContainerView;Landroid/view/View;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mLongPressedView:Landroid/view/View;

    return-void
.end method

.method public static final synthetic access$setMRefreshAnimSet$p(Lcom/android/launcher3/card/uscard/USCardContainerView;Landroid/animation/AnimatorSet;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mRefreshAnimSet:Landroid/animation/AnimatorSet;

    return-void
.end method

.method public static final synthetic access$setMStoreContentResult$p(Lcom/android/launcher3/card/uscard/USCardContainerView;Lcom/android/launcher3/card/seed/SeedContentResult;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mStoreContentResult:Lcom/android/launcher3/card/seed/SeedContentResult;

    return-void
.end method

.method public static final synthetic access$setMStoreContentResultForRefresh$p(Lcom/android/launcher3/card/uscard/USCardContainerView;Lcom/android/launcher3/card/seed/SeedContentResult;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mStoreContentResultForRefresh:Lcom/android/launcher3/card/seed/SeedContentResult;

    return-void
.end method

.method public static final synthetic access$showMasterKeyCard(Lcom/android/launcher3/card/uscard/USCardContainerView;Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/card/uscard/USCardContainerView;->showMasterKeyCard(Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$showMissingKeyPermissionsCard(Lcom/android/launcher3/card/uscard/USCardContainerView;Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/card/uscard/USCardContainerView;->showMissingKeyPermissionsCard(Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$showNoAdviceCard(Lcom/android/launcher3/card/uscard/USCardContainerView;Lcom/android/launcher3/card/seed/SeedContentResult;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/card/uscard/USCardContainerView;->showNoAdviceCard(Lcom/android/launcher3/card/seed/SeedContentResult;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$showPermissionGuideCard(Lcom/android/launcher3/card/uscard/USCardContainerView;Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/card/uscard/USCardContainerView;->showPermissionGuideCard(Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$showPrivacyPermissionCard(Lcom/android/launcher3/card/uscard/USCardContainerView;Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/card/uscard/USCardContainerView;->showPrivacyPermissionCard(Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$statisticExposeDataWhenRefresh(Lcom/android/launcher3/card/uscard/USCardContainerView;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/card/uscard/USCardContainerView;->statisticExposeDataWhenRefresh()V

    return-void
.end method

.method private final addCardRefreshAnim(Landroid/view/View;I)V
    .registers 10

    iget-object v0, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mPendingItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v2, "null cannot be cast to non-null type com.android.launcher3.card.LauncherCardInfo"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher3/card/LauncherCardInfo;

    invoke-direct {p0, v1}, Lcom/android/launcher3/card/uscard/USCardContainerView;->getInvalidCardList(Lcom/android/launcher3/model/data/ItemInfo;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_26

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_24

    goto :goto_26

    :cond_24
    move v4, v2

    goto :goto_27

    :cond_26
    :goto_26
    move v4, v3

    :goto_27
    const-string v5, "LauncherCardView-USCardContainerView"

    if-eqz v4, :cond_31

    const-string p0, "addCardRefreshAnim，invalidCards is none or empty"

    invoke-static {v5, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_31
    if-nez v0, :cond_39

    const-string p0, "addCardRefreshAnim， curCount is zero, no need anim"

    invoke-static {v5, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_39
    const-string v4, "addCardRefreshAnim，curCount: "

    const-string v6, " newCount "

    invoke-static {v4, v0, v6, p2, v5}, Lcom/android/common/config/g;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    if-ne v0, p2, :cond_50

    iget-object p2, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mUpdateAnimHelper:Lcom/android/launcher3/card/uscard/USUpdateAnimHelper;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object p0, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mCardRefreshAnimatorList:Ljava/util/ArrayList;

    invoke-virtual {p2, p1, v0, p0}, Lcom/android/launcher3/card/uscard/USUpdateAnimHelper;->getSwitchAnimatorForSingleCardAlone(Landroid/view/View;Landroid/view/View;Ljava/util/ArrayList;)V

    goto :goto_7a

    :cond_50
    const/4 v2, 0x2

    if-le v0, p2, :cond_66

    if-ne p2, v3, :cond_5c

    iget-object v0, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mUpdateAnimHelper:Lcom/android/launcher3/card/uscard/USUpdateAnimHelper;

    iget-object v3, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mCardRefreshAnimatorList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, v1, v3}, Lcom/android/launcher3/card/uscard/USUpdateAnimHelper;->getSwitchAnimatorForOneCardIn(Landroid/view/View;Ljava/util/List;Ljava/util/ArrayList;)V

    :cond_5c
    if-ne p2, v2, :cond_7a

    iget-object p2, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mUpdateAnimHelper:Lcom/android/launcher3/card/uscard/USUpdateAnimHelper;

    iget-object p0, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mCardRefreshAnimatorList:Ljava/util/ArrayList;

    invoke-virtual {p2, p1, v1, p0}, Lcom/android/launcher3/card/uscard/USUpdateAnimHelper;->getSwitchAnimatorForTwoCardUnion(Landroid/view/View;Ljava/util/List;Ljava/util/ArrayList;)V

    goto :goto_7a

    :cond_66
    if-ge v0, p2, :cond_7a

    if-ne v0, v3, :cond_71

    iget-object p2, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mUpdateAnimHelper:Lcom/android/launcher3/card/uscard/USUpdateAnimHelper;

    iget-object v3, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mCardRefreshAnimatorList:Ljava/util/ArrayList;

    invoke-virtual {p2, p1, v1, v3}, Lcom/android/launcher3/card/uscard/USUpdateAnimHelper;->getSwitchAnimatorForOneCardOut(Landroid/view/View;Ljava/util/List;Ljava/util/ArrayList;)V

    :cond_71
    if-ne v0, v2, :cond_7a

    iget-object p2, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mUpdateAnimHelper:Lcom/android/launcher3/card/uscard/USUpdateAnimHelper;

    iget-object p0, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mCardRefreshAnimatorList:Ljava/util/ArrayList;

    invoke-virtual {p2, p1, v1, p0}, Lcom/android/launcher3/card/uscard/USUpdateAnimHelper;->getSwitchAnimatorForTwoCardUnion(Landroid/view/View;Ljava/util/List;Ljava/util/ArrayList;)V

    :cond_7a
    :goto_7a
    return-void
.end method

.method private static final animBg$lambda-75$lambda-74(Lcom/android/launcher3/card/uscard/USCardContainerView;Landroid/animation/ValueAnimator;)V
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string/jumbo v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mScaleFractionDuringRecovery:F

    invoke-direct {p0}, Lcom/android/launcher3/card/uscard/USCardContainerView;->invalidateDragView()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method private static final animCardAlpha$lambda-77$lambda-76(Lcom/android/launcher3/card/uscard/USCardContainerView;Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .registers 4

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    const-string/jumbo v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iput p2, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mCardAlpha:F

    invoke-direct {p0, p2, p1}, Lcom/android/launcher3/card/uscard/USCardContainerView;->setUnselectedChildCardAlpha(FLandroid/view/View;)V

    invoke-direct {p0}, Lcom/android/launcher3/card/uscard/USCardContainerView;->invalidateDragView()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method private final applyChildRadius(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 12

    instance-of v0, p1, Lcom/android/launcher3/card/IAreaWidget;

    if-nez v0, :cond_9

    iget v1, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mOuterRadius:F

    invoke-static {p1, v1}, Lcom/android/launcher3/card/LauncherCardUtil;->clipCardView(Landroid/view/View;F)V

    :cond_9
    iget v1, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mInnerRadius:F

    iget v2, p2, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    const/4 v3, 0x2

    if-nez v2, :cond_22

    iget v4, p2, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    if-nez v4, :cond_1d

    iget v4, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mOuterRadius:F

    iget v5, p2, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    if-ne v5, v3, :cond_1b

    goto :goto_23

    :cond_1b
    move v5, v1

    goto :goto_24

    :cond_1d
    iget v4, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mOuterRadius:F

    move v5, v4

    move v4, v1

    goto :goto_24

    :cond_22
    move v4, v1

    :goto_23
    move v5, v4

    :goto_24
    iget v6, p2, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    add-int/2addr v2, v6

    const/4 v6, 0x4

    if-ne v2, v6, :cond_3d

    iget v2, p2, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    if-nez v2, :cond_3a

    iget v2, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mOuterRadius:F

    iget p2, p2, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    if-ne p2, v3, :cond_37

    move p2, v2

    move v1, p2

    goto :goto_3e

    :cond_37
    move p2, v1

    move v1, v2

    goto :goto_3e

    :cond_3a
    iget p2, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mOuterRadius:F

    goto :goto_3e

    :cond_3d
    move p2, v1

    :goto_3e
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result p0

    if-eqz p0, :cond_52

    move v7, v5

    move v5, p2

    move p2, v7

    move v8, v4

    move v4, v1

    move v1, v8

    :cond_52
    if-eqz v0, :cond_57

    check-cast p1, Lcom/android/launcher3/card/IAreaWidget;

    goto :goto_58

    :cond_57
    const/4 p1, 0x0

    :goto_58
    if-nez p1, :cond_5b

    goto :goto_5e

    :cond_5b
    invoke-interface {p1, v4, v1, v5, p2}, Lcom/android/launcher3/card/IAreaWidget;->setRadiusArr(FFFF)V

    :goto_5e
    return-void
.end method

.method private final applyPadding(II)V
    .registers 8

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sget-object v1, Lcom/android/launcher3/card/uscard/USCardManager;->INSTANCE:Lcom/android/launcher3/card/uscard/USCardManager;

    invoke-virtual {v1}, Lcom/android/launcher3/card/uscard/USCardManager;->getCellLayoutParent()Lcom/android/launcher3/CellLayout;

    move-result-object v1

    if-nez v1, :cond_f

    const/4 v1, 0x0

    goto :goto_15

    :cond_f
    iget-object v2, p0, Lcom/android/launcher3/card/LauncherCardView;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-interface {p0, v2, v1, p1, v0}, Lcom/android/launcher3/card/IAreaWidget;->calculatePaddingRect(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/CellLayout;ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    :goto_15
    if-nez v1, :cond_1d

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_1d
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    iget-object v1, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mPaddingCache:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mCardEdge:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr p1, v4

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p2, v0

    invoke-virtual {v1, v2, v3, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p1, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mPaddingCache:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    iget p2, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mInnerMargin:I

    if-ge p1, p2, :cond_45

    goto :goto_46

    :cond_45
    move p1, p2

    :goto_46
    iput p1, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mBgWidth:I

    iget-object p2, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mCardEdge:Landroid/graphics/Rect;

    neg-int v0, p1

    neg-int p1, p1

    invoke-virtual {p2, v0, p1}, Landroid/graphics/Rect;->inset(II)V

    iget-object p1, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mBgDrawRectOnAnimEnd:Landroid/graphics/Rect;

    iget-object p2, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mCardEdge:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mBgDrawRectOnAnimStart:Landroid/graphics/Rect;

    iget-object p2, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mBgDrawRectOnAnimEnd:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget p0, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mBgWidth:I

    invoke-virtual {p1, p0, p0}, Landroid/graphics/Rect;->inset(II)V

    return-void
.end method

.method private final checkChildCardsPictureAble(Ljava/util/List;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/launcher3/card/LauncherCardInfo;",
            ">;)Z"
        }
    .end annotation

    instance-of p0, p1, Ljava/util/Collection;

    const/4 v0, 0x1

    if-eqz p0, :cond_c

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_c

    goto :goto_25

    :cond_c
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_10
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_25

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/card/LauncherCardInfo;

    sget-object v1, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->INSTANCE:Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->checkPictureAble(Lcom/android/launcher3/card/LauncherCardInfo;)Z

    move-result p1

    if-nez p1, :cond_10

    const/4 v0, 0x0

    :cond_25
    :goto_25
    return v0
.end method

.method private final clearStatusAfterRefresh(Z)V
    .registers 9

    invoke-static {p0}, Landroidx/core/view/ViewGroupKt;->getChildren(Landroid/view/ViewGroup;)Lo3/e;

    move-result-object v0

    invoke-static {v0}, Lo3/l;->t(Lo3/e;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_73

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher3/card/LauncherCardInfo;

    if-eqz v2, :cond_c

    invoke-virtual {v1}, Landroid/view/View;->hashCode()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/launcher3/card/uscard/USCardContainerView;->getMItemList()Ljava/util/List;

    move-result-object v3

    instance-of v4, v3, Ljava/util/Collection;

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_36

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_36

    :cond_34
    move v5, v6

    goto :goto_51

    :cond_36
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_34

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->hashCode()I

    move-result v4

    if-ne v4, v2, :cond_4e

    move v4, v5

    goto :goto_4f

    :cond_4e
    move v4, v6

    :goto_4f
    if-eqz v4, :cond_3a

    :goto_51
    if-nez v5, :cond_c

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "clearStatusAfterRefresh, remove old card: "

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "LauncherCardView-USCardContainerView"

    invoke-static {v3, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_68

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    goto :goto_c

    :cond_68
    const-wide/16 v2, 0x3e8

    new-instance v4, Lcom/android/launcher/guide/c;

    invoke-direct {v4, v1, p0}, Lcom/android/launcher/guide/c;-><init>(Landroid/view/View;Lcom/android/launcher3/card/uscard/USCardContainerView;)V

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/launcher3/card/uscard/USCardContainerView;->runAvoidDuringAnimation$OplusLauncher_OPPOPallExportAallRelease(JLjava/lang/Runnable;)V

    goto :goto_c

    :cond_73
    iget-object p1, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mCardRefreshAnimatorList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mCardRefreshMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    iget-object p1, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mPendingItemList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p0, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mItemList:Ljava/util/List;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_88
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_98

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->resetPivot()V

    goto :goto_88

    :cond_98
    return-void
.end method

.method public static synthetic clearStatusAfterRefresh$default(Lcom/android/launcher3/card/uscard/USCardContainerView;ZILjava/lang/Object;)V
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_5

    const/4 p1, 0x0

    :cond_5
    invoke-direct {p0, p1}, Lcom/android/launcher3/card/uscard/USCardContainerView;->clearStatusAfterRefresh(Z)V

    return-void
.end method

.method private static final clearStatusAfterRefresh$lambda-89$lambda-88(Landroid/view/View;Lcom/android/launcher3/card/uscard/USCardContainerView;)V
    .registers 4

    const-string v0, "$it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "clearStatusAfterRefreshInner, remove old card: "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "LauncherCardView-USCardContainerView"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_20
    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    return-void
.end method

.method private final drawBackgroundIfNecessary(Landroid/graphics/Canvas;)V
    .registers 6

    iget-boolean v0, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mIsNeedDrawBg:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mEvaluator:Landroid/animation/RectEvaluator;

    iget v1, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mScaleFractionDuringRecovery:F

    iget-object v2, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mBgDrawRectOnAnimStart:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mBgDrawRectOnAnimEnd:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2, v3}, Landroid/animation/RectEvaluator;->evaluate(FLandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mShadowColor:I

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mScaleFractionDuringRecovery:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    const-string v1, "curRect"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iget v0, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mBgRadius:F

    iget-object p0, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v0, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public static final fromXml(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/card/LauncherCardInfo;)Lcom/android/launcher3/card/uscard/USCardContainerView;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/Workspace<",
            "*>;",
            "Lcom/android/launcher3/card/LauncherCardInfo;",
            ")",
            "Lcom/android/launcher3/card/uscard/USCardContainerView;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/card/uscard/USCardContainerView;->Companion:Lcom/android/launcher3/card/uscard/USCardContainerView$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/android/launcher3/card/uscard/USCardContainerView$Companion;->fromXml(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/card/LauncherCardInfo;)Lcom/android/launcher3/card/uscard/USCardContainerView;

    move-result-object p0

    return-object p0
.end method

.method private final getChildInSpecialLoc(II)Landroid/view/View;
    .registers 11

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2e

    const/4 v1, 0x0

    :goto_7
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v7

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_29

    return-object v1

    :cond_29
    if-lt v2, v0, :cond_2c

    goto :goto_2e

    :cond_2c
    move v1, v2

    goto :goto_7

    :cond_2e
    :goto_2e
    const/4 p0, 0x0

    return-object p0
.end method

.method private final getInvalidCardList(Lcom/android/launcher3/model/data/ItemInfo;)Ljava/util/List;
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    if-ltz v2, :cond_a1

    const/4 v3, 0x2

    if-gt v2, v3, :cond_a1

    iget v2, v1, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    if-ltz v2, :cond_a1

    if-lt v2, v3, :cond_13

    goto/16 :goto_a1

    :cond_13
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget v3, v1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    int-to-float v3, v3

    iget v4, v1, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    int-to-float v4, v4

    const/high16 v5, 0x40000000  # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v4, v3

    iget v3, v1, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    int-to-float v3, v3

    iget v6, v1, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    int-to-float v6, v6

    div-float/2addr v6, v5

    add-float/2addr v6, v3

    iget-object v3, v0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mPendingItemList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_a0

    const/4 v8, 0x0

    :goto_33
    add-int/lit8 v9, v8, 0x1

    iget-object v10, v0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mPendingItemList:Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    const-string/jumbo v11, "null cannot be cast to non-null type com.android.launcher3.model.data.ItemInfo"

    invoke-static {v10, v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v10, Lcom/android/launcher3/model/data/ItemInfo;

    iget v11, v10, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    int-to-float v12, v11

    iget v13, v10, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    int-to-float v14, v13

    div-float/2addr v14, v5

    add-float/2addr v14, v12

    iget v12, v10, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    int-to-float v15, v12

    iget v10, v10, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    int-to-float v7, v10

    div-float/2addr v7, v5

    add-float/2addr v7, v15

    int-to-float v15, v11

    cmpl-float v15, v4, v15

    if-lez v15, :cond_6f

    add-int/2addr v11, v13

    int-to-float v11, v11

    cmpg-float v11, v4, v11

    if-gez v11, :cond_6f

    int-to-float v11, v12

    cmpl-float v11, v6, v11

    if-lez v11, :cond_6f

    add-int/2addr v12, v10

    int-to-float v10, v12

    cmpg-float v10, v6, v10

    if-ltz v10, :cond_8d

    :cond_6f
    iget v10, v1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    int-to-float v11, v10

    cmpl-float v11, v14, v11

    if-lez v11, :cond_8f

    iget v11, v1, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    add-int/2addr v10, v11

    int-to-float v10, v10

    cmpg-float v10, v14, v10

    if-gez v10, :cond_8f

    iget v10, v1, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    int-to-float v11, v10

    cmpl-float v11, v7, v11

    if-lez v11, :cond_8f

    iget v11, v1, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    add-int/2addr v10, v11

    int-to-float v10, v10

    cmpg-float v7, v7, v10

    if-gez v7, :cond_8f

    :cond_8d
    const/4 v7, 0x1

    goto :goto_90

    :cond_8f
    const/4 v7, 0x0

    :goto_90
    if-eqz v7, :cond_9b

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9b

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9b
    if-lt v9, v3, :cond_9e

    goto :goto_a0

    :cond_9e
    move v8, v9

    goto :goto_33

    :cond_a0
    :goto_a0
    return-object v2

    :cond_a1
    :goto_a1
    const/4 v0, 0x0

    return-object v0
.end method

.method private final getLayoutParamsBasedOnItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Landroid/widget/FrameLayout$LayoutParams;
    .registers 10

    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-nez v0, :cond_8

    move v0, v1

    goto :goto_11

    :cond_8
    iget-object v0, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mCardSizeMap:Lcom/android/launcher3/card/uscard/USCardContainerView$CardSizeMap;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/card/uscard/USCardContainerView$CardSizeMap;->getWidth(I)I

    move-result v0

    iget v3, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mCardGap:I

    add-int/2addr v0, v3

    :goto_11
    iget v3, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    const/4 v4, 0x1

    if-nez v3, :cond_17

    goto :goto_20

    :cond_17
    iget-object v1, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mCardSizeMap:Lcom/android/launcher3/card/uscard/USCardContainerView$CardSizeMap;

    invoke-virtual {v1, v4}, Lcom/android/launcher3/card/uscard/USCardContainerView$CardSizeMap;->getHeight(I)I

    move-result v1

    iget v3, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mCardGap:I

    add-int/2addr v1, v3

    :goto_20
    iget v3, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    const/4 v5, 0x0

    const-string v6, "LauncherCardView-USCardContainerView"

    if-eq v3, v2, :cond_30

    const/4 v7, 0x4

    if-eq v3, v7, :cond_30

    const-string p0, "The added card\'s spanX is abnormal"

    invoke-static {v6, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v5

    :cond_30
    iget-object v7, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mCardSizeMap:Lcom/android/launcher3/card/uscard/USCardContainerView$CardSizeMap;

    invoke-virtual {v7, v3}, Lcom/android/launcher3/card/uscard/USCardContainerView$CardSizeMap;->getWidth(I)I

    move-result v3

    iget p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    if-eq p1, v4, :cond_42

    if-eq p1, v2, :cond_42

    const-string p0, "The added card\'s spanY is abnormal"

    invoke-static {v6, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v5

    :cond_42
    iget-object p0, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mCardSizeMap:Lcom/android/launcher3/card/uscard/USCardContainerView$CardSizeMap;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/card/uscard/USCardContainerView$CardSizeMap;->getHeight(I)I

    move-result p0

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v3, p0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    return-object p1
.end method

.method public static synthetic h(Lcom/android/launcher3/card/uscard/USCardContainerView;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/card/uscard/USCardContainerView;->showLoadingIfNeed$lambda-8(Lcom/android/launcher3/card/uscard/USCardContainerView;)V

    return-void
.end method

.method public static synthetic i(Lcom/android/launcher3/card/uscard/USCardContainerView;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/card/uscard/USCardContainerView;->inflateAndAddXiaoBuAdviceView$lambda-18(Lcom/android/launcher3/card/uscard/USCardContainerView;Landroid/view/View;)V

    return-void
.end method

.method private static final inflateAndAddXiaoBuAdviceView$lambda-18(Lcom/android/launcher3/card/uscard/USCardContainerView;Landroid/view/View;)V
    .registers 3

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/android/launcher3/card/uscard/USCardManager;->INSTANCE:Lcom/android/launcher3/card/uscard/USCardManager;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lcom/android/launcher3/card/uscard/USCardManager;->turnOnXiaoBuMasterKey(Landroid/content/Context;)V

    return-void
.end method

.method private static final inflateAndAddXiaoBuAdviceView$lambda-21(Lcom/android/launcher3/card/uscard/USCardContainerView;Landroid/view/View;)V
    .registers 3

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/android/launcher3/card/uscard/USCardManager;->INSTANCE:Lcom/android/launcher3/card/uscard/USCardManager;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lcom/android/launcher3/card/uscard/USCardManager;->launchPrivacyActivity(Landroid/content/Context;)V

    return-void
.end method

.method private static final inflateAndAddXiaoBuAdviceView$lambda-24(Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;Lcom/android/launcher3/card/uscard/USCardContainerView;Landroid/view/View;)V
    .registers 3

    const-string p2, "$permissionManager"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p2, "this$0"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "context"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->launchKeyPermissionActivity(Landroid/content/Context;)V

    return-void
.end method

.method private final initCardName(Lcom/android/launcher3/card/LauncherCardInfo;)V
    .registers 8

    sget-object p1, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {p1}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_27

    iget-object p1, p0, Lcom/android/launcher3/card/LauncherCardView;->mLauncher:Lcom/android/launcher/Launcher;

    if-nez p1, :cond_10

    :cond_e
    :goto_e
    move p1, v1

    goto :goto_24

    :cond_10
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    if-nez p1, :cond_17

    goto :goto_e

    :cond_17
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    if-nez p1, :cond_1e

    goto :goto_e

    :cond_1e
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne p1, v2, :cond_e

    move p1, v0

    :goto_24
    if-eqz p1, :cond_27

    return-void

    :cond_27
    const p1, 0x7f0a011f

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/OplusBubbleTextView;

    iput-object p1, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->cardName:Lcom/android/launcher3/OplusBubbleTextView;

    iget-object p1, p0, Lcom/android/launcher3/card/LauncherCardView;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p1

    const-string v2, "mLauncher.deviceProfile"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isTabletInWideSize()Z

    move-result v2

    if-eqz v2, :cond_4d

    iget-object v2, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->cardName:Lcom/android/launcher3/OplusBubbleTextView;

    if-nez v2, :cond_48

    goto :goto_4d

    :cond_48
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/android/launcher3/OplusBubbleTextView;->setVisibility(I)V

    :cond_4d
    :goto_4d
    iget-object v2, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->cardName:Lcom/android/launcher3/OplusBubbleTextView;

    if-nez v2, :cond_52

    goto :goto_80

    :cond_52
    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v3

    iget p0, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mCardNamePaddingTop:I

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v4

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v2, v3, p0, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    iget p0, p1, Lcom/android/launcher3/DeviceProfile;->iconTextSizePx:I

    int-to-float p0, p0

    invoke-virtual {v2, v1, p0}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-boolean p0, p1, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    xor-int/2addr p0, v0

    invoke-virtual {v2, p0}, Lcom/android/launcher3/OplusBubbleTextView;->setTextVisibility(Z)V

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setForceDarkAllowed(Z)V

    invoke-virtual {v2}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f1205e0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_80
    return-void
.end method

.method private final invalidateChildren()V
    .registers 4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_15

    const/4 v1, 0x0

    :goto_7
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    if-lt v2, v0, :cond_13

    goto :goto_15

    :cond_13
    move v1, v2

    goto :goto_7

    :cond_15
    :goto_15
    return-void
.end method

.method private final invalidateDragView()V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mDragView:Lcom/android/launcher3/dragndrop/DragView;

    if-nez p0, :cond_5

    goto :goto_10

    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragView;->getContentView()Landroid/view/View;

    move-result-object p0

    instance-of v0, p0, Landroid/widget/ImageView;

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_10
    :goto_10
    return-void
.end method

.method private final isNeedAppearBgWhenStateChange(Lcom/android/launcher3/LauncherState;)Z
    .registers 3

    sget-object v0, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2c

    iget-object p1, p0, Lcom/android/launcher3/card/LauncherCardView;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p1, v0}, Lcom/android/launcher/Launcher;->isFromState(Lcom/android/launcher3/LauncherState;)Z

    move-result p1

    if-nez p1, :cond_1c

    iget-object p1, p0, Lcom/android/launcher3/card/LauncherCardView;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v0, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p1, v0}, Lcom/android/launcher/Launcher;->isFromState(Lcom/android/launcher3/LauncherState;)Z

    move-result p1

    if-eqz p1, :cond_2c

    :cond_1c
    iget-object p0, p0, Lcom/android/launcher3/card/LauncherCardView;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/togglebar/ToggleBarManager;->getTopState()Lcom/android/launcher/togglebar/state/ToggleBarBaseState;

    move-result-object p0

    instance-of p0, p0, Lcom/android/launcher/togglebar/state/ToggleBarLayoutState;

    if-nez p0, :cond_2c

    const/4 p0, 0x1

    goto :goto_2d

    :cond_2c
    const/4 p0, 0x0

    :goto_2d
    return p0
.end method

.method private final isNeedDisappearBgWhenStateChange(Lcom/android/launcher3/LauncherState;)Z
    .registers 2

    sget-object p0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic j(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;Lcom/android/launcher3/card/uscard/USCardContainerView;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/card/uscard/USCardContainerView;->notifyAnimationEnd$lambda-102(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;Lcom/android/launcher3/card/uscard/USCardContainerView;)V

    return-void
.end method

.method public static synthetic k(Lcom/android/launcher3/card/uscard/USCardContainerView;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/card/uscard/USCardContainerView;->onAttachedToWindow$lambda-51(Lcom/android/launcher3/card/uscard/USCardContainerView;)V

    return-void
.end method

.method public static synthetic l(Lcom/android/launcher3/card/uscard/USCardContainerView;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/card/uscard/USCardContainerView;->animBg$lambda-75$lambda-74(Lcom/android/launcher3/card/uscard/USCardContainerView;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic m(Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;Lcom/android/launcher3/card/uscard/USCardContainerView;Landroid/view/View;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/card/uscard/USCardContainerView;->inflateAndAddXiaoBuAdviceView$lambda-24(Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;Lcom/android/launcher3/card/uscard/USCardContainerView;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic n(Lcom/android/launcher3/card/uscard/USCardContainerView;Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/card/uscard/USCardContainerView;->animCardAlpha$lambda-77$lambda-76(Lcom/android/launcher3/card/uscard/USCardContainerView;Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private static final notifyAnimationEnd$lambda-102(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;Lcom/android/launcher3/card/uscard/USCardContainerView;)V
    .registers 3

    const-string v0, "$type"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "notifyAnimationEnd "

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "LauncherCardView-USCardContainerView"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->AVOID_ANIM_TYPES:Ljava/util/List;

    invoke-static {p0}, Lcom/android/launcher3/card/LauncherCardUtil;->checkDuringAnimation(Ljava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_26

    const-string/jumbo p0, "notifyAnimationEnd but check fail and return"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_26
    iget-object p0, p1, Lcom/android/launcher3/card/uscard/USCardContainerView;->mDuringAnimationPendingRunnable:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p1, Lcom/android/launcher3/card/uscard/USCardContainerView;->mDuringAnimationPendingRunnable:Ljava/util/List;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_33
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_43

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_33

    :cond_43
    return-void
.end method

.method public static synthetic o(Lcom/android/launcher3/card/uscard/USCardContainerView;Ljava/lang/Runnable;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/card/uscard/USCardContainerView;->runAvoidDuringAnimation$lambda-92(Lcom/android/launcher3/card/uscard/USCardContainerView;Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final onAttachedToWindow$lambda-51(Lcom/android/launcher3/card/uscard/USCardContainerView;)V
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/card/LauncherCardView;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v1, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0, v1}, Lcom/android/launcher3/card/uscard/USCardContainerView;->applySwitchState(ZIZ)V

    :cond_15
    return-void
.end method

.method public static synthetic p(Landroid/view/View;Lcom/android/launcher3/card/uscard/USCardContainerView;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/card/uscard/USCardContainerView;->clearStatusAfterRefresh$lambda-89$lambda-88(Landroid/view/View;Lcom/android/launcher3/card/uscard/USCardContainerView;)V

    return-void
.end method

.method private static final playLoadingToContentAnimator$lambda-11(Lcom/android/launcher3/card/uscard/USCardContainerView;Landroid/animation/ValueAnimator;)V
    .registers 4

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string/jumbo v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0}, Lcom/android/launcher3/card/uscard/USCardContainerView;->getMItemList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    goto :goto_1e

    :cond_31
    invoke-virtual {p0}, Lcom/android/launcher3/card/uscard/USCardContainerView;->getDefaultCard()Lcom/android/launcher3/card/DefaultCardView;

    move-result-object v0

    if-nez v0, :cond_38

    goto :goto_3e

    :cond_38
    const/4 v1, 0x1

    int-to-float v1, v1

    sub-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :goto_3e
    invoke-virtual {p0}, Lcom/android/launcher3/card/uscard/USCardContainerView;->getDefaultCard()Lcom/android/launcher3/card/DefaultCardView;

    move-result-object p0

    if-nez p0, :cond_45

    goto :goto_48

    :cond_45
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :goto_48
    return-void
.end method

.method public static synthetic q()V
    .registers 0

    invoke-static {}, Lcom/android/launcher3/card/uscard/USCardContainerView;->showLoadingIfNeed$lambda-7()V

    return-void
.end method

.method public static synthetic r(Lcom/android/launcher3/card/uscard/USCardContainerView;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/card/uscard/USCardContainerView;->playLoadingToContentAnimator$lambda-11(Lcom/android/launcher3/card/uscard/USCardContainerView;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private final refreshOldChildrenDrawState()V
    .registers 5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Li1/d;->g(II)Lm3/d;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    move-object v2, v0

    check-cast v2, Lz2/y;

    invoke-virtual {v2}, Lz2/y;->nextInt()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Lcom/android/launcher3/card/uscard/USCardView;

    if-eqz v3, :cond_d

    move-object v3, v2

    check-cast v3, Lcom/android/launcher3/card/uscard/USCardView;

    invoke-virtual {v3, v1}, Lcom/android/launcher3/card/EngineCardView;->setUseViewScreenshotOnDraw(Z)V

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    goto :goto_d

    :cond_2c
    return-void
.end method

.method private static final runAvoidDuringAnimation$lambda-92(Lcom/android/launcher3/card/uscard/USCardContainerView;Ljava/lang/Runnable;)V
    .registers 4

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$runBlock"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mDuringAnimationPendingRunnable:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    const-string v0, "LauncherCardView-USCardContainerView"

    const-string/jumbo v1, "runAvoidDuringAnimation, clear delayed"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mDuringAnimationPendingRunnable:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_23
    return-void
.end method

.method public static synthetic s(Lcom/android/launcher3/card/uscard/USCardContainerView;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/card/uscard/USCardContainerView;->inflateAndAddXiaoBuAdviceView$lambda-21(Lcom/android/launcher3/card/uscard/USCardContainerView;Landroid/view/View;)V

    return-void
.end method

.method private final setIsNeedShowBg(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mIsNeedDrawBg:Z

    return-void
.end method

.method private final setPreviewUiDataForChild(Lcom/android/launcher3/dragndrop/GroupChildCardDragInfo;)V
    .registers 9

    sget-object v0, Lcom/android/launcher3/dragndrop/CardIdentity;->Companion:Lcom/android/launcher3/dragndrop/CardIdentity$Companion;

    invoke-virtual {p1}, Lcom/android/launcher3/dragndrop/GroupChildCardDragInfo;->getCardIdentity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/dragndrop/CardIdentity$Companion;->convertCardIdentity(Ljava/lang/String;)Lcom/android/launcher3/dragndrop/CardIdentity;

    move-result-object v0

    if-nez v0, :cond_d

    return-void

    :cond_d
    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/CardIdentity;->getCardState()I

    move-result v1

    if-gez v1, :cond_14

    return-void

    :cond_14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPreviewUiDataForChild: cardIdentity = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", uidata.size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/launcher3/dragndrop/GroupChildCardDragInfo;->getUiData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LauncherCardView-USCardContainerView"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mItemList:Ljava/util/List;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_41
    :goto_41
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setPreviewUiDataForChild: it = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", itemInfo = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    instance-of v4, v1, Lcom/android/launcher3/card/CommonCardView;

    const/4 v5, 0x0

    if-eqz v4, :cond_69

    move-object v6, v1

    check-cast v6, Lcom/android/launcher3/card/CommonCardView;

    goto :goto_6a

    :cond_69
    move-object v6, v5

    :goto_6a
    if-nez v6, :cond_6e

    move-object v6, v5

    goto :goto_72

    :cond_6e
    invoke-virtual {v6}, Lcom/android/launcher3/card/LauncherCardView;->getItemInfo()Lcom/android/launcher3/card/LauncherCardInfo;

    move-result-object v6

    :goto_72
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_81

    move-object v5, v1

    check-cast v5, Lcom/android/launcher3/card/CommonCardView;

    :cond_81
    if-nez v5, :cond_84

    goto :goto_41

    :cond_84
    invoke-virtual {v5}, Lcom/android/launcher3/card/LauncherCardView;->getItemInfo()Lcom/android/launcher3/card/LauncherCardInfo;

    move-result-object v3

    if-nez v3, :cond_8b

    goto :goto_41

    :cond_8b
    iget v4, v3, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/CardIdentity;->getCardType()I

    move-result v5

    if-ne v4, v5, :cond_41

    iget v3, v3, Lcom/android/launcher3/card/LauncherCardInfo;->mCardId:I

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/CardIdentity;->getCardId()I

    move-result v4

    if-ne v3, v4, :cond_41

    check-cast v1, Lcom/android/launcher3/card/CommonCardView;

    invoke-virtual {p1}, Lcom/android/launcher3/dragndrop/GroupChildCardDragInfo;->getUiData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/launcher3/card/CommonCardView;->setPreviewUiData(Ljava/lang/String;)V

    goto :goto_41

    :cond_a5
    return-void
.end method

.method private final setRealLongPressedView(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mCardAlphaAnim:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_7

    goto :goto_e

    :cond_7
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-ne v0, v2, :cond_e

    move v1, v2

    :cond_e
    :goto_e
    if-eqz v1, :cond_11

    return-void

    :cond_11
    iput-object p1, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mLongPressedView:Landroid/view/View;

    return-void
.end method

.method private final setUnselectedChildCardAlpha(FLandroid/view/View;)V
    .registers 6

    if-eqz p2, :cond_42

    invoke-virtual {p2}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object p2

    iget-object p0, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mItemList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_11
    :goto_11
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v2

    invoke-static {v2, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_11

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_2e
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_32
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_42

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_32

    :cond_42
    return-void
.end method

.method private static final showLoadingIfNeed$lambda-7()V
    .registers 0

    return-void
.end method

.method private static final showLoadingIfNeed$lambda-8(Lcom/android/launcher3/card/uscard/USCardContainerView;)V
    .registers 2

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/card/uscard/USCardContainerView;->setLoadTimeout(Z)V

    invoke-virtual {p0}, Lcom/android/launcher3/card/uscard/USCardContainerView;->isContentEmpty()Z

    move-result p0

    if-eqz p0, :cond_1b

    sget-object p0, Lcom/android/launcher3/card/seed/SeedCardClient;->INSTANCE:Lcom/android/launcher3/card/seed/SeedCardClient;

    sget-object v0, Lcom/android/launcher3/card/uscard/USCardManager;->INSTANCE:Lcom/android/launcher3/card/uscard/USCardManager;

    invoke-virtual {v0}, Lcom/android/launcher3/card/uscard/USCardManager;->getCellLayoutParent()Lcom/android/launcher3/CellLayout;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/card/seed/SeedCardClient;->useRecommendList(Lcom/android/launcher3/CellLayout;)V

    :cond_1b
    return-void
.end method

.method private final showMasterKeyCard(Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;)Z
    .registers 2

    invoke-virtual {p1}, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->getHasMasterStatusPermission()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private final showMissingKeyPermissionsCard(Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;)Z
    .registers 2

    invoke-virtual {p1}, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->getHasMetisPermission()Z

    move-result p0

    if-eqz p0, :cond_15

    invoke-virtual {p1}, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->getHasDeepthinkerPermission()Z

    move-result p0

    if-eqz p0, :cond_15

    invoke-virtual {p1}, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->getHasUMSPermission()Z

    move-result p0

    if-nez p0, :cond_13

    goto :goto_15

    :cond_13
    const/4 p0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 p0, 0x1

    :goto_16
    return p0
.end method

.method private final showNoAdviceCard(Lcom/android/launcher3/card/seed/SeedContentResult;)Z
    .registers 2

    invoke-virtual {p1}, Lcom/android/launcher3/card/seed/SeedContentResult;->getServicesInfo()Lcom/android/launcher3/util/IntSparseArrayMap;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/util/IntSparseArrayMap;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1d

    sget-object p0, Lcom/oplus/card/manager/domain/CardManager;->Companion:Lcom/oplus/card/manager/domain/CardManager$Companion;

    invoke-virtual {p0}, Lcom/oplus/card/manager/domain/CardManager$Companion;->getInstance()Lcom/oplus/card/manager/domain/CardManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/card/manager/domain/CardManager;->getCardConfigInfoManager()Lcom/oplus/card/config/domain/ICardConfigInfoManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/card/config/domain/ICardConfigInfoManager;->getCardConfigMapSize()I

    move-result p0

    if-gtz p0, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 p0, 0x0

    goto :goto_1e

    :cond_1d
    :goto_1d
    const/4 p0, 0x1

    :goto_1e
    return p0
.end method

.method private final showPermissionGuideCard(Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;)Z
    .registers 2

    invoke-virtual {p1}, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->getHasGuideStatusPermission()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private final showPrivacyPermissionCard(Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;)Z
    .registers 2

    invoke-virtual {p1}, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->getHasPrivacyStatusPermission()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private final statisticExposeDataWhenRefresh()V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mPendingItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_5a

    invoke-virtual {p0}, Lcom/android/launcher3/card/uscard/USCardContainerView;->getMStatisticsRecorder()Lcom/android/launcher3/card/seed/StatisticsRecorder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/card/seed/StatisticsRecorder;->beginReportExposeEvents()V

    iget-object v0, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mPendingItemList:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lz2/l;->t(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    instance-of v3, v2, Lcom/android/launcher3/card/uscard/USCardView;

    if-eqz v3, :cond_35

    check-cast v2, Lcom/android/launcher3/card/uscard/USCardView;

    goto :goto_36

    :cond_35
    const/4 v2, 0x0

    :goto_36
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_22

    :cond_3a
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_53

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/card/uscard/USCardView;

    invoke-virtual {p0}, Lcom/android/launcher3/card/uscard/USCardContainerView;->getMStatisticsRecorder()Lcom/android/launcher3/card/seed/StatisticsRecorder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v1, v3}, Lcom/android/launcher3/card/seed/StatisticsRecorder;->reportEvent(Lcom/android/launcher3/card/uscard/USCardView;I)V

    goto :goto_3e

    :cond_53
    invoke-virtual {p0}, Lcom/android/launcher3/card/uscard/USCardContainerView;->getMStatisticsRecorder()Lcom/android/launcher3/card/seed/StatisticsRecorder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/card/seed/StatisticsRecorder;->endReportExposeEvents()V

    :cond_5a
    invoke-virtual {p0}, Lcom/android/launcher3/card/uscard/USCardContainerView;->getMStatisticsRecorder()Lcom/android/launcher3/card/seed/StatisticsRecorder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/card/seed/StatisticsRecorder;->updateExposeId()V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .registers 1

    return-void
.end method

.method public final addInUSCardContainer(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)Z
    .registers 12

    const-string v0, "child"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p2, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/4 v1, 0x0

    const-string v2, "LauncherCardView-USCardContainerView"

    const/16 v3, -0x73

    if-eq v0, v3, :cond_19

    const-string p0, "itemInfo.container incorrect"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_19
    invoke-virtual {p2}, Lcom/android/launcher3/model/data/ItemInfo;->dumpProperties()Ljava/lang/String;

    move-result-object v0

    const-string v3, "itemInfo "

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    iget v3, p2, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v4, p2, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iget v5, p2, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    invoke-virtual {v0, v3, v4, v5, v4}, Lcom/android/launcher3/util/GridOccupancy;->isRegionVacant(IIII)Z

    move-result v0

    if-nez v0, :cond_3a

    const-string p0, "Not enough space to add cards"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_3a
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/card/uscard/USCardContainerView;->applyChildRadius(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)V

    invoke-direct {p0, p2}, Lcom/android/launcher3/card/uscard/USCardContainerView;->getLayoutParamsBasedOnItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_44

    return v1

    :cond_44
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {p0, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p2, Lcom/android/launcher3/model/data/ItemInfo;->rank:I

    invoke-virtual {p0}, Lcom/android/launcher3/card/uscard/USCardContainerView;->getMItemList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    iget v4, p2, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v5, p2, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iget v6, p2, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v7, p2, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    const/4 v8, 0x1

    invoke-virtual/range {v3 .. v8}, Lcom/android/launcher3/util/GridOccupancy;->markCells(IIIIZ)V

    iget p0, p2, Lcom/android/launcher3/model/data/ItemInfo;->rank:I

    const-string p1, "addView success rank = "

    invoke-static {p0, p1, v2}, Lcom/android/common/config/f;->a(ILjava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final animBg(Z)V
    .registers 8

    const-string v0, "animBg  animIn: "

    const-string v1, "LauncherCardView-USCardContainerView"

    invoke-static {p1, v0, v1}, Lcom/android/common/config/c;->a(ZLjava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1d

    new-instance v0, Ly2/i;

    iget v1, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mScaleFractionDuringRecovery:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ly2/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-wide/16 v1, 0xfa

    goto :goto_2f

    :cond_1d
    const-wide/16 v1, 0x226

    new-instance v0, Ly2/i;

    iget v3, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mScaleFractionDuringRecovery:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Ly2/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_2f
    iget-object v3, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mBgDrawRectOnAnimEnd:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mCardEdge:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v3, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mBgDrawRectOnAnimStart:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mBgDrawRectOnAnimEnd:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget v4, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mBgWidth:I

    invoke-virtual {v3, v4, v4}, Landroid/graphics/Rect;->inset(II)V

    iget-object v3, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mBgAnimator:Landroid/animation/ValueAnimator;

    if-nez v3, :cond_47

    goto :goto_4a

    :cond_47
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    :goto_4a
    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    iget-object v5, v0, Ly2/i;->a:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    move-result v5

    aput v5, v3, v4

    iget-object v0, v0, Ly2/i;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    const/4 v4, 0x1

    aput v0, v3, v4

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mBgAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_6c

    goto :goto_8a

    :cond_6c
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;

    invoke-direct {v1}, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/android/launcher3/card/uscard/a;

    invoke-direct {v1, p0, v4}, Lcom/android/launcher3/card/uscard/a;-><init>(Lcom/android/launcher3/card/uscard/USCardContainerView;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Lcom/android/launcher3/card/uscard/USCardContainerView$animBg$2$2;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/card/uscard/USCardContainerView$animBg$2$2;-><init>(Lcom/android/launcher3/card/uscard/USCardContainerView;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :goto_8a
    return-void
.end method

.method public final animCardAlpha(ZZ)V
    .registers 8

    const-string v0, "animCardAlpha  fadeIn: "

    const-string v1, ", dragStarted: "

    const-string v2, "LauncherCardView-USCardContainerView"

    invoke-static {v0, p1, v1, p2, v2}, Lcom/android/common/multiapp/b;->a(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/card/LauncherCardView;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v1, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-nez v0, :cond_96

    iget-object v0, p0, Lcom/android/launcher3/card/LauncherCardView;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v1, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_1f

    goto/16 :goto_96

    :cond_1f
    if-eqz p2, :cond_24

    const-wide/16 v0, 0x29b

    goto :goto_26

    :cond_24
    const-wide/16 v0, 0x258

    :goto_26
    const/high16 p2, 0x3f800000  # 1.0f

    if-eqz p1, :cond_3a

    new-instance p1, Ly2/i;

    iget v2, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mCardAlpha:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {p1, v2, v3}, Ly2/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4c

    :cond_3a
    const-wide/16 v0, 0x226

    new-instance p1, Ly2/i;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const v3, 0x3e99999a  # 0.3f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {p1, v2, v3}, Ly2/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_4c
    invoke-virtual {p0}, Lcom/android/launcher3/card/uscard/USCardContainerView;->getLongPressedView()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_53

    goto :goto_56

    :cond_53
    invoke-virtual {v2, p2}, Landroid/view/View;->setAlpha(F)V

    :goto_56
    iget-object p2, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mCardAlphaAnim:Landroid/animation/ValueAnimator;

    if-nez p2, :cond_5b

    goto :goto_5e

    :cond_5b
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    :goto_5e
    const/4 p2, 0x2

    new-array p2, p2, [F

    const/4 v3, 0x0

    iget-object v4, p1, Ly2/i;->a:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    aput v4, p2, v3

    const/4 v3, 0x1

    iget-object p1, p1, Ly2/i;->b:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    aput p1, p2, v3

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mCardAlphaAnim:Landroid/animation/ValueAnimator;

    if-nez p1, :cond_80

    goto :goto_96

    :cond_80
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;

    invoke-direct {p2}, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance p2, Lcom/android/launcher3/w0;

    invoke-direct {p2, p0, v2}, Lcom/android/launcher3/w0;-><init>(Lcom/android/launcher3/card/uscard/USCardContainerView;Landroid/view/View;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_96
    :goto_96
    return-void
.end method

.method public applySwitchState(ZIZ)V
    .registers 10

    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/card/LauncherCardView;->applySwitchState(ZIZ)V

    iget-boolean p2, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mIsInDragMode:Z

    if-nez p2, :cond_36

    iget-object p2, p0, Lcom/android/launcher3/card/LauncherCardView;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object p3, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p2, p3}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p2

    if-nez p2, :cond_1b

    iget-object p2, p0, Lcom/android/launcher3/card/LauncherCardView;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object p3, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p2, p3}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p2

    if-eqz p2, :cond_36

    :cond_1b
    invoke-virtual {p0}, Lcom/android/launcher3/card/uscard/USCardContainerView;->isContentEmpty()Z

    move-result p2

    if-eqz p2, :cond_33

    if-eqz p1, :cond_33

    iget-object v0, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->coroutineScope:Landroidx/lifecycle/LifecycleCoroutineScope;

    const/4 v1, 0x0

    new-instance v3, Lcom/android/launcher3/card/uscard/USCardContainerView$applySwitchState$1;

    const/4 p2, 0x0

    invoke-direct {v3, p0, p1, p2}, Lcom/android/launcher3/card/uscard/USCardContainerView$applySwitchState$1;-><init>(Lcom/android/launcher3/card/uscard/USCardContainerView;ZLb3/d;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lq3/g;->e(Lq3/f0;Lb3/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lq3/i1;

    goto :goto_36

    :cond_33
    invoke-virtual {p0, p1}, Lcom/android/launcher3/card/uscard/USCardContainerView;->animBg(Z)V

    :cond_36
    :goto_36
    return-void
.end method

.method public final cardLoadFailTip()V
    .registers 3

    const-string v0, "LauncherCardView-USCardContainerView"

    const-string v1, "cardLoadFailTip"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->usDebug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/card/uscard/USCardContainerView;->isContentEmpty()Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->isLoadTimeout:Z

    sget-object v0, Lcom/android/launcher3/card/seed/SeedEntranceHelper;->INSTANCE:Lcom/android/launcher3/card/seed/SeedEntranceHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/card/seed/SeedEntranceHelper;->assembleLocalTipCardList()Lcom/android/launcher3/card/seed/SeedContentResult;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/card/uscard/USCardContainerView;->preformCardsRefresh(Lcom/android/launcher3/card/seed/SeedContentResult;)V

    :cond_19
    return-void
.end method

.method public final checkDragCardState()I
    .registers 2

    const v0, 0x7f0b0014

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_e

    check-cast p0, Ljava/lang/Integer;

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    if-nez p0, :cond_13

    const/4 p0, 0x0

    goto :goto_17

    :cond_13
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_17
    return p0
.end method

.method public final createUSChildCard(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/card/seed/SelectedServiceInfo;)Landroid/view/View;
    .registers 11

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lcom/android/launcher3/card/LauncherCardInfo;

    if-eqz v0, :cond_70

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/launcher3/card/CardCreator;->inflateCardView(Landroid/view/ViewGroup;ZZ)Lcom/android/launcher3/card/LauncherCardView;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/launcher3/card/uscard/USCardView;

    move-object v2, p1

    check-cast v2, Lcom/android/launcher3/card/LauncherCardInfo;

    const/4 v3, 0x3

    iput v3, v2, Lcom/android/launcher3/card/LauncherCardInfo;->mHostId:I

    if-eqz p2, :cond_30

    sget-object v3, Lcom/oplus/card/manager/domain/CardManager;->Companion:Lcom/oplus/card/manager/domain/CardManager$Companion;

    invoke-virtual {v3}, Lcom/oplus/card/manager/domain/CardManager$Companion;->getInstance()Lcom/oplus/card/manager/domain/CardManager;

    move-result-object v3

    iget v4, v2, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    iget v5, v2, Lcom/android/launcher3/card/LauncherCardInfo;->mCardId:I

    iget v2, v2, Lcom/android/launcher3/card/LauncherCardInfo;->mHostId:I

    new-instance v6, Lcom/android/launcher3/card/seed/SeedParams;

    invoke-direct {v6, p2}, Lcom/android/launcher3/card/seed/SeedParams;-><init>(Lcom/android/launcher3/card/seed/SelectedServiceInfo;)V

    invoke-virtual {v3, v4, v5, v2, v6}, Lcom/oplus/card/manager/domain/CardManager;->createCard(IIILcom/android/launcher3/card/seed/SeedParams;)Lcom/oplus/card/manager/domain/model/CardModel;

    move-result-object v2

    goto :goto_4a

    :cond_30
    sget-object v3, Lcom/oplus/card/manager/domain/CardManager;->Companion:Lcom/oplus/card/manager/domain/CardManager$Companion;

    invoke-virtual {v3}, Lcom/oplus/card/manager/domain/CardManager$Companion;->getInstance()Lcom/oplus/card/manager/domain/CardManager;

    move-result-object v3

    iget v4, v2, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    iget v5, v2, Lcom/android/launcher3/card/LauncherCardInfo;->mCardId:I

    iget v6, v2, Lcom/android/launcher3/card/LauncherCardInfo;->mHostId:I

    new-instance v7, Lcom/android/launcher3/card/seed/SeedParams;

    invoke-direct {v7, v2}, Lcom/android/launcher3/card/seed/SeedParams;-><init>(Lcom/android/launcher3/card/LauncherCardInfo;)V

    const/4 v2, 0x2

    invoke-virtual {v7, v2}, Lcom/android/launcher3/card/seed/SeedParams;->updateCreateType(I)Lcom/android/launcher3/card/seed/SeedParams;

    move-result-object v2

    invoke-virtual {v3, v4, v5, v6, v2}, Lcom/oplus/card/manager/domain/CardManager;->createCard(IIILcom/android/launcher3/card/seed/SeedParams;)Lcom/oplus/card/manager/domain/model/CardModel;

    move-result-object v2

    :goto_4a
    invoke-virtual {v1, p1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    const p1, 0x7f0a046e

    invoke-virtual {v1, p1, p2}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/card/CommonCardView;->setCardModel(Lcom/oplus/card/manager/domain/model/CardModel;)V

    invoke-virtual {v1, p0}, Lcom/android/launcher3/card/uscard/USCardView;->setContainer(Lcom/android/launcher3/card/uscard/USCardContainerView;)V

    invoke-virtual {v1}, Lcom/android/launcher3/card/CommonCardView;->logCardInfo()Ljava/lang/String;

    move-result-object p1

    const-string p2, "createUSChildCard success info = "

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "LauncherCardView-USCardContainerView"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/launcher3/card/uscard/USCardContainerView;->getCardLoadChecker()Lcom/android/launcher3/card/utils/CardLoadChecker;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/launcher3/card/utils/CardLoadChecker;->addPreLoadCard(Lcom/android/launcher3/card/uscard/USCardView;)V

    return-object v0

    :cond_70
    const/4 p0, 0x0

    return-object p0
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 6

    if-nez p1, :cond_3

    goto :goto_5f

    :cond_3
    invoke-direct {p0, p1}, Lcom/android/launcher3/card/uscard/USCardContainerView;->drawBackgroundIfNecessary(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mCardEdge:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iget v1, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mBgWidth:I

    int-to-float v2, v1

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v1, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mPath:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/android/launcher3/card/uscard/USCardContainerView;->getRadiusArr()[F

    move-result-object v2

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v0, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    iget-object v0, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    invoke-super {p0, p1}, Lcom/android/launcher3/card/LauncherCardView;->dispatchDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lcom/android/launcher3/card/uscard/USCardContainerView;->getDefaultCard()Lcom/android/launcher3/card/DefaultCardView;

    move-result-object v0

    if-nez v0, :cond_36

    goto :goto_3d

    :cond_36
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getDrawingTime()J

    move-result-wide v1

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    :goto_3d
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->getItemInfo()Lcom/android/launcher3/card/LauncherCardInfo;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v1, -0x64

    if-ne v0, v1, :cond_4d

    invoke-virtual {p0, p1}, Lcom/android/launcher3/card/LauncherCardView;->drawDeleteIconIfNecessary(Landroid/graphics/Canvas;)V

    :cond_4d
    iget-object v0, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->cardName:Lcom/android/launcher3/OplusBubbleTextView;

    if-nez v0, :cond_52

    goto :goto_5f

    :cond_52
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getDrawingTime()J

    move-result-wide v1

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :goto_5f
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    if-nez p1, :cond_3

    goto :goto_25

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_14

    if-eq v0, v1, :cond_10

    const/4 v1, 0x3

    if-eq v0, v1, :cond_10

    goto :goto_25

    :cond_10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mIsTouching:Z

    goto :goto_25

    :cond_14
    iput-boolean v1, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mIsTouching:Z

    iget-object v0, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mTouchDownPos:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    :goto_25
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public drawShadowIfNecessary(Landroid/graphics/Canvas;)V
    .registers 2

    return-void
.end method

.method public endDrag()V
    .registers 2

    invoke-super {p0}, Lcom/android/launcher3/card/LauncherCardView;->endDrag()V

    sget-object v0, Lcom/android/launcher3/card/uscard/USCardManager;->INSTANCE:Lcom/android/launcher3/card/uscard/USCardManager;

    invoke-virtual {v0}, Lcom/android/launcher3/card/uscard/USCardManager;->checkRejectAlarm()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mIsInDragMode:Z

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public executeCardDestroy(Z)V
    .registers 4

    iget-object p0, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mItemList:Ljava/util/List;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    instance-of v1, v0, Lcom/android/launcher3/card/CommonCardView;

    if-eqz v1, :cond_19

    check-cast v0, Lcom/android/launcher3/card/CommonCardView;

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    if-nez v0, :cond_1d

    goto :goto_6

    :cond_1d
    invoke-virtual {v0, p1}, Lcom/android/launcher3/card/CommonCardView;->executeCardDestroy(Z)V

    goto :goto_6

    :cond_21
    return-void
.end method

.method public executeCardReplaceHost()V
    .registers 3

    iget-object p0, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mItemList:Ljava/util/List;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    instance-of v1, v0, Lcom/android/launcher3/card/CommonCardView;

    if-eqz v1, :cond_19

    check-cast v0, Lcom/android/launcher3/card/CommonCardView;

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    if-nez v0, :cond_1d

    goto :goto_6

    :cond_1d
    invoke-virtual {v0}, Lcom/android/launcher3/card/CommonCardView;->executeCardReplaceHost()V

    goto :goto_6

    :cond_21
    return-void
.end method

.method public findCardView([I)Lcom/android/launcher3/card/LauncherCardView;
    .registers 5

    const-string v0, "ints"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    instance-of v2, v1, Lcom/android/launcher3/card/LauncherCardView;

    if-eqz v2, :cond_b

    check-cast v1, Lcom/android/launcher3/card/LauncherCardView;

    invoke-interface {v1, p1}, Lcom/oplus/card/manager/domain/ICardView;->findCardView([I)Lcom/android/launcher3/card/LauncherCardView;

    move-result-object v2

    if-nez v2, :cond_24

    goto :goto_b

    :cond_24
    return-object v1

    :cond_25
    invoke-super {p0, p1}, Lcom/oplus/card/manager/domain/ICardView;->findCardView([I)Lcom/android/launcher3/card/LauncherCardView;

    move-result-object p0

    return-object p0
.end method

.method public final findCellToAddChildCard(Lcom/android/launcher3/model/data/ItemInfo;)Z
    .registers 15

    const-string v0, "itemInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v1, 0x0

    const/16 v2, 0x64

    if-eq v0, v2, :cond_14

    const-string p0, "itemType incorrect: "

    const-string p1, "LauncherCardView-USCardContainerView"

    invoke-static {v0, p0, p1}, Lcom/android/common/config/f;->a(ILjava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_14
    move v0, v1

    :goto_15
    add-int/lit8 v2, v0, 0x1

    const/4 v3, 0x2

    invoke-static {v1, v3, v3}, Li1/i;->f(III)I

    move-result v4

    const/4 v5, 0x1

    if-ltz v4, :cond_53

    move v6, v1

    :goto_20
    add-int/lit8 v7, v6, 0x2

    rsub-int/lit8 v8, v0, 0x2

    iget v9, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    if-lt v8, v9, :cond_2a

    move v8, v5

    goto :goto_2b

    :cond_2a
    move v8, v1

    :goto_2b
    rsub-int/lit8 v10, v6, 0x4

    iget v11, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    if-lt v10, v11, :cond_33

    move v10, v5

    goto :goto_34

    :cond_33
    move v10, v1

    :goto_34
    if-ne v9, v5, :cond_3a

    if-ge v6, v3, :cond_3a

    move v12, v1

    goto :goto_3b

    :cond_3a
    move v12, v5

    :goto_3b
    if-eqz v8, :cond_4e

    if-eqz v10, :cond_4e

    if-eqz v12, :cond_4e

    iget-object v8, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual {v8, v6, v0, v11, v9}, Lcom/android/launcher3/util/GridOccupancy;->isRegionVacant(IIII)Z

    move-result v8

    if-eqz v8, :cond_4e

    iput v6, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iput v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    return v5

    :cond_4e
    if-ne v6, v4, :cond_51

    goto :goto_53

    :cond_51
    move v6, v7

    goto :goto_20

    :cond_53
    :goto_53
    if-le v2, v5, :cond_56

    return v1

    :cond_56
    move v0, v2

    goto :goto_15
.end method

.method public getAreaType()Lcom/android/launcher3/card/IAreaWidget$WIDGET_TYPE;
    .registers 1

    sget-object p0, Lcom/android/launcher3/card/IAreaWidget$WIDGET_TYPE;->CARD:Lcom/android/launcher3/card/IAreaWidget$WIDGET_TYPE;

    return-object p0
.end method

.method public final getBackupChild()Landroid/view/View;
    .registers 4

    invoke-static {p0}, Landroidx/core/view/ViewGroupKt;->getChildren(Landroid/view/ViewGroup;)Lo3/e;

    move-result-object p0

    invoke-interface {p0}, Lo3/e;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0a011b

    if-ne v1, v2, :cond_20

    const/4 v1, 0x1

    goto :goto_21

    :cond_20
    const/4 v1, 0x0

    :goto_21
    if-eqz v1, :cond_8

    goto :goto_25

    :cond_24
    const/4 v0, 0x0

    :goto_25
    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public getCardBounds()Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mCardEdge:Landroid/graphics/Rect;

    return-object p0
.end method

.method public final getCardBoundsForPopupShortCut(Landroid/graphics/Rect;Lcom/android/launcher3/views/BaseDragLayer;Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Lcom/android/launcher3/views/BaseDragLayer<",
            "*>;",
            "Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;",
            ")V"
        }
    .end annotation

    const-string/jumbo v0, "outPos"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dragLayer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "popUpContainer"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p0, p1}, Lcom/android/launcher3/views/BaseDragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    iget-object v0, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mTempLongPressedView:Landroid/view/View;

    if-nez v0, :cond_19

    goto :goto_7e

    :cond_19
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v1, :cond_27

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfo;

    goto :goto_28

    :cond_27
    const/4 v0, 0x0

    :goto_28
    if-nez v0, :cond_2b

    goto :goto_7e

    :cond_2b
    iget-object v1, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mTempLongPressedView:Landroid/view/View;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const-string/jumbo v2, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v3

    if-eqz v3, :cond_56

    invoke-virtual {p3}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result p3

    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    sub-int/2addr p3, v1

    neg-int p3, p3

    div-int/lit8 p3, p3, 0x2

    goto :goto_5f

    :cond_56
    invoke-virtual {p3}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result p3

    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    sub-int/2addr p3, v1

    div-int/lit8 p3, p3, 0x2

    :goto_5f
    iget-object v1, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mTempLongPressedView:Landroid/view/View;

    invoke-virtual {p2, v1, v2}, Lcom/android/launcher3/views/BaseDragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    iget p2, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    const/4 v1, 0x4

    if-eq p2, v1, :cond_76

    iget p2, v0, Lcom/android/launcher3/model/data/ItemInfo;->rank:I

    const/4 v0, 0x0

    if-nez p2, :cond_72

    invoke-virtual {v2, p3, v0}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_76

    :cond_72
    neg-int p2, p3

    invoke-virtual {v2, p2, v0}, Landroid/graphics/Rect;->offset(II)V

    :cond_76
    :goto_76
    iget p2, v2, Landroid/graphics/Rect;->left:I

    iput p2, p1, Landroid/graphics/Rect;->left:I

    iget p2, v2, Landroid/graphics/Rect;->right:I

    iput p2, p1, Landroid/graphics/Rect;->right:I

    :goto_7e
    iget p2, p1, Landroid/graphics/Rect;->top:I

    iget p3, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mBgWidth:I

    add-int/2addr p2, p3

    iput p2, p1, Landroid/graphics/Rect;->top:I

    iget p2, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mPaddingCache:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mCardBoundsMarginForShortCut:I

    sub-int/2addr v0, v1

    add-int/2addr v0, p3

    sub-int/2addr p2, v0

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    iget-object p1, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mCardAlphaAnim:Landroid/animation/ValueAnimator;

    if-nez p1, :cond_97

    goto :goto_9a

    :cond_97
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :goto_9a
    iget-object p1, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mTempLongPressedView:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/android/launcher3/card/uscard/USCardContainerView;->setRealLongPressedView(Landroid/view/View;)V

    return-void
.end method

.method public final getCardLoadChecker()Lcom/android/launcher3/card/utils/CardLoadChecker;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->cardLoadChecker$delegate:Ly2/e;

    invoke-interface {p0}, Ly2/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/card/utils/CardLoadChecker;

    return-object p0
.end method

.method public getCardName()Lcom/android/launcher3/BubbleTextView;
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->cardName:Lcom/android/launcher3/OplusBubbleTextView;

    if-nez v0, :cond_e

    const v0, 0x7f0a011f

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/android/launcher3/BubbleTextView;

    :cond_e
    return-object v0
.end method

.method public final getChildCards()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/launcher3/card/uscard/USCardView;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/launcher3/card/uscard/USCardContainerView;->isContentEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    iget-object p0, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mItemList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_13
    :goto_13
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/android/launcher3/card/uscard/USCardView;

    if-eqz v2, :cond_13

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_25
    invoke-static {v0}, Lz2/r;->N(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getClipRoundRect(Landroid/graphics/Rect;Z)V
    .registers 4

    const-string/jumbo v0, "outRect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->getDrawingRect(Landroid/graphics/Rect;)V

    if-eqz p2, :cond_20

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f070741

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    iget p2, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr p2, p0

    iput p2, p1, Landroid/graphics/Rect;->top:I

    iget p2, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr p2, p0

    iput p2, p1, Landroid/graphics/Rect;->right:I

    :cond_20
    return-void
.end method

.method public final getDefaultCard()Lcom/android/launcher3/card/DefaultCardView;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->defaultCard:Lcom/android/launcher3/card/DefaultCardView;

    return-object p0
.end method

.method public getDeleteIconPadding(Landroid/graphics/Rect;)V
    .registers 4

    const-string/jumbo v0, "outRect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->getDrawingRect(Landroid/graphics/Rect;)V

    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Rect;->top:I

    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Rect;->left:I

    iget v0, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f070741

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    iget v0, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, p0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    const-string p0, "getDeleteIconPadding: outRect = "

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "LauncherCardView-USCardContainerView"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final getLongPressedView()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mLongPressedView:Landroid/view/View;

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mTempLongPressedView:Landroid/view/View;

    :cond_6
    return-object v0
.end method

.method public final getMCardSizeMap()Lcom/android/launcher3/card/uscard/USCardContainerView$CardSizeMap;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mCardSizeMap:Lcom/android/launcher3/card/uscard/USCardContainerView$CardSizeMap;

    return-object p0
.end method

.method public final getMDragView()Lcom/android/launcher3/dragndrop/DragView;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/launcher3/dragndrop/DragView<",
            "*>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mDragView:Lcom/android/launcher3/dragndrop/DragView;

    return-object p0
.end method

.method public final getMItemList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mItemList:Ljava/util/List;

    return-object p0
.end method

.method public final getMOccupied()Lcom/android/launcher3/util/GridOccupancy;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    return-object p0
.end method

.method public final getMPendingItemList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mPendingItemList:Ljava/util/List;

    return-object p0
.end method

.method public final getMStatisticsRecorder()Lcom/android/launcher3/card/seed/StatisticsRecorder;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mStatisticsRecorder$delegate:Ly2/e;

    invoke-interface {p0}, Ly2/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/card/seed/StatisticsRecorder;

    return-object p0
.end method

.method public getRadiusArr()[F
    .registers 5

    const/16 v0, 0x8

    new-array v0, v0, [F

    const/4 v1, 0x0

    :goto_5
    add-int/lit8 v2, v1, 0x1

    iget v3, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mOuterRadius:F

    aput v3, v0, v1

    const/4 v1, 0x7

    if-le v2, v1, :cond_f

    return-object v0

    :cond_f
    move v1, v2

    goto :goto_5
.end method

.method public getSmartView()Landroid/view/View;
    .registers 1

    return-object p0
.end method

.method public getUiDataForDrag()Ljava/lang/String;
    .registers 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mItemList:Ljava/util/List;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_b
    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_72

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    instance-of v2, v1, Lcom/android/launcher3/card/CommonCardView;

    const/4 v3, 0x3

    if-eqz v2, :cond_41

    new-instance v2, Lcom/android/launcher3/dragndrop/CardIdentity;

    const/4 v4, 0x0

    check-cast v1, Lcom/android/launcher3/card/CommonCardView;

    invoke-virtual {v1}, Lcom/android/launcher3/card/LauncherCardView;->getItemInfo()Lcom/android/launcher3/card/LauncherCardInfo;

    move-result-object v5

    iget v5, v5, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    invoke-virtual {v1}, Lcom/android/launcher3/card/LauncherCardView;->getItemInfo()Lcom/android/launcher3/card/LauncherCardInfo;

    move-result-object v6

    iget v6, v6, Lcom/android/launcher3/card/LauncherCardInfo;->mCardId:I

    invoke-direct {v2, v4, v5, v6, v3}, Lcom/android/launcher3/dragndrop/CardIdentity;-><init>(IIII)V

    new-instance v3, Lcom/android/launcher3/dragndrop/GroupChildCardDragInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/dragndrop/CardIdentity;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/launcher3/card/CommonCardView;->getUiDataForDrag()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v2, v1}, Lcom/android/launcher3/dragndrop/GroupChildCardDragInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_41
    instance-of v2, v1, Landroid/widget/FrameLayout;

    if-eqz v2, :cond_b

    check-cast v1, Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher3/card/LauncherCardInfo;

    if-eqz v2, :cond_b

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v2, "null cannot be cast to non-null type com.android.launcher3.card.LauncherCardInfo"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher3/card/LauncherCardInfo;

    new-instance v2, Lcom/android/launcher3/dragndrop/CardIdentity;

    iget v1, v1, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    const/4 v4, -0x1

    invoke-direct {v2, v1, v4, v4, v3}, Lcom/android/launcher3/dragndrop/CardIdentity;-><init>(IIII)V

    new-instance v1, Lcom/android/launcher3/dragndrop/GroupChildCardDragInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/dragndrop/CardIdentity;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lcom/android/launcher3/dragndrop/GroupChildCardDragInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_72
    new-instance p0, Lcom/google/gson/Gson;

    invoke-direct {p0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Gson().toJson(list)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public getViewScreenshot(Z)Landroid/graphics/Bitmap;
    .registers 13

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    :cond_8
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    if-lez v0, :cond_94

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    if-gtz v0, :cond_16

    goto/16 :goto_94

    :cond_16
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v4

    if-lez v4, :cond_93

    :goto_30
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_8e

    instance-of v6, v3, Lcom/android/launcher3/card/uscard/USCardView;

    if-eqz v6, :cond_58

    check-cast v3, Lcom/android/launcher3/card/uscard/USCardView;

    invoke-virtual {v3, p1}, Lcom/android/launcher3/card/CommonCardView;->getViewScreenshot(Z)Landroid/graphics/Bitmap;

    move-result-object v6

    if-nez v6, :cond_45

    goto :goto_8e

    :cond_45
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getTop()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v6, v7, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    sget-object v3, Lcom/android/common/util/BitmapUtils;->INSTANCE:Lcom/android/common/util/BitmapUtils;

    invoke-virtual {v3, v6}, Lcom/android/common/util/BitmapUtils;->recycleBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_8e

    :cond_58
    invoke-static {v3}, Lcom/android/common/util/BitmapUtils;->getSoftBitmapOfView(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v6

    if-nez v6, :cond_5f

    goto :goto_8e

    :cond_5f
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v7

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v8

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v9

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v10

    add-int/2addr v10, v9

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v9

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v3, v9

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9, v7, v8, v10, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0}, Lcom/android/launcher3/card/uscard/USCardContainerView;->getRadiusArr()[F

    move-result-object v3

    invoke-static {v6, v3}, Lcom/android/common/util/BitmapUtils;->bitmapToPicture(Landroid/graphics/Bitmap;[F)Landroid/graphics/Picture;

    move-result-object v3

    invoke-virtual {v2, v3, v9}, Landroid/graphics/Canvas;->drawPicture(Landroid/graphics/Picture;Landroid/graphics/Rect;)V

    sget-object v3, Lcom/android/common/util/BitmapUtils;->INSTANCE:Lcom/android/common/util/BitmapUtils;

    invoke-virtual {v3, v6}, Lcom/android/common/util/BitmapUtils;->recycleBitmap(Landroid/graphics/Bitmap;)V

    :cond_8e
    :goto_8e
    if-lt v5, v4, :cond_91

    goto :goto_93

    :cond_91
    move v3, v5

    goto :goto_30

    :cond_93
    :goto_93
    return-object v0

    :cond_94
    :goto_94
    const-string p0, "LauncherCardView-USCardContainerView"

    const-string p1, "getViewScreenshot, bitmap width and height must be > 0"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public getVisibility()I
    .registers 2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result p0

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-lez p0, :cond_b

    const/4 p0, 0x0

    goto :goto_c

    :cond_b
    const/4 p0, 0x4

    :goto_c
    return p0
.end method

.method public getWidgetInset(Lcom/android/launcher3/DeviceProfile;Landroid/graphics/Rect;)V
    .registers 3

    if-nez p1, :cond_3

    goto :goto_1a

    :cond_3
    invoke-virtual {p1}, Lcom/android/launcher3/DeviceProfile;->shouldInsetWidgets()Z

    move-result p0

    if-nez p0, :cond_10

    if-nez p2, :cond_c

    goto :goto_f

    :cond_c
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    :goto_f
    return-void

    :cond_10
    if-nez p2, :cond_13

    goto :goto_1a

    :cond_13
    iget-object p0, p1, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    iget-object p0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->defaultWidgetPadding:Landroid/graphics/Rect;

    invoke-virtual {p2, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_1a
    return-void
.end method

.method public getWorkspaceVisualDragBounds(Landroid/graphics/Rect;)V
    .registers 4

    const-string v0, "bounds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, v0, p0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public hasSmartView()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public final inflateAndAddChildCard(Lcom/android/launcher3/card/LauncherCardInfo;Lcom/android/launcher3/card/seed/SelectedServiceInfo;I)Z
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "info"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inflateAndAddChildCard, LauncherCardInfo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", forceRebuild = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    if-nez p2, :cond_1f

    goto :goto_25

    :cond_1f
    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher3/card/seed/SelectedServiceInfo;->getServiceInfo()Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;

    move-result-object v4

    if-nez v4, :cond_27

    :goto_25
    move-object v4, v3

    goto :goto_2f

    :cond_27
    invoke-virtual {v4}, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->getForceRebuild()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    :goto_2f
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "LauncherCardView-USCardContainerView"

    invoke-static {v4, v2}, Lcom/android/common/debug/LogUtils;->usDebug(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, -0x73

    iput v2, v1, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v2

    const-string/jumbo v5, "null cannot be cast to non-null type com.android.launcher3.model.data.ItemInfo"

    invoke-static {v2, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v2, Lcom/android/launcher3/model/data/ItemInfo;

    iget v2, v2, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    iput v2, v1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher3/card/uscard/USCardContainerView;->findCellToAddChildCard(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v2

    iget-object v5, v0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mPendingItemList:Ljava/util/List;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_59
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v6, :cond_12c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    const-string/jumbo v10, "null cannot be cast to non-null type com.android.launcher3.card.LauncherCardInfo"

    invoke-static {v9, v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v9, Lcom/android/launcher3/card/LauncherCardInfo;

    iget v10, v1, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    iget v11, v9, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    if-ne v10, v11, :cond_59

    iget v10, v1, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iget v11, v9, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    if-ne v10, v11, :cond_59

    iget v10, v1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v11, v9, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    if-ne v10, v11, :cond_59

    iget v10, v1, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v11, v9, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    if-ne v10, v11, :cond_59

    iget v10, v1, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iget v11, v9, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    if-ne v10, v11, :cond_59

    if-nez p2, :cond_94

    goto :goto_a2

    :cond_94
    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher3/card/seed/SelectedServiceInfo;->getServiceInfo()Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;

    move-result-object v10

    if-nez v10, :cond_9b

    goto :goto_a2

    :cond_9b
    invoke-virtual {v10}, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->getForceRebuild()Z

    move-result v10

    if-nez v10, :cond_a2

    goto :goto_a3

    :cond_a2
    :goto_a2
    move v7, v8

    :goto_a3
    if-eqz v7, :cond_59

    instance-of v2, v6, Lcom/android/launcher3/card/uscard/USCardView;

    if-eqz v2, :cond_ad

    move-object v5, v6

    check-cast v5, Lcom/android/launcher3/card/uscard/USCardView;

    goto :goto_ae

    :cond_ad
    move-object v5, v3

    :goto_ae
    if-nez v5, :cond_b1

    goto :goto_b7

    :cond_b1
    invoke-virtual {v5}, Lcom/android/launcher3/card/CommonCardView;->getCardModel()Lcom/android/launcher3/card/CardModelWrapper;

    move-result-object v5

    if-nez v5, :cond_b9

    :goto_b7
    move-object v5, v3

    goto :goto_bd

    :cond_b9
    invoke-virtual {v5}, Lcom/android/launcher3/card/CardModelWrapper;->getSeedParams()Lcom/android/launcher3/card/seed/SeedParams;

    move-result-object v5

    :goto_bd
    if-nez v5, :cond_c0

    goto :goto_d2

    :cond_c0
    if-nez p2, :cond_c3

    goto :goto_c9

    :cond_c3
    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher3/card/seed/SelectedServiceInfo;->getServiceInfo()Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;

    move-result-object v7

    if-nez v7, :cond_cb

    :goto_c9
    move v7, v8

    goto :goto_cf

    :cond_cb
    invoke-virtual {v7}, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->getCannotReduceRecommend()Z

    move-result v7

    :goto_cf
    invoke-virtual {v5, v7}, Lcom/android/launcher3/card/seed/SeedParams;->setReduceDisable(Z)V

    :goto_d2
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/card/uscard/USCardContainerView;->getMOccupied()Lcom/android/launcher3/util/GridOccupancy;

    move-result-object v10

    iget v11, v1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v12, v1, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iget v13, v1, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v14, v1, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    const/4 v15, 0x1

    invoke-virtual/range {v10 .. v15}, Lcom/android/launcher3/util/GridOccupancy;->markCells(IIIIZ)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/card/uscard/USCardContainerView;->getMItemList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez p2, :cond_ec

    goto :goto_105

    :cond_ec
    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher3/card/seed/SelectedServiceInfo;->getServiceInfo()Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;

    move-result-object v0

    if-nez v0, :cond_f3

    goto :goto_105

    :cond_f3
    invoke-virtual {v0}, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->getInitData()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_fa

    goto :goto_105

    :cond_fa
    if-eqz v2, :cond_ff

    move-object v3, v6

    check-cast v3, Lcom/android/launcher3/card/uscard/USCardView;

    :cond_ff
    if-nez v3, :cond_102

    goto :goto_105

    :cond_102
    invoke-virtual {v3, v0}, Lcom/android/launcher3/card/uscard/USCardView;->updateCardByMetis(Ljava/lang/String;)V

    :goto_105
    const-string/jumbo v0, "new Card: "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/card/LauncherCardInfo;->dumpProperties()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " \n old card "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/android/launcher3/card/LauncherCardInfo;->dumpProperties()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v8

    :cond_12c
    const-string v3, "isFoundCell: "

    const-string v5, ", cellX: "

    invoke-static {v3, v2, v5}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", cellY: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "  serviceId: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/launcher3/card/LauncherCardInfo;->mServiceId:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, -0x1

    iput v3, v1, Lcom/android/launcher3/model/data/ItemInfo;->rank:I

    const-wide/16 v3, -0x1

    if-nez p2, :cond_15c

    goto :goto_16e

    :cond_15c
    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher3/card/seed/SelectedServiceInfo;->getServiceInfo()Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;

    move-result-object v5

    if-nez v5, :cond_163

    goto :goto_16e

    :cond_163
    invoke-virtual {v5}, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->getIntentId()Ljava/lang/Long;

    move-result-object v5

    if-nez v5, :cond_16a

    goto :goto_16e

    :cond_16a
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    :goto_16e
    iput-wide v3, v1, Lcom/android/launcher3/card/LauncherCardInfo;->mIntentId:J

    const-string v3, ""

    if-nez p2, :cond_175

    goto :goto_184

    :cond_175
    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher3/card/seed/SelectedServiceInfo;->getServiceInfo()Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;

    move-result-object v4

    if-nez v4, :cond_17c

    goto :goto_184

    :cond_17c
    invoke-virtual {v4}, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->getPolicy()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_183

    goto :goto_184

    :cond_183
    move-object v3, v4

    :goto_184
    iput-object v3, v1, Lcom/android/launcher3/card/LauncherCardInfo;->mPolicy:Ljava/lang/String;

    if-eqz v2, :cond_1ba

    invoke-virtual/range {p0 .. p2}, Lcom/android/launcher3/card/uscard/USCardContainerView;->createUSChildCard(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/card/seed/SelectedServiceInfo;)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_18f

    goto :goto_1ba

    :cond_18f
    iput-boolean v7, v0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mContentChanged:Z

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/card/uscard/USCardContainerView;->addInUSCardContainer(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v3

    if-eqz v3, :cond_1bb

    sget-object v3, Lcom/android/launcher3/card/uscard/USCardManager;->INSTANCE:Lcom/android/launcher3/card/uscard/USCardManager;

    new-instance v4, Landroid/graphics/Point;

    iget v5, v1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v6, v1, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    invoke-direct {v4, v5, v6}, Landroid/graphics/Point;-><init>(II)V

    new-instance v5, Landroid/graphics/Point;

    iget v6, v1, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v1, v1, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-direct {v5, v6, v1}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v3, v2, v4, v5}, Lcom/android/launcher3/card/uscard/USCardManager;->onCardAdded(Landroid/view/View;Landroid/graphics/Point;Landroid/graphics/Point;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/card/uscard/USCardContainerView;->checkDragCardState()I

    move-result v1

    if-nez v1, :cond_1bb

    move/from16 v1, p3

    invoke-direct {v0, v2, v1}, Lcom/android/launcher3/card/uscard/USCardContainerView;->addCardRefreshAnim(Landroid/view/View;I)V

    goto :goto_1bb

    :cond_1ba
    :goto_1ba
    move v7, v8

    :cond_1bb
    :goto_1bb
    return v7
.end method

.method public final inflateAndAddXiaoBuAdviceView(ILcom/android/launcher3/card/uscard/USRelatedPermissionManager;)V
    .registers 16

    const-string/jumbo v0, "permissionManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, -0x5

    if-eq p1, v1, :cond_1a

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/common/util/DisplayDensityUtils;->getDefaultDisplayContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0d005f

    invoke-static {v2, v3, v0}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_29

    :cond_1a
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/common/util/DisplayDensityUtils;->getDefaultDisplayContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0d0060

    invoke-static {v2, v3, v0}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    :goto_29
    const v2, 0x7f0a012b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/coui/appcompat/button/COUIButton;

    const v3, 0x7f0a012a

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const/4 v4, 0x0

    if-nez v2, :cond_3f

    goto :goto_4f

    :cond_3f
    const/high16 v5, 0x41400000  # 12.0f

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v6, v5

    invoke-virtual {v2, v4, v6}, Landroidx/appcompat/widget/AppCompatButton;->setTextSize(IF)V

    :goto_4f
    const/4 v5, 0x1

    if-eq p1, v1, :cond_fb

    const/4 v1, -0x4

    if-eq p1, v1, :cond_c7

    const/4 p2, -0x3

    if-eq p1, p2, :cond_93

    const/4 p2, -0x2

    if-eq p1, p2, :cond_5d

    goto/16 :goto_117

    :cond_5d
    if-nez v2, :cond_60

    goto :goto_71

    :cond_60
    const p2, 0x7f120141

    invoke-virtual {v2, p2}, Landroid/widget/Button;->setText(I)V

    invoke-virtual {v2}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_71
    if-nez v3, :cond_74

    goto :goto_85

    :cond_74
    const p2, 0x7f1204dc

    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_85
    if-nez v2, :cond_89

    goto/16 :goto_117

    :cond_89
    new-instance p2, Lcom/android/launcher3/card/uscard/b;

    invoke-direct {p2, p0, v5}, Lcom/android/launcher3/card/uscard/b;-><init>(Lcom/android/launcher3/card/uscard/USCardContainerView;I)V

    invoke-virtual {v2, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_117

    :cond_93
    if-nez v2, :cond_96

    goto :goto_a7

    :cond_96
    const p2, 0x7f120140

    invoke-virtual {v2, p2}, Landroid/widget/Button;->setText(I)V

    invoke-virtual {v2}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_a7
    if-nez v3, :cond_aa

    goto :goto_bb

    :cond_aa
    const p2, 0x7f1204da

    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_bb
    if-nez v2, :cond_be

    goto :goto_117

    :cond_be
    new-instance p2, Lcom/android/launcher3/card/uscard/b;

    invoke-direct {p2, p0, v4}, Lcom/android/launcher3/card/uscard/b;-><init>(Lcom/android/launcher3/card/uscard/USCardContainerView;I)V

    invoke-virtual {v2, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_117

    :cond_c7
    if-nez v2, :cond_ca

    goto :goto_db

    :cond_ca
    const v1, 0x7f12013f

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setText(I)V

    invoke-virtual {v2}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_db
    if-nez v3, :cond_de

    goto :goto_ef

    :cond_de
    const v1, 0x7f1204d9

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_ef
    if-nez v2, :cond_f2

    goto :goto_117

    :cond_f2
    new-instance v1, Lcom/android/launcher/touch/b;

    invoke-direct {v1, p2, p0}, Lcom/android/launcher/touch/b;-><init>(Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;Lcom/android/launcher3/card/uscard/USCardContainerView;)V

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_117

    :cond_fb
    if-nez v2, :cond_fe

    goto :goto_103

    :cond_fe
    const/16 p2, 0x8

    invoke-virtual {v2, p2}, Landroid/widget/Button;->setVisibility(I)V

    :goto_103
    if-nez v3, :cond_106

    goto :goto_117

    :cond_106
    const p2, 0x7f1204db

    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_117
    new-instance p2, Lcom/android/launcher3/card/LauncherCardInfo;

    invoke-direct {p2}, Lcom/android/launcher3/card/LauncherCardInfo;-><init>()V

    iput v4, p2, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iput v4, p2, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    const/4 v1, 0x4

    iput v1, p2, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    const/4 v1, 0x2

    iput v1, p2, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    const/16 v1, -0x73

    iput v1, p2, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    iput p1, p2, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    const/4 p1, 0x3

    iput p1, p2, Lcom/android/launcher3/card/LauncherCardInfo;->mHostId:I

    const-string p1, "inflateAndAddXiaoBuAdviceView LauncherCardInfo: "

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "LauncherCardView-USCardContainerView"

    invoke-static {v1, p1}, Lcom/android/common/debug/LogUtils;->usDebug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mPendingItemList:Ljava/util/List;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_140
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    const-string/jumbo v4, "null cannot be cast to non-null type com.android.launcher3.card.LauncherCardInfo"

    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v3, Lcom/android/launcher3/card/LauncherCardInfo;

    iget v4, p2, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    iget v6, v3, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    if-ne v4, v6, :cond_140

    iget v4, p2, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iget v6, v3, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    if-ne v4, v6, :cond_140

    iget v4, p2, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v6, v3, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    if-ne v4, v6, :cond_140

    iget v4, p2, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v6, v3, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    if-ne v4, v6, :cond_140

    iget v4, p2, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iget v6, v3, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    if-ne v4, v6, :cond_140

    invoke-virtual {p0}, Lcom/android/launcher3/card/uscard/USCardContainerView;->getMOccupied()Lcom/android/launcher3/util/GridOccupancy;

    move-result-object v7

    iget v8, p2, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v9, p2, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iget v10, p2, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v11, p2, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    const/4 v12, 0x1

    invoke-virtual/range {v7 .. v12}, Lcom/android/launcher3/util/GridOccupancy;->markCells(IIIIZ)V

    invoke-virtual {p0}, Lcom/android/launcher3/card/uscard/USCardContainerView;->getMItemList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "new Card: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/launcher3/card/LauncherCardInfo;->dumpProperties()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " \n old card "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/launcher3/card/LauncherCardInfo;->dumpProperties()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x7d

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1b8
    invoke-virtual {v0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const-string p1, "it"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lcom/android/launcher3/card/uscard/USCardContainerView;->addInUSCardContainer(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p1

    if-eqz p1, :cond_1cf

    invoke-virtual {p0}, Lcom/android/launcher3/card/uscard/USCardContainerView;->checkDragCardState()I

    move-result p1

    if-nez p1, :cond_1cf

    invoke-direct {p0, v0, v5}, Lcom/android/launcher3/card/uscard/USCardContainerView;->addCardRefreshAnim(Landroid/view/View;I)V

    :cond_1cf
    return-void
.end method

.method public final isContentEmpty()Z
    .registers 6

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_34

    invoke-static {p0}, Landroidx/core/view/ViewGroupKt;->getChildren(Landroid/view/ViewGroup;)Lo3/e;

    move-result-object p0

    invoke-interface {p0}, Lo3/e;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_10
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f0a011b

    if-eq v3, v4, :cond_2c

    instance-of v0, v0, Lcom/android/launcher3/card/DefaultCardView;

    if-eqz v0, :cond_2a

    goto :goto_2c

    :cond_2a
    move v0, v1

    goto :goto_2d

    :cond_2c
    :goto_2c
    move v0, v2

    :goto_2d
    if-eqz v0, :cond_10

    move p0, v2

    goto :goto_32

    :cond_31
    move p0, v1

    :goto_32
    if-eqz p0, :cond_35

    :cond_34
    move v1, v2

    :cond_35
    return v1
.end method

.method public final isForbidUpdateRecommendCards()Z
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/card/LauncherCardView;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragController;->isGlobalDragging()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3e

    sget-object v0, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->INSTANCE:Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->isSurfaceAnimRunning()Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_3e

    :cond_16
    iget-object v0, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mDragView:Lcom/android/launcher3/dragndrop/DragView;

    const/4 v2, 0x1

    if-nez v0, :cond_3d

    iget-boolean v0, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mIsTouching:Z

    if-nez v0, :cond_3d

    iget-object v0, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mCardAlphaAnim:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_25

    :cond_23
    move v0, v1

    goto :goto_2c

    :cond_25
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-ne v0, v2, :cond_23

    move v0, v2

    :goto_2c
    if-nez v0, :cond_3d

    iget-object p0, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mRefreshAnimSet:Landroid/animation/AnimatorSet;

    if-nez p0, :cond_34

    :cond_32
    move p0, v1

    goto :goto_3b

    :cond_34
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p0

    if-ne p0, v2, :cond_32

    move p0, v2

    :goto_3b
    if-eqz p0, :cond_3e

    :cond_3d
    move v1, v2

    :cond_3e
    :goto_3e
    return v1
.end method

.method public final isLoadTimeout()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->isLoadTimeout:Z

    return p0
.end method

.method public isShowingInVisiblePage()Z
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/card/LauncherCardView;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v0

    sget-object v1, Lcom/android/launcher3/card/uscard/USCardManager;->INSTANCE:Lcom/android/launcher3/card/uscard/USCardManager;

    invoke-virtual {v1}, Lcom/android/launcher3/card/uscard/USCardManager;->getCellLayoutParent()Lcom/android/launcher3/CellLayout;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher3/OplusCellLayout;

    if-eqz v2, :cond_2f

    iget-object v2, p0, Lcom/android/launcher3/card/LauncherCardView;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/launcher3/card/uscard/USCardManager;->getCellLayoutParent()Lcom/android/launcher3/CellLayout;

    move-result-object v1

    const-string/jumbo v3, "null cannot be cast to non-null type com.android.launcher3.OplusCellLayout"

    invoke-static {v1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher3/OplusCellLayout;

    invoke-virtual {v1}, Lcom/android/launcher3/OplusCellLayout;->getScreenId()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/android/launcher3/Workspace;->getPageIndexForScreenId(I)I

    move-result v1

    goto :goto_47

    :cond_2f
    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->getItemInfo()Lcom/android/launcher3/card/LauncherCardInfo;

    move-result-object v1

    if-eqz v1, :cond_46

    iget-object v1, p0, Lcom/android/launcher3/card/LauncherCardView;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->getItemInfo()Lcom/android/launcher3/card/LauncherCardInfo;

    move-result-object v2

    iget v2, v2, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-virtual {v1, v2}, Lcom/android/launcher3/Workspace;->getPageIndexForScreenId(I)I

    move-result v1

    goto :goto_47

    :cond_46
    move v1, v0

    :goto_47
    iget-object p0, p0, Lcom/android/launcher3/card/LauncherCardView;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getVisiblePageIndices()Lcom/android/launcher3/util/IntSet;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/launcher3/util/IntSet;->contains(I)Z

    move-result p0

    if-nez p0, :cond_63

    const-string/jumbo p0, "resumeCard but card is NOT at this page, atPage = "

    const-string v2, ", currentPage = "

    const-string v3, "LauncherCardView-USCardContainerView"

    invoke-static {p0, v1, v2, v0, v3}, Lcom/android/common/config/g;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_63
    const/4 p0, 0x1

    return p0
.end method

.method public isViewScreenshotValid()Z
    .registers 8

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_32

    const/4 v2, 0x0

    move v4, v1

    move v3, v2

    :goto_a
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const-string v6, "getChildAt(index)"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v4, :cond_2b

    instance-of v4, v3, Lcom/android/launcher3/card/uscard/USCardView;

    if-eqz v4, :cond_1e

    check-cast v3, Lcom/android/launcher3/card/uscard/USCardView;

    goto :goto_1f

    :cond_1e
    const/4 v3, 0x0

    :goto_1f
    if-nez v3, :cond_23

    move v3, v2

    goto :goto_27

    :cond_23
    invoke-virtual {v3}, Lcom/android/launcher3/card/EngineCardView;->isViewScreenshotValid()Z

    move-result v3

    :goto_27
    if-eqz v3, :cond_2b

    move v4, v1

    goto :goto_2c

    :cond_2b
    move v4, v2

    :goto_2c
    if-lt v5, v0, :cond_30

    move v1, v4

    goto :goto_32

    :cond_30
    move v3, v5

    goto :goto_a

    :cond_32
    :goto_32
    return v1
.end method

.method public logCardInfo()Ljava/lang/String;
    .registers 4

    const-string v0, "LauncherCardView-USCardContainerView, cellXY-"

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->getItemInfo()Lcom/android/launcher3/card/LauncherCardInfo;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_f

    move-object v1, v2

    goto :goto_15

    :cond_f
    iget v1, v1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->getItemInfo()Lcom/android/launcher3/card/LauncherCardInfo;

    move-result-object p0

    if-nez p0, :cond_24

    goto :goto_2a

    :cond_24
    iget p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_2a
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public markKeepResumedStateOnDetach()V
    .registers 3

    iget-object p0, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mItemList:Ljava/util/List;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    instance-of v1, v0, Lcom/android/launcher3/card/CommonCardView;

    if-eqz v1, :cond_19

    check-cast v0, Lcom/android/launcher3/card/CommonCardView;

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    if-nez v0, :cond_1d

    goto :goto_6

    :cond_1d
    invoke-virtual {v0}, Lcom/android/launcher3/card/CommonCardView;->markKeepResumedStateOnDetach()V

    goto :goto_6

    :cond_21
    return-void
.end method

.method public markUnsubscribedOnDetach()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    instance-of v2, v1, Lcom/android/launcher3/card/CommonCardView;

    if-eqz v2, :cond_1a

    move-object v2, v1

    check-cast v2, Lcom/android/launcher3/card/CommonCardView;

    goto :goto_1b

    :cond_1a
    const/4 v2, 0x0

    :goto_1b
    if-nez v2, :cond_1e

    goto :goto_21

    :cond_1e
    invoke-virtual {v2}, Lcom/android/launcher3/card/CommonCardView;->markUnsubscribedOnDetach()V

    :goto_21
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    goto :goto_6

    :cond_25
    sget-object v0, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->INSTANCE:Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->clearSpecifiedUSCardContainer(Lcom/android/launcher3/card/uscard/USCardContainerView;)V

    sget-object v0, Lcom/oplus/card/manager/domain/CardManager;->Companion:Lcom/oplus/card/manager/domain/CardManager$Companion;

    invoke-virtual {v0}, Lcom/oplus/card/manager/domain/CardManager$Companion;->getInstance()Lcom/oplus/card/manager/domain/CardManager;

    move-result-object v0

    const v1, 0xd3ecf26

    invoke-virtual {v0, v1}, Lcom/oplus/card/manager/domain/CardManager;->removeCardConfigInfoOfInnerCard(I)V

    iget-object v0, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual {v0}, Lcom/android/launcher3/util/GridOccupancy;->clear()V

    iget-object v0, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Lcom/android/launcher3/card/uscard/USCardContainerView;->getMStatisticsRecorder()Lcom/android/launcher3/card/seed/StatisticsRecorder;

    move-result-object p0

    if-nez p0, :cond_47

    goto :goto_4a

    :cond_47
    invoke-virtual {p0}, Lcom/android/launcher3/card/seed/StatisticsRecorder;->reportCacheEventsSync()V

    :goto_4a
    return-void
.end method

.method public noPermissionViewShowing()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public final notifyAnimationEnd$OplusLauncher_OPPOPallExportAallRelease(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;)V
    .registers 3

    const-string/jumbo v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/card/uscard/USCardContainerView;->AVOID_ANIM_TYPES:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    return-void

    :cond_f
    new-instance v0, Lcom/android/launcher/guide/c;

    invoke-direct {v0, p1, p0}, Lcom/android/launcher/guide/c;-><init>(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;Lcom/android/launcher3/card/uscard/USCardContainerView;)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAttachedToWindow()V
    .registers 4

    sget-object v0, Lcom/android/launcher3/card/uscard/USCardManager;->INSTANCE:Lcom/android/launcher3/card/uscard/USCardManager;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/card/uscard/USCardManager;->onCreateUSCardContainer(Lcom/android/launcher3/card/uscard/USCardContainerView;)V

    invoke-super {p0}, Lcom/android/launcher3/card/LauncherCardView;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/launcher3/card/LauncherCardView;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/OplusBaseActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    iget-object v0, p0, Lcom/android/launcher3/card/LauncherCardView;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/statemanager/StateManager;->addStateListener(Lcom/android/launcher3/statemanager/StateManager$StateListener;)V

    iget-object v0, p0, Lcom/android/launcher3/card/LauncherCardView;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v1, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_2f

    new-instance v0, Lcom/android/launcher3/card/uscard/c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/card/uscard/c;-><init>(Lcom/android/launcher3/card/uscard/USCardContainerView;I)V

    const-wide/16 v1, 0x64

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2f
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 3

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/launcher3/card/LauncherCardView;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/OplusBaseActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    iget-object v0, p0, Lcom/android/launcher3/card/LauncherCardView;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/statemanager/StateManager;->removeStateListener(Lcom/android/launcher3/statemanager/StateManager$StateListener;)V

    sget-object v0, Lcom/android/launcher3/card/uscard/USCardManager;->INSTANCE:Lcom/android/launcher3/card/uscard/USCardManager;

    invoke-virtual {v0}, Lcom/android/launcher3/card/uscard/USCardManager;->onRemoveUSCardContainer()V

    invoke-virtual {v0}, Lcom/android/launcher3/card/uscard/USCardManager;->cancelRejectAlarm()V

    iget-object p0, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mRefreshJob:Lq3/i1;

    if-nez p0, :cond_22

    goto :goto_2c

    :cond_22
    const/4 v0, 0x0

    const-string v1, "cancel onDetachedFromWindow"

    invoke-static {v1, v0}, Li1/i;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/concurrent/CancellationException;

    move-result-object v0

    invoke-interface {p0, v0}, Lq3/i1;->b(Ljava/util/concurrent/CancellationException;)V

    :goto_2c
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_7a

    invoke-virtual {p0, p1}, Lcom/android/launcher3/card/LauncherCardView;->isTouchInDeleteIconRect(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_12

    return v2

    :cond_12
    iget-object v0, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v2, :cond_7a

    iget-object v0, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mItemList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    const v3, 0x7f0a011b

    if-ne v0, v3, :cond_7a

    iget-object v0, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mItemList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const v1, 0x7f0a012b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_3d

    return v2

    :cond_3d
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    add-int/2addr v4, v3

    iput v4, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result p0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    add-int/2addr v3, p0

    iput v3, v1, Landroid/graphics/Rect;->top:I

    iget p0, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v3, p0

    iput v3, v1, Landroid/graphics/Rect;->right:I

    iget p0, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/2addr v0, p0

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p0

    float-to-int p0, p0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v1, p0, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    xor-int/2addr p0, v2

    return p0

    :cond_7a
    return v1
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 4

    const-string v0, "LauncherCardView-USCardContainerView"

    const-string/jumbo v1, "onLongClick"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/card/uscard/USCardContainerView;->trySetLongPressedView(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-super {p0, p1}, Lcom/android/launcher3/card/LauncherCardView;->onLongClick(Landroid/view/View;)Z

    move-result p0

    goto :goto_15

    :cond_14
    const/4 p0, 0x1

    :goto_15
    return p0
.end method

.method public onMeasure(II)V
    .registers 8

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/card/uscard/USCardContainerView;->applyPadding(II)V

    iget-object v2, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mPaddingCache:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/launcher3/card/uscard/USCardContainerView;->updateCardSizeMap(IILandroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->cardName:Lcom/android/launcher3/OplusBubbleTextView;

    const/4 v1, 0x0

    if-nez v0, :cond_17

    move-object v0, v1

    goto :goto_1b

    :cond_17
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    :goto_1b
    instance-of v2, v0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v2, :cond_22

    move-object v1, v0

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    :cond_22
    if-nez v1, :cond_25

    goto :goto_86

    :cond_25
    iget-object v0, p0, Lcom/android/launcher3/card/LauncherCardView;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/OplusInvariantDeviceProfile;

    move-result-object v0

    iget-object v2, p0, Lcom/android/launcher3/card/LauncherCardView;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v2

    iget v3, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    iget v4, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/DeviceProfile;->getCellSize(II)Landroid/graphics/Point;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/card/LauncherCardView;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget-object v3, v0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    iget v4, v3, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    iget v3, v3, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    invoke-virtual {v0, v4, v3}, Lcom/android/launcher3/DeviceProfile;->getCellSize(II)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isTabletInLongSize()Z

    move-result v3

    if-eqz v3, :cond_5a

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTop()I

    move-result v2

    sub-int/2addr v0, v2

    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    sub-int/2addr v0, v2

    goto :goto_68

    :cond_5a
    const v0, 0x3eaaaaab

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->rint(D)D

    move-result-wide v2

    double-to-float v0, v2

    float-to-int v0, v0

    :goto_68
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget v2, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mCardNamePaddingTop:I

    add-int/2addr v0, v2

    neg-int v0, v0

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget-object v0, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->cardName:Lcom/android/launcher3/OplusBubbleTextView;

    if-nez v0, :cond_75

    goto :goto_86

    :cond_75
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mCardNamePaddingTop:I

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v3

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    :goto_86
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/card/LauncherCardView;->onMeasure(II)V

    return-void
.end method

.method public onPause(Landroidx/lifecycle/LifecycleOwner;)V
    .registers 3

    const-string/jumbo v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/card/uscard/USCardContainerView;->pauseCard()V

    return-void
.end method

.method public onResume(Landroidx/lifecycle/LifecycleOwner;)V
    .registers 4

    const-string/jumbo v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mStoreContentResultForRefresh:Lcom/android/launcher3/card/seed/SeedContentResult;

    if-nez p1, :cond_b

    goto :goto_19

    :cond_b
    const-string v0, "LauncherCardView-USCardContainerView"

    const-string/jumbo v1, "onResume, preform pending Cards Refresh when launcher destory"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mStoreContentResultForRefresh:Lcom/android/launcher3/card/seed/SeedContentResult;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/card/uscard/USCardContainerView;->preformCardsRefresh(Lcom/android/launcher3/card/seed/SeedContentResult;)V

    :goto_19
    return-void
.end method

.method public onStateTransitionComplete(Lcom/android/launcher3/LauncherState;)V
    .registers 3

    const-string v0, "finalState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/launcher3/card/uscard/USCardContainerView;->isNeedDisappearBgWhenStateChange(Lcom/android/launcher3/LauncherState;)Z

    move-result p1

    if-eqz p1, :cond_13

    iget-object p1, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mDragView:Lcom/android/launcher3/dragndrop/DragView;

    if-nez p1, :cond_13

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/card/uscard/USCardContainerView;->animBg(Z)V

    :cond_13
    return-void
.end method

.method public bridge synthetic onStateTransitionComplete(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/card/uscard/USCardContainerView;->onStateTransitionComplete(Lcom/android/launcher3/LauncherState;)V

    return-void
.end method

.method public onStateTransitionStart(Lcom/android/launcher3/LauncherState;)V
    .registers 3

    const-string/jumbo v0, "toState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/launcher3/card/uscard/USCardContainerView;->isNeedAppearBgWhenStateChange(Lcom/android/launcher3/LauncherState;)Z

    move-result p1

    if-eqz p1, :cond_10

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/card/uscard/USCardContainerView;->animBg(Z)V

    :cond_10
    return-void
.end method

.method public bridge synthetic onStateTransitionStart(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/card/uscard/USCardContainerView;->onStateTransitionStart(Lcom/android/launcher3/LauncherState;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/card/LauncherCardView;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/CheckLongPressHelper;->onTouchEvent(Landroid/view/MotionEvent;)V

    iget-object v0, p0, Lcom/android/launcher3/card/LauncherCardView;->mLongClickEffectHandler:Lcom/android/launcher3/card/LongClickEffectHandler;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/card/LongClickEffectHandler;->onTouchEvent(Landroid/view/MotionEvent;)V

    invoke-super {p0, p1}, Lcom/android/launcher3/card/LauncherCardView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public pauseCard()V
    .registers 5

    invoke-virtual {p0}, Lcom/android/launcher3/card/uscard/USCardContainerView;->getCardLoadChecker()Lcom/android/launcher3/card/utils/CardLoadChecker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/card/utils/CardLoadChecker;->isLoadingState()Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "LauncherCardView-USCardContainerView"

    const-string/jumbo v1, "pauseCard: isLoadingState, ignore."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    invoke-virtual {p0}, Lcom/android/launcher3/card/uscard/USCardContainerView;->getMStatisticsRecorder()Lcom/android/launcher3/card/seed/StatisticsRecorder;

    move-result-object v0

    if-nez v0, :cond_19

    goto :goto_1c

    :cond_19
    invoke-virtual {v0}, Lcom/android/launcher3/card/seed/StatisticsRecorder;->beginReportExposeEvents()V

    :goto_1c
    iget-object v0, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mItemList:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lz2/l;->t(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_45

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    instance-of v3, v2, Lcom/oplus/card/manager/domain/ICardView;

    if-eqz v3, :cond_40

    check-cast v2, Lcom/oplus/card/manager/domain/ICardView;

    goto :goto_41

    :cond_40
    const/4 v2, 0x0

    :goto_41
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2d

    :cond_45
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_49
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/card/manager/domain/ICardView;

    if-nez v1, :cond_58

    goto :goto_49

    :cond_58
    invoke-interface {v1}, Lcom/oplus/card/manager/domain/ICardView;->pauseCard()V

    goto :goto_49

    :cond_5c
    invoke-virtual {p0}, Lcom/android/launcher3/card/uscard/USCardContainerView;->getMStatisticsRecorder()Lcom/android/launcher3/card/seed/StatisticsRecorder;

    move-result-object p0

    if-nez p0, :cond_63

    goto :goto_66

    :cond_63
    invoke-virtual {p0}, Lcom/android/launcher3/card/seed/StatisticsRecorder;->endReportExposeEvents()V

    :goto_66
    return-void
.end method

.method public final playCardsRefreshAnim()V
    .registers 7

    const-string v0, "LauncherCardView-USCardContainerView"

    const-string/jumbo v1, "playCardsRefreshAnim is real started"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mCardRefreshAnimatorList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_41

    iget-object v0, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_16
    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_39

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v4

    const/4 v5, 0x0

    cmpg-float v4, v4, v5

    if-nez v4, :cond_2e

    move v2, v3

    :cond_2e
    if-eqz v2, :cond_16

    invoke-virtual {v1, v3}, Landroid/view/View;->setClickable(Z)V

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_16

    :cond_39
    invoke-direct {p0}, Lcom/android/launcher3/card/uscard/USCardContainerView;->invalidateChildren()V

    const/4 v0, 0x0

    invoke-static {p0, v2, v3, v0}, Lcom/android/launcher3/card/uscard/USCardContainerView;->clearStatusAfterRefresh$default(Lcom/android/launcher3/card/uscard/USCardContainerView;ZILjava/lang/Object;)V

    return-void

    :cond_41
    iget-object v1, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mCardRefreshAnimatorList:Ljava/util/ArrayList;

    const-string/jumbo v2, "play AnimatorSet "

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->usDebug(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mRefreshAnimSet:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mCardRefreshAnimatorList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;

    invoke-direct {v1}, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/android/launcher3/card/uscard/USCardContainerView$playCardsRefreshAnim$2$1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/card/uscard/USCardContainerView$playCardsRefreshAnim$2$1;-><init>(Lcom/android/launcher3/card/uscard/USCardContainerView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public final playLoadingToContentAnimator()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->defaultCard:Lcom/android/launcher3/card/DefaultCardView;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_b

    :cond_1c
    const-string/jumbo v0, "playSmartCardAnimator: "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mItemList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", oldView = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->defaultCard:Lcom/android/launcher3/card/DefaultCardView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LauncherCardView-USCardContainerView"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_78

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/android/common/config/AnimationConstant;->PATH_INTERPOLATOR_7:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/android/launcher3/card/uscard/a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/launcher3/card/uscard/a;-><init>(Lcom/android/launcher3/card/uscard/USCardContainerView;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Lcom/android/launcher3/card/uscard/USCardContainerView$playLoadingToContentAnimator$3;

    invoke-direct {v1, p0}, Lcom/android/launcher3/card/uscard/USCardContainerView$playLoadingToContentAnimator$3;-><init>(Lcom/android/launcher3/card/uscard/USCardContainerView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    sget-object p0, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->INSTANCE:Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->isSurfaceAnimRunning()Z

    move-result p0

    if-eqz p0, :cond_77

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    :cond_77
    return-void

    :array_78
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public final preformCardsRefresh(Lcom/android/launcher3/card/seed/SeedContentResult;)V
    .registers 6

    const-string v0, "contentResult"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mRefreshMutex:Lx3/b;

    invoke-interface {v0}, Lx3/b;->a()Z

    move-result v0

    const-string v1, "LauncherCardView-USCardContainerView"

    if-nez v0, :cond_6b

    iget-object v0, p0, Lcom/android/launcher3/card/LauncherCardView;->mLauncher:Lcom/android/launcher/Launcher;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_16

    goto :goto_1d

    :cond_16
    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->isStoped()Z

    move-result v0

    if-nez v0, :cond_1d

    move v3, v2

    :cond_1d
    :goto_1d
    if-eqz v3, :cond_6b

    const-string/jumbo v0, "preformCardsRefresh job was effective canceled"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mStoreContentResultForRefresh:Lcom/android/launcher3/card/seed/SeedContentResult;

    iget-object v3, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mRefreshJob:Lq3/i1;

    if-nez v3, :cond_2d

    goto :goto_30

    :cond_2d
    invoke-static {v3, v0, v2, v0}, Lq3/i1$a;->a(Lq3/i1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :goto_30
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "preformCardsRefresh, contentResult = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", call: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x7

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->coroutineScope:Landroidx/lifecycle/LifecycleCoroutineScope;

    new-instance v2, Lcom/android/launcher3/card/uscard/USCardContainerView$preformCardsRefresh$1;

    invoke-direct {v2, p1, p0, v0}, Lcom/android/launcher3/card/uscard/USCardContainerView$preformCardsRefresh$1;-><init>(Lcom/android/launcher3/card/seed/SeedContentResult;Lcom/android/launcher3/card/uscard/USCardContainerView;Lb3/d;)V

    invoke-virtual {v1, v2}, Landroidx/lifecycle/LifecycleCoroutineScope;->launchWhenResumed(Lkotlin/jvm/functions/Function2;)Lq3/i1;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mRefreshJob:Lq3/i1;

    if-nez v0, :cond_62

    goto :goto_6a

    :cond_62
    new-instance v1, Lcom/android/launcher3/card/uscard/USCardContainerView$preformCardsRefresh$2;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/card/uscard/USCardContainerView$preformCardsRefresh$2;-><init>(Lcom/android/launcher3/card/uscard/USCardContainerView;Lcom/android/launcher3/card/seed/SeedContentResult;)V

    invoke-interface {v0, v1}, Lq3/i1;->o(Lkotlin/jvm/functions/Function1;)Lq3/s0;

    :goto_6a
    return-void

    :cond_6b
    const-string/jumbo v0, "preformCardsRefresh contentResult was stored， "

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mStoreContentResultForRefresh:Lcom/android/launcher3/card/seed/SeedContentResult;

    return-void
.end method

.method public refreshForPermissionChanged(ZZ)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "refreshForPermissionChanged hasPermission:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", needReCreate:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "LauncherCardView-USCardContainerView"

    invoke-static {p2, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher/Launcher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object p0

    const-string/jumbo p1, "null cannot be cast to non-null type com.android.launcher3.CellLayout"

    invoke-static {p0, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/CellLayout;

    sget-object p1, Lcom/android/launcher3/card/seed/SeedCardClient;->INSTANCE:Lcom/android/launcher3/card/seed/SeedCardClient;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/card/seed/SeedCardClient;->useRecommendList(Lcom/android/launcher3/CellLayout;)V

    return-void
.end method

.method public refreshViewScreenshot()V
    .registers 5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_e

    const-string p0, "LauncherCardView-USCardContainerView"

    const-string v0, "child view is empty, return"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_e
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    if-lez v1, :cond_34

    :goto_15
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2f

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v3, v0, Lcom/android/launcher3/card/uscard/USCardView;

    if-eqz v3, :cond_28

    check-cast v0, Lcom/android/launcher3/card/uscard/USCardView;

    goto :goto_29

    :cond_28
    const/4 v0, 0x0

    :goto_29
    if-nez v0, :cond_2c

    goto :goto_2f

    :cond_2c
    invoke-virtual {v0}, Lcom/android/launcher3/card/CommonCardView;->refreshViewScreenshot()V

    :cond_2f
    :goto_2f
    if-lt v2, v1, :cond_32

    goto :goto_34

    :cond_32
    move v0, v2

    goto :goto_15

    :cond_34
    :goto_34
    return-void
.end method

.method public final resetPressAnimStateForLongClick()V
    .registers 6

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_29

    const/4 v1, 0x0

    :goto_7
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const-string v4, "getChildAt(index)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v3, v1, Lcom/android/launcher3/card/uscard/USCardView;

    if-eqz v3, :cond_1d

    check-cast v1, Lcom/android/launcher3/card/uscard/USCardView;

    goto :goto_1e

    :cond_1d
    const/4 v1, 0x0

    :goto_1e
    if-nez v1, :cond_21

    goto :goto_24

    :cond_21
    invoke-virtual {v1}, Lcom/android/launcher3/card/uscard/USCardView;->resetPressAnimStateForLongClick()V

    :goto_24
    if-lt v2, v0, :cond_27

    goto :goto_29

    :cond_27
    move v1, v2

    goto :goto_7

    :cond_29
    :goto_29
    return-void
.end method

.method public resumeCard(ZZ)V
    .registers 8

    invoke-virtual {p0}, Lcom/android/launcher3/card/uscard/USCardContainerView;->isShowingInVisiblePage()Z

    move-result v0

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mItemList:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lz2/l;->t(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    instance-of v4, v2, Lcom/oplus/card/manager/domain/ICardView;

    if-eqz v4, :cond_2b

    move-object v3, v2

    check-cast v3, Lcom/oplus/card/manager/domain/ICardView;

    :cond_2b
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_2f
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_33
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_46

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/card/manager/domain/ICardView;

    if-nez v1, :cond_42

    goto :goto_33

    :cond_42
    invoke-interface {v1, p1, p2}, Lcom/oplus/card/manager/domain/ICardView;->resumeCard(ZZ)V

    goto :goto_33

    :cond_46
    iget-object p1, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mStoreContentResult:Lcom/android/launcher3/card/seed/SeedContentResult;

    if-nez p1, :cond_4b

    goto :goto_50

    :cond_4b
    invoke-virtual {p0, p1}, Lcom/android/launcher3/card/uscard/USCardContainerView;->preformCardsRefresh(Lcom/android/launcher3/card/seed/SeedContentResult;)V

    iput-object v3, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mStoreContentResult:Lcom/android/launcher3/card/seed/SeedContentResult;

    :cond_50
    :goto_50
    return-void
.end method

.method public final revertPendingList()V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mContentChanged:Z

    iget-object v0, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mCardRefreshAnimatorList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mCardRefreshMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mItemList:Ljava/util/List;

    iget-object v1, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mPendingItemList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p0, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mPendingItemList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final runAvoidDuringAnimation$OplusLauncher_OPPOPallExportAallRelease(JLjava/lang/Runnable;)V
    .registers 6

    const-string/jumbo v0, "runBlock"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/card/uscard/USCardContainerView;->AVOID_ANIM_TYPES:Ljava/util/List;

    invoke-static {v0}, Lcom/android/launcher3/card/LauncherCardUtil;->checkDuringAnimation(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-virtual {p0}, Lcom/android/launcher3/card/uscard/USCardContainerView;->isContentEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_2b

    :cond_15
    const-string v0, "LauncherCardView-USCardContainerView"

    const-string/jumbo v1, "runAvoidDuringAnimation, try to clear delayed"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mDuringAnimationPendingRunnable:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/launcher/guide/c;

    invoke-direct {v0, p0, p3}, Lcom/android/launcher/guide/c;-><init>(Lcom/android/launcher3/card/uscard/USCardContainerView;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0, p1, p2}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_2b
    :goto_2b
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public final saveOldCardsToPendingList()V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mContentChanged:Z

    iget-object v0, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mPendingItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mPendingItemList:Ljava/util/List;

    iget-object v1, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mItemList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p0, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mItemList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public setCardNameAndUpdateDb(Ljava/lang/String;)V
    .registers 7

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->getItemInfo()Lcom/android/launcher3/card/LauncherCardInfo;

    move-result-object v0

    const-string v1, "LauncherCardView-USCardContainerView"

    if-nez v0, :cond_e

    const-string p0, "cardInfo is null"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_e
    iget-object v2, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->cardName:Lcom/android/launcher3/OplusBubbleTextView;

    if-nez v2, :cond_14

    const/4 v2, 0x0

    goto :goto_18

    :cond_14
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    :goto_18
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setCardNameAndUpdateDb oldTitle = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",newTitle = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_52

    iput-object p1, v0, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/launcher3/card/LauncherCardView;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/OplusModelWriter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/launcher3/model/OplusModelWriter;->updateItemInDatabase(Lcom/android/launcher3/model/data/ItemInfo;)V

    iget-object p0, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->cardName:Lcom/android/launcher3/OplusBubbleTextView;

    if-nez p0, :cond_4f

    goto :goto_52

    :cond_4f
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_52
    :goto_52
    return-void
.end method

.method public final setDefaultCard(Lcom/android/launcher3/card/DefaultCardView;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->defaultCard:Lcom/android/launcher3/card/DefaultCardView;

    return-void
.end method

.method public final setLoadTimeout(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->isLoadTimeout:Z

    return-void
.end method

.method public final setMDragView(Lcom/android/launcher3/dragndrop/DragView;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/dragndrop/DragView<",
            "*>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mDragView:Lcom/android/launcher3/dragndrop/DragView;

    return-void
.end method

.method public final setMItemList(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mItemList:Ljava/util/List;

    return-void
.end method

.method public final setMOccupied(Lcom/android/launcher3/util/GridOccupancy;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    return-void
.end method

.method public final setMPendingItemList(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mPendingItemList:Ljava/util/List;

    return-void
.end method

.method public setPreviewUiData(Ljava/lang/String;)V
    .registers 5

    const-string/jumbo v0, "s"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "setPreviewUiData: s.length = "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "LauncherCardView-USCardContainerView"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/launcher3/card/uscard/USCardContainerView$setPreviewUiData$listType$1;

    invoke-direct {v0}, Lcom/android/launcher3/card/uscard/USCardContainerView$setPreviewUiData$listType$1;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    :try_start_23
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, p1, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_32

    const/4 p0, 0x0

    goto :goto_4e

    :cond_32
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_36
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_46

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/dragndrop/GroupChildCardDragInfo;

    invoke-direct {p0, v2}, Lcom/android/launcher3/card/uscard/USCardContainerView;->setPreviewUiDataForChild(Lcom/android/launcher3/dragndrop/GroupChildCardDragInfo;)V

    goto :goto_36

    :cond_46
    sget-object p0, Ly2/p;->a:Ly2/p;
    :try_end_48
    .catchall {:try_start_23 .. :try_end_48} :catchall_49

    goto :goto_4e

    :catchall_49
    move-exception p0

    invoke-static {p0}, Lq/d;->h(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_4e
    invoke-static {p0}, Ly2/j;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_55

    goto :goto_72

    :cond_55
    const-string/jumbo v0, "setPreviewUiData, s.size = "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", error: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_72
    return-void
.end method

.method public setScaleToFit(F)V
    .registers 2

    return-void
.end method

.method public setTextVisible(Z)V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->cardName:Lcom/android/launcher3/OplusBubbleTextView;

    if-nez v0, :cond_5

    goto :goto_2c

    :cond_5
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_28

    sget-object p1, Lcom/android/common/util/FontManager;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/common/util/FontManager;

    iget p0, p0, Lcom/android/common/util/FontManager;->mTextSizeScale:F

    const/4 p1, 0x0

    cmpg-float p0, p0, p1

    if-nez p0, :cond_1e

    move p0, v1

    goto :goto_1f

    :cond_1e
    move p0, v2

    :goto_1f
    if-nez p0, :cond_28

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isTabletInWideSize()Z

    move-result p0

    if-nez p0, :cond_28

    goto :goto_29

    :cond_28
    move v1, v2

    :goto_29
    invoke-virtual {v0, v1}, Lcom/android/launcher3/OplusBubbleTextView;->setTextVisibility(Z)V

    :goto_2c
    return-void
.end method

.method public setUseViewScreenshotOnDraw(Z)V
    .registers 6

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_25

    const/4 v1, 0x0

    :goto_7
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const-string v3, "getChildAt(index)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v3, v1, Lcom/android/launcher3/card/uscard/USCardView;

    if-eqz v3, :cond_19

    check-cast v1, Lcom/android/launcher3/card/uscard/USCardView;

    goto :goto_1a

    :cond_19
    const/4 v1, 0x0

    :goto_1a
    if-nez v1, :cond_1d

    goto :goto_20

    :cond_1d
    invoke-virtual {v1, p1}, Lcom/android/launcher3/card/EngineCardView;->setUseViewScreenshotOnDraw(Z)V

    :goto_20
    if-lt v2, v0, :cond_23

    goto :goto_25

    :cond_23
    move v1, v2

    goto :goto_7

    :cond_25
    :goto_25
    return-void
.end method

.method public setVisibility(I)V
    .registers 3

    if-nez p1, :cond_5

    const/high16 v0, 0x3f800000  # 1.0f

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    :goto_6
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    if-nez p1, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    invoke-virtual {p0, v0}, Lcom/android/launcher3/card/uscard/USCardContainerView;->setTextVisible(Z)V

    if-nez p1, :cond_16

    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_16
    return-void
.end method

.method public showLoadingIfNeed()V
    .registers 7

    sget-object v0, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->INSTANCE:Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->getItemInfo()Lcom/android/launcher3/card/LauncherCardInfo;

    move-result-object v1

    const-string v2, "itemInfo"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->tryGetUSContainerCache(Lcom/android/launcher3/card/LauncherCardInfo;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_12

    goto :goto_48

    :cond_12
    sget-object v1, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v1}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result v1

    if-nez v1, :cond_1b

    goto :goto_48

    :cond_1b
    new-instance v1, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Lz2/l;->t(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ly2/i;

    iget-object v4, v4, Ly2/i;->a:Ljava/lang/Object;

    check-cast v4, Lcom/android/launcher3/card/LauncherCardInfo;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2a

    :cond_3e
    invoke-static {v1}, Lz2/r;->N(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/launcher3/card/uscard/USCardContainerView;->checkChildCardsPictureAble(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_9e

    :goto_48
    iget-object v0, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->defaultCard:Lcom/android/launcher3/card/DefaultCardView;

    if-nez v0, :cond_9d

    iget-object v0, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9d

    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d00c1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const-string/jumbo v1, "null cannot be cast to non-null type com.android.launcher3.card.DefaultCardView"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/card/DefaultCardView;

    iget v1, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mOuterRadius:F

    invoke-static {v0, v1}, Lcom/android/launcher3/card/LauncherCardUtil;->clipCardView(Landroid/view/View;F)V

    iget v1, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mOuterRadius:F

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/card/DefaultCardView;->setRadius(I)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    sget-object v1, Lcom/android/launcher/c0;->d:Lcom/android/launcher/c0;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/card/DefaultCardView;->initial(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->defaultCard:Lcom/android/launcher3/card/DefaultCardView;

    iput-boolean v2, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->isLoadTimeout:Z

    invoke-virtual {p0}, Lcom/android/launcher3/card/uscard/USCardContainerView;->isContentEmpty()Z

    move-result v0

    if-eqz v0, :cond_92

    sget-object v0, Lcom/android/launcher3/card/seed/SeedCardClient;->INSTANCE:Lcom/android/launcher3/card/seed/SeedCardClient;

    sget-object v1, Lcom/android/launcher3/card/uscard/USCardManager;->INSTANCE:Lcom/android/launcher3/card/uscard/USCardManager;

    invoke-virtual {v1}, Lcom/android/launcher3/card/uscard/USCardManager;->getCellLayoutParent()Lcom/android/launcher3/CellLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/card/seed/SeedCardClient;->useRecommendList(Lcom/android/launcher3/CellLayout;)V

    :cond_92
    new-instance v0, Lcom/android/launcher3/card/uscard/c;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/card/uscard/c;-><init>(Lcom/android/launcher3/card/uscard/USCardContainerView;I)V

    const-wide/16 v1, 0x1388

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_9d
    return-void

    :cond_9e
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a6
    :goto_a6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ly2/i;

    iget-object v4, v3, Ly2/i;->a:Ljava/lang/Object;

    check-cast v4, Lcom/android/launcher3/card/LauncherCardInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/card/LauncherCardInfo;->isUSBackUpCard()Z

    move-result v5

    if-nez v5, :cond_a6

    iget-object v3, v3, Ly2/i;->b:Ljava/lang/Object;

    check-cast v3, Lcom/android/launcher3/card/seed/SelectedServiceInfo;

    invoke-virtual {p0, v4, v3, v1}, Lcom/android/launcher3/card/uscard/USCardContainerView;->inflateAndAddChildCard(Lcom/android/launcher3/card/LauncherCardInfo;Lcom/android/launcher3/card/seed/SelectedServiceInfo;I)Z

    goto :goto_a6

    :cond_c4
    invoke-static {p0}, Landroidx/core/view/ViewGroupKt;->getChildren(Landroid/view/ViewGroup;)Lo3/e;

    move-result-object v0

    invoke-interface {v0}, Lo3/e;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_cc
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_de

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const/high16 v3, 0x3f800000  # 1.0f

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    goto :goto_cc

    :cond_de
    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->getItemInfo()Lcom/android/launcher3/card/LauncherCardInfo;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/launcher3/card/uscard/USCardContainerView;->initCardName(Lcom/android/launcher3/card/LauncherCardInfo;)V

    return-void
.end method

.method public startDrag()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mIsInDragMode:Z

    sget-object v0, Lcom/android/launcher3/card/uscard/USCardManager;->INSTANCE:Lcom/android/launcher3/card/uscard/USCardManager;

    invoke-virtual {v0}, Lcom/android/launcher3/card/uscard/USCardManager;->cancelRejectAlarm()V

    invoke-super {p0}, Lcom/android/launcher3/card/LauncherCardView;->startDrag()V

    return-void
.end method

.method public final trySetLongPressedView(Landroid/view/View;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mRefreshMutex:Lx3/b;

    invoke-interface {v0}, Lx3/b;->a()Z

    move-result v0

    if-eqz v0, :cond_12

    const-string p0, "LauncherCardView-USCardContainerView"

    const-string/jumbo p1, "trySetLongPressedView failed, card refresh animation will be running"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_12
    iput-object p1, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mTempLongPressedView:Landroid/view/View;

    const/4 p0, 0x1

    return p0
.end method

.method public final updateCardSizeMap(IILandroid/graphics/Rect;)V
    .registers 6

    const-string/jumbo v0, "paddingRect"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mCardSizeMap:Lcom/android/launcher3/card/uscard/USCardContainerView$CardSizeMap;

    iget v1, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mCardGap:I

    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/android/launcher3/card/uscard/USCardContainerView$CardSizeMap;->updateSize(IIILandroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->mItemList:Ljava/util/List;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_36

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    instance-of v0, p3, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v0, :cond_2a

    check-cast p3, Lcom/android/launcher3/model/data/ItemInfo;

    goto :goto_2b

    :cond_2a
    const/4 p3, 0x0

    :goto_2b
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, p3}, Lcom/android/launcher3/card/uscard/USCardContainerView;->getLayoutParamsBasedOnItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_13

    :cond_36
    return-void
.end method

.method public updateTextSize(Lcom/android/launcher3/Launcher;)V
    .registers 3

    if-nez p1, :cond_3

    goto :goto_16

    :cond_3
    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p1

    if-nez p1, :cond_a

    goto :goto_16

    :cond_a
    iget-object p0, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;->cardName:Lcom/android/launcher3/OplusBubbleTextView;

    if-nez p0, :cond_f

    goto :goto_16

    :cond_f
    const/4 v0, 0x0

    iget p1, p1, Lcom/android/launcher3/DeviceProfile;->iconTextSizePx:I

    int-to-float p1, p1

    invoke-virtual {p0, v0, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    :goto_16
    return-void
.end method
