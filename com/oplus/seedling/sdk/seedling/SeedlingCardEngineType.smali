.class public final enum Lcom/oplus/seedling/sdk/seedling/SeedlingCardEngineType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oplus/seedling/sdk/seedling/SeedlingCardEngineType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oplus/seedling/sdk/seedling/SeedlingCardEngineType;

.field public static final enum ENGINE_TYPE_LITE:Lcom/oplus/seedling/sdk/seedling/SeedlingCardEngineType;

.field public static final enum ENGINE_TYPE_REMOTE_VIEW:Lcom/oplus/seedling/sdk/seedling/SeedlingCardEngineType;

.field public static final enum ENGINE_TYPE_STANDARD:Lcom/oplus/seedling/sdk/seedling/SeedlingCardEngineType;

.field public static final enum ENGINE_TYPE_UNKNOWN:Lcom/oplus/seedling/sdk/seedling/SeedlingCardEngineType;


# instance fields
.field private final typeName:Ljava/lang/String;

.field private final typeValue:I


# direct methods
.method private static final synthetic $values()[Lcom/oplus/seedling/sdk/seedling/SeedlingCardEngineType;
    .registers 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/oplus/seedling/sdk/seedling/SeedlingCardEngineType;

    sget-object v1, Lcom/oplus/seedling/sdk/seedling/SeedlingCardEngineType;->ENGINE_TYPE_UNKNOWN:Lcom/oplus/seedling/sdk/seedling/SeedlingCardEngineType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/seedling/sdk/seedling/SeedlingCardEngineType;->ENGINE_TYPE_STANDARD:Lcom/oplus/seedling/sdk/seedling/SeedlingCardEngineType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/seedling/sdk/seedling/SeedlingCardEngineType;->ENGINE_TYPE_LITE:Lcom/oplus/seedling/sdk/seedling/SeedlingCardEngineType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/seedling/sdk/seedling/SeedlingCardEngineType;->ENGINE_TYPE_REMOTE_VIEW:Lcom/oplus/seedling/sdk/seedling/SeedlingCardEngineType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 4

    new-instance v0, Lcom/oplus/seedling/sdk/seedling/SeedlingCardEngineType;

    const-string v1, "ENGINE_TYPE_UNKNOWN"

    const/4 v2, 0x0

    const-string v3, "engine_type_unknown"

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/oplus/seedling/sdk/seedling/SeedlingCardEngineType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/oplus/seedling/sdk/seedling/SeedlingCardEngineType;->ENGINE_TYPE_UNKNOWN:Lcom/oplus/seedling/sdk/seedling/SeedlingCardEngineType;

    new-instance v0, Lcom/oplus/seedling/sdk/seedling/SeedlingCardEngineType;

    const-string v1, "ENGINE_TYPE_STANDARD"

    const/4 v2, 0x1

    const-string v3, "engine_type_standard"

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/oplus/seedling/sdk/seedling/SeedlingCardEngineType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/oplus/seedling/sdk/seedling/SeedlingCardEngineType;->ENGINE_TYPE_STANDARD:Lcom/oplus/seedling/sdk/seedling/SeedlingCardEngineType;

    new-instance v0, Lcom/oplus/seedling/sdk/seedling/SeedlingCardEngineType;

    const-string v1, "ENGINE_TYPE_LITE"

    const/4 v2, 0x2

    const-string v3, "engine_type_lite"

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/oplus/seedling/sdk/seedling/SeedlingCardEngineType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/oplus/seedling/sdk/seedling/SeedlingCardEngineType;->ENGINE_TYPE_LITE:Lcom/oplus/seedling/sdk/seedling/SeedlingCardEngineType;

    new-instance v0, Lcom/oplus/seedling/sdk/seedling/SeedlingCardEngineType;

    const-string v1, "ENGINE_TYPE_REMOTE_VIEW"

    const/4 v2, 0x3

    const-string v3, "engine_type_remote_view"

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/oplus/seedling/sdk/seedling/SeedlingCardEngineType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/oplus/seedling/sdk/seedling/SeedlingCardEngineType;->ENGINE_TYPE_REMOTE_VIEW:Lcom/oplus/seedling/sdk/seedling/SeedlingCardEngineType;

    invoke-static {}, Lcom/oplus/seedling/sdk/seedling/SeedlingCardEngineType;->$values()[Lcom/oplus/seedling/sdk/seedling/SeedlingCardEngineType;

    move-result-object v0

    sput-object v0, Lcom/oplus/seedling/sdk/seedling/SeedlingCardEngineType;->$VALUES:[Lcom/oplus/seedling/sdk/seedling/SeedlingCardEngineType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingCardEngineType;->typeValue:I

    iput-object p4, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingCardEngineType;->typeName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oplus/seedling/sdk/seedling/SeedlingCardEngineType;
    .registers 2

    const-class v0, Lcom/oplus/seedling/sdk/seedling/SeedlingCardEngineType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oplus/seedling/sdk/seedling/SeedlingCardEngineType;

    return-object p0
.end method

.method public static values()[Lcom/oplus/seedling/sdk/seedling/SeedlingCardEngineType;
    .registers 1

    sget-object v0, Lcom/oplus/seedling/sdk/seedling/SeedlingCardEngineType;->$VALUES:[Lcom/oplus/seedling/sdk/seedling/SeedlingCardEngineType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oplus/seedling/sdk/seedling/SeedlingCardEngineType;

    return-object v0
.end method


# virtual methods
.method public final getTypeName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingCardEngineType;->typeName:Ljava/lang/String;

    return-object p0
.end method

.method public final getTypeValue()I
    .registers 1

    iget p0, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingCardEngineType;->typeValue:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    iget v0, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingCardEngineType;->typeValue:I

    iget-object p0, p0, Lcom/oplus/seedling/sdk/seedling/SeedlingCardEngineType;->typeName:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SeedlingCardType(typeValue="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", typeName=\'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\')"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
