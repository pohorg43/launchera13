.class public final Lcom/oplus/glcomponent/gl/texture/GLTexture$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/glcomponent/gl/texture/GLTexture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/oplus/glcomponent/gl/texture/GLTexture$Companion;-><init>()V

    return-void
.end method

.method private final uploadImageData(ILcom/oplus/glcomponent/gl/texture/texturedata/TextureData;I)V
    .registers 7

    if-nez p2, :cond_3

    return-void

    :cond_3
    invoke-interface {p2}, Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData;->isPrepared()Z

    move-result p0

    if-nez p0, :cond_c

    invoke-interface {p2}, Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData;->prepare()V

    :cond_c
    invoke-interface {p2}, Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData;->getType()Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData$TextureDataType;

    move-result-object p0

    sget-object v0, Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData$TextureDataType;->CUSTOM:Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData$TextureDataType;

    if-ne p0, v0, :cond_18

    invoke-interface {p2, p1}, Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData;->consumeCustomData(I)V

    return-void

    :cond_18
    invoke-interface {p2}, Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData;->consumeBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-interface {p2}, Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData;->disposeBitmap()Z

    move-result v0

    const/16 v1, 0xcf5

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/opengl/GLES30;->glPixelStorei(II)V

    const/4 v1, 0x0

    invoke-static {p1, p3, p0, v1}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    invoke-interface {p2}, Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData;->useMipMaps()Z

    move-result p1

    if-eqz p1, :cond_35

    const/16 p1, 0xde1

    invoke-static {p1}, Landroid/opengl/GLES30;->glGenerateMipmap(I)V

    :cond_35
    if-eqz v0, :cond_3d

    if-nez p0, :cond_3a

    goto :goto_3d

    :cond_3a
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_3d
    :goto_3d
    return-void
.end method


# virtual methods
.method public final uploadImageData(ILcom/oplus/glcomponent/gl/texture/texturedata/TextureData;)V
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oplus/glcomponent/gl/texture/GLTexture$Companion;->uploadImageData(ILcom/oplus/glcomponent/gl/texture/texturedata/TextureData;I)V

    return-void
.end method
