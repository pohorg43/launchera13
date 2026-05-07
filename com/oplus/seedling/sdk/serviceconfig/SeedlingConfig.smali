.class public final Lcom/oplus/seedling/sdk/serviceconfig/SeedlingConfig;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private final des:Ljava/lang/String;

.field private final extraData:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private groupTitle:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final packageName:Ljava/lang/String;

.field private final previewImgUri:Ljava/lang/String;

.field private final serviceId:Ljava/lang/String;

.field private final size:I

.field private final supportEntrance:I


# direct methods
.method public constructor <init>()V
    .registers 13

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x1ff

    const/4 v11, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v11}, Lcom/oplus/seedling/sdk/serviceconfig/SeedlingConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Landroid/util/ArrayMap;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILandroid/util/ArrayMap;)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "serviceId"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    move-object v3, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "des"

    move-object v4, p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "previewImgUri"

    move-object v5, p4

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packageName"

    move-object/from16 v6, p5

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extraData"

    move-object/from16 v10, p8

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, ""

    move-object v1, p0

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v1 .. v10}, Lcom/oplus/seedling/sdk/serviceconfig/SeedlingConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Landroid/util/ArrayMap;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILandroid/util/ArrayMap;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 12

    and-int/lit8 p10, p9, 0x1

    const-string v0, ""

    if-eqz p10, :cond_7

    move-object p1, v0

    :cond_7
    and-int/lit8 p10, p9, 0x2

    if-eqz p10, :cond_c

    move-object p2, v0

    :cond_c
    and-int/lit8 p10, p9, 0x4

    if-eqz p10, :cond_11

    move-object p3, v0

    :cond_11
    and-int/lit8 p10, p9, 0x8

    if-eqz p10, :cond_16

    move-object p4, v0

    :cond_16
    and-int/lit8 p10, p9, 0x10

    if-eqz p10, :cond_1b

    move-object p5, v0

    :cond_1b
    and-int/lit8 p10, p9, 0x20

    if-eqz p10, :cond_20

    const/4 p6, -0x1

    :cond_20
    and-int/lit8 p10, p9, 0x40

    if-eqz p10, :cond_26

    const/16 p7, 0x3e8

    :cond_26
    and-int/lit16 p9, p9, 0x80

    if-eqz p9, :cond_2f

    new-instance p8, Landroid/util/ArrayMap;

    invoke-direct {p8}, Landroid/util/ArrayMap;-><init>()V

    :cond_2f
    invoke-direct/range {p0 .. p8}, Lcom/oplus/seedling/sdk/serviceconfig/SeedlingConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILandroid/util/ArrayMap;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Landroid/util/ArrayMap;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "serviceId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "des"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "previewImgUri"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packageName"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "groupTitle"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extraData"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/seedling/sdk/serviceconfig/SeedlingConfig;->serviceId:Ljava/lang/String;

    iput-object p2, p0, Lcom/oplus/seedling/sdk/serviceconfig/SeedlingConfig;->name:Ljava/lang/String;

    iput-object p3, p0, Lcom/oplus/seedling/sdk/serviceconfig/SeedlingConfig;->des:Ljava/lang/String;

    iput-object p4, p0, Lcom/oplus/seedling/sdk/serviceconfig/SeedlingConfig;->previewImgUri:Ljava/lang/String;

    iput-object p5, p0, Lcom/oplus/seedling/sdk/serviceconfig/SeedlingConfig;->packageName:Ljava/lang/String;

    iput p6, p0, Lcom/oplus/seedling/sdk/serviceconfig/SeedlingConfig;->supportEntrance:I

    iput p7, p0, Lcom/oplus/seedling/sdk/serviceconfig/SeedlingConfig;->size:I

    iput-object p8, p0, Lcom/oplus/seedling/sdk/serviceconfig/SeedlingConfig;->groupTitle:Ljava/lang/String;

    iput-object p9, p0, Lcom/oplus/seedling/sdk/serviceconfig/SeedlingConfig;->extraData:Landroid/util/ArrayMap;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Landroid/util/ArrayMap;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 13

    and-int/lit8 p11, p10, 0x1

    const-string v0, ""

    if-eqz p11, :cond_7

    move-object p1, v0

    :cond_7
    and-int/lit8 p11, p10, 0x2

    if-eqz p11, :cond_c

    move-object p2, v0

    :cond_c
    and-int/lit8 p11, p10, 0x4

    if-eqz p11, :cond_11

    move-object p3, v0

    :cond_11
    and-int/lit8 p11, p10, 0x8

    if-eqz p11, :cond_16

    move-object p4, v0

    :cond_16
    and-int/lit8 p11, p10, 0x10

    if-eqz p11, :cond_1b

    move-object p5, v0

    :cond_1b
    and-int/lit8 p11, p10, 0x20

    if-eqz p11, :cond_20

    const/4 p6, -0x1

    :cond_20
    and-int/lit8 p11, p10, 0x40

    if-eqz p11, :cond_26

    const/16 p7, 0x3e8

    :cond_26
    and-int/lit16 p11, p10, 0x80

    if-eqz p11, :cond_2b

    move-object p8, v0

    :cond_2b
    and-int/lit16 p10, p10, 0x100

    if-eqz p10, :cond_34

    new-instance p9, Landroid/util/ArrayMap;

    invoke-direct {p9}, Landroid/util/ArrayMap;-><init>()V

    :cond_34
    invoke-direct/range {p0 .. p9}, Lcom/oplus/seedling/sdk/serviceconfig/SeedlingConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Landroid/util/ArrayMap;)V

    return-void
.end method

.method private final component6()I
    .registers 1

    iget p0, p0, Lcom/oplus/seedling/sdk/serviceconfig/SeedlingConfig;->supportEntrance:I

    return p0
.end method

.method public static synthetic copy$default(Lcom/oplus/seedling/sdk/serviceconfig/SeedlingConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Landroid/util/ArrayMap;ILjava/lang/Object;)Lcom/oplus/seedling/sdk/serviceconfig/SeedlingConfig;
    .registers 22

    move-object v0, p0

    move/from16 v1, p10

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_a

    iget-object v2, v0, Lcom/oplus/seedling/sdk/serviceconfig/SeedlingConfig;->serviceId:Ljava/lang/String;

    goto :goto_b

    :cond_a
    move-object v2, p1

    :goto_b
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_12

    iget-object v3, v0, Lcom/oplus/seedling/sdk/serviceconfig/SeedlingConfig;->name:Ljava/lang/String;

    goto :goto_13

    :cond_12
    move-object v3, p2

    :goto_13
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_1a

    iget-object v4, v0, Lcom/oplus/seedling/sdk/serviceconfig/SeedlingConfig;->des:Ljava/lang/String;

    goto :goto_1b

    :cond_1a
    move-object v4, p3

    :goto_1b
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_22

    iget-object v5, v0, Lcom/oplus/seedling/sdk/serviceconfig/SeedlingConfig;->previewImgUri:Ljava/lang/String;

    goto :goto_23

    :cond_22
    move-object v5, p4

    :goto_23
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_2a

    iget-object v6, v0, Lcom/oplus/seedling/sdk/serviceconfig/SeedlingConfig;->packageName:Ljava/lang/String;

    goto :goto_2b

    :cond_2a
    move-object v6, p5

    :goto_2b
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_32

    iget v7, v0, Lcom/oplus/seedling/sdk/serviceconfig/SeedlingConfig;->supportEntrance:I

    goto :goto_34

    :cond_32
    move/from16 v7, p6

    :goto_34
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_3b

    iget v8, v0, Lcom/oplus/seedling/sdk/serviceconfig/SeedlingConfig;->size:I

    goto :goto_3d

    :cond_3b
    move/from16 v8, p7

    :goto_3d
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_44

    iget-object v9, v0, Lcom/oplus/seedling/sdk/serviceconfig/SeedlingConfig;->groupTitle:Ljava/lang/String;

    goto :goto_46

    :cond_44
    move-object/from16 v9, p8

    :goto_46
    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_4d

    iget-object v1, v0, Lcom/oplus/seedling/sdk/serviceconfig/SeedlingConfig;->extraData:Landroid/util/ArrayMap;

    goto :goto_4f

    :cond_4d
    move-object/from16 v1, p9

    :goto_4f
    move-object p1, v2

    move-object p2, v3

    move-object p3, v4

    move-object p4, v5

    move-object p5, v6

    move/from16 p6, v7

    move/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v1

    invoke-virtual/range {p0 .. p9}, Lcom/oplus/seedling/sdk/serviceconfig/SeedlingConfig;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Landroid/util/ArrayMap;)Lcom/oplus/seedling/sdk/serviceconfig/SeedlingConfig;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/seedling/sdk/serviceconfig/SeedlingConfig;->serviceId:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/seedling/sdk/serviceconfig/SeedlingConfig;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/seedling/sdk/serviceconfig/SeedlingConfig;->des:Ljava/lang/String;

    return-object p0
.end method

.method public final component4()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/seedling/sdk/serviceconfig/SeedlingConfig;->previewImgUri:Ljava/lang/String;

    return-object p0
.end method

.method public final component5()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/seedling/sdk/serviceconfig/SeedlingConfig;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public final component7()I
    .registers 1

    iget p0, p0, Lcom/oplus/seedling/sdk/serviceconfig/SeedlingConfig;->size:I

    return p0
.end method

.method public final component8()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/seedling/sdk/serviceconfig/SeedlingConfig;->groupTitle:Ljava/lang/String;

    return-object p0
.end method

.method public final component9()Landroid/util/ArrayMap;
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

    iget-object p0, p0, Lcom/oplus/seedling/sdk/serviceconfig/SeedlingConfig;->extraData:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Landroid/util/ArrayMap;)Lcom/oplus/seedling/sdk/serviceconfig/SeedlingConfig;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/oplus/seedling/sdk/serviceconfig/SeedlingConfig;"
        }
    .end annotation

    const-string v0, "serviceId"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    move-object v3, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "des"

    move-object v4, p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "previewImgUri"

    move-object v5, p4

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packageName"

    move-object/from16 v6, p5

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "groupTitle"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extraData"

    move-object/from16 v10, p9

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/oplus/seedling/sdk/serviceconfig/SeedlingConfig;

    move-object v1, v0

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v1 .. v10}, Lcom/oplus/seedling/sdk/serviceconfig/SeedlingConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Landroid/util/ArrayMap;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/oplus/seedling/sdk/serviceconfig/SeedlingConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/oplus/seedling/sdk/serviceconfig/SeedlingConfig;

    iget-object v1, p0, Lcom/oplus/seedling/sdk/serviceconfig/SeedlingConfig;->serviceId:Ljava/lang/String;

    iget-object v3, p1, Lcom/oplus/seedling/sdk/serviceconfig/SeedlingConfig;->serviceId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/oplus/seedling/sdk/serviceconfig/SeedlingConfig;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/oplus/seedling/sdk/serviceconfig/SeedlingConfig;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lcom/oplus/seedling/sdk/serviceconfig/SeedlingConfig;->des:Ljava/lang/String;

    iget-object v3, p1, Lcom/oplus/seedling/sdk/serviceconfig/SeedlingConfig;->des:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    return v2

    :cond_2d
    iget-object v1, p0, Lcom/oplus/seedling/sdk/serviceconfig/SeedlingConfig;->previewImgUri:Ljava/lang/String;

    iget-object v3, p1, Lcom/oplus/seedling/sdk/serviceconfig/SeedlingConfig;->previewImgUri:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    return v2

    :cond_38
    iget-object v1, p0, Lcom/oplus/seedling/sdk/serviceconfig/SeedlingConfig;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/oplus/seedling/sdk/serviceconfig/SeedlingConfig;->packageName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_43

    return v2

    :cond_43
    iget v1, p0, Lcom/oplus/seedling/sdk/serviceconfig/SeedlingConfig;->supportEntrance:I

    iget v3, p1, Lcom/oplus/seedling/sdk/serviceconfig/SeedlingConfig;->supportEntrance:I

    if-eq v1, v3, :cond_4a

    return v2

    :cond_4a
    iget v1, p0, Lcom/oplus/seedling/sdk/serviceconfig/SeedlingConfig;->size:I

    iget v3, p1, Lcom/oplus/seedling/sdk/serviceconfig/SeedlingConfig;->size:I

    if-eq v1, v3, :cond_51

    return v2

    :cond_51
    iget-object v1, p0, Lcom/oplus/seedling/sdk/serviceconfig/SeedlingConfig;->groupTitle:Ljava/lang/String;

    iget-object v3, p1, Lcom/oplus/seedling/sdk/serviceconfig/SeedlingConfig;->groupTitle:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5c

    return v2

    :cond_5c
    iget-object p0, p0, Lcom/oplus/seedling/sdk/serviceconfig/SeedlingConfig;->extraData:Landroid/util/ArrayMap;

    iget-object p1, p1, Lcom/oplus/seedling/sdk/serviceconfig/SeedlingConfig;->extraData:Landroid/util/ArrayMap;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_67

    return v2

    :cond_67
    return v0
.end method

.method public final getDes()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/seedling/sdk/serviceconfig/SeedlingConfig;->des:Ljava/lang/String;

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

    iget-object p0, p0, Lcom/oplus/seedling/sdk/serviceconfig/SeedlingConfig;->extraData:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public final getGroupTitle()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/seedling/sdk/serviceconfig/SeedlingConfig;->groupTitle:Ljava/lang/String;

    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/seedling/sdk/serviceconfig/SeedlingConfig;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final getPackageName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/seedling/sdk/serviceconfig/SeedlingConfig;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public final getPreviewImgUri()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/seedling/sdk/serviceconfig/SeedlingConfig;->previewImgUri:Ljava/lang/String;

    return-object p0
.end method

.method public final getServiceId()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/seedling/sdk/serviceconfig/SeedlingConfig;->serviceId:Ljava/lang/String;

    return-object p0
.end method

.method public final getSize()I
    .registers 1

    iget p0, p0, Lcom/oplus/seedling/sdk/serviceconfig/SeedlingConfig;->size:I

    return p0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lcom/oplus/seedling/sdk/serviceconfig/SeedlingConfig;->serviceId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/oplus/seedling/sdk/serviceconfig/SeedlingConfig;->name:Ljava/lang/String;

    const/16 v2, 0x1f

    invoke-static {v1, v0, v2}, Landroidx/room/util/b;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/oplus/seedling/sdk/serviceconfig/SeedlingConfig;->des:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Landroidx/room/util/b;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/oplus/seedling/sdk/serviceconfig/SeedlingConfig;->previewImgUri:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Landroidx/room/util/b;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/oplus/seedling/sdk/serviceconfig/SeedlingConfig;->packageName:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Landroidx/room/util/b;->a(Ljava/lang/String;II)I

    move-result v0

    iget v1, p0, Lcom/oplus/seedling/sdk/serviceconfig/SeedlingConfig;->supportEntrance:I

    invoke-static {v1, v0, v2}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget v1, p0, Lcom/oplus/seedling/sdk/serviceconfig/SeedlingConfig;->size:I

    invoke-static {v1, v0, v2}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget-object v1, p0, Lcom/oplus/seedling/sdk/serviceconfig/SeedlingConfig;->groupTitle:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Landroidx/room/util/b;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object p0, p0, Lcom/oplus/seedling/sdk/serviceconfig/SeedlingConfig;->extraData:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final isSupportEntrance(I)Z
    .registers 3

    iget p0, p0, Lcom/oplus/seedling/sdk/serviceconfig/SeedlingConfig;->supportEntrance:I

    and-int v0, p0, p1

    if-eq v0, p1, :cond_b

    if-nez p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p0, 0x1

    :goto_c
    return p0
.end method

.method public final setGroupTitle(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/seedling/sdk/serviceconfig/SeedlingConfig;->groupTitle:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 12

    iget-object v0, p0, Lcom/oplus/seedling/sdk/serviceconfig/SeedlingConfig;->serviceId:Ljava/lang/String;

    iget-object v1, p0, Lcom/oplus/seedling/sdk/serviceconfig/SeedlingConfig;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/oplus/seedling/sdk/serviceconfig/SeedlingConfig;->des:Ljava/lang/String;

    iget-object v3, p0, Lcom/oplus/seedling/sdk/serviceconfig/SeedlingConfig;->previewImgUri:Ljava/lang/String;

    iget-object v4, p0, Lcom/oplus/seedling/sdk/serviceconfig/SeedlingConfig;->packageName:Ljava/lang/String;

    iget v5, p0, Lcom/oplus/seedling/sdk/serviceconfig/SeedlingConfig;->supportEntrance:I

    iget v6, p0, Lcom/oplus/seedling/sdk/serviceconfig/SeedlingConfig;->size:I

    iget-object v7, p0, Lcom/oplus/seedling/sdk/serviceconfig/SeedlingConfig;->groupTitle:Ljava/lang/String;

    iget-object p0, p0, Lcom/oplus/seedling/sdk/serviceconfig/SeedlingConfig;->extraData:Landroid/util/ArrayMap;

    const-string v8, "SeedlingConfig(serviceId="

    const-string v9, ", name="

    const-string v10, ", des="

    invoke-static {v8, v0, v9, v1, v10}, Ld/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", previewImgUri="

    const-string v8, ", packageName="

    invoke-static {v0, v2, v1, v3, v8}, Landroidx/room/s;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", supportEntrance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", groupTitle="

    const-string v2, ", extraData="

    invoke-static {v0, v6, v1, v7, v2}, Landroidx/room/q;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
