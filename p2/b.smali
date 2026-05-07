.class public final Lp2/b;
.super Lp2/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp2/b$a;
    }
.end annotation


# instance fields
.field public g:Lr2/b;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .registers 8

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lr2/a;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, v1}, Lr2/a;-><init>(Landroid/graphics/Bitmap;ZZ)V

    invoke-static {}, Lu2/b;->a()[I

    move-result-object p1

    const/4 v2, 0x1

    invoke-static {v2, p1, v1}, Landroid/opengl/GLES30;->glGenTextures(I[II)V

    aget v3, p1, v1

    if-nez v3, :cond_2a

    const-string v3, "Generate Texture failed!"

    const-string v4, "GLTool"

    const-string v5, "tag"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "msg"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "EffectsEngine_GLTool"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    invoke-static {p1}, Lu2/b;->b([I)V

    aget p1, p1, v1

    const/16 v3, 0xde1

    invoke-direct {p0, v3, p1}, Lp2/a;-><init>(II)V

    iput-object v0, p0, Lp2/b;->g:Lr2/b;

    iget p1, p0, Lp2/a;->f:I

    invoke-static {v3, p1}, Landroid/opengl/GLES30;->glBindTexture(II)V

    iget-object p1, v0, Lr2/a;->a:Landroid/graphics/Bitmap;

    iget-boolean v4, v0, Lr2/a;->c:Z

    const/16 v5, 0xcf5

    invoke-static {v5, v2}, Landroid/opengl/GLES30;->glPixelStorei(II)V

    invoke-static {v3, v1, p1, v1}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    iget-boolean v0, v0, Lr2/a;->b:Z

    if-eqz v0, :cond_4e

    invoke-static {v3}, Landroid/opengl/GLES30;->glGenerateMipmap(I)V

    :cond_4e
    if-eqz v4, :cond_55

    if-eqz p1, :cond_55

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_55
    iget-object p1, p0, Lp2/a;->a:Lp2/b$a;

    iget-object v0, p0, Lp2/a;->b:Lp2/b$a;

    invoke-virtual {p0, p1, v0, v2}, Lp2/a;->a(Lp2/b$a;Lp2/b$a;Z)V

    iget p1, p0, Lp2/a;->c:I

    iget v0, p0, Lp2/a;->d:I

    invoke-virtual {p0, p1, v0, v2}, Lp2/a;->b(IIZ)V

    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 4

    iget-object v0, p0, Lp2/b;->g:Lr2/b;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ls2/a;->dispose()V

    :cond_7
    iget v0, p0, Lp2/a;->f:I

    if-eqz v0, :cond_1b

    invoke-static {}, Lu2/b;->a()[I

    move-result-object v1

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x1

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES30;->glDeleteTextures(I[II)V

    invoke-static {v1}, Lu2/b;->b([I)V

    iput v2, p0, Lp2/a;->f:I

    :cond_1b
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
