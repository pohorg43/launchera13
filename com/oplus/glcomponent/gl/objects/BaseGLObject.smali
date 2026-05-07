.class public abstract Lcom/oplus/glcomponent/gl/objects/BaseGLObject;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/glcomponent/gl/utils/Disposable;


# instance fields
.field public mVertexArray:Lcom/oplus/glcomponent/gl/data/VertexArray;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract bindAttribute(Lcom/oplus/glcomponent/gl/program/ShaderProgram;)V
.end method

.method public dispose()V
    .registers 1

    invoke-virtual {p0}, Lcom/oplus/glcomponent/gl/objects/BaseGLObject;->getMVertexArray()Lcom/oplus/glcomponent/gl/data/VertexArray;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/glcomponent/gl/data/VertexArray;->dispose()V

    return-void
.end method

.method public final getMVertexArray()Lcom/oplus/glcomponent/gl/data/VertexArray;
    .registers 1

    iget-object p0, p0, Lcom/oplus/glcomponent/gl/objects/BaseGLObject;->mVertexArray:Lcom/oplus/glcomponent/gl/data/VertexArray;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const-string p0, "mVertexArray"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final setMVertexArray(Lcom/oplus/glcomponent/gl/data/VertexArray;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/glcomponent/gl/objects/BaseGLObject;->mVertexArray:Lcom/oplus/glcomponent/gl/data/VertexArray;

    return-void
.end method
