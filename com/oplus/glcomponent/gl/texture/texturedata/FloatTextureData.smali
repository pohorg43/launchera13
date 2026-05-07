.class public final Lcom/oplus/glcomponent/gl/texture/texturedata/FloatTextureData;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData;


# instance fields
.field private final height:I

.field private isPrepared:Z

.field private mBuffer:Ljava/nio/FloatBuffer;

.field private final mFormat:Lcom/oplus/glcomponent/gl/data/PixelFormat;

.field private final width:I


# direct methods
.method public constructor <init>(Lcom/oplus/glcomponent/gl/data/PixelFormat;II)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_c

    iput-object p1, p0, Lcom/oplus/glcomponent/gl/texture/texturedata/FloatTextureData;->mFormat:Lcom/oplus/glcomponent/gl/data/PixelFormat;

    iput p2, p0, Lcom/oplus/glcomponent/gl/texture/texturedata/FloatTextureData;->width:I

    iput p3, p0, Lcom/oplus/glcomponent/gl/texture/texturedata/FloatTextureData;->height:I

    return-void

    :cond_c
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "PixelFormat cannot be null."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
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
    .registers 12

    const v0, 0x813c

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/opengl/GLES30;->glTexParameteri(III)V

    const v0, 0x813d

    invoke-static {p1, v0, v1}, Landroid/opengl/GLES30;->glTexParameteri(III)V

    iget-object v0, p0, Lcom/oplus/glcomponent/gl/texture/texturedata/FloatTextureData;->mFormat:Lcom/oplus/glcomponent/gl/data/PixelFormat;

    invoke-virtual {v0}, Lcom/oplus/glcomponent/gl/data/PixelFormat;->internalFormat()I

    move-result v3

    invoke-virtual {p0}, Lcom/oplus/glcomponent/gl/texture/texturedata/FloatTextureData;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/oplus/glcomponent/gl/texture/texturedata/FloatTextureData;->getHeight()I

    move-result v5

    iget-object v0, p0, Lcom/oplus/glcomponent/gl/texture/texturedata/FloatTextureData;->mFormat:Lcom/oplus/glcomponent/gl/data/PixelFormat;

    invoke-virtual {v0}, Lcom/oplus/glcomponent/gl/data/PixelFormat;->format()I

    move-result v7

    iget-object v0, p0, Lcom/oplus/glcomponent/gl/texture/texturedata/FloatTextureData;->mFormat:Lcom/oplus/glcomponent/gl/data/PixelFormat;

    invoke-virtual {v0}, Lcom/oplus/glcomponent/gl/data/PixelFormat;->type()I

    move-result v8

    iget-object v9, p0, Lcom/oplus/glcomponent/gl/texture/texturedata/FloatTextureData;->mBuffer:Ljava/nio/FloatBuffer;

    const/4 v2, 0x0

    const/4 v6, 0x0

    move v1, p1

    invoke-static/range {v1 .. v9}, Landroid/opengl/GLES30;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    return-void
.end method

.method public dispose()V
    .registers 2

    iget-object v0, p0, Lcom/oplus/glcomponent/gl/texture/texturedata/FloatTextureData;->mBuffer:Ljava/nio/FloatBuffer;

    if-nez v0, :cond_5

    goto :goto_8

    :cond_5
    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    :goto_8
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/glcomponent/gl/texture/texturedata/FloatTextureData;->mBuffer:Ljava/nio/FloatBuffer;

    invoke-static {}, Ljava/lang/System;->gc()V

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

    iget p0, p0, Lcom/oplus/glcomponent/gl/texture/texturedata/FloatTextureData;->height:I

    return p0
.end method

.method public getType()Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData$TextureDataType;
    .registers 1

    sget-object p0, Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData$TextureDataType;->CUSTOM:Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData$TextureDataType;

    return-object p0
.end method

.method public getWidth()I
    .registers 1

    iget p0, p0, Lcom/oplus/glcomponent/gl/texture/texturedata/FloatTextureData;->width:I

    return p0
.end method

.method public isPrepared()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/glcomponent/gl/texture/texturedata/FloatTextureData;->isPrepared:Z

    return p0
.end method

.method public prepare()V
    .registers 3

    invoke-virtual {p0}, Lcom/oplus/glcomponent/gl/texture/texturedata/FloatTextureData;->isPrepared()Z

    move-result v0

    if-nez v0, :cond_30

    invoke-virtual {p0}, Lcom/oplus/glcomponent/gl/texture/texturedata/FloatTextureData;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/oplus/glcomponent/gl/texture/texturedata/FloatTextureData;->getHeight()I

    move-result v1

    mul-int/2addr v1, v0

    iget-object v0, p0, Lcom/oplus/glcomponent/gl/texture/texturedata/FloatTextureData;->mFormat:Lcom/oplus/glcomponent/gl/data/PixelFormat;

    invoke-virtual {v0}, Lcom/oplus/glcomponent/gl/data/PixelFormat;->bitsPerPixel()I

    move-result v0

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/glcomponent/gl/texture/texturedata/FloatTextureData;->mBuffer:Ljava/nio/FloatBuffer;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/glcomponent/gl/texture/texturedata/FloatTextureData;->isPrepared:Z

    invoke-static {}, Ljava/lang/System;->gc()V

    return-void

    :cond_30
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
