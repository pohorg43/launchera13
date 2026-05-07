.class public final Lcom/oplus/glcomponent/gl/texture/texturedata/BitmapTextureData;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData;


# instance fields
.field private final mBitmap:Landroid/graphics/Bitmap;

.field private final mDisposeEnable:Z

.field private final mUseMipMaps:Z


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;ZZ)V
    .registers 5

    const-string v0, "mBitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/glcomponent/gl/texture/texturedata/BitmapTextureData;->mBitmap:Landroid/graphics/Bitmap;

    iput-boolean p2, p0, Lcom/oplus/glcomponent/gl/texture/texturedata/BitmapTextureData;->mUseMipMaps:Z

    iput-boolean p3, p0, Lcom/oplus/glcomponent/gl/texture/texturedata/BitmapTextureData;->mDisposeEnable:Z

    return-void
.end method


# virtual methods
.method public consumeBitmap()Landroid/graphics/Bitmap;
    .registers 1

    iget-object p0, p0, Lcom/oplus/glcomponent/gl/texture/texturedata/BitmapTextureData;->mBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public consumeCustomData(I)V
    .registers 2

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "This TextureData implementation does not upload data itself"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public dispose()V
    .registers 1

    return-void
.end method

.method public disposeBitmap()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/glcomponent/gl/texture/texturedata/BitmapTextureData;->mDisposeEnable:Z

    return p0
.end method

.method public getHeight()I
    .registers 1

    iget-object p0, p0, Lcom/oplus/glcomponent/gl/texture/texturedata/BitmapTextureData;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    return p0
.end method

.method public getType()Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData$TextureDataType;
    .registers 1

    sget-object p0, Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData$TextureDataType;->BITMAP:Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData$TextureDataType;

    return-object p0
.end method

.method public getWidth()I
    .registers 1

    iget-object p0, p0, Lcom/oplus/glcomponent/gl/texture/texturedata/BitmapTextureData;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    return p0
.end method

.method public isPrepared()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public prepare()V
    .registers 2

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "prepare() must not be called on a BitmapTextureData instance as it is already prepared."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public useMipMaps()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/glcomponent/gl/texture/texturedata/BitmapTextureData;->mUseMipMaps:Z

    return p0
.end method
