.class public final Lcom/oplus/glcomponent/gl/texture/Texture;
.super Lcom/oplus/glcomponent/gl/texture/GLTexture;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;,
        Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;
    }
.end annotation


# instance fields
.field private mData:Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData;


# direct methods
.method public constructor <init>(IILcom/oplus/glcomponent/gl/texture/texturedata/TextureData;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/oplus/glcomponent/gl/texture/GLTexture;-><init>(II)V

    invoke-direct {p0, p3}, Lcom/oplus/glcomponent/gl/texture/Texture;->load(Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData;)V

    return-void
.end method

.method public constructor <init>(ILcom/oplus/glcomponent/gl/texture/texturedata/TextureData;)V
    .registers 4

    sget-object v0, Lcom/oplus/glcomponent/utils/GLTool;->INSTANCE:Lcom/oplus/glcomponent/utils/GLTool;

    invoke-virtual {v0}, Lcom/oplus/glcomponent/utils/GLTool;->glGenTexture()I

    move-result v0

    invoke-direct {p0, p1, v0, p2}, Lcom/oplus/glcomponent/gl/texture/Texture;-><init>(IILcom/oplus/glcomponent/gl/texture/texturedata/TextureData;)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .registers 4

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/oplus/glcomponent/gl/texture/texturedata/BitmapTextureData;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, v1}, Lcom/oplus/glcomponent/gl/texture/texturedata/BitmapTextureData;-><init>(Landroid/graphics/Bitmap;ZZ)V

    invoke-direct {p0, v0}, Lcom/oplus/glcomponent/gl/texture/Texture;-><init>(Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData;)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;Z)V
    .registers 5

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/oplus/glcomponent/gl/texture/texturedata/BitmapTextureData;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/oplus/glcomponent/gl/texture/texturedata/BitmapTextureData;-><init>(Landroid/graphics/Bitmap;ZZ)V

    invoke-direct {p0, v0}, Lcom/oplus/glcomponent/gl/texture/Texture;-><init>(Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData;)V

    return-void
.end method

.method public constructor <init>(Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData;)V
    .registers 4

    sget-object v0, Lcom/oplus/glcomponent/utils/GLTool;->INSTANCE:Lcom/oplus/glcomponent/utils/GLTool;

    invoke-virtual {v0}, Lcom/oplus/glcomponent/utils/GLTool;->glGenTexture()I

    move-result v0

    const/16 v1, 0xde1

    invoke-direct {p0, v1, v0, p1}, Lcom/oplus/glcomponent/gl/texture/Texture;-><init>(IILcom/oplus/glcomponent/gl/texture/texturedata/TextureData;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 5
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "filename"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/oplus/glcomponent/gl/texture/Texture;-><init>(Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 4
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "filename"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData$Factory;->INSTANCE:Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData$Factory;

    invoke-virtual {v0, p1, p2}, Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData$Factory;->loadFromFile(Ljava/lang/String;Z)Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oplus/glcomponent/gl/texture/Texture;-><init>(Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x0

    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/oplus/glcomponent/gl/texture/Texture;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method private final load(Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData;)V
    .registers 5

    iput-object p1, p0, Lcom/oplus/glcomponent/gl/texture/Texture;->mData:Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_8

    :cond_6
    move v2, v1

    goto :goto_f

    :cond_8
    invoke-interface {p1}, Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData;->isPrepared()Z

    move-result v2

    if-nez v2, :cond_6

    move v2, v0

    :goto_f
    if-eqz v2, :cond_14

    invoke-interface {p1}, Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData;->prepare()V

    :cond_14
    invoke-virtual {p0}, Lcom/oplus/glcomponent/gl/texture/GLTexture;->bind()V

    const/16 v2, 0xde1

    invoke-static {v2, p1}, Lcom/oplus/glcomponent/gl/texture/GLTexture;->uploadImageData(ILcom/oplus/glcomponent/gl/texture/texturedata/TextureData;)V

    invoke-virtual {p0}, Lcom/oplus/glcomponent/gl/texture/GLTexture;->getMMinFilter()Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;

    move-result-object p1

    invoke-virtual {p0}, Lcom/oplus/glcomponent/gl/texture/GLTexture;->getMMagFilter()Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;

    move-result-object v2

    invoke-virtual {p0, p1, v2, v0}, Lcom/oplus/glcomponent/gl/texture/GLTexture;->unsafeSetFilter(Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;Z)V

    invoke-virtual {p0}, Lcom/oplus/glcomponent/gl/texture/GLTexture;->getMUWrap()Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;

    move-result-object p1

    invoke-virtual {p0}, Lcom/oplus/glcomponent/gl/texture/GLTexture;->getMVWrap()Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;

    move-result-object v2

    invoke-virtual {p0, p1, v2, v0}, Lcom/oplus/glcomponent/gl/texture/GLTexture;->unsafeSetWrap(Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;Z)V

    invoke-virtual {p0}, Lcom/oplus/glcomponent/gl/texture/GLTexture;->getMTarget()I

    move-result p0

    invoke-static {p0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 2

    iget-object v0, p0, Lcom/oplus/glcomponent/gl/texture/Texture;->mData:Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData;

    if-nez v0, :cond_5

    goto :goto_8

    :cond_5
    invoke-interface {v0}, Lcom/oplus/glcomponent/gl/utils/Disposable;->dispose()V

    :goto_8
    invoke-virtual {p0}, Lcom/oplus/glcomponent/gl/texture/GLTexture;->delete()V

    return-void
.end method

.method public final draw(Landroid/graphics/Bitmap;II)V
    .registers 5

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/glcomponent/gl/texture/GLTexture;->bind()V

    invoke-virtual {p0}, Lcom/oplus/glcomponent/gl/texture/GLTexture;->getMTarget()I

    move-result p0

    const/4 v0, 0x0

    invoke-static {p0, v0, p2, p3, p1}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;)V

    return-void
.end method

.method public getDepth()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getHeight()I
    .registers 1

    iget-object p0, p0, Lcom/oplus/glcomponent/gl/texture/Texture;->mData:Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    goto :goto_a

    :cond_6
    invoke-interface {p0}, Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData;->getHeight()I

    move-result p0

    :goto_a
    return p0
.end method

.method public final getTextureData()Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData;
    .registers 1

    iget-object p0, p0, Lcom/oplus/glcomponent/gl/texture/Texture;->mData:Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData;

    return-object p0
.end method

.method public getWidth()I
    .registers 1

    iget-object p0, p0, Lcom/oplus/glcomponent/gl/texture/Texture;->mData:Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    goto :goto_a

    :cond_6
    invoke-interface {p0}, Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData;->getWidth()I

    move-result p0

    :goto_a
    return p0
.end method

.method public reload()V
    .registers 2

    sget-object v0, Lcom/oplus/glcomponent/utils/GLTool;->INSTANCE:Lcom/oplus/glcomponent/utils/GLTool;

    invoke-virtual {v0}, Lcom/oplus/glcomponent/utils/GLTool;->glGenTexture()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oplus/glcomponent/gl/texture/GLTexture;->setHandle(I)V

    iget-object v0, p0, Lcom/oplus/glcomponent/gl/texture/Texture;->mData:Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData;

    invoke-direct {p0, v0}, Lcom/oplus/glcomponent/gl/texture/Texture;->load(Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/oplus/glcomponent/gl/texture/Texture;->mData:Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData;

    instance-of v1, v0, Lcom/oplus/glcomponent/gl/texture/texturedata/FileTextureData;

    if-eqz v1, :cond_b

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_f

    :cond_b
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_f
    return-object p0
.end method
