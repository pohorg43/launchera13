.class public final Lcom/oplus/glcomponent/gl/texture/texturedata/GLOnlyTextureData;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData;


# instance fields
.field private final height:I

.field private isPrepared:Z

.field private final mFormat:I

.field private final mInternalFormat:I

.field private final mMipLevel:I

.field private final mType:I

.field private final width:I


# direct methods
.method public constructor <init>(IIIIII)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/oplus/glcomponent/gl/texture/texturedata/GLOnlyTextureData;->width:I

    iput p2, p0, Lcom/oplus/glcomponent/gl/texture/texturedata/GLOnlyTextureData;->height:I

    iput p3, p0, Lcom/oplus/glcomponent/gl/texture/texturedata/GLOnlyTextureData;->mMipLevel:I

    iput p4, p0, Lcom/oplus/glcomponent/gl/texture/texturedata/GLOnlyTextureData;->mInternalFormat:I

    iput p5, p0, Lcom/oplus/glcomponent/gl/texture/texturedata/GLOnlyTextureData;->mFormat:I

    iput p6, p0, Lcom/oplus/glcomponent/gl/texture/texturedata/GLOnlyTextureData;->mType:I

    return-void
.end method

.method public constructor <init>(IIILcom/oplus/glcomponent/gl/data/PixelFormat;)V
    .registers 13

    const-string v0, "format"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p4}, Lcom/oplus/glcomponent/gl/data/PixelFormat;->internalFormat()I

    move-result v5

    invoke-virtual {p4}, Lcom/oplus/glcomponent/gl/data/PixelFormat;->format()I

    move-result v6

    invoke-virtual {p4}, Lcom/oplus/glcomponent/gl/data/PixelFormat;->type()I

    move-result v7

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/oplus/glcomponent/gl/texture/texturedata/GLOnlyTextureData;-><init>(IIIIII)V

    return-void
.end method


# virtual methods
.method public consumeBitmap()Landroid/graphics/Bitmap;
    .registers 2

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "This TextureData implementation does not return a Bitmap"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public consumeCustomData(I)V
    .registers 11

    iget v1, p0, Lcom/oplus/glcomponent/gl/texture/texturedata/GLOnlyTextureData;->mMipLevel:I

    iget v2, p0, Lcom/oplus/glcomponent/gl/texture/texturedata/GLOnlyTextureData;->mInternalFormat:I

    invoke-virtual {p0}, Lcom/oplus/glcomponent/gl/texture/texturedata/GLOnlyTextureData;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/oplus/glcomponent/gl/texture/texturedata/GLOnlyTextureData;->getHeight()I

    move-result v4

    iget v6, p0, Lcom/oplus/glcomponent/gl/texture/texturedata/GLOnlyTextureData;->mFormat:I

    iget v7, p0, Lcom/oplus/glcomponent/gl/texture/texturedata/GLOnlyTextureData;->mType:I

    const/4 v5, 0x0

    const/4 v8, 0x0

    move v0, p1

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES30;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    return-void
.end method

.method public dispose()V
    .registers 1

    return-void
.end method

.method public disposeBitmap()Z
    .registers 2

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "This TextureData implementation does not return a Bitmap"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getHeight()I
    .registers 1

    iget p0, p0, Lcom/oplus/glcomponent/gl/texture/texturedata/GLOnlyTextureData;->height:I

    return p0
.end method

.method public getType()Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData$TextureDataType;
    .registers 1

    sget-object p0, Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData$TextureDataType;->CUSTOM:Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData$TextureDataType;

    return-object p0
.end method

.method public getWidth()I
    .registers 1

    iget p0, p0, Lcom/oplus/glcomponent/gl/texture/texturedata/GLOnlyTextureData;->width:I

    return p0
.end method

.method public isPrepared()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/glcomponent/gl/texture/texturedata/GLOnlyTextureData;->isPrepared:Z

    return p0
.end method

.method public prepare()V
    .registers 2

    invoke-virtual {p0}, Lcom/oplus/glcomponent/gl/texture/texturedata/GLOnlyTextureData;->isPrepared()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/glcomponent/gl/texture/texturedata/GLOnlyTextureData;->isPrepared:Z

    return-void

    :cond_a
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Already prepared"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public useMipMaps()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method
