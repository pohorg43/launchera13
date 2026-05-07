.class public final Lcom/oplus/glcomponent/gl/data/VertexArray;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/glcomponent/gl/utils/Disposable;


# instance fields
.field private final mVertexArrayId:I

.field private final mVertexBufferId:I


# direct methods
.method public constructor <init>(ILjava/nio/Buffer;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES30;->glGenVertexArrays(I[II)V

    aget v0, v1, v2

    iput v0, p0, Lcom/oplus/glcomponent/gl/data/VertexArray;->mVertexArrayId:I

    if-nez v0, :cond_18

    sget-object p1, Lcom/oplus/glcomponent/utils/Debugger;->INSTANCE:Lcom/oplus/glcomponent/utils/Debugger;

    const-string p2, "can not create array objects"

    invoke-virtual {p1, p2}, Lcom/oplus/glcomponent/utils/Debugger;->e(Ljava/lang/String;)V

    goto :goto_3a

    :cond_18
    sget-object v0, Lcom/oplus/glcomponent/utils/GLTool;->INSTANCE:Lcom/oplus/glcomponent/utils/GLTool;

    invoke-virtual {v0}, Lcom/oplus/glcomponent/utils/GLTool;->glGenBuffer()I

    move-result v0

    if-nez v0, :cond_28

    sget-object p1, Lcom/oplus/glcomponent/utils/Debugger;->INSTANCE:Lcom/oplus/glcomponent/utils/Debugger;

    const-string p2, "can not create vertex buffer objects"

    invoke-virtual {p1, p2}, Lcom/oplus/glcomponent/utils/Debugger;->e(Ljava/lang/String;)V

    goto :goto_39

    :cond_28
    const v1, 0x8892

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    mul-int/lit8 p1, p1, 0x4

    const v3, 0x88e4

    invoke-static {v1, p1, p2, v3}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    :goto_39
    move v2, v0

    :goto_3a
    iput v2, p0, Lcom/oplus/glcomponent/gl/data/VertexArray;->mVertexBufferId:I

    sget-object p0, Lcom/oplus/glcomponent/utils/Debugger;->INSTANCE:Lcom/oplus/glcomponent/utils/Debugger;

    invoke-virtual {p0}, Lcom/oplus/glcomponent/utils/Debugger;->isDevelopMode()Z

    move-result p1

    if-eqz p1, :cond_54

    invoke-virtual {p0}, Lcom/oplus/glcomponent/utils/Debugger;->checkGlError()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_4b

    goto :goto_54

    :cond_4b
    const-string p2, "create vertexArray error: "

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oplus/glcomponent/utils/Debugger;->printTrace(Ljava/lang/String;)V

    :cond_54
    :goto_54
    return-void
.end method


# virtual methods
.method public final afterDraw()V
    .registers 1

    const/4 p0, 0x0

    invoke-static {p0}, Landroid/opengl/GLES30;->glBindVertexArray(I)V

    return-void
.end method

.method public final beforeDraw()V
    .registers 1

    iget p0, p0, Lcom/oplus/glcomponent/gl/data/VertexArray;->mVertexArrayId:I

    invoke-static {p0}, Landroid/opengl/GLES30;->glBindVertexArray(I)V

    return-void
.end method

.method public final disableVertexAttribute(I)V
    .registers 2

    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    return-void
.end method

.method public dispose()V
    .registers 5

    const/4 v0, 0x1

    new-array v1, v0, [I

    iget v2, p0, Lcom/oplus/glcomponent/gl/data/VertexArray;->mVertexBufferId:I

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {v0, v1, v3}, Landroid/opengl/GLES20;->glDeleteBuffers(I[II)V

    new-array v1, v0, [I

    iget p0, p0, Lcom/oplus/glcomponent/gl/data/VertexArray;->mVertexArrayId:I

    aput p0, v1, v3

    invoke-static {v0, v1, v3}, Landroid/opengl/GLES30;->glDeleteVertexArrays(I[II)V

    return-void
.end method

.method public final setAttribute(IIII)V
    .registers 12

    iget v0, p0, Lcom/oplus/glcomponent/gl/data/VertexArray;->mVertexArrayId:I

    invoke-static {v0}, Landroid/opengl/GLES30;->glBindVertexArray(I)V

    iget p0, p0, Lcom/oplus/glcomponent/gl/data/VertexArray;->mVertexBufferId:I

    const v0, 0x8892

    invoke-static {v0, p0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    mul-int/lit8 v5, p4, 0x4

    mul-int/lit8 v6, p3, 0x4

    const/16 v3, 0x1406

    const/4 v4, 0x0

    move v1, p1

    move v2, p2

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    const/4 p0, 0x0

    invoke-static {v0, p0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    invoke-static {p0}, Landroid/opengl/GLES30;->glBindVertexArray(I)V

    return-void
.end method

.method public final updateData(IILjava/nio/Buffer;)V
    .registers 5

    const-string v0, "data"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget p0, p0, Lcom/oplus/glcomponent/gl/data/VertexArray;->mVertexBufferId:I

    const v0, 0x8892

    invoke-static {v0, p0}, Landroid/opengl/GLES30;->glBindBuffer(II)V

    mul-int/lit8 p1, p1, 0x4

    mul-int/lit8 p2, p2, 0x4

    const/16 p0, 0xa

    invoke-static {v0, p1, p2, p0}, Landroid/opengl/GLES30;->glMapBufferRange(IIII)Ljava/nio/Buffer;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type java.nio.ByteBuffer"

    invoke-static {p0, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p0

    check-cast p3, Ljava/nio/FloatBuffer;

    invoke-virtual {p0, p3}, Ljava/nio/FloatBuffer;->put(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    invoke-static {v0}, Landroid/opengl/GLES30;->glUnmapBuffer(I)Z

    invoke-static {v0, p1}, Landroid/opengl/GLES30;->glBindBuffer(II)V

    return-void
.end method
