.class public final Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heytap/nearx/cloudconfig/bean/CoreEntity$a;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/heytap/nearx/cloudconfig/bean/CoreEntity$a;

.field public static final TABLE:Ljava/lang/String; = "hey_config"


# instance fields
.field private _id:J

.field private data1:Ljava/lang/String;

.field private data10:Ljava/lang/String;

.field private data11:Ljava/lang/String;

.field private data12:Ljava/lang/String;

.field private data13:Ljava/lang/String;

.field private data14:Ljava/lang/String;

.field private data15:Ljava/lang/String;

.field private data16:Ljava/lang/String;

.field private data17:Ljava/lang/String;

.field private data18:Ljava/lang/String;

.field private data19:Ljava/lang/String;

.field private data2:Ljava/lang/String;

.field private data20:Ljava/lang/String;

.field private data3:Ljava/lang/String;

.field private data4:Ljava/lang/String;

.field private data5:Ljava/lang/String;

.field private data6:Ljava/lang/String;

.field private data7:Ljava/lang/String;

.field private data8:Ljava/lang/String;

.field private data9:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->Companion:Lcom/heytap/nearx/cloudconfig/bean/CoreEntity$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 26

    move-object/from16 v0, p0

    const-wide/16 v1, 0x0

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

    const v23, 0x1fffff

    const/16 v24, 0x0

    invoke-direct/range {v0 .. v24}, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 39

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    move-object/from16 v9, p11

    move-object/from16 v10, p12

    move-object/from16 v11, p13

    move-object/from16 v12, p14

    move-object/from16 v13, p15

    move-object/from16 v14, p16

    move-object/from16 v15, p17

    move-object/from16 v0, p18

    const-string v0, "data1"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data2"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data3"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data4"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data5"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data6"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data7"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data8"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data9"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data10"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data11"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data12"

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data13"

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data14"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data15"

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data16"

    move-object/from16 v15, p18

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data17"

    move-object/from16 v15, p19

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data18"

    move-object/from16 v15, p20

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data19"

    move-object/from16 v15, p21

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data20"

    move-object/from16 v15, p22

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    move-wide/from16 v14, p1

    iput-wide v14, v0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->_id:J

    iput-object v1, v0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data1:Ljava/lang/String;

    iput-object v2, v0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data2:Ljava/lang/String;

    iput-object v3, v0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data3:Ljava/lang/String;

    iput-object v4, v0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data4:Ljava/lang/String;

    iput-object v5, v0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data5:Ljava/lang/String;

    iput-object v6, v0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data6:Ljava/lang/String;

    iput-object v7, v0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data7:Ljava/lang/String;

    iput-object v8, v0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data8:Ljava/lang/String;

    iput-object v9, v0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data9:Ljava/lang/String;

    iput-object v10, v0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data10:Ljava/lang/String;

    iput-object v11, v0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data11:Ljava/lang/String;

    iput-object v12, v0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data12:Ljava/lang/String;

    iput-object v13, v0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data13:Ljava/lang/String;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data14:Ljava/lang/String;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data15:Ljava/lang/String;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data16:Ljava/lang/String;

    move-object/from16 v1, p19

    move-object/from16 v2, p20

    iput-object v1, v0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data17:Ljava/lang/String;

    iput-object v2, v0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data18:Ljava/lang/String;

    move-object/from16 v1, p21

    move-object/from16 v2, p22

    iput-object v1, v0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data19:Ljava/lang/String;

    iput-object v2, v0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data20:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 47

    move/from16 v0, p23

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_9

    const-wide/16 v1, 0x0

    goto :goto_b

    :cond_9
    move-wide/from16 v1, p1

    :goto_b
    and-int/lit8 v3, v0, 0x2

    const-string v4, ""

    if-eqz v3, :cond_13

    move-object v3, v4

    goto :goto_15

    :cond_13
    move-object/from16 v3, p3

    :goto_15
    and-int/lit8 v5, v0, 0x4

    if-eqz v5, :cond_1b

    move-object v5, v4

    goto :goto_1d

    :cond_1b
    move-object/from16 v5, p4

    :goto_1d
    and-int/lit8 v6, v0, 0x8

    if-eqz v6, :cond_23

    move-object v6, v4

    goto :goto_25

    :cond_23
    move-object/from16 v6, p5

    :goto_25
    and-int/lit8 v7, v0, 0x10

    if-eqz v7, :cond_2b

    move-object v7, v4

    goto :goto_2d

    :cond_2b
    move-object/from16 v7, p6

    :goto_2d
    and-int/lit8 v8, v0, 0x20

    if-eqz v8, :cond_33

    move-object v8, v4

    goto :goto_35

    :cond_33
    move-object/from16 v8, p7

    :goto_35
    and-int/lit8 v9, v0, 0x40

    if-eqz v9, :cond_3b

    move-object v9, v4

    goto :goto_3d

    :cond_3b
    move-object/from16 v9, p8

    :goto_3d
    and-int/lit16 v10, v0, 0x80

    if-eqz v10, :cond_43

    move-object v10, v4

    goto :goto_45

    :cond_43
    move-object/from16 v10, p9

    :goto_45
    and-int/lit16 v11, v0, 0x100

    if-eqz v11, :cond_4b

    move-object v11, v4

    goto :goto_4d

    :cond_4b
    move-object/from16 v11, p10

    :goto_4d
    and-int/lit16 v12, v0, 0x200

    if-eqz v12, :cond_53

    move-object v12, v4

    goto :goto_55

    :cond_53
    move-object/from16 v12, p11

    :goto_55
    and-int/lit16 v13, v0, 0x400

    if-eqz v13, :cond_5b

    move-object v13, v4

    goto :goto_5d

    :cond_5b
    move-object/from16 v13, p12

    :goto_5d
    and-int/lit16 v14, v0, 0x800

    if-eqz v14, :cond_63

    move-object v14, v4

    goto :goto_65

    :cond_63
    move-object/from16 v14, p13

    :goto_65
    and-int/lit16 v15, v0, 0x1000

    if-eqz v15, :cond_6b

    move-object v15, v4

    goto :goto_6d

    :cond_6b
    move-object/from16 v15, p14

    :goto_6d
    move-object/from16 p1, v4

    and-int/lit16 v4, v0, 0x2000

    if-eqz v4, :cond_76

    move-object/from16 v4, p1

    goto :goto_78

    :cond_76
    move-object/from16 v4, p15

    :goto_78
    move-object/from16 p15, v4

    and-int/lit16 v4, v0, 0x4000

    if-eqz v4, :cond_81

    move-object/from16 v4, p1

    goto :goto_83

    :cond_81
    move-object/from16 v4, p16

    :goto_83
    const v16, 0x8000

    and-int v16, v0, v16

    if-eqz v16, :cond_8d

    move-object/from16 v16, p1

    goto :goto_8f

    :cond_8d
    move-object/from16 v16, p17

    :goto_8f
    const/high16 v17, 0x10000

    and-int v17, v0, v17

    if-eqz v17, :cond_98

    move-object/from16 v17, p1

    goto :goto_9a

    :cond_98
    move-object/from16 v17, p18

    :goto_9a
    const/high16 v18, 0x20000

    and-int v18, v0, v18

    if-eqz v18, :cond_a3

    move-object/from16 v18, p1

    goto :goto_a5

    :cond_a3
    move-object/from16 v18, p19

    :goto_a5
    const/high16 v19, 0x40000

    and-int v19, v0, v19

    if-eqz v19, :cond_ae

    move-object/from16 v19, p1

    goto :goto_b0

    :cond_ae
    move-object/from16 v19, p20

    :goto_b0
    const/high16 v20, 0x80000

    and-int v20, v0, v20

    if-eqz v20, :cond_b9

    move-object/from16 v20, p1

    goto :goto_bb

    :cond_b9
    move-object/from16 v20, p21

    :goto_bb
    const/high16 v21, 0x100000

    and-int v0, v0, v21

    if-eqz v0, :cond_c4

    move-object/from16 v0, p1

    goto :goto_c6

    :cond_c4
    move-object/from16 v0, p22

    :goto_c6
    move-wide/from16 p1, v1

    move-object/from16 p3, v3

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move-object/from16 p12, v13

    move-object/from16 p13, v14

    move-object/from16 p14, v15

    move-object/from16 p16, v4

    move-object/from16 p17, v16

    move-object/from16 p18, v17

    move-object/from16 p19, v18

    move-object/from16 p20, v19

    move-object/from16 p21, v20

    move-object/from16 p22, v0

    invoke-direct/range {p0 .. p22}, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;
    .registers 42

    move-object/from16 v0, p0

    move/from16 v1, p23

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_b

    iget-wide v2, v0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->_id:J

    goto :goto_d

    :cond_b
    move-wide/from16 v2, p1

    :goto_d
    and-int/lit8 v4, v1, 0x2

    if-eqz v4, :cond_14

    iget-object v4, v0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data1:Ljava/lang/String;

    goto :goto_16

    :cond_14
    move-object/from16 v4, p3

    :goto_16
    and-int/lit8 v5, v1, 0x4

    if-eqz v5, :cond_1d

    iget-object v5, v0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data2:Ljava/lang/String;

    goto :goto_1f

    :cond_1d
    move-object/from16 v5, p4

    :goto_1f
    and-int/lit8 v6, v1, 0x8

    if-eqz v6, :cond_26

    iget-object v6, v0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data3:Ljava/lang/String;

    goto :goto_28

    :cond_26
    move-object/from16 v6, p5

    :goto_28
    and-int/lit8 v7, v1, 0x10

    if-eqz v7, :cond_2f

    iget-object v7, v0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data4:Ljava/lang/String;

    goto :goto_31

    :cond_2f
    move-object/from16 v7, p6

    :goto_31
    and-int/lit8 v8, v1, 0x20

    if-eqz v8, :cond_38

    iget-object v8, v0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data5:Ljava/lang/String;

    goto :goto_3a

    :cond_38
    move-object/from16 v8, p7

    :goto_3a
    and-int/lit8 v9, v1, 0x40

    if-eqz v9, :cond_41

    iget-object v9, v0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data6:Ljava/lang/String;

    goto :goto_43

    :cond_41
    move-object/from16 v9, p8

    :goto_43
    and-int/lit16 v10, v1, 0x80

    if-eqz v10, :cond_4a

    iget-object v10, v0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data7:Ljava/lang/String;

    goto :goto_4c

    :cond_4a
    move-object/from16 v10, p9

    :goto_4c
    and-int/lit16 v11, v1, 0x100

    if-eqz v11, :cond_53

    iget-object v11, v0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data8:Ljava/lang/String;

    goto :goto_55

    :cond_53
    move-object/from16 v11, p10

    :goto_55
    and-int/lit16 v12, v1, 0x200

    if-eqz v12, :cond_5c

    iget-object v12, v0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data9:Ljava/lang/String;

    goto :goto_5e

    :cond_5c
    move-object/from16 v12, p11

    :goto_5e
    and-int/lit16 v13, v1, 0x400

    if-eqz v13, :cond_65

    iget-object v13, v0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data10:Ljava/lang/String;

    goto :goto_67

    :cond_65
    move-object/from16 v13, p12

    :goto_67
    and-int/lit16 v14, v1, 0x800

    if-eqz v14, :cond_6e

    iget-object v14, v0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data11:Ljava/lang/String;

    goto :goto_70

    :cond_6e
    move-object/from16 v14, p13

    :goto_70
    and-int/lit16 v15, v1, 0x1000

    if-eqz v15, :cond_77

    iget-object v15, v0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data12:Ljava/lang/String;

    goto :goto_79

    :cond_77
    move-object/from16 v15, p14

    :goto_79
    move-object/from16 p14, v15

    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_82

    iget-object v15, v0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data13:Ljava/lang/String;

    goto :goto_84

    :cond_82
    move-object/from16 v15, p15

    :goto_84
    move-object/from16 p15, v15

    and-int/lit16 v15, v1, 0x4000

    if-eqz v15, :cond_8d

    iget-object v15, v0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data14:Ljava/lang/String;

    goto :goto_8f

    :cond_8d
    move-object/from16 v15, p16

    :goto_8f
    const v16, 0x8000

    and-int v16, v1, v16

    move-object/from16 p16, v15

    if-eqz v16, :cond_9b

    iget-object v15, v0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data15:Ljava/lang/String;

    goto :goto_9d

    :cond_9b
    move-object/from16 v15, p17

    :goto_9d
    const/high16 v16, 0x10000

    and-int v16, v1, v16

    move-object/from16 p17, v15

    if-eqz v16, :cond_a8

    iget-object v15, v0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data16:Ljava/lang/String;

    goto :goto_aa

    :cond_a8
    move-object/from16 v15, p18

    :goto_aa
    const/high16 v16, 0x20000

    and-int v16, v1, v16

    move-object/from16 p18, v15

    if-eqz v16, :cond_b5

    iget-object v15, v0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data17:Ljava/lang/String;

    goto :goto_b7

    :cond_b5
    move-object/from16 v15, p19

    :goto_b7
    const/high16 v16, 0x40000

    and-int v16, v1, v16

    move-object/from16 p19, v15

    if-eqz v16, :cond_c2

    iget-object v15, v0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data18:Ljava/lang/String;

    goto :goto_c4

    :cond_c2
    move-object/from16 v15, p20

    :goto_c4
    const/high16 v16, 0x80000

    and-int v16, v1, v16

    move-object/from16 p20, v15

    if-eqz v16, :cond_cf

    iget-object v15, v0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data19:Ljava/lang/String;

    goto :goto_d1

    :cond_cf
    move-object/from16 v15, p21

    :goto_d1
    const/high16 v16, 0x100000

    and-int v1, v1, v16

    if-eqz v1, :cond_da

    iget-object v1, v0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data20:Ljava/lang/String;

    goto :goto_dc

    :cond_da
    move-object/from16 v1, p22

    :goto_dc
    move-wide/from16 p1, v2

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move-object/from16 p12, v13

    move-object/from16 p13, v14

    move-object/from16 p21, v15

    move-object/from16 p22, v1

    invoke-virtual/range {p0 .. p22}, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->copy(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()J
    .registers 3

    iget-wide v0, p0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->_id:J

    return-wide v0
.end method

.method public final component10()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data9:Ljava/lang/String;

    return-object p0
.end method

.method public final component11()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data10:Ljava/lang/String;

    return-object p0
.end method

.method public final component12()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data11:Ljava/lang/String;

    return-object p0
.end method

.method public final component13()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data12:Ljava/lang/String;

    return-object p0
.end method

.method public final component14()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data13:Ljava/lang/String;

    return-object p0
.end method

.method public final component15()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data14:Ljava/lang/String;

    return-object p0
.end method

.method public final component16()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data15:Ljava/lang/String;

    return-object p0
.end method

.method public final component17()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data16:Ljava/lang/String;

    return-object p0
.end method

.method public final component18()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data17:Ljava/lang/String;

    return-object p0
.end method

.method public final component19()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data18:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data1:Ljava/lang/String;

    return-object p0
.end method

.method public final component20()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data19:Ljava/lang/String;

    return-object p0
.end method

.method public final component21()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data20:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data2:Ljava/lang/String;

    return-object p0
.end method

.method public final component4()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data3:Ljava/lang/String;

    return-object p0
.end method

.method public final component5()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data4:Ljava/lang/String;

    return-object p0
.end method

.method public final component6()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data5:Ljava/lang/String;

    return-object p0
.end method

.method public final component7()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data6:Ljava/lang/String;

    return-object p0
.end method

.method public final component8()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data7:Ljava/lang/String;

    return-object p0
.end method

.method public final component9()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data8:Ljava/lang/String;

    return-object p0
.end method

.method public final copy(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;
    .registers 47

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v16, p16

    move-object/from16 v17, p17

    move-object/from16 v18, p18

    move-object/from16 v19, p19

    move-object/from16 v20, p20

    move-object/from16 v21, p21

    move-object/from16 v22, p22

    const-string v0, "data1"

    move-wide/from16 p0, v1

    move-object/from16 v1, p3

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data2"

    move-object/from16 v1, p4

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data3"

    move-object/from16 v1, p5

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data4"

    move-object/from16 v1, p6

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data5"

    move-object/from16 v1, p7

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data6"

    move-object/from16 v1, p8

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data7"

    move-object/from16 v1, p9

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data8"

    move-object/from16 v1, p10

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data9"

    move-object/from16 v1, p11

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data10"

    move-object/from16 v1, p12

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data11"

    move-object/from16 v1, p13

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data12"

    move-object/from16 v1, p14

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data13"

    move-object/from16 v1, p15

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data14"

    move-object/from16 v1, p16

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data15"

    move-object/from16 v1, p17

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data16"

    move-object/from16 v1, p18

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data17"

    move-object/from16 v1, p19

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data18"

    move-object/from16 v1, p20

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data19"

    move-object/from16 v1, p21

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data20"

    move-object/from16 v1, p22

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v23, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;

    move-object/from16 v0, v23

    move-wide/from16 v1, p0

    invoke-direct/range {v0 .. v22}, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v23
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    if-eq p0, p1, :cond_db

    instance-of v0, p1, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;

    if-eqz v0, :cond_d9

    check-cast p1, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;

    iget-wide v0, p0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->_id:J

    iget-wide v2, p1, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->_id:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_d9

    iget-object v0, p0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data1:Ljava/lang/String;

    iget-object v1, p1, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data1:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d9

    iget-object v0, p0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data2:Ljava/lang/String;

    iget-object v1, p1, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data2:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d9

    iget-object v0, p0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data3:Ljava/lang/String;

    iget-object v1, p1, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data3:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d9

    iget-object v0, p0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data4:Ljava/lang/String;

    iget-object v1, p1, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data4:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d9

    iget-object v0, p0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data5:Ljava/lang/String;

    iget-object v1, p1, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data5:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d9

    iget-object v0, p0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data6:Ljava/lang/String;

    iget-object v1, p1, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data6:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d9

    iget-object v0, p0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data7:Ljava/lang/String;

    iget-object v1, p1, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data7:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d9

    iget-object v0, p0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data8:Ljava/lang/String;

    iget-object v1, p1, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data8:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d9

    iget-object v0, p0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data9:Ljava/lang/String;

    iget-object v1, p1, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data9:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d9

    iget-object v0, p0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data10:Ljava/lang/String;

    iget-object v1, p1, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data10:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d9

    iget-object v0, p0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data11:Ljava/lang/String;

    iget-object v1, p1, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data11:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d9

    iget-object v0, p0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data12:Ljava/lang/String;

    iget-object v1, p1, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data12:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d9

    iget-object v0, p0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data13:Ljava/lang/String;

    iget-object v1, p1, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data13:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d9

    iget-object v0, p0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data14:Ljava/lang/String;

    iget-object v1, p1, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data14:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d9

    iget-object v0, p0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data15:Ljava/lang/String;

    iget-object v1, p1, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data15:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d9

    iget-object v0, p0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data16:Ljava/lang/String;

    iget-object v1, p1, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data16:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d9

    iget-object v0, p0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data17:Ljava/lang/String;

    iget-object v1, p1, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data17:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d9

    iget-object v0, p0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data18:Ljava/lang/String;

    iget-object v1, p1, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data18:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d9

    iget-object v0, p0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data19:Ljava/lang/String;

    iget-object v1, p1, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data19:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d9

    iget-object p0, p0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data20:Ljava/lang/String;

    iget-object p1, p1, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data20:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d9

    goto :goto_db

    :cond_d9
    const/4 p0, 0x0

    return p0

    :cond_db
    :goto_db
    const/4 p0, 0x1

    return p0
.end method

.method public final getData1()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data1:Ljava/lang/String;

    return-object p0
.end method

.method public final getData10()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data10:Ljava/lang/String;

    return-object p0
.end method

.method public final getData11()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data11:Ljava/lang/String;

    return-object p0
.end method

.method public final getData12()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data12:Ljava/lang/String;

    return-object p0
.end method

.method public final getData13()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data13:Ljava/lang/String;

    return-object p0
.end method

.method public final getData14()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data14:Ljava/lang/String;

    return-object p0
.end method

.method public final getData15()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data15:Ljava/lang/String;

    return-object p0
.end method

.method public final getData16()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data16:Ljava/lang/String;

    return-object p0
.end method

.method public final getData17()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data17:Ljava/lang/String;

    return-object p0
.end method

.method public final getData18()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data18:Ljava/lang/String;

    return-object p0
.end method

.method public final getData19()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data19:Ljava/lang/String;

    return-object p0
.end method

.method public final getData2()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data2:Ljava/lang/String;

    return-object p0
.end method

.method public final getData20()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data20:Ljava/lang/String;

    return-object p0
.end method

.method public final getData3()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data3:Ljava/lang/String;

    return-object p0
.end method

.method public final getData4()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data4:Ljava/lang/String;

    return-object p0
.end method

.method public final getData5()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data5:Ljava/lang/String;

    return-object p0
.end method

.method public final getData6()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data6:Ljava/lang/String;

    return-object p0
.end method

.method public final getData7()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data7:Ljava/lang/String;

    return-object p0
.end method

.method public final getData8()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data8:Ljava/lang/String;

    return-object p0
.end method

.method public final getData9()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data9:Ljava/lang/String;

    return-object p0
.end method

.method public final get_id()J
    .registers 3

    iget-wide v0, p0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->_id:J

    return-wide v0
.end method

.method public hashCode()I
    .registers 4

    iget-wide v0, p0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->_id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data1:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_13

    :cond_12
    move v1, v2

    :goto_13
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data2:Ljava/lang/String;

    if-eqz v1, :cond_1f

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_20

    :cond_1f
    move v1, v2

    :goto_20
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data3:Ljava/lang/String;

    if-eqz v1, :cond_2c

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_2d

    :cond_2c
    move v1, v2

    :goto_2d
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data4:Ljava/lang/String;

    if-eqz v1, :cond_39

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_3a

    :cond_39
    move v1, v2

    :goto_3a
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data5:Ljava/lang/String;

    if-eqz v1, :cond_46

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_47

    :cond_46
    move v1, v2

    :goto_47
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data6:Ljava/lang/String;

    if-eqz v1, :cond_53

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_54

    :cond_53
    move v1, v2

    :goto_54
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data7:Ljava/lang/String;

    if-eqz v1, :cond_60

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_61

    :cond_60
    move v1, v2

    :goto_61
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data8:Ljava/lang/String;

    if-eqz v1, :cond_6d

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_6e

    :cond_6d
    move v1, v2

    :goto_6e
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data9:Ljava/lang/String;

    if-eqz v1, :cond_7a

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_7b

    :cond_7a
    move v1, v2

    :goto_7b
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data10:Ljava/lang/String;

    if-eqz v1, :cond_87

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_88

    :cond_87
    move v1, v2

    :goto_88
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data11:Ljava/lang/String;

    if-eqz v1, :cond_94

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_95

    :cond_94
    move v1, v2

    :goto_95
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data12:Ljava/lang/String;

    if-eqz v1, :cond_a1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_a2

    :cond_a1
    move v1, v2

    :goto_a2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data13:Ljava/lang/String;

    if-eqz v1, :cond_ae

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_af

    :cond_ae
    move v1, v2

    :goto_af
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data14:Ljava/lang/String;

    if-eqz v1, :cond_bb

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_bc

    :cond_bb
    move v1, v2

    :goto_bc
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data15:Ljava/lang/String;

    if-eqz v1, :cond_c8

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_c9

    :cond_c8
    move v1, v2

    :goto_c9
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data16:Ljava/lang/String;

    if-eqz v1, :cond_d5

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_d6

    :cond_d5
    move v1, v2

    :goto_d6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data17:Ljava/lang/String;

    if-eqz v1, :cond_e2

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_e3

    :cond_e2
    move v1, v2

    :goto_e3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data18:Ljava/lang/String;

    if-eqz v1, :cond_ef

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_f0

    :cond_ef
    move v1, v2

    :goto_f0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data19:Ljava/lang/String;

    if-eqz v1, :cond_fc

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_fd

    :cond_fc
    move v1, v2

    :goto_fd
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data20:Ljava/lang/String;

    if-eqz p0, :cond_108

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_108
    add-int/2addr v0, v2

    return v0
.end method

.method public final setData1(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data1:Ljava/lang/String;

    return-void
.end method

.method public final setData10(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data10:Ljava/lang/String;

    return-void
.end method

.method public final setData11(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data11:Ljava/lang/String;

    return-void
.end method

.method public final setData12(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data12:Ljava/lang/String;

    return-void
.end method

.method public final setData13(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data13:Ljava/lang/String;

    return-void
.end method

.method public final setData14(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data14:Ljava/lang/String;

    return-void
.end method

.method public final setData15(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data15:Ljava/lang/String;

    return-void
.end method

.method public final setData16(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data16:Ljava/lang/String;

    return-void
.end method

.method public final setData17(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data17:Ljava/lang/String;

    return-void
.end method

.method public final setData18(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data18:Ljava/lang/String;

    return-void
.end method

.method public final setData19(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data19:Ljava/lang/String;

    return-void
.end method

.method public final setData2(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data2:Ljava/lang/String;

    return-void
.end method

.method public final setData20(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data20:Ljava/lang/String;

    return-void
.end method

.method public final setData3(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data3:Ljava/lang/String;

    return-void
.end method

.method public final setData4(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data4:Ljava/lang/String;

    return-void
.end method

.method public final setData5(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data5:Ljava/lang/String;

    return-void
.end method

.method public final setData6(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data6:Ljava/lang/String;

    return-void
.end method

.method public final setData7(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data7:Ljava/lang/String;

    return-void
.end method

.method public final setData8(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data8:Ljava/lang/String;

    return-void
.end method

.method public final setData9(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data9:Ljava/lang/String;

    return-void
.end method

.method public final set_id(J)V
    .registers 3

    iput-wide p1, p0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->_id:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const-string v0, "CoreEntity(_id="

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->_id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", data1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", data2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", data3="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data3:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", data4="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data4:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", data5="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data5:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", data6="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data6:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", data7="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data7:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", data8="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data8:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", data9="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data9:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", data10="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data10:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", data11="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data11:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", data12="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data12:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", data13="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data13:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", data14="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data14:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", data15="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data15:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", data16="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data16:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", data17="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data17:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", data18="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data18:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", data19="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data19:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", data20="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/heytap/nearx/cloudconfig/bean/CoreEntity;->data20:Ljava/lang/String;

    const-string v1, ")"

    invoke-static {v0, p0, v1}, Landroidx/concurrent/futures/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
