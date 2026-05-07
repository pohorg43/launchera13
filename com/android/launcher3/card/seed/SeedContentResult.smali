.class public final Lcom/android/launcher3/card/seed/SeedContentResult;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private guaranteeCards:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private guaranteeRefreshed:Z

.field private needDoGuarantee:Z

.field private servicesInfo:Lcom/android/launcher3/util/IntSparseArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/IntSparseArrayMap<",
            "Lcom/android/launcher3/card/seed/SelectedServiceInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/launcher3/util/IntSparseArrayMap;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/util/IntSparseArrayMap<",
            "Lcom/android/launcher3/card/seed/SelectedServiceInfo;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "servicesInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/card/seed/SeedContentResult;->servicesInfo:Lcom/android/launcher3/util/IntSparseArrayMap;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/card/seed/SeedContentResult;->guaranteeCards:Ljava/util/List;

    return-void
.end method

.method public static synthetic copy$default(Lcom/android/launcher3/card/seed/SeedContentResult;Lcom/android/launcher3/util/IntSparseArrayMap;ILjava/lang/Object;)Lcom/android/launcher3/card/seed/SeedContentResult;
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    iget-object p1, p0, Lcom/android/launcher3/card/seed/SeedContentResult;->servicesInfo:Lcom/android/launcher3/util/IntSparseArrayMap;

    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/launcher3/card/seed/SeedContentResult;->copy(Lcom/android/launcher3/util/IntSparseArrayMap;)Lcom/android/launcher3/card/seed/SeedContentResult;

    move-result-object p0

    return-object p0
.end method

.method private final getAGuaranteeCardWithSize(I)Lcom/android/launcher3/card/seed/SelectedServiceInfo;
    .registers 8

    iget-object v0, p0, Lcom/android/launcher3/card/seed/SeedContentResult;->guaranteeCards:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_69

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;

    invoke-virtual {p0}, Lcom/android/launcher3/card/seed/SeedContentResult;->getServicesInfo()Lcom/android/launcher3/util/IntSparseArrayMap;

    move-result-object v2

    instance-of v3, v2, Ljava/util/Collection;

    const/4 v4, 0x0

    if-eqz v3, :cond_25

    move-object v3, v2

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_25

    goto :goto_48

    :cond_25
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_29
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_48

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/card/seed/SelectedServiceInfo;

    invoke-virtual {v3}, Lcom/android/launcher3/card/seed/SelectedServiceInfo;->getServiceInfo()Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->getServiceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->getServiceId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_29

    const/4 v4, 0x1

    :cond_48
    :goto_48
    if-nez v4, :cond_6

    invoke-virtual {v1, p1}, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->isSupportSize(I)Z

    move-result v2

    if-eqz v2, :cond_6

    sget-object v2, Lcom/oplus/card/manager/domain/CardManager;->Companion:Lcom/oplus/card/manager/domain/CardManager$Companion;

    invoke-virtual {v2}, Lcom/oplus/card/manager/domain/CardManager$Companion;->getInstance()Lcom/oplus/card/manager/domain/CardManager;

    move-result-object v2

    invoke-virtual {v1}, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->getServiceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Lcom/oplus/card/manager/domain/CardManager;->getSeedCardConfigInfo(Ljava/lang/String;I)Lcom/oplus/card/config/domain/model/CardConfigInfo;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    new-instance p0, Lcom/android/launcher3/card/seed/SelectedServiceInfo;

    invoke-direct {p0, p1, v1}, Lcom/android/launcher3/card/seed/SelectedServiceInfo;-><init>(ILcom/oplus/seedling/sdk/recommendlist/ServiceInfo;)V

    return-object p0

    :cond_69
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/android/launcher3/util/IntSparseArrayMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/launcher3/util/IntSparseArrayMap<",
            "Lcom/android/launcher3/card/seed/SelectedServiceInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/card/seed/SeedContentResult;->servicesInfo:Lcom/android/launcher3/util/IntSparseArrayMap;

    return-object p0
.end method

.method public final copy(Lcom/android/launcher3/util/IntSparseArrayMap;)Lcom/android/launcher3/card/seed/SeedContentResult;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/util/IntSparseArrayMap<",
            "Lcom/android/launcher3/card/seed/SelectedServiceInfo;",
            ">;)",
            "Lcom/android/launcher3/card/seed/SeedContentResult;"
        }
    .end annotation

    const-string/jumbo p0, "servicesInfo"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/android/launcher3/card/seed/SeedContentResult;

    invoke-direct {p0, p1}, Lcom/android/launcher3/card/seed/SeedContentResult;-><init>(Lcom/android/launcher3/util/IntSparseArrayMap;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/android/launcher3/card/seed/SeedContentResult;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/android/launcher3/card/seed/SeedContentResult;

    iget-object p0, p0, Lcom/android/launcher3/card/seed/SeedContentResult;->servicesInfo:Lcom/android/launcher3/util/IntSparseArrayMap;

    iget-object p1, p1, Lcom/android/launcher3/card/seed/SeedContentResult;->servicesInfo:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_17

    return v2

    :cond_17
    return v0
.end method

.method public final getGuaranteeCards()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/card/seed/SeedContentResult;->guaranteeCards:Ljava/util/List;

    return-object p0
.end method

.method public final getGuaranteeRefreshed()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/card/seed/SeedContentResult;->guaranteeRefreshed:Z

    return p0
.end method

.method public final getNeedDoGuarantee()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/card/seed/SeedContentResult;->needDoGuarantee:Z

    return p0
.end method

.method public final getServicesInfo()Lcom/android/launcher3/util/IntSparseArrayMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/launcher3/util/IntSparseArrayMap<",
            "Lcom/android/launcher3/card/seed/SelectedServiceInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/card/seed/SeedContentResult;->servicesInfo:Lcom/android/launcher3/util/IntSparseArrayMap;

    return-object p0
.end method

.method public hashCode()I
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/seed/SeedContentResult;->servicesInfo:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {p0}, Landroid/util/SparseArray;->hashCode()I

    move-result p0

    return p0
.end method

.method public final replaceWithRank(I)V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/card/seed/SeedContentResult;->servicesInfo:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/card/seed/SelectedServiceInfo;

    if-nez v0, :cond_b

    goto :goto_21

    :cond_b
    invoke-virtual {v0}, Lcom/android/launcher3/card/seed/SelectedServiceInfo;->getSelectedSize()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/card/seed/SeedContentResult;->getAGuaranteeCardWithSize(I)Lcom/android/launcher3/card/seed/SelectedServiceInfo;

    move-result-object v0

    if-nez v0, :cond_16

    goto :goto_21

    :cond_16
    invoke-virtual {p0}, Lcom/android/launcher3/card/seed/SeedContentResult;->getServicesInfo()Lcom/android/launcher3/util/IntSparseArrayMap;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/card/seed/SeedContentResult;->setNeedDoGuarantee(Z)V

    :goto_21
    return-void
.end method

.method public final setGuaranteeCards(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher3/card/seed/SeedContentResult;->guaranteeCards:Ljava/util/List;

    return-void
.end method

.method public final setGuaranteeRefreshed(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/card/seed/SeedContentResult;->guaranteeRefreshed:Z

    return-void
.end method

.method public final setNeedDoGuarantee(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/card/seed/SeedContentResult;->needDoGuarantee:Z

    return-void
.end method

.method public final setServicesInfo(Lcom/android/launcher3/util/IntSparseArrayMap;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/util/IntSparseArrayMap<",
            "Lcom/android/launcher3/card/seed/SelectedServiceInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher3/card/seed/SeedContentResult;->servicesInfo:Lcom/android/launcher3/util/IntSparseArrayMap;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const-string v0, "ServicesInfo: "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/card/seed/SeedContentResult;->getServicesInfo()Lcom/android/launcher3/util/IntSparseArrayMap;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/card/seed/SelectedServiceInfo;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_e

    :cond_1e
    const-string v1, " ."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/launcher3/card/seed/SeedContentResult;->getGuaranteeCards()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "guaranteeCards size = "

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "StringBuilder().apply {\n…e}\")\n        }.toString()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
