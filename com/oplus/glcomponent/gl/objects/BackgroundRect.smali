.class public final Lcom/oplus/glcomponent/gl/objects/BackgroundRect;
.super Lcom/oplus/glcomponent/gl/objects/Rect;
.source ""


# direct methods
.method public constructor <init>(Z)V
    .registers 10

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1e

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/oplus/glcomponent/gl/objects/Rect;-><init>(ZFFLcom/oplus/glcomponent/math/Vector3;Lcom/oplus/glcomponent/math/Vector2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public final bindAttributeAndDraw(Lcom/oplus/glcomponent/gl/program/ShaderProgram;)V
    .registers 6

    const-string v0, "program"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "a_position"

    invoke-virtual {p1, v0}, Lcom/oplus/glcomponent/gl/program/ShaderProgram;->getAttributeLocation(Ljava/lang/String;)I

    move-result v1

    const-string v2, "a_texCoord0"

    invoke-virtual {p1, v2}, Lcom/oplus/glcomponent/gl/program/ShaderProgram;->getAttributeLocation(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v1, v3}, Lcom/oplus/glcomponent/gl/objects/Rect;->bindAttribute(II)V

    invoke-virtual {p0}, Lcom/oplus/glcomponent/gl/objects/Rect;->draw()V

    invoke-virtual {p1, v0}, Lcom/oplus/glcomponent/gl/program/ShaderProgram;->getAttributeLocation(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v2}, Lcom/oplus/glcomponent/gl/program/ShaderProgram;->getAttributeLocation(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/oplus/glcomponent/gl/objects/Rect;->unbindAttribute(II)V

    return-void
.end method
