.class public final Ll2/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ll2/d;

.field public final synthetic b:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Ll2/d;Landroid/graphics/Bitmap;)V
    .registers 3

    iput-object p1, p0, Ll2/c;->a:Ll2/d;

    iput-object p2, p0, Ll2/c;->b:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Ll2/c;->a:Ll2/d;

    iget-object v0, v0, Ll2/d;->t:Lp2/b;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lp2/b;->dispose()V

    :cond_9
    iget-object v0, p0, Ll2/c;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq v1, v2, :cond_1f

    iget-object v0, p0, Ll2/c;->b:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v1, "bitmap.copy(Bitmap.Config.ARGB_8888, false)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1f
    iget-object p0, p0, Ll2/c;->a:Ll2/d;

    new-instance v1, Lp2/b;

    invoke-direct {v1, v0}, Lp2/b;-><init>(Landroid/graphics/Bitmap;)V

    sget-object v0, Lp2/b$a;->c:Lp2/b$a;

    const-string v2, "minFilter"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "magFilter"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, v1, Lp2/a;->a:Lp2/b$a;

    iput-object v0, v1, Lp2/a;->b:Lp2/b$a;

    iget v0, v1, Lp2/a;->f:I

    const/16 v2, 0xde1

    invoke-static {v2, v0}, Landroid/opengl/GLES30;->glBindTexture(II)V

    const/16 v0, 0x2801

    const/16 v3, 0x2601

    invoke-static {v2, v0, v3}, Landroid/opengl/GLES30;->glTexParameteri(III)V

    const/16 v0, 0x2800

    invoke-static {v2, v0, v3}, Landroid/opengl/GLES30;->glTexParameteri(III)V

    iput-object v1, p0, Ll2/d;->t:Lp2/b;

    return-void
.end method
