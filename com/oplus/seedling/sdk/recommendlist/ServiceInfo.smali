.class public final Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo$Companion;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private cannotReduceRecommend:Z

.field private channelType:I

.field private final extras:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private forceRebuild:Z

.field private hostPackage:Ljava/lang/String;

.field private final initData:Ljava/lang/String;

.field private instanceId:Ljava/lang/Long;

.field private intentCategory:I

.field private intentId:Ljava/lang/Long;

.field private isGuaranteedCard:Z

.field private isParamsSendToSeedling:I

.field private newSeedlingCardOptions:Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;

.field private policy:Ljava/lang/String;

.field private final score:F

.field private seedlingCardOptions:Lcom/oplus/seedling/sdk/seedling/SeedlingCardOptions;

.field private seedlingType:I

.field private serviceCategory:I

.field private final serviceId:Ljava/lang/String;

.field private final serviceType:I

.field private subdomain:Ljava/lang/String;

.field private final supportCardSizes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final supportEntrance:I

.field private final timeStamp:J

.field private final versionCode:J


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->Companion:Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/util/List;FILjava/lang/String;JJIZZIIIZILjava/lang/String;Ljava/lang/String;Landroid/util/ArrayMap;Lcom/oplus/seedling/sdk/seedling/SeedlingCardOptions;Ljava/lang/Long;Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;Ljava/lang/Long;Ljava/lang/String;)V
    .registers 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;FI",
            "Ljava/lang/String;",
            "JJIZZIIIZI",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/oplus/seedling/sdk/seedling/SeedlingCardOptions;",
            "Ljava/lang/Long;",
            "Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object/from16 v3, p19

    const-string v4, "serviceId"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "supportCardSizes"

    invoke-static {p3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "subdomain"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->serviceId:Ljava/lang/String;

    move v1, p2

    iput v1, v0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->serviceType:I

    iput-object v2, v0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->supportCardSizes:Ljava/util/List;

    move v1, p4

    iput v1, v0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->score:F

    move v1, p5

    iput v1, v0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->supportEntrance:I

    move-object v1, p6

    iput-object v1, v0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->initData:Ljava/lang/String;

    move-wide v1, p7

    iput-wide v1, v0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->timeStamp:J

    move-wide v1, p9

    iput-wide v1, v0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->versionCode:J

    move/from16 v1, p11

    iput v1, v0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->isParamsSendToSeedling:I

    move/from16 v1, p12

    iput-boolean v1, v0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->cannotReduceRecommend:Z

    move/from16 v1, p13

    iput-boolean v1, v0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->forceRebuild:Z

    move/from16 v1, p14

    iput v1, v0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->serviceCategory:I

    move/from16 v1, p15

    iput v1, v0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->channelType:I

    move/from16 v1, p16

    iput v1, v0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->intentCategory:I

    move/from16 v1, p17

    iput-boolean v1, v0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->isGuaranteedCard:Z

    move/from16 v1, p18

    iput v1, v0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->seedlingType:I

    iput-object v3, v0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->subdomain:Ljava/lang/String;

    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->hostPackage:Ljava/lang/String;

    move-object/from16 v1, p21

    iput-object v1, v0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->extras:Landroid/util/ArrayMap;

    move-object/from16 v1, p22

    iput-object v1, v0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->seedlingCardOptions:Lcom/oplus/seedling/sdk/seedling/SeedlingCardOptions;

    move-object/from16 v1, p23

    iput-object v1, v0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->instanceId:Ljava/lang/Long;

    move-object/from16 v1, p24

    iput-object v1, v0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->newSeedlingCardOptions:Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;

    move-object/from16 v1, p25

    iput-object v1, v0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->intentId:Ljava/lang/Long;

    move-object/from16 v1, p26

    iput-object v1, v0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->policy:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILjava/util/List;FILjava/lang/String;JJIZZIIIZILjava/lang/String;Ljava/lang/String;Landroid/util/ArrayMap;Lcom/oplus/seedling/sdk/seedling/SeedlingCardOptions;Ljava/lang/Long;Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;Ljava/lang/Long;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 59

    move/from16 v0, p27

    and-int/lit8 v1, v0, 0x20

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    move-object v9, v2

    goto :goto_b

    :cond_9
    move-object/from16 v9, p6

    :goto_b
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_13

    const-wide/16 v3, 0x0

    move-wide v12, v3

    goto :goto_15

    :cond_13
    move-wide/from16 v12, p9

    :goto_15
    and-int/lit16 v1, v0, 0x100

    const/4 v3, 0x0

    if-eqz v1, :cond_1c

    move v14, v3

    goto :goto_1e

    :cond_1c
    move/from16 v14, p11

    :goto_1e
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_24

    move v15, v3

    goto :goto_26

    :cond_24
    move/from16 v15, p12

    :goto_26
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_2d

    move/from16 v16, v3

    goto :goto_2f

    :cond_2d
    move/from16 v16, p13

    :goto_2f
    and-int/lit16 v1, v0, 0x800

    const/4 v4, 0x1

    if-eqz v1, :cond_37

    move/from16 v17, v4

    goto :goto_39

    :cond_37
    move/from16 v17, p14

    :goto_39
    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_40

    move/from16 v18, v4

    goto :goto_42

    :cond_40
    move/from16 v18, p15

    :goto_42
    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_49

    move/from16 v19, v3

    goto :goto_4b

    :cond_49
    move/from16 v19, p16

    :goto_4b
    and-int/lit16 v1, v0, 0x4000

    if-eqz v1, :cond_52

    move/from16 v20, v3

    goto :goto_54

    :cond_52
    move/from16 v20, p17

    :goto_54
    const v1, 0x8000

    and-int/2addr v1, v0

    if-eqz v1, :cond_5d

    move/from16 v21, v4

    goto :goto_5f

    :cond_5d
    move/from16 v21, p18

    :goto_5f
    const/high16 v1, 0x10000

    and-int/2addr v1, v0

    if-eqz v1, :cond_69

    const-string v1, ""

    move-object/from16 v22, v1

    goto :goto_6b

    :cond_69
    move-object/from16 v22, p19

    :goto_6b
    const/high16 v1, 0x40000

    and-int/2addr v1, v0

    if-eqz v1, :cond_73

    move-object/from16 v24, v2

    goto :goto_75

    :cond_73
    move-object/from16 v24, p21

    :goto_75
    const/high16 v1, 0x80000

    and-int/2addr v1, v0

    if-eqz v1, :cond_7d

    move-object/from16 v25, v2

    goto :goto_7f

    :cond_7d
    move-object/from16 v25, p22

    :goto_7f
    const/high16 v1, 0x100000

    and-int/2addr v1, v0

    if-eqz v1, :cond_87

    move-object/from16 v26, v2

    goto :goto_89

    :cond_87
    move-object/from16 v26, p23

    :goto_89
    const/high16 v1, 0x200000

    and-int/2addr v1, v0

    if-eqz v1, :cond_91

    move-object/from16 v27, v2

    goto :goto_93

    :cond_91
    move-object/from16 v27, p24

    :goto_93
    const/high16 v1, 0x400000

    and-int/2addr v1, v0

    if-eqz v1, :cond_9b

    move-object/from16 v28, v2

    goto :goto_9d

    :cond_9b
    move-object/from16 v28, p25

    :goto_9d
    const/high16 v1, 0x800000

    and-int/2addr v0, v1

    if-eqz v0, :cond_a5

    move-object/from16 v29, v2

    goto :goto_a7

    :cond_a5
    move-object/from16 v29, p26

    :goto_a7
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move-wide/from16 v10, p7

    move-object/from16 v23, p20

    invoke-direct/range {v3 .. v29}, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;-><init>(Ljava/lang/String;ILjava/util/List;FILjava/lang/String;JJIZZIIIZILjava/lang/String;Ljava/lang/String;Landroid/util/ArrayMap;Lcom/oplus/seedling/sdk/seedling/SeedlingCardOptions;Ljava/lang/Long;Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;Ljava/lang/Long;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/util/List;FILjava/lang/String;JJLandroid/util/ArrayMap;)V
    .registers 41
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;FI",
            "Ljava/lang/String;",
            "JJ",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    move-object/from16 v21, p11

    const-string v11, "serviceId"

    move-object/from16 v12, p1

    invoke-static {v12, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "supportCardSizes"

    move-object/from16 v12, p3

    invoke-static {v12, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    const-string v19, ""

    const-string v20, ""

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/high16 v27, 0xf80000

    const/16 v28, 0x0

    invoke-direct/range {v0 .. v28}, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;-><init>(Ljava/lang/String;ILjava/util/List;FILjava/lang/String;JJIZZIIIZILjava/lang/String;Ljava/lang/String;Landroid/util/ArrayMap;Lcom/oplus/seedling/sdk/seedling/SeedlingCardOptions;Ljava/lang/Long;Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;Ljava/lang/Long;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILjava/util/List;FILjava/lang/String;JJLandroid/util/ArrayMap;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 29

    move/from16 v0, p12

    and-int/lit8 v1, v0, 0x20

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    move-object v9, v2

    goto :goto_b

    :cond_9
    move-object/from16 v9, p6

    :goto_b
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_13

    const-wide/16 v3, 0x0

    move-wide v12, v3

    goto :goto_15

    :cond_13
    move-wide/from16 v12, p9

    :goto_15
    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_1b

    move-object v14, v2

    goto :goto_1d

    :cond_1b
    move-object/from16 v14, p11

    :goto_1d
    move-object v3, p0

    move-object/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move-wide/from16 v10, p7

    invoke-direct/range {v3 .. v14}, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;-><init>(Ljava/lang/String;ILjava/util/List;FILjava/lang/String;JJLandroid/util/ArrayMap;)V

    return-void
.end method

.method private final component5()I
    .registers 1

    iget p0, p0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->supportEntrance:I

    return p0
.end method

.method public static synthetic copy$default(Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;Ljava/lang/String;ILjava/util/List;FILjava/lang/String;JJIZZIIIZILjava/lang/String;Ljava/lang/String;Landroid/util/ArrayMap;Lcom/oplus/seedling/sdk/seedling/SeedlingCardOptions;Ljava/lang/Long;Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;Ljava/lang/Long;Ljava/lang/String;ILjava/lang/Object;)Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;
    .registers 46

    move-object/from16 v0, p0

    move/from16 v1, p27

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_b

    iget-object v2, v0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->serviceId:Ljava/lang/String;

    goto :goto_d

    :cond_b
    move-object/from16 v2, p1

    :goto_d
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_14

    iget v3, v0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->serviceType:I

    goto :goto_16

    :cond_14
    move/from16 v3, p2

    :goto_16
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_1d

    iget-object v4, v0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->supportCardSizes:Ljava/util/List;

    goto :goto_1f

    :cond_1d
    move-object/from16 v4, p3

    :goto_1f
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_26

    iget v5, v0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->score:F

    goto :goto_28

    :cond_26
    move/from16 v5, p4

    :goto_28
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_2f

    iget v6, v0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->supportEntrance:I

    goto :goto_31

    :cond_2f
    move/from16 v6, p5

    :goto_31
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_38

    iget-object v7, v0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->initData:Ljava/lang/String;

    goto :goto_3a

    :cond_38
    move-object/from16 v7, p6

    :goto_3a
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_41

    iget-wide v8, v0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->timeStamp:J

    goto :goto_43

    :cond_41
    move-wide/from16 v8, p7

    :goto_43
    and-int/lit16 v10, v1, 0x80

    if-eqz v10, :cond_4a

    iget-wide v10, v0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->versionCode:J

    goto :goto_4c

    :cond_4a
    move-wide/from16 v10, p9

    :goto_4c
    and-int/lit16 v12, v1, 0x100

    if-eqz v12, :cond_53

    iget v12, v0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->isParamsSendToSeedling:I

    goto :goto_55

    :cond_53
    move/from16 v12, p11

    :goto_55
    and-int/lit16 v13, v1, 0x200

    if-eqz v13, :cond_5c

    iget-boolean v13, v0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->cannotReduceRecommend:Z

    goto :goto_5e

    :cond_5c
    move/from16 v13, p12

    :goto_5e
    and-int/lit16 v14, v1, 0x400

    if-eqz v14, :cond_65

    iget-boolean v14, v0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->forceRebuild:Z

    goto :goto_67

    :cond_65
    move/from16 v14, p13

    :goto_67
    and-int/lit16 v15, v1, 0x800

    if-eqz v15, :cond_6e

    iget v15, v0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->serviceCategory:I

    goto :goto_70

    :cond_6e
    move/from16 v15, p14

    :goto_70
    move/from16 p14, v15

    and-int/lit16 v15, v1, 0x1000

    if-eqz v15, :cond_79

    iget v15, v0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->channelType:I

    goto :goto_7b

    :cond_79
    move/from16 v15, p15

    :goto_7b
    move/from16 p15, v15

    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_84

    iget v15, v0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->intentCategory:I

    goto :goto_86

    :cond_84
    move/from16 v15, p16

    :goto_86
    move/from16 p16, v15

    and-int/lit16 v15, v1, 0x4000

    if-eqz v15, :cond_8f

    iget-boolean v15, v0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->isGuaranteedCard:Z

    goto :goto_91

    :cond_8f
    move/from16 v15, p17

    :goto_91
    const v16, 0x8000

    and-int v16, v1, v16

    move/from16 p17, v15

    if-eqz v16, :cond_9d

    iget v15, v0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->seedlingType:I

    goto :goto_9f

    :cond_9d
    move/from16 v15, p18

    :goto_9f
    const/high16 v16, 0x10000

    and-int v16, v1, v16

    move/from16 p18, v15

    if-eqz v16, :cond_aa

    iget-object v15, v0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->subdomain:Ljava/lang/String;

    goto :goto_ac

    :cond_aa
    move-object/from16 v15, p19

    :goto_ac
    const/high16 v16, 0x20000

    and-int v16, v1, v16

    move-object/from16 p19, v15

    if-eqz v16, :cond_b7

    iget-object v15, v0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->hostPackage:Ljava/lang/String;

    goto :goto_b9

    :cond_b7
    move-object/from16 v15, p20

    :goto_b9
    const/high16 v16, 0x40000

    and-int v16, v1, v16

    move-object/from16 p20, v15

    if-eqz v16, :cond_c4

    iget-object v15, v0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->extras:Landroid/util/ArrayMap;

    goto :goto_c6

    :cond_c4
    move-object/from16 v15, p21

    :goto_c6
    const/high16 v16, 0x80000

    and-int v16, v1, v16

    move-object/from16 p21, v15

    if-eqz v16, :cond_d1

    iget-object v15, v0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->seedlingCardOptions:Lcom/oplus/seedling/sdk/seedling/SeedlingCardOptions;

    goto :goto_d3

    :cond_d1
    move-object/from16 v15, p22

    :goto_d3
    const/high16 v16, 0x100000

    and-int v16, v1, v16

    move-object/from16 p22, v15

    if-eqz v16, :cond_de

    iget-object v15, v0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->instanceId:Ljava/lang/Long;

    goto :goto_e0

    :cond_de
    move-object/from16 v15, p23

    :goto_e0
    const/high16 v16, 0x200000

    and-int v16, v1, v16

    move-object/from16 p23, v15

    if-eqz v16, :cond_eb

    iget-object v15, v0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->newSeedlingCardOptions:Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;

    goto :goto_ed

    :cond_eb
    move-object/from16 v15, p24

    :goto_ed
    const/high16 v16, 0x400000

    and-int v16, v1, v16

    move-object/from16 p24, v15

    if-eqz v16, :cond_f8

    iget-object v15, v0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->intentId:Ljava/lang/Long;

    goto :goto_fa

    :cond_f8
    move-object/from16 v15, p25

    :goto_fa
    const/high16 v16, 0x800000

    and-int v1, v1, v16

    if-eqz v1, :cond_103

    iget-object v1, v0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->policy:Ljava/lang/String;

    goto :goto_105

    :cond_103
    move-object/from16 v1, p26

    :goto_105
    move-object/from16 p1, v2

    move/from16 p2, v3

    move-object/from16 p3, v4

    move/from16 p4, v5

    move/from16 p5, v6

    move-object/from16 p6, v7

    move-wide/from16 p7, v8

    move-wide/from16 p9, v10

    move/from16 p11, v12

    move/from16 p12, v13

    move/from16 p13, v14

    move-object/from16 p25, v15

    move-object/from16 p26, v1

    invoke-virtual/range {p0 .. p26}, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->copy(Ljava/lang/String;ILjava/util/List;FILjava/lang/String;JJIZZIIIZILjava/lang/String;Ljava/lang/String;Landroid/util/ArrayMap;Lcom/oplus/seedling/sdk/seedling/SeedlingCardOptions;Ljava/lang/Long;Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;Ljava/lang/Long;Ljava/lang/String;)Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic getSeedlingCardOptions$annotations()V
    .registers 0

    return-void
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->serviceId:Ljava/lang/String;

    return-object p0
.end method

.method public final component10()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->cannotReduceRecommend:Z

    return p0
.end method

.method public final component11()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->forceRebuild:Z

    return p0
.end method

.method public final component12()I
    .registers 1

    iget p0, p0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->serviceCategory:I

    return p0
.end method

.method public final component13()I
    .registers 1

    iget p0, p0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->channelType:I

    return p0
.end method

.method public final component14()I
    .registers 1

    iget p0, p0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->intentCategory:I

    return p0
.end method

.method public final component15()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->isGuaranteedCard:Z

    return p0
.end method

.method public final component16()I
    .registers 1

    iget p0, p0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->seedlingType:I

    return p0
.end method

.method public final component17()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->subdomain:Ljava/lang/String;

    return-object p0
.end method

.method public final component18()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->hostPackage:Ljava/lang/String;

    return-object p0
.end method

.method public final component19()Landroid/util/ArrayMap;
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

    iget-object p0, p0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->extras:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public final component2()I
    .registers 1

    iget p0, p0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->serviceType:I

    return p0
.end method

.method public final component20()Lcom/oplus/seedling/sdk/seedling/SeedlingCardOptions;
    .registers 1

    iget-object p0, p0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->seedlingCardOptions:Lcom/oplus/seedling/sdk/seedling/SeedlingCardOptions;

    return-object p0
.end method

.method public final component21()Ljava/lang/Long;
    .registers 1

    iget-object p0, p0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->instanceId:Ljava/lang/Long;

    return-object p0
.end method

.method public final component22()Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;
    .registers 1

    iget-object p0, p0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->newSeedlingCardOptions:Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;

    return-object p0
.end method

.method public final component23()Ljava/lang/Long;
    .registers 1

    iget-object p0, p0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->intentId:Ljava/lang/Long;

    return-object p0
.end method

.method public final component24()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->policy:Ljava/lang/String;

    return-object p0
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

    iget-object p0, p0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->supportCardSizes:Ljava/util/List;

    return-object p0
.end method

.method public final component4()F
    .registers 1

    iget p0, p0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->score:F

    return p0
.end method

.method public final component6()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->initData:Ljava/lang/String;

    return-object p0
.end method

.method public final component7()J
    .registers 3

    iget-wide v0, p0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->timeStamp:J

    return-wide v0
.end method

.method public final component8()J
    .registers 3

    iget-wide v0, p0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->versionCode:J

    return-wide v0
.end method

.method public final component9()I
    .registers 1

    iget p0, p0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->isParamsSendToSeedling:I

    return p0
.end method

.method public final copy(Ljava/lang/String;ILjava/util/List;FILjava/lang/String;JJIZZIIIZILjava/lang/String;Ljava/lang/String;Landroid/util/ArrayMap;Lcom/oplus/seedling/sdk/seedling/SeedlingCardOptions;Ljava/lang/Long;Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;Ljava/lang/Long;Ljava/lang/String;)Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;
    .registers 55
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;FI",
            "Ljava/lang/String;",
            "JJIZZIIIZI",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/oplus/seedling/sdk/seedling/SeedlingCardOptions;",
            "Ljava/lang/Long;",
            "Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ")",
            "Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;"
        }
    .end annotation

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move/from16 v15, p15

    move/from16 v16, p16

    move/from16 v17, p17

    move/from16 v18, p18

    move-object/from16 v19, p19

    move-object/from16 v20, p20

    move-object/from16 v21, p21

    move-object/from16 v22, p22

    move-object/from16 v23, p23

    move-object/from16 v24, p24

    move-object/from16 v25, p25

    move-object/from16 v26, p26

    const-string v0, "serviceId"

    move-object/from16 p0, v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "supportCardSizes"

    move-object/from16 v1, p3

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "subdomain"

    move-object/from16 v1, p19

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v27, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v26}, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;-><init>(Ljava/lang/String;ILjava/util/List;FILjava/lang/String;JJIZZIIIZILjava/lang/String;Ljava/lang/String;Landroid/util/ArrayMap;Lcom/oplus/seedling/sdk/seedling/SeedlingCardOptions;Ljava/lang/Long;Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;Ljava/lang/Long;Ljava/lang/String;)V

    return-object v27
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;

    iget-object v1, p0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->serviceId:Ljava/lang/String;

    iget-object v3, p1, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->serviceId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget v1, p0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->serviceType:I

    iget v3, p1, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->serviceType:I

    if-eq v1, v3, :cond_1e

    return v2

    :cond_1e
    iget-object v1, p0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->supportCardSizes:Ljava/util/List;

    iget-object v3, p1, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->supportCardSizes:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    return v2

    :cond_29
    iget v1, p0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->score:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v3, p1, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->score:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3c

    return v2

    :cond_3c
    iget v1, p0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->supportEntrance:I

    iget v3, p1, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->supportEntrance:I

    if-eq v1, v3, :cond_43

    return v2

    :cond_43
    iget-object v1, p0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->initData:Ljava/lang/String;

    iget-object v3, p1, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->initData:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4e

    return v2

    :cond_4e
    iget-wide v3, p0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->timeStamp:J

    iget-wide v5, p1, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->timeStamp:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_57

    return v2

    :cond_57
    iget-wide v3, p0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->versionCode:J

    iget-wide v5, p1, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->versionCode:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_60

    return v2

    :cond_60
    iget v1, p0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->isParamsSendToSeedling:I

    iget v3, p1, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->isParamsSendToSeedling:I

    if-eq v1, v3, :cond_67

    return v2

    :cond_67
    iget-boolean v1, p0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->cannotReduceRecommend:Z

    iget-boolean v3, p1, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->cannotReduceRecommend:Z

    if-eq v1, v3, :cond_6e

    return v2

    :cond_6e
    iget-boolean v1, p0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->forceRebuild:Z

    iget-boolean v3, p1, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->forceRebuild:Z

    if-eq v1, v3, :cond_75

    return v2

    :cond_75
    iget v1, p0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->serviceCategory:I

    iget v3, p1, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->serviceCategory:I

    if-eq v1, v3, :cond_7c

    return v2

    :cond_7c
    iget v1, p0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->channelType:I

    iget v3, p1, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->channelType:I

    if-eq v1, v3, :cond_83

    return v2

    :cond_83
    iget v1, p0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->intentCategory:I

    iget v3, p1, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->intentCategory:I

    if-eq v1, v3, :cond_8a

    return v2

    :cond_8a
    iget-boolean v1, p0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->isGuaranteedCard:Z

    iget-boolean v3, p1, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->isGuaranteedCard:Z

    if-eq v1, v3, :cond_91

    return v2

    :cond_91
    iget v1, p0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->seedlingType:I

    iget v3, p1, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->seedlingType:I

    if-eq v1, v3, :cond_98

    return v2

    :cond_98
    iget-object v1, p0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->subdomain:Ljava/lang/String;

    iget-object v3, p1, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->subdomain:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a3

    return v2

    :cond_a3
    iget-object v1, p0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->hostPackage:Ljava/lang/String;

    iget-object v3, p1, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->hostPackage:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ae

    return v2

    :cond_ae
    iget-object v1, p0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->extras:Landroid/util/ArrayMap;

    iget-object v3, p1, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->extras:Landroid/util/ArrayMap;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b9

    return v2

    :cond_b9
    iget-object v1, p0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->seedlingCardOptions:Lcom/oplus/seedling/sdk/seedling/SeedlingCardOptions;

    iget-object v3, p1, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->seedlingCardOptions:Lcom/oplus/seedling/sdk/seedling/SeedlingCardOptions;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c4

    return v2

    :cond_c4
    iget-object v1, p0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->instanceId:Ljava/lang/Long;

    iget-object v3, p1, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->instanceId:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_cf

    return v2

    :cond_cf
    iget-object v1, p0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->newSeedlingCardOptions:Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;

    iget-object v3, p1, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->newSeedlingCardOptions:Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_da

    return v2

    :cond_da
    iget-object v1, p0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->intentId:Ljava/lang/Long;

    iget-object v3, p1, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->intentId:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e5

    return v2

    :cond_e5
    iget-object p0, p0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->policy:Ljava/lang/String;

    iget-object p1, p1, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->policy:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f0

    return v2

    :cond_f0
    return v0
.end method

.method public final getCannotReduceRecommend()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->cannotReduceRecommend:Z

    return p0
.end method

.method public final getChannelType()I
    .registers 1

    iget p0, p0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->channelType:I

    return p0
.end method

.method public final getExtras()Landroid/util/ArrayMap;
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

    iget-object p0, p0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->extras:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public final getForceRebuild()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->forceRebuild:Z

    return p0
.end method

.method public final getHostPackage()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->hostPackage:Ljava/lang/String;

    return-object p0
.end method

.method public final getInitData()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->initData:Ljava/lang/String;

    return-object p0
.end method

.method public final getInstanceId()Ljava/lang/Long;
    .registers 1

    iget-object p0, p0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->instanceId:Ljava/lang/Long;

    return-object p0
.end method

.method public final getIntentCategory()I
    .registers 1

    iget p0, p0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->intentCategory:I

    return p0
.end method

.method public final getIntentId()Ljava/lang/Long;
    .registers 1

    iget-object p0, p0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->intentId:Ljava/lang/Long;

    return-object p0
.end method

.method public final getNewSeedlingCardOptions()Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;
    .registers 1

    iget-object p0, p0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->newSeedlingCardOptions:Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;

    return-object p0
.end method

.method public final getPolicy()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->policy:Ljava/lang/String;

    return-object p0
.end method

.method public final getScore()F
    .registers 1

    iget p0, p0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->score:F

    return p0
.end method

.method public final getSeedlingCardOptions()Lcom/oplus/seedling/sdk/seedling/SeedlingCardOptions;
    .registers 1

    iget-object p0, p0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->seedlingCardOptions:Lcom/oplus/seedling/sdk/seedling/SeedlingCardOptions;

    return-object p0
.end method

.method public final getSeedlingType()I
    .registers 1

    iget p0, p0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->seedlingType:I

    return p0
.end method

.method public final getServiceCategory()I
    .registers 1

    iget p0, p0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->serviceCategory:I

    return p0
.end method

.method public final getServiceId()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->serviceId:Ljava/lang/String;

    return-object p0
.end method

.method public final getServiceType()I
    .registers 1

    iget p0, p0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->serviceType:I

    return p0
.end method

.method public final getSubdomain()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->subdomain:Ljava/lang/String;

    return-object p0
.end method

.method public final getSupportCardSizes()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->supportCardSizes:Ljava/util/List;

    return-object p0
.end method

.method public final getTimeStamp()J
    .registers 3

    iget-wide v0, p0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->timeStamp:J

    return-wide v0
.end method

.method public final getVersionCode()J
    .registers 3

    iget-wide v0, p0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->versionCode:J

    return-wide v0
.end method

.method public hashCode()I
    .registers 6

    iget-object v0, p0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->serviceId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->serviceType:I

    const/16 v2, 0x1f

    invoke-static {v1, v0, v2}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget-object v1, p0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->supportCardSizes:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->score:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->supportEntrance:I

    invoke-static {v1, v0, v2}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget-object v1, p0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->initData:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_2f

    move v1, v2

    goto :goto_33

    :cond_2f
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_33
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v3, p0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->timeStamp:J

    invoke-static {v3, v4}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v3, p0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->versionCode:J

    invoke-static {v3, v4}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->isParamsSendToSeedling:I

    const/16 v3, 0x1f

    invoke-static {v1, v0, v3}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget-boolean v1, p0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->cannotReduceRecommend:Z

    const/4 v3, 0x1

    if-eqz v1, :cond_56

    move v1, v3

    :cond_56
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->forceRebuild:Z

    if-eqz v1, :cond_5e

    move v1, v3

    :cond_5e
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->serviceCategory:I

    const/16 v4, 0x1f

    invoke-static {v1, v0, v4}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget v1, p0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->channelType:I

    invoke-static {v1, v0, v4}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget v1, p0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->intentCategory:I

    invoke-static {v1, v0, v4}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget-boolean v1, p0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->isGuaranteedCard:Z

    if-eqz v1, :cond_7a

    goto :goto_7b

    :cond_7a
    move v3, v1

    :goto_7b
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->seedlingType:I

    const/16 v3, 0x1f

    invoke-static {v1, v0, v3}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget-object v1, p0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->subdomain:Ljava/lang/String;

    invoke-static {v1, v0, v3}, Landroidx/room/util/b;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->hostPackage:Ljava/lang/String;

    if-nez v1, :cond_92

    move v1, v2

    goto :goto_96

    :cond_92
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_96
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->extras:Landroid/util/ArrayMap;

    if-nez v1, :cond_9f

    move v1, v2

    goto :goto_a3

    :cond_9f
    invoke-virtual {v1}, Landroid/util/ArrayMap;->hashCode()I

    move-result v1

    :goto_a3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->seedlingCardOptions:Lcom/oplus/seedling/sdk/seedling/SeedlingCardOptions;

    if-nez v1, :cond_ac

    move v1, v2

    goto :goto_b0

    :cond_ac
    invoke-virtual {v1}, Lcom/oplus/seedling/sdk/seedling/SeedlingCardOptions;->hashCode()I

    move-result v1

    :goto_b0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->instanceId:Ljava/lang/Long;

    if-nez v1, :cond_b9

    move v1, v2

    goto :goto_bd

    :cond_b9
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_bd
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->newSeedlingCardOptions:Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;

    if-nez v1, :cond_c6

    move v1, v2

    goto :goto_ca

    :cond_c6
    invoke-virtual {v1}, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->hashCode()I

    move-result v1

    :goto_ca
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->intentId:Ljava/lang/Long;

    if-nez v1, :cond_d3

    move v1, v2

    goto :goto_d7

    :cond_d3
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_d7
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->policy:Ljava/lang/String;

    if-nez p0, :cond_df

    goto :goto_e3

    :cond_df
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_e3
    add-int/2addr v0, v2

    return v0
.end method

.method public final isGuaranteedCard()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->isGuaranteedCard:Z

    return p0
.end method

.method public final isParamsSendToSeedling()I
    .registers 1

    iget p0, p0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->isParamsSendToSeedling:I

    return p0
.end method

.method public final isSupportEntrance(I)Z
    .registers 3

    iget p0, p0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->supportEntrance:I

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

.method public final isSupportSize(I)Z
    .registers 2

    iget-object p0, p0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->supportCardSizes:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final setCannotReduceRecommend(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->cannotReduceRecommend:Z

    return-void
.end method

.method public final setChannelType(I)V
    .registers 2

    iput p1, p0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->channelType:I

    return-void
.end method

.method public final setForceRebuild(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->forceRebuild:Z

    return-void
.end method

.method public final setGuaranteedCard(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->isGuaranteedCard:Z

    return-void
.end method

.method public final setHostPackage(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->hostPackage:Ljava/lang/String;

    return-void
.end method

.method public final setInstanceId(Ljava/lang/Long;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->instanceId:Ljava/lang/Long;

    return-void
.end method

.method public final setIntentCategory(I)V
    .registers 2

    iput p1, p0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->intentCategory:I

    return-void
.end method

.method public final setIntentId(Ljava/lang/Long;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->intentId:Ljava/lang/Long;

    return-void
.end method

.method public final setNewSeedlingCardOptions(Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->newSeedlingCardOptions:Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;

    return-void
.end method

.method public final setParamsSendToSeedling(I)V
    .registers 2

    iput p1, p0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->isParamsSendToSeedling:I

    return-void
.end method

.method public final setPolicy(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->policy:Ljava/lang/String;

    return-void
.end method

.method public final setSeedlingCardOptions(Lcom/oplus/seedling/sdk/seedling/SeedlingCardOptions;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->seedlingCardOptions:Lcom/oplus/seedling/sdk/seedling/SeedlingCardOptions;

    return-void
.end method

.method public final setSeedlingType(I)V
    .registers 2

    iput p1, p0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->seedlingType:I

    return-void
.end method

.method public final setServiceCategory(I)V
    .registers 2

    iput p1, p0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->serviceCategory:I

    return-void
.end method

.method public final setSubdomain(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->subdomain:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 28

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->serviceId:Ljava/lang/String;

    iget v2, v0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->serviceType:I

    iget-object v3, v0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->supportCardSizes:Ljava/util/List;

    iget v4, v0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->score:F

    iget v5, v0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->supportEntrance:I

    iget-object v6, v0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->initData:Ljava/lang/String;

    iget-wide v7, v0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->timeStamp:J

    iget-wide v9, v0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->versionCode:J

    iget v11, v0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->isParamsSendToSeedling:I

    iget-boolean v12, v0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->cannotReduceRecommend:Z

    iget-boolean v13, v0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->forceRebuild:Z

    iget v14, v0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->serviceCategory:I

    iget v15, v0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->channelType:I

    move/from16 v16, v15

    iget v15, v0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->intentCategory:I

    move/from16 v17, v15

    iget-boolean v15, v0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->isGuaranteedCard:Z

    move/from16 v18, v15

    iget v15, v0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->seedlingType:I

    move/from16 v19, v15

    iget-object v15, v0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->subdomain:Ljava/lang/String;

    move-object/from16 v20, v15

    iget-object v15, v0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->hostPackage:Ljava/lang/String;

    move-object/from16 v21, v15

    iget-object v15, v0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->extras:Landroid/util/ArrayMap;

    move-object/from16 v22, v15

    iget-object v15, v0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->seedlingCardOptions:Lcom/oplus/seedling/sdk/seedling/SeedlingCardOptions;

    move-object/from16 v23, v15

    iget-object v15, v0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->instanceId:Ljava/lang/Long;

    move-object/from16 v24, v15

    iget-object v15, v0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->newSeedlingCardOptions:Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;

    move-object/from16 v25, v15

    iget-object v15, v0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->intentId:Ljava/lang/Long;

    iget-object v0, v0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;->policy:Ljava/lang/String;

    move-object/from16 p0, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v26, v15

    const-string v15, "ServiceInfo(serviceId="

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", serviceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", supportCardSizes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", score="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", supportEntrance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", initData="

    const-string v2, ", timeStamp="

    invoke-static {v0, v5, v1, v6, v2}, Landroidx/room/q;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", versionCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", isParamsSendToSeedling="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cannotReduceRecommend="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", forceRebuild="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", serviceCategory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", channelType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", intentCategory="

    const-string v2, ", isGuaranteedCard="

    move/from16 v3, v16

    move/from16 v4, v17

    invoke-static {v0, v3, v1, v4, v2}, Landroidx/constraintlayout/core/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", seedlingType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", subdomain="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", hostPackage="

    const-string v2, ", extras="

    move-object/from16 v3, v20

    move-object/from16 v4, v21

    invoke-static {v0, v3, v1, v4, v2}, Landroidx/room/s;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", seedlingCardOptions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", instanceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", newSeedlingCardOptions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", intentId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", policy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
