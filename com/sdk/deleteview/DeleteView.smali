.class public final Lcom/sdk/deleteview/DeleteView;
.super Landroid/opengl/GLSurfaceView;
.source ""


# instance fields
.field public final a:Ll2/d;

.field public final b:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sdk/deleteview/DeleteView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 10

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Ll2/d;

    invoke-direct {p2, p1}, Ll2/d;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/sdk/deleteview/DeleteView;->a:Ll2/d;

    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    sput-object p1, Lu2/a;->a:Landroid/content/res/AssetManager;

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Landroid/opengl/GLSurfaceView;->setEGLContextClientVersion(I)V

    const/16 v1, 0x8

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/16 v4, 0x8

    const/16 v5, 0x10

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/opengl/GLSurfaceView;->setEGLConfigChooser(IIIIII)V

    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    const/4 v0, -0x3

    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->setFormat(I)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/opengl/GLSurfaceView;->setZOrderOnTop(Z)V

    invoke-virtual {p0, p2}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    new-instance p1, Lcom/sdk/deleteview/DeleteView$a;

    invoke-direct {p1, p0}, Lcom/sdk/deleteview/DeleteView$a;-><init>(Lcom/sdk/deleteview/DeleteView;)V

    iput-object p1, p0, Lcom/sdk/deleteview/DeleteView;->b:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;Z)V
    .registers 3

    const-string p2, "bitmap"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sdk/deleteview/DeleteView;->a:Ll2/d;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Ll2/b;

    invoke-direct {p2, p0}, Ll2/b;-><init>(Ll2/d;)V

    invoke-virtual {p0, p2}, Ll2/f;->a(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p2

    if-nez p2, :cond_23

    new-instance p2, Ll2/c;

    invoke-direct {p2, p0, p1}, Ll2/c;-><init>(Ll2/d;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, p2}, Ll2/f;->a(Ljava/lang/Runnable;)V

    :cond_23
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 2

    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/sdk/deleteview/DeleteView;->a:Ll2/d;

    invoke-virtual {v0}, Ll2/d;->dispose()V

    iget-object v0, p0, Lcom/sdk/deleteview/DeleteView;->b:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final setDefaultBitmap(Landroid/graphics/Bitmap;)V
    .registers 3

    iget-object p0, p0, Lcom/sdk/deleteview/DeleteView;->a:Ll2/d;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_15

    iput-object p1, p0, Ll2/d;->j:Landroid/graphics/Bitmap;

    :cond_15
    return-void
.end method

.method public final setDefaultResource(I)V
    .registers 3

    iget-object p0, p0, Lcom/sdk/deleteview/DeleteView;->a:Ll2/d;

    new-instance v0, Ll2/a;

    invoke-direct {v0, p0, p1}, Ll2/a;-><init>(Ll2/d;I)V

    invoke-virtual {p0, v0}, Ll2/f;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final setSpeed(F)V
    .registers 2

    iget-object p0, p0, Lcom/sdk/deleteview/DeleteView;->a:Ll2/d;

    iput p1, p0, Ll2/d;->n:F

    return-void
.end method
