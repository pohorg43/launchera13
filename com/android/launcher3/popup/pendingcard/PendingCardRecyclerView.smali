.class public final Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source ""

# interfaces
.implements Lcom/android/launcher3/dragndrop/DragController$DragListener;
.implements Lcom/android/launcher3/popup/OplusPopupContainerWithArrow$OnClosePopupContainerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$Companion;,
        Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$ScrollDirection;,
        Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$WhenMappings;
    }
.end annotation


# static fields
.field private static final BACKGROUND_ALPHA_MAX_VALUE:I = 0xff

.field private static final BACKGROUND_ALPHA_OUT_DELAY:J = 0xc8L

.field private static final BACKGROUND_MASK_INTI_ALPHA:I = 0x33

.field private static final CARD_BACKGROUND_ALPHA_IN_DURATION:J = 0x190L

.field private static final CARD_BACKGROUND_ALPHA_OUT_DURATION:J = 0x190L

.field private static final CARD_RESTORE_DURATION:I = 0xfa

.field private static final CARD_SETTLED_THRESHOLD:F = 0.5f

.field public static final CLIP_ARRAY_BOTTOM_INDEX:I = 0x3

.field public static final CLIP_ARRAY_DIMENSION:I = 0x6

.field private static final CLIP_ARRAY_RADIUS_X_INDEX:I = 0x4

.field private static final CLIP_ARRAY_RADIUS_Y_INDEX:I = 0x5

.field public static final Companion:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$Companion;

.field private static final DOWN:I = 0x1

.field private static final GUIDE_SHOW_DELAY:J = 0x2bcL

.field private static final INDICATOR_ALPHA_IN_DURATION:J = 0x15eL

.field private static final INDICATOR_ALPHA_IN_START_OFFSET:J = 0x96L

.field private static final INDICATOR_ALPHA_OUT_DURATION:J = 0x64L

.field private static final INDICATOR_ROTATION_DEGREE:F = 90.0f

.field private static final MAX_ALPHA:I = 0xff

.field private static final MILLISECONDS_PER_SECOND:F = 1000.0f

.field private static final PIN_ALPHA_IN_ANIM_DURATION:J = 0x64L

.field private static final PIN_ALPHA_OUT_ANIM_DURATION:J = 0x64L

.field private static final PIN_MIN_SCALE_VALUE:F = 0.9f

.field private static final PIN_SCALE_ANIM_DURATION:J = 0xe6L

.field private static final REDIRECT_TO_CAR_STORE_DELAY:J = 0x32L

.field private static final SLIDE_DOWN_GUIDE_ROTATION_DEGREE:F = 180.0f

.field private static final TAG:Ljava/lang/String; = "PendingCardRecyclerView"

.field private static final UP:I = -0x1

.field private static final VALUE_HALF_1:F = 0.5f


# instance fields
.field private mCardBounds:Landroid/graphics/RectF;

.field private mCardContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

.field private mCardTransformer:Lcom/android/launcher3/popup/pendingcard/PendingCardTransformer;

.field private mClipPathRect:Landroid/graphics/RectF;

.field private mCompletelyVisibleView:Landroid/view/View;

.field private mCurScrollState:I

.field private final mEndClipArea:[F

.field private mEvaluator:Landroid/animation/FloatArrayEvaluator;

.field private mFirstCardSize:Landroid/graphics/Point;

.field private mFirstVisibleView:Landroid/view/View;

.field private mFirstVisualCardOldOffset:F

.field private final mFirstVisualCardScrollEvent:Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager$ScrollEventValues;

.field private mFourSpanXBg:Landroid/widget/ImageView;

.field private mFourSpanXBgAlpha:I

.field private mFourSpanXBgAlphaAnim:Landroid/animation/ValueAnimator;

.field private mFourSpanXBgAnimOutRunnable:Ljava/lang/Runnable;

.field private mGuideRunable:Ljava/lang/Runnable;

.field private mHasInitLayout:Z

.field private mHorizontalSizeChangePosition:I

.field private mIndicatorAlphaAnim:Landroid/animation/ValueAnimator;

.field private mIsCardChange:Z

.field private mIsExistSpanFourCard:Z

.field private mIsFourSpanXBgAnimIn:Z

.field private mIsIndicatorAlphaOut:Z

.field private mIsNeedShowGuide:Z

.field private mIsPinAnimOut:Z

.field private mIsReadingClose:Z

.field private mIsRedirectedToCardStore:Z

.field private final mIsRtl:Z

.field private mIsStartFakeAlphaAnim:Z

.field private mIsTwoSpanXBgAnimIn:Z

.field private mLastTouchY:I

.field private mLastVisibleView:Landroid/view/View;

.field private mLastVisualCardOldOffset:F

.field private final mLastVisualCardScrollEvent:Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager$ScrollEventValues;

.field private final mLauncher:Lcom/android/launcher/Launcher;

.field private mLayoutManager:Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager;

.field private mLongPressGuide:Lcom/android/launcher/guide/PendingCardGuide;

.field private final mMaxFlingVelocity:F

.field private mNextCardSize:Landroid/graphics/Point;

.field private final mOnCardScrollChangeCallback:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$mOnCardScrollChangeCallback$1;

.field private final mOutPath:Landroid/graphics/Path;

.field private final mPaint:Landroid/graphics/Paint;

.field private mPendingCardGuideBuilder:Lcom/android/launcher/guide/PendingCardGuide$PendingCardGuideBuilder;

.field private mPendingCardTouchHandler:Lcom/android/launcher3/popup/pendingcard/PendingCardTouchHandler;

.field private mPinAlphaAnim:Landroid/animation/ValueAnimator;

.field private final mPinOffsetY:I

.field private mPinScaleAnim:Landroid/animation/ValueAnimator;

.field private mPinTip:Lcom/android/launcher/guide/PendingCardGuide;

.field public mPopupContainer:Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;

.field private mRealTimeScrollDirection:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$ScrollDirection;

.field private mScrollDirection:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$ScrollDirection;

.field private mScrollPointerId:I

.field private mScrolled:I

.field private mSlideUpGuide:Lcom/android/launcher/guide/PendingCardGuide;

.field private mSnapHelper:Lcom/android/launcher3/popup/pendingcard/PendingCardSnapHelper;

.field private final mStartClipArea:[F

.field private mTotalScrollDistance:I

.field private final mTouchSlop:I

.field private mTwoSpanXBgAlpha:I

.field private mTwoSpanXBgAlphaAnim:Landroid/animation/ValueAnimator;

.field private mTwoSpanXBgAnimOutRunnable:Ljava/lang/Runnable;

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mVelocityY:F

.field private mVerticalHelper:Landroidx/recyclerview/widget/OrientationHelper;

.field private mVerticalSizeChangePosition:I

.field private final mVerticalSpaceCompensate:I

.field private final mVisualAreaRadius:F


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->Companion:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager$ScrollEventValues;

    invoke-direct {p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager$ScrollEventValues;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mFirstVisualCardScrollEvent:Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager$ScrollEventValues;

    new-instance p1, Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager$ScrollEventValues;

    invoke-direct {p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager$ScrollEventValues;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mLastVisualCardScrollEvent:Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager$ScrollEventValues;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mTouchSlop:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070a06

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const v1, 0x7f070a07

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    sub-int/2addr v0, p1

    int-to-float p1, v0

    const/high16 v0, 0x40000000  # 2.0f

    div-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mVerticalSpaceCompensate:I

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mOutPath:Landroid/graphics/Path;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070a02

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mPinOffsetY:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher/Launcher;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mLauncher:Lcom/android/launcher/Launcher;

    const/4 p1, 0x6

    new-array v0, p1, [F

    iput-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mStartClipArea:[F

    new-array v0, p1, [F

    iput-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mEndClipArea:[F

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mIsRtl:Z

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070a05

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mVisualAreaRadius:F

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x447a0000  # 1000.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mMaxFlingVelocity:F

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mNextCardSize:Landroid/graphics/Point;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mIsNeedShowGuide:Z

    sget-object v1, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$ScrollDirection;->SCROLL_DIRECTION_NONE:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$ScrollDirection;

    iput-object v1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mScrollDirection:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$ScrollDirection;

    iput-object v1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mRealTimeScrollDirection:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$ScrollDirection;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mCardBounds:Landroid/graphics/RectF;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mClipPathRect:Landroid/graphics/RectF;

    new-instance v1, Landroid/animation/FloatArrayEvaluator;

    new-array p1, p1, [F

    invoke-direct {v1, p1}, Landroid/animation/FloatArrayEvaluator;-><init>([F)V

    iput-object v1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mEvaluator:Landroid/animation/FloatArrayEvaluator;

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mVerticalSizeChangePosition:I

    iput p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mHorizontalSizeChangePosition:I

    new-instance p1, Lcom/android/launcher3/popup/pendingcard/g;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Lcom/android/launcher3/popup/pendingcard/g;-><init>(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;I)V

    iput-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mGuideRunable:Ljava/lang/Runnable;

    new-instance p1, Lcom/android/launcher3/popup/pendingcard/g;

    invoke-direct {p1, p0, v0}, Lcom/android/launcher3/popup/pendingcard/g;-><init>(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;I)V

    iput-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mFourSpanXBgAnimOutRunnable:Ljava/lang/Runnable;

    new-instance p1, Lcom/android/launcher3/popup/pendingcard/g;

    const/4 v0, 0x2

    invoke-direct {p1, p0, v0}, Lcom/android/launcher3/popup/pendingcard/g;-><init>(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;I)V

    iput-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mTwoSpanXBgAnimOutRunnable:Ljava/lang/Runnable;

    new-instance p1, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$mOnCardScrollChangeCallback$1;

    invoke-direct {p1, p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$mOnCardScrollChangeCallback$1;-><init>(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;)V

    iput-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mOnCardScrollChangeCallback:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$mOnCardScrollChangeCallback$1;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager$ScrollEventValues;

    invoke-direct {p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager$ScrollEventValues;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mFirstVisualCardScrollEvent:Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager$ScrollEventValues;

    new-instance p1, Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager$ScrollEventValues;

    invoke-direct {p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager$ScrollEventValues;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mLastVisualCardScrollEvent:Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager$ScrollEventValues;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mTouchSlop:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070a06

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    const v0, 0x7f070a07

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    sub-int/2addr p2, p1

    int-to-float p1, p2

    const/high16 p2, 0x40000000  # 2.0f

    div-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mVerticalSpaceCompensate:I

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mOutPath:Landroid/graphics/Path;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070a02

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mPinOffsetY:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher/Launcher;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mLauncher:Lcom/android/launcher/Launcher;

    const/4 p1, 0x6

    new-array p2, p1, [F

    iput-object p2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mStartClipArea:[F

    new-array p2, p1, [F

    iput-object p2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mEndClipArea:[F

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-static {p2}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mIsRtl:Z

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070a05

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mVisualAreaRadius:F

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p2

    int-to-float p2, p2

    const/high16 v0, 0x447a0000  # 1000.0f

    div-float/2addr p2, v0

    iput p2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mMaxFlingVelocity:F

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mPaint:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mNextCardSize:Landroid/graphics/Point;

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mIsNeedShowGuide:Z

    sget-object p2, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$ScrollDirection;->SCROLL_DIRECTION_NONE:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$ScrollDirection;

    iput-object p2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mScrollDirection:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$ScrollDirection;

    iput-object p2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mRealTimeScrollDirection:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$ScrollDirection;

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mCardBounds:Landroid/graphics/RectF;

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mClipPathRect:Landroid/graphics/RectF;

    new-instance p2, Landroid/animation/FloatArrayEvaluator;

    new-array v0, p1, [F

    invoke-direct {p2, v0}, Landroid/animation/FloatArrayEvaluator;-><init>([F)V

    iput-object p2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mEvaluator:Landroid/animation/FloatArrayEvaluator;

    const/4 p2, -0x1

    iput p2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mVerticalSizeChangePosition:I

    iput p2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mHorizontalSizeChangePosition:I

    new-instance p2, Lcom/android/launcher3/popup/pendingcard/g;

    const/4 v0, 0x4

    invoke-direct {p2, p0, v0}, Lcom/android/launcher3/popup/pendingcard/g;-><init>(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;I)V

    iput-object p2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mGuideRunable:Ljava/lang/Runnable;

    new-instance p2, Lcom/android/launcher3/popup/pendingcard/g;

    const/4 v0, 0x5

    invoke-direct {p2, p0, v0}, Lcom/android/launcher3/popup/pendingcard/g;-><init>(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;I)V

    iput-object p2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mFourSpanXBgAnimOutRunnable:Ljava/lang/Runnable;

    new-instance p2, Lcom/android/launcher3/popup/pendingcard/g;

    invoke-direct {p2, p0, p1}, Lcom/android/launcher3/popup/pendingcard/g;-><init>(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;I)V

    iput-object p2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mTwoSpanXBgAnimOutRunnable:Ljava/lang/Runnable;

    new-instance p1, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$mOnCardScrollChangeCallback$1;

    invoke-direct {p1, p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$mOnCardScrollChangeCallback$1;-><init>(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;)V

    iput-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mOnCardScrollChangeCallback:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$mOnCardScrollChangeCallback$1;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager$ScrollEventValues;

    invoke-direct {p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager$ScrollEventValues;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mFirstVisualCardScrollEvent:Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager$ScrollEventValues;

    new-instance p1, Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager$ScrollEventValues;

    invoke-direct {p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager$ScrollEventValues;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mLastVisualCardScrollEvent:Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager$ScrollEventValues;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mTouchSlop:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070a06

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    const p3, 0x7f070a07

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    sub-int/2addr p2, p1

    int-to-float p1, p2

    const/high16 p2, 0x40000000  # 2.0f

    div-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mVerticalSpaceCompensate:I

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mOutPath:Landroid/graphics/Path;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070a02

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mPinOffsetY:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher/Launcher;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mLauncher:Lcom/android/launcher/Launcher;

    const/4 p1, 0x6

    new-array p2, p1, [F

    iput-object p2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mStartClipArea:[F

    new-array p2, p1, [F

    iput-object p2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mEndClipArea:[F

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-static {p2}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mIsRtl:Z

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f070a05

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mVisualAreaRadius:F

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p2

    int-to-float p2, p2

    const/high16 p3, 0x447a0000  # 1000.0f

    div-float/2addr p2, p3

    iput p2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mMaxFlingVelocity:F

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mPaint:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mNextCardSize:Landroid/graphics/Point;

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mIsNeedShowGuide:Z

    sget-object p2, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$ScrollDirection;->SCROLL_DIRECTION_NONE:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$ScrollDirection;

    iput-object p2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mScrollDirection:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$ScrollDirection;

    iput-object p2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mRealTimeScrollDirection:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$ScrollDirection;

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mCardBounds:Landroid/graphics/RectF;

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mClipPathRect:Landroid/graphics/RectF;

    new-instance p2, Landroid/animation/FloatArrayEvaluator;

    new-array p1, p1, [F

    invoke-direct {p2, p1}, Landroid/animation/FloatArrayEvaluator;-><init>([F)V

    iput-object p2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mEvaluator:Landroid/animation/FloatArrayEvaluator;

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mVerticalSizeChangePosition:I

    iput p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mHorizontalSizeChangePosition:I

    new-instance p1, Lcom/android/launcher3/popup/pendingcard/g;

    const/4 p2, 0x7

    invoke-direct {p1, p0, p2}, Lcom/android/launcher3/popup/pendingcard/g;-><init>(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;I)V

    iput-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mGuideRunable:Ljava/lang/Runnable;

    new-instance p1, Lcom/android/launcher3/popup/pendingcard/g;

    const/16 p2, 0x8

    invoke-direct {p1, p0, p2}, Lcom/android/launcher3/popup/pendingcard/g;-><init>(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;I)V

    iput-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mFourSpanXBgAnimOutRunnable:Ljava/lang/Runnable;

    new-instance p1, Lcom/android/launcher3/popup/pendingcard/g;

    const/16 p2, 0x9

    invoke-direct {p1, p0, p2}, Lcom/android/launcher3/popup/pendingcard/g;-><init>(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;I)V

    iput-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mTwoSpanXBgAnimOutRunnable:Ljava/lang/Runnable;

    new-instance p1, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$mOnCardScrollChangeCallback$1;

    invoke-direct {p1, p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$mOnCardScrollChangeCallback$1;-><init>(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;)V

    iput-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mOnCardScrollChangeCallback:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$mOnCardScrollChangeCallback$1;

    return-void
.end method

.method public static synthetic a(Landroid/widget/ImageView;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->pinAlphaAndScaleAnim$lambda-36$lambda-35(Landroid/widget/ImageView;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static final synthetic access$getMCardBounds$p(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;)Landroid/graphics/RectF;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mCardBounds:Landroid/graphics/RectF;

    return-object p0
.end method

.method public static final synthetic access$getMCardContainer$p(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;)Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mCardContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    return-object p0
.end method

.method public static final synthetic access$getMCardTransformer$p(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;)Lcom/android/launcher3/popup/pendingcard/PendingCardTransformer;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mCardTransformer:Lcom/android/launcher3/popup/pendingcard/PendingCardTransformer;

    return-object p0
.end method

.method public static final synthetic access$getMFirstVisualCardOldOffset$p(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;)F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mFirstVisualCardOldOffset:F

    return p0
.end method

.method public static final synthetic access$getMHorizontalSizeChangePosition$p(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;)I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mHorizontalSizeChangePosition:I

    return p0
.end method

.method public static final synthetic access$getMIsRedirectedToCardStore$p(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mIsRedirectedToCardStore:Z

    return p0
.end method

.method public static final synthetic access$getMIsStartFakeAlphaAnim$p(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mIsStartFakeAlphaAnim:Z

    return p0
.end method

.method public static final synthetic access$getMLastVisualCardOldOffset$p(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;)F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mLastVisualCardOldOffset:F

    return p0
.end method

.method public static final synthetic access$getMTotalScrollDistance$p(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;)I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mTotalScrollDistance:I

    return p0
.end method

.method public static final synthetic access$getMVisualAreaRadius$p(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;)F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mVisualAreaRadius:F

    return p0
.end method

.method public static final synthetic access$getPinAndIndicatorOffsetX(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->getPinAndIndicatorOffsetX(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$locateIndicatorX(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->locateIndicatorX(I)V

    return-void
.end method

.method public static final synthetic access$locateIndicatorY(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->locateIndicatorY()V

    return-void
.end method

.method public static final synthetic access$locatePinY(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->locatePinY()V

    return-void
.end method

.method public static final synthetic access$onCardChanged(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->onCardChanged()V

    return-void
.end method

.method public static final synthetic access$onCardSettled(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->onCardSettled(I)V

    return-void
.end method

.method public static final synthetic access$setFourSpanXBgAlpha(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->setFourSpanXBgAlpha(I)V

    return-void
.end method

.method public static final synthetic access$setMFirstVisualCardOldOffset$p(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;F)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mFirstVisualCardOldOffset:F

    return-void
.end method

.method public static final synthetic access$setMFourSpanXBgAlpha$p(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mFourSpanXBgAlpha:I

    return-void
.end method

.method public static final synthetic access$setMIsFourSpanXBgAnimIn$p(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mIsFourSpanXBgAnimIn:Z

    return-void
.end method

.method public static final synthetic access$setMIsRedirectedToCardStore$p(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mIsRedirectedToCardStore:Z

    return-void
.end method

.method public static final synthetic access$setMIsStartFakeAlphaAnim$p(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mIsStartFakeAlphaAnim:Z

    return-void
.end method

.method public static final synthetic access$setMLastVisualCardOldOffset$p(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;F)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mLastVisualCardOldOffset:F

    return-void
.end method

.method public static final synthetic access$setMScrolled$p(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mScrolled:I

    return-void
.end method

.method public static final synthetic access$setMTotalScrollDistance$p(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mTotalScrollDistance:I

    return-void
.end method

.method private final animFourSpanXBgAlphaByPosition(Z)V
    .registers 7

    iget-boolean v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mIsStartFakeAlphaAnim:Z

    if-nez v0, :cond_77

    iget-boolean v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mIsReadingClose:Z

    if-eqz v0, :cond_9

    goto :goto_77

    :cond_9
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1d

    new-instance v2, Ly2/i;

    iget v3, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mFourSpanXBgAlpha:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ly2/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_35

    :cond_1d
    iget-boolean v2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mIsFourSpanXBgAnimIn:Z

    if-eqz v2, :cond_22

    return-void

    :cond_22
    iput-boolean v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mIsFourSpanXBgAnimIn:Z

    new-instance v2, Ly2/i;

    iget v3, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mFourSpanXBgAlpha:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ly2/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_35
    iget-object v3, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mFourSpanXBgAlphaAnim:Landroid/animation/ValueAnimator;

    if-nez v3, :cond_3a

    goto :goto_3d

    :cond_3a
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    :goto_3d
    const/4 v3, 0x2

    new-array v3, v3, [I

    iget-object v4, v2, Ly2/i;->a:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    aput v4, v3, v1

    iget-object v2, v2, Ly2/i;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    aput v2, v3, v0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v2, Lcom/android/common/config/AnimationConstant;->PATH_INTERPOLATOR_2:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v2, Lcom/android/launcher3/popup/pendingcard/e;

    invoke-direct {v2, p0, v1}, Lcom/android/launcher3/popup/pendingcard/e;-><init>(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;I)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$animFourSpanXBgAlphaByPosition$1$2;

    invoke-direct {v1, p1, p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$animFourSpanXBgAlphaByPosition$1$2;-><init>(ZLcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iput-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mFourSpanXBgAlphaAnim:Landroid/animation/ValueAnimator;

    :cond_77
    :goto_77
    return-void
.end method

.method private static final animFourSpanXBgAlphaByPosition$lambda-43$lambda-42(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;Landroid/animation/ValueAnimator;)V
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mFourSpanXBgAlpha:I

    invoke-direct {p0, p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->setFourSpanXBgAlpha(I)V

    return-void
.end method

.method private final animTwoSpanXBgAlphaByPosition(Z)V
    .registers 8

    iget-boolean v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mIsReadingClose:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const-wide/16 v0, 0x190

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_1d

    iput-boolean v3, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mIsTwoSpanXBgAnimIn:Z

    new-instance p1, Ly2/i;

    iget v4, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mTwoSpanXBgAlpha:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {p1, v4, v5}, Ly2/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_35

    :cond_1d
    iget-boolean p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mIsTwoSpanXBgAnimIn:Z

    if-eqz p1, :cond_22

    return-void

    :cond_22
    iput-boolean v2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mIsTwoSpanXBgAnimIn:Z

    new-instance p1, Ly2/i;

    iget v4, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mTwoSpanXBgAlpha:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {p1, v4, v5}, Ly2/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_35
    iget-object v4, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mTwoSpanXBgAlphaAnim:Landroid/animation/ValueAnimator;

    if-nez v4, :cond_3a

    goto :goto_3d

    :cond_3a
    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->cancel()V

    :goto_3d
    const/4 v4, 0x2

    new-array v4, v4, [I

    iget-object v5, p1, Ly2/i;->a:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    aput v5, v4, v3

    iget-object p1, p1, Ly2/i;->b:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    aput p1, v4, v2

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v0, Lcom/android/common/config/AnimationConstant;->PATH_INTERPOLATOR_2:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v0, Lcom/android/launcher3/popup/pendingcard/e;

    invoke-direct {v0, p0, v2}, Lcom/android/launcher3/popup/pendingcard/e;-><init>(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;I)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    iput-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mTwoSpanXBgAlphaAnim:Landroid/animation/ValueAnimator;

    return-void
.end method

.method private static final animTwoSpanXBgAlphaByPosition$lambda-45$lambda-44(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;Landroid/animation/ValueAnimator;)V
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mTwoSpanXBgAlpha:I

    invoke-virtual {p0, p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->setTwoSpanXBgAlpha(I)V

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->animFourSpanXBgAlphaByPosition$lambda-43$lambda-42(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mTwoSpanXBgAnimOutRunnable$lambda-4(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;)V

    return-void
.end method

.method private final calculateInitStartAndEndValues(Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;)V
    .registers 12

    iget-object p1, p1, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mLongPressedView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type com.android.launcher3.model.data.ItemInfo"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lcom/android/launcher3/model/data/ItemInfo;

    iget-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mCardContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_14

    goto :goto_22

    :cond_14
    invoke-virtual {p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->getCardList()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_1b

    goto :goto_22

    :cond_1b
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/oplus/card/config/domain/model/CardConfigInfo;

    :goto_22
    if-eqz v0, :cond_125

    iget-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mCardContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->getSupportCardSizeList()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v0}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getSize()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Point;

    iput-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mFirstCardSize:Landroid/graphics/Point;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget p1, p1, Landroid/graphics/Point;->x:I

    int-to-float p1, p1

    invoke-virtual {v0}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getSize()I

    move-result v0

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-gt v0, v5, :cond_8f

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mCardContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->getInnerAlignStateVertical()Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerVerticalAlignState;

    move-result-object v0

    sget-object v7, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$WhenMappings;->$EnumSwitchMapping$2:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v7, v0

    if-eq v0, v4, :cond_83

    if-eq v0, v5, :cond_78

    if-eq v0, v3, :cond_6b

    if-eq v0, v2, :cond_6a

    move v0, v6

    move v7, v0

    goto :goto_95

    :cond_6a
    return-void

    :cond_6b
    iget v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mVerticalSpaceCompensate:I

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v7

    int-to-float v7, v7

    iget v8, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mVerticalSpaceCompensate:I

    int-to-float v8, v8

    sub-float/2addr v7, v8

    goto :goto_95

    :cond_78
    iget v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mVerticalSpaceCompensate:I

    int-to-float v0, v0

    int-to-float v7, v5

    mul-float/2addr v0, v7

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v7

    int-to-float v7, v7

    goto :goto_95

    :cond_83
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v7, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mVerticalSpaceCompensate:I

    mul-int/2addr v7, v5

    int-to-float v7, v7

    sub-float v7, v0, v7

    goto :goto_94

    :cond_8f
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    int-to-float v7, v0

    :goto_94
    move v0, v6

    :goto_95
    iget-object v8, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mCardContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v8}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->getInnerAlignStateHorizontal()Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerHorizontalAlignState;

    move-result-object v8

    sget-object v9, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v8, v9, v8

    if-eq v8, v4, :cond_d4

    if-eq v8, v5, :cond_c9

    if-eq v8, v3, :cond_b2

    if-eq v8, v2, :cond_b1

    move p1, v6

    move v8, p1

    goto :goto_e9

    :cond_b1
    return-void

    :cond_b2
    iget-boolean v8, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mIsRtl:Z

    if-nez v8, :cond_b8

    move v8, v6

    goto :goto_be

    :cond_b8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v8, p1

    :goto_be
    iget-boolean v9, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mIsRtl:Z

    if-nez v9, :cond_c3

    goto :goto_e9

    :cond_c3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p1

    :goto_c7
    int-to-float p1, p1

    goto :goto_e9

    :cond_c9
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v8, p1

    const/high16 v9, 0x40000000  # 2.0f

    div-float/2addr v8, v9

    add-float/2addr p1, v8

    goto :goto_e9

    :cond_d4
    iget-boolean v8, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mIsRtl:Z

    if-nez v8, :cond_df

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v8, p1

    goto :goto_e0

    :cond_df
    move v8, v6

    :goto_e0
    iget-boolean v9, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mIsRtl:Z

    if-nez v9, :cond_e9

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p1

    goto :goto_c7

    :cond_e9
    :goto_e9
    iget-object v9, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mStartClipArea:[F

    aput v6, v9, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v6

    int-to-float v6, v6

    aput v6, v9, v5

    iget v5, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mVisualAreaRadius:F

    aput v5, v9, v2

    const/4 v2, 0x5

    aput v5, v9, v2

    aput v0, v9, v4

    aput v7, v9, v3

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mStartClipArea:[F

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_115

    :goto_106
    add-int/lit8 v2, v1, 0x1

    iget-object v5, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mEndClipArea:[F

    iget-object v6, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mStartClipArea:[F

    aget v6, v6, v1

    aput v6, v5, v1

    if-le v2, v0, :cond_113

    goto :goto_115

    :cond_113
    move v1, v2

    goto :goto_106

    :cond_115
    :goto_115
    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mCardBounds:Landroid/graphics/RectF;

    iput v8, v0, Landroid/graphics/RectF;->left:F

    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mStartClipArea:[F

    aget v1, p0, v4

    iput v1, v0, Landroid/graphics/RectF;->top:F

    iput p1, v0, Landroid/graphics/RectF;->right:F

    aget p0, p0, v3

    iput p0, v0, Landroid/graphics/RectF;->bottom:F

    :cond_125
    return-void
.end method

.method private final cardRestoreAnim()V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mFirstVisualCardScrollEvent:Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager$ScrollEventValues;

    invoke-virtual {v0}, Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager$ScrollEventValues;->getMOffset()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_f

    move v0, v1

    goto :goto_10

    :cond_f
    move v0, v2

    :goto_10
    if-nez v0, :cond_13

    return-void

    :cond_13
    invoke-virtual {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->findCenterView()Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_1a

    goto :goto_42

    :cond_1a
    const/4 v0, 0x2

    new-array v0, v0, [F

    invoke-virtual {p0}, Landroid/view/View;->getScaleX()F

    move-result v3

    aput v3, v0, v2

    const/high16 v2, 0x3f800000  # 1.0f

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/android/common/config/AnimationConstant;->PATH_INTERPOLATOR_7:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/android/common/config/a;

    const/16 v2, 0x8

    invoke-direct {v1, p0, v2}, Lcom/android/common/config/a;-><init>(Landroid/view/View;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :goto_42
    return-void
.end method

.method private static final cardRestoreAnim$lambda-28$lambda-27(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .registers 3

    const-string v0, "$it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method private final closeGuides()V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mIsNeedShowGuide:Z

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mGuideRunable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mSlideUpGuide:Lcom/android/launcher/guide/PendingCardGuide;

    if-nez v0, :cond_13

    goto :goto_16

    :cond_13
    invoke-virtual {v0}, Lcom/android/launcher/guide/PendingCardGuide;->hide()V

    :goto_16
    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mPinTip:Lcom/android/launcher/guide/PendingCardGuide;

    if-nez v0, :cond_1b

    goto :goto_1e

    :cond_1b
    invoke-virtual {v0}, Lcom/android/launcher/guide/PendingCardGuide;->hide()V

    :goto_1e
    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mLongPressGuide:Lcom/android/launcher/guide/PendingCardGuide;

    if-nez p0, :cond_23

    goto :goto_26

    :cond_23
    invoke-virtual {p0}, Lcom/android/launcher/guide/PendingCardGuide;->hide()V

    :goto_26
    return-void
.end method

.method public static synthetic d(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mGuideRunable$lambda-2(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;)V

    return-void
.end method

.method public static synthetic e(Landroid/widget/ImageView;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->pinAlphaAndScaleAnim$lambda-34$lambda-33(Landroid/widget/ImageView;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic f(Landroid/widget/ImageView;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->pinAlphaAndScaleAnim$lambda-40$lambda-39(Landroid/widget/ImageView;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic findCompletelyVisibleView$default(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$ScrollDirection;ILjava/lang/Object;)Landroid/view/View;
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    sget-object p1, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$ScrollDirection;->SCROLL_DIRECTION_NONE:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$ScrollDirection;

    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->findCompletelyVisibleView(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$ScrollDirection;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Lcom/coui/appcompat/indicator/COUIPageIndicator;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->indicatorAlphaAnim$lambda-32$lambda-31(Lcom/coui/appcompat/indicator/COUIPageIndicator;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private final getPinAndIndicatorOffsetX(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .registers 4

    iget-boolean v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mHasInitLayout:Z

    if-eqz v0, :cond_20

    if-nez p1, :cond_8

    const/4 p0, 0x0

    goto :goto_43

    :cond_8
    iget-boolean p2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mIsRtl:Z

    if-eqz p2, :cond_17

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result p1

    sub-float/2addr p0, p1

    goto :goto_42

    :cond_17
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    goto :goto_40

    :cond_20
    if-nez p2, :cond_2d

    invoke-virtual {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->findCenterView()Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p2

    :cond_2d
    const-string p0, "null cannot be cast to non-null type com.android.launcher3.popup.pendingcard.PendingCardAdapter.PendingCardHolder"

    invoke-static {p2, p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter$PendingCardHolder;

    invoke-virtual {p2}, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter$PendingCardHolder;->getMOffsetHorizontal()F

    move-result p0

    invoke-virtual {p2}, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter$PendingCardHolder;->getMPendingCardView()Lcom/android/launcher3/popup/pendingcard/PendingCardView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardView;->getCardWidth()I

    move-result p1

    :goto_40
    int-to-float p1, p1

    add-float/2addr p0, p1

    :goto_42
    float-to-int p0, p0

    :goto_43
    return p0
.end method

.method private final getVerticalHelper()Landroidx/recyclerview/widget/OrientationHelper;
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mVerticalHelper:Landroidx/recyclerview/widget/OrientationHelper;

    if-nez v0, :cond_e

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-static {v0}, Landroidx/recyclerview/widget/OrientationHelper;->createVerticalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mVerticalHelper:Landroidx/recyclerview/widget/OrientationHelper;

    :cond_e
    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mVerticalHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method

.method public static synthetic h(Lcom/coui/appcompat/indicator/COUIPageIndicator;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->indicatorAlphaAnim$lambda-30$lambda-29(Lcom/coui/appcompat/indicator/COUIPageIndicator;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private final hasEnterScrollState()Z
    .registers 4

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mScrollDirection:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$ScrollDirection;

    sget-object v2, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$ScrollDirection;->SCROLL_DIRECTION_DOWN:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$ScrollDirection;

    if-eq v0, v2, :cond_26

    :cond_e
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mScrollDirection:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$ScrollDirection;

    sget-object v2, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$ScrollDirection;->SCROLL_DIRECTION_UP:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$ScrollDirection;

    if-eq v0, v2, :cond_26

    :cond_1a
    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mCardContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->getCardCount()I

    move-result p0

    if-le p0, v1, :cond_26

    goto :goto_27

    :cond_26
    const/4 v1, 0x0

    :goto_27
    return v1
.end method

.method public static synthetic i(Landroid/widget/ImageView;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->pinAlphaAndScaleAnim$lambda-38$lambda-37(Landroid/widget/ImageView;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private final indicatorAlphaAnim(Z)V
    .registers 7

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_54

    iget-boolean p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mIsIndicatorAlphaOut:Z

    if-eqz p1, :cond_9c

    iget-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mIndicatorAlphaAnim:Landroid/animation/ValueAnimator;

    if-nez p1, :cond_e

    goto :goto_11

    :cond_e
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :goto_11
    iget-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mCardContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->getIndicator()Lcom/coui/appcompat/indicator/COUIPageIndicator;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v3

    new-array v0, v0, [F

    aput v3, v0, v2

    const/high16 v3, 0x3f800000  # 1.0f

    aput v3, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v3, 0x15e

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const-wide/16 v3, 0x96

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    sget-object v1, Lcom/android/common/util/OplusLauncherAnimUtils$Interpolators;->PATH_2:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/android/launcher3/popup/pendingcard/f;

    invoke-direct {v1, p1, v2}, Lcom/android/launcher3/popup/pendingcard/f;-><init>(Lcom/coui/appcompat/indicator/COUIPageIndicator;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p1, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$indicatorAlphaAnim$1$2;

    invoke-direct {p1, p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$indicatorAlphaAnim$1$2;-><init>(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;)V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iput-boolean v2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mIsIndicatorAlphaOut:Z

    iput-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mIndicatorAlphaAnim:Landroid/animation/ValueAnimator;

    goto :goto_9c

    :cond_54
    iget-boolean p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mIsIndicatorAlphaOut:Z

    if-eqz p1, :cond_59

    return-void

    :cond_59
    iget-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mCardContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->getIndicator()Lcom/coui/appcompat/indicator/COUIPageIndicator;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v3, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mIndicatorAlphaAnim:Landroid/animation/ValueAnimator;

    if-nez v3, :cond_71

    goto :goto_74

    :cond_71
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    :goto_74
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v3

    new-array v0, v0, [F

    aput v3, v0, v2

    const/4 v2, 0x0

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v2, Lcom/android/common/util/OplusLauncherAnimUtils$Interpolators;->PENDING_CARD_PATH_2:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v2, Lcom/android/launcher3/popup/pendingcard/f;

    invoke-direct {v2, p1, v1}, Lcom/android/launcher3/popup/pendingcard/f;-><init>(Lcom/coui/appcompat/indicator/COUIPageIndicator;I)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iput-boolean v1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mIsIndicatorAlphaOut:Z

    iput-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mIndicatorAlphaAnim:Landroid/animation/ValueAnimator;

    :cond_9c
    :goto_9c
    return-void
.end method

.method private static final indicatorAlphaAnim$lambda-30$lambda-29(Lcom/coui/appcompat/indicator/COUIPageIndicator;Landroid/animation/ValueAnimator;)V
    .registers 3

    const-string v0, "$indicator"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    return-void
.end method

.method private static final indicatorAlphaAnim$lambda-32$lambda-31(Lcom/coui/appcompat/indicator/COUIPageIndicator;Landroid/animation/ValueAnimator;)V
    .registers 3

    const-string v0, "$indicator"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    return-void
.end method

.method private final isCardSizeChanged(IZ)Z
    .registers 8

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.android.launcher3.popup.pendingcard.PendingCardAdapter"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;

    invoke-virtual {v0}, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mCardContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    const/4 v3, 0x0

    if-nez v2, :cond_19

    goto :goto_4a

    :cond_19
    invoke-virtual {v2}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->getSupportCardSizeList()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_20

    goto :goto_4a

    :cond_20
    add-int/lit8 v4, p1, 0x1

    if-ge v4, v1, :cond_4a

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/card/config/domain/model/CardConfigInfo;

    invoke-virtual {v0}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getSize()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Landroid/graphics/Point;

    iput-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mNextCardSize:Landroid/graphics/Point;

    const/4 v0, 0x1

    if-eqz p2, :cond_45

    iget p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mVerticalSizeChangePosition:I

    if-ne p1, p0, :cond_4a

    goto :goto_49

    :cond_45
    iget p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mHorizontalSizeChangePosition:I

    if-ne p1, p0, :cond_4a

    :goto_49
    move v3, v0

    :cond_4a
    :goto_4a
    return v3
.end method

.method private final isInActiveArea(Landroid/view/MotionEvent;)Z
    .registers 3

    if-nez p1, :cond_4

    const/4 p0, 0x0

    goto :goto_12

    :cond_4
    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mCardBounds:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p0, v0, p1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p0

    :goto_12
    return p0
.end method

.method private final isNeedShowGuide()Z
    .registers 4

    iget-boolean v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mIsNeedShowGuide:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mLauncher:Lcom/android/launcher/Launcher;

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/android/launcher3/AbstractFloatingView;->getOpenView(Lcom/android/launcher3/views/ActivityContext;I)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result p0

    if-nez p0, :cond_1a

    if-eqz v0, :cond_1a

    instance-of p0, v0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;

    if-eqz p0, :cond_1a

    const/4 v1, 0x1

    :cond_1a
    return v1
.end method

.method private final isNeedStartAnimPinAndIndicator()Z
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mFirstVisibleView:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v0

    iget v2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mHorizontalSizeChangePosition:I

    if-ne v0, v2, :cond_1f

    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mCardContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->getInnerAlignStateHorizontal()Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerHorizontalAlignState;

    move-result-object p0

    sget-object v0, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerHorizontalAlignState;->ALIGN_HORIZONTAL_END:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerHorizontalAlignState;

    if-eq p0, v0, :cond_1f

    const/4 v1, 0x1

    :cond_1f
    return v1
.end method

.method private final isShowFourSpanXBgForStartDrag(I)Z
    .registers 5

    iget v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mHorizontalSizeChangePosition:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_19

    if-lt p1, v0, :cond_19

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_19

    iget v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mHorizontalSizeChangePosition:I

    add-int/2addr v0, v1

    if-ne p1, v0, :cond_33

    iget-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mRealTimeScrollDirection:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$ScrollDirection;

    sget-object v0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$ScrollDirection;->SCROLL_DIRECTION_DOWN:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$ScrollDirection;

    if-ne p1, v0, :cond_33

    :cond_19
    iget p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mHorizontalSizeChangePosition:I

    if-ne p1, v2, :cond_32

    iget-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mFirstCardSize:Landroid/graphics/Point;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget p1, p1, Landroid/graphics/Point;->x:I

    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mCardContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->getOriginMaxCardSize()Landroid/graphics/Point;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Point;->x:I

    if-ne p1, p0, :cond_32

    goto :goto_33

    :cond_32
    const/4 v1, 0x0

    :cond_33
    :goto_33
    return v1
.end method

.method private final isShowingGuides()Z
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mSlideUpGuide:Lcom/android/launcher/guide/PendingCardGuide;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_8

    :cond_6
    move v0, v1

    goto :goto_f

    :cond_8
    invoke-virtual {v0}, Lcom/android/launcher/guide/PendingCardGuide;->isShowing()Z

    move-result v0

    if-ne v0, v2, :cond_6

    move v0, v2

    :goto_f
    if-nez v0, :cond_2f

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mPinTip:Lcom/android/launcher/guide/PendingCardGuide;

    if-nez v0, :cond_17

    :cond_15
    move v0, v1

    goto :goto_1e

    :cond_17
    invoke-virtual {v0}, Lcom/android/launcher/guide/PendingCardGuide;->isShowing()Z

    move-result v0

    if-ne v0, v2, :cond_15

    move v0, v2

    :goto_1e
    if-nez v0, :cond_2f

    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mLongPressGuide:Lcom/android/launcher/guide/PendingCardGuide;

    if-nez p0, :cond_26

    :cond_24
    move p0, v1

    goto :goto_2d

    :cond_26
    invoke-virtual {p0}, Lcom/android/launcher/guide/PendingCardGuide;->isShowing()Z

    move-result p0

    if-ne p0, v2, :cond_24

    move p0, v2

    :goto_2d
    if-eqz p0, :cond_30

    :cond_2f
    move v1, v2

    :cond_30
    return v1
.end method

.method public static synthetic j(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mFourSpanXBgAnimOutRunnable$lambda-3(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;)V

    return-void
.end method

.method public static synthetic k(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->redirectToCardStore$lambda-15(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;)V

    return-void
.end method

.method public static synthetic l(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->cardRestoreAnim$lambda-28$lambda-27(Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private final locateIndicatorX(I)V
    .registers 5

    int-to-float p1, p1

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mCardContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->getIndicator()Lcom/coui/appcompat/indicator/COUIPageIndicator;

    move-result-object v0

    if-nez v0, :cond_d

    goto :goto_47

    :cond_d
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setPivotY(F)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setPivotX(F)V

    iget-boolean v1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mIsRtl:Z

    const v2, 0x7f0709fb

    if-eqz v1, :cond_35

    iget-object v1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mCardContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, p1

    iget-object p0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    mul-int/lit8 p0, p0, 0x2

    int-to-float p0, p0

    sub-float/2addr v1, p0

    goto :goto_44

    :cond_35
    iget-object p0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    mul-int/lit8 p0, p0, 0x2

    int-to-float p0, p0

    add-float v1, p1, p0

    :goto_44
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    :goto_47
    return-void
.end method

.method private final locateIndicatorY()V
    .registers 8

    invoke-virtual {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->getClipPathRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000  # 2.0f

    div-float/2addr v1, v2

    iget-object v3, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mCardContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->getIndicator()Lcom/coui/appcompat/indicator/COUIPageIndicator;

    move-result-object v3

    if-nez v3, :cond_18

    goto :goto_72

    :cond_18
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setPivotY(F)V

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setPivotX(F)V

    iget-boolean v4, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mIsRtl:Z

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-nez v4, :cond_4c

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    instance-of v4, p0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v4, :cond_34

    move-object v6, p0

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    :cond_34
    if-nez v6, :cond_37

    goto :goto_39

    :cond_37
    iget v5, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :goto_39
    int-to-float p0, v5

    sub-float/2addr v1, p0

    sub-float/2addr v0, v1

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, v2

    sub-float/2addr v0, p0

    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    const/high16 p0, 0x42b40000  # 90.0f

    invoke-virtual {v3, p0}, Landroid/widget/FrameLayout;->setRotation(F)V

    goto :goto_72

    :cond_4c
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    instance-of v4, p0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v4, :cond_5b

    move-object v6, p0

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    :cond_5b
    if-nez v6, :cond_5e

    goto :goto_60

    :cond_5e
    iget v5, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :goto_60
    int-to-float p0, v5

    sub-float/2addr v1, p0

    sub-float/2addr v0, v1

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, v2

    add-float/2addr p0, v0

    invoke-virtual {v3, p0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    const/high16 p0, -0x3d4c0000  # -90.0f

    invoke-virtual {v3, p0}, Landroid/widget/FrameLayout;->setRotation(F)V

    :goto_72
    return-void
.end method

.method private final locatePin(I)V
    .registers 6

    int-to-float p1, p1

    invoke-virtual {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->getClipPathRect()Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mCardContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->getPin()Landroid/widget/ImageView;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mIsRtl:Z

    const v3, 0x7f070a00

    if-eqz v2, :cond_23

    iget-object v2, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr p1, v2

    neg-float p1, p1

    goto :goto_2f

    :cond_23
    iget-object v2, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr p1, v2

    :goto_2f
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setTranslationX(F)V

    iget p1, v0, Landroid/graphics/RectF;->top:F

    iget p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mPinOffsetY:I

    int-to-float p0, p0

    add-float/2addr p1, p0

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setTranslationY(F)V

    return-void
.end method

.method private final locatePinY()V
    .registers 3

    invoke-virtual {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->getClipPathRect()Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mCardContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->getPin()Landroid/widget/ImageView;

    move-result-object v1

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mPinOffsetY:I

    int-to-float p0, p0

    add-float/2addr v0, p0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setTranslationY(F)V

    return-void
.end method

.method public static synthetic m(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->animTwoSpanXBgAlphaByPosition$lambda-45$lambda-44(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private static final mFourSpanXBgAnimOutRunnable$lambda-3(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;)V
    .registers 2

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->animFourSpanXBgAlphaByPosition(Z)V

    return-void
.end method

.method private static final mGuideRunable$lambda-2(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;)V
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->isNeedShowGuide()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-virtual {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->findCenterView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_13

    goto :goto_2b

    :cond_13
    invoke-direct {p0, v0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->showSlideUpGuide(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_2b

    iget-object v1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mCardContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->getPin()Landroid/widget/ImageView;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->showPinTip(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_2b

    invoke-direct {p0, v0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->showLongPressGuide(Landroid/view/View;)Z

    :cond_2b
    :goto_2b
    return-void
.end method

.method private static final mTwoSpanXBgAnimOutRunnable$lambda-4(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;)V
    .registers 2

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->animTwoSpanXBgAlphaByPosition(Z)V

    return-void
.end method

.method private final onCardChanged()V
    .registers 7

    invoke-virtual {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->findCenterView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v0

    const-string v1, "onCardChanged: "

    const-string v2, "PendingCardRecyclerView"

    invoke-static {v0, v1, v2}, Lcom/android/common/config/f;->a(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mIsCardChange:Z

    invoke-direct {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->isNeedStartAnimPinAndIndicator()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1f

    invoke-direct {p0, v4}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->indicatorAlphaAnim(Z)V

    :cond_1f
    invoke-direct {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->isNeedStartAnimPinAndIndicator()Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-direct {p0, v4}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->pinAlphaAndScaleAnim(Z)V

    :cond_28
    iget v3, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mHorizontalSizeChangePosition:I

    const/4 v5, -0x1

    if-eq v3, v5, :cond_62

    if-ne v3, v0, :cond_62

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mRealTimeScrollDirection:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$ScrollDirection;

    sget-object v3, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$ScrollDirection;->SCROLL_DIRECTION_UP:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$ScrollDirection;

    if-ne v0, v3, :cond_5b

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_42

    const-string p0, "animFourSpanXBgAlphaByPosition reject show four spanX bg "

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_96

    :cond_42
    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mTwoSpanXBgAnimOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-direct {p0, v1}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->animTwoSpanXBgAlphaByPosition(Z)V

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mFourSpanXBgAnimOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-boolean v4, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mIsFourSpanXBgAnimIn:Z

    invoke-direct {p0, v4}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->animFourSpanXBgAlphaByPosition(Z)V

    goto :goto_96

    :cond_5b
    invoke-direct {p0, v1}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->animFourSpanXBgAlphaByPosition(Z)V

    invoke-direct {p0, v4}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->animTwoSpanXBgAlphaByPosition(Z)V

    goto :goto_96

    :cond_62
    if-eq v3, v5, :cond_96

    add-int/2addr v3, v1

    if-ne v3, v0, :cond_96

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mRealTimeScrollDirection:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$ScrollDirection;

    sget-object v2, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$ScrollDirection;->SCROLL_DIRECTION_DOWN:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$ScrollDirection;

    if-ne v0, v2, :cond_83

    iput-boolean v1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mIsStartFakeAlphaAnim:Z

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mFourSpanXBgAlphaAnim:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_74

    goto :goto_77

    :cond_74
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :goto_77
    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mFourSpanXBgAnimOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_93

    :cond_83
    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mFourSpanXBgAnimOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-boolean v4, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mIsFourSpanXBgAnimIn:Z

    invoke-direct {p0, v4}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->animFourSpanXBgAlphaByPosition(Z)V

    :goto_93
    invoke-direct {p0, v4}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->animTwoSpanXBgAlphaByPosition(Z)V

    :cond_96
    :goto_96
    return-void
.end method

.method private final onCardSettled(I)V
    .registers 5

    iget-boolean v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mIsCardChange:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    const-string v0, "onCardSettled: "

    const-string v1, "PendingCardRecyclerView"

    invoke-static {p1, v0, v1}, Lcom/android/common/config/f;->a(ILjava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mIsCardChange:Z

    invoke-virtual {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->findCenterView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    invoke-virtual {v0}, Landroid/view/View;->requestAccessibilityFocus()Z

    invoke-direct {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->updateStateOnScrollEnd()V

    iget-boolean v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mIsPinAnimOut:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_27

    invoke-direct {p0, v1}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->pinAlphaAndScaleAnim(Z)V

    :cond_27
    iget-boolean v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mIsIndicatorAlphaOut:Z

    if-eqz v0, :cond_2e

    invoke-direct {p0, v1}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->indicatorAlphaAnim(Z)V

    :cond_2e
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result v2

    if-nez v2, :cond_40

    iget v2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mHorizontalSizeChangePosition:I

    if-eq v2, v0, :cond_40

    iget-boolean v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mIsFourSpanXBgAnimIn:Z

    if-eqz v0, :cond_40

    invoke-direct {p0, v1}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->animFourSpanXBgAlphaByPosition(Z)V

    :cond_40
    iput p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mTotalScrollDistance:I

    return-void
.end method

.method private final pinAlphaAndScaleAnim(Z)V
    .registers 11

    const-wide/16 v0, 0xe6

    const-wide/16 v2, 0x64

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz p1, :cond_71

    iget-boolean p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mIsPinAnimOut:Z

    if-eqz p1, :cond_dc

    iget-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mCardContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->getPin()Landroid/widget/ImageView;

    move-result-object p1

    iget-object v7, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mPinAlphaAnim:Landroid/animation/ValueAnimator;

    if-nez v7, :cond_1b

    goto :goto_1e

    :cond_1b
    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->cancel()V

    :goto_1e
    iget-object v7, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mPinScaleAnim:Landroid/animation/ValueAnimator;

    if-nez v7, :cond_23

    goto :goto_26

    :cond_23
    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->cancel()V

    :goto_26
    new-array v7, v4, [F

    invoke-virtual {p1}, Landroid/widget/ImageView;->getAlpha()F

    move-result v8

    aput v8, v7, v6

    const/high16 v8, 0x3f800000  # 1.0f

    aput v8, v7, v5

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v2, Lcom/android/common/util/OplusLauncherAnimUtils$Interpolators;->PATH_2:Landroid/view/animation/Interpolator;

    invoke-virtual {v7, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v2, Lcom/android/launcher3/popup/pendingcard/d;

    invoke-direct {v2, p1, v6}, Lcom/android/launcher3/popup/pendingcard/d;-><init>(Landroid/widget/ImageView;I)V

    invoke-virtual {v7, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iput-object v7, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mPinAlphaAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->start()V

    new-array v2, v4, [F

    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleX()F

    move-result v3

    aput v3, v2, v6

    aput v8, v2, v5

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v0, Lcom/android/common/util/OplusLauncherAnimUtils$Interpolators;->PENDING_CARD_PATH_1:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v0, Lcom/android/launcher3/popup/pendingcard/d;

    invoke-direct {v0, p1, v5}, Lcom/android/launcher3/popup/pendingcard/d;-><init>(Landroid/widget/ImageView;I)V

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iput-object v2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mPinScaleAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    iput-boolean v6, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mIsPinAnimOut:Z

    goto :goto_dc

    :cond_71
    iget-boolean p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mIsPinAnimOut:Z

    if-eqz p1, :cond_76

    return-void

    :cond_76
    iget-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mPinAlphaAnim:Landroid/animation/ValueAnimator;

    if-nez p1, :cond_7b

    goto :goto_7e

    :cond_7b
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :goto_7e
    iget-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mPinScaleAnim:Landroid/animation/ValueAnimator;

    if-nez p1, :cond_83

    goto :goto_86

    :cond_83
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :goto_86
    iget-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mCardContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->getPin()Landroid/widget/ImageView;

    move-result-object p1

    new-array v7, v4, [F

    invoke-virtual {p1}, Landroid/widget/ImageView;->getAlpha()F

    move-result v8

    aput v8, v7, v6

    const/4 v8, 0x0

    aput v8, v7, v5

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v2, Lcom/android/common/util/OplusLauncherAnimUtils$Interpolators;->PATH_2:Landroid/view/animation/Interpolator;

    invoke-virtual {v7, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v2, Lcom/android/launcher3/popup/pendingcard/d;

    invoke-direct {v2, p1, v4}, Lcom/android/launcher3/popup/pendingcard/d;-><init>(Landroid/widget/ImageView;I)V

    invoke-virtual {v7, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iput-object v7, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mPinAlphaAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->start()V

    new-array v2, v4, [F

    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleX()F

    move-result v3

    aput v3, v2, v6

    const v3, 0x3f666666  # 0.9f

    aput v3, v2, v5

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v0, Lcom/android/common/util/OplusLauncherAnimUtils$Interpolators;->PENDING_CARD_PATH_1:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v0, Lcom/android/launcher3/popup/pendingcard/d;

    const/4 v1, 0x3

    invoke-direct {v0, p1, v1}, Lcom/android/launcher3/popup/pendingcard/d;-><init>(Landroid/widget/ImageView;I)V

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iput-object v2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mPinScaleAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    iput-boolean v5, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mIsPinAnimOut:Z

    :cond_dc
    :goto_dc
    return-void
.end method

.method private static final pinAlphaAndScaleAnim$lambda-34$lambda-33(Landroid/widget/ImageView;Landroid/animation/ValueAnimator;)V
    .registers 3

    const-string v0, "$pin"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method

.method private static final pinAlphaAndScaleAnim$lambda-36$lambda-35(Landroid/widget/ImageView;Landroid/animation/ValueAnimator;)V
    .registers 3

    const-string v0, "$pin"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setScaleX(F)V

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setScaleY(F)V

    return-void
.end method

.method private static final pinAlphaAndScaleAnim$lambda-38$lambda-37(Landroid/widget/ImageView;Landroid/animation/ValueAnimator;)V
    .registers 3

    const-string v0, "$pin"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method

.method private static final pinAlphaAndScaleAnim$lambda-40$lambda-39(Landroid/widget/ImageView;Landroid/animation/ValueAnimator;)V
    .registers 3

    const-string v0, "$pin"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setScaleX(F)V

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setScaleY(F)V

    return-void
.end method

.method private final redirectToCardStore()V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mLauncher:Lcom/android/launcher/Launcher;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/launcher3/AbstractFloatingView;->closeOpenContainer(Lcom/android/launcher3/views/ActivityContext;I)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/popup/pendingcard/g;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lcom/android/launcher3/popup/pendingcard/g;-><init>(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;I)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static final redirectToCardStore$lambda-15(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;)V
    .registers 2

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v0}, Lcom/android/launcher/togglebar/ToggleBarUtils;->startCardStoreActivity(Lcom/android/launcher/Launcher;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mIsRedirectedToCardStore:Z

    return-void
.end method

.method private final setFourSpanXBgAlpha(I)V
    .registers 8

    int-to-float v0, p1

    sget-object v5, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    const/4 v1, 0x0

    const/high16 v2, 0x437f0000  # 255.0f

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000  # 1.0f

    invoke-static/range {v0 .. v5}, Lcom/android/launcher3/Utilities;->mapToRange(FFFFFLandroid/view/animation/Interpolator;)F

    move-result p1

    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mFourSpanXBg:Landroid/widget/ImageView;

    if-nez p0, :cond_12

    goto :goto_15

    :cond_12
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    :goto_15
    return-void
.end method

.method private final showLongPressGuide(Landroid/view/View;)Z
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mLongPressGuide:Lcom/android/launcher/guide/PendingCardGuide;

    if-nez v0, :cond_5

    goto :goto_8

    :cond_5
    invoke-virtual {v0}, Lcom/android/launcher/guide/PendingCardGuide;->hide()V

    :goto_8
    iget-object v0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher/guide/GuidePrefUtils;->getShowPendingCardPinTip(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5c

    iget-object v0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher/guide/GuidePrefUtils;->getShowPendingCardLongPressGuide(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5c

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mPendingCardGuideBuilder:Lcom/android/launcher/guide/PendingCardGuide$PendingCardGuideBuilder;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/launcher/guide/PendingCardGuide$PendingCardGuideBuilder;->init()Lcom/android/launcher/guide/PendingCardGuide$PendingCardGuideBuilder;

    move-result-object v0

    const v1, 0x7f110014

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher/guide/PendingCardGuide$PendingCardGuideBuilder;->setAnimResId(Ljava/lang/Integer;)Lcom/android/launcher/guide/PendingCardGuide$PendingCardGuideBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher/guide/PendingCardGuide$PendingCardGuideBuilder;->setHeight(I)Lcom/android/launcher/guide/PendingCardGuide$PendingCardGuideBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0706ca

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher/guide/PendingCardGuide$PendingCardGuideBuilder;->setWidth(I)Lcom/android/launcher/guide/PendingCardGuide$PendingCardGuideBuilder;

    move-result-object v0

    const v1, 0x7f1203ec

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher/guide/PendingCardGuide$PendingCardGuideBuilder;->setGuideString(Ljava/lang/Integer;)Lcom/android/launcher/guide/PendingCardGuide$PendingCardGuideBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/guide/PendingCardGuide$PendingCardGuideBuilder;->build()Lcom/android/launcher/guide/PendingCardGuide;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mLongPressGuide:Lcom/android/launcher/guide/PendingCardGuide;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lcom/android/launcher/guide/PendingCardGuide;->needShow(Landroid/view/View;)Z

    move-result p0

    return p0

    :cond_5c
    const/4 p0, 0x0

    return p0
.end method

.method private final showPinTip(Landroid/view/View;)Z
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mPinTip:Lcom/android/launcher/guide/PendingCardGuide;

    if-nez v0, :cond_5

    goto :goto_8

    :cond_5
    invoke-virtual {v0}, Lcom/android/launcher/guide/PendingCardGuide;->hide()V

    :goto_8
    iget-object v0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher/guide/GuidePrefUtils;->getShowPendingCardPinTip(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mPendingCardGuideBuilder:Lcom/android/launcher/guide/PendingCardGuide$PendingCardGuideBuilder;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/launcher/guide/PendingCardGuide$PendingCardGuideBuilder;->init()Lcom/android/launcher/guide/PendingCardGuide$PendingCardGuideBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher/guide/PendingCardGuide$PendingCardGuideBuilder;->setAnimResId(Ljava/lang/Integer;)Lcom/android/launcher/guide/PendingCardGuide$PendingCardGuideBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher/guide/PendingCardGuide$PendingCardGuideBuilder;->setHeight(I)Lcom/android/launcher/guide/PendingCardGuide$PendingCardGuideBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher/guide/PendingCardGuide$PendingCardGuideBuilder;->setWidth(I)Lcom/android/launcher/guide/PendingCardGuide$PendingCardGuideBuilder;

    move-result-object v0

    const v1, 0x7f1203eb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher/guide/PendingCardGuide$PendingCardGuideBuilder;->setGuideString(Ljava/lang/Integer;)Lcom/android/launcher/guide/PendingCardGuide$PendingCardGuideBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/guide/PendingCardGuide$PendingCardGuideBuilder;->build()Lcom/android/launcher/guide/PendingCardGuide;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mPinTip:Lcom/android/launcher/guide/PendingCardGuide;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lcom/android/launcher/guide/PendingCardGuide;->needShow(Landroid/view/View;)Z

    move-result p0

    return p0

    :cond_47
    const/4 p0, 0x0

    return p0
.end method

.method private final showSlideUpGuide(Landroid/view/View;)Z
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mSlideUpGuide:Lcom/android/launcher/guide/PendingCardGuide;

    if-nez v0, :cond_5

    goto :goto_8

    :cond_5
    invoke-virtual {v0}, Lcom/android/launcher/guide/PendingCardGuide;->hide()V

    :goto_8
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_68

    iget-object v0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher/guide/GuidePrefUtils;->getShowPendingCardSlideGuide(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_68

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mPendingCardGuideBuilder:Lcom/android/launcher/guide/PendingCardGuide$PendingCardGuideBuilder;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/launcher/guide/PendingCardGuide$PendingCardGuideBuilder;->init()Lcom/android/launcher/guide/PendingCardGuide$PendingCardGuideBuilder;

    move-result-object v0

    const v1, 0x7f11001b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher/guide/PendingCardGuide$PendingCardGuideBuilder;->setAnimResId(Ljava/lang/Integer;)Lcom/android/launcher/guide/PendingCardGuide$PendingCardGuideBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher/guide/PendingCardGuide$PendingCardGuideBuilder;->setHeight(I)Lcom/android/launcher/guide/PendingCardGuide$PendingCardGuideBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0706cc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher/guide/PendingCardGuide$PendingCardGuideBuilder;->setWidth(I)Lcom/android/launcher/guide/PendingCardGuide$PendingCardGuideBuilder;

    move-result-object v0

    const/high16 v1, 0x43340000  # 180.0f

    invoke-virtual {v0, v1}, Lcom/android/launcher/guide/PendingCardGuide$PendingCardGuideBuilder;->setRotationX(F)Lcom/android/launcher/guide/PendingCardGuide$PendingCardGuideBuilder;

    move-result-object v0

    const v1, 0x7f1203ed

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher/guide/PendingCardGuide$PendingCardGuideBuilder;->setGuideString(Ljava/lang/Integer;)Lcom/android/launcher/guide/PendingCardGuide$PendingCardGuideBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/guide/PendingCardGuide$PendingCardGuideBuilder;->build()Lcom/android/launcher/guide/PendingCardGuide;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mSlideUpGuide:Lcom/android/launcher/guide/PendingCardGuide;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lcom/android/launcher/guide/PendingCardGuide;->needShow(Landroid/view/View;)Z

    move-result p0

    return p0

    :cond_68
    const/4 p0, 0x0

    return p0
.end method

.method private final updateCardSizeChangePosition()V
    .registers 10

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.android.launcher3.popup.pendingcard.PendingCardAdapter"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;

    invoke-virtual {v0}, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;->getData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mCardContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    if-nez v3, :cond_19

    goto/16 :goto_c5

    :cond_19
    invoke-virtual {v3}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->getSupportCardSizeList()Ljava/util/Map;

    move-result-object v3

    if-nez v3, :cond_21

    goto/16 :goto_c5

    :cond_21
    const/4 v4, 0x0

    add-int/lit8 v2, v2, -0x1

    if-lez v2, :cond_c5

    :goto_26
    add-int/lit8 v5, v4, 0x1

    invoke-virtual {v0, v4}, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;->getItemViewType(I)I

    move-result v6

    const/4 v7, 0x3

    if-eq v6, v7, :cond_bf

    invoke-virtual {v0, v5}, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;->getItemViewType(I)I

    move-result v6

    if-ne v6, v7, :cond_37

    goto/16 :goto_bf

    :cond_37
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oplus/card/config/domain/model/CardConfigInfo;

    invoke-virtual {v6}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getSize()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Point;

    const/4 v7, 0x0

    if-nez v6, :cond_50

    move-object v6, v7

    goto :goto_56

    :cond_50
    iget v6, v6, Landroid/graphics/Point;->x:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    :goto_56
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oplus/card/config/domain/model/CardConfigInfo;

    invoke-virtual {v8}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getSize()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Point;

    if-nez v8, :cond_6e

    move-object v8, v7

    goto :goto_74

    :cond_6e
    iget v8, v8, Landroid/graphics/Point;->x:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    :goto_74
    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7c

    iput v4, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mHorizontalSizeChangePosition:I

    :cond_7c
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oplus/card/config/domain/model/CardConfigInfo;

    invoke-virtual {v6}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getSize()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Point;

    if-nez v6, :cond_94

    move-object v6, v7

    goto :goto_9a

    :cond_94
    iget v6, v6, Landroid/graphics/Point;->y:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    :goto_9a
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oplus/card/config/domain/model/CardConfigInfo;

    invoke-virtual {v8}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getSize()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Point;

    if-nez v8, :cond_b1

    goto :goto_b7

    :cond_b1
    iget v7, v8, Landroid/graphics/Point;->y:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    :goto_b7
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_bf

    iput v4, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mVerticalSizeChangePosition:I

    :cond_bf
    :goto_bf
    if-lt v5, v2, :cond_c2

    goto :goto_c5

    :cond_c2
    move v4, v5

    goto/16 :goto_26

    :cond_c5
    :goto_c5
    return-void
.end method

.method private final updateHorizontalVisualEdge()Ly2/i;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ly2/i<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mCardContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->getInnerAlignStateHorizontal()Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerHorizontalAlignState;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_53

    const/4 v1, 0x2

    if-eq v0, v1, :cond_42

    const/4 v1, 0x3

    if-eq v0, v1, :cond_22

    const/4 p0, 0x4

    if-eq v0, p0, :cond_20

    move p0, v2

    goto :goto_71

    :cond_20
    const/4 p0, 0x0

    return-object p0

    :cond_22
    iget-boolean v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mIsRtl:Z

    if-nez v0, :cond_27

    goto :goto_33

    :cond_27
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mNextCardSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    move v2, v0

    :goto_33
    iget-boolean v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mIsRtl:Z

    if-nez v0, :cond_3c

    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mNextCardSize:Landroid/graphics/Point;

    iget p0, p0, Landroid/graphics/Point;->x:I

    goto :goto_40

    :cond_3c
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p0

    :goto_40
    int-to-float p0, p0

    goto :goto_71

    :cond_42
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mNextCardSize:Landroid/graphics/Point;

    iget p0, p0, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, p0

    int-to-float v0, v0

    const/high16 v1, 0x40000000  # 2.0f

    div-float v2, v0, v1

    int-to-float p0, p0

    add-float/2addr p0, v2

    goto :goto_71

    :cond_53
    iget-boolean v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mIsRtl:Z

    if-nez v0, :cond_63

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mNextCardSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    move v2, v0

    :cond_63
    iget-boolean v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mIsRtl:Z

    if-nez v0, :cond_6c

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p0

    goto :goto_40

    :cond_6c
    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mNextCardSize:Landroid/graphics/Point;

    iget p0, p0, Landroid/graphics/Point;->x:I

    goto :goto_40

    :goto_71
    new-instance v0, Ly2/i;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ly2/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method private final updateStateOnScrollEnd()V
    .registers 3

    invoke-virtual {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->findCenterView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_7

    goto :goto_f

    :cond_7
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->getPinAndIndicatorOffsetX(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->locatePin(I)V

    :goto_f
    return-void
.end method

.method private final updateVerticalVisualEdge()Ly2/i;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ly2/i<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mCardContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->getInnerAlignStateVertical()Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerVerticalAlignState;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$WhenMappings;->$EnumSwitchMapping$2:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v0, v1, :cond_3c

    if-eq v0, v2, :cond_30

    const/4 v1, 0x3

    if-eq v0, v1, :cond_22

    const/4 p0, 0x4

    if-eq v0, p0, :cond_20

    move p0, v3

    goto :goto_47

    :cond_20
    const/4 p0, 0x0

    return-object p0

    :cond_22
    iget v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mVerticalSpaceCompensate:I

    int-to-float v3, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mVerticalSpaceCompensate:I

    int-to-float p0, p0

    sub-float p0, v0, p0

    goto :goto_47

    :cond_30
    iget v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mVerticalSpaceCompensate:I

    int-to-float v0, v0

    int-to-float v1, v2

    mul-float v3, v0, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p0

    int-to-float p0, p0

    goto :goto_47

    :cond_3c
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mVerticalSpaceCompensate:I

    mul-int/2addr p0, v2

    int-to-float p0, p0

    sub-float/2addr v0, p0

    move p0, v0

    :goto_47
    new-instance v0, Ly2/i;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ly2/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method private final updateVisualArea([F[F)V
    .registers 9

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    if-ltz v0, :cond_14

    move v2, v1

    :goto_7
    add-int/lit8 v3, v2, 0x1

    iget-object v4, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mStartClipArea:[F

    aget v5, p1, v2

    aput v5, v4, v2

    if-le v3, v0, :cond_12

    goto :goto_14

    :cond_12
    move v2, v3

    goto :goto_7

    :cond_14
    :goto_14
    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_26

    :goto_19
    add-int/lit8 v0, v1, 0x1

    iget-object v2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mEndClipArea:[F

    aget v3, p2, v1

    aput v3, v2, v1

    if-le v0, p1, :cond_24

    goto :goto_26

    :cond_24
    move v1, v0

    goto :goto_19

    :cond_26
    :goto_26
    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .registers 1

    return-void
.end method

.method public final calculateStartAndEndValues(I)V
    .registers 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070a05

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x6

    new-array v4, v3, [F

    new-array v5, v3, [F

    const/4 v6, 0x1

    invoke-direct {v0, v1, v6}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->isCardSizeChanged(IZ)Z

    move-result v7

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->updateVerticalVisualEdge()Ly2/i;

    move-result-object v8

    if-nez v8, :cond_21

    return-void

    :cond_21
    iget-object v9, v8, Ly2/i;->a:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->floatValue()F

    move-result v9

    iget-object v8, v8, Ly2/i;->b:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->floatValue()F

    move-result v8

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->updateHorizontalVisualEdge()Ly2/i;

    move-result-object v10

    if-nez v10, :cond_38

    return-void

    :cond_38
    iget-object v11, v10, Ly2/i;->a:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->floatValue()F

    move-result v11

    iget-object v10, v10, Ly2/i;->b:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->floatValue()F

    move-result v10

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v12

    const-string v13, "null cannot be cast to non-null type com.android.launcher3.popup.pendingcard.PendingCardAdapter"

    invoke-static {v12, v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v12, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;

    invoke-virtual {v12}, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;->getData()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/card/config/domain/model/CardConfigInfo;

    invoke-virtual {v1}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getSize()I

    move-result v1

    const/4 v13, 0x4

    const/4 v14, 0x3

    if-eq v1, v14, :cond_68

    if-eq v1, v13, :cond_68

    goto :goto_6e

    :cond_68
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    int-to-float v8, v1

    const/4 v9, 0x0

    :goto_6e
    new-array v1, v3, [F

    const/4 v15, 0x0

    aput v11, v1, v15

    const/16 v16, 0x2

    aput v10, v1, v16

    aput v2, v1, v13

    const/4 v12, 0x5

    aput v2, v1, v12

    aput v9, v1, v6

    aput v8, v1, v14

    new-array v3, v3, [F

    aput v11, v3, v15

    aput v10, v3, v16

    aput v2, v3, v13

    aput v2, v3, v12

    const/4 v2, 0x0

    aput v2, v3, v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    int-to-float v2, v2

    aput v2, v3, v14

    move v2, v15

    :goto_95
    add-int/lit8 v6, v2, 0x1

    aget v8, v1, v2

    aput v8, v4, v2

    if-le v6, v12, :cond_b2

    :goto_9d
    add-int/lit8 v2, v15, 0x1

    if-eqz v7, :cond_a6

    aget v6, v3, v15

    aput v6, v5, v15

    goto :goto_aa

    :cond_a6
    aget v6, v1, v15

    aput v6, v5, v15

    :goto_aa
    if-le v2, v12, :cond_b0

    invoke-direct {v0, v4, v5}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->updateVisualArea([F[F)V

    return-void

    :cond_b0
    move v15, v2

    goto :goto_9d

    :cond_b2
    move v2, v6

    goto :goto_95
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_f

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_f
    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_14

    goto :goto_17

    :cond_14
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :goto_17
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/high16 v1, 0x3f000000  # 0.5f

    const/4 v2, 0x0

    if-eqz v0, :cond_92

    const/4 v3, 0x1

    if-eq v0, v3, :cond_51

    const/4 v2, 0x2

    if-eq v0, v2, :cond_28

    goto/16 :goto_dc

    :cond_28
    iget v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mScrollPointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    add-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mLastTouchY:I

    sub-int v1, v0, v1

    if-lez v1, :cond_3d

    sget-object v2, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$ScrollDirection;->SCROLL_DIRECTION_DOWN:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$ScrollDirection;

    goto :goto_3f

    :cond_3d
    sget-object v2, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$ScrollDirection;->SCROLL_DIRECTION_UP:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$ScrollDirection;

    :goto_3f
    iput-object v2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mRealTimeScrollDirection:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$ScrollDirection;

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mTouchSlop:I

    if-le v1, v2, :cond_4d

    iget-object v1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mRealTimeScrollDirection:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$ScrollDirection;

    iput-object v1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mScrollDirection:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$ScrollDirection;

    :cond_4d
    iput v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mLastTouchY:I

    goto/16 :goto_dc

    :cond_51
    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_56

    goto :goto_5b

    :cond_56
    iget v1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mMaxFlingVelocity:F

    invoke-virtual {v0, v3, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    :goto_5b
    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mLayoutManager:Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager;->canScrollVertically()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_72

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    neg-float v0, v0

    goto :goto_73

    :cond_72
    move v0, v1

    :goto_73
    iput v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mVelocityY:F

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mFirstVisualCardScrollEvent:Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager$ScrollEventValues;

    invoke-virtual {v0}, Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager$ScrollEventValues;->getMOffset()F

    move-result v0

    cmpg-float v0, v0, v1

    if-nez v0, :cond_80

    move v2, v3

    :cond_80
    if-nez v2, :cond_8a

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mSnapHelper:Lcom/android/launcher3/popup/pendingcard/PendingCardSnapHelper;

    if-nez v0, :cond_87

    goto :goto_8a

    :cond_87
    invoke-virtual {v0}, Lcom/android/launcher3/popup/pendingcard/PendingCardSnapHelper;->snapToTargetExistingView()V

    :cond_8a
    :goto_8a
    iget-boolean v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mIsRedirectedToCardStore:Z

    if-eqz v0, :cond_dc

    invoke-direct {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->redirectToCardStore()V

    goto :goto_dc

    :cond_92
    invoke-direct {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->isShowingGuides()Z

    move-result v0

    if-eqz v0, :cond_9b

    invoke-direct {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->closeGuides()V

    :cond_9b
    invoke-direct {p0, p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->isInActiveArea(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_e1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p0, v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_b0

    goto :goto_e1

    :cond_b0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result v0

    if-nez v0, :cond_dc

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mFirstVisualCardScrollEvent:Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager$ScrollEventValues;

    invoke-virtual {v0}, Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager$ScrollEventValues;->reset()V

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mLastVisualCardScrollEvent:Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager$ScrollEventValues;

    invoke-virtual {v0}, Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager$ScrollEventValues;->reset()V

    sget-object v0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$ScrollDirection;->SCROLL_DIRECTION_NONE:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$ScrollDirection;

    iput-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mScrollDirection:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$ScrollDirection;

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mScrollPointerId:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mLastTouchY:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mScrollPointerId:I

    :cond_dc
    :goto_dc
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_e1
    :goto_e1
    return v2
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 4

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mOutPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_20

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mOutPath:Landroid/graphics/Path;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    invoke-virtual {p0, p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->drawTwoSpanXBackground(Landroid/graphics/Canvas;)V

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_23

    :cond_20
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->draw(Landroid/graphics/Canvas;)V

    :goto_23
    return-void
.end method

.method public final drawTwoSpanXBackground(Landroid/graphics/Canvas;)V
    .registers 5

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mCardBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mCardContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->getSupportCardSizeList()Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2a

    return-void

    :cond_2a
    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mCardBounds:Landroid/graphics/RectF;

    iget v1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mVisualAreaRadius:F

    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public final findCenterView()Landroid/view/View;
    .registers 3

    iget-boolean v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mHasInitLayout:Z

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return-object p0

    :cond_6
    invoke-virtual {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->getCardCenterX()F

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->getClipPathRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final findCompletelyVisibleView(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$ScrollDirection;)Landroid/view/View;
    .registers 10

    const-string v0, "scrollDirection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mLayoutManager:Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager;

    if-nez v0, :cond_a

    goto :goto_6a

    :cond_a
    invoke-virtual {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->getClipPathRect()Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->top:F

    float-to-int v1, v1

    invoke-virtual {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->getClipPathRect()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    float-to-int v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v4

    if-lez v4, :cond_6a

    :goto_1f
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_28

    goto :goto_65

    :cond_28
    sget-object v6, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v6, v6, v7

    const/4 v7, 0x1

    if-eq v6, v7, :cond_5a

    const/4 v7, 0x2

    if-eq v6, v7, :cond_4f

    const/4 v7, 0x3

    if-eq v6, v7, :cond_3a

    goto :goto_65

    :cond_3a
    invoke-direct {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->getVerticalHelper()Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v6

    if-ne v6, v1, :cond_65

    invoke-direct {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->getVerticalHelper()Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v6

    if-ne v6, v2, :cond_65

    return-object v3

    :cond_4f
    invoke-direct {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->getVerticalHelper()Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v6

    if-ne v6, v1, :cond_65

    return-object v3

    :cond_5a
    invoke-direct {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->getVerticalHelper()Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v6

    if-ne v6, v2, :cond_65

    return-object v3

    :cond_65
    :goto_65
    if-lt v5, v4, :cond_68

    goto :goto_6a

    :cond_68
    move v3, v5

    goto :goto_1f

    :cond_6a
    :goto_6a
    const/4 p0, 0x0

    return-object p0
.end method

.method public final findFirstVisibleView()Landroid/view/View;
    .registers 3

    invoke-virtual {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->getCardCenterX()F

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->getClipPathRect()Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final findLastVisibleView()Landroid/view/View;
    .registers 3

    invoke-virtual {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->getCardCenterX()F

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->getClipPathRect()Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final getCardCenterX()F
    .registers 5

    iget-boolean v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mIsRtl:Z

    const/high16 v1, 0x40000000  # 2.0f

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mCardContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->getOriginOffsetUnit()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    sub-float/2addr v0, v2

    goto :goto_23

    :cond_18
    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mCardContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->getOriginOffsetUnit()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    :goto_23
    iget-object v2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mCardContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->getInnerAlignStateHorizontal()Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerHorizontalAlignState;

    move-result-object v2

    sget-object v3, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_43

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3b

    goto :goto_4a

    :cond_3b
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p0

    int-to-float p0, p0

    div-float v0, p0, v1

    goto :goto_4a

    :cond_43
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p0

    int-to-float p0, p0

    sub-float v0, p0, v0

    :goto_4a
    return v0
.end method

.method public final getClipPathRect()Landroid/graphics/RectF;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mCardBounds:Landroid/graphics/RectF;

    return-object p0
.end method

.method public final getCurCard()Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter$PendingCardHolder;
    .registers 3

    invoke-virtual {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->findCenterView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    goto :goto_1e

    :cond_8
    invoke-virtual {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->getMLayoutManager()Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForLayoutPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type com.android.launcher3.popup.pendingcard.PendingCardAdapter.PendingCardHolder"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter$PendingCardHolder;

    :goto_1e
    return-object p0
.end method

.method public final getMCompletelyVisibleView()Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mCompletelyVisibleView:Landroid/view/View;

    return-object p0
.end method

.method public final getMFirstVisibleView()Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mFirstVisibleView:Landroid/view/View;

    return-object p0
.end method

.method public final getMFirstVisualCardScrollEvent()Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager$ScrollEventValues;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mFirstVisualCardScrollEvent:Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager$ScrollEventValues;

    return-object p0
.end method

.method public final getMHasInitLayout()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mHasInitLayout:Z

    return p0
.end method

.method public final getMLastVisibleView()Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mLastVisibleView:Landroid/view/View;

    return-object p0
.end method

.method public final getMLastVisualCardScrollEvent()Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager$ScrollEventValues;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mLastVisualCardScrollEvent:Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager$ScrollEventValues;

    return-object p0
.end method

.method public final getMLayoutManager()Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mLayoutManager:Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager;

    return-object p0
.end method

.method public final getMPopupContainer()Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mPopupContainer:Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const-string p0, "mPopupContainer"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getScrolledDirection()Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$ScrollDirection;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mScrollDirection:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$ScrollDirection;

    return-object p0
.end method

.method public final getVelocity()F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mVelocityY:F

    return p0
.end method

.method public final init(Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;)V
    .registers 6

    const-string v0, "cardViewContainer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "popupContainer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/dragndrop/DragController;->addDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V

    iput-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mCardContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    invoke-virtual {p0, p2}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->setMPopupContainer(Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p2

    instance-of v0, p2, Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager;

    if-eqz v0, :cond_23

    check-cast p2, Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager;

    goto :goto_24

    :cond_23
    const/4 p2, 0x0

    :goto_24
    invoke-virtual {p0, p2}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->setMLayoutManager(Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager;)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p2

    const-string v0, "null cannot be cast to non-null type com.android.launcher3.popup.pendingcard.PendingCardAdapter"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;

    invoke-virtual {p2}, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;->getPendingCardTouchHandler()Lcom/android/launcher3/popup/pendingcard/PendingCardTouchHandler;

    move-result-object p2

    iput-object p2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mPendingCardTouchHandler:Lcom/android/launcher3/popup/pendingcard/PendingCardTouchHandler;

    const/4 p2, 0x2

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setOverScrollMode(I)V

    iget-object p2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mLayoutManager:Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager;

    invoke-static {p2}, Landroidx/recyclerview/widget/OrientationHelper;->createVerticalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object p2

    iput-object p2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mVerticalHelper:Landroidx/recyclerview/widget/OrientationHelper;

    new-instance p2, Lcom/android/launcher3/popup/pendingcard/PendingCardSnapHelper;

    invoke-direct {p2, p0, p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardSnapHelper;-><init>(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;)V

    iput-object p2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mSnapHelper:Lcom/android/launcher3/popup/pendingcard/PendingCardSnapHelper;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2, p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardSnapHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    new-instance p1, Lcom/android/launcher3/popup/pendingcard/PendingCardTransformer;

    iget-object p2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mCardContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p1, p2, p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardTransformer;-><init>(Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;)V

    iput-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mCardTransformer:Lcom/android/launcher3/popup/pendingcard/PendingCardTransformer;

    new-instance p1, Ljava/lang/ref/WeakReference;

    iget-object p2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance p2, Lcom/android/launcher/guide/PendingCardGuide$PendingCardGuideBuilder;

    invoke-direct {p2}, Lcom/android/launcher/guide/PendingCardGuide$PendingCardGuideBuilder;-><init>()V

    invoke-virtual {p2, p1}, Lcom/android/launcher/guide/PendingCardGuide$PendingCardGuideBuilder;->setLauncherRef(Ljava/lang/ref/WeakReference;)Lcom/android/launcher/guide/PendingCardGuide$PendingCardGuideBuilder;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mPendingCardGuideBuilder:Lcom/android/launcher/guide/PendingCardGuide$PendingCardGuideBuilder;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mIsRedirectedToCardStore:Z

    iget-object p2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mCardContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->getMaxCardSize()I

    move-result p2

    const/4 v0, 0x1

    if-le p2, v0, :cond_80

    move p2, v0

    goto :goto_81

    :cond_80
    move p2, p1

    :goto_81
    iput-boolean p2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mIsExistSpanFourCard:Z

    invoke-virtual {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->getMPopupContainer()Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->addClosePopupContainerListener(Lcom/android/launcher3/popup/OplusPopupContainerWithArrow$OnClosePopupContainerListener;)V

    iget-object p2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mPaint:Landroid/graphics/Paint;

    const/16 v1, 0x33

    const/16 v2, 0xff

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setFlags(I)V

    iget-object p2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mCardContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->getPendingCardRVBackground()Landroid/widget/ImageView;

    move-result-object p2

    iput-object p2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mFourSpanXBg:Landroid/widget/ImageView;

    new-instance p2, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$init$viewOutlineProvider$1;

    invoke-direct {p2, p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$init$viewOutlineProvider$1;-><init>(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;)V

    iget-object v1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mFourSpanXBg:Landroid/widget/ImageView;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    iget-object p2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mFourSpanXBg:Landroid/widget/ImageView;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setClipToOutline(Z)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object p2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mFourSpanXBg:Landroid/widget/ImageView;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    invoke-direct {p0, p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->setFourSpanXBgAlpha(I)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->setTwoSpanXBgAlpha(I)V

    invoke-direct {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->updateCardSizeChangePosition()V

    return-void
.end method

.method public final initLayout(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 11

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;

    const/4 v2, 0x0

    if-eqz v1, :cond_11

    check-cast v0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;

    move-object v4, v0

    goto :goto_12

    :cond_11
    move-object v4, v2

    :goto_12
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, v4}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->calculateInitStartAndEndValues(Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->updateClipPath(F)[F

    move-result-object v5

    iget-object v3, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mCardContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->reMarginShortCut$default(Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;[FZILjava/lang/Object;)V

    invoke-direct {p0, v2, p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->getPinAndIndicatorOffsetX(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->locatePin(I)V

    invoke-direct {p0, p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->locateIndicatorX(I)V

    invoke-direct {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->locateIndicatorY()V

    iget-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mCardContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->getIndicator()Lcom/coui/appcompat/indicator/COUIPageIndicator;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->setCurrentPosition(I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mHasInitLayout:Z

    return-void
.end method

.method public final isEventOverActivityArea(Lcom/android/launcher3/views/BaseDragLayer;Landroid/view/MotionEvent;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/views/BaseDragLayer<",
            "*>;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    const-string v0, "dl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ev"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->findCenterView()Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_12

    const/4 p0, 0x0

    return p0

    :cond_12
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, p0, v0}, Lcom/android/launcher3/views/BaseDragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p0

    float-to-int p0, p0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v0, p0, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    return p0
.end method

.method public final isPressAnimStarted()Z
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mPendingCardTouchHandler:Lcom/android/launcher3/popup/pendingcard/PendingCardTouchHandler;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchHandler;->isPressAnimStarted()Z

    move-result p0

    :goto_a
    return p0
.end method

.method public onDragEnd()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/dragndrop/DragController;->removeDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V

    return-void
.end method

.method public onDragStart(Lcom/android/launcher3/DropTarget$DragObject;Lcom/android/launcher3/dragndrop/DragOptions;)V
    .registers 3

    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/OplusDragController;->getDragView()Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_d

    goto :goto_11

    :cond_d
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_11
    return-void
.end method

.method public onFinishInflate()V
    .registers 4

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mGuideRunable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    if-nez v1, :cond_1c

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mGuideRunable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x2bc

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1c
    return-void
.end method

.method public onPopupContainerClosed()V
    .registers 7

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mLayoutManager:Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager;

    if-nez v0, :cond_5

    goto :goto_29

    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->findCenterView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_c

    goto :goto_29

    :cond_c
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_26

    move v3, v2

    :goto_14
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_1d

    goto :goto_21

    :cond_1d
    const/4 v5, 0x4

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    :goto_21
    if-lt v4, v1, :cond_24

    goto :goto_26

    :cond_24
    move v3, v4

    goto :goto_14

    :cond_26
    :goto_26
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_29
    invoke-direct {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->closeGuides()V

    return-void
.end method

.method public onScrollStateChanged(I)V
    .registers 8

    invoke-virtual {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->findCenterView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mCurScrollState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5a

    const/4 v1, 0x2

    if-ne p1, v1, :cond_5a

    iget-object v3, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mScrollDirection:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$ScrollDirection;

    sget-object v4, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v3, v4, v3

    const/4 v4, -0x1

    if-eq v3, v2, :cond_34

    if-eq v3, v1, :cond_2d

    const/4 v1, 0x3

    if-ne v3, v1, :cond_27

    move v1, v4

    goto :goto_3a

    :cond_27
    new-instance p0, Ly2/h;

    invoke-direct {p0}, Ly2/h;-><init>()V

    throw p0

    :cond_2d
    iget-object v1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mFirstVisualCardScrollEvent:Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager$ScrollEventValues;

    invoke-virtual {v1}, Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager$ScrollEventValues;->getMPosition()I

    move-result v1

    goto :goto_3a

    :cond_34
    iget-object v1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mLastVisualCardScrollEvent:Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager$ScrollEventValues;

    invoke-virtual {v1}, Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager$ScrollEventValues;->getMPosition()I

    move-result v1

    :goto_3a
    if-eq v1, v4, :cond_4b

    iget-object v3, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mCardContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->getIndicator()Lcom/coui/appcompat/indicator/COUIPageIndicator;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3, v1}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->e(I)V

    :cond_4b
    iget-object v1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mCardContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->getIndicator()Lcom/coui/appcompat/indicator/COUIPageIndicator;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, p1}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->c(I)V

    :cond_5a
    iget v1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mCurScrollState:I

    if-eq v1, v2, :cond_6f

    if-ne p1, v2, :cond_6f

    iget-object v1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mCardContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->getIndicator()Lcom/coui/appcompat/indicator/COUIPageIndicator;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, p1}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->c(I)V

    :cond_6f
    iget v1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mCurScrollState:I

    const/4 v3, 0x0

    if-nez v1, :cond_ac

    if-ne p1, v2, :cond_ac

    iget-object v1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mPendingCardTouchHandler:Lcom/android/launcher3/popup/pendingcard/PendingCardTouchHandler;

    if-nez v1, :cond_7b

    goto :goto_89

    :cond_7b
    invoke-virtual {v1}, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchHandler;->interruptPressAnim()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_89

    iget-object v2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mCardTransformer:Lcom/android/launcher3/popup/pendingcard/PendingCardTransformer;

    if-nez v2, :cond_86

    goto :goto_89

    :cond_86
    invoke-virtual {v2, v1}, Lcom/android/launcher3/popup/pendingcard/PendingCardTransformer;->setInitialScale(Landroid/view/View;)V

    :cond_89
    :goto_89
    invoke-direct {p0, v0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->isShowFourSpanXBgForStartDrag(I)Z

    move-result v0

    if-eqz v0, :cond_9e

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mFourSpanXBgAnimOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-direct {p0, v3}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->animFourSpanXBgAlphaByPosition(Z)V

    goto :goto_ac

    :cond_9e
    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mTwoSpanXBgAnimOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-direct {p0, v3}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->animTwoSpanXBgAlphaByPosition(Z)V

    :cond_ac
    :goto_ac
    if-nez p1, :cond_e8

    iget v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mCurScrollState:I

    if-eq v0, p1, :cond_e8

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mCardContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->getIndicator()Lcom/coui/appcompat/indicator/COUIPageIndicator;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->c(I)V

    invoke-direct {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->updateStateOnScrollEnd()V

    iget-boolean v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mIsFourSpanXBgAnimIn:Z

    if-eqz v0, :cond_da

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mFourSpanXBgAnimOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mFourSpanXBgAnimOutRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0xc8

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_da
    iget-boolean v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mIsTwoSpanXBgAnimIn:Z

    if-eqz v0, :cond_e5

    iput-boolean v3, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mIsTwoSpanXBgAnimIn:Z

    iput v3, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mTwoSpanXBgAlpha:I

    invoke-virtual {p0, v3}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->setTwoSpanXBgAlpha(I)V

    :cond_e5
    invoke-direct {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->cardRestoreAnim()V

    :cond_e8
    iput p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mCurScrollState:I

    return-void
.end method

.method public final resetBeforeClosePopupView()Z
    .registers 4

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2c

    iput-boolean v1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mIsReadingClose:Z

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mTwoSpanXBgAlphaAnim:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_f

    goto :goto_12

    :cond_f
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :goto_12
    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mFourSpanXBgAlphaAnim:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_17

    goto :goto_1a

    :cond_17
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :goto_1a
    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mIndicatorAlphaAnim:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_1f

    goto :goto_22

    :cond_1f
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :goto_22
    invoke-direct {p0, v2}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->setFourSpanXBgAlpha(I)V

    invoke-virtual {p0, v2}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->setTwoSpanXBgAlpha(I)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    goto :goto_2d

    :cond_2c
    move v1, v2

    :goto_2d
    return v1
.end method

.method public final setMCompletelyVisibleView(Landroid/view/View;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mCompletelyVisibleView:Landroid/view/View;

    return-void
.end method

.method public final setMFirstVisibleView(Landroid/view/View;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mFirstVisibleView:Landroid/view/View;

    return-void
.end method

.method public final setMHasInitLayout(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mHasInitLayout:Z

    return-void
.end method

.method public final setMLastVisibleView(Landroid/view/View;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mLastVisibleView:Landroid/view/View;

    return-void
.end method

.method public final setMLayoutManager(Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager;)V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mLayoutManager:Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mLayoutManager:Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager;

    if-nez v0, :cond_d

    goto :goto_12

    :cond_d
    iget-object v1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mOnCardScrollChangeCallback:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$mOnCardScrollChangeCallback$1;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager;->unregisterOnCardScrollChangeCallback(Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager$OnCardScrollScrollCallback;)V

    :goto_12
    iput-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mLayoutManager:Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager;

    if-nez p1, :cond_17

    goto :goto_1c

    :cond_17
    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mOnCardScrollChangeCallback:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$mOnCardScrollChangeCallback$1;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager;->registerOnCardScrollChangeCallback(Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager$OnCardScrollScrollCallback;)V

    :cond_1c
    :goto_1c
    return-void
.end method

.method public final setMPopupContainer(Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mPopupContainer:Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;

    return-void
.end method

.method public final setTwoSpanXBgAlpha(I)V
    .registers 8

    int-to-float v0, p1

    sget-object v5, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    const/4 v1, 0x0

    const/high16 v2, 0x437f0000  # 255.0f

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000  # 1.0f

    invoke-static/range {v0 .. v5}, Lcom/android/launcher3/Utilities;->mapToRange(FFFFFLandroid/view/animation/Interpolator;)F

    move-result p1

    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mPaint:Landroid/graphics/Paint;

    const/16 v0, 0x33

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int p1, v0

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public final updateClipPath(F)[F
    .registers 8

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mEvaluator:Landroid/animation/FloatArrayEvaluator;

    iget-object v1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mStartClipArea:[F

    iget-object v2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mEndClipArea:[F

    invoke-virtual {v0, p1, v1, v2}, Landroid/animation/FloatArrayEvaluator;->evaluate(F[F[F)[F

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mCardBounds:Landroid/graphics/RectF;

    const/4 v1, 0x0

    aget v2, p1, v1

    iput v2, v0, Landroid/graphics/RectF;->left:F

    const/4 v2, 0x1

    aget v3, p1, v2

    iput v3, v0, Landroid/graphics/RectF;->top:F

    const/4 v3, 0x2

    aget v4, p1, v3

    iput v4, v0, Landroid/graphics/RectF;->right:F

    const/4 v4, 0x3

    aget v5, p1, v4

    iput v5, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mOutPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mClipPathRect:Landroid/graphics/RectF;

    aget v1, p1, v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    aget v1, p1, v3

    iput v1, v0, Landroid/graphics/RectF;->right:F

    aget v1, p1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    aget v1, p1, v4

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mOutPath:Landroid/graphics/Path;

    const/4 v2, 0x4

    aget v2, p1, v2

    const/4 v3, 0x5

    aget v3, p1, v3

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->mFourSpanXBg:Landroid/widget/ImageView;

    if-nez v0, :cond_49

    goto :goto_4c

    :cond_49
    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidateOutline()V

    :goto_4c
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    const-string/jumbo p0, "values"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
