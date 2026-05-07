.class public final Lcom/android/launcher3/card/seed/SeedParams;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final cardSize:I

.field private category:I

.field private createType:I

.field private final initData:Ljava/lang/String;

.field private pageIdGetter:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private reduceDisable:Z

.field private final serviceId:Ljava/lang/String;

.field private upkVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/card/LauncherCardInfo;)V
    .registers 14

    const-string v0, "launcherCardInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/android/launcher3/card/LauncherCardInfo;->mServiceId:Ljava/lang/String;

    if-nez v0, :cond_b

    const-string v0, ""

    :cond_b
    move-object v2, v0

    const/4 v3, 0x1

    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-static {v0, v1}, Lcom/android/launcher3/card/seed/SeedEntranceHelper;->getSizeBySpan(II)I

    move-result v4

    iget v5, p1, Lcom/android/launcher3/card/LauncherCardInfo;->mCategory:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xd0

    const/4 v11, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v11}, Lcom/android/launcher3/card/seed/SeedParams;-><init>(Ljava/lang/String;IIILjava/lang/String;Lkotlin/jvm/functions/Function0;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/card/seed/SelectedServiceInfo;)V
    .registers 14

    const-string/jumbo v0, "selectedInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/launcher3/card/seed/SelectedServiceInfo;->getServiceInfo()Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->getServiceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/launcher3/card/seed/SelectedServiceInfo;->getSelectedSize()I

    move-result v4

    invoke-virtual {p1}, Lcom/android/launcher3/card/seed/SelectedServiceInfo;->getServiceInfo()Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->getServiceType()I

    move-result v5

    invoke-virtual {p1}, Lcom/android/launcher3/card/seed/SelectedServiceInfo;->getServiceInfo()Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->getInitData()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/launcher3/card/seed/SelectedServiceInfo;->getServiceInfo()Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->getCannotReduceRecommend()Z

    move-result v9

    const/4 v3, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v10, 0x40

    const/4 v11, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v11}, Lcom/android/launcher3/card/seed/SeedParams;-><init>(Ljava/lang/String;IIILjava/lang/String;Lkotlin/jvm/functions/Function0;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/oplus/card/config/domain/model/CardConfigInfo;)V
    .registers 14

    const-string v0, "configInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getServiceId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_d

    const-string v0, ""

    :cond_d
    move-object v2, v0

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getSize()I

    move-result v4

    invoke-virtual {p1}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getCategory()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xd0

    const/4 v11, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v11}, Lcom/android/launcher3/card/seed/SeedParams;-><init>(Ljava/lang/String;IIILjava/lang/String;Lkotlin/jvm/functions/Function0;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIILjava/lang/String;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Z)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "III",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    const-string/jumbo v0, "serviceId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/card/seed/SeedParams;->serviceId:Ljava/lang/String;

    iput p2, p0, Lcom/android/launcher3/card/seed/SeedParams;->createType:I

    iput p3, p0, Lcom/android/launcher3/card/seed/SeedParams;->cardSize:I

    iput p4, p0, Lcom/android/launcher3/card/seed/SeedParams;->category:I

    iput-object p5, p0, Lcom/android/launcher3/card/seed/SeedParams;->initData:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/launcher3/card/seed/SeedParams;->pageIdGetter:Lkotlin/jvm/functions/Function0;

    iput-object p7, p0, Lcom/android/launcher3/card/seed/SeedParams;->upkVersion:Ljava/lang/String;

    iput-boolean p8, p0, Lcom/android/launcher3/card/seed/SeedParams;->reduceDisable:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;IIILjava/lang/String;Lkotlin/jvm/functions/Function0;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 23

    move/from16 v0, p9

    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x1

    if-eqz v1, :cond_9

    move v5, v2

    goto :goto_a

    :cond_9
    move v5, p2

    :goto_a
    and-int/lit8 v1, v0, 0x10

    const-string v3, ""

    if-eqz v1, :cond_12

    move-object v8, v3

    goto :goto_14

    :cond_12
    move-object/from16 v8, p5

    :goto_14
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_1a

    move-object v10, v3

    goto :goto_1c

    :cond_1a
    move-object/from16 v10, p7

    :goto_1c
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_22

    move v11, v2

    goto :goto_24

    :cond_22
    move/from16 v11, p8

    :goto_24
    move-object v3, p0

    move-object v4, p1

    move v6, p3

    move/from16 v7, p4

    move-object/from16 v9, p6

    invoke-direct/range {v3 .. v11}, Lcom/android/launcher3/card/seed/SeedParams;-><init>(Ljava/lang/String;IIILjava/lang/String;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/android/launcher3/card/seed/SeedParams;Ljava/lang/String;IIILjava/lang/String;Lkotlin/jvm/functions/Function0;Ljava/lang/String;ZILjava/lang/Object;)Lcom/android/launcher3/card/seed/SeedParams;
    .registers 20

    move-object v0, p0

    move/from16 v1, p9

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_a

    iget-object v2, v0, Lcom/android/launcher3/card/seed/SeedParams;->serviceId:Ljava/lang/String;

    goto :goto_b

    :cond_a
    move-object v2, p1

    :goto_b
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_12

    iget v3, v0, Lcom/android/launcher3/card/seed/SeedParams;->createType:I

    goto :goto_13

    :cond_12
    move v3, p2

    :goto_13
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_1a

    iget v4, v0, Lcom/android/launcher3/card/seed/SeedParams;->cardSize:I

    goto :goto_1b

    :cond_1a
    move v4, p3

    :goto_1b
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_22

    iget v5, v0, Lcom/android/launcher3/card/seed/SeedParams;->category:I

    goto :goto_23

    :cond_22
    move v5, p4

    :goto_23
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_2a

    iget-object v6, v0, Lcom/android/launcher3/card/seed/SeedParams;->initData:Ljava/lang/String;

    goto :goto_2b

    :cond_2a
    move-object v6, p5

    :goto_2b
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_32

    iget-object v7, v0, Lcom/android/launcher3/card/seed/SeedParams;->pageIdGetter:Lkotlin/jvm/functions/Function0;

    goto :goto_33

    :cond_32
    move-object v7, p6

    :goto_33
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_3a

    iget-object v8, v0, Lcom/android/launcher3/card/seed/SeedParams;->upkVersion:Ljava/lang/String;

    goto :goto_3c

    :cond_3a
    move-object/from16 v8, p7

    :goto_3c
    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_43

    iget-boolean v1, v0, Lcom/android/launcher3/card/seed/SeedParams;->reduceDisable:Z

    goto :goto_45

    :cond_43
    move/from16 v1, p8

    :goto_45
    move-object p1, v2

    move p2, v3

    move p3, v4

    move p4, v5

    move-object p5, v6

    move-object p6, v7

    move-object/from16 p7, v8

    move/from16 p8, v1

    invoke-virtual/range {p0 .. p8}, Lcom/android/launcher3/card/seed/SeedParams;->copy(Ljava/lang/String;IIILjava/lang/String;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Z)Lcom/android/launcher3/card/seed/SeedParams;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/seed/SeedParams;->serviceId:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/card/seed/SeedParams;->createType:I

    return p0
.end method

.method public final component3()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/card/seed/SeedParams;->cardSize:I

    return p0
.end method

.method public final component4()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/card/seed/SeedParams;->category:I

    return p0
.end method

.method public final component5()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/seed/SeedParams;->initData:Ljava/lang/String;

    return-object p0
.end method

.method public final component6()Lkotlin/jvm/functions/Function0;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/card/seed/SeedParams;->pageIdGetter:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public final component7()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/seed/SeedParams;->upkVersion:Ljava/lang/String;

    return-object p0
.end method

.method public final component8()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/card/seed/SeedParams;->reduceDisable:Z

    return p0
.end method

.method public final copy(Ljava/lang/String;IIILjava/lang/String;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Z)Lcom/android/launcher3/card/seed/SeedParams;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "III",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/android/launcher3/card/seed/SeedParams;"
        }
    .end annotation

    const-string/jumbo v0, "serviceId"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/android/launcher3/card/seed/SeedParams;

    move-object v1, v0

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lcom/android/launcher3/card/seed/SeedParams;-><init>(Ljava/lang/String;IIILjava/lang/String;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/android/launcher3/card/seed/SeedParams;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/android/launcher3/card/seed/SeedParams;

    iget-object v1, p0, Lcom/android/launcher3/card/seed/SeedParams;->serviceId:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/launcher3/card/seed/SeedParams;->serviceId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget v1, p0, Lcom/android/launcher3/card/seed/SeedParams;->createType:I

    iget v3, p1, Lcom/android/launcher3/card/seed/SeedParams;->createType:I

    if-eq v1, v3, :cond_1e

    return v2

    :cond_1e
    iget v1, p0, Lcom/android/launcher3/card/seed/SeedParams;->cardSize:I

    iget v3, p1, Lcom/android/launcher3/card/seed/SeedParams;->cardSize:I

    if-eq v1, v3, :cond_25

    return v2

    :cond_25
    iget v1, p0, Lcom/android/launcher3/card/seed/SeedParams;->category:I

    iget v3, p1, Lcom/android/launcher3/card/seed/SeedParams;->category:I

    if-eq v1, v3, :cond_2c

    return v2

    :cond_2c
    iget-object v1, p0, Lcom/android/launcher3/card/seed/SeedParams;->initData:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/launcher3/card/seed/SeedParams;->initData:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_37

    return v2

    :cond_37
    iget-object v1, p0, Lcom/android/launcher3/card/seed/SeedParams;->pageIdGetter:Lkotlin/jvm/functions/Function0;

    iget-object v3, p1, Lcom/android/launcher3/card/seed/SeedParams;->pageIdGetter:Lkotlin/jvm/functions/Function0;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_42

    return v2

    :cond_42
    iget-object v1, p0, Lcom/android/launcher3/card/seed/SeedParams;->upkVersion:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/launcher3/card/seed/SeedParams;->upkVersion:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4d

    return v2

    :cond_4d
    iget-boolean p0, p0, Lcom/android/launcher3/card/seed/SeedParams;->reduceDisable:Z

    iget-boolean p1, p1, Lcom/android/launcher3/card/seed/SeedParams;->reduceDisable:Z

    if-eq p0, p1, :cond_54

    return v2

    :cond_54
    return v0
.end method

.method public final getCardSize()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/card/seed/SeedParams;->cardSize:I

    return p0
.end method

.method public final getCategory()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/card/seed/SeedParams;->category:I

    return p0
.end method

.method public final getCreateType()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/card/seed/SeedParams;->createType:I

    return p0
.end method

.method public final getInitData()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/seed/SeedParams;->initData:Ljava/lang/String;

    return-object p0
.end method

.method public final getPageIdGetter()Lkotlin/jvm/functions/Function0;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/card/seed/SeedParams;->pageIdGetter:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public final getReduceDisable()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/card/seed/SeedParams;->reduceDisable:Z

    return p0
.end method

.method public final getServiceId()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/seed/SeedParams;->serviceId:Ljava/lang/String;

    return-object p0
.end method

.method public final getUpkVersion()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/seed/SeedParams;->upkVersion:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/card/seed/SeedParams;->serviceId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/launcher3/card/seed/SeedParams;->createType:I

    const/16 v2, 0x1f

    invoke-static {v1, v0, v2}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/card/seed/SeedParams;->cardSize:I

    invoke-static {v1, v0, v2}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/card/seed/SeedParams;->category:I

    invoke-static {v1, v0, v2}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/card/seed/SeedParams;->initData:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_23

    move v1, v2

    goto :goto_27

    :cond_23
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_27
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/launcher3/card/seed/SeedParams;->pageIdGetter:Lkotlin/jvm/functions/Function0;

    if-nez v1, :cond_30

    move v1, v2

    goto :goto_34

    :cond_30
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_34
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/launcher3/card/seed/SeedParams;->upkVersion:Ljava/lang/String;

    if-nez v1, :cond_3c

    goto :goto_40

    :cond_3c
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_40
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean p0, p0, Lcom/android/launcher3/card/seed/SeedParams;->reduceDisable:Z

    if-eqz p0, :cond_48

    const/4 p0, 0x1

    :cond_48
    add-int/2addr v0, p0

    return v0
.end method

.method public final setCategory(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/card/seed/SeedParams;->category:I

    return-void
.end method

.method public final setCreateType(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/card/seed/SeedParams;->createType:I

    return-void
.end method

.method public final setPageIdGetter(Lkotlin/jvm/functions/Function0;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/launcher3/card/seed/SeedParams;->pageIdGetter:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final setReduceDisable(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/card/seed/SeedParams;->reduceDisable:Z

    return-void
.end method

.method public final setUpkVersion(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/card/seed/SeedParams;->upkVersion:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "SeedParams(serviceId="

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/card/seed/SeedParams;->serviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", createType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/card/seed/SeedParams;->createType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cardSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/card/seed/SeedParams;->cardSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", category="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/card/seed/SeedParams;->category:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", initData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/card/seed/SeedParams;->initData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", pageIdGetter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/card/seed/SeedParams;->pageIdGetter:Lkotlin/jvm/functions/Function0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", upkVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/card/seed/SeedParams;->upkVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", reduceDisable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/launcher3/card/seed/SeedParams;->reduceDisable:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final updateCreateType(I)Lcom/android/launcher3/card/seed/SeedParams;
    .registers 2

    iput p1, p0, Lcom/android/launcher3/card/seed/SeedParams;->createType:I

    return-object p0
.end method
