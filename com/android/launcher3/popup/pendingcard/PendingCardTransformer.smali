.class public final Lcom/android/launcher3/popup/pendingcard/PendingCardTransformer;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/popup/pendingcard/PendingCardTransformer$Companion;
    }
.end annotation


# static fields
.field private static final CARD_MASK_APHAL_POINT:F = 0.9f

.field private static final CARD_SCALE_POINT:F = 0.95f

.field public static final Companion:Lcom/android/launcher3/popup/pendingcard/PendingCardTransformer$Companion;

.field private static final FOUR_SPAN_CARD_MIN_SCALE:F = 0.8f

.field private static final PRESS_AND_SLIDE_SCALE_TRANSITION_FACTOR:F = 0.05f


# instance fields
.field private final cardViewContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

.field private mInitScale:F

.field private mInitTargetView:Landroid/view/View;

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private final recyclerView:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/popup/pendingcard/PendingCardTransformer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/popup/pendingcard/PendingCardTransformer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/popup/pendingcard/PendingCardTransformer;->Companion:Lcom/android/launcher3/popup/pendingcard/PendingCardTransformer$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;)V
    .registers 4

    const-string v0, "cardViewContainer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recyclerView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTransformer;->cardViewContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    iput-object p2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTransformer;->recyclerView:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;

    sget-object p1, Lcom/android/common/config/AnimationConstant;->PATH_INTERPOLATOR_7:Landroid/view/animation/Interpolator;

    iput-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTransformer;->mInterpolator:Landroid/view/animation/Interpolator;

    const/high16 p1, 0x3f800000  # 1.0f

    iput p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTransformer;->mInitScale:F

    return-void
.end method

.method private final scaleCardByPosition(Landroid/view/View;F)V
    .registers 8

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3f733333  # 0.95f

    cmpl-float v0, v1, v0

    const/high16 v1, 0x3f800000  # 1.0f

    if-lez v0, :cond_16

    const v0, 0x3f86bca2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    mul-float/2addr p2, v0

    goto :goto_17

    :cond_16
    move p2, v1

    :goto_17
    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTransformer;->mInitTargetView:Landroid/view/View;

    if-nez v0, :cond_1c

    goto :goto_54

    :cond_1c
    invoke-virtual {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardTransformer;->getRecyclerView()Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardTransformer;->getRecyclerView()Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v2

    if-ne v0, v2, :cond_54

    iget v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTransformer;->mInitScale:F

    const/4 v2, 0x1

    int-to-float v3, v2

    sub-float/2addr v3, v0

    const v4, 0x3d4ccccd  # 0.05f

    mul-float/2addr v3, v4

    add-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v4

    cmpg-float v4, v4, v1

    if-gez v4, :cond_45

    goto :goto_46

    :cond_45
    const/4 v2, 0x0

    :goto_46
    if-eqz v2, :cond_49

    goto :goto_4a

    :cond_49
    const/4 v3, 0x0

    :goto_4a
    if-nez v3, :cond_4d

    goto :goto_51

    :cond_4d
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v1

    :goto_51
    iput v1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTransformer;->mInitScale:F

    move v1, v0

    :cond_54
    :goto_54
    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTransformer;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {p0, p2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p0

    const p2, 0x3f4ccccd  # 0.8f

    sub-float/2addr v1, p2

    mul-float/2addr v1, p0

    add-float/2addr v1, p2

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method private final updateCardMaskAlphaByPosition(Landroid/view/View;F)V
    .registers 4

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const v0, 0x3f666666  # 0.9f

    cmpl-float p0, v0, p0

    if-lez p0, :cond_14

    const p0, 0x3f86bca2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    mul-float/2addr p2, p0

    goto :goto_16

    :cond_14
    const/high16 p2, 0x3f800000  # 1.0f

    :goto_16
    instance-of p0, p1, Lcom/android/launcher3/popup/pendingcard/PendingCardView;

    if-eqz p0, :cond_1d

    check-cast p1, Lcom/android/launcher3/popup/pendingcard/PendingCardView;

    goto :goto_1e

    :cond_1d
    const/4 p1, 0x0

    :goto_1e
    if-nez p1, :cond_21

    goto :goto_27

    :cond_21
    const/4 p0, 0x1

    int-to-float p0, p0

    sub-float/2addr p0, p2

    invoke-virtual {p1, p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardView;->setMaskAlpha(F)V

    :goto_27
    return-void
.end method


# virtual methods
.method public final getCardViewContainer()Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTransformer;->cardViewContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    return-object p0
.end method

.method public final getRecyclerView()Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTransformer;->recyclerView:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;

    return-object p0
.end method

.method public final setInitialScale(Landroid/view/View;)V
    .registers 3

    const-string/jumbo v0, "target"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTransformer;->mInitTargetView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result p1

    iput p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTransformer;->mInitScale:F

    return-void
.end method

.method public final transformPage(Landroid/view/View;F)V
    .registers 9

    const-string v0, "card"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-nez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    const/high16 v2, 0x3f800000  # 1.0f

    if-eqz v0, :cond_18

    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    :cond_18
    cmpg-float v0, p2, v1

    if-gez v0, :cond_29

    const/high16 v0, -0x40800000  # -1.0f

    cmpl-float v0, p2, v0

    if-lez v0, :cond_29

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/popup/pendingcard/PendingCardTransformer;->updateCardMaskAlphaByPosition(Landroid/view/View;F)V

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/popup/pendingcard/PendingCardTransformer;->scaleCardByPosition(Landroid/view/View;F)V

    goto :goto_81

    :cond_29
    cmpl-float v0, p2, v1

    if-lez v0, :cond_81

    cmpg-float v0, p2, v2

    if-gez v0, :cond_81

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/popup/pendingcard/PendingCardTransformer;->updateCardMaskAlphaByPosition(Landroid/view/View;F)V

    instance-of v0, p1, Lcom/android/launcher3/popup/pendingcard/PendingCardView;

    if-eqz v0, :cond_3c

    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/popup/pendingcard/PendingCardView;

    goto :goto_3d

    :cond_3c
    const/4 v0, 0x0

    :goto_3d
    if-nez v0, :cond_40

    return-void

    :cond_40
    invoke-virtual {v0}, Lcom/android/launcher3/popup/pendingcard/PendingCardView;->getMType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_48

    return-void

    :cond_48
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/popup/pendingcard/PendingCardTransformer;->scaleCardByPosition(Landroid/view/View;F)V

    invoke-virtual {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardTransformer;->getRecyclerView()Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardTransformer;->getRecyclerView()Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->getMFirstVisibleView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_60

    invoke-virtual {v0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->getMCompletelyVisibleView()Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :cond_60
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->calculateStartAndEndValues(I)V

    invoke-virtual {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardTransformer;->getRecyclerView()Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->updateClipPath(F)[F

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardTransformer;->getCardViewContainer()Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardTransformer;->getRecyclerView()Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->getMPopupContainer()Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->reMarginShortCut$default(Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;[FZILjava/lang/Object;)V

    :cond_81
    :goto_81
    return-void
.end method
