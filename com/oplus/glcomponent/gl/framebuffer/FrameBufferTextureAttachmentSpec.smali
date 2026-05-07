.class public final Lcom/oplus/glcomponent/gl/framebuffer/FrameBufferTextureAttachmentSpec;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public format:Lcom/oplus/glcomponent/gl/data/PixelFormat;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field private isDepth:Z

.field private isStencil:Z


# direct methods
.method public constructor <init>(Lcom/oplus/glcomponent/gl/data/PixelFormat;)V
    .registers 3

    const-string v0, "pixelFormat"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/glcomponent/gl/framebuffer/FrameBufferTextureAttachmentSpec;->format:Lcom/oplus/glcomponent/gl/data/PixelFormat;

    return-void
.end method


# virtual methods
.method public final isColorTexture()Z
    .registers 2

    iget-boolean v0, p0, Lcom/oplus/glcomponent/gl/framebuffer/FrameBufferTextureAttachmentSpec;->isDepth:Z

    if-nez v0, :cond_a

    iget-boolean p0, p0, Lcom/oplus/glcomponent/gl/framebuffer/FrameBufferTextureAttachmentSpec;->isStencil:Z

    if-nez p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public final isDepth()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/glcomponent/gl/framebuffer/FrameBufferTextureAttachmentSpec;->isDepth:Z

    return p0
.end method

.method public final isStencil()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/glcomponent/gl/framebuffer/FrameBufferTextureAttachmentSpec;->isStencil:Z

    return p0
.end method

.method public final setDepth(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/glcomponent/gl/framebuffer/FrameBufferTextureAttachmentSpec;->isDepth:Z

    return-void
.end method

.method public final setStencil(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/glcomponent/gl/framebuffer/FrameBufferTextureAttachmentSpec;->isStencil:Z

    return-void
.end method
