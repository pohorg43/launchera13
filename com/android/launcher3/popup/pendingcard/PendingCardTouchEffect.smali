.class public final Lcom/android/launcher3/popup/pendingcard/PendingCardTouchEffect;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/popup/pendingcard/PendingCardTouchEffect$Companion;
    }
.end annotation


# static fields
.field private static final CARD_RESTORE_DURATION:I = 0xfa

.field private static final CARD_ZOOM_OUT_DURATION:J = 0xfaL

.field public static final Companion:Lcom/android/launcher3/popup/pendingcard/PendingCardTouchEffect$Companion;

.field private static final DEFAULT_SCALE_VALUE:F = 1.0f

.field private static final PRESS_ANIM_START_OFFSET:J = 0x6eL

.field private static final ZOOM_OUT_SCALE_VALUE_CARD:F = 0.95f

.field private static final ZOOM_OUT_SCALE_VALUE_PIN:F = 0.85f


# instance fields
.field private mCardContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

.field private mIsPressAnimStart:Z

.field private final mIsRtl:Z

.field private final mLastTouchPos:Landroid/graphics/Point;

.field private mPinAnimBaseLocation:Ly2/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly2/i<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mPinOffsetHorizontal:I

.field private final mPinOffsetY:I

.field private mPinTranslationPair:Ly2/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly2/i<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final mPopUpContainer:Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;

.field private mPressedAnim:Landroid/animation/ValueAnimator;

.field private final mTouchDownPos:Landroid/graphics/Point;

.field private final mTouchSlop:I

.field private mView:Landroid/view/View;

.field private mZoomAnimInRunnable:Ljava/lang/Runnable;

.field private mZoomOutValue:F


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchEffect$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchEffect$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchEffect;->Companion:Lcom/android/launcher3/popup/pendingcard/PendingCardTouchEffect$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;)V
    .registers 3

    const-string v0, "mPopUpContainer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchEffect;->mPopUpContainer:Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchEffect;->mIsRtl:Z

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchEffect;->mTouchDownPos:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchEffect;->mLastTouchPos:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchEffect;->mTouchSlop:I

    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchEffect;->mZoomOutValue:F

    invoke-virtual {p1}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->getPendingCardContainer()Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    move-result-object p1

    const-string v0, "mPopUpContainer.pendingCardContainer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchEffect;->mCardContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070a00

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchEffect;->mPinOffsetHorizontal:I

    iget-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchEffect;->mCardContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070a02

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchEffect;->mPinOffsetY:I

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/popup/pendingcard/PendingCardTouchEffect;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchEffect;->createZoomAnim$lambda-2(Lcom/android/launcher3/popup/pendingcard/PendingCardTouchEffect;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher3/popup/pendingcard/PendingCardTouchEffect;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchEffect;->createRestoreAnim$lambda-4$lambda-3(Lcom/android/launcher3/popup/pendingcard/PendingCardTouchEffect;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/launcher3/popup/pendingcard/PendingCardTouchEffect;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchEffect;->onTouchEvent$lambda-1(Lcom/android/launcher3/popup/pendingcard/PendingCardTouchEffect;)V

    return-void
.end method

.method private final createRestoreAnim()V
    .registers 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchEffect;->mIsPressAnimStart:Z

    invoke-virtual {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchEffect;->cancelAnim()Landroid/view/View;

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchEffect;->mView:Landroid/view/View;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/common/config/AnimationConstant;->PATH_INTERPOLATOR_11:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/popup/pendingcard/i;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/launcher3/popup/pendingcard/i;-><init>(Lcom/android/launcher3/popup/pendingcard/PendingCardTouchEffect;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private static final createRestoreAnim$lambda-4$lambda-3(Lcom/android/launcher3/popup/pendingcard/PendingCardTouchEffect;Landroid/animation/ValueAnimator;)V
    .registers 4

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchEffect;->mPinTranslationPair:Ly2/i;

    iget-object v1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchEffect;->mPinAnimBaseLocation:Ly2/i;

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchEffect;->animatePin(Ly2/i;Ly2/i;)V

    iput-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchEffect;->mPressedAnim:Landroid/animation/ValueAnimator;

    return-void
.end method

.method private final createZoomAnim()V
    .registers 6

    invoke-virtual {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchEffect;->cancelAnim()Landroid/view/View;

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchEffect;->mView:Landroid/view/View;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v0

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    iget v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchEffect;->mZoomOutValue:F

    const/4 v3, 0x1

    aput v0, v1, v3

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v3, 0xfa

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/android/common/config/AnimationConstant;->PATH_INTERPOLATOR_2:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/android/launcher3/popup/pendingcard/i;

    invoke-direct {v1, p0, v2}, Lcom/android/launcher3/popup/pendingcard/i;-><init>(Lcom/android/launcher3/popup/pendingcard/PendingCardTouchEffect;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iput-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchEffect;->mPressedAnim:Landroid/animation/ValueAnimator;

    return-void
.end method

.method private static final createZoomAnim$lambda-2(Lcom/android/launcher3/popup/pendingcard/PendingCardTouchEffect;Landroid/animation/ValueAnimator;)V
    .registers 3

    const-string/jumbo v0, "this$0"

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

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchEffect;->mView:Landroid/view/View;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchEffect;->mView:Landroid/view/View;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleY(F)V

    invoke-direct {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchEffect;->isCardView()Z

    move-result p1

    if-eqz p1, :cond_37

    iget-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchEffect;->mPinTranslationPair:Ly2/i;

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchEffect;->mPinAnimBaseLocation:Ly2/i;

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchEffect;->animatePin(Ly2/i;Ly2/i;)V

    :cond_37
    return-void
.end method

.method private final isCanStartPressAmin()Z
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchEffect;->mTouchDownPos:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchEffect;->mLastTouchPos:Landroid/graphics/Point;

    iget v3, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, v3

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v0, v2

    mul-int/2addr v1, v1

    mul-int/2addr v0, v0

    add-int/2addr v0, v1

    iget p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchEffect;->mTouchSlop:I

    mul-int/2addr p0, p0

    if-ge v0, p0, :cond_18

    const/4 p0, 0x1

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    :goto_19
    return p0
.end method

.method private final isCardView()Z
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchEffect;->mView:Landroid/view/View;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    instance-of p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardView;

    return p0
.end method

.method private static final onTouchEvent$lambda-1(Lcom/android/launcher3/popup/pendingcard/PendingCardTouchEffect;)V
    .registers 2

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchEffect;->isCanStartPressAmin()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-direct {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchEffect;->createZoomAnim()V

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchEffect;->mPressedAnim:Landroid/animation/ValueAnimator;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchEffect;->mIsPressAnimStart:Z

    :cond_1a
    return-void
.end method


# virtual methods
.method public final animatePin(Ly2/i;Ly2/i;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly2/i<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;",
            "Ly2/i<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchEffect;->mPressedAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_9e

    if-eqz p1, :cond_9e

    if-eqz p2, :cond_9e

    invoke-direct {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchEffect;->isCardView()Z

    move-result v0

    if-nez v0, :cond_10

    goto/16 :goto_9e

    :cond_10
    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchEffect;->mCardContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->getPendingCardRV()Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;

    move-result-object v0

    if-nez v0, :cond_1a

    goto/16 :goto_9e

    :cond_1a
    iget-object v1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchEffect;->mView:Landroid/view/View;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/view/View;->getScaleX()F

    move-result v1

    const/high16 v2, 0x3f800000  # 1.0f

    sub-float v1, v2, v1

    const v3, 0x3d4cccd0  # 0.050000012f

    div-float/2addr v1, v3

    invoke-static {v1, v2}, Li1/d;->c(FF)F

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchEffect;->mCardContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    invoke-virtual {v2}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->getPin()Landroid/widget/ImageView;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchEffect;->mIsRtl:Z

    if-eqz v3, :cond_5f

    iget-object v3, p1, Ly2/i;->a:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    mul-float/2addr v3, v1

    iget-object v4, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchEffect;->mCardContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    invoke-virtual {v4}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->getPendingCardRV()Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget-object p2, p2, Ly2/i;->a:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    sub-float/2addr v4, p2

    iget p2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchEffect;->mPinOffsetHorizontal:I

    int-to-float p2, p2

    sub-float/2addr v4, p2

    sub-float/2addr v3, v4

    goto :goto_76

    :cond_5f
    iget-object p2, p2, Ly2/i;->a:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    iget v3, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchEffect;->mPinOffsetHorizontal:I

    int-to-float v3, v3

    sub-float/2addr p2, v3

    iget-object v3, p1, Ly2/i;->a:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    mul-float/2addr v3, v1

    sub-float v3, p2, v3

    :goto_76
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTranslationX(F)V

    iget-object p1, p1, Ly2/i;->b:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    mul-float/2addr p1, v1

    invoke-virtual {v0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->getClipPathRect()Landroid/graphics/RectF;

    move-result-object p2

    iget p2, p2, Landroid/graphics/RectF;->top:F

    add-float/2addr p1, p2

    iget p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchEffect;->mPinOffsetY:I

    int-to-float p0, p0

    add-float/2addr p1, p0

    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setTranslationY(F)V

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getScaleX()F

    move-result p0

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setScaleX(F)V

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getScaleY()F

    move-result p0

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setScaleY(F)V

    :cond_9e
    :goto_9e
    return-void
.end method

.method public final cancelAnim()Landroid/view/View;
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchEffect;->mZoomAnimInRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_5

    goto :goto_e

    :cond_5
    sget-object v1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v1}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :goto_e
    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchEffect;->mPressedAnim:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iput-object v1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchEffect;->mPressedAnim:Landroid/animation/ValueAnimator;

    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchEffect;->mView:Landroid/view/View;

    return-object p0

    :cond_1e
    return-object v1
.end method

.method public final getMPopUpContainer()Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchEffect;->mPopUpContainer:Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;

    return-object p0
.end method

.method public final initTarget(Landroid/view/View;)V
    .registers 9

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchEffect;->mView:Landroid/view/View;

    instance-of v0, p1, Lcom/android/launcher3/popup/pendingcard/PendingCardView;

    if-eqz v0, :cond_7f

    const v0, 0x3f733333  # 0.95f

    iput v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchEffect;->mZoomOutValue:F

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchEffect;->mView:Landroid/view/View;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000  # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotY(F)V

    iget-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchEffect;->mView:Landroid/view/View;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchEffect;->mView:Landroid/view/View;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    sget-object v1, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->Companion:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$Companion;

    iget-object v2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchEffect;->mView:Landroid/view/View;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const v3, 0x3f733333  # 0.95f

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$Companion;->calculateAnimValueBaseTargetScale$default(Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$Companion;Landroid/view/View;FZILjava/lang/Object;)Ly2/i;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchEffect;->mPinTranslationPair:Ly2/i;

    iget-boolean p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchEffect;->mIsRtl:Z

    if-eqz p1, :cond_58

    iget-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchEffect;->mView:Landroid/view/View;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result p1

    goto :goto_67

    :cond_58
    iget-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchEffect;->mView:Landroid/view/View;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    add-float/2addr p1, v0

    :goto_67
    new-instance v0, Ly2/i;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iget-object v1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchEffect;->mView:Landroid/view/View;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ly2/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchEffect;->mPinAnimBaseLocation:Ly2/i;

    :cond_7f
    iget-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchEffect;->mView:Landroid/view/View;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    instance-of p1, p1, Landroid/widget/ImageView;

    if-eqz p1, :cond_8d

    const p1, 0x3f59999a  # 0.85f

    iput p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchEffect;->mZoomOutValue:F

    :cond_8d
    return-void
.end method

.method public final isPressAnimStarted()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchEffect;->mIsPressAnimStart:Z

    return p0
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)V
    .registers 5

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchEffect;->mLastTouchPos:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_34

    if-eq v0, v1, :cond_21

    const/4 p1, 0x3

    if-eq v0, p1, :cond_21

    goto :goto_6a

    :cond_21
    iget-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchEffect;->mCardContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    invoke-virtual {p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->getPendingCardRV()Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result p1

    if-nez p1, :cond_6a

    invoke-direct {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchEffect;->createRestoreAnim()V

    goto :goto_6a

    :cond_34
    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchEffect;->mTouchDownPos:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v0, v2, p1}, Landroid/graphics/Point;->set(II)V

    iget-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchEffect;->mView:Landroid/view/View;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result p1

    const/high16 v0, 0x3f800000  # 1.0f

    cmpg-float p1, p1, v0

    if-nez p1, :cond_53

    goto :goto_54

    :cond_53
    const/4 v1, 0x0

    :goto_54
    if-eqz v1, :cond_6a

    new-instance p1, Lcom/android/launcher3/card/seed/a;

    invoke-direct {p1, p0}, Lcom/android/launcher3/card/seed/a;-><init>(Lcom/android/launcher3/popup/pendingcard/PendingCardTouchEffect;)V

    iput-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchEffect;->mZoomAnimInRunnable:Ljava/lang/Runnable;

    sget-object p1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {p1}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchEffect;->mZoomAnimInRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x6e

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_6a
    :goto_6a
    return-void
.end method
