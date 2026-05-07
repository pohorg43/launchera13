.class public final Lcom/oplus/seedling/sdk/plugin/bean/HashEntity;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private final hash:Ljava/lang/String;

.field private final soHash:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/seedling/sdk/plugin/bean/SoHashEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/oplus/seedling/sdk/plugin/bean/SoHashEntity;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/seedling/sdk/plugin/bean/HashEntity;->hash:Ljava/lang/String;

    iput-object p2, p0, Lcom/oplus/seedling/sdk/plugin/bean/HashEntity;->soHash:Ljava/util/List;

    return-void
.end method

.method public static synthetic copy$default(Lcom/oplus/seedling/sdk/plugin/bean/HashEntity;Ljava/lang/String;Ljava/util/List;ILjava/lang/Object;)Lcom/oplus/seedling/sdk/plugin/bean/HashEntity;
    .registers 5

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_6

    iget-object p1, p0, Lcom/oplus/seedling/sdk/plugin/bean/HashEntity;->hash:Ljava/lang/String;

    :cond_6
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_c

    iget-object p2, p0, Lcom/oplus/seedling/sdk/plugin/bean/HashEntity;->soHash:Ljava/util/List;

    :cond_c
    invoke-virtual {p0, p1, p2}, Lcom/oplus/seedling/sdk/plugin/bean/HashEntity;->copy(Ljava/lang/String;Ljava/util/List;)Lcom/oplus/seedling/sdk/plugin/bean/HashEntity;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/seedling/sdk/plugin/bean/HashEntity;->hash:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oplus/seedling/sdk/plugin/bean/SoHashEntity;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/seedling/sdk/plugin/bean/HashEntity;->soHash:Ljava/util/List;

    return-object p0
.end method

.method public final copy(Ljava/lang/String;Ljava/util/List;)Lcom/oplus/seedling/sdk/plugin/bean/HashEntity;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/oplus/seedling/sdk/plugin/bean/SoHashEntity;",
            ">;)",
            "Lcom/oplus/seedling/sdk/plugin/bean/HashEntity;"
        }
    .end annotation

    new-instance p0, Lcom/oplus/seedling/sdk/plugin/bean/HashEntity;

    invoke-direct {p0, p1, p2}, Lcom/oplus/seedling/sdk/plugin/bean/HashEntity;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/oplus/seedling/sdk/plugin/bean/HashEntity;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/oplus/seedling/sdk/plugin/bean/HashEntity;

    iget-object v1, p0, Lcom/oplus/seedling/sdk/plugin/bean/HashEntity;->hash:Ljava/lang/String;

    iget-object v3, p1, Lcom/oplus/seedling/sdk/plugin/bean/HashEntity;->hash:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object p0, p0, Lcom/oplus/seedling/sdk/plugin/bean/HashEntity;->soHash:Ljava/util/List;

    iget-object p1, p1, Lcom/oplus/seedling/sdk/plugin/bean/HashEntity;->soHash:Ljava/util/List;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_22

    return v2

    :cond_22
    return v0
.end method

.method public final getHash()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/seedling/sdk/plugin/bean/HashEntity;->hash:Ljava/lang/String;

    return-object p0
.end method

.method public final getSoHash()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oplus/seedling/sdk/plugin/bean/SoHashEntity;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/seedling/sdk/plugin/bean/HashEntity;->soHash:Ljava/util/List;

    return-object p0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/oplus/seedling/sdk/plugin/bean/HashEntity;->hash:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    move v0, v1

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/oplus/seedling/sdk/plugin/bean/HashEntity;->soHash:Ljava/util/List;

    if-nez p0, :cond_12

    goto :goto_16

    :cond_12
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_16
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/oplus/seedling/sdk/plugin/bean/HashEntity;->hash:Ljava/lang/String;

    iget-object p0, p0, Lcom/oplus/seedling/sdk/plugin/bean/HashEntity;->soHash:Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HashEntity(hash="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", soHash="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
