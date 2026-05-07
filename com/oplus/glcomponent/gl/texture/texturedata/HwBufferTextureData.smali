.class public final Lcom/oplus/glcomponent/gl/texture/texturedata/HwBufferTextureData;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData;


# instance fields
.field private final hwBuffer:Landroid/hardware/HardwareBuffer;


# direct methods
.method public constructor <init>(Landroid/hardware/HardwareBuffer;)V
    .registers 3

    const-string v0, "hwBuffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/glcomponent/gl/texture/texturedata/HwBufferTextureData;->hwBuffer:Landroid/hardware/HardwareBuffer;

    return-void
.end method

.method private final native nativeDispose()V
.end method

.method private final native nativeTexImage2D(Landroid/hardware/HardwareBuffer;)Z
.end method


# virtual methods
.method public consumeBitmap()Landroid/graphics/Bitmap;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public consumeCustomData(I)V
    .registers 3

    iget-object p1, p0, Lcom/oplus/glcomponent/gl/texture/texturedata/HwBufferTextureData;->hwBuffer:Landroid/hardware/HardwareBuffer;

    invoke-direct {p0, p1}, Lcom/oplus/glcomponent/gl/texture/texturedata/HwBufferTextureData;->nativeTexImage2D(Landroid/hardware/HardwareBuffer;)Z

    move-result p0

    if-eqz p0, :cond_9

    return-void

    :cond_9
    new-instance p0, Ljava/lang/RuntimeException;

    sget-object p1, Lcom/oplus/glcomponent/utils/Debugger;->INSTANCE:Lcom/oplus/glcomponent/utils/Debugger;

    invoke-virtual {p1}, Lcom/oplus/glcomponent/utils/Debugger;->checkGlError()Ljava/lang/String;

    move-result-object p1

    const-string v0, "tex image data error: "

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public dispose()V
    .registers 2

    iget-object v0, p0, Lcom/oplus/glcomponent/gl/texture/texturedata/HwBufferTextureData;->hwBuffer:Landroid/hardware/HardwareBuffer;

    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->isClosed()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/oplus/glcomponent/gl/texture/texturedata/HwBufferTextureData;->hwBuffer:Landroid/hardware/HardwareBuffer;

    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->close()V

    :cond_d
    invoke-direct {p0}, Lcom/oplus/glcomponent/gl/texture/texturedata/HwBufferTextureData;->nativeDispose()V

    return-void
.end method

.method public disposeBitmap()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getHeight()I
    .registers 1

    iget-object p0, p0, Lcom/oplus/glcomponent/gl/texture/texturedata/HwBufferTextureData;->hwBuffer:Landroid/hardware/HardwareBuffer;

    invoke-virtual {p0}, Landroid/hardware/HardwareBuffer;->getHeight()I

    move-result p0

    return p0
.end method

.method public getType()Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData$TextureDataType;
    .registers 1

    sget-object p0, Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData$TextureDataType;->CUSTOM:Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData$TextureDataType;

    return-object p0
.end method

.method public getWidth()I
    .registers 1

    iget-object p0, p0, Lcom/oplus/glcomponent/gl/texture/texturedata/HwBufferTextureData;->hwBuffer:Landroid/hardware/HardwareBuffer;

    invoke-virtual {p0}, Landroid/hardware/HardwareBuffer;->getWidth()I

    move-result p0

    return p0
.end method

.method public isPrepared()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public prepare()V
    .registers 1

    return-void
.end method

.method public useMipMaps()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method
