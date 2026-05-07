.class public final enum Lcom/oplus/seedling/sdk/entity/EngineType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oplus/seedling/sdk/entity/EngineType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oplus/seedling/sdk/entity/EngineType;

.field public static final enum LITE:Lcom/oplus/seedling/sdk/entity/EngineType;

.field public static final enum STANDARD:Lcom/oplus/seedling/sdk/entity/EngineType;


# direct methods
.method private static final synthetic $values()[Lcom/oplus/seedling/sdk/entity/EngineType;
    .registers 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/oplus/seedling/sdk/entity/EngineType;

    sget-object v1, Lcom/oplus/seedling/sdk/entity/EngineType;->STANDARD:Lcom/oplus/seedling/sdk/entity/EngineType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/seedling/sdk/entity/EngineType;->LITE:Lcom/oplus/seedling/sdk/entity/EngineType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/oplus/seedling/sdk/entity/EngineType;

    const-string v1, "STANDARD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/oplus/seedling/sdk/entity/EngineType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/seedling/sdk/entity/EngineType;->STANDARD:Lcom/oplus/seedling/sdk/entity/EngineType;

    new-instance v0, Lcom/oplus/seedling/sdk/entity/EngineType;

    const-string v1, "LITE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/oplus/seedling/sdk/entity/EngineType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/seedling/sdk/entity/EngineType;->LITE:Lcom/oplus/seedling/sdk/entity/EngineType;

    invoke-static {}, Lcom/oplus/seedling/sdk/entity/EngineType;->$values()[Lcom/oplus/seedling/sdk/entity/EngineType;

    move-result-object v0

    sput-object v0, Lcom/oplus/seedling/sdk/entity/EngineType;->$VALUES:[Lcom/oplus/seedling/sdk/entity/EngineType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oplus/seedling/sdk/entity/EngineType;
    .registers 2

    const-class v0, Lcom/oplus/seedling/sdk/entity/EngineType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oplus/seedling/sdk/entity/EngineType;

    return-object p0
.end method

.method public static values()[Lcom/oplus/seedling/sdk/entity/EngineType;
    .registers 1

    sget-object v0, Lcom/oplus/seedling/sdk/entity/EngineType;->$VALUES:[Lcom/oplus/seedling/sdk/entity/EngineType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oplus/seedling/sdk/entity/EngineType;

    return-object v0
.end method
