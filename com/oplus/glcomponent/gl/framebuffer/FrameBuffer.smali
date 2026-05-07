.class public final Lcom/oplus/glcomponent/gl/framebuffer/FrameBuffer;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/glcomponent/gl/utils/Disposable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/glcomponent/gl/framebuffer/FrameBuffer$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/glcomponent/gl/framebuffer/FrameBuffer$Companion;

.field private static final DEFAULT_FBO_HANDLE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "FrameBuffer"


# instance fields
.field private mBufferBuilder:Lcom/oplus/glcomponent/gl/framebuffer/GLFrameBufferBuilder;

.field private mDepthBufferHandle:I

.field private mDepthStencilPackedBufferHandle:I

.field private mFBOHandle:I

.field private mHasDepthStencilPackedBuffer:Z

.field private mIsMRT:Z

.field private mStencilBufferHandle:I

.field private mTextureAttachments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oplus/glcomponent/gl/texture/Texture;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/glcomponent/gl/framebuffer/FrameBuffer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/glcomponent/gl/framebuffer/FrameBuffer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/glcomponent/gl/framebuffer/FrameBuffer;->Companion:Lcom/oplus/glcomponent/gl/framebuffer/FrameBuffer$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/oplus/glcomponent/gl/data/PixelFormat;IIZZ)V
    .registers 7

    const-string v0, "format"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/oplus/glcomponent/gl/framebuffer/FrameBuffer;->mDepthBufferHandle:I

    iput v0, p0, Lcom/oplus/glcomponent/gl/framebuffer/FrameBuffer;->mStencilBufferHandle:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/glcomponent/gl/framebuffer/FrameBuffer;->mTextureAttachments:Ljava/util/ArrayList;

    new-instance v0, Lcom/oplus/glcomponent/gl/framebuffer/FrameBufferBuilder;

    invoke-direct {v0, p2, p3}, Lcom/oplus/glcomponent/gl/framebuffer/FrameBufferBuilder;-><init>(II)V

    invoke-virtual {v0, p1}, Lcom/oplus/glcomponent/gl/framebuffer/GLFrameBufferBuilder;->addBasicColorTextureAttachment(Lcom/oplus/glcomponent/gl/data/PixelFormat;)Lcom/oplus/glcomponent/gl/framebuffer/GLFrameBufferBuilder;

    if-eqz p4, :cond_21

    invoke-virtual {v0}, Lcom/oplus/glcomponent/gl/framebuffer/GLFrameBufferBuilder;->addBasicDepthRenderBuffer()Lcom/oplus/glcomponent/gl/framebuffer/GLFrameBufferBuilder;

    :cond_21
    if-eqz p5, :cond_26

    invoke-virtual {v0}, Lcom/oplus/glcomponent/gl/framebuffer/GLFrameBufferBuilder;->addBasicStencilRenderBuffer()Lcom/oplus/glcomponent/gl/framebuffer/GLFrameBufferBuilder;

    :cond_26
    iput-object v0, p0, Lcom/oplus/glcomponent/gl/framebuffer/FrameBuffer;->mBufferBuilder:Lcom/oplus/glcomponent/gl/framebuffer/GLFrameBufferBuilder;

    invoke-direct {p0}, Lcom/oplus/glcomponent/gl/framebuffer/FrameBuffer;->build()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/glcomponent/gl/data/PixelFormat;IIZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 14

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_5

    const/4 p5, 0x0

    :cond_5
    move v5, p5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/oplus/glcomponent/gl/framebuffer/FrameBuffer;-><init>(Lcom/oplus/glcomponent/gl/data/PixelFormat;IIZZ)V

    return-void
.end method

.method public constructor <init>(Lcom/oplus/glcomponent/gl/framebuffer/GLFrameBufferBuilder;)V
    .registers 3

    const-string v0, "bufferBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/oplus/glcomponent/gl/framebuffer/FrameBuffer;->mDepthBufferHandle:I

    iput v0, p0, Lcom/oplus/glcomponent/gl/framebuffer/FrameBuffer;->mStencilBufferHandle:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/glcomponent/gl/framebuffer/FrameBuffer;->mTextureAttachments:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/oplus/glcomponent/gl/framebuffer/FrameBuffer;->mBufferBuilder:Lcom/oplus/glcomponent/gl/framebuffer/GLFrameBufferBuilder;

    invoke-direct {p0}, Lcom/oplus/glcomponent/gl/framebuffer/FrameBuffer;->build()V

    return-void
.end method

.method private final attachFrameBufferColorTexture(Lcom/oplus/glcomponent/gl/texture/Texture;)V
    .registers 5

    invoke-virtual {p1}, Lcom/oplus/glcomponent/gl/texture/GLTexture;->getHandle()I

    move-result p0

    const p1, 0x8d40

    const v0, 0x8ce0

    const/16 v1, 0xde1

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, p0, v2}, Landroid/opengl/GLES30;->glFramebufferTexture2D(IIIII)V

    return-void
.end method

.method private final build()V
    .registers 15

    sget-object v0, Lcom/oplus/glcomponent/utils/GLTool;->INSTANCE:Lcom/oplus/glcomponent/utils/GLTool;

    invoke-virtual {v0}, Lcom/oplus/glcomponent/utils/GLTool;->glGenFramebuffer()I

    move-result v1

    iput v1, p0, Lcom/oplus/glcomponent/gl/framebuffer/FrameBuffer;->mFBOHandle:I

    const v2, 0x8d40

    invoke-static {v2, v1}, Landroid/opengl/GLES30;->glBindFramebuffer(II)V

    iget-object v1, p0, Lcom/oplus/glcomponent/gl/framebuffer/FrameBuffer;->mBufferBuilder:Lcom/oplus/glcomponent/gl/framebuffer/GLFrameBufferBuilder;

    if-nez v1, :cond_14

    goto/16 :goto_223

    :cond_14
    invoke-virtual {v1}, Lcom/oplus/glcomponent/gl/framebuffer/GLFrameBufferBuilder;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Lcom/oplus/glcomponent/gl/framebuffer/GLFrameBufferBuilder;->getHeight()I

    move-result v4

    invoke-virtual {v1}, Lcom/oplus/glcomponent/gl/framebuffer/GLFrameBufferBuilder;->getHasDepthRenderBuffer()Z

    move-result v5

    const v6, 0x8d41

    if-eqz v5, :cond_3c

    invoke-virtual {v0}, Lcom/oplus/glcomponent/utils/GLTool;->glGenRenderbuffer()I

    move-result v5

    iput v5, p0, Lcom/oplus/glcomponent/gl/framebuffer/FrameBuffer;->mDepthBufferHandle:I

    invoke-static {v6, v5}, Landroid/opengl/GLES30;->glBindRenderbuffer(II)V

    invoke-virtual {v1}, Lcom/oplus/glcomponent/gl/framebuffer/GLFrameBufferBuilder;->getDepthRenderBufferSpec()Lcom/oplus/glcomponent/gl/framebuffer/FrameBufferRenderBufferAttachmentSpec;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5}, Lcom/oplus/glcomponent/gl/framebuffer/FrameBufferRenderBufferAttachmentSpec;->getInternalFormat()I

    move-result v5

    invoke-static {v6, v5, v3, v4}, Landroid/opengl/GLES30;->glRenderbufferStorage(IIII)V

    :cond_3c
    invoke-virtual {v1}, Lcom/oplus/glcomponent/gl/framebuffer/GLFrameBufferBuilder;->getHasStencilRenderBuffer()Z

    move-result v5

    if-eqz v5, :cond_59

    invoke-virtual {v0}, Lcom/oplus/glcomponent/utils/GLTool;->glGenRenderbuffer()I

    move-result v5

    iput v5, p0, Lcom/oplus/glcomponent/gl/framebuffer/FrameBuffer;->mStencilBufferHandle:I

    invoke-static {v6, v5}, Landroid/opengl/GLES30;->glBindRenderbuffer(II)V

    invoke-virtual {v1}, Lcom/oplus/glcomponent/gl/framebuffer/GLFrameBufferBuilder;->getStencilRenderBufferSpec()Lcom/oplus/glcomponent/gl/framebuffer/FrameBufferRenderBufferAttachmentSpec;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5}, Lcom/oplus/glcomponent/gl/framebuffer/FrameBufferRenderBufferAttachmentSpec;->getInternalFormat()I

    move-result v5

    invoke-static {v6, v5, v3, v4}, Landroid/opengl/GLES30;->glRenderbufferStorage(IIII)V

    :cond_59
    invoke-virtual {v1}, Lcom/oplus/glcomponent/gl/framebuffer/GLFrameBufferBuilder;->getHasPackedStencilDepthRenderBuffer()Z

    move-result v5

    if-eqz v5, :cond_76

    invoke-virtual {v0}, Lcom/oplus/glcomponent/utils/GLTool;->glGenRenderbuffer()I

    move-result v0

    iput v0, p0, Lcom/oplus/glcomponent/gl/framebuffer/FrameBuffer;->mDepthStencilPackedBufferHandle:I

    invoke-static {v6, v0}, Landroid/opengl/GLES30;->glBindRenderbuffer(II)V

    invoke-virtual {v1}, Lcom/oplus/glcomponent/gl/framebuffer/GLFrameBufferBuilder;->getPackedStencilDepthRenderBufferSpec()Lcom/oplus/glcomponent/gl/framebuffer/FrameBufferRenderBufferAttachmentSpec;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/oplus/glcomponent/gl/framebuffer/FrameBufferRenderBufferAttachmentSpec;->getInternalFormat()I

    move-result v0

    invoke-static {v6, v0, v3, v4}, Landroid/opengl/GLES30;->glRenderbufferStorage(IIII)V

    :cond_76
    invoke-virtual {v1}, Lcom/oplus/glcomponent/gl/framebuffer/GLFrameBufferBuilder;->getTextureAttachmentSpecs()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-le v0, v3, :cond_84

    move v0, v3

    goto :goto_85

    :cond_84
    move v0, v4

    :goto_85
    iput-boolean v0, p0, Lcom/oplus/glcomponent/gl/framebuffer/FrameBuffer;->mIsMRT:Z

    const v5, 0x8d20

    const v7, 0x8d00

    const v8, 0x8ce0

    if-eqz v0, :cond_e5

    invoke-virtual {v1}, Lcom/oplus/glcomponent/gl/framebuffer/GLFrameBufferBuilder;->getTextureAttachmentSpecs()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v9, v4

    :cond_9b
    :goto_9b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_104

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/oplus/glcomponent/gl/framebuffer/FrameBufferTextureAttachmentSpec;

    const-string v11, "attachmentSpec"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v10}, Lcom/oplus/glcomponent/gl/framebuffer/FrameBuffer;->createTexture(Lcom/oplus/glcomponent/gl/framebuffer/FrameBufferTextureAttachmentSpec;)Lcom/oplus/glcomponent/gl/texture/Texture;

    move-result-object v11

    iget-object v12, p0, Lcom/oplus/glcomponent/gl/framebuffer/FrameBuffer;->mTextureAttachments:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v10}, Lcom/oplus/glcomponent/gl/framebuffer/FrameBufferTextureAttachmentSpec;->isColorTexture()Z

    move-result v12

    const/16 v13, 0xde1

    if-eqz v12, :cond_c9

    add-int v10, v9, v8

    invoke-virtual {v11}, Lcom/oplus/glcomponent/gl/texture/GLTexture;->getHandle()I

    move-result v11

    invoke-static {v2, v10, v13, v11, v4}, Landroid/opengl/GLES30;->glFramebufferTexture2D(IIIII)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_9b

    :cond_c9
    invoke-virtual {v10}, Lcom/oplus/glcomponent/gl/framebuffer/FrameBufferTextureAttachmentSpec;->isDepth()Z

    move-result v12

    if-eqz v12, :cond_d7

    invoke-virtual {v11}, Lcom/oplus/glcomponent/gl/texture/GLTexture;->getHandle()I

    move-result v10

    invoke-static {v2, v7, v13, v10, v4}, Landroid/opengl/GLES30;->glFramebufferTexture2D(IIIII)V

    goto :goto_9b

    :cond_d7
    invoke-virtual {v10}, Lcom/oplus/glcomponent/gl/framebuffer/FrameBufferTextureAttachmentSpec;->isStencil()Z

    move-result v10

    if-eqz v10, :cond_9b

    invoke-virtual {v11}, Lcom/oplus/glcomponent/gl/texture/GLTexture;->getHandle()I

    move-result v10

    invoke-static {v2, v5, v13, v10, v4}, Landroid/opengl/GLES30;->glFramebufferTexture2D(IIIII)V

    goto :goto_9b

    :cond_e5
    invoke-virtual {v1}, Lcom/oplus/glcomponent/gl/framebuffer/GLFrameBufferBuilder;->getTextureAttachmentSpecs()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lz2/r;->A(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/glcomponent/gl/framebuffer/FrameBufferTextureAttachmentSpec;

    invoke-direct {p0, v0}, Lcom/oplus/glcomponent/gl/framebuffer/FrameBuffer;->createTexture(Lcom/oplus/glcomponent/gl/framebuffer/FrameBufferTextureAttachmentSpec;)Lcom/oplus/glcomponent/gl/texture/Texture;

    move-result-object v0

    iget-object v9, p0, Lcom/oplus/glcomponent/gl/framebuffer/FrameBuffer;->mTextureAttachments:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/oplus/glcomponent/gl/texture/GLTexture;->getMTarget()I

    move-result v9

    invoke-virtual {v0}, Lcom/oplus/glcomponent/gl/texture/GLTexture;->getHandle()I

    move-result v0

    invoke-static {v9, v0}, Landroid/opengl/GLES30;->glBindTexture(II)V

    move v9, v4

    :cond_104
    iget-boolean v0, p0, Lcom/oplus/glcomponent/gl/framebuffer/FrameBuffer;->mIsMRT:Z

    if-eqz v0, :cond_11c

    new-array v0, v9, [I

    if-lez v9, :cond_118

    move v10, v4

    :goto_10d
    add-int/lit8 v11, v10, 0x1

    add-int v12, v10, v8

    aput v12, v0, v10

    if-lt v11, v9, :cond_116

    goto :goto_118

    :cond_116
    move v10, v11

    goto :goto_10d

    :cond_118
    :goto_118
    invoke-static {v9, v0, v4}, Landroid/opengl/GLES30;->glDrawBuffers(I[II)V

    goto :goto_127

    :cond_11c
    iget-object v0, p0, Lcom/oplus/glcomponent/gl/framebuffer/FrameBuffer;->mTextureAttachments:Ljava/util/ArrayList;

    invoke-static {v0}, Lz2/r;->A(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/glcomponent/gl/texture/Texture;

    invoke-direct {p0, v0}, Lcom/oplus/glcomponent/gl/framebuffer/FrameBuffer;->attachFrameBufferColorTexture(Lcom/oplus/glcomponent/gl/texture/Texture;)V

    :goto_127
    invoke-virtual {v1}, Lcom/oplus/glcomponent/gl/framebuffer/GLFrameBufferBuilder;->getHasDepthRenderBuffer()Z

    move-result v0

    if-eqz v0, :cond_132

    iget v0, p0, Lcom/oplus/glcomponent/gl/framebuffer/FrameBuffer;->mDepthBufferHandle:I

    invoke-static {v2, v7, v6, v0}, Landroid/opengl/GLES30;->glFramebufferRenderbuffer(IIII)V

    :cond_132
    invoke-virtual {v1}, Lcom/oplus/glcomponent/gl/framebuffer/GLFrameBufferBuilder;->getHasStencilRenderBuffer()Z

    move-result v0

    if-eqz v0, :cond_13d

    iget v0, p0, Lcom/oplus/glcomponent/gl/framebuffer/FrameBuffer;->mStencilBufferHandle:I

    invoke-static {v2, v5, v6, v0}, Landroid/opengl/GLES30;->glFramebufferRenderbuffer(IIII)V

    :cond_13d
    invoke-virtual {v1}, Lcom/oplus/glcomponent/gl/framebuffer/GLFrameBufferBuilder;->getHasPackedStencilDepthRenderBuffer()Z

    move-result v0

    if-eqz v0, :cond_14b

    const v0, 0x821a

    iget v5, p0, Lcom/oplus/glcomponent/gl/framebuffer/FrameBuffer;->mDepthStencilPackedBufferHandle:I

    invoke-static {v2, v0, v6, v5}, Landroid/opengl/GLES30;->glFramebufferRenderbuffer(IIII)V

    :cond_14b
    invoke-static {v6, v4}, Landroid/opengl/GLES30;->glBindRenderbuffer(II)V

    iget-object v0, p0, Lcom/oplus/glcomponent/gl/framebuffer/FrameBuffer;->mTextureAttachments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_154
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_168

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oplus/glcomponent/gl/texture/Texture;

    invoke-virtual {v5}, Lcom/oplus/glcomponent/gl/texture/GLTexture;->getMTarget()I

    move-result v5

    invoke-static {v5, v4}, Landroid/opengl/GLES30;->glBindTexture(II)V

    goto :goto_154

    :cond_168
    invoke-static {v2}, Landroid/opengl/GLES30;->glCheckFramebufferStatus(I)I

    move-result v0

    invoke-static {v2, v4}, Landroid/opengl/GLES30;->glBindFramebuffer(II)V

    const v2, 0x8cd5

    if-eq v0, v2, :cond_223

    iget-object v2, p0, Lcom/oplus/glcomponent/gl/framebuffer/FrameBuffer;->mTextureAttachments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_17a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_18f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oplus/glcomponent/gl/texture/Texture;

    const-string v6, "texture"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v5}, Lcom/oplus/glcomponent/gl/framebuffer/FrameBuffer;->disposeColorTexture(Lcom/oplus/glcomponent/gl/texture/GLTexture;)V

    goto :goto_17a

    :cond_18f
    iget-boolean v2, p0, Lcom/oplus/glcomponent/gl/framebuffer/FrameBuffer;->mHasDepthStencilPackedBuffer:Z

    if-eqz v2, :cond_19b

    sget-object v1, Lcom/oplus/glcomponent/utils/GLTool;->INSTANCE:Lcom/oplus/glcomponent/utils/GLTool;

    iget v2, p0, Lcom/oplus/glcomponent/gl/framebuffer/FrameBuffer;->mDepthStencilPackedBufferHandle:I

    invoke-virtual {v1, v2}, Lcom/oplus/glcomponent/utils/GLTool;->glDeleteBuffer(I)V

    goto :goto_1b5

    :cond_19b
    invoke-virtual {v1}, Lcom/oplus/glcomponent/gl/framebuffer/GLFrameBufferBuilder;->getHasDepthRenderBuffer()Z

    move-result v2

    if-eqz v2, :cond_1a8

    sget-object v2, Lcom/oplus/glcomponent/utils/GLTool;->INSTANCE:Lcom/oplus/glcomponent/utils/GLTool;

    iget v5, p0, Lcom/oplus/glcomponent/gl/framebuffer/FrameBuffer;->mDepthBufferHandle:I

    invoke-virtual {v2, v5}, Lcom/oplus/glcomponent/utils/GLTool;->glDeleteRenderbuffer(I)V

    :cond_1a8
    invoke-virtual {v1}, Lcom/oplus/glcomponent/gl/framebuffer/GLFrameBufferBuilder;->getHasStencilRenderBuffer()Z

    move-result v1

    if-eqz v1, :cond_1b5

    sget-object v1, Lcom/oplus/glcomponent/utils/GLTool;->INSTANCE:Lcom/oplus/glcomponent/utils/GLTool;

    iget v2, p0, Lcom/oplus/glcomponent/gl/framebuffer/FrameBuffer;->mStencilBufferHandle:I

    invoke-virtual {v1, v2}, Lcom/oplus/glcomponent/utils/GLTool;->glDeleteRenderbuffer(I)V

    :cond_1b5
    :goto_1b5
    sget-object v1, Lcom/oplus/glcomponent/utils/GLTool;->INSTANCE:Lcom/oplus/glcomponent/utils/GLTool;

    iget p0, p0, Lcom/oplus/glcomponent/gl/framebuffer/FrameBuffer;->mFBOHandle:I

    invoke-virtual {v1, p0}, Lcom/oplus/glcomponent/utils/GLTool;->glDeleteFramebuffer(I)V

    const p0, 0x8cd6

    if-eq v0, p0, :cond_1c3

    move p0, v3

    goto :goto_1c4

    :cond_1c3
    move p0, v4

    :goto_1c4
    if-eqz p0, :cond_217

    const p0, 0x8cd9

    if-eq v0, p0, :cond_1cd

    move p0, v3

    goto :goto_1ce

    :cond_1cd
    move p0, v4

    :goto_1ce
    if-eqz p0, :cond_20b

    const p0, 0x8cd7

    if-eq v0, p0, :cond_1d7

    move p0, v3

    goto :goto_1d8

    :cond_1d7
    move p0, v4

    :goto_1d8
    if-eqz p0, :cond_1ff

    const p0, 0x8cdd

    if-eq v0, p0, :cond_1e0

    goto :goto_1e1

    :cond_1e0
    move v3, v4

    :goto_1e1
    if-nez v3, :cond_1ef

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Frame buffer couldn\'t be constructed: unsupported combination of formats"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1ef
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "Frame buffer couldn\'t be constructed: unknown error "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1ff
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Frame buffer couldn\'t be constructed: missing attachment"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_20b
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Frame buffer couldn\'t be constructed: incomplete dimensions"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_217
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Frame buffer couldn\'t be constructed: incomplete attachment"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_223
    :goto_223
    return-void
.end method

.method private final createTexture(Lcom/oplus/glcomponent/gl/framebuffer/FrameBufferTextureAttachmentSpec;)Lcom/oplus/glcomponent/gl/texture/Texture;
    .registers 4

    sget-object v0, Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData$Factory;->INSTANCE:Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData$Factory;

    iget-object p1, p1, Lcom/oplus/glcomponent/gl/framebuffer/FrameBufferTextureAttachmentSpec;->format:Lcom/oplus/glcomponent/gl/data/PixelFormat;

    invoke-virtual {p0}, Lcom/oplus/glcomponent/gl/framebuffer/FrameBuffer;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/oplus/glcomponent/gl/framebuffer/FrameBuffer;->getHeight()I

    move-result p0

    invoke-virtual {v0, p1, v1, p0}, Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData$Factory;->createWithFormat(Lcom/oplus/glcomponent/gl/data/PixelFormat;II)Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData;

    move-result-object p0

    new-instance p1, Lcom/oplus/glcomponent/gl/texture/Texture;

    invoke-direct {p1, p0}, Lcom/oplus/glcomponent/gl/texture/Texture;-><init>(Lcom/oplus/glcomponent/gl/texture/texturedata/TextureData;)V

    sget-object p0, Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;->Linear:Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;

    invoke-virtual {p1, p0, p0}, Lcom/oplus/glcomponent/gl/texture/GLTexture;->setFilter(Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;Lcom/oplus/glcomponent/gl/texture/Texture$TextureFilter;)V

    sget-object p0, Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;->ClampToEdge:Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;

    invoke-virtual {p1, p0, p0}, Lcom/oplus/glcomponent/gl/texture/GLTexture;->setWrap(Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;Lcom/oplus/glcomponent/gl/texture/Texture$TextureWrap;)V

    return-object p1
.end method

.method private final destroy()V
    .registers 4

    iget-object v0, p0, Lcom/oplus/glcomponent/gl/framebuffer/FrameBuffer;->mTextureAttachments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/glcomponent/gl/texture/Texture;

    const-string v2, "texture"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/oplus/glcomponent/gl/framebuffer/FrameBuffer;->disposeColorTexture(Lcom/oplus/glcomponent/gl/texture/GLTexture;)V

    goto :goto_6

    :cond_1b
    iget-boolean v0, p0, Lcom/oplus/glcomponent/gl/framebuffer/FrameBuffer;->mHasDepthStencilPackedBuffer:Z

    if-eqz v0, :cond_27

    sget-object v0, Lcom/oplus/glcomponent/utils/GLTool;->INSTANCE:Lcom/oplus/glcomponent/utils/GLTool;

    iget v1, p0, Lcom/oplus/glcomponent/gl/framebuffer/FrameBuffer;->mDepthStencilPackedBufferHandle:I

    invoke-virtual {v0, v1}, Lcom/oplus/glcomponent/utils/GLTool;->glDeleteRenderbuffer(I)V

    goto :goto_46

    :cond_27
    iget-object v0, p0, Lcom/oplus/glcomponent/gl/framebuffer/FrameBuffer;->mBufferBuilder:Lcom/oplus/glcomponent/gl/framebuffer/GLFrameBufferBuilder;

    if-nez v0, :cond_2c

    goto :goto_46

    :cond_2c
    invoke-virtual {v0}, Lcom/oplus/glcomponent/gl/framebuffer/GLFrameBufferBuilder;->getHasDepthRenderBuffer()Z

    move-result v1

    if-eqz v1, :cond_39

    sget-object v1, Lcom/oplus/glcomponent/utils/GLTool;->INSTANCE:Lcom/oplus/glcomponent/utils/GLTool;

    iget v2, p0, Lcom/oplus/glcomponent/gl/framebuffer/FrameBuffer;->mDepthBufferHandle:I

    invoke-virtual {v1, v2}, Lcom/oplus/glcomponent/utils/GLTool;->glDeleteRenderbuffer(I)V

    :cond_39
    invoke-virtual {v0}, Lcom/oplus/glcomponent/gl/framebuffer/GLFrameBufferBuilder;->getHasStencilRenderBuffer()Z

    move-result v0

    if-eqz v0, :cond_46

    sget-object v0, Lcom/oplus/glcomponent/utils/GLTool;->INSTANCE:Lcom/oplus/glcomponent/utils/GLTool;

    iget v1, p0, Lcom/oplus/glcomponent/gl/framebuffer/FrameBuffer;->mStencilBufferHandle:I

    invoke-virtual {v0, v1}, Lcom/oplus/glcomponent/utils/GLTool;->glDeleteRenderbuffer(I)V

    :cond_46
    :goto_46
    sget-object v0, Lcom/oplus/glcomponent/utils/GLTool;->INSTANCE:Lcom/oplus/glcomponent/utils/GLTool;

    iget p0, p0, Lcom/oplus/glcomponent/gl/framebuffer/FrameBuffer;->mFBOHandle:I

    invoke-virtual {v0, p0}, Lcom/oplus/glcomponent/utils/GLTool;->glDeleteFramebuffer(I)V

    return-void
.end method

.method private final disposeColorTexture(Lcom/oplus/glcomponent/gl/texture/GLTexture;)V
    .registers 2

    invoke-virtual {p1}, Lcom/oplus/glcomponent/gl/texture/GLTexture;->dispose()V

    return-void
.end method


# virtual methods
.method public final begin()V
    .registers 3

    iget v0, p0, Lcom/oplus/glcomponent/gl/framebuffer/FrameBuffer;->mFBOHandle:I

    const v1, 0x8d40

    invoke-static {v1, v0}, Landroid/opengl/GLES30;->glBindFramebuffer(II)V

    iget-object p0, p0, Lcom/oplus/glcomponent/gl/framebuffer/FrameBuffer;->mBufferBuilder:Lcom/oplus/glcomponent/gl/framebuffer/GLFrameBufferBuilder;

    if-nez p0, :cond_e

    const/4 p0, 0x0

    goto :goto_1c

    :cond_e
    invoke-virtual {p0}, Lcom/oplus/glcomponent/gl/framebuffer/GLFrameBufferBuilder;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/oplus/glcomponent/gl/framebuffer/GLFrameBufferBuilder;->getHeight()I

    move-result p0

    const/4 v1, 0x0

    invoke-static {v1, v1, v0, p0}, Landroid/opengl/GLES30;->glViewport(IIII)V

    sget-object p0, Ly2/p;->a:Ly2/p;

    :goto_1c
    if-nez p0, :cond_27

    sget-object p0, Lcom/oplus/glcomponent/utils/Debugger;->INSTANCE:Lcom/oplus/glcomponent/utils/Debugger;

    const-string v0, "FrameBuffer"

    const-string v1, "bind() error BufferBuilder is null!!"

    invoke-virtual {p0, v0, v1}, Lcom/oplus/glcomponent/utils/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_27
    return-void
.end method

.method public dispose()V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/glcomponent/gl/framebuffer/FrameBuffer;->destroy()V

    return-void
.end method

.method public final end(IIII)V
    .registers 6

    const p0, 0x8d40

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/opengl/GLES30;->glBindFramebuffer(II)V

    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES30;->glViewport(IIII)V

    return-void
.end method

.method public final getColorBufferTexture()Lcom/oplus/glcomponent/gl/texture/Texture;
    .registers 1

    iget-object p0, p0, Lcom/oplus/glcomponent/gl/framebuffer/FrameBuffer;->mTextureAttachments:Ljava/util/ArrayList;

    invoke-static {p0}, Lz2/r;->A(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/glcomponent/gl/texture/Texture;

    return-object p0
.end method

.method public final getHeight()I
    .registers 1

    iget-object p0, p0, Lcom/oplus/glcomponent/gl/framebuffer/FrameBuffer;->mBufferBuilder:Lcom/oplus/glcomponent/gl/framebuffer/GLFrameBufferBuilder;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {p0}, Lcom/oplus/glcomponent/gl/framebuffer/GLFrameBufferBuilder;->getHeight()I

    move-result p0

    :goto_a
    return p0
.end method

.method public final getWidth()I
    .registers 1

    iget-object p0, p0, Lcom/oplus/glcomponent/gl/framebuffer/FrameBuffer;->mBufferBuilder:Lcom/oplus/glcomponent/gl/framebuffer/GLFrameBufferBuilder;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {p0}, Lcom/oplus/glcomponent/gl/framebuffer/GLFrameBufferBuilder;->getWidth()I

    move-result p0

    :goto_a
    return p0
.end method
