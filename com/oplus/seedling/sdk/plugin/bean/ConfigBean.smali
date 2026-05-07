.class public final Lcom/oplus/seedling/sdk/plugin/bean/ConfigBean;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private final hashLite:Lcom/oplus/seedling/sdk/plugin/bean/HashEntity;

.field private final hashStandard:Lcom/oplus/seedling/sdk/plugin/bean/HashEntity;

.field private final version:I


# direct methods
.method public constructor <init>(ILcom/oplus/seedling/sdk/plugin/bean/HashEntity;Lcom/oplus/seedling/sdk/plugin/bean/HashEntity;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/oplus/seedling/sdk/plugin/bean/ConfigBean;->version:I

    iput-object p2, p0, Lcom/oplus/seedling/sdk/plugin/bean/ConfigBean;->hashLite:Lcom/oplus/seedling/sdk/plugin/bean/HashEntity;

    iput-object p3, p0, Lcom/oplus/seedling/sdk/plugin/bean/ConfigBean;->hashStandard:Lcom/oplus/seedling/sdk/plugin/bean/HashEntity;

    return-void
.end method

.method public static synthetic copy$default(Lcom/oplus/seedling/sdk/plugin/bean/ConfigBean;ILcom/oplus/seedling/sdk/plugin/bean/HashEntity;Lcom/oplus/seedling/sdk/plugin/bean/HashEntity;ILjava/lang/Object;)Lcom/oplus/seedling/sdk/plugin/bean/ConfigBean;
    .registers 6

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_6

    iget p1, p0, Lcom/oplus/seedling/sdk/plugin/bean/ConfigBean;->version:I

    :cond_6
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_c

    iget-object p2, p0, Lcom/oplus/seedling/sdk/plugin/bean/ConfigBean;->hashLite:Lcom/oplus/seedling/sdk/plugin/bean/HashEntity;

    :cond_c
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_12

    iget-object p3, p0, Lcom/oplus/seedling/sdk/plugin/bean/ConfigBean;->hashStandard:Lcom/oplus/seedling/sdk/plugin/bean/HashEntity;

    :cond_12
    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/seedling/sdk/plugin/bean/ConfigBean;->copy(ILcom/oplus/seedling/sdk/plugin/bean/HashEntity;Lcom/oplus/seedling/sdk/plugin/bean/HashEntity;)Lcom/oplus/seedling/sdk/plugin/bean/ConfigBean;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .registers 1

    iget p0, p0, Lcom/oplus/seedling/sdk/plugin/bean/ConfigBean;->version:I

    return p0
.end method

.method public final component2()Lcom/oplus/seedling/sdk/plugin/bean/HashEntity;
    .registers 1

    iget-object p0, p0, Lcom/oplus/seedling/sdk/plugin/bean/ConfigBean;->hashLite:Lcom/oplus/seedling/sdk/plugin/bean/HashEntity;

    return-object p0
.end method

.method public final component3()Lcom/oplus/seedling/sdk/plugin/bean/HashEntity;
    .registers 1

    iget-object p0, p0, Lcom/oplus/seedling/sdk/plugin/bean/ConfigBean;->hashStandard:Lcom/oplus/seedling/sdk/plugin/bean/HashEntity;

    return-object p0
.end method

.method public final copy(ILcom/oplus/seedling/sdk/plugin/bean/HashEntity;Lcom/oplus/seedling/sdk/plugin/bean/HashEntity;)Lcom/oplus/seedling/sdk/plugin/bean/ConfigBean;
    .registers 4

    new-instance p0, Lcom/oplus/seedling/sdk/plugin/bean/ConfigBean;

    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/seedling/sdk/plugin/bean/ConfigBean;-><init>(ILcom/oplus/seedling/sdk/plugin/bean/HashEntity;Lcom/oplus/seedling/sdk/plugin/bean/HashEntity;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/oplus/seedling/sdk/plugin/bean/ConfigBean;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/oplus/seedling/sdk/plugin/bean/ConfigBean;

    iget v1, p0, Lcom/oplus/seedling/sdk/plugin/bean/ConfigBean;->version:I

    iget v3, p1, Lcom/oplus/seedling/sdk/plugin/bean/ConfigBean;->version:I

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lcom/oplus/seedling/sdk/plugin/bean/ConfigBean;->hashLite:Lcom/oplus/seedling/sdk/plugin/bean/HashEntity;

    iget-object v3, p1, Lcom/oplus/seedling/sdk/plugin/bean/ConfigBean;->hashLite:Lcom/oplus/seedling/sdk/plugin/bean/HashEntity;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    return v2

    :cond_1e
    iget-object p0, p0, Lcom/oplus/seedling/sdk/plugin/bean/ConfigBean;->hashStandard:Lcom/oplus/seedling/sdk/plugin/bean/HashEntity;

    iget-object p1, p1, Lcom/oplus/seedling/sdk/plugin/bean/ConfigBean;->hashStandard:Lcom/oplus/seedling/sdk/plugin/bean/HashEntity;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_29

    return v2

    :cond_29
    return v0
.end method

.method public final getHashLite()Lcom/oplus/seedling/sdk/plugin/bean/HashEntity;
    .registers 1

    iget-object p0, p0, Lcom/oplus/seedling/sdk/plugin/bean/ConfigBean;->hashLite:Lcom/oplus/seedling/sdk/plugin/bean/HashEntity;

    return-object p0
.end method

.method public final getHashStandard()Lcom/oplus/seedling/sdk/plugin/bean/HashEntity;
    .registers 1

    iget-object p0, p0, Lcom/oplus/seedling/sdk/plugin/bean/ConfigBean;->hashStandard:Lcom/oplus/seedling/sdk/plugin/bean/HashEntity;

    return-object p0
.end method

.method public final getVersion()I
    .registers 1

    iget p0, p0, Lcom/oplus/seedling/sdk/plugin/bean/ConfigBean;->version:I

    return p0
.end method

.method public hashCode()I
    .registers 4

    iget v0, p0, Lcom/oplus/seedling/sdk/plugin/bean/ConfigBean;->version:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/oplus/seedling/sdk/plugin/bean/ConfigBean;->hashLite:Lcom/oplus/seedling/sdk/plugin/bean/HashEntity;

    const/4 v2, 0x0

    if-nez v1, :cond_f

    move v1, v2

    goto :goto_13

    :cond_f
    invoke-virtual {v1}, Lcom/oplus/seedling/sdk/plugin/bean/HashEntity;->hashCode()I

    move-result v1

    :goto_13
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/oplus/seedling/sdk/plugin/bean/ConfigBean;->hashStandard:Lcom/oplus/seedling/sdk/plugin/bean/HashEntity;

    if-nez p0, :cond_1b

    goto :goto_1f

    :cond_1b
    invoke-virtual {p0}, Lcom/oplus/seedling/sdk/plugin/bean/HashEntity;->hashCode()I

    move-result v2

    :goto_1f
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    iget v0, p0, Lcom/oplus/seedling/sdk/plugin/bean/ConfigBean;->version:I

    iget-object v1, p0, Lcom/oplus/seedling/sdk/plugin/bean/ConfigBean;->hashLite:Lcom/oplus/seedling/sdk/plugin/bean/HashEntity;

    iget-object p0, p0, Lcom/oplus/seedling/sdk/plugin/bean/ConfigBean;->hashStandard:Lcom/oplus/seedling/sdk/plugin/bean/HashEntity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ConfigBean(version="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", hashLite="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", hashStandard="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
