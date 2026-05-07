.class public final Lcom/oplus/glcomponent/gl/framebuffer/FrameBufferRenderBufferAttachmentSpec;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private internalFormat:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/oplus/glcomponent/gl/framebuffer/FrameBufferRenderBufferAttachmentSpec;->internalFormat:I

    return-void
.end method


# virtual methods
.method public final getInternalFormat()I
    .registers 1

    iget p0, p0, Lcom/oplus/glcomponent/gl/framebuffer/FrameBufferRenderBufferAttachmentSpec;->internalFormat:I

    return p0
.end method

.method public final setInternalFormat(I)V
    .registers 2

    iput p1, p0, Lcom/oplus/glcomponent/gl/framebuffer/FrameBufferRenderBufferAttachmentSpec;->internalFormat:I

    return-void
.end method
