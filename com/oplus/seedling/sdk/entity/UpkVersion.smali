.class public final Lcom/oplus/seedling/sdk/entity/UpkVersion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private final newUpkVersion:Ljava/lang/String;

.field private final oldUpkVersion:Ljava/lang/String;

.field private final serviceId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const-string v0, "serviceId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newUpkVersion"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "oldUpkVersion"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/seedling/sdk/entity/UpkVersion;->serviceId:Ljava/lang/String;

    iput-object p2, p0, Lcom/oplus/seedling/sdk/entity/UpkVersion;->newUpkVersion:Ljava/lang/String;

    iput-object p3, p0, Lcom/oplus/seedling/sdk/entity/UpkVersion;->oldUpkVersion:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/oplus/seedling/sdk/entity/UpkVersion;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/oplus/seedling/sdk/entity/UpkVersion;
    .registers 6

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_6

    iget-object p1, p0, Lcom/oplus/seedling/sdk/entity/UpkVersion;->serviceId:Ljava/lang/String;

    :cond_6
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_c

    iget-object p2, p0, Lcom/oplus/seedling/sdk/entity/UpkVersion;->newUpkVersion:Ljava/lang/String;

    :cond_c
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_12

    iget-object p3, p0, Lcom/oplus/seedling/sdk/entity/UpkVersion;->oldUpkVersion:Ljava/lang/String;

    :cond_12
    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/seedling/sdk/entity/UpkVersion;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/seedling/sdk/entity/UpkVersion;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/seedling/sdk/entity/UpkVersion;->serviceId:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/seedling/sdk/entity/UpkVersion;->newUpkVersion:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/seedling/sdk/entity/UpkVersion;->oldUpkVersion:Ljava/lang/String;

    return-object p0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/seedling/sdk/entity/UpkVersion;
    .registers 4

    const-string p0, "serviceId"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "newUpkVersion"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "oldUpkVersion"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/oplus/seedling/sdk/entity/UpkVersion;

    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/seedling/sdk/entity/UpkVersion;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/oplus/seedling/sdk/entity/UpkVersion;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/oplus/seedling/sdk/entity/UpkVersion;

    iget-object v1, p0, Lcom/oplus/seedling/sdk/entity/UpkVersion;->serviceId:Ljava/lang/String;

    iget-object v3, p1, Lcom/oplus/seedling/sdk/entity/UpkVersion;->serviceId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/oplus/seedling/sdk/entity/UpkVersion;->newUpkVersion:Ljava/lang/String;

    iget-object v3, p1, Lcom/oplus/seedling/sdk/entity/UpkVersion;->newUpkVersion:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object p0, p0, Lcom/oplus/seedling/sdk/entity/UpkVersion;->oldUpkVersion:Ljava/lang/String;

    iget-object p1, p1, Lcom/oplus/seedling/sdk/entity/UpkVersion;->oldUpkVersion:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2d

    return v2

    :cond_2d
    return v0
.end method

.method public final getNewUpkVersion()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/seedling/sdk/entity/UpkVersion;->newUpkVersion:Ljava/lang/String;

    return-object p0
.end method

.method public final getOldUpkVersion()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/seedling/sdk/entity/UpkVersion;->oldUpkVersion:Ljava/lang/String;

    return-object p0
.end method

.method public final getServiceId()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/seedling/sdk/entity/UpkVersion;->serviceId:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lcom/oplus/seedling/sdk/entity/UpkVersion;->serviceId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/oplus/seedling/sdk/entity/UpkVersion;->newUpkVersion:Ljava/lang/String;

    const/16 v2, 0x1f

    invoke-static {v1, v0, v2}, Landroidx/room/util/b;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object p0, p0, Lcom/oplus/seedling/sdk/entity/UpkVersion;->oldUpkVersion:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    iget-object v0, p0, Lcom/oplus/seedling/sdk/entity/UpkVersion;->serviceId:Ljava/lang/String;

    iget-object v1, p0, Lcom/oplus/seedling/sdk/entity/UpkVersion;->newUpkVersion:Ljava/lang/String;

    iget-object p0, p0, Lcom/oplus/seedling/sdk/entity/UpkVersion;->oldUpkVersion:Ljava/lang/String;

    const-string v2, "UpkVersion(serviceId="

    const-string v3, ", newUpkVersion="

    const-string v4, ", oldUpkVersion="

    invoke-static {v2, v0, v3, v1, v4}, Ld/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-static {v0, p0, v1}, Landroidx/concurrent/futures/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
