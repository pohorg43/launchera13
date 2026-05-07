.class public final Lcom/oplus/glcomponent/gl/framebuffer/FrameBufferBuilder;
.super Lcom/oplus/glcomponent/gl/framebuffer/GLFrameBufferBuilder;
.source ""


# direct methods
.method public constructor <init>(II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/oplus/glcomponent/gl/framebuffer/GLFrameBufferBuilder;-><init>(II)V

    return-void
.end method


# virtual methods
.method public build()Lcom/oplus/glcomponent/gl/framebuffer/FrameBuffer;
    .registers 2

    new-instance v0, Lcom/oplus/glcomponent/gl/framebuffer/FrameBuffer;

    invoke-direct {v0, p0}, Lcom/oplus/glcomponent/gl/framebuffer/FrameBuffer;-><init>(Lcom/oplus/glcomponent/gl/framebuffer/GLFrameBufferBuilder;)V

    return-object v0
.end method
