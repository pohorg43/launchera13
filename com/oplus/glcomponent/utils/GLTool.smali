.class public final Lcom/oplus/glcomponent/utils/GLTool;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final INSTANCE:Lcom/oplus/glcomponent/utils/GLTool;

.field private static final TAG:Ljava/lang/String; = "GLTool"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/glcomponent/utils/GLTool;

    invoke-direct {v0}, Lcom/oplus/glcomponent/utils/GLTool;-><init>()V

    sput-object v0, Lcom/oplus/glcomponent/utils/GLTool;->INSTANCE:Lcom/oplus/glcomponent/utils/GLTool;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final glDeleteBuffer(I)V
    .registers 3

    invoke-static {}, Lcom/oplus/glcomponent/utils/IdPool;->getBufferId()[I

    move-result-object p0

    const/4 v0, 0x0

    aput p1, p0, v0

    const/4 p1, 0x1

    invoke-static {p1, p0, v0}, Landroid/opengl/GLES30;->glDeleteBuffers(I[II)V

    invoke-static {p0}, Lcom/oplus/glcomponent/utils/IdPool;->recycleId([I)V

    return-void
.end method

.method public final glDeleteFramebuffer(I)V
    .registers 3

    invoke-static {}, Lcom/oplus/glcomponent/utils/IdPool;->getBufferId()[I

    move-result-object p0

    const/4 v0, 0x0

    aput p1, p0, v0

    const/4 p1, 0x1

    invoke-static {p1, p0, v0}, Landroid/opengl/GLES30;->glDeleteFramebuffers(I[II)V

    invoke-static {p0}, Lcom/oplus/glcomponent/utils/IdPool;->recycleId([I)V

    return-void
.end method

.method public final glDeleteRenderbuffer(I)V
    .registers 3

    invoke-static {}, Lcom/oplus/glcomponent/utils/IdPool;->getBufferId()[I

    move-result-object p0

    const/4 v0, 0x0

    aput p1, p0, v0

    const/4 p1, 0x1

    invoke-static {p1, p0, v0}, Landroid/opengl/GLES30;->glDeleteRenderbuffers(I[II)V

    invoke-static {p0}, Lcom/oplus/glcomponent/utils/IdPool;->recycleId([I)V

    return-void
.end method

.method public final glDeleteTexture(I)V
    .registers 3

    invoke-static {}, Lcom/oplus/glcomponent/utils/IdPool;->getTextureId()[I

    move-result-object p0

    const/4 v0, 0x0

    aput p1, p0, v0

    const/4 p1, 0x1

    invoke-static {p1, p0, v0}, Landroid/opengl/GLES30;->glDeleteTextures(I[II)V

    invoke-static {p0}, Lcom/oplus/glcomponent/utils/IdPool;->recycleId([I)V

    return-void
.end method

.method public final glGenBuffer()I
    .registers 5

    invoke-static {}, Lcom/oplus/glcomponent/utils/IdPool;->getBufferId()[I

    move-result-object p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Landroid/opengl/GLES30;->glGenBuffers(I[II)V

    aget v0, p0, v1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_17

    sget-object v0, Lcom/oplus/glcomponent/utils/Debugger;->INSTANCE:Lcom/oplus/glcomponent/utils/Debugger;

    const-string v2, "GLTool"

    const-string v3, "Generate VBO failed!"

    invoke-virtual {v0, v2, v3}, Lcom/oplus/glcomponent/utils/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_17
    invoke-static {p0}, Lcom/oplus/glcomponent/utils/IdPool;->recycleId([I)V

    aget p0, p0, v1

    return p0
.end method

.method public final glGenFramebuffer()I
    .registers 5

    invoke-static {}, Lcom/oplus/glcomponent/utils/IdPool;->getBufferId()[I

    move-result-object p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Landroid/opengl/GLES30;->glGenFramebuffers(I[II)V

    aget v0, p0, v1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_17

    sget-object v0, Lcom/oplus/glcomponent/utils/Debugger;->INSTANCE:Lcom/oplus/glcomponent/utils/Debugger;

    const-string v2, "GLTool"

    const-string v3, "Generate frame buffer failed!"

    invoke-virtual {v0, v2, v3}, Lcom/oplus/glcomponent/utils/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_17
    invoke-static {p0}, Lcom/oplus/glcomponent/utils/IdPool;->recycleId([I)V

    aget p0, p0, v1

    return p0
.end method

.method public final glGenRenderbuffer()I
    .registers 5

    invoke-static {}, Lcom/oplus/glcomponent/utils/IdPool;->getBufferId()[I

    move-result-object p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Landroid/opengl/GLES30;->glGenRenderbuffers(I[II)V

    aget v0, p0, v1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_17

    sget-object v0, Lcom/oplus/glcomponent/utils/Debugger;->INSTANCE:Lcom/oplus/glcomponent/utils/Debugger;

    const-string v2, "GLTool"

    const-string v3, "Generate render buffer failed!"

    invoke-virtual {v0, v2, v3}, Lcom/oplus/glcomponent/utils/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_17
    invoke-static {p0}, Lcom/oplus/glcomponent/utils/IdPool;->recycleId([I)V

    aget p0, p0, v1

    return p0
.end method

.method public final glGenTexture()I
    .registers 5

    invoke-static {}, Lcom/oplus/glcomponent/utils/IdPool;->getTextureId()[I

    move-result-object p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Landroid/opengl/GLES30;->glGenTextures(I[II)V

    aget v0, p0, v1

    if-nez v0, :cond_16

    sget-object v0, Lcom/oplus/glcomponent/utils/Debugger;->INSTANCE:Lcom/oplus/glcomponent/utils/Debugger;

    const-string v2, "GLTool"

    const-string v3, "Generate Texture failed!"

    invoke-virtual {v0, v2, v3}, Lcom/oplus/glcomponent/utils/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_16
    invoke-static {p0}, Lcom/oplus/glcomponent/utils/IdPool;->recycleId([I)V

    aget p0, p0, v1

    return p0
.end method
