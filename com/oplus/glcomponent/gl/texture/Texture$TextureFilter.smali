.class public final enum Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/glcomponent/gl/texture/Texture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TextureFilter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;

.field public static final enum Linear:Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;

.field public static final enum MipMap:Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;

.field public static final enum MipMapLinearLinear:Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;

.field public static final enum MipMapLinearNearest:Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;

.field public static final enum MipMapNearestLinear:Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;

.field public static final enum MipMapNearestNearest:Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;

.field public static final enum Nearest:Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;


# instance fields
.field private final gLEnum:I


# direct methods
.method private static final synthetic $values()[Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;
    .registers 3

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;

    sget-object v1, Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;->Nearest:Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;->Linear:Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;->MipMap:Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;->MipMapNearestNearest:Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;->MipMapLinearNearest:Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;->MipMapNearestLinear:Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;->MipMapLinearLinear:Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 5

    new-instance v0, Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;

    const-string v1, "Nearest"

    const/4 v2, 0x0

    const/16 v3, 0x2600

    invoke-direct {v0, v1, v2, v3}, Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;->Nearest:Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;

    new-instance v0, Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;

    const-string v1, "Linear"

    const/4 v2, 0x1

    const/16 v3, 0x2601

    invoke-direct {v0, v1, v2, v3}, Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;->Linear:Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;

    new-instance v0, Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;

    const-string v1, "MipMap"

    const/4 v2, 0x2

    const/16 v3, 0x2703

    invoke-direct {v0, v1, v2, v3}, Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;->MipMap:Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;

    new-instance v0, Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;

    const-string v1, "MipMapNearestNearest"

    const/4 v2, 0x3

    const/16 v4, 0x2700

    invoke-direct {v0, v1, v2, v4}, Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;->MipMapNearestNearest:Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;

    new-instance v0, Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;

    const-string v1, "MipMapLinearNearest"

    const/4 v2, 0x4

    const/16 v4, 0x2701

    invoke-direct {v0, v1, v2, v4}, Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;->MipMapLinearNearest:Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;

    new-instance v0, Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;

    const-string v1, "MipMapNearestLinear"

    const/4 v2, 0x5

    const/16 v4, 0x2702

    invoke-direct {v0, v1, v2, v4}, Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;->MipMapNearestLinear:Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;

    new-instance v0, Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;

    const-string v1, "MipMapLinearLinear"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;->MipMapLinearLinear:Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;

    invoke-static {}, Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;->$values()[Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;

    move-result-object v0

    sput-object v0, Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;->$VALUES:[Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;->gLEnum:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;
    .registers 2

    const-class v0, Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;

    return-object p0
.end method

.method public static values()[Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;
    .registers 1

    sget-object v0, Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;->$VALUES:[Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;

    return-object v0
.end method


# virtual methods
.method public final getGLEnum()I
    .registers 1

    iget p0, p0, Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;->gLEnum:I

    return p0
.end method

.method public final isMipMap()Z
    .registers 2

    iget p0, p0, Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;->gLEnum:I

    const/16 v0, 0x2600

    if-eq p0, v0, :cond_c

    const/16 v0, 0x2601

    if-eq p0, v0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method
