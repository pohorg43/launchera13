.class public final Lcom/oplus/glcomponent/gl/texture/texturedata/FileTextureData;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData;


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private final mFilename:Ljava/lang/String;

.field private mHeight:I

.field private mIsPrepared:Z

.field private final mUseMipMaps:Z

.field private mWidth:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 4

    const-string v0, "mFilename"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/glcomponent/gl/texture/texturedata/FileTextureData;->mFilename:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/oplus/glcomponent/gl/texture/texturedata/FileTextureData;->mUseMipMaps:Z

    iget-object p1, p0, Lcom/oplus/glcomponent/gl/texture/texturedata/FileTextureData;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_24

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/oplus/glcomponent/gl/texture/texturedata/FileTextureData;->mWidth:I

    iget-object p1, p0, Lcom/oplus/glcomponent/gl/texture/texturedata/FileTextureData;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/oplus/glcomponent/gl/texture/texturedata/FileTextureData;->mHeight:I

    :cond_24
    return-void
.end method


# virtual methods
.method public consumeBitmap()Landroid/graphics/Bitmap;
    .registers 3

    iget-boolean v0, p0, Lcom/oplus/glcomponent/gl/texture/texturedata/FileTextureData;->mIsPrepared:Z

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/glcomponent/gl/texture/texturedata/FileTextureData;->mIsPrepared:Z

    iget-object v0, p0, Lcom/oplus/glcomponent/gl/texture/texturedata/FileTextureData;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oplus/glcomponent/gl/texture/texturedata/FileTextureData;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    :cond_10
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Call prepare() before calling getBitmap()"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
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

    const/4 p0, 0x1

    return p0
.end method

.method public getHeight()I
    .registers 1

    iget p0, p0, Lcom/oplus/glcomponent/gl/texture/texturedata/FileTextureData;->mHeight:I

    return p0
.end method

.method public getType()Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData$TextureDataType;
    .registers 1

    sget-object p0, Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData$TextureDataType;->BITMAP:Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData$TextureDataType;

    return-object p0
.end method

.method public getWidth()I
    .registers 1

    iget p0, p0, Lcom/oplus/glcomponent/gl/texture/texturedata/FileTextureData;->mWidth:I

    return p0
.end method

.method public isPrepared()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/glcomponent/gl/texture/texturedata/FileTextureData;->mIsPrepared:Z

    return p0
.end method

.method public prepare()V
    .registers 6

    iget-boolean v0, p0, Lcom/oplus/glcomponent/gl/texture/texturedata/FileTextureData;->mIsPrepared:Z

    if-nez v0, :cond_2d

    iget-object v0, p0, Lcom/oplus/glcomponent/gl/texture/texturedata/FileTextureData;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_29

    sget-object v0, Lcom/oplus/glcomponent/utils/FileUtil;->INSTANCE:Lcom/oplus/glcomponent/utils/FileUtil;

    iget-object v1, p0, Lcom/oplus/glcomponent/gl/texture/texturedata/FileTextureData;->mFilename:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/oplus/glcomponent/utils/FileUtil;->internalBitmap$default(Lcom/oplus/glcomponent/utils/FileUtil;Ljava/lang/String;ZILjava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/glcomponent/gl/texture/texturedata/FileTextureData;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/oplus/glcomponent/gl/texture/texturedata/FileTextureData;->mWidth:I

    iget-object v0, p0, Lcom/oplus/glcomponent/gl/texture/texturedata/FileTextureData;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/oplus/glcomponent/gl/texture/texturedata/FileTextureData;->mHeight:I

    :cond_29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/glcomponent/gl/texture/texturedata/FileTextureData;->mIsPrepared:Z

    return-void

    :cond_2d
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Already prepared"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public useMipMaps()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/glcomponent/gl/texture/texturedata/FileTextureData;->mUseMipMaps:Z

    return p0
.end method
