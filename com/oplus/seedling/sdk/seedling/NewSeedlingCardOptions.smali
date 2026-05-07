.class public final Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions$Companion;
    }
.end annotation


# static fields
.field public static final ACTION_DISAPPEAR:I = 0x2

.field public static final ACTION_NOTHING:I = 0x3

.field public static final ACTION_RETRACT:I = 0x1

.field public static final Companion:Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions$Companion;

.field public static final PANEL_INSIDE_SLIDE:I = 0x64

.field public static final PANEL_OUTSIDE_CLICK:I = 0x65

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private cancelPanelActionConfig:Ljava/lang/Integer;

.field private dataSourcePkgName:Ljava/lang/String;

.field private grade:Ljava/lang/Integer;

.field private isMilestone:Z

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


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->Companion:Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 14

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

    const/16 v11, 0x3ff

    const/4 v12, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;-><init>(Ljava/lang/String;ZLjava/lang/Boolean;ZLjava/lang/Integer;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Integer;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLjava/lang/Boolean;ZLjava/lang/Integer;Ljava/util/List;Ljava/util/Map;)V
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/Boolean;",
            "Z",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x200

    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v12}, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;-><init>(Ljava/lang/String;ZLjava/lang/Boolean;ZLjava/lang/Integer;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Integer;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLjava/lang/Boolean;ZLjava/lang/Integer;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Integer;Ljava/util/Map;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/Boolean;",
            "Z",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;",
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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->dataSourcePkgName:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->isMilestone:Z

    iput-object p3, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->isRequestShowPanel:Ljava/lang/Boolean;

    iput-boolean p4, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->requestHideStatusBar:Z

    iput-object p5, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->grade:Ljava/lang/Integer;

    iput-object p6, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->notificationIdList:Ljava/util/List;

    iput-object p7, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->showHostMap:Ljava/util/Map;

    iput-object p8, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->lockScreenShowHostMap:Ljava/util/Map;

    iput-object p9, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->cancelPanelActionConfig:Ljava/lang/Integer;

    iput-object p10, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->panelActionConfigMap:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ZLjava/lang/Boolean;ZLjava/lang/Integer;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Integer;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 15

    and-int/lit8 p12, p11, 0x1

    const/4 v0, 0x0

    if-eqz p12, :cond_6

    move-object p1, v0

    :cond_6
    and-int/lit8 p12, p11, 0x2

    const/4 v1, 0x0

    if-eqz p12, :cond_c

    move p2, v1

    :cond_c
    and-int/lit8 p12, p11, 0x4

    if-eqz p12, :cond_11

    move-object p3, v0

    :cond_11
    and-int/lit8 p12, p11, 0x8

    if-eqz p12, :cond_16

    move p4, v1

    :cond_16
    and-int/lit8 p12, p11, 0x10

    if-eqz p12, :cond_1b

    move-object p5, v0

    :cond_1b
    and-int/lit8 p12, p11, 0x20

    if-eqz p12, :cond_20

    move-object p6, v0

    :cond_20
    and-int/lit8 p12, p11, 0x40

    if-eqz p12, :cond_25

    move-object p7, v0

    :cond_25
    and-int/lit16 p12, p11, 0x80

    if-eqz p12, :cond_2a

    move-object p8, v0

    :cond_2a
    and-int/lit16 p12, p11, 0x100

    if-eqz p12, :cond_2f

    move-object p9, v0

    :cond_2f
    and-int/lit16 p11, p11, 0x200

    if-eqz p11, :cond_34

    move-object p10, v0

    :cond_34
    invoke-direct/range {p0 .. p10}, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;-><init>(Ljava/lang/String;ZLjava/lang/Boolean;ZLjava/lang/Integer;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Integer;Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;Ljava/lang/String;ZLjava/lang/Boolean;ZLjava/lang/Integer;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Integer;Ljava/util/Map;ILjava/lang/Object;)Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;
    .registers 24

    move-object v0, p0

    move/from16 v1, p11

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_a

    iget-object v2, v0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->dataSourcePkgName:Ljava/lang/String;

    goto :goto_b

    :cond_a
    move-object v2, p1

    :goto_b
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_12

    iget-boolean v3, v0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->isMilestone:Z

    goto :goto_13

    :cond_12
    move v3, p2

    :goto_13
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_1a

    iget-object v4, v0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->isRequestShowPanel:Ljava/lang/Boolean;

    goto :goto_1b

    :cond_1a
    move-object v4, p3

    :goto_1b
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_22

    iget-boolean v5, v0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->requestHideStatusBar:Z

    goto :goto_23

    :cond_22
    move v5, p4

    :goto_23
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_2a

    iget-object v6, v0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->grade:Ljava/lang/Integer;

    goto :goto_2c

    :cond_2a
    move-object/from16 v6, p5

    :goto_2c
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_33

    iget-object v7, v0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->notificationIdList:Ljava/util/List;

    goto :goto_35

    :cond_33
    move-object/from16 v7, p6

    :goto_35
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_3c

    iget-object v8, v0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->showHostMap:Ljava/util/Map;

    goto :goto_3e

    :cond_3c
    move-object/from16 v8, p7

    :goto_3e
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_45

    iget-object v9, v0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->lockScreenShowHostMap:Ljava/util/Map;

    goto :goto_47

    :cond_45
    move-object/from16 v9, p8

    :goto_47
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_4e

    iget-object v10, v0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->cancelPanelActionConfig:Ljava/lang/Integer;

    goto :goto_50

    :cond_4e
    move-object/from16 v10, p9

    :goto_50
    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_57

    iget-object v1, v0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->panelActionConfigMap:Ljava/util/Map;

    goto :goto_59

    :cond_57
    move-object/from16 v1, p10

    :goto_59
    move-object p1, v2

    move p2, v3

    move-object p3, v4

    move p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v1

    invoke-virtual/range {p0 .. p10}, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->copy(Ljava/lang/String;ZLjava/lang/Boolean;ZLjava/lang/Integer;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Integer;Ljava/util/Map;)Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic getCancelPanelActionConfig$annotations()V
    .registers 0

    return-void
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->dataSourcePkgName:Ljava/lang/String;

    return-object p0
.end method

.method public final component10()Ljava/util/Map;
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

    iget-object p0, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->panelActionConfigMap:Ljava/util/Map;

    return-object p0
.end method

.method public final component2()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->isMilestone:Z

    return p0
.end method

.method public final component3()Ljava/lang/Boolean;
    .registers 1

    iget-object p0, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->isRequestShowPanel:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final component4()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->requestHideStatusBar:Z

    return p0
.end method

.method public final component5()Ljava/lang/Integer;
    .registers 1

    iget-object p0, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->grade:Ljava/lang/Integer;

    return-object p0
.end method

.method public final component6()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->notificationIdList:Ljava/util/List;

    return-object p0
.end method

.method public final component7()Ljava/util/Map;
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

    iget-object p0, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->showHostMap:Ljava/util/Map;

    return-object p0
.end method

.method public final component8()Ljava/util/Map;
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

    iget-object p0, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->lockScreenShowHostMap:Ljava/util/Map;

    return-object p0
.end method

.method public final component9()Ljava/lang/Integer;
    .registers 1

    iget-object p0, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->cancelPanelActionConfig:Ljava/lang/Integer;

    return-object p0
.end method

.method public final copy(Ljava/lang/String;ZLjava/lang/Boolean;ZLjava/lang/Integer;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Integer;Ljava/util/Map;)Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/Boolean;",
            "Z",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;"
        }
    .end annotation

    new-instance v11, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;

    move-object v0, v11

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;-><init>(Ljava/lang/String;ZLjava/lang/Boolean;ZLjava/lang/Integer;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Integer;Ljava/util/Map;)V

    return-object v11
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;

    iget-object v1, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->dataSourcePkgName:Ljava/lang/String;

    iget-object v3, p1, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->dataSourcePkgName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-boolean v1, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->isMilestone:Z

    iget-boolean v3, p1, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->isMilestone:Z

    if-eq v1, v3, :cond_1e

    return v2

    :cond_1e
    iget-object v1, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->isRequestShowPanel:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->isRequestShowPanel:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    return v2

    :cond_29
    iget-boolean v1, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->requestHideStatusBar:Z

    iget-boolean v3, p1, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->requestHideStatusBar:Z

    if-eq v1, v3, :cond_30

    return v2

    :cond_30
    iget-object v1, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->grade:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->grade:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3b

    return v2

    :cond_3b
    iget-object v1, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->notificationIdList:Ljava/util/List;

    iget-object v3, p1, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->notificationIdList:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_46

    return v2

    :cond_46
    iget-object v1, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->showHostMap:Ljava/util/Map;

    iget-object v3, p1, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->showHostMap:Ljava/util/Map;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_51

    return v2

    :cond_51
    iget-object v1, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->lockScreenShowHostMap:Ljava/util/Map;

    iget-object v3, p1, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->lockScreenShowHostMap:Ljava/util/Map;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5c

    return v2

    :cond_5c
    iget-object v1, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->cancelPanelActionConfig:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->cancelPanelActionConfig:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_67

    return v2

    :cond_67
    iget-object p0, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->panelActionConfigMap:Ljava/util/Map;

    iget-object p1, p1, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->panelActionConfigMap:Ljava/util/Map;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_72

    return v2

    :cond_72
    return v0
.end method

.method public final getCancelPanelActionConfig()Ljava/lang/Integer;
    .registers 1

    iget-object p0, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->cancelPanelActionConfig:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getDataSourcePkgName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->dataSourcePkgName:Ljava/lang/String;

    return-object p0
.end method

.method public final getGrade()Ljava/lang/Integer;
    .registers 1

    iget-object p0, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->grade:Ljava/lang/Integer;

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

    iget-object p0, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->lockScreenShowHostMap:Ljava/util/Map;

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

    iget-object p0, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->notificationIdList:Ljava/util/List;

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

    iget-object p0, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->panelActionConfigMap:Ljava/util/Map;

    return-object p0
.end method

.method public final getRequestHideStatusBar()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->requestHideStatusBar:Z

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

    iget-object p0, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->showHostMap:Ljava/util/Map;

    return-object p0
.end method

.method public hashCode()I
    .registers 5

    iget-object v0, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->dataSourcePkgName:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    move v0, v1

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->isMilestone:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_13

    move v2, v3

    :cond_13
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->isRequestShowPanel:Ljava/lang/Boolean;

    if-nez v2, :cond_1c

    move v2, v1

    goto :goto_20

    :cond_1c
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_20
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->requestHideStatusBar:Z

    if-eqz v2, :cond_28

    goto :goto_29

    :cond_28
    move v3, v2

    :goto_29
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->grade:Ljava/lang/Integer;

    if-nez v2, :cond_32

    move v2, v1

    goto :goto_36

    :cond_32
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_36
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->notificationIdList:Ljava/util/List;

    if-nez v2, :cond_3f

    move v2, v1

    goto :goto_43

    :cond_3f
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_43
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->showHostMap:Ljava/util/Map;

    if-nez v2, :cond_4c

    move v2, v1

    goto :goto_50

    :cond_4c
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_50
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->lockScreenShowHostMap:Ljava/util/Map;

    if-nez v2, :cond_59

    move v2, v1

    goto :goto_5d

    :cond_59
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_5d
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->cancelPanelActionConfig:Ljava/lang/Integer;

    if-nez v2, :cond_66

    move v2, v1

    goto :goto_6a

    :cond_66
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_6a
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->panelActionConfigMap:Ljava/util/Map;

    if-nez p0, :cond_72

    goto :goto_76

    :cond_72
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_76
    add-int/2addr v0, v1

    return v0
.end method

.method public final isMilestone()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->isMilestone:Z

    return p0
.end method

.method public final isRequestShowPanel()Ljava/lang/Boolean;
    .registers 1

    iget-object p0, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->isRequestShowPanel:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final setCancelPanelActionConfig(Ljava/lang/Integer;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->cancelPanelActionConfig:Ljava/lang/Integer;

    return-void
.end method

.method public final setDataSourcePkgName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->dataSourcePkgName:Ljava/lang/String;

    return-void
.end method

.method public final setGrade(Ljava/lang/Integer;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->grade:Ljava/lang/Integer;

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

    iput-object p1, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->lockScreenShowHostMap:Ljava/util/Map;

    return-void
.end method

.method public final setMilestone(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->isMilestone:Z

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

    iput-object p1, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->notificationIdList:Ljava/util/List;

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

    iput-object p1, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->panelActionConfigMap:Ljava/util/Map;

    return-void
.end method

.method public final setRequestHideStatusBar(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->requestHideStatusBar:Z

    return-void
.end method

.method public final setRequestShowPanel(Ljava/lang/Boolean;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->isRequestShowPanel:Ljava/lang/Boolean;

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

    iput-object p1, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->showHostMap:Ljava/util/Map;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 12

    iget-object v0, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->dataSourcePkgName:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->isMilestone:Z

    iget-object v2, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->isRequestShowPanel:Ljava/lang/Boolean;

    iget-boolean v3, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->requestHideStatusBar:Z

    iget-object v4, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->grade:Ljava/lang/Integer;

    iget-object v5, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->notificationIdList:Ljava/util/List;

    iget-object v6, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->showHostMap:Ljava/util/Map;

    iget-object v7, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->lockScreenShowHostMap:Ljava/util/Map;

    iget-object v8, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->cancelPanelActionConfig:Ljava/lang/Integer;

    iget-object p0, p0, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->panelActionConfigMap:Ljava/util/Map;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "NewSeedlingCardOptions(dataSourcePkgName="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", isMilestone="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isRequestShowPanel="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", requestHideStatusBar="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", grade="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", notificationIdList="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", showHostMap="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", lockScreenShowHostMap="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", cancelPanelActionConfig="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", panelActionConfigMap="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
