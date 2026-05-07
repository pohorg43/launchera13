.class public final Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private allowUIBackground:Z

.field private cardSize:I

.field private cardSizeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private extraData:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private initData:Ljava/lang/String;

.field private final isAbnormal:Z

.field private isEntranceTriggerCardClick:Z

.field private isSubscribe:Z

.field private serviceId:Ljava/lang/String;

.field private timestamp:J


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;ZJ)V
    .registers 22

    const-string v0, "serviceId"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lz2/u;->a:Lz2/u;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x300

    const/4 v14, 0x0

    move-object v1, p0

    move/from16 v3, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move-wide/from16 v7, p5

    invoke-direct/range {v1 .. v14}, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;-><init>(Ljava/lang/String;ILjava/util/List;Ljava/lang/String;ZJZLandroid/util/ArrayMap;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/util/List;Ljava/lang/String;ZJZLandroid/util/ArrayMap;ZZ)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "ZJZ",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;ZZ)V"
        }
    .end annotation

    const-string v0, "serviceId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cardSizeList"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->serviceId:Ljava/lang/String;

    iput p2, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->cardSize:I

    iput-object p3, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->cardSizeList:Ljava/util/List;

    iput-object p4, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->initData:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->allowUIBackground:Z

    iput-wide p6, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->timestamp:J

    iput-boolean p8, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->isSubscribe:Z

    iput-object p9, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->extraData:Landroid/util/ArrayMap;

    iput-boolean p10, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->isAbnormal:Z

    iput-boolean p11, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->isEntranceTriggerCardClick:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILjava/util/List;Ljava/lang/String;ZJZLandroid/util/ArrayMap;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 29

    move/from16 v0, p12

    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    move v5, v2

    goto :goto_b

    :cond_9
    move/from16 v5, p2

    :goto_b
    and-int/lit8 v1, v0, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_12

    move-object v7, v3

    goto :goto_14

    :cond_12
    move-object/from16 v7, p4

    :goto_14
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_1b

    const/4 v1, 0x1

    move v8, v1

    goto :goto_1d

    :cond_1b
    move/from16 v8, p5

    :goto_1d
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_24

    const-wide/16 v9, 0x0

    goto :goto_26

    :cond_24
    move-wide/from16 v9, p6

    :goto_26
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_2c

    move v11, v2

    goto :goto_2e

    :cond_2c
    move/from16 v11, p8

    :goto_2e
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_34

    move-object v12, v3

    goto :goto_36

    :cond_34
    move-object/from16 v12, p9

    :goto_36
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_3c

    move v13, v2

    goto :goto_3e

    :cond_3c
    move/from16 v13, p10

    :goto_3e
    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_44

    move v14, v2

    goto :goto_46

    :cond_44
    move/from16 v14, p11

    :goto_46
    move-object v3, p0

    move-object/from16 v4, p1

    move-object/from16 v6, p3

    invoke-direct/range {v3 .. v14}, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;-><init>(Ljava/lang/String;ILjava/util/List;Ljava/lang/String;ZJZLandroid/util/ArrayMap;ZZ)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;Ljava/lang/String;ILjava/util/List;Ljava/lang/String;ZJZLandroid/util/ArrayMap;ZZILjava/lang/Object;)Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;
    .registers 26

    move-object v0, p0

    move/from16 v1, p12

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_a

    iget-object v2, v0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->serviceId:Ljava/lang/String;

    goto :goto_b

    :cond_a
    move-object v2, p1

    :goto_b
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_12

    iget v3, v0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->cardSize:I

    goto :goto_13

    :cond_12
    move v3, p2

    :goto_13
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_1a

    iget-object v4, v0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->cardSizeList:Ljava/util/List;

    goto :goto_1b

    :cond_1a
    move-object v4, p3

    :goto_1b
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_22

    iget-object v5, v0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->initData:Ljava/lang/String;

    goto :goto_24

    :cond_22
    move-object/from16 v5, p4

    :goto_24
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_2b

    iget-boolean v6, v0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->allowUIBackground:Z

    goto :goto_2d

    :cond_2b
    move/from16 v6, p5

    :goto_2d
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_34

    iget-wide v7, v0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->timestamp:J

    goto :goto_36

    :cond_34
    move-wide/from16 v7, p6

    :goto_36
    and-int/lit8 v9, v1, 0x40

    if-eqz v9, :cond_3d

    iget-boolean v9, v0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->isSubscribe:Z

    goto :goto_3f

    :cond_3d
    move/from16 v9, p8

    :goto_3f
    and-int/lit16 v10, v1, 0x80

    if-eqz v10, :cond_46

    iget-object v10, v0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->extraData:Landroid/util/ArrayMap;

    goto :goto_48

    :cond_46
    move-object/from16 v10, p9

    :goto_48
    and-int/lit16 v11, v1, 0x100

    if-eqz v11, :cond_4f

    iget-boolean v11, v0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->isAbnormal:Z

    goto :goto_51

    :cond_4f
    move/from16 v11, p10

    :goto_51
    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_58

    iget-boolean v1, v0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->isEntranceTriggerCardClick:Z

    goto :goto_5a

    :cond_58
    move/from16 v1, p11

    :goto_5a
    move-object p1, v2

    move p2, v3

    move-object p3, v4

    move-object/from16 p4, v5

    move/from16 p5, v6

    move-wide/from16 p6, v7

    move/from16 p8, v9

    move-object/from16 p9, v10

    move/from16 p10, v11

    move/from16 p11, v1

    invoke-virtual/range {p0 .. p11}, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->copy(Ljava/lang/String;ILjava/util/List;Ljava/lang/String;ZJZLandroid/util/ArrayMap;ZZ)Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic getCardSize$annotations()V
    .registers 0

    return-void
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->serviceId:Ljava/lang/String;

    return-object p0
.end method

.method public final component10()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->isEntranceTriggerCardClick:Z

    return p0
.end method

.method public final component2()I
    .registers 1

    iget p0, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->cardSize:I

    return p0
.end method

.method public final component3()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->cardSizeList:Ljava/util/List;

    return-object p0
.end method

.method public final component4()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->initData:Ljava/lang/String;

    return-object p0
.end method

.method public final component5()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->allowUIBackground:Z

    return p0
.end method

.method public final component6()J
    .registers 3

    iget-wide v0, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->timestamp:J

    return-wide v0
.end method

.method public final component7()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->isSubscribe:Z

    return p0
.end method

.method public final component8()Landroid/util/ArrayMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->extraData:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public final component9()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->isAbnormal:Z

    return p0
.end method

.method public final copy(Ljava/lang/String;ILjava/util/List;Ljava/lang/String;ZJZLandroid/util/ArrayMap;ZZ)Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "ZJZ",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;ZZ)",
            "Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;"
        }
    .end annotation

    const-string v0, "serviceId"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cardSizeList"

    move-object/from16 v4, p3

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;

    move-object v1, v0

    move v3, p2

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-wide/from16 v7, p6

    move/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    invoke-direct/range {v1 .. v12}, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;-><init>(Ljava/lang/String;ILjava/util/List;Ljava/lang/String;ZJZLandroid/util/ArrayMap;ZZ)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;

    iget-object v1, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->serviceId:Ljava/lang/String;

    iget-object v3, p1, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->serviceId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget v1, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->cardSize:I

    iget v3, p1, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->cardSize:I

    if-eq v1, v3, :cond_1e

    return v2

    :cond_1e
    iget-object v1, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->cardSizeList:Ljava/util/List;

    iget-object v3, p1, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->cardSizeList:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    return v2

    :cond_29
    iget-object v1, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->initData:Ljava/lang/String;

    iget-object v3, p1, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->initData:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    return v2

    :cond_34
    iget-boolean v1, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->allowUIBackground:Z

    iget-boolean v3, p1, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->allowUIBackground:Z

    if-eq v1, v3, :cond_3b

    return v2

    :cond_3b
    iget-wide v3, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->timestamp:J

    iget-wide v5, p1, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->timestamp:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_44

    return v2

    :cond_44
    iget-boolean v1, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->isSubscribe:Z

    iget-boolean v3, p1, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->isSubscribe:Z

    if-eq v1, v3, :cond_4b

    return v2

    :cond_4b
    iget-object v1, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->extraData:Landroid/util/ArrayMap;

    iget-object v3, p1, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->extraData:Landroid/util/ArrayMap;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_56

    return v2

    :cond_56
    iget-boolean v1, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->isAbnormal:Z

    iget-boolean v3, p1, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->isAbnormal:Z

    if-eq v1, v3, :cond_5d

    return v2

    :cond_5d
    iget-boolean p0, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->isEntranceTriggerCardClick:Z

    iget-boolean p1, p1, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->isEntranceTriggerCardClick:Z

    if-eq p0, p1, :cond_64

    return v2

    :cond_64
    return v0
.end method

.method public final getAllowUIBackground()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->allowUIBackground:Z

    return p0
.end method

.method public final getCardSize()I
    .registers 1

    iget p0, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->cardSize:I

    return p0
.end method

.method public final getCardSizeList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->cardSizeList:Ljava/util/List;

    return-object p0
.end method

.method public final getExtraData()Landroid/util/ArrayMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->extraData:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public final getInitData()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->initData:Ljava/lang/String;

    return-object p0
.end method

.method public final getServiceId()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->serviceId:Ljava/lang/String;

    return-object p0
.end method

.method public final getTimestamp()J
    .registers 3

    iget-wide v0, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->timestamp:J

    return-wide v0
.end method

.method public hashCode()I
    .registers 7

    iget-object v0, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->serviceId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->cardSize:I

    const/16 v2, 0x1f

    invoke-static {v1, v0, v2}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget-object v1, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->cardSizeList:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->initData:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v0, :cond_20

    move v0, v2

    goto :goto_24

    :cond_20
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_24
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v0, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->allowUIBackground:Z

    const/4 v3, 0x1

    if-eqz v0, :cond_2d

    move v0, v3

    :cond_2d
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v4, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->timestamp:J

    invoke-static {v4, v5}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->isSubscribe:Z

    if-eqz v1, :cond_3e

    move v1, v3

    :cond_3e
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->extraData:Landroid/util/ArrayMap;

    if-nez v1, :cond_46

    goto :goto_4a

    :cond_46
    invoke-virtual {v1}, Landroid/util/ArrayMap;->hashCode()I

    move-result v2

    :goto_4a
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->isAbnormal:Z

    if-eqz v1, :cond_52

    move v1, v3

    :cond_52
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean p0, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->isEntranceTriggerCardClick:Z

    if-eqz p0, :cond_5a

    goto :goto_5b

    :cond_5a
    move v3, p0

    :goto_5b
    add-int/2addr v0, v3

    return v0
.end method

.method public final isAbnormal()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->isAbnormal:Z

    return p0
.end method

.method public final isEntranceTriggerCardClick()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->isEntranceTriggerCardClick:Z

    return p0
.end method

.method public final isSubscribe()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->isSubscribe:Z

    return p0
.end method

.method public final setAllowUIBackground(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->allowUIBackground:Z

    return-void
.end method

.method public final setCardSize(I)V
    .registers 2

    iput p1, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->cardSize:I

    return-void
.end method

.method public final setCardSizeList(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->cardSizeList:Ljava/util/List;

    return-void
.end method

.method public final setEntranceTriggerCardClick(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->isEntranceTriggerCardClick:Z

    return-void
.end method

.method public final setExtraData(Landroid/util/ArrayMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->extraData:Landroid/util/ArrayMap;

    return-void
.end method

.method public final setInitData(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->initData:Ljava/lang/String;

    return-void
.end method

.method public final setServiceId(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->serviceId:Ljava/lang/String;

    return-void
.end method

.method public final setSubscribe(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->isSubscribe:Z

    return-void
.end method

.method public final setTimestamp(J)V
    .registers 3

    iput-wide p1, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->timestamp:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 13

    iget-object v0, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->serviceId:Ljava/lang/String;

    iget v1, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->cardSize:I

    iget-object v2, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->cardSizeList:Ljava/util/List;

    iget-object v3, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->initData:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->allowUIBackground:Z

    iget-wide v5, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->timestamp:J

    iget-boolean v7, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->isSubscribe:Z

    iget-object v8, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->extraData:Landroid/util/ArrayMap;

    iget-boolean v9, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->isAbnormal:Z

    iget-boolean p0, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->isEntranceTriggerCardClick:Z

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SeedlingIntent(serviceId="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", cardSize="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", cardSizeList="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", initData="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", allowUIBackground="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", timestamp="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", isSubscribe="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", extraData="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", isAbnormal="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isEntranceTriggerCardClick="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
