.class public final Lcom/oplus/seedling/sdk/entity/CardCreateErrorBean;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private final errorCode:I

.field private final errorMsg:Ljava/lang/String;

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

.field private final instanceId:Ljava/lang/Long;

.field private final packageName:Ljava/lang/String;

.field private final serviceId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;ILjava/lang/String;Landroid/util/ArrayMap;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serviceId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorMsg"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/seedling/sdk/entity/CardCreateErrorBean;->packageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/oplus/seedling/sdk/entity/CardCreateErrorBean;->instanceId:Ljava/lang/Long;

    iput-object p3, p0, Lcom/oplus/seedling/sdk/entity/CardCreateErrorBean;->serviceId:Ljava/lang/String;

    iput p4, p0, Lcom/oplus/seedling/sdk/entity/CardCreateErrorBean;->errorCode:I

    iput-object p5, p0, Lcom/oplus/seedling/sdk/entity/CardCreateErrorBean;->errorMsg:Ljava/lang/String;

    iput-object p6, p0, Lcom/oplus/seedling/sdk/entity/CardCreateErrorBean;->extras:Landroid/util/ArrayMap;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;ILjava/lang/String;Landroid/util/ArrayMap;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 18

    and-int/lit8 v0, p7, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    move-object v4, v1

    goto :goto_8

    :cond_7
    move-object v4, p2

    :goto_8
    and-int/lit8 v0, p7, 0x20

    if-eqz v0, :cond_e

    move-object v8, v1

    goto :goto_f

    :cond_e
    move-object v8, p6

    :goto_f
    move-object v2, p0

    move-object v3, p1

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v2 .. v8}, Lcom/oplus/seedling/sdk/entity/CardCreateErrorBean;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;ILjava/lang/String;Landroid/util/ArrayMap;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/oplus/seedling/sdk/entity/CardCreateErrorBean;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;ILjava/lang/String;Landroid/util/ArrayMap;ILjava/lang/Object;)Lcom/oplus/seedling/sdk/entity/CardCreateErrorBean;
    .registers 13

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_6

    iget-object p1, p0, Lcom/oplus/seedling/sdk/entity/CardCreateErrorBean;->packageName:Ljava/lang/String;

    :cond_6
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_c

    iget-object p2, p0, Lcom/oplus/seedling/sdk/entity/CardCreateErrorBean;->instanceId:Ljava/lang/Long;

    :cond_c
    move-object p8, p2

    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_13

    iget-object p3, p0, Lcom/oplus/seedling/sdk/entity/CardCreateErrorBean;->serviceId:Ljava/lang/String;

    :cond_13
    move-object v0, p3

    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_1a

    iget p4, p0, Lcom/oplus/seedling/sdk/entity/CardCreateErrorBean;->errorCode:I

    :cond_1a
    move v1, p4

    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_21

    iget-object p5, p0, Lcom/oplus/seedling/sdk/entity/CardCreateErrorBean;->errorMsg:Ljava/lang/String;

    :cond_21
    move-object v2, p5

    and-int/lit8 p2, p7, 0x20

    if-eqz p2, :cond_28

    iget-object p6, p0, Lcom/oplus/seedling/sdk/entity/CardCreateErrorBean;->extras:Landroid/util/ArrayMap;

    :cond_28
    move-object v3, p6

    move-object p2, p0

    move-object p3, p1

    move-object p4, p8

    move-object p5, v0

    move p6, v1

    move-object p7, v2

    move-object p8, v3

    invoke-virtual/range {p2 .. p8}, Lcom/oplus/seedling/sdk/entity/CardCreateErrorBean;->copy(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;ILjava/lang/String;Landroid/util/ArrayMap;)Lcom/oplus/seedling/sdk/entity/CardCreateErrorBean;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/seedling/sdk/entity/CardCreateErrorBean;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()Ljava/lang/Long;
    .registers 1

    iget-object p0, p0, Lcom/oplus/seedling/sdk/entity/CardCreateErrorBean;->instanceId:Ljava/lang/Long;

    return-object p0
.end method

.method public final component3()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/seedling/sdk/entity/CardCreateErrorBean;->serviceId:Ljava/lang/String;

    return-object p0
.end method

.method public final component4()I
    .registers 1

    iget p0, p0, Lcom/oplus/seedling/sdk/entity/CardCreateErrorBean;->errorCode:I

    return p0
.end method

.method public final component5()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/seedling/sdk/entity/CardCreateErrorBean;->errorMsg:Ljava/lang/String;

    return-object p0
.end method

.method public final component6()Landroid/util/ArrayMap;
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

    iget-object p0, p0, Lcom/oplus/seedling/sdk/entity/CardCreateErrorBean;->extras:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;ILjava/lang/String;Landroid/util/ArrayMap;)Lcom/oplus/seedling/sdk/entity/CardCreateErrorBean;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/oplus/seedling/sdk/entity/CardCreateErrorBean;"
        }
    .end annotation

    const-string p0, "packageName"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "serviceId"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "errorMsg"

    invoke-static {p5, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/oplus/seedling/sdk/entity/CardCreateErrorBean;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/oplus/seedling/sdk/entity/CardCreateErrorBean;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;ILjava/lang/String;Landroid/util/ArrayMap;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/oplus/seedling/sdk/entity/CardCreateErrorBean;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/oplus/seedling/sdk/entity/CardCreateErrorBean;

    iget-object v1, p0, Lcom/oplus/seedling/sdk/entity/CardCreateErrorBean;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/oplus/seedling/sdk/entity/CardCreateErrorBean;->packageName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/oplus/seedling/sdk/entity/CardCreateErrorBean;->instanceId:Ljava/lang/Long;

    iget-object v3, p1, Lcom/oplus/seedling/sdk/entity/CardCreateErrorBean;->instanceId:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lcom/oplus/seedling/sdk/entity/CardCreateErrorBean;->serviceId:Ljava/lang/String;

    iget-object v3, p1, Lcom/oplus/seedling/sdk/entity/CardCreateErrorBean;->serviceId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    return v2

    :cond_2d
    iget v1, p0, Lcom/oplus/seedling/sdk/entity/CardCreateErrorBean;->errorCode:I

    iget v3, p1, Lcom/oplus/seedling/sdk/entity/CardCreateErrorBean;->errorCode:I

    if-eq v1, v3, :cond_34

    return v2

    :cond_34
    iget-object v1, p0, Lcom/oplus/seedling/sdk/entity/CardCreateErrorBean;->errorMsg:Ljava/lang/String;

    iget-object v3, p1, Lcom/oplus/seedling/sdk/entity/CardCreateErrorBean;->errorMsg:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3f

    return v2

    :cond_3f
    iget-object p0, p0, Lcom/oplus/seedling/sdk/entity/CardCreateErrorBean;->extras:Landroid/util/ArrayMap;

    iget-object p1, p1, Lcom/oplus/seedling/sdk/entity/CardCreateErrorBean;->extras:Landroid/util/ArrayMap;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4a

    return v2

    :cond_4a
    return v0
.end method

.method public final getErrorCode()I
    .registers 1

    iget p0, p0, Lcom/oplus/seedling/sdk/entity/CardCreateErrorBean;->errorCode:I

    return p0
.end method

.method public final getErrorMsg()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/seedling/sdk/entity/CardCreateErrorBean;->errorMsg:Ljava/lang/String;

    return-object p0
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

    iget-object p0, p0, Lcom/oplus/seedling/sdk/entity/CardCreateErrorBean;->extras:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public final getInstanceId()Ljava/lang/Long;
    .registers 1

    iget-object p0, p0, Lcom/oplus/seedling/sdk/entity/CardCreateErrorBean;->instanceId:Ljava/lang/Long;

    return-object p0
.end method

.method public final getPackageName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/seedling/sdk/entity/CardCreateErrorBean;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public final getServiceId()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/seedling/sdk/entity/CardCreateErrorBean;->serviceId:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .registers 5

    iget-object v0, p0, Lcom/oplus/seedling/sdk/entity/CardCreateErrorBean;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/oplus/seedling/sdk/entity/CardCreateErrorBean;->instanceId:Ljava/lang/Long;

    const/4 v2, 0x0

    if-nez v1, :cond_f

    move v1, v2

    goto :goto_13

    :cond_f
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_13
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/oplus/seedling/sdk/entity/CardCreateErrorBean;->serviceId:Ljava/lang/String;

    const/16 v3, 0x1f

    invoke-static {v1, v0, v3}, Landroidx/room/util/b;->a(Ljava/lang/String;II)I

    move-result v0

    iget v1, p0, Lcom/oplus/seedling/sdk/entity/CardCreateErrorBean;->errorCode:I

    invoke-static {v1, v0, v3}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget-object v1, p0, Lcom/oplus/seedling/sdk/entity/CardCreateErrorBean;->errorMsg:Ljava/lang/String;

    invoke-static {v1, v0, v3}, Landroidx/room/util/b;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object p0, p0, Lcom/oplus/seedling/sdk/entity/CardCreateErrorBean;->extras:Landroid/util/ArrayMap;

    if-nez p0, :cond_2f

    goto :goto_33

    :cond_2f
    invoke-virtual {p0}, Landroid/util/ArrayMap;->hashCode()I

    move-result v2

    :goto_33
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    iget-object v0, p0, Lcom/oplus/seedling/sdk/entity/CardCreateErrorBean;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/oplus/seedling/sdk/entity/CardCreateErrorBean;->instanceId:Ljava/lang/Long;

    iget-object v2, p0, Lcom/oplus/seedling/sdk/entity/CardCreateErrorBean;->serviceId:Ljava/lang/String;

    iget v3, p0, Lcom/oplus/seedling/sdk/entity/CardCreateErrorBean;->errorCode:I

    iget-object v4, p0, Lcom/oplus/seedling/sdk/entity/CardCreateErrorBean;->errorMsg:Ljava/lang/String;

    iget-object p0, p0, Lcom/oplus/seedling/sdk/entity/CardCreateErrorBean;->extras:Landroid/util/ArrayMap;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CardCreateErrorBean(packageName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", instanceId="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", serviceId="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", errorCode="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", errorMsg="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", extras="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
