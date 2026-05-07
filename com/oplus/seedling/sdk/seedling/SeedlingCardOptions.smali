.class public final Lcom/oplus/seedling/sdk/seedling/SeedlingCardOptions;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/seedling/sdk/seedling/SeedlingCardOptions$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/seedling/sdk/seedling/SeedlingCardOptions$Companion;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final isMilestone:Ljava/lang/Boolean;

.field private final isRequestShowPanel:Ljava/lang/Boolean;

.field private final notificationIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final showHostMap:Ljava/util/Map;
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

    new-instance v0, Lcom/oplus/seedling/sdk/seedling/SeedlingCardOptions$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/seedling/sdk/seedling/SeedlingCardOptions$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/seedling/sdk/seedling/SeedlingCardOptions;->Companion:Lcom/oplus/seedling/sdk/seedling/SeedlingCardOptions$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 8

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xf

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/oplus/seedling/sdk/seedling/SeedlingCardOptions;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingCardOptions;->isMilestone:Ljava/lang/Boolean;

    iput-object p2, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingCardOptions;->isRequestShowPanel:Ljava/lang/Boolean;

    iput-object p3, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingCardOptions;->notificationIdList:Ljava/util/List;

    iput-object p4, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingCardOptions;->showHostMap:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 8

    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x0

    if-eqz p6, :cond_6

    move-object p1, v0

    :cond_6
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_b

    move-object p2, v0

    :cond_b
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_10

    move-object p3, v0

    :cond_10
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_15

    move-object p4, v0

    :cond_15
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oplus/seedling/sdk/seedling/SeedlingCardOptions;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/oplus/seedling/sdk/seedling/SeedlingCardOptions;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;Ljava/util/Map;ILjava/lang/Object;)Lcom/oplus/seedling/sdk/seedling/SeedlingCardOptions;
    .registers 7

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_6

    iget-object p1, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingCardOptions;->isMilestone:Ljava/lang/Boolean;

    :cond_6
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_c

    iget-object p2, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingCardOptions;->isRequestShowPanel:Ljava/lang/Boolean;

    :cond_c
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_12

    iget-object p3, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingCardOptions;->notificationIdList:Ljava/util/List;

    :cond_12
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_18

    iget-object p4, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingCardOptions;->showHostMap:Ljava/util/Map;

    :cond_18
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/oplus/seedling/sdk/seedling/SeedlingCardOptions;->copy(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;Ljava/util/Map;)Lcom/oplus/seedling/sdk/seedling/SeedlingCardOptions;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/Boolean;
    .registers 1

    iget-object p0, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingCardOptions;->isMilestone:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final component2()Ljava/lang/Boolean;
    .registers 1

    iget-object p0, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingCardOptions;->isRequestShowPanel:Ljava/lang/Boolean;

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

    iget-object p0, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingCardOptions;->notificationIdList:Ljava/util/List;

    return-object p0
.end method

.method public final component4()Ljava/util/Map;
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

    iget-object p0, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingCardOptions;->showHostMap:Ljava/util/Map;

    return-object p0
.end method

.method public final copy(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;Ljava/util/Map;)Lcom/oplus/seedling/sdk/seedling/SeedlingCardOptions;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/oplus/seedling/sdk/seedling/SeedlingCardOptions;"
        }
    .end annotation

    new-instance p0, Lcom/oplus/seedling/sdk/seedling/SeedlingCardOptions;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oplus/seedling/sdk/seedling/SeedlingCardOptions;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;Ljava/util/Map;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/oplus/seedling/sdk/seedling/SeedlingCardOptions;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/oplus/seedling/sdk/seedling/SeedlingCardOptions;

    iget-object v1, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingCardOptions;->isMilestone:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/oplus/seedling/sdk/seedling/SeedlingCardOptions;->isMilestone:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingCardOptions;->isRequestShowPanel:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/oplus/seedling/sdk/seedling/SeedlingCardOptions;->isRequestShowPanel:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingCardOptions;->notificationIdList:Ljava/util/List;

    iget-object v3, p1, Lcom/oplus/seedling/sdk/seedling/SeedlingCardOptions;->notificationIdList:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    return v2

    :cond_2d
    iget-object p0, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingCardOptions;->showHostMap:Ljava/util/Map;

    iget-object p1, p1, Lcom/oplus/seedling/sdk/seedling/SeedlingCardOptions;->showHostMap:Ljava/util/Map;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_38

    return v2

    :cond_38
    return v0
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

    iget-object p0, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingCardOptions;->notificationIdList:Ljava/util/List;

    return-object p0
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

    iget-object p0, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingCardOptions;->showHostMap:Ljava/util/Map;

    return-object p0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingCardOptions;->isMilestone:Ljava/lang/Boolean;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    move v0, v1

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingCardOptions;->isRequestShowPanel:Ljava/lang/Boolean;

    if-nez v2, :cond_13

    move v2, v1

    goto :goto_17

    :cond_13
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_17
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingCardOptions;->notificationIdList:Ljava/util/List;

    if-nez v2, :cond_20

    move v2, v1

    goto :goto_24

    :cond_20
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_24
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingCardOptions;->showHostMap:Ljava/util/Map;

    if-nez p0, :cond_2c

    goto :goto_30

    :cond_2c
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_30
    add-int/2addr v0, v1

    return v0
.end method

.method public final isMilestone()Ljava/lang/Boolean;
    .registers 1

    iget-object p0, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingCardOptions;->isMilestone:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final isRequestShowPanel()Ljava/lang/Boolean;
    .registers 1

    iget-object p0, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingCardOptions;->isRequestShowPanel:Ljava/lang/Boolean;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    iget-object v0, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingCardOptions;->isMilestone:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingCardOptions;->isRequestShowPanel:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingCardOptions;->notificationIdList:Ljava/util/List;

    iget-object p0, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingCardOptions;->showHostMap:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SeedlingCardOptions(isMilestone="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", isRequestShowPanel="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", notificationIdList="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", showHostMap="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
