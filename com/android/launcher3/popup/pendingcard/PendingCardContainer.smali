.class public final Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;
.super Landroid/widget/FrameLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$Companion;,
        Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerHorizontalAlignState;,
        Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerVerticalAlignState;,
        Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$WhenMappings;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$Companion;

.field public static final MAX_CARD_INDEX:I = 0xa

.field public static final OP_ENTER_SIMPLE_MODE:I = 0x1

.field public static final OP_FIRST_CARD_DRAG_IN_SIMPLE_MODE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "PendingCardContainer"

.field private static final cardConfigCallback:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/util/List<",
            "Lcom/oplus/card/config/domain/model/CardConfigInfo;",
            ">;",
            "Ly2/p;",
            ">;"
        }
    .end annotation
.end field

.field private static mCardCount:I

.field private static final mCardList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/card/config/domain/model/CardConfigInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static mIsFirstCardPreviewAfterEnterSimpleMode:I

.field private static mSupportCardSizeList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field

.field private static final mTotalCardList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/card/config/domain/model/CardConfigInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCellCount:Landroid/graphics/Point;

.field private mIndicator:Lcom/coui/appcompat/indicator/COUIPageIndicator;

.field private mInnerAlignStateHorizontal:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerHorizontalAlignState;

.field private mInnerAlignStateVertical:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerVerticalAlignState;

.field private mIsAboveIcon:Z

.field private final mIsRtl:Z

.field private mMaxCardSize:I

.field private mMinCardSize:Landroid/graphics/Point;

.field private mNeedForceClosePopContainer:Z

.field private mPendingCardRV:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;

.field private mPendingCardRVFourSpanXBg:Landroid/widget/ImageView;

.field private mPin:Landroid/widget/ImageView;

.field private mPopContainer:Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;

.field private mPressLocation:Landroid/graphics/Point;

.field private mPressViewItemInfo:Lcom/android/launcher3/model/data/ItemInfo;

.field private final mSpanFourPx:I

.field private final mSpanTwoPx:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->Companion:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$Companion;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->mTotalCardList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->mCardList:Ljava/util/List;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->mSupportCardSizeList:Ljava/util/Map;

    sget-object v0, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$Companion$cardConfigCallback$1;->INSTANCE:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$Companion$cardConfigCallback$1;

    sput-object v0, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->cardConfigCallback:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070a06

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->mSpanFourPx:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070a07

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->mSpanTwoPx:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->mIsRtl:Z

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->mMaxCardSize:I

    sget-object p1, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerHorizontalAlignState;->ALIGN_HORIZONTAL_NONE:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerHorizontalAlignState;

    iput-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->mInnerAlignStateHorizontal:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerHorizontalAlignState;

    sget-object p1, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerVerticalAlignState;->ALIGN_VERTICAL_NONE:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerVerticalAlignState;

    iput-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->mInnerAlignStateVertical:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerVerticalAlignState;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070a06

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->mSpanFourPx:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070a07

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->mSpanTwoPx:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->mIsRtl:Z

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->mMaxCardSize:I

    sget-object p1, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerHorizontalAlignState;->ALIGN_HORIZONTAL_NONE:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerHorizontalAlignState;

    iput-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->mInnerAlignStateHorizontal:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerHorizontalAlignState;

    sget-object p1, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerVerticalAlignState;->ALIGN_VERTICAL_NONE:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerVerticalAlignState;

    iput-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->mInnerAlignStateVertical:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerVerticalAlignState;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070a06

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->mSpanFourPx:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070a07

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->mSpanTwoPx:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->mIsRtl:Z

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->mMaxCardSize:I

    sget-object p1, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerHorizontalAlignState;->ALIGN_HORIZONTAL_NONE:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerHorizontalAlignState;

    iput-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->mInnerAlignStateHorizontal:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerHorizontalAlignState;

    sget-object p1, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerVerticalAlignState;->ALIGN_VERTICAL_NONE:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerVerticalAlignState;

    iput-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->mInnerAlignStateVertical:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerVerticalAlignState;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070a06

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->mSpanFourPx:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070a07

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->mSpanTwoPx:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->mIsRtl:Z

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->mMaxCardSize:I

    sget-object p1, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerHorizontalAlignState;->ALIGN_HORIZONTAL_NONE:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerHorizontalAlignState;

    iput-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->mInnerAlignStateHorizontal:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerHorizontalAlignState;

    sget-object p1, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerVerticalAlignState;->ALIGN_VERTICAL_NONE:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerVerticalAlignState;

    iput-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->mInnerAlignStateVertical:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerVerticalAlignState;

    return-void
.end method

.method public static final synthetic access$getCardConfigCallback$cp()Lkotlin/jvm/functions/Function1;
    .registers 1

    sget-object v0, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->cardConfigCallback:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final synthetic access$getMCardList$cp()Ljava/util/List;
    .registers 1

    sget-object v0, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->mCardList:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic access$getMIsFirstCardPreviewAfterEnterSimpleMode$cp()I
    .registers 1

    sget v0, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->mIsFirstCardPreviewAfterEnterSimpleMode:I

    return v0
.end method

.method public static final synthetic access$getMTotalCardList$cp()Ljava/util/List;
    .registers 1

    sget-object v0, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->mTotalCardList:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic access$setMCardCount$cp(I)V
    .registers 1

    sput p0, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->mCardCount:I

    return-void
.end method

.method public static final synthetic access$setMIsFirstCardPreviewAfterEnterSimpleMode$cp(I)V
    .registers 1

    sput p0, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->mIsFirstCardPreviewAfterEnterSimpleMode:I

    return-void
.end method

.method public static final addFirstCardPreviewAfterEnterSimpleMode(I)V
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->Companion:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$Companion;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$Companion;->addFirstCardPreviewAfterEnterSimpleMode(I)V

    return-void
.end method

.method public static final calculateAnimValueBaseTargetScale(Landroid/view/View;FZ)Ly2/i;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "FZ)",
            "Ly2/i<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->Companion:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$Companion;->calculateAnimValueBaseTargetScale(Landroid/view/View;FZ)Ly2/i;

    move-result-object p0

    return-object p0
.end method

.method public static final getCardConfigListForIcon(Lcom/android/launcher3/model/data/ItemInfo;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ")",
            "Ljava/util/List<",
            "Lcom/oplus/card/config/domain/model/CardConfigInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->Companion:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$Companion;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$Companion;->getCardConfigListForIcon(Lcom/android/launcher3/model/data/ItemInfo;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final getFirstCardPreviewAfterEnterSimpleMode()I
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->Companion:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$Companion;

    invoke-virtual {v0}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$Companion;->getFirstCardPreviewAfterEnterSimpleMode()I

    move-result v0

    return v0
.end method

.method public static final getHorizontalOffset(ILcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerHorizontalAlignState;F)F
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->Companion:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$Companion;->getHorizontalOffset(ILcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerHorizontalAlignState;F)F

    move-result p0

    return p0
.end method

.method private final initCardPagerState()V
    .registers 7

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->mPendingCardRV:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;

    if-nez v0, :cond_5

    goto :goto_4c

    :cond_5
    new-instance v1, Lcom/android/launcher3/popup/pendingcard/PendingCardItemDecoration;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "context"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v2, p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardItemDecoration;-><init>(Landroid/content/Context;Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    new-instance v1, Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v1, v0}, Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager;->init(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance v1, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;

    sget-object v2, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->mCardList:Ljava/util/List;

    invoke-virtual {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->getSupportCardSizeList()Ljava/util/Map;

    move-result-object v3

    iget-object v5, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->mPopContainer:Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v1, v2, v3, v5, p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;-><init>(Ljava/util/List;Ljava/util/Map;Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->mPopContainer:Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p0, v1}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->init(Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-nez p0, :cond_49

    goto :goto_4c

    :cond_49
    invoke-virtual {p0, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :goto_4c
    return-void
.end method

.method private final initIndicatorState(Lcom/coui/appcompat/indicator/COUIPageIndicator;)V
    .registers 4

    sget v0, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->mCardCount:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_7

    move v0, v1

    :cond_7
    invoke-virtual {p1, v0}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->setDotsCount(I)V

    invoke-direct {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->isNeedShowIndicator()Z

    move-result p0

    if-nez p0, :cond_15

    const/4 p0, 0x4

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_19

    :cond_15
    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :goto_19
    return-void
.end method

.method private final initInnerAlignState()Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerHorizontalAlignState;
    .registers 7

    sget-object v0, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerHorizontalAlignState;->ALIGN_HORIZONTAL_NONE:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerHorizontalAlignState;

    iget-object v1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->mPressViewItemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v2, v1, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v3, -0x65

    if-ne v2, v3, :cond_22

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    goto :goto_29

    :cond_22
    iget-object v2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->mCellCount:Landroid/graphics/Point;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v2, v2, Landroid/graphics/Point;->x:I

    :goto_29
    const/4 v4, 0x1

    if-ne v2, v4, :cond_2e

    sget-object v0, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerHorizontalAlignState;->ALIGN_HORIZONTAL_CENTER:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerHorizontalAlignState;

    :cond_2e
    const/4 v5, 0x2

    if-le v2, v4, :cond_4e

    div-int/lit8 v0, v2, 0x2

    rem-int/2addr v2, v5

    if-nez v2, :cond_40

    iget v2, v1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    if-ge v2, v0, :cond_3d

    sget-object v0, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerHorizontalAlignState;->ALIGN_HORIZONTAL_START:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerHorizontalAlignState;

    goto :goto_4e

    :cond_3d
    sget-object v0, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerHorizontalAlignState;->ALIGN_HORIZONTAL_END:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerHorizontalAlignState;

    goto :goto_4e

    :cond_40
    iget v2, v1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    if-ge v2, v0, :cond_47

    sget-object v0, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerHorizontalAlignState;->ALIGN_HORIZONTAL_START:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerHorizontalAlignState;

    goto :goto_4e

    :cond_47
    if-le v2, v0, :cond_4c

    sget-object v0, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerHorizontalAlignState;->ALIGN_HORIZONTAL_END:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerHorizontalAlignState;

    goto :goto_4e

    :cond_4c
    sget-object v0, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerHorizontalAlignState;->ALIGN_HORIZONTAL_CENTER:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerHorizontalAlignState;

    :cond_4e
    :goto_4e
    iget v1, v1, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    if-ne v1, v3, :cond_6f

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result p0

    if-eqz p0, :cond_6f

    sget-object p0, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget p0, p0, v1

    if-eq p0, v4, :cond_6c

    if-eq p0, v5, :cond_69

    goto :goto_6f

    :cond_69
    sget-object p0, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerHorizontalAlignState;->ALIGN_HORIZONTAL_START:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerHorizontalAlignState;

    goto :goto_6e

    :cond_6c
    sget-object p0, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerHorizontalAlignState;->ALIGN_HORIZONTAL_END:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerHorizontalAlignState;

    :goto_6e
    move-object v0, p0

    :cond_6f
    :goto_6f
    return-object v0
.end method

.method private final initSupportCardSizeList()V
    .registers 6

    sget-object v0, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->mSupportCardSizeList:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/graphics/Point;

    iget v3, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->mSpanTwoPx:I

    invoke-direct {v2, v3, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->mSupportCardSizeList:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/graphics/Point;

    iget v3, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->mSpanFourPx:I

    iget v4, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->mSpanTwoPx:I

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->mSupportCardSizeList:Ljava/util/Map;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/graphics/Point;

    iget v3, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->mSpanFourPx:I

    invoke-direct {v2, v3, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->mSupportCardSizeList:Ljava/util/Map;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/graphics/Point;

    iget p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->mSpanFourPx:I

    invoke-direct {v2, p0, p0}, Landroid/graphics/Point;-><init>(II)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final isNeedShowIndicator()Z
    .registers 2

    sget p0, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->mCardCount:I

    const/4 v0, 0x1

    if-le p0, v0, :cond_6

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public static final isValidInfoForPressedIcon(Lcom/android/launcher3/model/data/ItemInfo;Lcom/oplus/card/config/domain/model/CardConfigInfo;)Z
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->Companion:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$Companion;->isValidInfoForPressedIcon(Lcom/android/launcher3/model/data/ItemInfo;Lcom/oplus/card/config/domain/model/CardConfigInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic reMarginShortCut$default(Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;[FZILjava/lang/Object;)V
    .registers 6

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_5

    const/4 p3, 0x0

    :cond_5
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->reMarginShortCut(Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;[FZ)V

    return-void
.end method

.method public static final registerCardConfigCallback()V
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->Companion:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$Companion;

    invoke-virtual {v0}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$Companion;->registerCardConfigCallback()V

    return-void
.end method

.method public static final resetFirstCardPreviewAfterEnterSimpleMode()V
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->Companion:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$Companion;

    invoke-virtual {v0}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$Companion;->resetFirstCardPreviewAfterEnterSimpleMode()V

    return-void
.end method

.method private final setInnerAlignStateVertical(Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 4

    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v1, -0x64

    if-ne v0, v1, :cond_11

    iget p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    if-nez p1, :cond_d

    sget-object p1, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerVerticalAlignState;->ALIGN_VERTICAL_TOP:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerVerticalAlignState;

    goto :goto_f

    :cond_d
    sget-object p1, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerVerticalAlignState;->ALIGN_VERTICAL_CENTER:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerVerticalAlignState;

    :goto_f
    iput-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->mInnerAlignStateVertical:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerVerticalAlignState;

    :cond_11
    const/16 p1, -0x65

    if-ne v0, p1, :cond_19

    sget-object p1, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerVerticalAlignState;->ALIGN_VERTICAL_BOTTOM:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerVerticalAlignState;

    iput-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->mInnerAlignStateVertical:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerVerticalAlignState;

    :cond_19
    return-void
.end method

.method public static final unregisterCardConfigCallback()V
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->Companion:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$Companion;

    invoke-virtual {v0}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$Companion;->unregisterCardConfigCallback()V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .registers 1

    return-void
.end method

.method public final canClosePopContainer()Z
    .registers 3

    iget-boolean v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->mNeedForceClosePopContainer:Z

    const/4 v1, 0x1

    if-nez v0, :cond_13

    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->mPendingCardRV:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;

    if-nez p0, :cond_b

    move p0, v1

    goto :goto_f

    :cond_b
    invoke-virtual {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->resetBeforeClosePopupView()Z

    move-result p0

    :goto_f
    if-eqz p0, :cond_12

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :cond_13
    :goto_13
    return v1
.end method

.method public final getCardCount()I
    .registers 1

    sget-object p0, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->mCardList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final getCardList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oplus/card/config/domain/model/CardConfigInfo;",
            ">;"
        }
    .end annotation

    sget-object p0, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->mCardList:Ljava/util/List;

    invoke-static {p0}, Lz2/r;->N(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getIndicator()Lcom/coui/appcompat/indicator/COUIPageIndicator;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->mIndicator:Lcom/coui/appcompat/indicator/COUIPageIndicator;

    return-object p0
.end method

.method public final getInnerAlignStateHorizontal()Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerHorizontalAlignState;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->mInnerAlignStateHorizontal:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerHorizontalAlignState;

    return-object p0
.end method

.method public final getInnerAlignStateVertical()Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerVerticalAlignState;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->mInnerAlignStateVertical:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerVerticalAlignState;

    return-object p0
.end method

.method public final getIsAboveIcon()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->mIsAboveIcon:Z

    return p0
.end method

.method public final getMaxCardSize()I
    .registers 3

    iget v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->mMaxCardSize:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_17

    sget-object v0, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->mCardList:Ljava/util/List;

    invoke-static {v0}, Li1/j;->j(Ljava/util/List;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/card/config/domain/model/CardConfigInfo;

    invoke-virtual {v0}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getSize()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->mMaxCardSize:I

    :cond_17
    iget p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->mMaxCardSize:I

    return p0
.end method

.method public final getMinCardSize()Landroid/graphics/Point;
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->mMinCardSize:Landroid/graphics/Point;

    if-nez v0, :cond_1f

    sget-object v0, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->mSupportCardSizeList:Ljava/util/Map;

    sget-object v1, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->mCardList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/card/config/domain/model/CardConfigInfo;

    invoke-virtual {v1}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getSize()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lz2/c0;->c(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    iput-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->mMinCardSize:Landroid/graphics/Point;

    :cond_1f
    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->mMinCardSize:Landroid/graphics/Point;

    const-string v0, "null cannot be cast to non-null type android.graphics.Point"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object p0
.end method

.method public final getOriginMaxCardSize()Landroid/graphics/Point;
    .registers 2

    sget-object p0, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->mSupportCardSizeList:Ljava/util/Map;

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, v0}, Lz2/c0;->c(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Point;

    return-object p0
.end method

.method public final getOriginMinCardSize()Landroid/graphics/Point;
    .registers 2

    sget-object p0, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->mSupportCardSizeList:Ljava/util/Map;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, v0}, Lz2/c0;->c(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Point;

    return-object p0
.end method

.method public final getOriginOffsetUnit()I
    .registers 2

    iget v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->mSpanFourPx:I

    iget p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->mSpanTwoPx:I

    sub-int/2addr v0, p0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public final getPendingCardRV()Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->mPendingCardRV:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;

    return-object p0
.end method

.method public final getPendingCardRVBackground()Landroid/widget/ImageView;
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->mPendingCardRVFourSpanXBg:Landroid/widget/ImageView;

    if-nez v0, :cond_26

    const v0, 0x7f0a0121

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->mPendingCardRVFourSpanXBg:Landroid/widget/ImageView;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationZ()F

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0709fd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationZ(F)V

    :cond_26
    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->mPendingCardRVFourSpanXBg:Landroid/widget/ImageView;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final getPin()Landroid/widget/ImageView;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->mPin:Landroid/widget/ImageView;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final getSupportCardSizeList()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->mSupportCardSizeList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-direct {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->initSupportCardSizeList()V

    :cond_b
    sget-object p0, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->mSupportCardSizeList:Ljava/util/Map;

    invoke-static {p0}, Lz2/c0;->h(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public final initCardPager(Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 6

    const-string v0, "popUpContainer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "originalInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    const-string v1, "getLauncher(context).workspace"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.android.launcher3.CellLayout"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/CellLayout;

    new-instance v1, Landroid/graphics/Point;

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v2

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getCountY()I

    move-result v0

    invoke-direct {v1, v2, v0}, Landroid/graphics/Point;-><init>(II)V

    iput-object v1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->mCellCount:Landroid/graphics/Point;

    iput-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->mPopContainer:Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;

    sget-object p1, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->mCardList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sput p1, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->mCardCount:I

    new-instance p1, Landroid/graphics/Point;

    iget v0, p2, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v1, p2, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    invoke-direct {p1, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->mPressLocation:Landroid/graphics/Point;

    iput-object p2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->mPressViewItemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-direct {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->initInnerAlignState()Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerHorizontalAlignState;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->mInnerAlignStateHorizontal:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerHorizontalAlignState;

    iget-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->mPressViewItemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->setInnerAlignStateVertical(Lcom/android/launcher3/model/data/ItemInfo;)V

    invoke-virtual {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->updateIndicatorColor()V

    invoke-direct {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->initCardPagerState()V

    return-void
.end method

.method public onFinishInflate()V
    .registers 5

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    const v0, 0x7f0a0126

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->mPin:Landroid/widget/ImageView;

    const v0, 0x7f0a0120

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;

    iput-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->mPendingCardRV:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;

    const v0, 0x7f0a0122

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/indicator/COUIPageIndicator;

    iput-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->mIndicator:Lcom/coui/appcompat/indicator/COUIPageIndicator;

    const v0, 0x7f0a0121

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->mPendingCardRVFourSpanXBg:Landroid/widget/ImageView;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationZ()F

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0709fd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationZ(F)V

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->mIndicator:Lcom/coui/appcompat/indicator/COUIPageIndicator;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->initIndicatorState(Lcom/coui/appcompat/indicator/COUIPageIndicator;)V

    invoke-direct {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->initSupportCardSizeList()V

    return-void
.end method

.method public final reMarginShortCut(Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;[FZ)V
    .registers 11

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clipPath"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->getIsAboveIcon()Z

    move-result v0

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-lez v1, :cond_45

    const/4 v2, 0x0

    move v3, v2

    :goto_16
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v5, v3, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    if-eqz v5, :cond_21

    goto :goto_40

    :cond_21
    if-eqz v0, :cond_27

    const/4 v5, 0x1

    aget v5, p2, v5

    goto :goto_36

    :cond_27
    iget-object v5, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->mPendingCardRV:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    int-to-float v5, v5

    const/4 v6, 0x3

    aget v6, p2, v6

    sub-float/2addr v5, v6

    neg-float v5, v5

    :goto_36
    invoke-virtual {v3, v5}, Landroid/view/View;->setTranslationY(F)V

    if-eqz p3, :cond_40

    aget v5, p2, v2

    invoke-virtual {v3, v5}, Landroid/view/View;->setTranslationX(F)V

    :cond_40
    :goto_40
    if-lt v4, v1, :cond_43

    goto :goto_45

    :cond_43
    move v3, v4

    goto :goto_16

    :cond_45
    :goto_45
    return-void
.end method

.method public final setForceClosePopContainerFlag(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->mNeedForceClosePopContainer:Z

    return-void
.end method

.method public final setIsAboveIcon(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->mIsAboveIcon:Z

    return-void
.end method

.method public final translateShortcutWithScaled(Landroid/view/View;)V
    .registers 13

    const-string v0, "followedView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x1

    int-to-float v2, v1

    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result v3

    sub-float v3, v2, v3

    mul-float/2addr v3, v0

    invoke-virtual {p1}, Landroid/view/View;->getPivotY()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v0, v4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v5

    sub-float v5, v2, v5

    mul-float/2addr v5, v4

    invoke-virtual {p1}, Landroid/view/View;->getPivotX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v4, p1

    const/4 p1, 0x6

    new-array p1, p1, [F

    iget-boolean v6, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->mIsRtl:Z

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x0

    if-eqz v6, :cond_71

    iget-object v6, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->mInnerAlignStateHorizontal:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerHorizontalAlignState;

    sget-object v10, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v6, v10, v6

    if-eq v6, v1, :cond_66

    if-eq v6, v8, :cond_4e

    aput v7, p1, v9

    goto :goto_a4

    :cond_4e
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    mul-float/2addr v5, v4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v4

    iget-object v6, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->mPendingCardRV:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getWidth()I

    move-result v6

    sub-int/2addr v4, v6

    int-to-float v4, v4

    add-float/2addr v5, v4

    aput v5, p1, v9

    goto :goto_a4

    :cond_66
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    neg-float v5, v5

    sub-float v4, v2, v4

    mul-float/2addr v4, v5

    aput v4, p1, v9

    goto :goto_a4

    :cond_71
    iget-object v6, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->mInnerAlignStateHorizontal:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerHorizontalAlignState;

    sget-object v10, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v6, v10, v6

    if-eq v6, v1, :cond_9d

    if-eq v6, v8, :cond_82

    aput v7, p1, v9

    goto :goto_a4

    :cond_82
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    neg-float v5, v5

    sub-float v4, v2, v4

    mul-float/2addr v4, v5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->mPendingCardRV:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getWidth()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    sub-float/2addr v4, v5

    aput v4, p1, v9

    goto :goto_a4

    :cond_9d
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    mul-float/2addr v5, v4

    aput v5, p1, v9

    :goto_a4
    iget-object v4, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->mPendingCardRV:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->getClipPathRect()Landroid/graphics/RectF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/RectF;->top:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v5

    mul-float/2addr v5, v0

    add-float/2addr v5, v4

    aput v5, p1, v1

    const/4 v1, 0x3

    iget-object v4, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->mPendingCardRV:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->getClipPathRect()Landroid/graphics/RectF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    sub-float/2addr v2, v0

    mul-float/2addr v2, v3

    sub-float/2addr v4, v2

    aput v4, p1, v1

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->mPopContainer:Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;

    if-nez v0, :cond_d1

    goto :goto_d4

    :cond_d1
    invoke-virtual {p0, v0, p1, v9}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->reMarginShortCut(Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;[FZ)V

    :goto_d4
    return-void
.end method

.method public final updateIndicatorColor()V
    .registers 4

    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->mIndicator:Lcom/coui/appcompat/indicator/COUIPageIndicator;

    if-nez p0, :cond_5

    goto :goto_47

    :cond_5
    sget-object v0, Lcom/android/launcher/wallpaper/WallpaperResolver;->Companion:Lcom/android/launcher/wallpaper/WallpaperResolver$Companion;

    invoke-virtual {v0}, Lcom/android/launcher/wallpaper/WallpaperResolver$Companion;->isWorkspaceWpBright()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2b

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f060668

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->setPageIndicatorDotsColor(I)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f060666

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->setTraceDotColor(I)V

    goto :goto_47

    :cond_2b
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f060669

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->setPageIndicatorDotsColor(I)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f060667

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->setTraceDotColor(I)V

    :goto_47
    return-void
.end method
