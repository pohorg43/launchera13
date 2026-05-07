.class public final Lcom/oplus/seedling/sdk/card/SeedlingServiceInfo;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/seedling/sdk/card/SeedlingServiceInfo$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/seedling/sdk/card/SeedlingServiceInfo$Companion;


# instance fields
.field private final icon:Landroid/graphics/drawable/Drawable;

.field private final name:Ljava/lang/String;

.field private final serviceId:Ljava/lang/String;

.field private final subDomain:Ljava/lang/String;

.field private final subDomainDesc:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/seedling/sdk/card/SeedlingServiceInfo$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/seedling/sdk/card/SeedlingServiceInfo$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/seedling/sdk/card/SeedlingServiceInfo;->Companion:Lcom/oplus/seedling/sdk/card/SeedlingServiceInfo$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .registers 7

    const-string v0, "serviceId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "subDomain"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "subDomainDesc"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/seedling/sdk/card/SeedlingServiceInfo;->serviceId:Ljava/lang/String;

    iput-object p2, p0, Lcom/oplus/seedling/sdk/card/SeedlingServiceInfo;->name:Ljava/lang/String;

    iput-object p3, p0, Lcom/oplus/seedling/sdk/card/SeedlingServiceInfo;->subDomain:Ljava/lang/String;

    iput-object p4, p0, Lcom/oplus/seedling/sdk/card/SeedlingServiceInfo;->subDomainDesc:Ljava/lang/String;

    iput-object p5, p0, Lcom/oplus/seedling/sdk/card/SeedlingServiceInfo;->icon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public static synthetic copy$default(Lcom/oplus/seedling/sdk/card/SeedlingServiceInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ILjava/lang/Object;)Lcom/oplus/seedling/sdk/card/SeedlingServiceInfo;
    .registers 11

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_6

    iget-object p1, p0, Lcom/oplus/seedling/sdk/card/SeedlingServiceInfo;->serviceId:Ljava/lang/String;

    :cond_6
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_c

    iget-object p2, p0, Lcom/oplus/seedling/sdk/card/SeedlingServiceInfo;->name:Ljava/lang/String;

    :cond_c
    move-object p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_13

    iget-object p3, p0, Lcom/oplus/seedling/sdk/card/SeedlingServiceInfo;->subDomain:Ljava/lang/String;

    :cond_13
    move-object v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_1a

    iget-object p4, p0, Lcom/oplus/seedling/sdk/card/SeedlingServiceInfo;->subDomainDesc:Ljava/lang/String;

    :cond_1a
    move-object v1, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_21

    iget-object p5, p0, Lcom/oplus/seedling/sdk/card/SeedlingServiceInfo;->icon:Landroid/graphics/drawable/Drawable;

    :cond_21
    move-object v2, p5

    move-object p2, p0

    move-object p3, p1

    move-object p4, p7

    move-object p5, v0

    move-object p6, v1

    move-object p7, v2

    invoke-virtual/range {p2 .. p7}, Lcom/oplus/seedling/sdk/card/SeedlingServiceInfo;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Lcom/oplus/seedling/sdk/card/SeedlingServiceInfo;

    move-result-object p0

    return-object p0
.end method

.method public static final empty()Lcom/oplus/seedling/sdk/card/SeedlingServiceInfo;
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/oplus/seedling/sdk/card/SeedlingServiceInfo;->Companion:Lcom/oplus/seedling/sdk/card/SeedlingServiceInfo$Companion;

    invoke-virtual {v0}, Lcom/oplus/seedling/sdk/card/SeedlingServiceInfo$Companion;->empty()Lcom/oplus/seedling/sdk/card/SeedlingServiceInfo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/seedling/sdk/card/SeedlingServiceInfo;->serviceId:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/seedling/sdk/card/SeedlingServiceInfo;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/seedling/sdk/card/SeedlingServiceInfo;->subDomain:Ljava/lang/String;

    return-object p0
.end method

.method public final component4()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/seedling/sdk/card/SeedlingServiceInfo;->subDomainDesc:Ljava/lang/String;

    return-object p0
.end method

.method public final component5()Landroid/graphics/drawable/Drawable;
    .registers 1

    iget-object p0, p0, Lcom/oplus/seedling/sdk/card/SeedlingServiceInfo;->icon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Lcom/oplus/seedling/sdk/card/SeedlingServiceInfo;
    .registers 12

    const-string p0, "serviceId"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "name"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "subDomain"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "subDomainDesc"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/oplus/seedling/sdk/card/SeedlingServiceInfo;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/oplus/seedling/sdk/card/SeedlingServiceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/oplus/seedling/sdk/card/SeedlingServiceInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/oplus/seedling/sdk/card/SeedlingServiceInfo;

    iget-object v1, p0, Lcom/oplus/seedling/sdk/card/SeedlingServiceInfo;->serviceId:Ljava/lang/String;

    iget-object v3, p1, Lcom/oplus/seedling/sdk/card/SeedlingServiceInfo;->serviceId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/oplus/seedling/sdk/card/SeedlingServiceInfo;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/oplus/seedling/sdk/card/SeedlingServiceInfo;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lcom/oplus/seedling/sdk/card/SeedlingServiceInfo;->subDomain:Ljava/lang/String;

    iget-object v3, p1, Lcom/oplus/seedling/sdk/card/SeedlingServiceInfo;->subDomain:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    return v2

    :cond_2d
    iget-object v1, p0, Lcom/oplus/seedling/sdk/card/SeedlingServiceInfo;->subDomainDesc:Ljava/lang/String;

    iget-object v3, p1, Lcom/oplus/seedling/sdk/card/SeedlingServiceInfo;->subDomainDesc:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    return v2

    :cond_38
    iget-object p0, p0, Lcom/oplus/seedling/sdk/card/SeedlingServiceInfo;->icon:Landroid/graphics/drawable/Drawable;

    iget-object p1, p1, Lcom/oplus/seedling/sdk/card/SeedlingServiceInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_43

    return v2

    :cond_43
    return v0
.end method

.method public final getIcon()Landroid/graphics/drawable/Drawable;
    .registers 1

    iget-object p0, p0, Lcom/oplus/seedling/sdk/card/SeedlingServiceInfo;->icon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/seedling/sdk/card/SeedlingServiceInfo;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final getServiceId()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/seedling/sdk/card/SeedlingServiceInfo;->serviceId:Ljava/lang/String;

    return-object p0
.end method

.method public final getSubDomain()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/seedling/sdk/card/SeedlingServiceInfo;->subDomain:Ljava/lang/String;

    return-object p0
.end method

.method public final getSubDomainDesc()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/seedling/sdk/card/SeedlingServiceInfo;->subDomainDesc:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lcom/oplus/seedling/sdk/card/SeedlingServiceInfo;->serviceId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/oplus/seedling/sdk/card/SeedlingServiceInfo;->name:Ljava/lang/String;

    const/16 v2, 0x1f

    invoke-static {v1, v0, v2}, Landroidx/room/util/b;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/oplus/seedling/sdk/card/SeedlingServiceInfo;->subDomain:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Landroidx/room/util/b;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/oplus/seedling/sdk/card/SeedlingServiceInfo;->subDomainDesc:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Landroidx/room/util/b;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object p0, p0, Lcom/oplus/seedling/sdk/card/SeedlingServiceInfo;->icon:Landroid/graphics/drawable/Drawable;

    if-nez p0, :cond_22

    const/4 p0, 0x0

    goto :goto_26

    :cond_22
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->hashCode()I

    move-result p0

    :goto_26
    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    iget-object v0, p0, Lcom/oplus/seedling/sdk/card/SeedlingServiceInfo;->serviceId:Ljava/lang/String;

    iget-object v1, p0, Lcom/oplus/seedling/sdk/card/SeedlingServiceInfo;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/oplus/seedling/sdk/card/SeedlingServiceInfo;->subDomain:Ljava/lang/String;

    iget-object v3, p0, Lcom/oplus/seedling/sdk/card/SeedlingServiceInfo;->subDomainDesc:Ljava/lang/String;

    iget-object p0, p0, Lcom/oplus/seedling/sdk/card/SeedlingServiceInfo;->icon:Landroid/graphics/drawable/Drawable;

    const-string v4, "SeedlingServiceInfo(serviceId="

    const-string v5, ", name="

    const-string v6, ", subDomain="

    invoke-static {v4, v0, v5, v1, v6}, Ld/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", subDomainDesc="

    const-string v4, ", icon="

    invoke-static {v0, v2, v1, v3, v4}, Landroidx/room/s;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
