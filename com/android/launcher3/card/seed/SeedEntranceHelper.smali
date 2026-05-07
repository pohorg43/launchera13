.class public final Lcom/android/launcher3/card/seed/SeedEntranceHelper;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final INSTANCE:Lcom/android/launcher3/card/seed/SeedEntranceHelper;

.field private static final TAG:Ljava/lang/String; = "SeedEntranceHelper"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/card/seed/SeedEntranceHelper;

    invoke-direct {v0}, Lcom/android/launcher3/card/seed/SeedEntranceHelper;-><init>()V

    sput-object v0, Lcom/android/launcher3/card/seed/SeedEntranceHelper;->INSTANCE:Lcom/android/launcher3/card/seed/SeedEntranceHelper;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final assembleCardInfoByCardIdentity(Lcom/android/launcher3/dragndrop/CardIdentity;)Lcom/android/launcher3/card/LauncherCardInfo;
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "cardIdentity"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "assembleCardInfoByCardIdentity, cardIdentity = "

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SeedEntranceHelper"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_16
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/CardIdentity;->getCardType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/card/seed/SeedEntranceHelper;->assembleCardInfoByType(Ljava/lang/Integer;)Lcom/android/launcher3/card/LauncherCardInfo;

    move-result-object v0

    if-nez v0, :cond_26

    const/4 v0, 0x0

    goto :goto_32

    :cond_26
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/CardIdentity;->getCardId()I

    move-result v1

    iput v1, v0, Lcom/android/launcher3/card/LauncherCardInfo;->mCardId:I

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/CardIdentity;->getHostId()I

    move-result p0

    iput p0, v0, Lcom/android/launcher3/card/LauncherCardInfo;->mHostId:I

    :goto_32
    return-object v0
.end method

.method public static final assembleCardInfoByConfigInfo(Lcom/oplus/card/config/domain/model/CardConfigInfo;)Lcom/android/launcher3/card/LauncherCardInfo;
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "assembleCardInfoByConfigInfo, configInfo = "

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SeedEntranceHelper"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    if-nez p0, :cond_15

    const/4 p0, 0x0

    return-object p0

    :cond_15
    new-instance v0, Lcom/android/launcher3/card/LauncherCardInfo;

    invoke-direct {v0}, Lcom/android/launcher3/card/LauncherCardInfo;-><init>()V

    invoke-virtual {p0}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getType()I

    move-result v1

    iput v1, v0, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    sget-object v1, Lcom/oplus/card/manager/domain/CardManager;->Companion:Lcom/oplus/card/manager/domain/CardManager$Companion;

    invoke-virtual {v1}, Lcom/oplus/card/manager/domain/CardManager$Companion;->getInstance()Lcom/oplus/card/manager/domain/CardManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/oplus/card/manager/domain/CardManager;->allocateCardId(I)I

    move-result v1

    iput v1, v0, Lcom/android/launcher3/card/LauncherCardInfo;->mCardId:I

    invoke-virtual {p0}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getProvider()Landroid/content/ComponentName;

    move-result-object v1

    iput-object v1, v0, Lcom/android/launcher3/card/LauncherCardInfo;->mProviderName:Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getSize()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eq v1, v2, :cond_53

    if-eq v1, v3, :cond_4d

    const/4 v4, 0x5

    if-eq v1, v4, :cond_48

    iput v3, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iput v3, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    goto :goto_57

    :cond_48
    iput v3, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iput v2, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    goto :goto_57

    :cond_4d
    const/4 v1, 0x4

    iput v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iput v3, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    goto :goto_57

    :cond_53
    iput v3, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iput v3, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    :goto_57
    iget v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iput v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    iget v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iput v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    invoke-virtual {p0}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getMinHeight()I

    move-result v1

    iput v1, v0, Lcom/android/launcher3/card/LauncherCardInfo;->minHeight:I

    invoke-virtual {p0}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getMinWidth()I

    move-result v1

    iput v1, v0, Lcom/android/launcher3/card/LauncherCardInfo;->minWidth:I

    invoke-virtual {p0}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getServiceId()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/android/launcher3/card/LauncherCardInfo;->mServiceId:Ljava/lang/String;

    const/4 p0, 0x3

    iput p0, v0, Lcom/android/launcher3/card/LauncherCardInfo;->mHostId:I

    return-object v0
.end method

.method public static final assembleCardInfoBySelectedInfo(Lcom/android/launcher3/card/seed/SelectedServiceInfo;)Lcom/android/launcher3/card/LauncherCardInfo;
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "selectedInfo"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_17

    const-string v0, "assembleCardInfoBySelectedInfo: selectedInfo = "

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SeedEntranceHelper"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_17
    invoke-virtual {p0}, Lcom/android/launcher3/card/seed/SelectedServiceInfo;->getServiceInfo()Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/card/seed/SelectedServiceInfo;->getServiceInfo()Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->getServiceType()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_37

    invoke-virtual {v0}, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->getServiceId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher3/card/seed/SeedEntranceHelper;->assembleCardInfoByType(Ljava/lang/Integer;)Lcom/android/launcher3/card/LauncherCardInfo;

    move-result-object p0

    goto :goto_4d

    :cond_37
    sget-object v1, Lcom/oplus/card/manager/domain/CardManager;->Companion:Lcom/oplus/card/manager/domain/CardManager$Companion;

    invoke-virtual {v1}, Lcom/oplus/card/manager/domain/CardManager$Companion;->getInstance()Lcom/oplus/card/manager/domain/CardManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->getServiceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/card/seed/SelectedServiceInfo;->getSelectedSize()I

    move-result p0

    invoke-virtual {v1, v0, p0}, Lcom/oplus/card/manager/domain/CardManager;->getSeedCardConfigInfo(Ljava/lang/String;I)Lcom/oplus/card/config/domain/model/CardConfigInfo;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher3/card/seed/SeedEntranceHelper;->assembleCardInfoByConfigInfo(Lcom/oplus/card/config/domain/model/CardConfigInfo;)Lcom/android/launcher3/card/LauncherCardInfo;

    move-result-object p0

    :goto_4d
    return-object p0
.end method

.method public static final assembleCardInfoByType(Ljava/lang/Integer;)Lcom/android/launcher3/card/LauncherCardInfo;
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    sget-object v1, Lcom/oplus/card/manager/domain/CardManager;->Companion:Lcom/oplus/card/manager/domain/CardManager$Companion;

    invoke-virtual {v1}, Lcom/oplus/card/manager/domain/CardManager$Companion;->getInstance()Lcom/oplus/card/manager/domain/CardManager;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/oplus/card/manager/domain/CardManager;->isCardAvailable(I)Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-virtual {v1}, Lcom/oplus/card/manager/domain/CardManager$Companion;->getInstance()Lcom/oplus/card/manager/domain/CardManager;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/oplus/card/manager/domain/CardManager;->getCardConfigInfo(I)Lcom/oplus/card/config/domain/model/CardConfigInfo;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher3/card/seed/SeedEntranceHelper;->assembleCardInfoByConfigInfo(Lcom/oplus/card/config/domain/model/CardConfigInfo;)Lcom/android/launcher3/card/LauncherCardInfo;

    move-result-object p0

    return-object p0

    :cond_25
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v1

    if-eqz v1, :cond_36

    const-string v1, "assembleCardInfoByType, config is null. type = "

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "SeedEntranceHelper"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_36
    return-object v0
.end method

.method public static final disableSeedlingCard(Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;)Z
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "info"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isSeedlingCardDisabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->getServiceType()I

    move-result p0

    const/16 v0, 0x64

    if-ne p0, v0, :cond_17

    const/4 v1, 0x1

    :cond_17
    return v1
.end method

.method public static final getNeighborPage(Lcom/android/launcher3/CellLayout;)Lcom/android/launcher3/CellLayout;
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "cellLayout"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Lcom/android/launcher3/OplusWorkspace;

    const/4 v2, 0x0

    if-eqz v1, :cond_11

    check-cast v0, Lcom/android/launcher3/OplusWorkspace;

    goto :goto_12

    :cond_11
    move-object v0, v2

    :goto_12
    const/4 v1, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_17

    goto :goto_1e

    :cond_17
    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->isTwoPanelEnabled()Z

    move-result v4

    if-ne v4, v3, :cond_1e

    move v1, v3

    :cond_1e
    :goto_1e
    if-eqz v1, :cond_47

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result v1

    if-eqz v1, :cond_47

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p0

    rem-int/lit8 v1, p0, 0x2

    if-ne v1, v3, :cond_3b

    sub-int/2addr p0, v3

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    instance-of v0, p0, Lcom/android/launcher3/CellLayout;

    if-eqz v0, :cond_47

    move-object v2, p0

    check-cast v2, Lcom/android/launcher3/CellLayout;

    goto :goto_47

    :cond_3b
    add-int/2addr p0, v3

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    instance-of v0, p0, Lcom/android/launcher3/CellLayout;

    if-eqz v0, :cond_47

    move-object v2, p0

    check-cast v2, Lcom/android/launcher3/CellLayout;

    :cond_47
    :goto_47
    return-object v2
.end method

.method public static final getSizeBySpan(II)I
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x3

    const/4 v1, 0x4

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq p1, v3, :cond_12

    if-eq p1, v2, :cond_c

    if-eq p1, v1, :cond_13

    move v0, v1

    goto :goto_13

    :cond_c
    if-gt p0, v0, :cond_10

    move v0, v3

    goto :goto_13

    :cond_10
    move v0, v2

    goto :goto_13

    :cond_12
    const/4 v0, 0x5

    :cond_13
    :goto_13
    return v0
.end method

.method public static final getUsCardViewParent(Landroid/view/View;)Lcom/android/launcher3/card/uscard/USCardView;
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_5

    :goto_3
    move-object p0, v0

    goto :goto_10

    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    if-nez p0, :cond_c

    goto :goto_3

    :cond_c
    invoke-interface {p0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    :goto_10
    instance-of v1, p0, Lcom/android/launcher3/card/uscard/USCardView;

    if-eqz v1, :cond_17

    move-object v0, p0

    check-cast v0, Lcom/android/launcher3/card/uscard/USCardView;

    :cond_17
    return-object v0
.end method

.method public static final hasSufficientItem(Lcom/android/launcher3/card/seed/SeedContentResult;)Z
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "seedContentResult"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/card/seed/SeedContentResult;->getServicesInfo()Lcom/android/launcher3/util/IntSparseArrayMap;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    :goto_10
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_33

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/card/seed/SelectedServiceInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/card/seed/SelectedServiceInfo;->getSelectedSize()I

    move-result v2

    if-eq v2, v3, :cond_30

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2d

    const/4 v3, 0x5

    if-eq v2, v3, :cond_2a

    goto :goto_10

    :cond_2a
    add-int/lit8 v1, v1, 0x2

    goto :goto_10

    :cond_2d
    add-int/lit8 v1, v1, 0x8

    goto :goto_10

    :cond_30
    add-int/lit8 v1, v1, 0x4

    goto :goto_10

    :cond_33
    const/16 p0, 0x8

    if-lt v1, p0, :cond_38

    move v0, v3

    :cond_38
    return v0
.end method

.method public static final isAnalogousCard(Ljava/util/List;ILcom/oplus/seedling/sdk/recommendlist/ServiceInfo;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;I",
            "Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;",
            ")Z"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "analogousCards"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "serviceInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_10

    return v0

    :cond_10
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_14
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_63

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-virtual {p2}, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->getSupportCardSizes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_32
    :goto_32
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    sget-object v4, Lcom/oplus/card/manager/domain/CardManager;->Companion:Lcom/oplus/card/manager/domain/CardManager$Companion;

    invoke-virtual {v4}, Lcom/oplus/card/manager/domain/CardManager$Companion;->getInstance()Lcom/oplus/card/manager/domain/CardManager;

    move-result-object v4

    invoke-virtual {p2}, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->getServiceId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Lcom/oplus/card/manager/domain/CardManager;->getSeedCardConfigInfo(Ljava/lang/String;I)Lcom/oplus/card/config/domain/model/CardConfigInfo;

    move-result-object v3

    if-nez v3, :cond_53

    goto :goto_32

    :cond_53
    invoke-virtual {v3}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    const/4 p0, 0x1

    return p0

    :cond_63
    return v0
.end method

.method public static final isAnyInvalidOfSelectedInfos(Lcom/android/launcher3/util/IntSparseArrayMap;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/util/IntSparseArrayMap<",
            "Lcom/android/launcher3/card/seed/SelectedServiceInfo;",
            ">;)Z"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "infos"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_57

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/card/seed/SelectedServiceInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/card/seed/SelectedServiceInfo;->getServiceInfo()Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->getServiceType()I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-ne v2, v3, :cond_3b

    sget-object v1, Lcom/oplus/card/manager/domain/CardManager;->Companion:Lcom/oplus/card/manager/domain/CardManager$Companion;

    invoke-virtual {v1}, Lcom/oplus/card/manager/domain/CardManager$Companion;->getInstance()Lcom/oplus/card/manager/domain/CardManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/launcher3/card/seed/SelectedServiceInfo;->getServiceInfo()Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->getServiceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/oplus/card/manager/domain/CardManager;->isCardAvailable(I)Z

    move-result v0

    if-nez v0, :cond_9

    return v4

    :cond_3b
    sget-object v2, Lcom/oplus/card/manager/domain/CardManager;->Companion:Lcom/oplus/card/manager/domain/CardManager$Companion;

    invoke-virtual {v2}, Lcom/oplus/card/manager/domain/CardManager$Companion;->getInstance()Lcom/oplus/card/manager/domain/CardManager;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/launcher3/card/seed/SelectedServiceInfo;->getServiceInfo()Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->getServiceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/launcher3/card/seed/SelectedServiceInfo;->getSelectedSize()I

    move-result v0

    invoke-virtual {v2, v3, v0}, Lcom/oplus/card/manager/domain/CardManager;->getSeedCardConfigInfo(Ljava/lang/String;I)Lcom/oplus/card/config/domain/model/CardConfigInfo;

    move-result-object v0

    if-nez v0, :cond_54

    move v1, v4

    :cond_54
    if-eqz v1, :cond_9

    return v4

    :cond_57
    return v1
.end method

.method public static final isSameCellLayout(Lcom/android/launcher3/card/LauncherCardView;)Z
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "cardView"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_e

    move-object p0, v0

    goto :goto_12

    :cond_e
    invoke-interface {p0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    :goto_12
    instance-of v1, p0, Lcom/android/launcher3/CellLayout;

    if-eqz v1, :cond_19

    move-object v0, p0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    :cond_19
    const/4 p0, 0x0

    if-nez v0, :cond_1d

    return p0

    :cond_1d
    sget-object v1, Lcom/android/launcher3/card/uscard/USCardManager;->INSTANCE:Lcom/android/launcher3/card/uscard/USCardManager;

    invoke-virtual {v1}, Lcom/android/launcher3/card/uscard/USCardManager;->getCellLayoutParent()Lcom/android/launcher3/CellLayout;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_33

    invoke-static {v0}, Lcom/android/launcher3/card/seed/SeedEntranceHelper;->getNeighborPage(Lcom/android/launcher3/CellLayout;)Lcom/android/launcher3/CellLayout;

    move-result-object v0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    :cond_33
    const/4 p0, 0x1

    :cond_34
    return p0
.end method

.method public static final isSmartView(Landroid/view/View;)Z
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/card/EngineCardView;

    if-nez v0, :cond_21

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    if-nez p0, :cond_16

    const/4 p0, 0x0

    goto :goto_1a

    :cond_16
    invoke-interface {p0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    :goto_1a
    instance-of p0, p0, Lcom/android/launcher3/card/EngineCardView;

    if-eqz p0, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 p0, 0x0

    goto :goto_22

    :cond_21
    :goto_21
    const/4 p0, 0x1

    :goto_22
    return p0
.end method

.method public static final isSupportSeedContainerCard()Z
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isSeedlingContainerCardDisabled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static final isUsCardContainer(Ljava/lang/Object;)Z
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    instance-of v0, p0, Lcom/android/launcher3/card/LauncherCardInfo;

    const/4 v1, 0x1

    const v2, 0xd3ecf26

    const/4 v3, 0x0

    if-eqz v0, :cond_12

    check-cast p0, Lcom/android/launcher3/card/LauncherCardInfo;

    iget p0, p0, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    if-ne p0, v2, :cond_10

    goto :goto_25

    :cond_10
    move v1, v3

    goto :goto_25

    :cond_12
    instance-of v0, p0, Lcom/android/launcher3/dragndrop/DragCardInfo;

    if-eqz v0, :cond_1f

    check-cast p0, Lcom/android/launcher3/dragndrop/DragCardInfo;

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragCardInfo;->getCardType()I

    move-result p0

    if-ne p0, v2, :cond_10

    goto :goto_25

    :cond_1f
    instance-of v0, p0, Lcom/android/launcher3/card/LauncherCardView;

    if-eqz v0, :cond_10

    instance-of v1, p0, Lcom/android/launcher3/card/uscard/USCardContainerView;

    :goto_25
    return v1
.end method

.method public static final isUsOrContainerCard(Ljava/lang/Object;)Z
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "info"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;

    const/16 v1, 0x64

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1a

    check-cast p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;

    invoke-virtual {p0}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getType()I

    move-result p0

    invoke-static {p0}, Lcom/android/launcher3/card/SmartEngineFactory;->getCategory(I)I

    move-result p0

    if-ne p0, v1, :cond_1e

    goto :goto_30

    :cond_1a
    instance-of v0, p0, Lcom/android/launcher3/card/LauncherCardInfo;

    if-nez v0, :cond_20

    :cond_1e
    move v2, v3

    goto :goto_30

    :cond_20
    check-cast p0, Lcom/android/launcher3/card/LauncherCardInfo;

    iget p0, p0, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    const v0, 0xd3ecf26

    if-ne p0, v0, :cond_2a

    goto :goto_30

    :cond_2a
    invoke-static {p0}, Lcom/android/launcher3/card/SmartEngineFactory;->getCategory(I)I

    move-result p0

    if-ne p0, v1, :cond_1e

    :goto_30
    return v2
.end method


# virtual methods
.method public final assembleLocalTipCardList()Lcom/android/launcher3/card/seed/SeedContentResult;
    .registers 2

    new-instance p0, Lcom/android/launcher3/card/seed/SeedContentResult;

    new-instance v0, Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-direct {v0}, Lcom/android/launcher3/util/IntSparseArrayMap;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/launcher3/card/seed/SeedContentResult;-><init>(Lcom/android/launcher3/util/IntSparseArrayMap;)V

    return-object p0
.end method

.method public final hasUsOrContainerCard(Lcom/android/launcher3/model/BgDataModel;)Z
    .registers 3

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p1, Lcom/android/launcher3/model/BgDataModel;->cards:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_24

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/card/LauncherCardInfo;

    const-string v0, "cardInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/launcher3/card/seed/SeedEntranceHelper;->isUsOrContainerCard(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    const/4 p0, 0x1

    return p0

    :cond_24
    const-string p0, "SeedEntranceHelper"

    const-string p1, "hasUsOrContainerCard? NOT."

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method
