.class public final Lcom/android/launcher3/popup/pendingcard/PendingCardView;
.super Lcom/coui/appcompat/cardview/COUICardView;
.source ""

# interfaces
.implements Lcom/android/launcher3/dragndrop/DraggableView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/popup/pendingcard/PendingCardView$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/popup/pendingcard/PendingCardView$Companion;

.field private static final MASK_ALPHA_MAX_VALUE:F = 64.0f


# instance fields
.field private final mBottomTipHeight:I

.field private mCardPreView:Lcom/coui/appcompat/imageview/COUIRoundImageView;

.field private final mCardSizeInfo:Landroid/graphics/Point;

.field private mDetail:Lcom/oplus/card/config/domain/model/CardConfigInfo;

.field private mMaskColor:I

.field private final mRadius:I

.field private final mScaleToFit:F

.field private mType:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/popup/pendingcard/PendingCardView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/popup/pendingcard/PendingCardView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/popup/pendingcard/PendingCardView;->Companion:Lcom/android/launcher3/popup/pendingcard/PendingCardView$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/coui/appcompat/cardview/COUICardView;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardView;->mCardSizeInfo:Landroid/graphics/Point;

    const/high16 p1, 0x3f800000  # 1.0f

    iput p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardView;->mScaleToFit:F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070a05

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardView;->mRadius:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0709f8

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardView;->mBottomTipHeight:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/cardview/COUICardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardView;->mCardSizeInfo:Landroid/graphics/Point;

    const/high16 p1, 0x3f800000  # 1.0f

    iput p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardView;->mScaleToFit:F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070a05

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardView;->mRadius:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0709f8

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardView;->mBottomTipHeight:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/coui/appcompat/cardview/COUICardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardView;->mCardSizeInfo:Landroid/graphics/Point;

    const/high16 p1, 0x3f800000  # 1.0f

    iput p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardView;->mScaleToFit:F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070a05

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardView;->mRadius:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0709f8

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardView;->mBottomTipHeight:I

    return-void
.end method

.method private final applyCardDescription(Lcom/oplus/card/config/domain/model/CardConfigInfo;)V
    .registers 6

    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const-string v1, "mContext"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getCardName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getSpanY()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_16

    const p1, 0x7f1200ee

    goto :goto_24

    :cond_16
    invoke-virtual {p1}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getSpanX()I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_21

    const p1, 0x7f1200f1

    goto :goto_24

    :cond_21
    const p1, 0x7f1200ef

    :goto_24
    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .registers 1

    return-void
.end method

.method public final applyCardInfo(Lcom/oplus/card/config/domain/model/CardConfigInfo;Ljava/util/Map;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/card/config/domain/model/CardConfigInfo;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "+",
            "Landroid/graphics/Point;",
            ">;I)V"
        }
    .end annotation

    iput p3, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardView;->mType:I

    iput-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardView;->mDetail:Lcom/oplus/card/config/domain/model/CardConfigInfo;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->initSpans()V

    iget-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardView;->mDetail:Lcom/oplus/card/config/domain/model/CardConfigInfo;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardView;->applyCardDescription(Lcom/oplus/card/config/domain/model/CardConfigInfo;)V

    iget-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardView;->mCardPreView:Lcom/coui/appcompat/imageview/COUIRoundImageView;

    if-nez p1, :cond_18

    goto/16 :goto_95

    :cond_18
    const/4 p3, 0x3

    if-eqz p2, :cond_6e

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardView;->mDetail:Lcom/oplus/card/config/domain/model/CardConfigInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_22

    move-object v0, v1

    goto :goto_2a

    :cond_22
    invoke-virtual {v0}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getSize()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_2a
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6e

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardView;->mDetail:Lcom/oplus/card/config/domain/model/CardConfigInfo;

    if-nez v0, :cond_35

    goto :goto_3d

    :cond_35
    invoke-virtual {v0}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getSize()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_3d
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Point;

    if-eqz p2, :cond_6e

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardView;->mCardSizeInfo:Landroid/graphics/Point;

    iget v2, p2, Landroid/graphics/Point;->x:I

    iput v2, v1, Landroid/graphics/Point;->x:I

    iget p2, p2, Landroid/graphics/Point;->y:I

    iput p2, v1, Landroid/graphics/Point;->y:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardView;->getMType()I

    move-result p2

    if-ne p2, p3, :cond_65

    iget p2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardView;->mBottomTipHeight:I

    goto :goto_69

    :cond_65
    iget-object p2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardView;->mCardSizeInfo:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->y:I

    :goto_69
    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6e
    invoke-virtual {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardView;->getMType()I

    move-result p2

    if-eq p2, p3, :cond_89

    iget-object p2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardView;->mDetail:Lcom/oplus/card/config/domain/model/CardConfigInfo;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p3

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getCardPreview(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/coui/appcompat/imageview/COUIRoundImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_89
    new-instance p2, Lcom/android/launcher3/card/PendingAddCardInfo;

    iget-object p3, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardView;->mDetail:Lcom/oplus/card/config/domain/model/CardConfigInfo;

    const/16 v0, -0x69

    invoke-direct {p2, p3, v0}, Lcom/android/launcher3/card/PendingAddCardInfo;-><init>(Lcom/oplus/card/config/domain/model/CardConfigInfo;I)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    :goto_95
    iget p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardView;->mRadius:I

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/cardview/COUICardView;->setRadius(F)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/cardview/COUICardView;->setCardBackgroundColor(I)V

    iget-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardView;->mDetail:Lcom/oplus/card/config/domain/model/CardConfigInfo;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public final getCardCenter()Landroid/graphics/Point;
    .registers 3

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    iput p0, v0, Landroid/graphics/Point;->y:I

    return-object v0
.end method

.method public final getCardView()Lcom/coui/appcompat/imageview/COUIRoundImageView;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardView;->mCardPreView:Lcom/coui/appcompat/imageview/COUIRoundImageView;

    return-object p0
.end method

.method public final getCardWidth()I
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardView;->mCardSizeInfo:Landroid/graphics/Point;

    iget p0, p0, Landroid/graphics/Point;->x:I

    return p0
.end method

.method public final getMType()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardView;->mType:I

    return p0
.end method

.method public getViewType()I
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public getWorkspaceVisualDragBounds(Landroid/graphics/Rect;)V
    .registers 4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardView;->mScaleToFit:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    iget p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardView;->mScaleToFit:F

    mul-float/2addr v1, p0

    float-to-int p0, v1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, v0, p0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public onDrawForeground(Landroid/graphics/Canvas;)V
    .registers 5

    if-nez p1, :cond_3

    goto :goto_1d

    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardView;->getMType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_b

    return-void

    :cond_b
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardView;->mMaskColor:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v2, v2}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    iput v2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardView;->mMaskColor:I

    invoke-super {p0, p1}, Landroid/view/View;->onDrawForeground(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :goto_1d
    return-void
.end method

.method public onFinishInflate()V
    .registers 2

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    const v0, 0x7f0a029f

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/imageview/COUIRoundImageView;

    iput-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardView;->mCardPreView:Lcom/coui/appcompat/imageview/COUIRoundImageView;

    return-void
.end method

.method public final setMType(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardView;->mType:I

    return-void
.end method

.method public final setMaskAlpha(F)V
    .registers 3

    const/high16 v0, 0x42800000  # 64.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardView;->mMaskColor:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public final setWillDrawPeingCard(Z)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardView;->mCardPreView:Lcom/coui/appcompat/imageview/COUIRoundImageView;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    if-eqz p1, :cond_9

    const/4 p1, 0x0

    goto :goto_a

    :cond_9
    const/4 p1, 0x4

    :goto_a
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public final willDrawIcon()Z
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardView;->mCardPreView:Lcom/coui/appcompat/imageview/COUIRoundImageView;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/widget/ImageView;->getVisibility()I

    move-result p0

    if-nez p0, :cond_d

    const/4 p0, 0x1

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    return p0
.end method
