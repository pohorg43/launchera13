.class public final Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$Companion$WhenMappings;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$Companion;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/oplus/card/config/domain/model/CardConfigInfo;Lcom/oplus/card/config/domain/model/CardConfigInfo;)I
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$Companion;->getCardConfigListForIcon$lambda-1(Lcom/oplus/card/config/domain/model/CardConfigInfo;Lcom/oplus/card/config/domain/model/CardConfigInfo;)I

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/android/launcher3/model/data/ItemInfo;Lcom/oplus/card/config/domain/model/CardConfigInfo;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$Companion;->getCardConfigListForIcon$lambda-0(Lcom/android/launcher3/model/data/ItemInfo;Lcom/oplus/card/config/domain/model/CardConfigInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic calculateAnimValueBaseTargetScale$default(Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$Companion;Landroid/view/View;FZILjava/lang/Object;)Ly2/i;
    .registers 6

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_5

    const/4 p3, 0x0

    :cond_5
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$Companion;->calculateAnimValueBaseTargetScale(Landroid/view/View;FZ)Ly2/i;

    move-result-object p0

    return-object p0
.end method

.method private static final getCardConfigListForIcon$lambda-0(Lcom/android/launcher3/model/data/ItemInfo;Lcom/oplus/card/config/domain/model/CardConfigInfo;)Z
    .registers 4

    const-string v0, "$originalInfo"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->Companion:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$Companion;

    const-string v1, "it"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$Companion;->isValidInfoForPressedIcon(Lcom/android/launcher3/model/data/ItemInfo;Lcom/oplus/card/config/domain/model/CardConfigInfo;)Z

    move-result p0

    return p0
.end method

.method private static final getCardConfigListForIcon$lambda-1(Lcom/oplus/card/config/domain/model/CardConfigInfo;Lcom/oplus/card/config/domain/model/CardConfigInfo;)I
    .registers 2

    invoke-virtual {p0}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getSize()I

    move-result p0

    invoke-virtual {p1}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getSize()I

    move-result p1

    sub-int/2addr p0, p1

    return p0
.end method


# virtual methods
.method public final addFirstCardPreviewAfterEnterSimpleMode(I)V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-virtual {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$Companion;->getMIsFirstCardPreviewAfterEnterSimpleMode()I

    move-result v0

    or-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$Companion;->setMIsFirstCardPreviewAfterEnterSimpleMode(I)V

    return-void
.end method

.method public final calculateAnimValueBaseTargetScale(Landroid/view/View;FZ)Ly2/i;
    .registers 6
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

    const-string p0, "followedView"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p0

    if-eqz p0, :cond_5d

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p0

    if-nez p0, :cond_12

    goto :goto_5d

    :cond_12
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p0

    int-to-float p0, p0

    const/4 v0, 0x1

    int-to-float v0, v0

    sub-float p2, v0, p2

    mul-float/2addr p0, p2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p2

    if-eqz p3, :cond_2f

    invoke-virtual {p1}, Landroid/view/View;->getPivotX()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p2, p3

    goto :goto_3b

    :cond_2f
    invoke-virtual {p1}, Landroid/view/View;->getPivotX()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p2, p3

    sub-float p2, v0, p2

    :goto_3b
    invoke-virtual {p1}, Landroid/view/View;->getPivotY()F

    move-result p3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p3, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    mul-float/2addr p0, p2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    mul-float/2addr p1, p3

    new-instance p2, Ly2/i;

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Ly2/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2

    :cond_5d
    :goto_5d
    new-instance p0, Ly2/i;

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Ly2/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final getCardConfigListForIcon(Lcom/android/launcher3/model/data/ItemInfo;)Ljava/util/List;
    .registers 4
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

    const-string v0, "originalInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->access$getMCardList$cp()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$Companion;->getMTotalCardList()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lz2/r;->N(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->parallel()Ljava/util/stream/BaseStream;

    move-result-object p0

    check-cast p0, Ljava/util/stream/Stream;

    new-instance v0, Lcom/android/launcher3/popup/pendingcard/c;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/launcher3/popup/pendingcard/c;-><init>(Lcom/android/launcher3/model/data/ItemInfo;I)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object p1, Lcom/android/launcher3/popup/pendingcard/b;->a:Lcom/android/launcher3/popup/pendingcard/b;

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object p0

    const-wide/16 v0, 0xb

    invoke-interface {p0, v0, v1}, Ljava/util/stream/Stream;->limit(J)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-static {}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->access$getMCardList$cp()Ljava/util/List;

    move-result-object p1

    const-string v0, "cardList"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->access$setMCardCount$cp(I)V

    const-string p1, "getCardConfigListForIcon cardList: "

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "PendingCardContainer"

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getFirstCardPreviewAfterEnterSimpleMode()I
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-virtual {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$Companion;->getMIsFirstCardPreviewAfterEnterSimpleMode()I

    move-result p0

    return p0
.end method

.method public final getHorizontalOffset(ILcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerHorizontalAlignState;F)F
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string p0, "alignState"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x1

    const/4 v0, 0x0

    if-ne p1, p0, :cond_a

    goto :goto_b

    :cond_a
    move p3, v0

    :goto_b
    sget-object p1, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$Companion$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    if-eq p1, p0, :cond_2a

    const/4 p0, 0x2

    if-eq p1, p0, :cond_27

    const/4 p0, 0x3

    if-eq p1, p0, :cond_25

    const/4 p0, 0x4

    if-ne p1, p0, :cond_1f

    goto :goto_2a

    :cond_1f
    new-instance p0, Ly2/h;

    invoke-direct {p0}, Ly2/h;-><init>()V

    throw p0

    :cond_25
    move v0, p3

    goto :goto_2a

    :cond_27
    int-to-float p0, p0

    mul-float v0, p3, p0

    :cond_2a
    :goto_2a
    return v0
.end method

.method public final getMIsFirstCardPreviewAfterEnterSimpleMode()I
    .registers 1

    invoke-static {}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->access$getMIsFirstCardPreviewAfterEnterSimpleMode$cp()I

    move-result p0

    return p0
.end method

.method public final getMTotalCardList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oplus/card/config/domain/model/CardConfigInfo;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->access$getMTotalCardList$cp()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final isValidInfoForPressedIcon(Lcom/android/launcher3/model/data/ItemInfo;Lcom/oplus/card/config/domain/model/CardConfigInfo;)Z
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string p0, "iconInfo"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "cardInfo"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 p1, 0x1

    if-eqz p0, :cond_45

    sget-object p0, Lcom/oplus/card/manager/domain/CardManager;->Companion:Lcom/oplus/card/manager/domain/CardManager$Companion;

    invoke-virtual {p0}, Lcom/oplus/card/manager/domain/CardManager$Companion;->getInstance()Lcom/oplus/card/manager/domain/CardManager;

    move-result-object p0

    invoke-virtual {p2}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getDisplayArea()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oplus/card/manager/domain/CardManager;->isLauncherCardDisplayArea(I)Z

    move-result p0

    if-eqz p0, :cond_45

    invoke-virtual {p2}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getSize()I

    move-result p0

    const/4 v0, 0x5

    if-eq p0, v0, :cond_45

    invoke-virtual {p2}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getCategory()I

    move-result p0

    const/4 v0, 0x2

    if-eq p0, p1, :cond_3d

    invoke-virtual {p2}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getCategory()I

    move-result p0

    if-ne p0, v0, :cond_45

    :cond_3d
    invoke-virtual {p2}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getReservedFlag()I

    move-result p0

    and-int/2addr p0, v0

    if-nez p0, :cond_45

    goto :goto_46

    :cond_45
    const/4 p1, 0x0

    :goto_46
    return p1
.end method

.method public final registerCardConfigCallback()V
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string p0, "PendingCardContainer"

    const-string v0, "registerCardConfigCallback"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/oplus/card/manager/domain/CardManager;->Companion:Lcom/oplus/card/manager/domain/CardManager$Companion;

    invoke-virtual {p0}, Lcom/oplus/card/manager/domain/CardManager$Companion;->getInstance()Lcom/oplus/card/manager/domain/CardManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/card/manager/domain/CardManager;->getCardConfigInfoManager()Lcom/oplus/card/config/domain/ICardConfigInfoManager;

    move-result-object p0

    invoke-static {}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->access$getCardConfigCallback$cp()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/oplus/card/config/domain/ICardConfigInfoManager;->registerCardConfigCallback(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final resetFirstCardPreviewAfterEnterSimpleMode()V
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$Companion;->setMIsFirstCardPreviewAfterEnterSimpleMode(I)V

    return-void
.end method

.method public final setMIsFirstCardPreviewAfterEnterSimpleMode(I)V
    .registers 2

    invoke-static {p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->access$setMIsFirstCardPreviewAfterEnterSimpleMode$cp(I)V

    return-void
.end method

.method public final unregisterCardConfigCallback()V
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string p0, "PendingCardContainer"

    const-string/jumbo v0, "unregisterCardConfigCallback"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/oplus/card/manager/domain/CardManager;->Companion:Lcom/oplus/card/manager/domain/CardManager$Companion;

    invoke-virtual {p0}, Lcom/oplus/card/manager/domain/CardManager$Companion;->getInstance()Lcom/oplus/card/manager/domain/CardManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/card/manager/domain/CardManager;->getCardConfigInfoManager()Lcom/oplus/card/config/domain/ICardConfigInfoManager;

    move-result-object p0

    invoke-static {}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->access$getCardConfigCallback$cp()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/oplus/card/config/domain/ICardConfigInfoManager;->unregisterCardConfigCallback(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
