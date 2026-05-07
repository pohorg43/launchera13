.class public final Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private cancelPanelActionConfig:Ljava/lang/Integer;

.field private dataSourcePkgName:Ljava/lang/String;

.field private final des:Ljava/lang/String;

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

.field private final icon:Landroid/graphics/Bitmap;

.field private final importance:I

.field private interactionData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final isMilestone:Z

.field private isRequestShowPanel:Ljava/lang/Boolean;

.field private lockScreenShowHostMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private notificationIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private panelActionConfigMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private requestHideStatusBar:Z

.field private final shouldShow:Z

.field private showHostMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final title:Ljava/lang/String;

.field private voiceContent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;ZIZ)V
    .registers 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

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

    const v18, 0x1fc00

    const/16 v19, 0x0

    invoke-direct/range {v0 .. v19}, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;-><init>(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;ZIZLjava/lang/Boolean;Ljava/util/Map;Ljava/lang/String;Landroid/util/ArrayMap;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;ZLjava/util/Map;Ljava/lang/Integer;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;ZIZLjava/lang/Boolean;Ljava/util/Map;Ljava/lang/String;Landroid/util/ArrayMap;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;ZLjava/util/Map;Ljava/lang/Integer;Ljava/util/Map;)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZIZ",
            "Ljava/lang/Boolean;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->icon:Landroid/graphics/Bitmap;

    move-object v1, p2

    iput-object v1, v0, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->title:Ljava/lang/String;

    move-object v1, p3

    iput-object v1, v0, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->des:Ljava/lang/String;

    move v1, p4

    iput-boolean v1, v0, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->isMilestone:Z

    move v1, p5

    iput v1, v0, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->importance:I

    move v1, p6

    iput-boolean v1, v0, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->shouldShow:Z

    move-object v1, p7

    iput-object v1, v0, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->isRequestShowPanel:Ljava/lang/Boolean;

    move-object v1, p8

    iput-object v1, v0, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->interactionData:Ljava/util/Map;

    move-object v1, p9

    iput-object v1, v0, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->voiceContent:Ljava/lang/String;

    move-object v1, p10

    iput-object v1, v0, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->extraData:Landroid/util/ArrayMap;

    move-object v1, p11

    iput-object v1, v0, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->notificationIdList:Ljava/util/List;

    move-object v1, p12

    iput-object v1, v0, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->showHostMap:Ljava/util/Map;

    move-object v1, p13

    iput-object v1, v0, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->dataSourcePkgName:Ljava/lang/String;

    move/from16 v1, p14

    iput-boolean v1, v0, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->requestHideStatusBar:Z

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->lockScreenShowHostMap:Ljava/util/Map;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->cancelPanelActionConfig:Ljava/lang/Integer;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->panelActionConfigMap:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;ZIZLjava/lang/Boolean;Ljava/util/Map;Ljava/lang/String;Landroid/util/ArrayMap;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;ZLjava/util/Map;Ljava/lang/Integer;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 41

    move/from16 v0, p18

    and-int/lit8 v1, v0, 0x40

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    move-object v10, v2

    goto :goto_b

    :cond_9
    move-object/from16 v10, p7

    :goto_b
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_11

    move-object v11, v2

    goto :goto_13

    :cond_11
    move-object/from16 v11, p8

    :goto_13
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_19

    move-object v12, v2

    goto :goto_1b

    :cond_19
    move-object/from16 v12, p9

    :goto_1b
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_21

    move-object v13, v2

    goto :goto_23

    :cond_21
    move-object/from16 v13, p10

    :goto_23
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_29

    move-object v14, v2

    goto :goto_2b

    :cond_29
    move-object/from16 v14, p11

    :goto_2b
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_31

    move-object v15, v2

    goto :goto_33

    :cond_31
    move-object/from16 v15, p12

    :goto_33
    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_3a

    move-object/from16 v16, v2

    goto :goto_3c

    :cond_3a
    move-object/from16 v16, p13

    :goto_3c
    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_44

    const/4 v1, 0x0

    move/from16 v17, v1

    goto :goto_46

    :cond_44
    move/from16 v17, p14

    :goto_46
    and-int/lit16 v1, v0, 0x4000

    if-eqz v1, :cond_4d

    move-object/from16 v18, v2

    goto :goto_4f

    :cond_4d
    move-object/from16 v18, p15

    :goto_4f
    const v1, 0x8000

    and-int/2addr v1, v0

    if-eqz v1, :cond_58

    move-object/from16 v19, v2

    goto :goto_5a

    :cond_58
    move-object/from16 v19, p16

    :goto_5a
    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_62

    move-object/from16 v20, v2

    goto :goto_64

    :cond_62
    move-object/from16 v20, p17

    :goto_64
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-direct/range {v3 .. v20}, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;-><init>(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;ZIZLjava/lang/Boolean;Ljava/util/Map;Ljava/lang/String;Landroid/util/ArrayMap;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;ZLjava/util/Map;Ljava/lang/Integer;Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;ZIZLjava/lang/Boolean;Ljava/util/Map;Ljava/lang/String;Landroid/util/ArrayMap;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;ZLjava/util/Map;Ljava/lang/Integer;Ljava/util/Map;ILjava/lang/Object;)Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;
    .registers 37

    move-object/from16 v0, p0

    move/from16 v1, p18

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_b

    iget-object v2, v0, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->icon:Landroid/graphics/Bitmap;

    goto :goto_d

    :cond_b
    move-object/from16 v2, p1

    :goto_d
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_14

    iget-object v3, v0, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->title:Ljava/lang/String;

    goto :goto_16

    :cond_14
    move-object/from16 v3, p2

    :goto_16
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_1d

    iget-object v4, v0, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->des:Ljava/lang/String;

    goto :goto_1f

    :cond_1d
    move-object/from16 v4, p3

    :goto_1f
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_26

    iget-boolean v5, v0, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->isMilestone:Z

    goto :goto_28

    :cond_26
    move/from16 v5, p4

    :goto_28
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_2f

    iget v6, v0, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->importance:I

    goto :goto_31

    :cond_2f
    move/from16 v6, p5

    :goto_31
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_38

    iget-boolean v7, v0, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->shouldShow:Z

    goto :goto_3a

    :cond_38
    move/from16 v7, p6

    :goto_3a
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_41

    iget-object v8, v0, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->isRequestShowPanel:Ljava/lang/Boolean;

    goto :goto_43

    :cond_41
    move-object/from16 v8, p7

    :goto_43
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_4a

    iget-object v9, v0, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->interactionData:Ljava/util/Map;

    goto :goto_4c

    :cond_4a
    move-object/from16 v9, p8

    :goto_4c
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_53

    iget-object v10, v0, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->voiceContent:Ljava/lang/String;

    goto :goto_55

    :cond_53
    move-object/from16 v10, p9

    :goto_55
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_5c

    iget-object v11, v0, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->extraData:Landroid/util/ArrayMap;

    goto :goto_5e

    :cond_5c
    move-object/from16 v11, p10

    :goto_5e
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_65

    iget-object v12, v0, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->notificationIdList:Ljava/util/List;

    goto :goto_67

    :cond_65
    move-object/from16 v12, p11

    :goto_67
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_6e

    iget-object v13, v0, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->showHostMap:Ljava/util/Map;

    goto :goto_70

    :cond_6e
    move-object/from16 v13, p12

    :goto_70
    and-int/lit16 v14, v1, 0x1000

    if-eqz v14, :cond_77

    iget-object v14, v0, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->dataSourcePkgName:Ljava/lang/String;

    goto :goto_79

    :cond_77
    move-object/from16 v14, p13

    :goto_79
    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_80

    iget-boolean v15, v0, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->requestHideStatusBar:Z

    goto :goto_82

    :cond_80
    move/from16 v15, p14

    :goto_82
    move/from16 p14, v15

    and-int/lit16 v15, v1, 0x4000

    if-eqz v15, :cond_8b

    iget-object v15, v0, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->lockScreenShowHostMap:Ljava/util/Map;

    goto :goto_8d

    :cond_8b
    move-object/from16 v15, p15

    :goto_8d
    const v16, 0x8000

    and-int v16, v1, v16

    move-object/from16 p15, v15

    if-eqz v16, :cond_99

    iget-object v15, v0, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->cancelPanelActionConfig:Ljava/lang/Integer;

    goto :goto_9b

    :cond_99
    move-object/from16 v15, p16

    :goto_9b
    const/high16 v16, 0x10000

    and-int v1, v1, v16

    if-eqz v1, :cond_a4

    iget-object v1, v0, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->panelActionConfigMap:Ljava/util/Map;

    goto :goto_a6

    :cond_a4
    move-object/from16 v1, p17

    :goto_a6
    move-object/from16 p1, v2

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move/from16 p4, v5

    move/from16 p5, v6

    move/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move-object/from16 p12, v13

    move-object/from16 p13, v14

    move-object/from16 p16, v15

    move-object/from16 p17, v1

    invoke-virtual/range {p0 .. p17}, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->copy(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;ZIZLjava/lang/Boolean;Ljava/util/Map;Ljava/lang/String;Landroid/util/ArrayMap;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;ZLjava/util/Map;Ljava/lang/Integer;Ljava/util/Map;)Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic getCancelPanelActionConfig$annotations()V
    .registers 0

    return-void
.end method

.method public static synthetic getImportance$annotations()V
    .registers 0

    return-void
.end method


# virtual methods
.method public final component1()Landroid/graphics/Bitmap;
    .registers 1

    iget-object p0, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->icon:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public final component10()Landroid/util/ArrayMap;
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

    iget-object p0, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->extraData:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public final component11()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->notificationIdList:Ljava/util/List;

    return-object p0
.end method

.method public final component12()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->showHostMap:Ljava/util/Map;

    return-object p0
.end method

.method public final component13()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->dataSourcePkgName:Ljava/lang/String;

    return-object p0
.end method

.method public final component14()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->requestHideStatusBar:Z

    return p0
.end method

.method public final component15()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->lockScreenShowHostMap:Ljava/util/Map;

    return-object p0
.end method

.method public final component16()Ljava/lang/Integer;
    .registers 1

    iget-object p0, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->cancelPanelActionConfig:Ljava/lang/Integer;

    return-object p0
.end method

.method public final component17()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->panelActionConfigMap:Ljava/util/Map;

    return-object p0
.end method

.method public final component2()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->title:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->des:Ljava/lang/String;

    return-object p0
.end method

.method public final component4()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->isMilestone:Z

    return p0
.end method

.method public final component5()I
    .registers 1

    iget p0, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->importance:I

    return p0
.end method

.method public final component6()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->shouldShow:Z

    return p0
.end method

.method public final component7()Ljava/lang/Boolean;
    .registers 1

    iget-object p0, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->isRequestShowPanel:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final component8()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->interactionData:Ljava/util/Map;

    return-object p0
.end method

.method public final component9()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->voiceContent:Ljava/lang/String;

    return-object p0
.end method

.method public final copy(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;ZIZLjava/lang/Boolean;Ljava/util/Map;Ljava/lang/String;Landroid/util/ArrayMap;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;ZLjava/util/Map;Ljava/lang/Integer;Ljava/util/Map;)Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;
    .registers 37
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZIZ",
            "Ljava/lang/Boolean;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;"
        }
    .end annotation

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v16, p16

    move-object/from16 v17, p17

    new-instance v18, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;

    move-object/from16 v0, v18

    invoke-direct/range {v0 .. v17}, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;-><init>(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;ZIZLjava/lang/Boolean;Ljava/util/Map;Ljava/lang/String;Landroid/util/ArrayMap;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;ZLjava/util/Map;Ljava/lang/Integer;Ljava/util/Map;)V

    return-object v18
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;

    iget-object v1, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->icon:Landroid/graphics/Bitmap;

    iget-object v3, p1, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->icon:Landroid/graphics/Bitmap;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->title:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->des:Ljava/lang/String;

    iget-object v3, p1, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->des:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    return v2

    :cond_2d
    iget-boolean v1, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->isMilestone:Z

    iget-boolean v3, p1, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->isMilestone:Z

    if-eq v1, v3, :cond_34

    return v2

    :cond_34
    iget v1, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->importance:I

    iget v3, p1, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->importance:I

    if-eq v1, v3, :cond_3b

    return v2

    :cond_3b
    iget-boolean v1, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->shouldShow:Z

    iget-boolean v3, p1, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->shouldShow:Z

    if-eq v1, v3, :cond_42

    return v2

    :cond_42
    iget-object v1, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->isRequestShowPanel:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->isRequestShowPanel:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4d

    return v2

    :cond_4d
    iget-object v1, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->interactionData:Ljava/util/Map;

    iget-object v3, p1, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->interactionData:Ljava/util/Map;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_58

    return v2

    :cond_58
    iget-object v1, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->voiceContent:Ljava/lang/String;

    iget-object v3, p1, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->voiceContent:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_63

    return v2

    :cond_63
    iget-object v1, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->extraData:Landroid/util/ArrayMap;

    iget-object v3, p1, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->extraData:Landroid/util/ArrayMap;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6e

    return v2

    :cond_6e
    iget-object v1, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->notificationIdList:Ljava/util/List;

    iget-object v3, p1, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->notificationIdList:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_79

    return v2

    :cond_79
    iget-object v1, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->showHostMap:Ljava/util/Map;

    iget-object v3, p1, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->showHostMap:Ljava/util/Map;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_84

    return v2

    :cond_84
    iget-object v1, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->dataSourcePkgName:Ljava/lang/String;

    iget-object v3, p1, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->dataSourcePkgName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8f

    return v2

    :cond_8f
    iget-boolean v1, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->requestHideStatusBar:Z

    iget-boolean v3, p1, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->requestHideStatusBar:Z

    if-eq v1, v3, :cond_96

    return v2

    :cond_96
    iget-object v1, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->lockScreenShowHostMap:Ljava/util/Map;

    iget-object v3, p1, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->lockScreenShowHostMap:Ljava/util/Map;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a1

    return v2

    :cond_a1
    iget-object v1, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->cancelPanelActionConfig:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->cancelPanelActionConfig:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ac

    return v2

    :cond_ac
    iget-object p0, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->panelActionConfigMap:Ljava/util/Map;

    iget-object p1, p1, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->panelActionConfigMap:Ljava/util/Map;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b7

    return v2

    :cond_b7
    return v0
.end method

.method public final getCancelPanelActionConfig()Ljava/lang/Integer;
    .registers 1

    iget-object p0, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->cancelPanelActionConfig:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getDataSourcePkgName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->dataSourcePkgName:Ljava/lang/String;

    return-object p0
.end method

.method public final getDes()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->des:Ljava/lang/String;

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

    iget-object p0, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->extraData:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public final getIcon()Landroid/graphics/Bitmap;
    .registers 1

    iget-object p0, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->icon:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public final getImportance()I
    .registers 1

    iget p0, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->importance:I

    return p0
.end method

.method public final getInteractionData()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->interactionData:Ljava/util/Map;

    return-object p0
.end method

.method public final getLockScreenShowHostMap()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->lockScreenShowHostMap:Ljava/util/Map;

    return-object p0
.end method

.method public final getNotificationIdList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->notificationIdList:Ljava/util/List;

    return-object p0
.end method

.method public final getPanelActionConfigMap()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->panelActionConfigMap:Ljava/util/Map;

    return-object p0
.end method

.method public final getRequestHideStatusBar()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->requestHideStatusBar:Z

    return p0
.end method

.method public final getShouldShow()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->shouldShow:Z

    return p0
.end method

.method public final getShowHostMap()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->showHostMap:Ljava/util/Map;

    return-object p0
.end method

.method public final getTitle()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->title:Ljava/lang/String;

    return-object p0
.end method

.method public final getVoiceContent()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->voiceContent:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .registers 6

    iget-object v0, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->icon:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    move v0, v1

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->hashCode()I

    move-result v0

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->title:Ljava/lang/String;

    if-nez v2, :cond_13

    move v2, v1

    goto :goto_17

    :cond_13
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_17
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->des:Ljava/lang/String;

    if-nez v2, :cond_20

    move v2, v1

    goto :goto_24

    :cond_20
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_24
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->isMilestone:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_2d

    move v2, v3

    :cond_2d
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->importance:I

    const/16 v4, 0x1f

    invoke-static {v2, v0, v4}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget-boolean v2, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->shouldShow:Z

    if-eqz v2, :cond_3d

    move v2, v3

    :cond_3d
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->isRequestShowPanel:Ljava/lang/Boolean;

    if-nez v2, :cond_46

    move v2, v1

    goto :goto_4a

    :cond_46
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_4a
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->interactionData:Ljava/util/Map;

    if-nez v2, :cond_53

    move v2, v1

    goto :goto_57

    :cond_53
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_57
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->voiceContent:Ljava/lang/String;

    if-nez v2, :cond_60

    move v2, v1

    goto :goto_64

    :cond_60
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_64
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->extraData:Landroid/util/ArrayMap;

    if-nez v2, :cond_6d

    move v2, v1

    goto :goto_71

    :cond_6d
    invoke-virtual {v2}, Landroid/util/ArrayMap;->hashCode()I

    move-result v2

    :goto_71
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->notificationIdList:Ljava/util/List;

    if-nez v2, :cond_7a

    move v2, v1

    goto :goto_7e

    :cond_7a
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_7e
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->showHostMap:Ljava/util/Map;

    if-nez v2, :cond_87

    move v2, v1

    goto :goto_8b

    :cond_87
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_8b
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->dataSourcePkgName:Ljava/lang/String;

    if-nez v2, :cond_94

    move v2, v1

    goto :goto_98

    :cond_94
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_98
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->requestHideStatusBar:Z

    if-eqz v2, :cond_a0

    goto :goto_a1

    :cond_a0
    move v3, v2

    :goto_a1
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->lockScreenShowHostMap:Ljava/util/Map;

    if-nez v2, :cond_aa

    move v2, v1

    goto :goto_ae

    :cond_aa
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_ae
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->cancelPanelActionConfig:Ljava/lang/Integer;

    if-nez v2, :cond_b7

    move v2, v1

    goto :goto_bb

    :cond_b7
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_bb
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->panelActionConfigMap:Ljava/util/Map;

    if-nez p0, :cond_c3

    goto :goto_c7

    :cond_c3
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_c7
    add-int/2addr v0, v1

    return v0
.end method

.method public final isMilestone()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->isMilestone:Z

    return p0
.end method

.method public final isRequestShowPanel()Ljava/lang/Boolean;
    .registers 1

    iget-object p0, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->isRequestShowPanel:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final setCancelPanelActionConfig(Ljava/lang/Integer;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->cancelPanelActionConfig:Ljava/lang/Integer;

    return-void
.end method

.method public final setDataSourcePkgName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->dataSourcePkgName:Ljava/lang/String;

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

    iput-object p1, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->extraData:Landroid/util/ArrayMap;

    return-void
.end method

.method public final setInteractionData(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->interactionData:Ljava/util/Map;

    return-void
.end method

.method public final setLockScreenShowHostMap(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->lockScreenShowHostMap:Ljava/util/Map;

    return-void
.end method

.method public final setNotificationIdList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->notificationIdList:Ljava/util/List;

    return-void
.end method

.method public final setPanelActionConfigMap(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->panelActionConfigMap:Ljava/util/Map;

    return-void
.end method

.method public final setRequestHideStatusBar(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->requestHideStatusBar:Z

    return-void
.end method

.method public final setRequestShowPanel(Ljava/lang/Boolean;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->isRequestShowPanel:Ljava/lang/Boolean;

    return-void
.end method

.method public final setShowHostMap(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->showHostMap:Ljava/util/Map;

    return-void
.end method

.method public final setVoiceContent(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->voiceContent:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->icon:Landroid/graphics/Bitmap;

    iget-object v2, v0, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->title:Ljava/lang/String;

    iget-object v3, v0, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->des:Ljava/lang/String;

    iget-boolean v4, v0, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->isMilestone:Z

    iget v5, v0, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->importance:I

    iget-boolean v6, v0, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->shouldShow:Z

    iget-object v7, v0, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->isRequestShowPanel:Ljava/lang/Boolean;

    iget-object v8, v0, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->interactionData:Ljava/util/Map;

    iget-object v9, v0, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->voiceContent:Ljava/lang/String;

    iget-object v10, v0, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->extraData:Landroid/util/ArrayMap;

    iget-object v11, v0, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->notificationIdList:Ljava/util/List;

    iget-object v12, v0, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->showHostMap:Ljava/util/Map;

    iget-object v13, v0, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->dataSourcePkgName:Ljava/lang/String;

    iget-boolean v14, v0, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->requestHideStatusBar:Z

    iget-object v15, v0, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->lockScreenShowHostMap:Ljava/util/Map;

    move-object/from16 v16, v15

    iget-object v15, v0, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->cancelPanelActionConfig:Ljava/lang/Integer;

    iget-object v0, v0, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->panelActionConfigMap:Ljava/util/Map;

    move-object/from16 p0, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v15

    const-string v15, "SeedlingUIData(icon="

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", des="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isMilestone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", importance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", shouldShow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isRequestShowPanel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", interactionData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", voiceContent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", extraData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", notificationIdList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", showHostMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", dataSourcePkgName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", requestHideStatusBar="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", lockScreenShowHostMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cancelPanelActionConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", panelActionConfigMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
