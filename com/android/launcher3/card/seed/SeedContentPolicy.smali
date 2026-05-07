.class public final Lcom/android/launcher3/card/seed/SeedContentPolicy;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/card/seed/SeedContentPolicy$Companion;,
        Lcom/android/launcher3/card/seed/SeedContentPolicy$Scenes;,
        Lcom/android/launcher3/card/seed/SeedContentPolicy$OrderComparator;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/card/seed/SeedContentPolicy$Companion;

.field public static final GRID_COUNT_SUFFICIENT:I = 0x8

.field public static final MAX_CHILD_COUNT:I = 0x3

.field private static final REORDER_RECOMMEND_LIST_WITH_SCORE:Z = false

.field public static final SUPPORT_FILL_CARD_LOCAL:Z = false

.field private static final TAG:Ljava/lang/String; = "SeedContentPolicy"


# instance fields
.field private addedCards:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/card/LauncherCardView;",
            ">;"
        }
    .end annotation
.end field

.field private totalSize:I

.field private withReserveCard:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/card/seed/SeedContentPolicy$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/card/seed/SeedContentPolicy$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/card/seed/SeedContentPolicy;->Companion:Lcom/android/launcher3/card/seed/SeedContentPolicy$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/card/seed/SeedContentPolicy;->addedCards:Ljava/util/List;

    return-void
.end method

.method private final checkRemainingScenes(Ljava/util/List;)I
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;",
            ">;)I"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, -0x1

    add-int/2addr p0, v0

    const/4 v1, 0x1

    if-ltz p0, :cond_47

    const/4 v2, 0x0

    move v4, v0

    move v5, v4

    move v3, v1

    :goto_d
    add-int/lit8 v6, v2, 0x1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;

    const/4 v8, 0x5

    invoke-virtual {v7, v8}, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->isSupportSize(I)Z

    move-result v7

    if-eqz v7, :cond_2c

    and-int/lit8 v5, v3, 0x2

    if-eqz v5, :cond_23

    or-int/lit8 v3, v3, 0x10

    goto :goto_25

    :cond_23
    or-int/lit8 v3, v3, 0x2

    :goto_25
    if-eq v4, v0, :cond_2b

    if-eq v2, v4, :cond_2b

    or-int/lit8 v3, v3, 0x8

    :cond_2b
    move v5, v2

    :cond_2c
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;

    invoke-virtual {v7, v1}, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->isSupportSize(I)Z

    move-result v7

    if-eqz v7, :cond_41

    or-int/lit8 v3, v3, 0x4

    if-eq v5, v0, :cond_40

    if-eq v5, v2, :cond_40

    or-int/lit8 v3, v3, 0x8

    :cond_40
    move v4, v2

    :cond_41
    if-le v6, p0, :cond_45

    move v1, v3

    goto :goto_47

    :cond_45
    move v2, v6

    goto :goto_d

    :cond_47
    :goto_47
    return v1
.end method

.method private final fillWithReserveCard(Lcom/android/launcher3/card/seed/SeedContentResult;)V
    .registers 3

    const-string v0, "fillWithReserveCard, have NOT find sufficient card for recommend! , withReserveCard = "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean p0, p0, Lcom/android/launcher3/card/seed/SeedContentPolicy;->withReserveCard:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", SUPPORT_FILL_CARD_LOCAL = false contentResult = "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SeedContentPolicy"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/launcher3/card/seed/SeedContentResult;->getServicesInfo()Lcom/android/launcher3/util/IntSparseArrayMap;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method private final filterGuaranteeCards(Ljava/util/List;Lcom/android/launcher3/card/seed/SeedContentResult;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;",
            ">;",
            "Lcom/android/launcher3/card/seed/SeedContentResult;",
            ")V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_24

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;

    invoke-virtual {p1}, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->isGuaranteedCard()Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-virtual {p1}, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->getCannotReduceRecommend()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_1c
    invoke-virtual {p2}, Lcom/android/launcher3/card/seed/SeedContentResult;->getGuaranteeCards()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_24
    invoke-virtual {p2}, Lcom/android/launcher3/card/seed/SeedContentResult;->getGuaranteeCards()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    if-eqz p0, :cond_37

    invoke-virtual {p2}, Lcom/android/launcher3/card/seed/SeedContentResult;->getGuaranteeCards()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lz2/r;->J(Ljava/util/List;)V

    :cond_37
    return-void
.end method

.method private final get1X2And2X2Position(Ljava/util/List;)[I
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;",
            ">;)[I"
        }
    .end annotation

    const/4 p0, 0x2

    new-array p0, p0, [I

    fill-array-data p0, :array_50

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, -0x1

    add-int/2addr v0, v1

    if-ltz v0, :cond_4f

    const/4 v2, 0x0

    move v3, v2

    :goto_10
    add-int/lit8 v4, v3, 0x1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->isSupportSize(I)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_2f

    aget v5, p0, v2

    if-ne v5, v1, :cond_27

    aput v3, p0, v2

    goto :goto_2f

    :cond_27
    aget v5, p0, v2

    aget v7, p0, v6

    if-ne v5, v7, :cond_2f

    aput v3, p0, v2

    :cond_2f
    :goto_2f
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;

    invoke-virtual {v5, v6}, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->isSupportSize(I)Z

    move-result v5

    if-eqz v5, :cond_4a

    aget v5, p0, v6

    if-ne v5, v1, :cond_42

    aput v3, p0, v6

    goto :goto_4a

    :cond_42
    aget v5, p0, v2

    aget v7, p0, v6

    if-ne v5, v7, :cond_4a

    aput v3, p0, v6

    :cond_4a
    :goto_4a
    if-le v4, v0, :cond_4d

    goto :goto_4f

    :cond_4d
    move v3, v4

    goto :goto_10

    :cond_4f
    :goto_4f
    return-object p0

    :array_50
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method private final handleResolveCardFor0(Lcom/android/launcher3/card/seed/SeedContentResult;)V
    .registers 4

    const-string v0, "SeedContentPolicy"

    const-string v1, "handleResolveCardFor0"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/launcher3/card/seed/SeedContentPolicy;->fillWithReserveCard(Lcom/android/launcher3/card/seed/SeedContentResult;)V

    return-void
.end method

.method private final handleResolveCardFor1(Ljava/util/List;Lcom/android/launcher3/card/seed/SeedContentResult;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;",
            ">;",
            "Lcom/android/launcher3/card/seed/SeedContentResult;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;

    invoke-virtual {p1}, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->getSupportCardSizes()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-virtual {p2}, Lcom/android/launcher3/card/seed/SeedContentResult;->getServicesInfo()Lcom/android/launcher3/util/IntSparseArrayMap;

    move-result-object v1

    new-instance v3, Lcom/android/launcher3/card/seed/SelectedServiceInfo;

    invoke-direct {v3, v2, p1}, Lcom/android/launcher3/card/seed/SelectedServiceInfo;-><init>(ILcom/oplus/seedling/sdk/recommendlist/ServiceInfo;)V

    invoke-virtual {v1, v0, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_48

    :cond_23
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-virtual {p2}, Lcom/android/launcher3/card/seed/SeedContentResult;->getServicesInfo()Lcom/android/launcher3/util/IntSparseArrayMap;

    move-result-object v1

    new-instance v3, Lcom/android/launcher3/card/seed/SelectedServiceInfo;

    invoke-direct {v3, v2, p1}, Lcom/android/launcher3/card/seed/SelectedServiceInfo;-><init>(ILcom/oplus/seedling/sdk/recommendlist/ServiceInfo;)V

    invoke-virtual {v1, v0, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_48

    :cond_3b
    invoke-virtual {p2}, Lcom/android/launcher3/card/seed/SeedContentResult;->getServicesInfo()Lcom/android/launcher3/util/IntSparseArrayMap;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/card/seed/SelectedServiceInfo;

    const/4 v3, 0x5

    invoke-direct {v1, v3, p1}, Lcom/android/launcher3/card/seed/SelectedServiceInfo;-><init>(ILcom/oplus/seedling/sdk/recommendlist/ServiceInfo;)V

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_48
    invoke-static {p2}, Lcom/android/launcher3/card/seed/SeedEntranceHelper;->hasSufficientItem(Lcom/android/launcher3/card/seed/SeedContentResult;)Z

    move-result p1

    if-eqz p1, :cond_4f

    return-void

    :cond_4f
    invoke-direct {p0, p2}, Lcom/android/launcher3/card/seed/SeedContentPolicy;->fillWithReserveCard(Lcom/android/launcher3/card/seed/SeedContentResult;)V

    return-void
.end method

.method private final handleResolveCardFor2(Ljava/util/List;Lcom/android/launcher3/card/seed/SeedContentResult;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;",
            ">;",
            "Lcom/android/launcher3/card/seed/SeedContentResult;",
            ")V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "handleResolveCardFor2: servicesInfo.size = "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SeedContentPolicy"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;

    invoke-virtual {v1}, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->getSupportCardSizes()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7c

    invoke-virtual {v4}, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->getSupportCardSizes()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_52

    invoke-virtual {p2}, Lcom/android/launcher3/card/seed/SeedContentResult;->getServicesInfo()Lcom/android/launcher3/util/IntSparseArrayMap;

    move-result-object p1

    new-instance v3, Lcom/android/launcher3/card/seed/SelectedServiceInfo;

    invoke-direct {v3, v2, v1}, Lcom/android/launcher3/card/seed/SelectedServiceInfo;-><init>(ILcom/oplus/seedling/sdk/recommendlist/ServiceInfo;)V

    invoke-virtual {p1, v0, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {p2}, Lcom/android/launcher3/card/seed/SeedContentResult;->getServicesInfo()Lcom/android/launcher3/util/IntSparseArrayMap;

    move-result-object p1

    new-instance v0, Lcom/android/launcher3/card/seed/SelectedServiceInfo;

    invoke-direct {v0, v2, v4}, Lcom/android/launcher3/card/seed/SelectedServiceInfo;-><init>(ILcom/oplus/seedling/sdk/recommendlist/ServiceInfo;)V

    invoke-virtual {p1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_6d

    :cond_52
    invoke-virtual {v1}, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->getSupportCardSizes()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_78

    invoke-virtual {p2}, Lcom/android/launcher3/card/seed/SeedContentResult;->getServicesInfo()Lcom/android/launcher3/util/IntSparseArrayMap;

    move-result-object p1

    new-instance v2, Lcom/android/launcher3/card/seed/SelectedServiceInfo;

    invoke-direct {v2, v3, v1}, Lcom/android/launcher3/card/seed/SelectedServiceInfo;-><init>(ILcom/oplus/seedling/sdk/recommendlist/ServiceInfo;)V

    invoke-virtual {p1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_6d
    invoke-static {p2}, Lcom/android/launcher3/card/seed/SeedEntranceHelper;->hasSufficientItem(Lcom/android/launcher3/card/seed/SeedContentResult;)Z

    move-result p1

    if-eqz p1, :cond_74

    return-void

    :cond_74
    invoke-direct {p0, p2}, Lcom/android/launcher3/card/seed/SeedContentPolicy;->fillWithReserveCard(Lcom/android/launcher3/card/seed/SeedContentResult;)V

    return-void

    :cond_78
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/card/seed/SeedContentPolicy;->handleResolveCardForMore(Ljava/util/List;Lcom/android/launcher3/card/seed/SeedContentResult;)V

    return-void

    :cond_7c
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/card/seed/SeedContentPolicy;->handleResolveCardForMore(Ljava/util/List;Lcom/android/launcher3/card/seed/SeedContentResult;)V

    return-void
.end method

.method private final handleResolveCardForMore(Ljava/util/List;Lcom/android/launcher3/card/seed/SeedContentResult;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;",
            ">;",
            "Lcom/android/launcher3/card/seed/SeedContentResult;",
            ")V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "handleResolveCardForMore: servicesInfo.size = "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SeedContentPolicy"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableIterator(Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/launcher3/card/seed/SeedContentResult;->getServicesInfo()Lcom/android/launcher3/util/IntSparseArrayMap;

    move-result-object v2

    :cond_1f
    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1a3

    invoke-static {p2}, Lcom/android/launcher3/card/seed/SeedEntranceHelper;->hasSufficientItem(Lcom/android/launcher3/card/seed/SeedContentResult;)Z

    move-result v3

    if-eqz v3, :cond_2c

    return-void

    :cond_2c
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;

    invoke-static {v3}, Lcom/android/launcher3/card/seed/SeedEntranceHelper;->disableSeedlingCard(Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;)Z

    move-result v4

    if-eqz v4, :cond_3c

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_1f

    :cond_3c
    invoke-virtual {v2}, Lcom/android/launcher3/util/IntSparseArrayMap;->isEmpty()Z

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x5

    const/4 v8, 0x1

    if-eqz v4, :cond_89

    invoke-virtual {v3, v8}, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->isSupportSize(I)Z

    move-result v4

    if-eqz v4, :cond_5b

    new-instance v1, Lcom/android/launcher3/card/seed/SelectedServiceInfo;

    invoke-direct {v1, v8, v3}, Lcom/android/launcher3/card/seed/SelectedServiceInfo;-><init>(ILcom/oplus/seedling/sdk/recommendlist/ServiceInfo;)V

    invoke-virtual {v2, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/card/seed/SeedContentPolicy;->handleResolveCardForMore(Ljava/util/List;Lcom/android/launcher3/card/seed/SeedContentResult;)V

    return-void

    :cond_5b
    invoke-virtual {v3, v5}, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->isSupportSize(I)Z

    move-result v4

    if-eqz v4, :cond_6a

    new-instance p0, Lcom/android/launcher3/card/seed/SelectedServiceInfo;

    invoke-direct {p0, v5, v3}, Lcom/android/launcher3/card/seed/SelectedServiceInfo;-><init>(ILcom/oplus/seedling/sdk/recommendlist/ServiceInfo;)V

    invoke-virtual {v2, v6, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void

    :cond_6a
    invoke-virtual {v3, v7}, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->isSupportSize(I)Z

    move-result v4

    if-eqz v4, :cond_7f

    new-instance v1, Lcom/android/launcher3/card/seed/SelectedServiceInfo;

    invoke-direct {v1, v7, v3}, Lcom/android/launcher3/card/seed/SelectedServiceInfo;-><init>(ILcom/oplus/seedling/sdk/recommendlist/ServiceInfo;)V

    invoke-virtual {v2, v8, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/card/seed/SeedContentPolicy;->handleResolveCardForMore(Ljava/util/List;Lcom/android/launcher3/card/seed/SeedContentResult;)V

    return-void

    :cond_7f
    const-string v4, "handleResolveCardForMore, support size error: "

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1f

    :cond_89
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ne v4, v8, :cond_166

    invoke-virtual {v2, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/card/seed/SelectedServiceInfo;

    invoke-direct {p0, p1}, Lcom/android/launcher3/card/seed/SeedContentPolicy;->checkRemainingScenes(Ljava/util/List;)I

    move-result v9

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v10

    if-eqz v10, :cond_a4

    const-string v10, "handleResolveCardForMore scenes = "

    invoke-static {v9, v10, v1}, Lcom/android/common/config/f;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_a4
    invoke-virtual {v4}, Lcom/android/launcher3/card/seed/SelectedServiceInfo;->getSelectedSize()I

    move-result v4

    if-eq v4, v8, :cond_119

    if-eq v4, v7, :cond_ae

    goto/16 :goto_1f

    :cond_ae
    and-int/lit8 v4, v9, 0x8

    if-eqz v4, :cond_e1

    invoke-direct {p0, p1}, Lcom/android/launcher3/card/seed/SeedContentPolicy;->get1X2And2X2Position(Ljava/util/List;)[I

    move-result-object v0

    aget v3, v0, v6

    const/4 v4, -0x1

    if-eq v3, v4, :cond_cb

    new-instance v3, Lcom/android/launcher3/card/seed/SelectedServiceInfo;

    aget v9, v0, v6

    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;

    invoke-direct {v3, v7, v9}, Lcom/android/launcher3/card/seed/SelectedServiceInfo;-><init>(ILcom/oplus/seedling/sdk/recommendlist/ServiceInfo;)V

    invoke-virtual {v2, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_cb
    aget v3, v0, v8

    if-eq v3, v4, :cond_1a3

    new-instance v3, Lcom/android/launcher3/card/seed/SelectedServiceInfo;

    aget v0, v0, v8

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;

    invoke-direct {v3, v8, p1}, Lcom/android/launcher3/card/seed/SelectedServiceInfo;-><init>(ILcom/oplus/seedling/sdk/recommendlist/ServiceInfo;)V

    invoke-virtual {v2, v6, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_1a3

    :cond_e1
    and-int/lit8 v4, v9, 0x2

    if-eqz v4, :cond_fa

    invoke-virtual {v3, v7}, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->isSupportSize(I)Z

    move-result v4

    if-eqz v4, :cond_1f

    new-instance v1, Lcom/android/launcher3/card/seed/SelectedServiceInfo;

    invoke-direct {v1, v7, v3}, Lcom/android/launcher3/card/seed/SelectedServiceInfo;-><init>(ILcom/oplus/seedling/sdk/recommendlist/ServiceInfo;)V

    invoke-virtual {v2, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/card/seed/SeedContentPolicy;->handleResolveCardForMore(Ljava/util/List;Lcom/android/launcher3/card/seed/SeedContentResult;)V

    return-void

    :cond_fa
    and-int/lit8 v4, v9, 0x4

    if-eqz v4, :cond_113

    invoke-virtual {v3, v8}, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->isSupportSize(I)Z

    move-result v4

    if-eqz v4, :cond_1f

    new-instance v1, Lcom/android/launcher3/card/seed/SelectedServiceInfo;

    invoke-direct {v1, v8, v3}, Lcom/android/launcher3/card/seed/SelectedServiceInfo;-><init>(ILcom/oplus/seedling/sdk/recommendlist/ServiceInfo;)V

    invoke-virtual {v2, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/card/seed/SeedContentPolicy;->handleResolveCardForMore(Ljava/util/List;Lcom/android/launcher3/card/seed/SeedContentResult;)V

    return-void

    :cond_113
    and-int/lit8 v3, v9, 0x1

    if-eqz v3, :cond_1f

    goto/16 :goto_1a3

    :cond_119
    and-int/lit8 v4, v9, 0x10

    if-eqz v4, :cond_132

    invoke-virtual {v3, v7}, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->isSupportSize(I)Z

    move-result v4

    if-eqz v4, :cond_1f

    new-instance v1, Lcom/android/launcher3/card/seed/SelectedServiceInfo;

    invoke-direct {v1, v7, v3}, Lcom/android/launcher3/card/seed/SelectedServiceInfo;-><init>(ILcom/oplus/seedling/sdk/recommendlist/ServiceInfo;)V

    invoke-virtual {v2, v8, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/card/seed/SeedContentPolicy;->handleResolveCardForMore(Ljava/util/List;Lcom/android/launcher3/card/seed/SeedContentResult;)V

    return-void

    :cond_132
    and-int/lit8 v4, v9, 0x4

    if-eqz v4, :cond_148

    invoke-virtual {v3, v8}, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->isSupportSize(I)Z

    move-result v4

    if-eqz v4, :cond_1f

    new-instance p0, Lcom/android/launcher3/card/seed/SelectedServiceInfo;

    invoke-direct {p0, v8, v3}, Lcom/android/launcher3/card/seed/SelectedServiceInfo;-><init>(ILcom/oplus/seedling/sdk/recommendlist/ServiceInfo;)V

    invoke-virtual {v2, v8, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void

    :cond_148
    and-int/lit8 v4, v9, 0x2

    if-eqz v4, :cond_161

    invoke-virtual {v3, v7}, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->isSupportSize(I)Z

    move-result v4

    if-eqz v4, :cond_1f

    new-instance v1, Lcom/android/launcher3/card/seed/SelectedServiceInfo;

    invoke-direct {v1, v7, v3}, Lcom/android/launcher3/card/seed/SelectedServiceInfo;-><init>(ILcom/oplus/seedling/sdk/recommendlist/ServiceInfo;)V

    invoke-virtual {v2, v8, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/card/seed/SeedContentPolicy;->handleResolveCardForMore(Ljava/util/List;Lcom/android/launcher3/card/seed/SeedContentResult;)V

    return-void

    :cond_161
    and-int/lit8 v3, v9, 0x1

    if-eqz v3, :cond_1f

    goto :goto_1a3

    :cond_166
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ne v4, v5, :cond_1f

    invoke-virtual {v2, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/card/seed/SelectedServiceInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/card/seed/SelectedServiceInfo;->getSelectedSize()I

    move-result v4

    if-eq v4, v8, :cond_194

    invoke-virtual {v2, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/card/seed/SelectedServiceInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/card/seed/SelectedServiceInfo;->getSelectedSize()I

    move-result v4

    if-ne v4, v8, :cond_185

    goto :goto_194

    :cond_185
    invoke-virtual {v3, v8}, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->isSupportSize(I)Z

    move-result v4

    if-eqz v4, :cond_1f

    new-instance p0, Lcom/android/launcher3/card/seed/SelectedServiceInfo;

    invoke-direct {p0, v8, v3}, Lcom/android/launcher3/card/seed/SelectedServiceInfo;-><init>(ILcom/oplus/seedling/sdk/recommendlist/ServiceInfo;)V

    invoke-virtual {v2, v6, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void

    :cond_194
    :goto_194
    invoke-virtual {v3, v7}, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->isSupportSize(I)Z

    move-result v4

    if-eqz v4, :cond_1f

    new-instance p0, Lcom/android/launcher3/card/seed/SelectedServiceInfo;

    invoke-direct {p0, v7, v3}, Lcom/android/launcher3/card/seed/SelectedServiceInfo;-><init>(ILcom/oplus/seedling/sdk/recommendlist/ServiceInfo;)V

    invoke-virtual {v2, v5, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void

    :cond_1a3
    :goto_1a3
    invoke-static {p2}, Lcom/android/launcher3/card/seed/SeedEntranceHelper;->hasSufficientItem(Lcom/android/launcher3/card/seed/SeedContentResult;)Z

    move-result p1

    if-eqz p1, :cond_1aa

    return-void

    :cond_1aa
    iget-boolean p1, p0, Lcom/android/launcher3/card/seed/SeedContentPolicy;->withReserveCard:Z

    if-nez p1, :cond_1b2

    invoke-direct {p0, p2}, Lcom/android/launcher3/card/seed/SeedContentPolicy;->fillWithReserveCard(Lcom/android/launcher3/card/seed/SeedContentResult;)V

    goto :goto_1d3

    :cond_1b2
    const-string p1, "handleResolveCardForMore, have NOT find sufficient card for recommend! , withReserveCard = "

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean p0, p0, Lcom/android/launcher3/card/seed/SeedContentPolicy;->withReserveCard:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", SUPPORT_FILL_CARD_LOCAL = false contentResult = "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/android/launcher3/card/seed/SeedContentResult;->getServicesInfo()Lcom/android/launcher3/util/IntSparseArrayMap;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    :goto_1d3
    return-void
.end method

.method private final rejectWithCellLayout(Lcom/android/launcher3/CellLayout;Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/CellLayout;",
            "Ljava/util/List<",
            "Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/android/launcher3/card/seed/SeedContentPolicy;->addedCards:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget-object v0, Lcom/android/launcher3/card/IAreaWidget$WIDGET_TYPE;->CARD:Lcom/android/launcher3/card/IAreaWidget$WIDGET_TYPE;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/CellLayout;->getAreaWidgets(Lcom/android/launcher3/card/IAreaWidget$WIDGET_TYPE;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_19

    iget-object v2, p0, Lcom/android/launcher3/card/seed/SeedContentPolicy;->addedCards:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_19
    invoke-static {p1}, Lcom/android/launcher3/card/seed/SeedEntranceHelper;->getNeighborPage(Lcom/android/launcher3/CellLayout;)Lcom/android/launcher3/CellLayout;

    move-result-object p1

    if-nez p1, :cond_20

    goto :goto_2d

    :cond_20
    invoke-virtual {p1, v0}, Lcom/android/launcher3/CellLayout;->getAreaWidgets(Lcom/android/launcher3/card/IAreaWidget$WIDGET_TYPE;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2d

    invoke-virtual {p0}, Lcom/android/launcher3/card/seed/SeedContentPolicy;->getAddedCards()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2d
    :goto_2d
    sget-object p1, Lcom/android/launcher3/card/seed/SeedCardClient;->INSTANCE:Lcom/android/launcher3/card/seed/SeedCardClient;

    invoke-virtual {p1}, Lcom/android/launcher3/card/seed/SeedCardClient;->getExtraDataRuleSource()Lcom/android/launcher3/card/seed/ExtraDataRuleSource;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/card/seed/ExtraDataRuleSource;->getAnalogousCards()Ljava/util/List;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher3/card/seed/SeedContentPolicy;->addedCards:Ljava/util/List;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_bd

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/card/LauncherCardView;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableIterator(Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v1

    :cond_51
    :goto_51
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;

    invoke-virtual {v2}, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->getServiceId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, "SeedContentPolicy"

    const/4 v5, 0x0

    if-nez v3, :cond_90

    invoke-virtual {v0}, Lcom/android/launcher3/card/LauncherCardView;->getItemInfo()Lcom/android/launcher3/card/LauncherCardInfo;

    move-result-object v3

    if-nez v3, :cond_72

    move-object v3, v5

    goto :goto_74

    :cond_72
    iget-object v3, v3, Lcom/android/launcher3/card/LauncherCardInfo;->mServiceId:Ljava/lang/String;

    :goto_74
    invoke-virtual {v2}, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->getServiceId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_90

    invoke-virtual {v2}, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->getServiceId()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "rejectWithCellLayout, same serviceId: "

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_51

    :cond_90
    if-eqz p1, :cond_51

    invoke-virtual {v0}, Lcom/android/launcher3/card/LauncherCardView;->getItemInfo()Lcom/android/launcher3/card/LauncherCardInfo;

    move-result-object v3

    if-nez v3, :cond_9a

    const/4 v3, -0x1

    goto :goto_9c

    :cond_9a
    iget v3, v3, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    :goto_9c
    invoke-static {p1, v3, v2}, Lcom/android/launcher3/card/seed/SeedEntranceHelper;->isAnalogousCard(Ljava/util/List;ILcom/oplus/seedling/sdk/recommendlist/ServiceInfo;)Z

    move-result v2

    if-eqz v2, :cond_51

    invoke-virtual {v0}, Lcom/android/launcher3/card/LauncherCardView;->getItemInfo()Lcom/android/launcher3/card/LauncherCardInfo;

    move-result-object v2

    if-nez v2, :cond_a9

    goto :goto_af

    :cond_a9
    iget v2, v2, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :goto_af
    const-string/jumbo v2, "rejectWithCellLayout, same cardType: "

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_51

    :cond_bd
    return-void
.end method


# virtual methods
.method public final getAddedCards()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/launcher3/card/LauncherCardView;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/card/seed/SeedContentPolicy;->addedCards:Ljava/util/List;

    return-object p0
.end method

.method public final getTotalSize()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/card/seed/SeedContentPolicy;->totalSize:I

    return p0
.end method

.method public final getWithReserveCard()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/card/seed/SeedContentPolicy;->withReserveCard:Z

    return p0
.end method

.method public final resolveServiceInfo(Ljava/util/List;Lcom/android/launcher3/CellLayout;)Lcom/android/launcher3/card/seed/SeedContentResult;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;",
            ">;",
            "Lcom/android/launcher3/CellLayout;",
            ")",
            "Lcom/android/launcher3/card/seed/SeedContentResult;"
        }
    .end annotation

    new-instance v0, Lcom/android/launcher3/card/seed/SeedContentResult;

    new-instance v1, Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-direct {v1}, Lcom/android/launcher3/util/IntSparseArrayMap;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/launcher3/card/seed/SeedContentResult;-><init>(Lcom/android/launcher3/util/IntSparseArrayMap;)V

    const-string v1, "SeedContentPolicy"

    if-nez p1, :cond_15

    const-string/jumbo p0, "resolveServiceInfo, info is null"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_15
    if-nez p2, :cond_1d

    sget-object p2, Lcom/android/launcher3/card/uscard/USCardManager;->INSTANCE:Lcom/android/launcher3/card/uscard/USCardManager;

    invoke-virtual {p2}, Lcom/android/launcher3/card/uscard/USCardManager;->getCellLayoutParent()Lcom/android/launcher3/CellLayout;

    move-result-object p2

    :cond_1d
    if-nez p2, :cond_20

    goto :goto_23

    :cond_20
    invoke-direct {p0, p2, p1}, Lcom/android/launcher3/card/seed/SeedContentPolicy;->rejectWithCellLayout(Lcom/android/launcher3/CellLayout;Ljava/util/List;)V

    :goto_23
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string/jumbo v2, "resolveServiceInfo servicesInfo\'s size = "

    invoke-static {v2, p2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    iput p2, p0, Lcom/android/launcher3/card/seed/SeedContentPolicy;->totalSize:I

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/card/seed/SeedContentPolicy;->filterGuaranteeCards(Ljava/util/List;Lcom/android/launcher3/card/seed/SeedContentResult;)V

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_48

    invoke-direct {p0, v0}, Lcom/android/launcher3/card/seed/SeedContentPolicy;->handleResolveCardFor0(Lcom/android/launcher3/card/seed/SeedContentResult;)V

    goto :goto_6e

    :cond_48
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const/4 v2, 0x1

    if-ne p2, v2, :cond_53

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/card/seed/SeedContentPolicy;->handleResolveCardFor1(Ljava/util/List;Lcom/android/launcher3/card/seed/SeedContentResult;)V

    goto :goto_6e

    :cond_53
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const/4 v2, 0x2

    if-ne p2, v2, :cond_5e

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/card/seed/SeedContentPolicy;->handleResolveCardFor2(Ljava/util/List;Lcom/android/launcher3/card/seed/SeedContentResult;)V

    goto :goto_6e

    :cond_5e
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-le p2, v2, :cond_68

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/card/seed/SeedContentPolicy;->handleResolveCardForMore(Ljava/util/List;Lcom/android/launcher3/card/seed/SeedContentResult;)V

    goto :goto_6e

    :cond_68
    const-string/jumbo p0, "resolveServiceInfo, check why?"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_6e
    invoke-virtual {v0}, Lcom/android/launcher3/card/seed/SeedContentResult;->getServicesInfo()Lcom/android/launcher3/util/IntSparseArrayMap;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher3/card/seed/SeedEntranceHelper;->isAnyInvalidOfSelectedInfos(Lcom/android/launcher3/util/IntSparseArrayMap;)Z

    move-result p0

    if-eqz p0, :cond_85

    const-string/jumbo p0, "resolveServiceInfo, isAnyInvalidOfSelectedInfos"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->usDebug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/launcher3/card/seed/SeedContentResult;->getServicesInfo()Lcom/android/launcher3/util/IntSparseArrayMap;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    :cond_85
    const-string/jumbo p0, "resolveServiceInfo, contentResult = "

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->usDebug(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final setAddedCards(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/card/LauncherCardView;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher3/card/seed/SeedContentPolicy;->addedCards:Ljava/util/List;

    return-void
.end method

.method public final setTotalSize(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/card/seed/SeedContentPolicy;->totalSize:I

    return-void
.end method

.method public final setWithReserveCard(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/card/seed/SeedContentPolicy;->withReserveCard:Z

    return-void
.end method
