.class public final Lcom/android/launcher3/card/CardCreator;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final INSTANCE:Lcom/android/launcher3/card/CardCreator;

.field private static final TAG:Ljava/lang/String; = "CardCreator"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/card/CardCreator;

    invoke-direct {v0}, Lcom/android/launcher3/card/CardCreator;-><init>()V

    sput-object v0, Lcom/android/launcher3/card/CardCreator;->INSTANCE:Lcom/android/launcher3/card/CardCreator;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final inflateCardView(Landroid/view/ViewGroup;Z)Lcom/android/launcher3/card/LauncherCardView;
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "group"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/launcher3/card/CardCreator;->inflateCardView(Landroid/view/ViewGroup;ZZ)Lcom/android/launcher3/card/LauncherCardView;

    move-result-object p0

    return-object p0
.end method

.method public static final inflateCardView(Landroid/view/ViewGroup;ZZ)Lcom/android/launcher3/card/LauncherCardView;
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "group"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "inflateCardView: showCardName = "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CardCreator"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-eqz p2, :cond_2f

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0d016d

    invoke-virtual {p2, v1, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    const-string/jumbo p2, "null cannot be cast to non-null type com.android.launcher3.card.TitleCardView"

    invoke-static {p0, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/card/TitleCardView;

    goto :goto_46

    :cond_2f
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0d0170

    invoke-virtual {p2, v1, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    const-string/jumbo p2, "null cannot be cast to non-null type com.android.launcher3.card.uscard.USCardView"

    invoke-static {p0, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/card/uscard/USCardView;

    :goto_46
    invoke-virtual {p0, p1}, Lcom/android/launcher3/card/LauncherCardView;->setIsShowDefaultView(Z)V

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->initCardAfterInflate()V

    return-object p0
.end method

.method public static final inflateCardViewWithInfo(Lcom/android/launcher3/card/LauncherCardInfo;Lcom/android/launcher3/OplusWorkspace;)Lcom/android/launcher3/card/LauncherCardView;
    .registers 9
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "cardInfo"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "workspace"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inflateCardViewWithInfo: cardInfo = "

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CardCreator"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    const v1, 0xd3ecf26

    if-ne v0, v1, :cond_24

    sget-object v0, Lcom/android/launcher3/card/uscard/USCardManager;->INSTANCE:Lcom/android/launcher3/card/uscard/USCardManager;

    invoke-virtual {v0, p1, p0}, Lcom/android/launcher3/card/uscard/USCardManager;->createCardContainerView(Lcom/android/launcher3/OplusWorkspace;Lcom/android/launcher3/card/LauncherCardInfo;)Lcom/android/launcher3/card/LauncherCardView;

    move-result-object p0

    goto :goto_62

    :cond_24
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isTabletInWideSize()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    const-string/jumbo v1, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Landroid/view/ViewGroup;

    invoke-static {p1, v0}, Lcom/android/launcher3/card/LauncherCardView;->inflateCardView(Landroid/view/ViewGroup;Z)Lcom/android/launcher3/card/LauncherCardView;

    move-result-object p1

    sget-object v0, Lcom/oplus/card/manager/domain/CardManager;->Companion:Lcom/oplus/card/manager/domain/CardManager$Companion;

    invoke-virtual {v0}, Lcom/oplus/card/manager/domain/CardManager$Companion;->getInstance()Lcom/oplus/card/manager/domain/CardManager;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    iget v3, p0, Lcom/android/launcher3/card/LauncherCardInfo;->mCardId:I

    iget v4, p0, Lcom/android/launcher3/card/LauncherCardInfo;->mHostId:I

    new-instance v5, Lcom/android/launcher3/card/seed/SeedParams;

    invoke-direct {v5, p0}, Lcom/android/launcher3/card/seed/SeedParams;-><init>(Lcom/android/launcher3/card/LauncherCardInfo;)V

    iget-boolean v6, p0, Lcom/android/launcher3/card/LauncherCardInfo;->mDragFromAssistant:Z

    invoke-virtual/range {v1 .. v6}, Lcom/oplus/card/manager/domain/CardManager;->createCard(IIILcom/android/launcher3/card/seed/SeedParams;Z)Lcom/oplus/card/manager/domain/model/CardModel;

    move-result-object v0

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Lcom/oplus/card/manager/domain/ICardView;->setCardModel(Lcom/oplus/card/manager/domain/model/CardModel;)V

    iget-object p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-static {p0}, Lcom/android/launcher3/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/oplus/card/manager/domain/ICardView;->setCardName(Ljava/lang/String;)V

    move-object p0, p1

    :goto_62
    return-object p0
.end method

.method public static final inflateCardViewWithInfo(Lcom/android/launcher3/card/LauncherCardInfo;Lcom/android/launcher3/OplusWorkspace;Lcom/android/launcher3/dragndrop/DragCardInfo;)Lcom/android/launcher3/card/LauncherCardView;
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "cardInfo"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "workspace"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dragCardInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inflateCardViewWithInfo: dragCardInfo = "

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CardCreator"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, p1}, Lcom/android/launcher3/card/CardCreator;->inflateCardViewWithInfo(Lcom/android/launcher3/card/LauncherCardInfo;Lcom/android/launcher3/OplusWorkspace;)Lcom/android/launcher3/card/LauncherCardView;

    move-result-object p0

    instance-of p1, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;

    if-eqz p1, :cond_31

    invoke-virtual {p2}, Lcom/android/launcher3/dragndrop/DragCardInfo;->getInnerCards()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_31

    sget-object p1, Lcom/android/launcher3/card/uscard/USCardManager;->INSTANCE:Lcom/android/launcher3/card/uscard/USCardManager;

    move-object v0, p0

    check-cast v0, Lcom/android/launcher3/card/uscard/USCardContainerView;

    invoke-virtual {p1, v0, p2}, Lcom/android/launcher3/card/uscard/USCardManager;->setInitChildrenCard(Lcom/android/launcher3/card/uscard/USCardContainerView;Lcom/android/launcher3/dragndrop/DragCardInfo;)V

    :cond_31
    return-object p0
.end method
