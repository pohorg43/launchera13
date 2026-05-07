.class public final Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter$Companion;,
        Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter$PendingCardHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter$PendingCardHolder;",
        ">;"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter$Companion;

.field private static final PENDING_CARD_ALPHA_ANIM_DURATION:I = 0x11b

.field private static final PENDING_CARD_CLOSE_ANIM_START_OFFSET:J = 0x32L

.field private static final PENDING_CARD_MAX_SCALE:F = 1.0f

.field private static final PENDING_CARD_MIN_SCALE:F = 0.7f

.field private static final PENDING_CARD_SCALE_ANIM_DURATION:I = 0x14d

.field private static final PIN_ALPHA_ANIM_DURATION:I = 0x15e

.field private static final PIN_ALPHA_ANIM_START_OFFSET:J = 0xb7L

.field public static final VIEW_TYPE_FOUR_PLUS_FOUR_CARD:I = 0x2

.field public static final VIEW_TYPE_TIP_TEXT:I = 0x3

.field public static final VIEW_TYPE_TWO_PLUS_FOUR_CARD:I = 0x1

.field public static final VIEW_TYPE_TWO_PLUS_TWO_CARD:I


# instance fields
.field private final mCardSizeList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field

.field private final mContainer:Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;

.field private final mContext:Landroid/content/Context;

.field private final mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/card/config/domain/model/CardConfigInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Lcom/android/launcher3/popup/pendingcard/PendingCardTouchHandler;

.field private final mIndicator:Lcom/coui/appcompat/indicator/COUIPageIndicator;

.field private mIndicatorPopAlphaAnim:Landroid/animation/ValueAnimator;

.field private final mInnerHorizontalAlignState:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerHorizontalAlignState;

.field private final mOffsetUnit:I

.field private final mPendingCardContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

.field private mPendingCardPopScaleAnim:Landroid/animation/ValueAnimator;

.field private final mPin:Landroid/widget/ImageView;

.field private mPinAndCardAlphaAnim:Landroid/animation/ValueAnimator;

.field private final mPinOffsetX:I

.field private final mPinOffsetY:I

.field private mPopupScaleAminPivot:Landroid/graphics/PointF;

.field private needShowPopupAnimation:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;->Companion:Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/Map;Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oplus/card/config/domain/model/CardConfigInfo;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "+",
            "Landroid/graphics/Point;",
            ">;",
            "Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;",
            "Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;",
            ")V"
        }
    .end annotation

    const-string v0, "mData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mCardSizeList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mContainer"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mPendingCardContainer"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;->mData:Ljava/util/List;

    iput-object p2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;->mCardSizeList:Ljava/util/Map;

    iput-object p3, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;->mContainer:Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;

    iput-object p4, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;->mPendingCardContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    invoke-virtual {p4}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->getOriginOffsetUnit()I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;->mOffsetUnit:I

    new-instance p1, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchHandler;

    invoke-direct {p1, p3}, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchHandler;-><init>(Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;)V

    iput-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;->mHandler:Lcom/android/launcher3/popup/pendingcard/PendingCardTouchHandler;

    invoke-virtual {p4}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f070a00

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;->mPinOffsetX:I

    new-instance p2, Landroid/graphics/PointF;

    invoke-direct {p2}, Landroid/graphics/PointF;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;->mPopupScaleAminPivot:Landroid/graphics/PointF;

    invoke-virtual {p4}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->getPin()Landroid/widget/ImageView;

    move-result-object p2

    iput-object p2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;->mPin:Landroid/widget/ImageView;

    invoke-virtual {p4}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->getIndicator()Lcom/coui/appcompat/indicator/COUIPageIndicator;

    move-result-object p2

    iput-object p2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;->mIndicator:Lcom/coui/appcompat/indicator/COUIPageIndicator;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070a02

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;->mPinOffsetY:I

    invoke-virtual {p4}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->getInnerAlignStateHorizontal()Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerHorizontalAlignState;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;->mInnerHorizontalAlignState:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerHorizontalAlignState;

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter$PendingCardHolder;ZLcom/android/launcher3/popup/pendingcard/PendingCardAdapter;Landroid/animation/ValueAnimator;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;->addCardAnimOnClosed$lambda-5$lambda-4(Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter$PendingCardHolder;ZLcom/android/launcher3/popup/pendingcard/PendingCardAdapter;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static final synthetic access$setMIndicatorPopAlphaAnim$p(Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;Landroid/animation/ValueAnimator;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;->mIndicatorPopAlphaAnim:Landroid/animation/ValueAnimator;

    return-void
.end method

.method private final addCardAnimOnClosed(Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter$PendingCardHolder;Landroid/animation/AnimatorSet;)V
    .registers 9

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;->mPendingCardPopScaleAnim:Landroid/animation/ValueAnimator;

    if-nez v1, :cond_f

    goto :goto_12

    :cond_f
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :goto_12
    iget-object v1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;->mPendingCardPopScaleAnim:Landroid/animation/ValueAnimator;

    const/4 v2, 0x0

    if-nez v1, :cond_19

    move-object v1, v2

    goto :goto_1d

    :cond_19
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    :goto_1d
    instance-of v3, v1, Ljava/lang/Float;

    if-eqz v3, :cond_24

    move-object v2, v1

    check-cast v2, Ljava/lang/Float;

    :cond_24
    if-nez v2, :cond_29

    const/high16 v1, 0x3f800000  # 1.0f

    goto :goto_2d

    :cond_29
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    :goto_2d
    const v2, 0x3f333333  # 0.7f

    sub-float v3, v1, v2

    const v4, 0x3e99999a  # 0.3f

    div-float/2addr v3, v4

    const/16 v4, 0x14d

    int-to-float v4, v4

    mul-float/2addr v3, v4

    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput v1, v4, v5

    const/4 v1, 0x1

    aput v2, v4, v1

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    float-to-long v2, v3

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v2, Lcom/android/common/util/OplusLauncherAnimUtils$Interpolators;->PENDING_CARD_PATH_1:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-eqz v0, :cond_6d

    iget-object v3, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;->mPendingCardContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    invoke-virtual {v3}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->getPendingCardRV()Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter$PendingCardHolder;->getMOffsetHorizontal()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-virtual {p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter$PendingCardHolder;->getMDesiredWith()F

    move-result v4

    sub-float/2addr v3, v4

    goto :goto_71

    :cond_6d
    invoke-virtual {p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter$PendingCardHolder;->getMOffsetHorizontal()F

    move-result v3

    :goto_71
    iget-object v4, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;->mPopupScaleAminPivot:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    sub-float/2addr v4, v3

    invoke-virtual {v2, v4}, Landroid/view/View;->setPivotX(F)V

    iget-object v3, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;->mPopupScaleAminPivot:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v3}, Landroid/view/View;->setPivotY(F)V

    new-instance v2, Lcom/android/launcher3/popup/pendingcard/a;

    invoke-direct {v2, p1, v0, p0, v5}, Lcom/android/launcher3/popup/pendingcard/a;-><init>(Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter$PendingCardHolder;ZLcom/android/launcher3/popup/pendingcard/PendingCardAdapter;I)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {p2, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-void
.end method

.method private static final addCardAnimOnClosed$lambda-5$lambda-4(Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter$PendingCardHolder;ZLcom/android/launcher3/popup/pendingcard/PendingCardAdapter;Landroid/animation/ValueAnimator;)V
    .registers 11

    const-string v0, "$animHolder"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "this$0"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p3

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    invoke-virtual {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter$PendingCardHolder;->getMPendingCardView()Lcom/android/launcher3/popup/pendingcard/PendingCardView;

    move-result-object v6

    invoke-virtual {v6, p3}, Landroid/widget/FrameLayout;->setScaleX(F)V

    invoke-virtual {v6, p3}, Landroid/widget/FrameLayout;->setScaleY(F)V

    sget-object v0, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->Companion:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$Companion;

    invoke-virtual {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter$PendingCardHolder;->getMPendingCardView()Lcom/android/launcher3/popup/pendingcard/PendingCardView;

    move-result-object v1

    const v2, 0x3f333333  # 0.7f

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$Companion;->calculateAnimValueBaseTargetScale(Landroid/view/View;FZ)Ly2/i;

    move-result-object v3

    const/high16 v0, 0x3f800000  # 1.0f

    sub-float/2addr v0, p3

    const p3, 0x3e99999a  # 0.3f

    div-float v2, v0, p3

    move-object v0, p2

    move-object v1, p0

    move-object v4, v6

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;->scaleAndTranslationPin(Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter$PendingCardHolder;FLy2/i;Lcom/android/launcher3/popup/pendingcard/PendingCardView;Z)V

    iget-object p0, p2, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;->mPendingCardContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    invoke-virtual {p0, v6}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->translateShortcutWithScaled(Landroid/view/View;)V

    return-void
.end method

.method private final addIndicatorAnimOnClosed(Landroid/animation/AnimatorSet;)V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;->mIndicator:Lcom/coui/appcompat/indicator/COUIPageIndicator;

    if-nez v0, :cond_5

    goto :goto_f

    :cond_5
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-nez v0, :cond_c

    goto :goto_f

    :cond_c
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    :goto_f
    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;->mIndicator:Lcom/coui/appcompat/indicator/COUIPageIndicator;

    if-nez v0, :cond_16

    const/high16 v0, 0x3f800000  # 1.0f

    goto :goto_1a

    :cond_16
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v0

    :goto_1a
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x1

    const/4 v2, 0x0

    aput v2, v1, v0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0xb7

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/android/common/util/OplusLauncherAnimUtils$Interpolators;->PATH_2:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/android/launcher/batchdrag/a;

    invoke-direct {v1, p0}, Lcom/android/launcher/batchdrag/a;-><init>(Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-void
.end method

.method private static final addIndicatorAnimOnClosed$lambda-7$lambda-6(Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;Landroid/animation/ValueAnimator;)V
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

    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;->mIndicator:Lcom/coui/appcompat/indicator/COUIPageIndicator;

    if-nez p0, :cond_1a

    goto :goto_1d

    :cond_1a
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :goto_1d
    return-void
.end method

.method private final addPinAnimOnClosed(Landroid/view/View;Landroid/animation/AnimatorSet;)V
    .registers 7

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;->mPinAndCardAlphaAnim:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_5

    goto :goto_8

    :cond_5
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :goto_8
    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;->mPinAndCardAlphaAnim:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    if-nez v0, :cond_f

    move-object v0, v1

    goto :goto_13

    :cond_f
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    :goto_13
    instance-of v2, v0, Ljava/lang/Float;

    if-eqz v2, :cond_1a

    move-object v1, v0

    check-cast v1, Ljava/lang/Float;

    :cond_1a
    if-nez v1, :cond_1f

    const/high16 v0, 0x3f800000  # 1.0f

    goto :goto_23

    :cond_1f
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    :goto_23
    const/16 v1, 0x11b

    int-to-float v1, v1

    mul-float/2addr v1, v0

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v0, 0x1

    const/4 v3, 0x0

    aput v3, v2, v0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    float-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/android/common/util/OplusLauncherAnimUtils$Interpolators;->PENDING_CARD_PATH_1:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/android/launcher3/w0;

    invoke-direct {v1, p1, p0}, Lcom/android/launcher3/w0;-><init>(Landroid/view/View;Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-void
.end method

.method private static final addPinAnimOnClosed$lambda-1$lambda-0(Landroid/view/View;Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;Landroid/animation/ValueAnimator;)V
    .registers 4

    const-string v0, "$view"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p0, p2}, Landroid/view/View;->setAlpha(F)V

    iget-object p0, p1, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;->mPin:Landroid/widget/ImageView;

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter$PendingCardHolder;ZLcom/android/launcher3/popup/pendingcard/PendingCardAdapter;Landroid/animation/ValueAnimator;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;->startCardAnimOnPopup$lambda-16$lambda-15(Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter$PendingCardHolder;ZLcom/android/launcher3/popup/pendingcard/PendingCardAdapter;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic c(Landroid/view/View;Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;Landroid/animation/ValueAnimator;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;->addPinAnimOnClosed$lambda-1$lambda-0(Landroid/view/View;Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic d(Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter$PendingCardHolder;Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;Landroid/animation/ValueAnimator;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;->startPinAnimOnPopup$lambda-11$lambda-10(Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter$PendingCardHolder;Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic e(Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;->addIndicatorAnimOnClosed$lambda-7$lambda-6(Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private final runPopAnimation(Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter$PendingCardHolder;)V
    .registers 3

    iget-boolean v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;->needShowPopupAnimation:Z

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;->mPendingCardContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->getPendingCardRV()Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->initLayout(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    invoke-direct {p0, p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;->startPinAnimOnPopup(Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter$PendingCardHolder;)V

    invoke-direct {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;->startIndicatorAnimOnPopup()V

    invoke-direct {p0, p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;->startCardAnimOnPopup(Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter$PendingCardHolder;)V

    :cond_19
    return-void
.end method

.method private final scaleAndTranslationPin(Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter$PendingCardHolder;FLy2/i;Lcom/android/launcher3/popup/pendingcard/PendingCardView;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter$PendingCardHolder;",
            "F",
            "Ly2/i<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;",
            "Lcom/android/launcher3/popup/pendingcard/PendingCardView;",
            "Z)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;->mPendingCardContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->getPin()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz p5, :cond_21

    invoke-virtual {p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter$PendingCardHolder;->getMOffsetHorizontal()F

    move-result p5

    invoke-virtual {p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter$PendingCardHolder;->getMDesiredWith()F

    move-result p1

    add-float/2addr p1, p5

    iget p5, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;->mPinOffsetX:I

    int-to-float p5, p5

    sub-float/2addr p1, p5

    neg-float p1, p1

    iget-object p5, p3, Ly2/i;->a:Ljava/lang/Object;

    check-cast p5, Ljava/lang/Number;

    invoke-virtual {p5}, Ljava/lang/Number;->floatValue()F

    move-result p5

    mul-float/2addr p5, p2

    add-float/2addr p5, p1

    goto :goto_3a

    :cond_21
    invoke-virtual {p4}, Landroid/widget/FrameLayout;->getX()F

    move-result p1

    invoke-virtual {p4}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p5

    int-to-float p5, p5

    add-float/2addr p1, p5

    iget p5, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;->mPinOffsetX:I

    int-to-float p5, p5

    sub-float/2addr p1, p5

    iget-object p5, p3, Ly2/i;->a:Ljava/lang/Object;

    check-cast p5, Ljava/lang/Number;

    invoke-virtual {p5}, Ljava/lang/Number;->floatValue()F

    move-result p5

    mul-float/2addr p5, p2

    sub-float p5, p1, p5

    :goto_3a
    invoke-virtual {v0, p5}, Landroid/widget/ImageView;->setTranslationX(F)V

    iget-object p1, p3, Ly2/i;->b:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    mul-float/2addr p1, p2

    iget-object p2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;->mPendingCardContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    invoke-virtual {p2}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->getPendingCardRV()Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->getClipPathRect()Landroid/graphics/RectF;

    move-result-object p2

    iget p2, p2, Landroid/graphics/RectF;->top:F

    add-float/2addr p1, p2

    iget p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;->mPinOffsetY:I

    int-to-float p0, p0

    add-float/2addr p1, p0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setTranslationY(F)V

    invoke-virtual {p4}, Landroid/widget/FrameLayout;->getScaleX()F

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setScaleX(F)V

    invoke-virtual {p4}, Landroid/widget/FrameLayout;->getScaleY()F

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setScaleY(F)V

    return-void
.end method

.method private final startCardAnimOnPopup(Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter$PendingCardHolder;)V
    .registers 7

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v0

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_60

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v2, 0x14d

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v2, Lcom/android/common/util/OplusLauncherAnimUtils$Interpolators;->PENDING_CARD_PATH_1:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-eqz v0, :cond_3b

    iget-object v3, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;->mPendingCardContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    invoke-virtual {v3}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->getPendingCardRV()Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter$PendingCardHolder;->getMOffsetHorizontal()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-virtual {p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter$PendingCardHolder;->getMDesiredWith()F

    move-result v4

    sub-float/2addr v3, v4

    goto :goto_3f

    :cond_3b
    invoke-virtual {p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter$PendingCardHolder;->getMOffsetHorizontal()F

    move-result v3

    :goto_3f
    iget-object v4, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;->mPopupScaleAminPivot:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    sub-float/2addr v4, v3

    invoke-virtual {v2, v4}, Landroid/view/View;->setPivotX(F)V

    iget-object v3, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;->mPopupScaleAminPivot:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v3}, Landroid/view/View;->setPivotY(F)V

    new-instance v2, Lcom/android/launcher3/popup/pendingcard/a;

    const/4 v3, 0x1

    invoke-direct {v2, p1, v0, p0, v3}, Lcom/android/launcher3/popup/pendingcard/a;-><init>(Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter$PendingCardHolder;ZLcom/android/launcher3/popup/pendingcard/PendingCardAdapter;I)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    iput-object v1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;->mPendingCardPopScaleAnim:Landroid/animation/ValueAnimator;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;->needShowPopupAnimation:Z

    return-void

    :array_60
    .array-data 4
        0x3f333333  # 0.7f
        0x3f800000  # 1.0f
    .end array-data
.end method

.method private static final startCardAnimOnPopup$lambda-16$lambda-15(Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter$PendingCardHolder;ZLcom/android/launcher3/popup/pendingcard/PendingCardAdapter;Landroid/animation/ValueAnimator;)V
    .registers 11

    const-string v0, "$holder"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "this$0"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p3

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    invoke-virtual {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter$PendingCardHolder;->getMPendingCardView()Lcom/android/launcher3/popup/pendingcard/PendingCardView;

    move-result-object v6

    invoke-virtual {v6, p3}, Landroid/widget/FrameLayout;->setScaleX(F)V

    invoke-virtual {v6, p3}, Landroid/widget/FrameLayout;->setScaleY(F)V

    sget-object v0, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->Companion:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$Companion;

    invoke-virtual {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter$PendingCardHolder;->getMPendingCardView()Lcom/android/launcher3/popup/pendingcard/PendingCardView;

    move-result-object v1

    const v2, 0x3f333333  # 0.7f

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$Companion;->calculateAnimValueBaseTargetScale(Landroid/view/View;FZ)Ly2/i;

    move-result-object v3

    const/high16 v0, 0x3f800000  # 1.0f

    sub-float/2addr v0, p3

    const p3, 0x3e99999a  # 0.3f

    div-float v2, v0, p3

    move-object v0, p2

    move-object v1, p0

    move-object v4, v6

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;->scaleAndTranslationPin(Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter$PendingCardHolder;FLy2/i;Lcom/android/launcher3/popup/pendingcard/PendingCardView;Z)V

    iget-object p0, p2, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;->mPendingCardContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    invoke-virtual {p0, v6}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->translateShortcutWithScaled(Landroid/view/View;)V

    return-void
.end method

.method private final startIndicatorAnimOnPopup()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;->mIndicator:Lcom/coui/appcompat/indicator/COUIPageIndicator;

    if-nez v0, :cond_5

    goto :goto_2b

    :cond_5
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-nez v0, :cond_c

    goto :goto_2b

    :cond_c
    const/high16 v1, 0x3f800000  # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    const-wide/16 v1, 0x15e

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    const-wide/16 v1, 0xb7

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    sget-object v1, Lcom/android/common/util/OplusLauncherAnimUtils$Interpolators;->PATH_2:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    new-instance v1, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter$startIndicatorAnimOnPopup$1$1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter$startIndicatorAnimOnPopup$1$1;-><init>(Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_2b
    return-void
.end method

.method private final startPinAnimOnPopup(Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter$PendingCardHolder;)V
    .registers 5

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_22

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x11b

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/android/common/util/OplusLauncherAnimUtils$Interpolators;->PENDING_CARD_PATH_1:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/android/launcher3/w0;

    invoke-direct {v1, p1, p0}, Lcom/android/launcher3/w0;-><init>(Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter$PendingCardHolder;Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iput-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;->mPinAndCardAlphaAnim:Landroid/animation/ValueAnimator;

    return-void

    :array_22
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method private static final startPinAnimOnPopup$lambda-11$lambda-10(Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter$PendingCardHolder;Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;Landroid/animation/ValueAnimator;)V
    .registers 4

    const-string v0, "$holder"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, p2}, Landroid/view/View;->setAlpha(F)V

    iget-object p0, p1, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;->mPin:Landroid/widget/ImageView;

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method


# virtual methods
.method public final getData()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oplus/card/config/domain/model/CardConfigInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;->mData:Ljava/util/List;

    return-object p0
.end method

.method public getItemCount()I
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;->mData:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getItemViewType(I)I
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;->mPendingCardContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->getCardCount()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_e

    if-lt p1, v1, :cond_e

    const/4 p0, 0x3

    return p0

    :cond_e
    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;->mData:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;

    invoke-virtual {p0}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getSize()I

    move-result p0

    const/4 p1, 0x2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_23

    if-eq p0, p1, :cond_21

    goto :goto_24

    :cond_21
    move p1, v0

    goto :goto_24

    :cond_23
    const/4 p1, 0x0

    :goto_24
    return p1
.end method

.method public final getPendingCardTouchHandler()Lcom/android/launcher3/popup/pendingcard/PendingCardTouchHandler;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;->mHandler:Lcom/android/launcher3/popup/pendingcard/PendingCardTouchHandler;

    return-object p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    check-cast p1, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter$PendingCardHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;->onBindViewHolder(Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter$PendingCardHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter$PendingCardHolder;I)V
    .registers 10

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/oplus/card/config/domain/model/CardConfigInfo;

    iget-object v3, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;->mCardSizeList:Ljava/util/Map;

    iget-object v4, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;->mInnerHorizontalAlignState:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerHorizontalAlignState;

    iget v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;->mOffsetUnit:I

    int-to-float v5, v0

    invoke-virtual {p0, p2}, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;->getItemViewType(I)I

    move-result v6

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter$PendingCardHolder;->onBind(Lcom/oplus/card/config/domain/model/CardConfigInfo;Ljava/util/Map;Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerHorizontalAlignState;FI)V

    invoke-virtual {p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter$PendingCardHolder;->getMPendingCardView()Lcom/android/launcher3/popup/pendingcard/PendingCardView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;->mHandler:Lcom/android/launcher3/popup/pendingcard/PendingCardTouchHandler;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;->mHandler:Lcom/android/launcher3/popup/pendingcard/PendingCardTouchHandler;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 v1, 0x1

    if-ne p2, v1, :cond_32

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :cond_32
    const/16 v0, 0xa

    if-ge p2, v0, :cond_3d

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;->mPin:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;->mHandler:Lcom/android/launcher3/popup/pendingcard/PendingCardTouchHandler;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_3d
    if-nez p2, :cond_42

    invoke-direct {p0, p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;->runPopAnimation(Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter$PendingCardHolder;)V

    :cond_42
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter$PendingCardHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter$PendingCardHolder;
    .registers 9

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "{\n            LayoutInfl… parent, false)\n        }"

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    if-ne p2, v2, :cond_23

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0d019c

    invoke-virtual {v4, v5, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_35

    :cond_23
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0d019e

    invoke-virtual {v4, v5, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_35
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz p2, :cond_ad

    const/4 v4, 0x2

    if-eq p2, v1, :cond_86

    if-eq p2, v4, :cond_67

    if-eq p2, v2, :cond_45

    goto/16 :goto_d3

    :cond_45
    iget-object p2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;->mCardSizeList:Ljava/util/Map;

    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;->mData:Ljava/util/List;

    const/16 v1, 0x9

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;

    invoke-virtual {p0}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getSize()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Landroid/graphics/Point;

    iget p0, p0, Landroid/graphics/Point;->x:I

    iput p0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_d3

    :cond_67
    iget-object p2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;->mCardSizeList:Ljava/util/Map;

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p2, Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->x:I

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;->mCardSizeList:Ljava/util/Map;

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Landroid/graphics/Point;

    iget p0, p0, Landroid/graphics/Point;->y:I

    iput p0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_d3

    :cond_86
    iget-object p2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;->mCardSizeList:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p2, Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->x:I

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;->mCardSizeList:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Landroid/graphics/Point;

    iget p0, p0, Landroid/graphics/Point;->y:I

    iput p0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_d3

    :cond_ad
    iget-object p2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;->mCardSizeList:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p2, Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->x:I

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;->mCardSizeList:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Landroid/graphics/Point;

    iget p0, p0, Landroid/graphics/Point;->y:I

    iput p0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_d3
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p0, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter$PendingCardHolder;

    invoke-direct {p0, p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter$PendingCardHolder;-><init>(Landroid/view/View;)V

    return-object p0
.end method

.method public final runCloseAnimation(Landroid/animation/AnimatorSet;)V
    .registers 5

    const-string v0, "animatorSet"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;->mPendingCardContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->getPendingCardRV()Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_10

    move-object v0, v1

    goto :goto_20

    :cond_10
    invoke-virtual {v0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->findCenterView()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_18

    const/4 v2, 0x0

    goto :goto_1c

    :cond_18
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v2

    :goto_1c
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    :goto_20
    instance-of v2, v0, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter$PendingCardHolder;

    if-eqz v2, :cond_27

    move-object v1, v0

    check-cast v1, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter$PendingCardHolder;

    :cond_27
    if-nez v1, :cond_2a

    return-void

    :cond_2a
    iget-object v0, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v2, "animHolder.itemView"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;->addPinAnimOnClosed(Landroid/view/View;Landroid/animation/AnimatorSet;)V

    invoke-direct {p0, p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;->addIndicatorAnimOnClosed(Landroid/animation/AnimatorSet;)V

    invoke-direct {p0, v1, p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;->addCardAnimOnClosed(Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter$PendingCardHolder;Landroid/animation/AnimatorSet;)V

    return-void
.end method

.method public final setPopupScaleAminPivot(Landroid/graphics/PointF;)V
    .registers 4

    const-string v0, "pivot"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;->mPopupScaleAminPivot:Landroid/graphics/PointF;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iput v1, v0, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    iput p1, v0, Landroid/graphics/PointF;->y:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;->needShowPopupAnimation:Z

    return-void
.end method
