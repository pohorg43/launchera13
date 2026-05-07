.class public final enum Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/glcomponent/gl/texture/Texture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TextureWrap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;

.field public static final enum ClampToEdge:Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;

.field public static final enum MirroredRepeat:Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;

.field public static final enum Repeat:Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;


# instance fields
.field private final gLEnum:I


# direct methods
.method private static final synthetic $values()[Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;
    .registers 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;

    sget-object v1, Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;->MirroredRepeat:Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;->ClampToEdge:Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;->Repeat:Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 4

    new-instance v0, Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;

    const-string v1, "MirroredRepeat"

    const/4 v2, 0x0

    const v3, 0x8370

    invoke-direct {v0, v1, v2, v3}, Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;->MirroredRepeat:Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;

    new-instance v0, Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;

    const-string v1, "ClampToEdge"

    const/4 v2, 0x1

    const v3, 0x812f

    invoke-direct {v0, v1, v2, v3}, Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;->ClampToEdge:Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;

    new-instance v0, Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;

    const-string v1, "Repeat"

    const/4 v2, 0x2

    const/16 v3, 0x2901

    invoke-direct {v0, v1, v2, v3}, Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;->Repeat:Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;

    invoke-static {}, Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;->$values()[Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;

    move-result-object v0

    sput-object v0, Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;->$VALUES:[Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;

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

    iput p3, p0, Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;->gLEnum:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;
    .registers 2

    const-class v0, Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;

    return-object p0
.end method

.method public static values()[Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;
    .registers 1

    sget-object v0, Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;->$VALUES:[Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;

    return-object v0
.end method


# virtual methods
.method public final getGLEnum()I
    .registers 1

    iget p0, p0, Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;->gLEnum:I

    return p0
.end method
