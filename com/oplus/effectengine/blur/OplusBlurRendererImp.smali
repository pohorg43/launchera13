.class public final Lcom/oplus/effectengine/blur/OplusBlurRendererImp;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/effectengine/blur/OplusBlurRenderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/effectengine/blur/OplusBlurRendererImp$Companion;
    }
.end annotation


# static fields
.field private static final BLUR_DOWN_FRAGMENT:Ljava/lang/String; = "blur_down_fragment_shader.glsl"

.field private static final BLUR_DOWN_VERTEX:Ljava/lang/String; = "blur_down_vertex_shader.glsl"

.field private static final BLUR_ITERATION:I = 0x4

.field private static final BLUR_UP_FRAGMENT:Ljava/lang/String; = "blur_up_fragment_shader.glsl"

.field private static final BLUR_UP_VERTEX:Ljava/lang/String; = "blur_up_vertex_shader.glsl"

.field public static final Companion:Lcom/oplus/effectengine/blur/OplusBlurRendererImp$Companion;

.field private static final DISPLAY_FRAGMENT:Ljava/lang/String; = "display_fragment_shader.glsl"

.field private static final DISPLAY_VERTEX:Ljava/lang/String; = "display_vertex_shader.glsl"

.field private static final TAG:Ljava/lang/String; = "BlurUtil"


# instance fields
.field private blurDownProgram:Lcom/oplus/glcomponent/gl/program/ShaderProgram;

.field private final blurIterationFbo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oplus/glcomponent/gl/framebuffer/FrameBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private blurUpProgram:Lcom/oplus/glcomponent/gl/program/ShaderProgram;

.field private brightness:F

.field private displayProgram:Lcom/oplus/glcomponent/gl/program/ShaderProgram;

.field private ditherMax:F

.field private ditherMin:F

.field private height:I

.field private originTexture:Lcom/oplus/glcomponent/gl/texture/Texture;

.field private prepared:Z

.field private radius:F

.field private rect:Lcom/oplus/glcomponent/gl/objects/Rect;

.field private width:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/effectengine/blur/OplusBlurRendererImp$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/effectengine/blur/OplusBlurRendererImp$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/effectengine/blur/OplusBlurRendererImp;->Companion:Lcom/oplus/effectengine/blur/OplusBlurRendererImp$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lcom/oplus/effectengine/blur/OplusBlurRendererImp;->brightness:F

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/effectengine/blur/OplusBlurRendererImp;->blurIterationFbo:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public isPrepared()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/effectengine/blur/OplusBlurRendererImp;->prepared:Z

    return p0
.end method

.method public onSizeChange(II)V
    .registers 15

    iput p1, p0, Lcom/oplus/effectengine/blur/OplusBlurRendererImp;->width:I

    iput p2, p0, Lcom/oplus/effectengine/blur/OplusBlurRendererImp;->height:I

    const/4 v0, 0x0

    :goto_5
    add-int/lit8 v1, v0, 0x1

    shr-int v4, p1, v0

    shr-int v5, p2, v0

    const/4 v2, 0x2

    if-lt v4, v2, :cond_2d

    if-ge v5, v2, :cond_11

    goto :goto_2d

    :cond_11
    iget-object v10, p0, Lcom/oplus/effectengine/blur/OplusBlurRendererImp;->blurIterationFbo:Ljava/util/ArrayList;

    new-instance v11, Lcom/oplus/glcomponent/gl/framebuffer/FrameBuffer;

    sget-object v2, Lcom/oplus/glcomponent/gl/data/PixelFormat;->Companion:Lcom/oplus/glcomponent/gl/data/PixelFormat$Companion;

    invoke-virtual {v2}, Lcom/oplus/glcomponent/gl/data/PixelFormat$Companion;->getRGBA_8888()Lcom/oplus/glcomponent/gl/data/PixelFormat;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x10

    const/4 v9, 0x0

    move-object v2, v11

    invoke-direct/range {v2 .. v9}, Lcom/oplus/glcomponent/gl/framebuffer/FrameBuffer;-><init>(Lcom/oplus/glcomponent/gl/data/PixelFormat;IIZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v10, v0, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 v0, 0x4

    if-lt v1, v0, :cond_2b

    goto :goto_2d

    :cond_2b
    move v0, v1

    goto :goto_5

    :cond_2d
    :goto_2d
    sget-object p0, Lcom/oplus/glcomponent/utils/Debugger;->INSTANCE:Lcom/oplus/glcomponent/utils/Debugger;

    const-string p1, "BlurUtil"

    const-string p2, "create "

    invoke-virtual {p0, p1, p2}, Lcom/oplus/glcomponent/utils/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public prepare(I)Z
    .registers 12

    new-instance p1, Lcom/oplus/glcomponent/gl/program/ShaderProgram;

    const-string v0, "blur_down_vertex_shader.glsl"

    const-string v1, "blur_down_fragment_shader.glsl"

    invoke-direct {p1, v0, v1}, Lcom/oplus/glcomponent/gl/program/ShaderProgram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/effectengine/blur/OplusBlurRendererImp;->blurDownProgram:Lcom/oplus/glcomponent/gl/program/ShaderProgram;

    new-instance p1, Lcom/oplus/glcomponent/gl/program/ShaderProgram;

    const-string v0, "blur_up_vertex_shader.glsl"

    const-string v1, "blur_up_fragment_shader.glsl"

    invoke-direct {p1, v0, v1}, Lcom/oplus/glcomponent/gl/program/ShaderProgram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/effectengine/blur/OplusBlurRendererImp;->blurUpProgram:Lcom/oplus/glcomponent/gl/program/ShaderProgram;

    new-instance p1, Lcom/oplus/glcomponent/gl/program/ShaderProgram;

    const-string v0, "display_vertex_shader.glsl"

    const-string v1, "display_fragment_shader.glsl"

    invoke-direct {p1, v0, v1}, Lcom/oplus/glcomponent/gl/program/ShaderProgram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/effectengine/blur/OplusBlurRendererImp;->displayProgram:Lcom/oplus/glcomponent/gl/program/ShaderProgram;

    iget-object p1, p0, Lcom/oplus/effectengine/blur/OplusBlurRendererImp;->blurDownProgram:Lcom/oplus/glcomponent/gl/program/ShaderProgram;

    const-string v0, "blurDownProgram"

    const/4 v1, 0x0

    if-nez p1, :cond_2c

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_2c
    invoke-virtual {p1}, Lcom/oplus/glcomponent/gl/program/ShaderProgram;->getProgram()I

    move-result p1

    const/4 v2, -0x1

    if-eq p1, v2, :cond_55

    iget-object p1, p0, Lcom/oplus/effectengine/blur/OplusBlurRendererImp;->displayProgram:Lcom/oplus/glcomponent/gl/program/ShaderProgram;

    if-nez p1, :cond_3d

    const-string p1, "displayProgram"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_3d
    invoke-virtual {p1}, Lcom/oplus/glcomponent/gl/program/ShaderProgram;->getProgram()I

    move-result p1

    if-eq p1, v2, :cond_55

    iget-object p1, p0, Lcom/oplus/effectengine/blur/OplusBlurRendererImp;->blurUpProgram:Lcom/oplus/glcomponent/gl/program/ShaderProgram;

    if-nez p1, :cond_4d

    const-string p1, "blurUpProgram"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_4d
    invoke-virtual {p1}, Lcom/oplus/glcomponent/gl/program/ShaderProgram;->getProgram()I

    move-result p1

    if-eq p1, v2, :cond_55

    const/4 p1, 0x1

    goto :goto_56

    :cond_55
    const/4 p1, 0x0

    :goto_56
    iput-boolean p1, p0, Lcom/oplus/effectengine/blur/OplusBlurRendererImp;->prepared:Z

    if-eqz p1, :cond_8c

    new-instance p1, Lcom/oplus/glcomponent/gl/objects/Rect;

    const/4 v3, 0x0

    const/high16 v4, 0x40000000  # 2.0f

    const/high16 v5, 0x40000000  # 2.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x19

    const/4 v9, 0x0

    move-object v2, p1

    invoke-direct/range {v2 .. v9}, Lcom/oplus/glcomponent/gl/objects/Rect;-><init>(ZFFLcom/oplus/glcomponent/math/Vector3;Lcom/oplus/glcomponent/math/Vector2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/oplus/effectengine/blur/OplusBlurRendererImp;->rect:Lcom/oplus/glcomponent/gl/objects/Rect;

    iget-object v2, p0, Lcom/oplus/effectengine/blur/OplusBlurRendererImp;->blurDownProgram:Lcom/oplus/glcomponent/gl/program/ShaderProgram;

    if-nez v2, :cond_74

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v1

    :cond_74
    const-string v3, "a_position"

    invoke-virtual {v2, v3}, Lcom/oplus/glcomponent/gl/program/ShaderProgram;->getAttributeLocation(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/oplus/effectengine/blur/OplusBlurRendererImp;->blurDownProgram:Lcom/oplus/glcomponent/gl/program/ShaderProgram;

    if-nez v3, :cond_82

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_83

    :cond_82
    move-object v1, v3

    :goto_83
    const-string v0, "a_texCoord"

    invoke-virtual {v1, v0}, Lcom/oplus/glcomponent/gl/program/ShaderProgram;->getAttributeLocation(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/oplus/glcomponent/gl/objects/Rect;->bindAttribute(II)V

    :cond_8c
    sget-object p1, Lcom/oplus/glcomponent/utils/Debugger;->INSTANCE:Lcom/oplus/glcomponent/utils/Debugger;

    iget-boolean v0, p0, Lcom/oplus/effectengine/blur/OplusBlurRendererImp;->prepared:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "init blur render: "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "BlurUtil"

    invoke-virtual {p1, v1, v0}, Lcom/oplus/glcomponent/utils/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/oplus/effectengine/blur/OplusBlurRendererImp;->prepared:Z

    return p0
.end method

.method public release()V
    .registers 7

    iget-object v0, p0, Lcom/oplus/effectengine/blur/OplusBlurRendererImp;->rect:Lcom/oplus/glcomponent/gl/objects/Rect;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    const-string v0, "rect"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_b
    invoke-virtual {v0}, Lcom/oplus/glcomponent/gl/objects/Rect;->dispose()V

    iget-object v0, p0, Lcom/oplus/effectengine/blur/OplusBlurRendererImp;->blurIterationFbo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    if-lez v0, :cond_2a

    move v3, v2

    :goto_18
    add-int/lit8 v4, v3, 0x1

    iget-object v5, p0, Lcom/oplus/effectengine/blur/OplusBlurRendererImp;->blurIterationFbo:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oplus/glcomponent/gl/framebuffer/FrameBuffer;

    invoke-virtual {v3}, Lcom/oplus/glcomponent/gl/framebuffer/FrameBuffer;->dispose()V

    if-lt v4, v0, :cond_28

    goto :goto_2a

    :cond_28
    move v3, v4

    goto :goto_18

    :cond_2a
    :goto_2a
    iget-object v0, p0, Lcom/oplus/effectengine/blur/OplusBlurRendererImp;->blurDownProgram:Lcom/oplus/glcomponent/gl/program/ShaderProgram;

    if-nez v0, :cond_34

    const-string v0, "blurDownProgram"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_34
    invoke-virtual {v0}, Lcom/oplus/glcomponent/gl/program/ShaderProgram;->dispose()V

    iget-object v0, p0, Lcom/oplus/effectengine/blur/OplusBlurRendererImp;->blurUpProgram:Lcom/oplus/glcomponent/gl/program/ShaderProgram;

    if-nez v0, :cond_41

    const-string v0, "blurUpProgram"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_41
    invoke-virtual {v0}, Lcom/oplus/glcomponent/gl/program/ShaderProgram;->dispose()V

    iget-object v0, p0, Lcom/oplus/effectengine/blur/OplusBlurRendererImp;->displayProgram:Lcom/oplus/glcomponent/gl/program/ShaderProgram;

    if-nez v0, :cond_4e

    const-string v0, "displayProgram"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_4f

    :cond_4e
    move-object v1, v0

    :goto_4f
    invoke-virtual {v1}, Lcom/oplus/glcomponent/gl/program/ShaderProgram;->dispose()V

    iput-boolean v2, p0, Lcom/oplus/effectengine/blur/OplusBlurRendererImp;->prepared:Z

    return-void
.end method

.method public render(Z)V
    .registers 19

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/oplus/effectengine/blur/OplusBlurRendererImp;->prepared:Z

    if-nez v1, :cond_7

    return-void

    :cond_7
    sget-object v1, Lcom/oplus/glcomponent/utils/Debugger;->INSTANCE:Lcom/oplus/glcomponent/utils/Debugger;

    iget v2, v0, Lcom/oplus/effectengine/blur/OplusBlurRendererImp;->radius:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const-string v3, "render blur: "

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "BlurUtil"

    invoke-virtual {v1, v3, v2}, Lcom/oplus/glcomponent/utils/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/oplus/effectengine/blur/OplusBlurRendererImp;->blurIterationFbo:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v4, "blurIterationFbo[0]"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, v0, Lcom/oplus/effectengine/blur/OplusBlurRendererImp;->blurIterationFbo:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const-string v5, "originTexture"

    const-string v6, "u_texture_2D"

    const/4 v7, 0x0

    const/4 v8, 0x2

    const-string v9, "rect"

    if-lt v4, v8, :cond_12f

    iget v4, v0, Lcom/oplus/effectengine/blur/OplusBlurRendererImp;->radius:F

    cmpl-float v12, v4, v7

    if-lez v12, :cond_12f

    iget-object v13, v0, Lcom/oplus/effectengine/blur/OplusBlurRendererImp;->blurDownProgram:Lcom/oplus/glcomponent/gl/program/ShaderProgram;

    const-string v14, "blurDownProgram"

    if-nez v13, :cond_46

    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v13, 0x0

    :cond_46
    invoke-virtual {v13}, Lcom/oplus/glcomponent/gl/program/ShaderProgram;->begin()V

    iget-object v13, v0, Lcom/oplus/effectengine/blur/OplusBlurRendererImp;->blurDownProgram:Lcom/oplus/glcomponent/gl/program/ShaderProgram;

    if-nez v13, :cond_51

    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v13, 0x0

    :cond_51
    invoke-virtual {v13, v6, v2}, Lcom/oplus/glcomponent/gl/program/ShaderProgram;->setUniformi(Ljava/lang/String;I)V

    move v13, v2

    const/4 v15, 0x1

    :goto_56
    add-int/lit8 v8, v13, 0x1

    iget-object v11, v0, Lcom/oplus/effectengine/blur/OplusBlurRendererImp;->blurIterationFbo:Ljava/util/ArrayList;

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    const-string v13, "blurIterationFbo[i]"

    invoke-static {v11, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v11, Lcom/oplus/glcomponent/gl/framebuffer/FrameBuffer;

    invoke-virtual {v11}, Lcom/oplus/glcomponent/gl/framebuffer/FrameBuffer;->begin()V

    if-eqz v15, :cond_77

    iget-object v15, v0, Lcom/oplus/effectengine/blur/OplusBlurRendererImp;->originTexture:Lcom/oplus/glcomponent/gl/texture/Texture;

    if-nez v15, :cond_72

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v15, 0x0

    :cond_72
    invoke-virtual {v15}, Lcom/oplus/glcomponent/gl/texture/GLTexture;->bind()V

    move v15, v2

    goto :goto_82

    :cond_77
    move-object/from16 v16, v1

    check-cast v16, Lcom/oplus/glcomponent/gl/framebuffer/FrameBuffer;

    invoke-virtual/range {v16 .. v16}, Lcom/oplus/glcomponent/gl/framebuffer/FrameBuffer;->getColorBufferTexture()Lcom/oplus/glcomponent/gl/texture/Texture;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/oplus/glcomponent/gl/texture/GLTexture;->bind()V

    :goto_82
    iget-object v10, v0, Lcom/oplus/effectengine/blur/OplusBlurRendererImp;->blurDownProgram:Lcom/oplus/glcomponent/gl/program/ShaderProgram;

    if-nez v10, :cond_8a

    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v10, 0x0

    :cond_8a
    check-cast v1, Lcom/oplus/glcomponent/gl/framebuffer/FrameBuffer;

    invoke-virtual {v1}, Lcom/oplus/glcomponent/gl/framebuffer/FrameBuffer;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float v7, v4, v7

    invoke-virtual {v1}, Lcom/oplus/glcomponent/gl/framebuffer/FrameBuffer;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v1, v4, v1

    const-string v12, "u_tex_offset"

    invoke-virtual {v10, v12, v7, v1}, Lcom/oplus/glcomponent/gl/program/ShaderProgram;->setUniformf(Ljava/lang/String;FF)V

    iget-object v1, v0, Lcom/oplus/effectengine/blur/OplusBlurRendererImp;->rect:Lcom/oplus/glcomponent/gl/objects/Rect;

    if-nez v1, :cond_a7

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_a7
    invoke-virtual {v1}, Lcom/oplus/glcomponent/gl/objects/Rect;->draw()V

    invoke-virtual {v11}, Lcom/oplus/glcomponent/gl/framebuffer/FrameBuffer;->getWidth()I

    move-result v1

    invoke-virtual {v11}, Lcom/oplus/glcomponent/gl/framebuffer/FrameBuffer;->getHeight()I

    move-result v7

    invoke-virtual {v11, v2, v2, v1, v7}, Lcom/oplus/glcomponent/gl/framebuffer/FrameBuffer;->end(IIII)V

    const/4 v7, 0x4

    if-lt v8, v7, :cond_129

    iget-object v1, v0, Lcom/oplus/effectengine/blur/OplusBlurRendererImp;->blurDownProgram:Lcom/oplus/glcomponent/gl/program/ShaderProgram;

    if-nez v1, :cond_c0

    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_c0
    invoke-virtual {v1}, Lcom/oplus/glcomponent/gl/program/ShaderProgram;->end()V

    iget-object v1, v0, Lcom/oplus/effectengine/blur/OplusBlurRendererImp;->blurUpProgram:Lcom/oplus/glcomponent/gl/program/ShaderProgram;

    const-string v10, "blurUpProgram"

    if-nez v1, :cond_cd

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_cd
    invoke-virtual {v1}, Lcom/oplus/glcomponent/gl/program/ShaderProgram;->begin()V

    const/4 v8, 0x2

    :goto_d1
    add-int/lit8 v1, v8, -0x1

    iget-object v7, v0, Lcom/oplus/effectengine/blur/OplusBlurRendererImp;->blurIterationFbo:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Lcom/oplus/glcomponent/gl/framebuffer/FrameBuffer;

    invoke-virtual {v7}, Lcom/oplus/glcomponent/gl/framebuffer/FrameBuffer;->begin()V

    invoke-virtual {v11}, Lcom/oplus/glcomponent/gl/framebuffer/FrameBuffer;->getColorBufferTexture()Lcom/oplus/glcomponent/gl/texture/Texture;

    move-result-object v8

    invoke-virtual {v8}, Lcom/oplus/glcomponent/gl/texture/GLTexture;->bind()V

    iget-object v8, v0, Lcom/oplus/effectengine/blur/OplusBlurRendererImp;->blurUpProgram:Lcom/oplus/glcomponent/gl/program/ShaderProgram;

    if-nez v8, :cond_f0

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v8, 0x0

    :cond_f0
    invoke-virtual {v11}, Lcom/oplus/glcomponent/gl/framebuffer/FrameBuffer;->getWidth()I

    move-result v14

    int-to-float v14, v14

    div-float v14, v4, v14

    invoke-virtual {v11}, Lcom/oplus/glcomponent/gl/framebuffer/FrameBuffer;->getHeight()I

    move-result v11

    int-to-float v11, v11

    div-float v11, v4, v11

    invoke-virtual {v8, v12, v14, v11}, Lcom/oplus/glcomponent/gl/program/ShaderProgram;->setUniformf(Ljava/lang/String;FF)V

    iget-object v8, v0, Lcom/oplus/effectengine/blur/OplusBlurRendererImp;->rect:Lcom/oplus/glcomponent/gl/objects/Rect;

    if-nez v8, :cond_109

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v8, 0x0

    :cond_109
    invoke-virtual {v8}, Lcom/oplus/glcomponent/gl/objects/Rect;->draw()V

    invoke-virtual {v7}, Lcom/oplus/glcomponent/gl/framebuffer/FrameBuffer;->getWidth()I

    move-result v8

    invoke-virtual {v7}, Lcom/oplus/glcomponent/gl/framebuffer/FrameBuffer;->getHeight()I

    move-result v11

    invoke-virtual {v7, v2, v2, v8, v11}, Lcom/oplus/glcomponent/gl/framebuffer/FrameBuffer;->end(IIII)V

    if-gez v1, :cond_126

    iget-object v1, v0, Lcom/oplus/effectengine/blur/OplusBlurRendererImp;->blurUpProgram:Lcom/oplus/glcomponent/gl/program/ShaderProgram;

    if-nez v1, :cond_121

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_121
    invoke-virtual {v1}, Lcom/oplus/glcomponent/gl/program/ShaderProgram;->end()V

    move-object v1, v7

    goto :goto_12f

    :cond_126
    move v8, v1

    move-object v11, v7

    goto :goto_d1

    :cond_129
    move v13, v8

    move-object v1, v11

    const/4 v7, 0x0

    const/4 v8, 0x2

    goto/16 :goto_56

    :cond_12f
    :goto_12f
    iget-object v4, v0, Lcom/oplus/effectengine/blur/OplusBlurRendererImp;->displayProgram:Lcom/oplus/glcomponent/gl/program/ShaderProgram;

    if-nez v4, :cond_139

    const-string v4, "displayProgram"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v4, 0x0

    :cond_139
    invoke-virtual {v4}, Lcom/oplus/glcomponent/gl/program/ShaderProgram;->begin()V

    invoke-virtual {v4, v6, v2}, Lcom/oplus/glcomponent/gl/program/ShaderProgram;->setUniformi(Ljava/lang/String;I)V

    iget v6, v0, Lcom/oplus/effectengine/blur/OplusBlurRendererImp;->radius:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    const-string v7, "u_revert_y"

    if-lez v6, :cond_158

    if-nez p1, :cond_158

    check-cast v1, Lcom/oplus/glcomponent/gl/framebuffer/FrameBuffer;

    invoke-virtual {v1}, Lcom/oplus/glcomponent/gl/framebuffer/FrameBuffer;->getColorBufferTexture()Lcom/oplus/glcomponent/gl/texture/Texture;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/glcomponent/gl/texture/GLTexture;->bind()V

    const/4 v1, 0x1

    invoke-virtual {v4, v7, v1}, Lcom/oplus/glcomponent/gl/program/ShaderProgram;->setUniformi(Ljava/lang/String;I)V

    goto :goto_166

    :cond_158
    iget-object v1, v0, Lcom/oplus/effectengine/blur/OplusBlurRendererImp;->originTexture:Lcom/oplus/glcomponent/gl/texture/Texture;

    if-nez v1, :cond_160

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_160
    invoke-virtual {v1}, Lcom/oplus/glcomponent/gl/texture/GLTexture;->bind()V

    invoke-virtual {v4, v7, v2}, Lcom/oplus/glcomponent/gl/program/ShaderProgram;->setUniformi(Ljava/lang/String;I)V

    :goto_166
    const-string v1, "u_alpha"

    if-eqz p1, :cond_170

    const/high16 v2, 0x3f000000  # 0.5f

    invoke-virtual {v4, v1, v2}, Lcom/oplus/glcomponent/gl/program/ShaderProgram;->setUniformf(Ljava/lang/String;F)V

    goto :goto_175

    :cond_170
    const/high16 v2, 0x3f800000  # 1.0f

    invoke-virtual {v4, v1, v2}, Lcom/oplus/glcomponent/gl/program/ShaderProgram;->setUniformf(Ljava/lang/String;F)V

    :goto_175
    iget v1, v0, Lcom/oplus/effectengine/blur/OplusBlurRendererImp;->width:I

    int-to-float v1, v1

    iget v2, v0, Lcom/oplus/effectengine/blur/OplusBlurRendererImp;->height:I

    int-to-float v2, v2

    const-string v5, "u_resolution"

    invoke-virtual {v4, v5, v1, v2}, Lcom/oplus/glcomponent/gl/program/ShaderProgram;->setUniformf(Ljava/lang/String;FF)V

    iget v1, v0, Lcom/oplus/effectengine/blur/OplusBlurRendererImp;->brightness:F

    const-string v2, "u_brightness"

    invoke-virtual {v4, v2, v1}, Lcom/oplus/glcomponent/gl/program/ShaderProgram;->setUniformf(Ljava/lang/String;F)V

    iget v1, v0, Lcom/oplus/effectengine/blur/OplusBlurRendererImp;->ditherMin:F

    iget v2, v0, Lcom/oplus/effectengine/blur/OplusBlurRendererImp;->ditherMax:F

    const-string v5, "u_ditherRange"

    invoke-virtual {v4, v5, v1, v2}, Lcom/oplus/glcomponent/gl/program/ShaderProgram;->setUniformf(Ljava/lang/String;FF)V

    iget-object v0, v0, Lcom/oplus/effectengine/blur/OplusBlurRendererImp;->rect:Lcom/oplus/glcomponent/gl/objects/Rect;

    if-nez v0, :cond_199

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v11, 0x0

    goto :goto_19a

    :cond_199
    move-object v11, v0

    :goto_19a
    invoke-virtual {v11}, Lcom/oplus/glcomponent/gl/objects/Rect;->draw()V

    invoke-virtual {v4}, Lcom/oplus/glcomponent/gl/program/ShaderProgram;->end()V

    sget-object v0, Lcom/oplus/glcomponent/utils/Debugger;->INSTANCE:Lcom/oplus/glcomponent/utils/Debugger;

    invoke-virtual {v0}, Lcom/oplus/glcomponent/utils/Debugger;->checkGlError()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1a9

    goto :goto_1b2

    :cond_1a9
    const-string v2, "blur render error: "

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/oplus/glcomponent/utils/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1b2
    return-void
.end method

.method public setParam(FFFF)V
    .registers 5

    iput p1, p0, Lcom/oplus/effectengine/blur/OplusBlurRendererImp;->radius:F

    iput p2, p0, Lcom/oplus/effectengine/blur/OplusBlurRendererImp;->brightness:F

    iput p3, p0, Lcom/oplus/effectengine/blur/OplusBlurRendererImp;->ditherMin:F

    iput p4, p0, Lcom/oplus/effectengine/blur/OplusBlurRendererImp;->ditherMax:F

    return-void
.end method

.method public setRenderTarget(Lcom/oplus/glcomponent/gl/texture/Texture;)V
    .registers 3

    const-string v0, "originTexture"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/effectengine/blur/OplusBlurRendererImp;->originTexture:Lcom/oplus/glcomponent/gl/texture/Texture;

    return-void
.end method
