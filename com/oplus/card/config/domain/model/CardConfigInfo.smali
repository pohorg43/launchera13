.class public final Lcom/oplus/card/config/domain/model/CardConfigInfo;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/card/config/domain/model/CardConfigInfo$SIZE;,
        Lcom/oplus/card/config/domain/model/CardConfigInfo$CATEGORY;,
        Lcom/oplus/card/config/domain/model/CardConfigInfo$OPERATION;,
        Lcom/oplus/card/config/domain/model/CardConfigInfo$CardCreateType;,
        Lcom/oplus/card/config/domain/model/CardConfigInfo$SUBSCRIBED;,
        Lcom/oplus/card/config/domain/model/CardConfigInfo$DISPLAYAREA;,
        Lcom/oplus/card/config/domain/model/CardConfigInfo$Companion;
    }
.end annotation


# static fields
.field public static final ADVICE_GROUP_ID:I = 0x3e8

.field public static final Companion:Lcom/oplus/card/config/domain/model/CardConfigInfo$Companion;

.field public static final FLAG_DISABLE_LAUNCHER_CARD_SHOP:I = 0x2


# instance fields
.field private cardName:Ljava/lang/String;

.field private category:I

.field private componentName:Ljava/lang/String;

.field private final defaultSubscribed:I

.field private final desc:Ljava/lang/String;

.field private final displayArea:I

.field private final groupIcon:Ljava/lang/String;

.field private final groupId:I

.field private final groupTitle:Ljava/lang/String;

.field private final loadingBgIcon:Ljava/lang/String;

.field private final loadingIcon:Ljava/lang/String;

.field private minHeight:I

.field private minWidth:I

.field private final name:Ljava/lang/String;

.field private final operatingIcon:I

.field private final orderInGroup:I

.field private packageName:Ljava/lang/String;

.field private final preview:Ljava/lang/String;

.field private final reservedFlag:I

.field private final resizable:Z

.field private serviceId:Ljava/lang/String;

.field private final settingUrl:Ljava/lang/String;

.field private size:I

.field private spanX:I

.field private spanY:I

.field private type:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/card/config/domain/model/CardConfigInfo$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/card/config/domain/model/CardConfigInfo$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->Companion:Lcom/oplus/card/config/domain/model/CardConfigInfo$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 27

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const v24, 0x7fffff

    const/16 v25, 0x0

    invoke-direct/range {v0 .. v25}, Lcom/oplus/card/config/domain/model/CardConfigInfo;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IZILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;IILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IZILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .registers 36

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p10

    move-object/from16 v7, p11

    move-object/from16 v8, p15

    move-object/from16 v9, p19

    move-object/from16 v10, p20

    const-string v11, "groupTitle"

    invoke-static {p2, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "groupIcon"

    invoke-static {p3, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "name"

    invoke-static {v3, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "desc"

    invoke-static {v4, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "preview"

    invoke-static {v5, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "packageName"

    invoke-static {v6, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "componentName"

    invoke-static {v7, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "settingUrl"

    invoke-static {v8, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "loadingIcon"

    invoke-static {v9, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "loadingBgIcon"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v11, p1

    iput v11, v0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->groupId:I

    iput-object v1, v0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->groupTitle:Ljava/lang/String;

    iput-object v2, v0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->groupIcon:Ljava/lang/String;

    move/from16 v1, p4

    iput v1, v0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->type:I

    iput-object v3, v0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->name:Ljava/lang/String;

    iput-object v4, v0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->desc:Ljava/lang/String;

    iput-object v5, v0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->preview:Ljava/lang/String;

    move/from16 v1, p8

    iput v1, v0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->size:I

    move/from16 v1, p9

    iput v1, v0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->orderInGroup:I

    iput-object v6, v0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->packageName:Ljava/lang/String;

    iput-object v7, v0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->componentName:Ljava/lang/String;

    move/from16 v1, p12

    iput v1, v0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->category:I

    move/from16 v1, p13

    iput-boolean v1, v0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->resizable:Z

    move/from16 v1, p14

    iput v1, v0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->operatingIcon:I

    iput-object v8, v0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->settingUrl:Ljava/lang/String;

    move/from16 v1, p16

    iput v1, v0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->displayArea:I

    move/from16 v1, p17

    iput v1, v0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->minWidth:I

    move/from16 v1, p18

    iput v1, v0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->minHeight:I

    iput-object v9, v0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->loadingIcon:Ljava/lang/String;

    iput-object v10, v0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->loadingBgIcon:Ljava/lang/String;

    move/from16 v1, p21

    iput v1, v0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->reservedFlag:I

    move/from16 v1, p22

    iput v1, v0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->defaultSubscribed:I

    move-object/from16 v1, p23

    iput-object v1, v0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->serviceId:Ljava/lang/String;

    const/4 v1, 0x1

    iput v1, v0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->spanX:I

    iput v1, v0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->spanY:I

    const-string v1, ""

    iput-object v1, v0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->cardName:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IZILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;IILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 50

    move/from16 v0, p24

    and-int/lit8 v1, v0, 0x1

    const/4 v2, -0x1

    if-eqz v1, :cond_9

    move v1, v2

    goto :goto_b

    :cond_9
    move/from16 v1, p1

    :goto_b
    and-int/lit8 v3, v0, 0x2

    const-string v4, ""

    if-eqz v3, :cond_13

    move-object v3, v4

    goto :goto_15

    :cond_13
    move-object/from16 v3, p2

    :goto_15
    and-int/lit8 v5, v0, 0x4

    if-eqz v5, :cond_1b

    move-object v5, v4

    goto :goto_1d

    :cond_1b
    move-object/from16 v5, p3

    :goto_1d
    and-int/lit8 v6, v0, 0x8

    if-eqz v6, :cond_22

    goto :goto_24

    :cond_22
    move/from16 v2, p4

    :goto_24
    and-int/lit8 v6, v0, 0x10

    if-eqz v6, :cond_2a

    move-object v6, v4

    goto :goto_2c

    :cond_2a
    move-object/from16 v6, p5

    :goto_2c
    and-int/lit8 v7, v0, 0x20

    if-eqz v7, :cond_32

    move-object v7, v4

    goto :goto_34

    :cond_32
    move-object/from16 v7, p6

    :goto_34
    and-int/lit8 v8, v0, 0x40

    if-eqz v8, :cond_3a

    move-object v8, v4

    goto :goto_3c

    :cond_3a
    move-object/from16 v8, p7

    :goto_3c
    and-int/lit16 v9, v0, 0x80

    const/4 v10, 0x2

    if-eqz v9, :cond_43

    move v9, v10

    goto :goto_45

    :cond_43
    move/from16 v9, p8

    :goto_45
    and-int/lit16 v11, v0, 0x100

    if-eqz v11, :cond_4b

    const/4 v11, 0x0

    goto :goto_4d

    :cond_4b
    move/from16 v11, p9

    :goto_4d
    and-int/lit16 v13, v0, 0x200

    if-eqz v13, :cond_53

    move-object v13, v4

    goto :goto_55

    :cond_53
    move-object/from16 v13, p10

    :goto_55
    and-int/lit16 v14, v0, 0x400

    if-eqz v14, :cond_5b

    move-object v14, v4

    goto :goto_5d

    :cond_5b
    move-object/from16 v14, p11

    :goto_5d
    and-int/lit16 v15, v0, 0x800

    if-eqz v15, :cond_62

    goto :goto_64

    :cond_62
    move/from16 v10, p12

    :goto_64
    and-int/lit16 v15, v0, 0x1000

    if-eqz v15, :cond_6a

    const/4 v15, 0x0

    goto :goto_6c

    :cond_6a
    move/from16 v15, p13

    :goto_6c
    and-int/lit16 v12, v0, 0x2000

    if-eqz v12, :cond_72

    const/4 v12, 0x1

    goto :goto_74

    :cond_72
    move/from16 v12, p14

    :goto_74
    move-object/from16 p25, v4

    and-int/lit16 v4, v0, 0x4000

    if-eqz v4, :cond_7d

    move-object/from16 v4, p25

    goto :goto_7f

    :cond_7d
    move-object/from16 v4, p15

    :goto_7f
    const v16, 0x8000

    and-int v16, v0, v16

    if-eqz v16, :cond_89

    const/16 v16, 0x0

    goto :goto_8b

    :cond_89
    move/from16 v16, p16

    :goto_8b
    const/high16 v17, 0x10000

    and-int v17, v0, v17

    if-eqz v17, :cond_94

    const/16 v17, 0x0

    goto :goto_96

    :cond_94
    move/from16 v17, p17

    :goto_96
    const/high16 v18, 0x20000

    and-int v18, v0, v18

    if-eqz v18, :cond_9f

    const/16 v18, 0x0

    goto :goto_a1

    :cond_9f
    move/from16 v18, p18

    :goto_a1
    const/high16 v19, 0x40000

    and-int v19, v0, v19

    if-eqz v19, :cond_aa

    move-object/from16 v19, p25

    goto :goto_ac

    :cond_aa
    move-object/from16 v19, p19

    :goto_ac
    const/high16 v20, 0x80000

    and-int v20, v0, v20

    if-eqz v20, :cond_b5

    move-object/from16 v20, p25

    goto :goto_b7

    :cond_b5
    move-object/from16 v20, p20

    :goto_b7
    const/high16 v21, 0x100000

    and-int v21, v0, v21

    if-eqz v21, :cond_c0

    const/16 v21, 0x0

    goto :goto_c2

    :cond_c0
    move/from16 v21, p21

    :goto_c2
    const/high16 v22, 0x200000

    and-int v22, v0, v22

    if-eqz v22, :cond_cb

    const/16 v22, 0x0

    goto :goto_cd

    :cond_cb
    move/from16 v22, p22

    :goto_cd
    const/high16 v23, 0x400000

    and-int v0, v0, v23

    if-eqz v0, :cond_d6

    move-object/from16 v0, p25

    goto :goto_d8

    :cond_d6
    move-object/from16 v0, p23

    :goto_d8
    move/from16 p1, v1

    move-object/from16 p2, v3

    move-object/from16 p3, v5

    move/from16 p4, v2

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move/from16 p8, v9

    move/from16 p9, v11

    move-object/from16 p10, v13

    move-object/from16 p11, v14

    move/from16 p12, v10

    move/from16 p13, v15

    move/from16 p14, v12

    move-object/from16 p15, v4

    move/from16 p16, v16

    move/from16 p17, v17

    move/from16 p18, v18

    move-object/from16 p19, v19

    move-object/from16 p20, v20

    move/from16 p21, v21

    move/from16 p22, v22

    move-object/from16 p23, v0

    invoke-direct/range {p0 .. p23}, Lcom/oplus/card/config/domain/model/CardConfigInfo;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IZILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/oplus/card/config/domain/model/CardConfigInfo;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IZILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;IILjava/lang/String;ILjava/lang/Object;)Lcom/oplus/card/config/domain/model/CardConfigInfo;
    .registers 43

    move-object/from16 v0, p0

    move/from16 v1, p24

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_b

    iget v2, v0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->groupId:I

    goto :goto_d

    :cond_b
    move/from16 v2, p1

    :goto_d
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_14

    iget-object v3, v0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->groupTitle:Ljava/lang/String;

    goto :goto_16

    :cond_14
    move-object/from16 v3, p2

    :goto_16
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_1d

    iget-object v4, v0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->groupIcon:Ljava/lang/String;

    goto :goto_1f

    :cond_1d
    move-object/from16 v4, p3

    :goto_1f
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_26

    iget v5, v0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->type:I

    goto :goto_28

    :cond_26
    move/from16 v5, p4

    :goto_28
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_2f

    iget-object v6, v0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->name:Ljava/lang/String;

    goto :goto_31

    :cond_2f
    move-object/from16 v6, p5

    :goto_31
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_38

    iget-object v7, v0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->desc:Ljava/lang/String;

    goto :goto_3a

    :cond_38
    move-object/from16 v7, p6

    :goto_3a
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_41

    iget-object v8, v0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->preview:Ljava/lang/String;

    goto :goto_43

    :cond_41
    move-object/from16 v8, p7

    :goto_43
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_4a

    iget v9, v0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->size:I

    goto :goto_4c

    :cond_4a
    move/from16 v9, p8

    :goto_4c
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_53

    iget v10, v0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->orderInGroup:I

    goto :goto_55

    :cond_53
    move/from16 v10, p9

    :goto_55
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_5c

    iget-object v11, v0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->packageName:Ljava/lang/String;

    goto :goto_5e

    :cond_5c
    move-object/from16 v11, p10

    :goto_5e
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_65

    iget-object v12, v0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->componentName:Ljava/lang/String;

    goto :goto_67

    :cond_65
    move-object/from16 v12, p11

    :goto_67
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_6e

    iget v13, v0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->category:I

    goto :goto_70

    :cond_6e
    move/from16 v13, p12

    :goto_70
    and-int/lit16 v14, v1, 0x1000

    if-eqz v14, :cond_77

    iget-boolean v14, v0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->resizable:Z

    goto :goto_79

    :cond_77
    move/from16 v14, p13

    :goto_79
    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_80

    iget v15, v0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->operatingIcon:I

    goto :goto_82

    :cond_80
    move/from16 v15, p14

    :goto_82
    move/from16 p14, v15

    and-int/lit16 v15, v1, 0x4000

    if-eqz v15, :cond_8b

    iget-object v15, v0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->settingUrl:Ljava/lang/String;

    goto :goto_8d

    :cond_8b
    move-object/from16 v15, p15

    :goto_8d
    const v16, 0x8000

    and-int v16, v1, v16

    move-object/from16 p15, v15

    if-eqz v16, :cond_99

    iget v15, v0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->displayArea:I

    goto :goto_9b

    :cond_99
    move/from16 v15, p16

    :goto_9b
    const/high16 v16, 0x10000

    and-int v16, v1, v16

    move/from16 p16, v15

    if-eqz v16, :cond_a6

    iget v15, v0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->minWidth:I

    goto :goto_a8

    :cond_a6
    move/from16 v15, p17

    :goto_a8
    const/high16 v16, 0x20000

    and-int v16, v1, v16

    move/from16 p17, v15

    if-eqz v16, :cond_b3

    iget v15, v0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->minHeight:I

    goto :goto_b5

    :cond_b3
    move/from16 v15, p18

    :goto_b5
    const/high16 v16, 0x40000

    and-int v16, v1, v16

    move/from16 p18, v15

    if-eqz v16, :cond_c0

    iget-object v15, v0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->loadingIcon:Ljava/lang/String;

    goto :goto_c2

    :cond_c0
    move-object/from16 v15, p19

    :goto_c2
    const/high16 v16, 0x80000

    and-int v16, v1, v16

    move-object/from16 p19, v15

    if-eqz v16, :cond_cd

    iget-object v15, v0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->loadingBgIcon:Ljava/lang/String;

    goto :goto_cf

    :cond_cd
    move-object/from16 v15, p20

    :goto_cf
    const/high16 v16, 0x100000

    and-int v16, v1, v16

    move-object/from16 p20, v15

    if-eqz v16, :cond_da

    iget v15, v0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->reservedFlag:I

    goto :goto_dc

    :cond_da
    move/from16 v15, p21

    :goto_dc
    const/high16 v16, 0x200000

    and-int v16, v1, v16

    move/from16 p21, v15

    if-eqz v16, :cond_e7

    iget v15, v0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->defaultSubscribed:I

    goto :goto_e9

    :cond_e7
    move/from16 v15, p22

    :goto_e9
    const/high16 v16, 0x400000

    and-int v1, v1, v16

    if-eqz v1, :cond_f2

    iget-object v1, v0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->serviceId:Ljava/lang/String;

    goto :goto_f4

    :cond_f2
    move-object/from16 v1, p23

    :goto_f4
    move/from16 p1, v2

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move/from16 p8, v9

    move/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move/from16 p12, v13

    move/from16 p13, v14

    move/from16 p22, v15

    move-object/from16 p23, v1

    invoke-virtual/range {p0 .. p23}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->copy(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IZILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;IILjava/lang/String;)Lcom/oplus/card/config/domain/model/CardConfigInfo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()I
    .registers 1

    iget p0, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->groupId:I

    return p0
.end method

.method public final component10()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public final component11()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->componentName:Ljava/lang/String;

    return-object p0
.end method

.method public final component12()I
    .registers 1

    iget p0, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->category:I

    return p0
.end method

.method public final component13()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->resizable:Z

    return p0
.end method

.method public final component14()I
    .registers 1

    iget p0, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->operatingIcon:I

    return p0
.end method

.method public final component15()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->settingUrl:Ljava/lang/String;

    return-object p0
.end method

.method public final component16()I
    .registers 1

    iget p0, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->displayArea:I

    return p0
.end method

.method public final component17()I
    .registers 1

    iget p0, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->minWidth:I

    return p0
.end method

.method public final component18()I
    .registers 1

    iget p0, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->minHeight:I

    return p0
.end method

.method public final component19()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->loadingIcon:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->groupTitle:Ljava/lang/String;

    return-object p0
.end method

.method public final component20()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->loadingBgIcon:Ljava/lang/String;

    return-object p0
.end method

.method public final component21()I
    .registers 1

    iget p0, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->reservedFlag:I

    return p0
.end method

.method public final component22()I
    .registers 1

    iget p0, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->defaultSubscribed:I

    return p0
.end method

.method public final component23()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->serviceId:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->groupIcon:Ljava/lang/String;

    return-object p0
.end method

.method public final component4()I
    .registers 1

    iget p0, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->type:I

    return p0
.end method

.method public final component5()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final component6()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->desc:Ljava/lang/String;

    return-object p0
.end method

.method public final component7()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->preview:Ljava/lang/String;

    return-object p0
.end method

.method public final component8()I
    .registers 1

    iget p0, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->size:I

    return p0
.end method

.method public final component9()I
    .registers 1

    iget p0, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->orderInGroup:I

    return p0
.end method

.method public final copy(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IZILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;IILjava/lang/String;)Lcom/oplus/card/config/domain/model/CardConfigInfo;
    .registers 49

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move-object/from16 v15, p15

    move/from16 v16, p16

    move/from16 v17, p17

    move/from16 v18, p18

    move-object/from16 v19, p19

    move-object/from16 v20, p20

    move/from16 v21, p21

    move/from16 v22, p22

    move-object/from16 v23, p23

    const-string v0, "groupTitle"

    move/from16 p0, v1

    move-object/from16 v1, p2

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "groupIcon"

    move-object/from16 v1, p3

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    move-object/from16 v1, p5

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "desc"

    move-object/from16 v1, p6

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "preview"

    move-object/from16 v1, p7

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packageName"

    move-object/from16 v1, p10

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "componentName"

    move-object/from16 v1, p11

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "settingUrl"

    move-object/from16 v1, p15

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loadingIcon"

    move-object/from16 v1, p19

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loadingBgIcon"

    move-object/from16 v1, p20

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v24, Lcom/oplus/card/config/domain/model/CardConfigInfo;

    move-object/from16 v0, v24

    move/from16 v1, p0

    invoke-direct/range {v0 .. v23}, Lcom/oplus/card/config/domain/model/CardConfigInfo;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IZILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    return-object v24
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/oplus/card/config/domain/model/CardConfigInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/oplus/card/config/domain/model/CardConfigInfo;

    iget v1, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->groupId:I

    iget v3, p1, Lcom/oplus/card/config/domain/model/CardConfigInfo;->groupId:I

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->groupTitle:Ljava/lang/String;

    iget-object v3, p1, Lcom/oplus/card/config/domain/model/CardConfigInfo;->groupTitle:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    return v2

    :cond_1e
    iget-object v1, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->groupIcon:Ljava/lang/String;

    iget-object v3, p1, Lcom/oplus/card/config/domain/model/CardConfigInfo;->groupIcon:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    return v2

    :cond_29
    iget v1, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->type:I

    iget v3, p1, Lcom/oplus/card/config/domain/model/CardConfigInfo;->type:I

    if-eq v1, v3, :cond_30

    return v2

    :cond_30
    iget-object v1, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/oplus/card/config/domain/model/CardConfigInfo;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3b

    return v2

    :cond_3b
    iget-object v1, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->desc:Ljava/lang/String;

    iget-object v3, p1, Lcom/oplus/card/config/domain/model/CardConfigInfo;->desc:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_46

    return v2

    :cond_46
    iget-object v1, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->preview:Ljava/lang/String;

    iget-object v3, p1, Lcom/oplus/card/config/domain/model/CardConfigInfo;->preview:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_51

    return v2

    :cond_51
    iget v1, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->size:I

    iget v3, p1, Lcom/oplus/card/config/domain/model/CardConfigInfo;->size:I

    if-eq v1, v3, :cond_58

    return v2

    :cond_58
    iget v1, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->orderInGroup:I

    iget v3, p1, Lcom/oplus/card/config/domain/model/CardConfigInfo;->orderInGroup:I

    if-eq v1, v3, :cond_5f

    return v2

    :cond_5f
    iget-object v1, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/oplus/card/config/domain/model/CardConfigInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6a

    return v2

    :cond_6a
    iget-object v1, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->componentName:Ljava/lang/String;

    iget-object v3, p1, Lcom/oplus/card/config/domain/model/CardConfigInfo;->componentName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_75

    return v2

    :cond_75
    iget v1, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->category:I

    iget v3, p1, Lcom/oplus/card/config/domain/model/CardConfigInfo;->category:I

    if-eq v1, v3, :cond_7c

    return v2

    :cond_7c
    iget-boolean v1, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->resizable:Z

    iget-boolean v3, p1, Lcom/oplus/card/config/domain/model/CardConfigInfo;->resizable:Z

    if-eq v1, v3, :cond_83

    return v2

    :cond_83
    iget v1, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->operatingIcon:I

    iget v3, p1, Lcom/oplus/card/config/domain/model/CardConfigInfo;->operatingIcon:I

    if-eq v1, v3, :cond_8a

    return v2

    :cond_8a
    iget-object v1, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->settingUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/oplus/card/config/domain/model/CardConfigInfo;->settingUrl:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_95

    return v2

    :cond_95
    iget v1, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->displayArea:I

    iget v3, p1, Lcom/oplus/card/config/domain/model/CardConfigInfo;->displayArea:I

    if-eq v1, v3, :cond_9c

    return v2

    :cond_9c
    iget v1, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->minWidth:I

    iget v3, p1, Lcom/oplus/card/config/domain/model/CardConfigInfo;->minWidth:I

    if-eq v1, v3, :cond_a3

    return v2

    :cond_a3
    iget v1, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->minHeight:I

    iget v3, p1, Lcom/oplus/card/config/domain/model/CardConfigInfo;->minHeight:I

    if-eq v1, v3, :cond_aa

    return v2

    :cond_aa
    iget-object v1, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->loadingIcon:Ljava/lang/String;

    iget-object v3, p1, Lcom/oplus/card/config/domain/model/CardConfigInfo;->loadingIcon:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b5

    return v2

    :cond_b5
    iget-object v1, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->loadingBgIcon:Ljava/lang/String;

    iget-object v3, p1, Lcom/oplus/card/config/domain/model/CardConfigInfo;->loadingBgIcon:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c0

    return v2

    :cond_c0
    iget v1, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->reservedFlag:I

    iget v3, p1, Lcom/oplus/card/config/domain/model/CardConfigInfo;->reservedFlag:I

    if-eq v1, v3, :cond_c7

    return v2

    :cond_c7
    iget v1, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->defaultSubscribed:I

    iget v3, p1, Lcom/oplus/card/config/domain/model/CardConfigInfo;->defaultSubscribed:I

    if-eq v1, v3, :cond_ce

    return v2

    :cond_ce
    iget-object p0, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->serviceId:Ljava/lang/String;

    iget-object p1, p1, Lcom/oplus/card/config/domain/model/CardConfigInfo;->serviceId:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d9

    return v2

    :cond_d9
    return v0
.end method

.method public final getCardName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->cardName:Ljava/lang/String;

    return-object p0
.end method

.method public final getCardName(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->cardName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p0, p1}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getCardNameFromConfig(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->cardName:Ljava/lang/String;

    :cond_13
    iget-object p0, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->cardName:Ljava/lang/String;

    return-object p0
.end method

.method public final getCardNameFromConfig(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->serviceId:Ljava/lang/String;

    if-nez v2, :cond_f

    const-string v2, ""

    :cond_f
    iget p0, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->category:I

    invoke-static {p1, v0, v1, v2, p0}, Lcom/oplus/card/util/ConfigInfoCoverUtil;->getCardName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getCardPreview(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/card/util/ConfigInfoCoverUtil;->INSTANCE:Lcom/oplus/card/util/ConfigInfoCoverUtil;

    iget-object v1, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->preview:Ljava/lang/String;

    iget-object p0, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, p0}, Lcom/oplus/card/util/ConfigInfoCoverUtil;->getDrawable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Landroid/graphics/drawable/Drawable;

    const v1, 0x7f08043d

    if-nez v0, :cond_20

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const-string p1, "context.getDrawable(R.dr…ble.card_default_drag_bg)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_20
    check-cast p0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    if-lez v0, :cond_30

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    if-gtz v0, :cond_2f

    goto :goto_30

    :cond_2f
    return-object p0

    :cond_30
    :goto_30
    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const-string p1, "context.getDrawable(\n   …default_drag_bg\n        )"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getCategory()I
    .registers 1

    iget p0, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->category:I

    return p0
.end method

.method public final getComponentName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->componentName:Ljava/lang/String;

    return-object p0
.end method

.method public final getDefaultSubscribed()I
    .registers 1

    iget p0, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->defaultSubscribed:I

    return p0
.end method

.method public final getDesc()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->desc:Ljava/lang/String;

    return-object p0
.end method

.method public final getDisplayArea()I
    .registers 1

    iget p0, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->displayArea:I

    return p0
.end method

.method public final getDynamic()Z
    .registers 2

    iget p0, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->groupId:I

    const/16 v0, 0x3e8

    if-ne p0, v0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public final getGroupIcon()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->groupIcon:Ljava/lang/String;

    return-object p0
.end method

.method public final getGroupId()I
    .registers 1

    iget p0, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->groupId:I

    return p0
.end method

.method public final getGroupTitle()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->groupTitle:Ljava/lang/String;

    return-object p0
.end method

.method public final getLoadingBgIcon()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->loadingBgIcon:Ljava/lang/String;

    return-object p0
.end method

.method public final getLoadingIcon()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->loadingIcon:Ljava/lang/String;

    return-object p0
.end method

.method public final getMinHeight()I
    .registers 1

    iget p0, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->minHeight:I

    return p0
.end method

.method public final getMinWidth()I
    .registers 1

    iget p0, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->minWidth:I

    return p0
.end method

.method public final getMinWidthAndHeight(Landroid/content/Context;)Landroid/graphics/Point;
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->minWidth:I

    if-eqz v0, :cond_d

    iget v0, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->minHeight:I

    if-nez v0, :cond_10

    :cond_d
    invoke-virtual {p0, p1}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->initDefaultMinWidthAndHeight(Landroid/content/Context;)V

    :cond_10
    new-instance p1, Landroid/graphics/Point;

    iget v0, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->minWidth:I

    iget p0, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->minHeight:I

    invoke-direct {p1, v0, p0}, Landroid/graphics/Point;-><init>(II)V

    return-object p1
.end method

.method public final getName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final getOperatingIcon()I
    .registers 1

    iget p0, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->operatingIcon:I

    return p0
.end method

.method public final getOrderInGroup()I
    .registers 1

    iget p0, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->orderInGroup:I

    return p0
.end method

.method public final getPackageName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public final getPreview()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->preview:Ljava/lang/String;

    return-object p0
.end method

.method public final getProvider()Landroid/content/ComponentName;
    .registers 3

    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->packageName:Ljava/lang/String;

    iget-object p0, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->componentName:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getReservedFlag()I
    .registers 1

    iget p0, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->reservedFlag:I

    return p0
.end method

.method public final getResizable()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->resizable:Z

    return p0
.end method

.method public final getServiceId()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->serviceId:Ljava/lang/String;

    return-object p0
.end method

.method public final getSettingUrl()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->settingUrl:Ljava/lang/String;

    return-object p0
.end method

.method public final getSize()I
    .registers 1

    iget p0, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->size:I

    return p0
.end method

.method public final getSpanX()I
    .registers 1

    iget p0, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->spanX:I

    return p0
.end method

.method public final getSpanY()I
    .registers 1

    iget p0, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->spanY:I

    return p0
.end method

.method public final getType()I
    .registers 1

    iget p0, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->type:I

    return p0
.end method

.method public final getUserHandle()Landroid/os/UserHandle;
    .registers 2

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p0

    const-string v0, "myUserHandle()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public hashCode()I
    .registers 4

    iget v0, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->groupId:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->groupTitle:Ljava/lang/String;

    const/16 v2, 0x1f

    invoke-static {v1, v0, v2}, Landroidx/room/util/b;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->groupIcon:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Landroidx/room/util/b;->a(Ljava/lang/String;II)I

    move-result v0

    iget v1, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->type:I

    invoke-static {v1, v0, v2}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget-object v1, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->name:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Landroidx/room/util/b;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->desc:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Landroidx/room/util/b;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->preview:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Landroidx/room/util/b;->a(Ljava/lang/String;II)I

    move-result v0

    iget v1, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->size:I

    invoke-static {v1, v0, v2}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget v1, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->orderInGroup:I

    invoke-static {v1, v0, v2}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget-object v1, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Landroidx/room/util/b;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->componentName:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Landroidx/room/util/b;->a(Ljava/lang/String;II)I

    move-result v0

    iget v1, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->category:I

    invoke-static {v1, v0, v2}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget-boolean v1, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->resizable:Z

    if-eqz v1, :cond_51

    const/4 v1, 0x1

    :cond_51
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->operatingIcon:I

    const/16 v2, 0x1f

    invoke-static {v1, v0, v2}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget-object v1, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->settingUrl:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Landroidx/room/util/b;->a(Ljava/lang/String;II)I

    move-result v0

    iget v1, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->displayArea:I

    invoke-static {v1, v0, v2}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget v1, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->minWidth:I

    invoke-static {v1, v0, v2}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget v1, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->minHeight:I

    invoke-static {v1, v0, v2}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget-object v1, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->loadingIcon:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Landroidx/room/util/b;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->loadingBgIcon:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Landroidx/room/util/b;->a(Ljava/lang/String;II)I

    move-result v0

    iget v1, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->reservedFlag:I

    invoke-static {v1, v0, v2}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget v1, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->defaultSubscribed:I

    invoke-static {v1, v0, v2}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget-object p0, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->serviceId:Ljava/lang/String;

    if-nez p0, :cond_92

    const/4 p0, 0x0

    goto :goto_96

    :cond_92
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    :goto_96
    add-int/2addr v0, p0

    return v0
.end method

.method public final initDefaultMinWidthAndHeight(Landroid/content/Context;)V
    .registers 10

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/OplusInvariantDeviceProfile;

    move-result-object v0

    sget-object v1, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v1}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v2

    const/4 v3, 0x5

    const/4 v4, 0x6

    const/4 v5, 0x4

    if-eqz v2, :cond_1d

    invoke-virtual {v0}, Lcom/android/launcher3/OplusInvariantDeviceProfile;->getPortraitProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p1

    invoke-virtual {p1, v4, v3}, Lcom/android/launcher3/DeviceProfile;->getCellSize(II)Landroid/graphics/Point;

    move-result-object p1

    goto :goto_25

    :cond_1d
    invoke-virtual {v0, p1}, Lcom/android/launcher3/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p1

    invoke-virtual {p1, v5, v4}, Lcom/android/launcher3/DeviceProfile;->getCellSize(II)Landroid/graphics/Point;

    move-result-object p1

    :goto_25
    iget v0, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    iget v2, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->size:I

    const/4 v4, 0x1

    const/4 v6, 0x2

    if-eq v2, v4, :cond_6c

    if-eq v2, v6, :cond_65

    const/4 v7, 0x3

    if-eq v2, v7, :cond_51

    if-eq v2, v3, :cond_4a

    invoke-virtual {v1}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_43

    mul-int/2addr v0, v7

    iput v0, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->minWidth:I

    mul-int/2addr p1, v6

    iput p1, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->minHeight:I

    goto :goto_72

    :cond_43
    mul-int/2addr v0, v5

    iput v0, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->minWidth:I

    mul-int/2addr p1, v6

    iput p1, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->minHeight:I

    goto :goto_72

    :cond_4a
    mul-int/2addr v0, v6

    iput v0, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->minWidth:I

    mul-int/2addr p1, v4

    iput p1, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->minHeight:I

    goto :goto_72

    :cond_51
    invoke-virtual {v1}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_5e

    mul-int/2addr v0, v7

    iput v0, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->minWidth:I

    mul-int/2addr p1, v7

    iput p1, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->minHeight:I

    goto :goto_72

    :cond_5e
    mul-int/2addr v0, v5

    iput v0, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->minWidth:I

    mul-int/2addr p1, v5

    iput p1, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->minHeight:I

    goto :goto_72

    :cond_65
    mul-int/2addr v0, v5

    iput v0, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->minWidth:I

    mul-int/2addr p1, v6

    iput p1, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->minHeight:I

    goto :goto_72

    :cond_6c
    mul-int/2addr v0, v6

    iput v0, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->minWidth:I

    mul-int/2addr p1, v6

    iput p1, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->minHeight:I

    :goto_72
    return-void
.end method

.method public final initSpans()V
    .registers 8

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    if-nez v0, :cond_12

    return-void

    :cond_12
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->size:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_21

    const/4 v0, 0x2

    iput v0, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->spanX:I

    iput v0, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->spanY:I

    return-void

    :cond_21
    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->initDefaultMinWidthAndHeight(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/OplusInvariantDeviceProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/OplusInvariantDeviceProfile;->getLandscapeProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v1

    iget v3, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    iget v4, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    invoke-virtual {v1, v3, v4}, Lcom/android/launcher3/DeviceProfile;->getCellSize(II)Landroid/graphics/Point;

    invoke-virtual {v0}, Lcom/android/launcher3/OplusInvariantDeviceProfile;->getPortraitProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v1

    iget v3, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    iget v4, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    invoke-virtual {v1, v3, v4}, Lcom/android/launcher3/DeviceProfile;->getCellSize(II)Landroid/graphics/Point;

    move-result-object v1

    iget v3, v1, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    const/high16 v4, 0x3f800000  # 1.0f

    iget v5, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->minWidth:I

    int-to-float v5, v5

    mul-float/2addr v5, v4

    div-float/2addr v5, v3

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-float v5, v5

    float-to-int v5, v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->spanX:I

    iget v5, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->minHeight:I

    int-to-float v5, v5

    mul-float/2addr v5, v4

    div-float/2addr v5, v1

    float-to-double v4, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-float v4, v4

    float-to-int v4, v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->spanY:I

    iget v2, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->spanX:I

    iget v4, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->spanX:I

    iget v2, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->spanY:I

    iget v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->spanY:I

    sget-object v0, Lcom/oplus/card/util/LogD;->INSTANCE:Lcom/oplus/card/util/LogD;

    const-string v2, "initSpans--minWidth:"

    invoke-static {v2}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->minWidth:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",minHeight:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->minHeight:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",spanX:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->spanX:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",spanY:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->spanY:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ",cellWidth:"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, ", cellHeight:"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/oplus/card/util/LogD;->log(Ljava/lang/String;)V

    return-void
.end method

.method public final setCardName(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->cardName:Ljava/lang/String;

    return-void
.end method

.method public final setCategory(I)V
    .registers 2

    iput p1, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->category:I

    return-void
.end method

.method public final setComponentName(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->componentName:Ljava/lang/String;

    return-void
.end method

.method public final setMinHeight(I)V
    .registers 2

    iput p1, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->minHeight:I

    return-void
.end method

.method public final setMinWidth(I)V
    .registers 2

    iput p1, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->minWidth:I

    return-void
.end method

.method public final setPackageName(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->packageName:Ljava/lang/String;

    return-void
.end method

.method public final setServiceId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->serviceId:Ljava/lang/String;

    return-void
.end method

.method public final setSize(I)V
    .registers 2

    iput p1, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->size:I

    return-void
.end method

.method public final setSpanX(I)V
    .registers 2

    iput p1, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->spanX:I

    return-void
.end method

.method public final setSpanY(I)V
    .registers 2

    iput p1, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->spanY:I

    return-void
.end method

.method public final setType(I)V
    .registers 2

    iput p1, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->type:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "CardConfigInfo(groupId="

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->groupId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", groupTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->groupTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", groupIcon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->groupIcon:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", desc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->desc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", preview="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->preview:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->size:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", orderInGroup="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->orderInGroup:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", componentName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->componentName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", category="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->category:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", resizable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->resizable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", operatingIcon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->operatingIcon:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", settingUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->settingUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", displayArea="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->displayArea:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", minWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->minWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", minHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->minHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", loadingIcon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->loadingIcon:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", loadingBgIcon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->loadingBgIcon:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", reservedFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->reservedFlag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", defaultSubscribed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->defaultSubscribed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", serviceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;->serviceId:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
