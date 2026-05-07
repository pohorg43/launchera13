.class public final enum Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData$TextureDataType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TextureDataType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData$TextureDataType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData$TextureDataType;

.field public static final enum BITMAP:Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData$TextureDataType;

.field public static final enum CUSTOM:Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData$TextureDataType;


# direct methods
.method private static final synthetic $values()[Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData$TextureDataType;
    .registers 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData$TextureDataType;

    sget-object v1, Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData$TextureDataType;->BITMAP:Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData$TextureDataType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData$TextureDataType;->CUSTOM:Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData$TextureDataType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData$TextureDataType;

    const-string v1, "BITMAP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData$TextureDataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData$TextureDataType;->BITMAP:Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData$TextureDataType;

    new-instance v0, Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData$TextureDataType;

    const-string v1, "CUSTOM"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData$TextureDataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData$TextureDataType;->CUSTOM:Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData$TextureDataType;

    invoke-static {}, Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData$TextureDataType;->$values()[Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData$TextureDataType;

    move-result-object v0

    sput-object v0, Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData$TextureDataType;->$VALUES:[Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData$TextureDataType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData$TextureDataType;
    .registers 2

    const-class v0, Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData$TextureDataType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData$TextureDataType;

    return-object p0
.end method

.method public static values()[Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData$TextureDataType;
    .registers 1

    sget-object v0, Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData$TextureDataType;->$VALUES:[Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData$TextureDataType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData$TextureDataType;

    return-object v0
.end method
