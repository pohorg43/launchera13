.class public final Lcom/oplus/glcomponent/gl/framebuffer/DualFrameBuffer;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/glcomponent/gl/utils/Disposable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/glcomponent/gl/framebuffer/DualFrameBuffer$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/glcomponent/gl/framebuffer/DualFrameBuffer$Companion;

.field private static final TAG:Ljava/lang/String; = "DualFrameBuffer"


# instance fields
.field private final height:I

.field private final mFormat:Lcom/oplus/glcomponent/gl/data/PixelFormat;

.field private final mHasDepth:Z

.field private final mTargets:[Lcom/oplus/glcomponent/gl/framebuffer/FrameBuffer;

.field private final width:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/glcomponent/gl/framebuffer/DualFrameBuffer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/glcomponent/gl/framebuffer/DualFrameBuffer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/glcomponent/gl/framebuffer/DualFrameBuffer;->Companion:Lcom/oplus/glcomponent/gl/framebuffer/DualFrameBuffer$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/oplus/glcomponent/gl/data/PixelFormat;IIZ)V
    .registers 10

    const-string v0, "mFormat"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/glcomponent/gl/framebuffer/DualFrameBuffer;->mFormat:Lcom/oplus/glcomponent/gl/data/PixelFormat;

    const/4 p1, 0x2

    new-array p1, p1, [Lcom/oplus/glcomponent/gl/framebuffer/FrameBuffer;

    iput-object p1, p0, Lcom/oplus/glcomponent/gl/framebuffer/DualFrameBuffer;->mTargets:[Lcom/oplus/glcomponent/gl/framebuffer/FrameBuffer;

    const-string p1, "DualFrameBuffer"

    const/16 v0, 0x1388

    const/4 v1, 0x1

    if-lt p2, v1, :cond_18

    if-le p2, v0, :cond_27

    :cond_18
    sget-object v2, Lcom/oplus/glcomponent/utils/Debugger;->INSTANCE:Lcom/oplus/glcomponent/utils/Debugger;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Width is out of range: "

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lcom/oplus/glcomponent/utils/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_27
    if-lt p3, v1, :cond_2b

    if-le p3, v0, :cond_3a

    :cond_2b
    sget-object v2, Lcom/oplus/glcomponent/utils/Debugger;->INSTANCE:Lcom/oplus/glcomponent/utils/Debugger;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Height is out of range: "

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lcom/oplus/glcomponent/utils/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3a
    invoke-static {p2, v1, v0}, Landroidx/core/math/MathUtils;->clamp(III)I

    move-result p1

    iput p1, p0, Lcom/oplus/glcomponent/gl/framebuffer/DualFrameBuffer;->width:I

    invoke-static {p3, v1, v0}, Landroidx/core/math/MathUtils;->clamp(III)I

    move-result p1

    iput p1, p0, Lcom/oplus/glcomponent/gl/framebuffer/DualFrameBuffer;->height:I

    iput-boolean p4, p0, Lcom/oplus/glcomponent/gl/framebuffer/DualFrameBuffer;->mHasDepth:Z

    invoke-direct {p0}, Lcom/oplus/glcomponent/gl/framebuffer/DualFrameBuffer;->validateFrameBuffer()V

    return-void
.end method

.method private final swap()V
    .registers 5

    iget-object p0, p0, Lcom/oplus/glcomponent/gl/framebuffer/DualFrameBuffer;->mTargets:[Lcom/oplus/glcomponent/gl/framebuffer/FrameBuffer;

    const/4 v0, 0x0

    aget-object v1, p0, v0

    const/4 v2, 0x1

    aget-object v3, p0, v2

    aput-object v3, p0, v0

    aput-object v1, p0, v2

    return-void
.end method

.method private final validateFrameBuffer()V
    .registers 13

    iget-object v0, p0, Lcom/oplus/glcomponent/gl/framebuffer/DualFrameBuffer;->mTargets:[Lcom/oplus/glcomponent/gl/framebuffer/FrameBuffer;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    const/4 v3, 0x0

    if-eqz v2, :cond_14

    aget-object v0, v0, v1

    if-nez v0, :cond_e

    move-object v0, v3

    goto :goto_12

    :cond_e
    invoke-virtual {v0}, Lcom/oplus/glcomponent/gl/framebuffer/FrameBuffer;->getColorBufferTexture()Lcom/oplus/glcomponent/gl/texture/Texture;

    move-result-object v0

    :goto_12
    if-nez v0, :cond_2a

    :cond_14
    iget-object v0, p0, Lcom/oplus/glcomponent/gl/framebuffer/DualFrameBuffer;->mTargets:[Lcom/oplus/glcomponent/gl/framebuffer/FrameBuffer;

    new-instance v2, Lcom/oplus/glcomponent/gl/framebuffer/FrameBuffer;

    iget-object v5, p0, Lcom/oplus/glcomponent/gl/framebuffer/DualFrameBuffer;->mFormat:Lcom/oplus/glcomponent/gl/data/PixelFormat;

    iget v6, p0, Lcom/oplus/glcomponent/gl/framebuffer/DualFrameBuffer;->width:I

    iget v7, p0, Lcom/oplus/glcomponent/gl/framebuffer/DualFrameBuffer;->height:I

    iget-boolean v8, p0, Lcom/oplus/glcomponent/gl/framebuffer/DualFrameBuffer;->mHasDepth:Z

    const/4 v9, 0x0

    const/16 v10, 0x10

    const/4 v11, 0x0

    move-object v4, v2

    invoke-direct/range {v4 .. v11}, Lcom/oplus/glcomponent/gl/framebuffer/FrameBuffer;-><init>(Lcom/oplus/glcomponent/gl/data/PixelFormat;IIZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    aput-object v2, v0, v1

    :cond_2a
    iget-object v0, p0, Lcom/oplus/glcomponent/gl/framebuffer/DualFrameBuffer;->mTargets:[Lcom/oplus/glcomponent/gl/framebuffer/FrameBuffer;

    const/4 v1, 0x1

    aget-object v2, v0, v1

    if-eqz v2, :cond_3c

    aget-object v0, v0, v1

    if-nez v0, :cond_36

    goto :goto_3a

    :cond_36
    invoke-virtual {v0}, Lcom/oplus/glcomponent/gl/framebuffer/FrameBuffer;->getColorBufferTexture()Lcom/oplus/glcomponent/gl/texture/Texture;

    move-result-object v3

    :goto_3a
    if-nez v3, :cond_52

    :cond_3c
    iget-object v0, p0, Lcom/oplus/glcomponent/gl/framebuffer/DualFrameBuffer;->mTargets:[Lcom/oplus/glcomponent/gl/framebuffer/FrameBuffer;

    new-instance v10, Lcom/oplus/glcomponent/gl/framebuffer/FrameBuffer;

    iget-object v3, p0, Lcom/oplus/glcomponent/gl/framebuffer/DualFrameBuffer;->mFormat:Lcom/oplus/glcomponent/gl/data/PixelFormat;

    iget v4, p0, Lcom/oplus/glcomponent/gl/framebuffer/DualFrameBuffer;->width:I

    iget v5, p0, Lcom/oplus/glcomponent/gl/framebuffer/DualFrameBuffer;->height:I

    iget-boolean v6, p0, Lcom/oplus/glcomponent/gl/framebuffer/DualFrameBuffer;->mHasDepth:Z

    const/4 v7, 0x0

    const/16 v8, 0x10

    const/4 v9, 0x0

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lcom/oplus/glcomponent/gl/framebuffer/FrameBuffer;-><init>(Lcom/oplus/glcomponent/gl/data/PixelFormat;IIZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    aput-object v10, v0, v1

    :cond_52
    return-void
.end method


# virtual methods
.method public final begin()V
    .registers 2

    invoke-direct {p0}, Lcom/oplus/glcomponent/gl/framebuffer/DualFrameBuffer;->validateFrameBuffer()V

    iget-object p0, p0, Lcom/oplus/glcomponent/gl/framebuffer/DualFrameBuffer;->mTargets:[Lcom/oplus/glcomponent/gl/framebuffer/FrameBuffer;

    const/4 v0, 0x1

    aget-object p0, p0, v0

    if-nez p0, :cond_b

    goto :goto_e

    :cond_b
    invoke-virtual {p0}, Lcom/oplus/glcomponent/gl/framebuffer/FrameBuffer;->begin()V

    :goto_e
    return-void
.end method

.method public dispose()V
    .registers 4

    iget-object v0, p0, Lcom/oplus/glcomponent/gl/framebuffer/DualFrameBuffer;->mTargets:[Lcom/oplus/glcomponent/gl/framebuffer/FrameBuffer;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-nez v0, :cond_8

    goto :goto_b

    :cond_8
    invoke-virtual {v0}, Lcom/oplus/glcomponent/gl/framebuffer/FrameBuffer;->dispose()V

    :goto_b
    iget-object v0, p0, Lcom/oplus/glcomponent/gl/framebuffer/DualFrameBuffer;->mTargets:[Lcom/oplus/glcomponent/gl/framebuffer/FrameBuffer;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    if-nez v0, :cond_13

    goto :goto_16

    :cond_13
    invoke-virtual {v0}, Lcom/oplus/glcomponent/gl/framebuffer/FrameBuffer;->dispose()V

    :goto_16
    iget-object p0, p0, Lcom/oplus/glcomponent/gl/framebuffer/DualFrameBuffer;->mTargets:[Lcom/oplus/glcomponent/gl/framebuffer/FrameBuffer;

    const/4 v0, 0x0

    aput-object v0, p0, v1

    aput-object v0, p0, v2

    return-void
.end method

.method public final end(IIII)V
    .registers 7

    iget-object v0, p0, Lcom/oplus/glcomponent/gl/framebuffer/DualFrameBuffer;->mTargets:[Lcom/oplus/glcomponent/gl/framebuffer/FrameBuffer;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    if-nez v0, :cond_8

    goto :goto_b

    :cond_8
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/oplus/glcomponent/gl/framebuffer/FrameBuffer;->end(IIII)V

    :goto_b
    invoke-direct {p0}, Lcom/oplus/glcomponent/gl/framebuffer/DualFrameBuffer;->swap()V

    return-void
.end method

.method public final getAspectRatio()F
    .registers 2

    iget v0, p0, Lcom/oplus/glcomponent/gl/framebuffer/DualFrameBuffer;->width:I

    int-to-float v0, v0

    iget p0, p0, Lcom/oplus/glcomponent/gl/framebuffer/DualFrameBuffer;->height:I

    int-to-float p0, p0

    div-float/2addr v0, p0

    return v0
.end method

.method public final getHeight()I
    .registers 1

    iget p0, p0, Lcom/oplus/glcomponent/gl/framebuffer/DualFrameBuffer;->height:I

    return p0
.end method

.method public final getWidth()I
    .registers 1

    iget p0, p0, Lcom/oplus/glcomponent/gl/framebuffer/DualFrameBuffer;->width:I

    return p0
.end method

.method public final read()Lcom/oplus/glcomponent/gl/texture/Texture;
    .registers 2

    iget-object p0, p0, Lcom/oplus/glcomponent/gl/framebuffer/DualFrameBuffer;->mTargets:[Lcom/oplus/glcomponent/gl/framebuffer/FrameBuffer;

    const/4 v0, 0x0

    aget-object p0, p0, v0

    if-nez p0, :cond_9

    const/4 p0, 0x0

    goto :goto_d

    :cond_9
    invoke-virtual {p0}, Lcom/oplus/glcomponent/gl/framebuffer/FrameBuffer;->getColorBufferTexture()Lcom/oplus/glcomponent/gl/texture/Texture;

    move-result-object p0

    :goto_d
    return-object p0
.end method

.method public final setFilter(Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;)V
    .registers 5

    const-string v0, "minFilter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "magFilter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/glcomponent/gl/framebuffer/DualFrameBuffer;->mTargets:[Lcom/oplus/glcomponent/gl/framebuffer/FrameBuffer;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-nez v0, :cond_12

    goto :goto_1c

    :cond_12
    invoke-virtual {v0}, Lcom/oplus/glcomponent/gl/framebuffer/FrameBuffer;->getColorBufferTexture()Lcom/oplus/glcomponent/gl/texture/Texture;

    move-result-object v0

    if-nez v0, :cond_19

    goto :goto_1c

    :cond_19
    invoke-virtual {v0, p1, p2}, Lcom/oplus/glcomponent/gl/texture/GLTexture;->setFilter(Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;)V

    :goto_1c
    iget-object p0, p0, Lcom/oplus/glcomponent/gl/framebuffer/DualFrameBuffer;->mTargets:[Lcom/oplus/glcomponent/gl/framebuffer/FrameBuffer;

    const/4 v0, 0x1

    aget-object p0, p0, v0

    if-nez p0, :cond_24

    goto :goto_2e

    :cond_24
    invoke-virtual {p0}, Lcom/oplus/glcomponent/gl/framebuffer/FrameBuffer;->getColorBufferTexture()Lcom/oplus/glcomponent/gl/texture/Texture;

    move-result-object p0

    if-nez p0, :cond_2b

    goto :goto_2e

    :cond_2b
    invoke-virtual {p0, p1, p2}, Lcom/oplus/glcomponent/gl/texture/GLTexture;->setFilter(Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;)V

    :goto_2e
    return-void
.end method
