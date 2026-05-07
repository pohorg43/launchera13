.class public final Lcom/oplus/seedling/sdk/plugin/bean/SoHashEntity;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private final hash:Ljava/lang/String;

.field private final soName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const-string v0, "soName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/seedling/sdk/plugin/bean/SoHashEntity;->soName:Ljava/lang/String;

    iput-object p2, p0, Lcom/oplus/seedling/sdk/plugin/bean/SoHashEntity;->hash:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/oplus/seedling/sdk/plugin/bean/SoHashEntity;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/oplus/seedling/sdk/plugin/bean/SoHashEntity;
    .registers 5

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_6

    iget-object p1, p0, Lcom/oplus/seedling/sdk/plugin/bean/SoHashEntity;->soName:Ljava/lang/String;

    :cond_6
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_c

    iget-object p2, p0, Lcom/oplus/seedling/sdk/plugin/bean/SoHashEntity;->hash:Ljava/lang/String;

    :cond_c
    invoke-virtual {p0, p1, p2}, Lcom/oplus/seedling/sdk/plugin/bean/SoHashEntity;->copy(Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/seedling/sdk/plugin/bean/SoHashEntity;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/seedling/sdk/plugin/bean/SoHashEntity;->soName:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/seedling/sdk/plugin/bean/SoHashEntity;->hash:Ljava/lang/String;

    return-object p0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/seedling/sdk/plugin/bean/SoHashEntity;
    .registers 3

    const-string p0, "soName"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/oplus/seedling/sdk/plugin/bean/SoHashEntity;

    invoke-direct {p0, p1, p2}, Lcom/oplus/seedling/sdk/plugin/bean/SoHashEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/oplus/seedling/sdk/plugin/bean/SoHashEntity;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/oplus/seedling/sdk/plugin/bean/SoHashEntity;

    iget-object v1, p0, Lcom/oplus/seedling/sdk/plugin/bean/SoHashEntity;->soName:Ljava/lang/String;

    iget-object v3, p1, Lcom/oplus/seedling/sdk/plugin/bean/SoHashEntity;->soName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object p0, p0, Lcom/oplus/seedling/sdk/plugin/bean/SoHashEntity;->hash:Ljava/lang/String;

    iget-object p1, p1, Lcom/oplus/seedling/sdk/plugin/bean/SoHashEntity;->hash:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_22

    return v2

    :cond_22
    return v0
.end method

.method public final getHash()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/seedling/sdk/plugin/bean/SoHashEntity;->hash:Ljava/lang/String;

    return-object p0
.end method

.method public final getSoName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/seedling/sdk/plugin/bean/SoHashEntity;->soName:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/oplus/seedling/sdk/plugin/bean/SoHashEntity;->soName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/oplus/seedling/sdk/plugin/bean/SoHashEntity;->hash:Ljava/lang/String;

    if-nez p0, :cond_e

    const/4 p0, 0x0

    goto :goto_12

    :cond_e
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    :goto_12
    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/oplus/seedling/sdk/plugin/bean/SoHashEntity;->soName:Ljava/lang/String;

    iget-object p0, p0, Lcom/oplus/seedling/sdk/plugin/bean/SoHashEntity;->hash:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SoHashEntity(soName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", hash="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
