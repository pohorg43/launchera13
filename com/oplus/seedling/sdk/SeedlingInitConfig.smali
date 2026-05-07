.class public final Lcom/oplus/seedling/sdk/SeedlingInitConfig;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/seedling/sdk/SeedlingInitConfig$Builder;
    }
.end annotation


# instance fields
.field private builder:Lcom/oplus/seedling/sdk/SeedlingInitConfig$Builder;

.field private final engineType:Lcom/oplus/seedling/sdk/entity/EngineType;

.field private final entranceAuthorityName:Ljava/lang/String;

.field private final shouldNotifyCardServiceToInit:Z

.field private supportInteruptCreatingSeedlingCard:Z


# direct methods
.method public constructor <init>(Lcom/oplus/seedling/sdk/SeedlingInitConfig$Builder;)V
    .registers 3

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/seedling/sdk/SeedlingInitConfig;->builder:Lcom/oplus/seedling/sdk/SeedlingInitConfig$Builder;

    invoke-virtual {p1}, Lcom/oplus/seedling/sdk/SeedlingInitConfig$Builder;->getEngineType$pantanal_client_release()Lcom/oplus/seedling/sdk/entity/EngineType;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/seedling/sdk/SeedlingInitConfig;->engineType:Lcom/oplus/seedling/sdk/entity/EngineType;

    iget-object p1, p0, Lcom/oplus/seedling/sdk/SeedlingInitConfig;->builder:Lcom/oplus/seedling/sdk/SeedlingInitConfig$Builder;

    invoke-virtual {p1}, Lcom/oplus/seedling/sdk/SeedlingInitConfig$Builder;->getShouldNotifyCardServiceToInit$pantanal_client_release()Z

    move-result p1

    iput-boolean p1, p0, Lcom/oplus/seedling/sdk/SeedlingInitConfig;->shouldNotifyCardServiceToInit:Z

    iget-object p1, p0, Lcom/oplus/seedling/sdk/SeedlingInitConfig;->builder:Lcom/oplus/seedling/sdk/SeedlingInitConfig$Builder;

    invoke-virtual {p1}, Lcom/oplus/seedling/sdk/SeedlingInitConfig$Builder;->getEntranceAuthorityName$pantanal_client_release()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/seedling/sdk/SeedlingInitConfig;->entranceAuthorityName:Ljava/lang/String;

    iget-object p1, p0, Lcom/oplus/seedling/sdk/SeedlingInitConfig;->builder:Lcom/oplus/seedling/sdk/SeedlingInitConfig$Builder;

    invoke-virtual {p1}, Lcom/oplus/seedling/sdk/SeedlingInitConfig$Builder;->getSupportInteruptCreatingSeedlingCard$pantanal_client_release()Z

    move-result p1

    iput-boolean p1, p0, Lcom/oplus/seedling/sdk/SeedlingInitConfig;->supportInteruptCreatingSeedlingCard:Z

    return-void
.end method

.method public static synthetic copy$default(Lcom/oplus/seedling/sdk/SeedlingInitConfig;Lcom/oplus/seedling/sdk/SeedlingInitConfig$Builder;ILjava/lang/Object;)Lcom/oplus/seedling/sdk/SeedlingInitConfig;
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    iget-object p1, p0, Lcom/oplus/seedling/sdk/SeedlingInitConfig;->builder:Lcom/oplus/seedling/sdk/SeedlingInitConfig$Builder;

    :cond_6
    invoke-virtual {p0, p1}, Lcom/oplus/seedling/sdk/SeedlingInitConfig;->copy(Lcom/oplus/seedling/sdk/SeedlingInitConfig$Builder;)Lcom/oplus/seedling/sdk/SeedlingInitConfig;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/oplus/seedling/sdk/SeedlingInitConfig$Builder;
    .registers 1

    iget-object p0, p0, Lcom/oplus/seedling/sdk/SeedlingInitConfig;->builder:Lcom/oplus/seedling/sdk/SeedlingInitConfig$Builder;

    return-object p0
.end method

.method public final copy(Lcom/oplus/seedling/sdk/SeedlingInitConfig$Builder;)Lcom/oplus/seedling/sdk/SeedlingInitConfig;
    .registers 2

    const-string p0, "builder"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/oplus/seedling/sdk/SeedlingInitConfig;

    invoke-direct {p0, p1}, Lcom/oplus/seedling/sdk/SeedlingInitConfig;-><init>(Lcom/oplus/seedling/sdk/SeedlingInitConfig$Builder;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/oplus/seedling/sdk/SeedlingInitConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/oplus/seedling/sdk/SeedlingInitConfig;

    iget-object p0, p0, Lcom/oplus/seedling/sdk/SeedlingInitConfig;->builder:Lcom/oplus/seedling/sdk/SeedlingInitConfig$Builder;

    iget-object p1, p1, Lcom/oplus/seedling/sdk/SeedlingInitConfig;->builder:Lcom/oplus/seedling/sdk/SeedlingInitConfig$Builder;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_17

    return v2

    :cond_17
    return v0
.end method

.method public final getBuilder()Lcom/oplus/seedling/sdk/SeedlingInitConfig$Builder;
    .registers 1

    iget-object p0, p0, Lcom/oplus/seedling/sdk/SeedlingInitConfig;->builder:Lcom/oplus/seedling/sdk/SeedlingInitConfig$Builder;

    return-object p0
.end method

.method public final getEngineType()Lcom/oplus/seedling/sdk/entity/EngineType;
    .registers 1

    iget-object p0, p0, Lcom/oplus/seedling/sdk/SeedlingInitConfig;->engineType:Lcom/oplus/seedling/sdk/entity/EngineType;

    return-object p0
.end method

.method public final getEntranceAuthorityName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/seedling/sdk/SeedlingInitConfig;->entranceAuthorityName:Ljava/lang/String;

    return-object p0
.end method

.method public final getShouldNotifyCardServiceToInit()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/seedling/sdk/SeedlingInitConfig;->shouldNotifyCardServiceToInit:Z

    return p0
.end method

.method public final getSupportInteruptCreatingSeedlingCard()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/seedling/sdk/SeedlingInitConfig;->supportInteruptCreatingSeedlingCard:Z

    return p0
.end method

.method public hashCode()I
    .registers 1

    iget-object p0, p0, Lcom/oplus/seedling/sdk/SeedlingInitConfig;->builder:Lcom/oplus/seedling/sdk/SeedlingInitConfig$Builder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public final setBuilder(Lcom/oplus/seedling/sdk/SeedlingInitConfig$Builder;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/seedling/sdk/SeedlingInitConfig;->builder:Lcom/oplus/seedling/sdk/SeedlingInitConfig$Builder;

    return-void
.end method

.method public final setSupportInteruptCreatingSeedlingCard(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/seedling/sdk/SeedlingInitConfig;->supportInteruptCreatingSeedlingCard:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    iget-object v0, p0, Lcom/oplus/seedling/sdk/SeedlingInitConfig;->engineType:Lcom/oplus/seedling/sdk/entity/EngineType;

    iget-boolean v1, p0, Lcom/oplus/seedling/sdk/SeedlingInitConfig;->shouldNotifyCardServiceToInit:Z

    iget-object v2, p0, Lcom/oplus/seedling/sdk/SeedlingInitConfig;->entranceAuthorityName:Ljava/lang/String;

    iget-boolean p0, p0, Lcom/oplus/seedling/sdk/SeedlingInitConfig;->supportInteruptCreatingSeedlingCard:Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SeedlingInitConfig(engineType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", shouldNotifyCardServiceToInit="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", entranceAuthorityName=\'"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\', supportStopCreatingSeedlingCard="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
