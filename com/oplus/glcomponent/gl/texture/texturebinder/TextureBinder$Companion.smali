.class public final Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureBinder$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureBinder;
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

    invoke-direct {p0}, Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureBinder$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$getMaxTextureUnits(Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureBinder$Companion;)I
    .registers 1

    invoke-direct {p0}, Lcom/oplus/glcomponent/gl/texture/texturebinder/TextureBinder$Companion;->getMaxTextureUnits()I

    move-result p0

    return p0
.end method

.method private final getMaxTextureUnits()I
    .registers 2

    const/16 p0, 0x40

    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object p0

    const v0, 0x8872

    invoke-static {v0, p0}, Landroid/opengl/GLES20;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/nio/IntBuffer;->get(I)I

    move-result p0

    return p0
.end method
