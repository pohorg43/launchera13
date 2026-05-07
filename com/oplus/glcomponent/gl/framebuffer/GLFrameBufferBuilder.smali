.class public abstract Lcom/oplus/glcomponent/gl/framebuffer/GLFrameBufferBuilder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/glcomponent/gl/framebuffer/GLFrameBufferBuilder$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/glcomponent/gl/framebuffer/GLFrameBufferBuilder$Companion;

.field private static final TAG:Ljava/lang/String; = "GLFrameBufferBuilder"


# instance fields
.field private depthRenderBufferSpec:Lcom/oplus/glcomponent/gl/framebuffer/FrameBufferRenderBufferAttachmentSpec;

.field private hasDepthRenderBuffer:Z

.field private hasPackedStencilDepthRenderBuffer:Z

.field private hasStencilRenderBuffer:Z

.field private height:I

.field private packedStencilDepthRenderBufferSpec:Lcom/oplus/glcomponent/gl/framebuffer/FrameBufferRenderBufferAttachmentSpec;

.field private stencilRenderBufferSpec:Lcom/oplus/glcomponent/gl/framebuffer/FrameBufferRenderBufferAttachmentSpec;

.field private textureAttachmentSpecs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oplus/glcomponent/gl/framebuffer/FrameBufferTextureAttachmentSpec;",
            ">;"
        }
    .end annotation
.end field

.field private width:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/glcomponent/gl/framebuffer/GLFrameBufferBuilder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/glcomponent/gl/framebuffer/GLFrameBufferBuilder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/glcomponent/gl/framebuffer/GLFrameBufferBuilder;->Companion:Lcom/oplus/glcomponent/gl/framebuffer/GLFrameBufferBuilder$Companion;

    return-void
.end method

.method public constructor <init>(II)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/glcomponent/gl/framebuffer/GLFrameBufferBuilder;->textureAttachmentSpecs:Ljava/util/ArrayList;

    const-string v0, "GLFrameBufferBuilder"

    const/16 v1, 0x1388

    const/4 v2, 0x1

    if-lt p1, v2, :cond_13

    if-le p1, v1, :cond_22

    :cond_13
    sget-object v3, Lcom/oplus/glcomponent/utils/Debugger;->INSTANCE:Lcom/oplus/glcomponent/utils/Debugger;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "Width is out of range: "

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/oplus/glcomponent/utils/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_22
    if-lt p2, v2, :cond_26

    if-le p2, v1, :cond_35

    :cond_26
    sget-object v3, Lcom/oplus/glcomponent/utils/Debugger;->INSTANCE:Lcom/oplus/glcomponent/utils/Debugger;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "Height is out of range: "

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/oplus/glcomponent/utils/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_35
    sget-object v0, Lcom/oplus/glcomponent/math/MathUtils;->INSTANCE:Lcom/oplus/glcomponent/math/MathUtils;

    invoke-virtual {v0, p1, v2, v1}, Lcom/oplus/glcomponent/math/MathUtils;->clamp(III)I

    move-result p1

    iput p1, p0, Lcom/oplus/glcomponent/gl/framebuffer/GLFrameBufferBuilder;->width:I

    invoke-virtual {v0, p2, v2, v1}, Lcom/oplus/glcomponent/math/MathUtils;->clamp(III)I

    move-result p1

    iput p1, p0, Lcom/oplus/glcomponent/gl/framebuffer/GLFrameBufferBuilder;->height:I

    return-void
.end method

.method private final addColorTextureAttachment(Lcom/oplus/glcomponent/gl/data/PixelFormat;)Lcom/oplus/glcomponent/gl/framebuffer/GLFrameBufferBuilder;
    .registers 4

    iget-object v0, p0, Lcom/oplus/glcomponent/gl/framebuffer/GLFrameBufferBuilder;->textureAttachmentSpecs:Ljava/util/ArrayList;

    new-instance v1, Lcom/oplus/glcomponent/gl/framebuffer/FrameBufferTextureAttachmentSpec;

    invoke-direct {v1, p1}, Lcom/oplus/glcomponent/gl/framebuffer/FrameBufferTextureAttachmentSpec;-><init>(Lcom/oplus/glcomponent/gl/data/PixelFormat;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method private final addDepthRenderBuffer(I)Lcom/oplus/glcomponent/gl/framebuffer/GLFrameBufferBuilder;
    .registers 3

    new-instance v0, Lcom/oplus/glcomponent/gl/framebuffer/FrameBufferRenderBufferAttachmentSpec;

    invoke-direct {v0, p1}, Lcom/oplus/glcomponent/gl/framebuffer/FrameBufferRenderBufferAttachmentSpec;-><init>(I)V

    iput-object v0, p0, Lcom/oplus/glcomponent/gl/framebuffer/GLFrameBufferBuilder;->depthRenderBufferSpec:Lcom/oplus/glcomponent/gl/framebuffer/FrameBufferRenderBufferAttachmentSpec;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oplus/glcomponent/gl/framebuffer/GLFrameBufferBuilder;->hasDepthRenderBuffer:Z

    return-object p0
.end method

.method private final addStencilDepthPackedRenderBuffer(I)Lcom/oplus/glcomponent/gl/framebuffer/GLFrameBufferBuilder;
    .registers 3

    new-instance v0, Lcom/oplus/glcomponent/gl/framebuffer/FrameBufferRenderBufferAttachmentSpec;

    invoke-direct {v0, p1}, Lcom/oplus/glcomponent/gl/framebuffer/FrameBufferRenderBufferAttachmentSpec;-><init>(I)V

    iput-object v0, p0, Lcom/oplus/glcomponent/gl/framebuffer/GLFrameBufferBuilder;->packedStencilDepthRenderBufferSpec:Lcom/oplus/glcomponent/gl/framebuffer/FrameBufferRenderBufferAttachmentSpec;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oplus/glcomponent/gl/framebuffer/GLFrameBufferBuilder;->hasPackedStencilDepthRenderBuffer:Z

    return-object p0
.end method

.method private final addStencilRenderBuffer(I)Lcom/oplus/glcomponent/gl/framebuffer/GLFrameBufferBuilder;
    .registers 3

    new-instance v0, Lcom/oplus/glcomponent/gl/framebuffer/FrameBufferRenderBufferAttachmentSpec;

    invoke-direct {v0, p1}, Lcom/oplus/glcomponent/gl/framebuffer/FrameBufferRenderBufferAttachmentSpec;-><init>(I)V

    iput-object v0, p0, Lcom/oplus/glcomponent/gl/framebuffer/GLFrameBufferBuilder;->stencilRenderBufferSpec:Lcom/oplus/glcomponent/gl/framebuffer/FrameBufferRenderBufferAttachmentSpec;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oplus/glcomponent/gl/framebuffer/GLFrameBufferBuilder;->hasStencilRenderBuffer:Z

    return-object p0
.end method


# virtual methods
.method public final addBasicColorTextureAttachment(Lcom/oplus/glcomponent/gl/data/PixelFormat;)Lcom/oplus/glcomponent/gl/framebuffer/GLFrameBufferBuilder;
    .registers 3

    const-string v0, "format"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/oplus/glcomponent/gl/framebuffer/GLFrameBufferBuilder;->addColorTextureAttachment(Lcom/oplus/glcomponent/gl/data/PixelFormat;)Lcom/oplus/glcomponent/gl/framebuffer/GLFrameBufferBuilder;

    move-result-object p0

    return-object p0
.end method

.method public final addBasicDepthRenderBuffer()Lcom/oplus/glcomponent/gl/framebuffer/GLFrameBufferBuilder;
    .registers 2

    const v0, 0x81a5

    invoke-direct {p0, v0}, Lcom/oplus/glcomponent/gl/framebuffer/GLFrameBufferBuilder;->addDepthRenderBuffer(I)Lcom/oplus/glcomponent/gl/framebuffer/GLFrameBufferBuilder;

    move-result-object p0

    return-object p0
.end method

.method public final addBasicStencilDepthPackedRenderBuffer()Lcom/oplus/glcomponent/gl/framebuffer/GLFrameBufferBuilder;
    .registers 2

    const v0, 0x88f0

    invoke-direct {p0, v0}, Lcom/oplus/glcomponent/gl/framebuffer/GLFrameBufferBuilder;->addStencilDepthPackedRenderBuffer(I)Lcom/oplus/glcomponent/gl/framebuffer/GLFrameBufferBuilder;

    move-result-object p0

    return-object p0
.end method

.method public final addBasicStencilRenderBuffer()Lcom/oplus/glcomponent/gl/framebuffer/GLFrameBufferBuilder;
    .registers 2

    const v0, 0x8d48

    invoke-direct {p0, v0}, Lcom/oplus/glcomponent/gl/framebuffer/GLFrameBufferBuilder;->addStencilRenderBuffer(I)Lcom/oplus/glcomponent/gl/framebuffer/GLFrameBufferBuilder;

    move-result-object p0

    return-object p0
.end method

.method public final addDepthTextureAttachment(II)Lcom/oplus/glcomponent/gl/framebuffer/GLFrameBufferBuilder;
    .registers 7

    new-instance v0, Lcom/oplus/glcomponent/gl/framebuffer/FrameBufferTextureAttachmentSpec;

    new-instance v1, Lcom/oplus/glcomponent/gl/data/PixelFormat;

    const/16 v2, 0x1902

    const/4 v3, -0x1

    invoke-direct {v1, p1, v2, p2, v3}, Lcom/oplus/glcomponent/gl/data/PixelFormat;-><init>(IIII)V

    invoke-direct {v0, v1}, Lcom/oplus/glcomponent/gl/framebuffer/FrameBufferTextureAttachmentSpec;-><init>(Lcom/oplus/glcomponent/gl/data/PixelFormat;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lcom/oplus/glcomponent/gl/framebuffer/FrameBufferTextureAttachmentSpec;->setDepth(Z)V

    iget-object p1, p0, Lcom/oplus/glcomponent/gl/framebuffer/GLFrameBufferBuilder;->textureAttachmentSpecs:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final addStencilTextureAttachment(II)Lcom/oplus/glcomponent/gl/framebuffer/GLFrameBufferBuilder;
    .registers 7

    new-instance v0, Lcom/oplus/glcomponent/gl/framebuffer/FrameBufferTextureAttachmentSpec;

    new-instance v1, Lcom/oplus/glcomponent/gl/data/PixelFormat;

    const v2, 0x8d20

    const/4 v3, -0x1

    invoke-direct {v1, p1, v2, p2, v3}, Lcom/oplus/glcomponent/gl/data/PixelFormat;-><init>(IIII)V

    invoke-direct {v0, v1}, Lcom/oplus/glcomponent/gl/framebuffer/FrameBufferTextureAttachmentSpec;-><init>(Lcom/oplus/glcomponent/gl/data/PixelFormat;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lcom/oplus/glcomponent/gl/framebuffer/FrameBufferTextureAttachmentSpec;->setStencil(Z)V

    iget-object p1, p0, Lcom/oplus/glcomponent/gl/framebuffer/GLFrameBufferBuilder;->textureAttachmentSpecs:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public abstract build()Lcom/oplus/glcomponent/gl/framebuffer/FrameBuffer;
.end method

.method public final getDepthRenderBufferSpec()Lcom/oplus/glcomponent/gl/framebuffer/FrameBufferRenderBufferAttachmentSpec;
    .registers 1

    iget-object p0, p0, Lcom/oplus/glcomponent/gl/framebuffer/GLFrameBufferBuilder;->depthRenderBufferSpec:Lcom/oplus/glcomponent/gl/framebuffer/FrameBufferRenderBufferAttachmentSpec;

    return-object p0
.end method

.method public final getHasDepthRenderBuffer()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/glcomponent/gl/framebuffer/GLFrameBufferBuilder;->hasDepthRenderBuffer:Z

    return p0
.end method

.method public final getHasPackedStencilDepthRenderBuffer()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/glcomponent/gl/framebuffer/GLFrameBufferBuilder;->hasPackedStencilDepthRenderBuffer:Z

    return p0
.end method

.method public final getHasStencilRenderBuffer()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/glcomponent/gl/framebuffer/GLFrameBufferBuilder;->hasStencilRenderBuffer:Z

    return p0
.end method

.method public final getHeight()I
    .registers 1

    iget p0, p0, Lcom/oplus/glcomponent/gl/framebuffer/GLFrameBufferBuilder;->height:I

    return p0
.end method

.method public final getPackedStencilDepthRenderBufferSpec()Lcom/oplus/glcomponent/gl/framebuffer/FrameBufferRenderBufferAttachmentSpec;
    .registers 1

    iget-object p0, p0, Lcom/oplus/glcomponent/gl/framebuffer/GLFrameBufferBuilder;->packedStencilDepthRenderBufferSpec:Lcom/oplus/glcomponent/gl/framebuffer/FrameBufferRenderBufferAttachmentSpec;

    return-object p0
.end method

.method public final getStencilRenderBufferSpec()Lcom/oplus/glcomponent/gl/framebuffer/FrameBufferRenderBufferAttachmentSpec;
    .registers 1

    iget-object p0, p0, Lcom/oplus/glcomponent/gl/framebuffer/GLFrameBufferBuilder;->stencilRenderBufferSpec:Lcom/oplus/glcomponent/gl/framebuffer/FrameBufferRenderBufferAttachmentSpec;

    return-object p0
.end method

.method public final getTextureAttachmentSpecs()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/oplus/glcomponent/gl/framebuffer/FrameBufferTextureAttachmentSpec;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/glcomponent/gl/framebuffer/GLFrameBufferBuilder;->textureAttachmentSpecs:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final getWidth()I
    .registers 1

    iget p0, p0, Lcom/oplus/glcomponent/gl/framebuffer/GLFrameBufferBuilder;->width:I

    return p0
.end method

.method public final setDepthRenderBufferSpec(Lcom/oplus/glcomponent/gl/framebuffer/FrameBufferRenderBufferAttachmentSpec;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/glcomponent/gl/framebuffer/GLFrameBufferBuilder;->depthRenderBufferSpec:Lcom/oplus/glcomponent/gl/framebuffer/FrameBufferRenderBufferAttachmentSpec;

    return-void
.end method

.method public final setHasDepthRenderBuffer(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/glcomponent/gl/framebuffer/GLFrameBufferBuilder;->hasDepthRenderBuffer:Z

    return-void
.end method

.method public final setHasPackedStencilDepthRenderBuffer(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/glcomponent/gl/framebuffer/GLFrameBufferBuilder;->hasPackedStencilDepthRenderBuffer:Z

    return-void
.end method

.method public final setHasStencilRenderBuffer(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/glcomponent/gl/framebuffer/GLFrameBufferBuilder;->hasStencilRenderBuffer:Z

    return-void
.end method

.method public final setHeight(I)V
    .registers 2

    iput p1, p0, Lcom/oplus/glcomponent/gl/framebuffer/GLFrameBufferBuilder;->height:I

    return-void
.end method

.method public final setPackedStencilDepthRenderBufferSpec(Lcom/oplus/glcomponent/gl/framebuffer/FrameBufferRenderBufferAttachmentSpec;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/glcomponent/gl/framebuffer/GLFrameBufferBuilder;->packedStencilDepthRenderBufferSpec:Lcom/oplus/glcomponent/gl/framebuffer/FrameBufferRenderBufferAttachmentSpec;

    return-void
.end method

.method public final setStencilRenderBufferSpec(Lcom/oplus/glcomponent/gl/framebuffer/FrameBufferRenderBufferAttachmentSpec;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/glcomponent/gl/framebuffer/GLFrameBufferBuilder;->stencilRenderBufferSpec:Lcom/oplus/glcomponent/gl/framebuffer/FrameBufferRenderBufferAttachmentSpec;

    return-void
.end method

.method public final setTextureAttachmentSpecs(Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/oplus/glcomponent/gl/framebuffer/FrameBufferTextureAttachmentSpec;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/glcomponent/gl/framebuffer/GLFrameBufferBuilder;->textureAttachmentSpecs:Ljava/util/ArrayList;

    return-void
.end method

.method public final setWidth(I)V
    .registers 2

    iput p1, p0, Lcom/oplus/glcomponent/gl/framebuffer/GLFrameBufferBuilder;->width:I

    return-void
.end method
