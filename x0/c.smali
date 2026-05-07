.class public Lx0/c;
.super Lv0/b;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lv0/b<",
        "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
        ">;",
        "Lm0/s;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/resource/gif/GifDrawable;)V
    .registers 2

    invoke-direct {p0, p1}, Lv0/b;-><init>(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public b()I
    .registers 2

    iget-object p0, p0, Lv0/b;->a:Landroid/graphics/drawable/Drawable;

    check-cast p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    iget-object p0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->a:Lcom/bumptech/glide/load/resource/gif/GifDrawable$a;

    iget-object p0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable$a;->a:Lcom/bumptech/glide/load/resource/gif/b;

    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/b;->a:Li0/a;

    invoke-interface {v0}, Li0/a;->g()I

    move-result v0

    iget p0, p0, Lcom/bumptech/glide/load/resource/gif/b;->o:I

    add-int/2addr v0, p0

    return v0
.end method

.method public c()Ljava/lang/Class;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            ">;"
        }
    .end annotation

    const-class p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    return-object p0
.end method

.method public initialize()V
    .registers 1

    iget-object p0, p0, Lv0/b;->a:Landroid/graphics/drawable/Drawable;

    check-cast p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->b()Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->prepareToDraw()V

    return-void
.end method

.method public recycle()V
    .registers 5

    iget-object v0, p0, Lv0/b;->a:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->stop()V

    iget-object p0, p0, Lv0/b;->a:Landroid/graphics/drawable/Drawable;

    check-cast p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->d:Z

    iget-object p0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->a:Lcom/bumptech/glide/load/resource/gif/GifDrawable$a;

    iget-object p0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable$a;->a:Lcom/bumptech/glide/load/resource/gif/b;

    iget-object v1, p0, Lcom/bumptech/glide/load/resource/gif/b;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/bumptech/glide/load/resource/gif/b;->l:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    if-eqz v1, :cond_23

    iget-object v3, p0, Lcom/bumptech/glide/load/resource/gif/b;->e:Ln0/c;

    invoke-interface {v3, v1}, Ln0/c;->d(Landroid/graphics/Bitmap;)V

    iput-object v2, p0, Lcom/bumptech/glide/load/resource/gif/b;->l:Landroid/graphics/Bitmap;

    :cond_23
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/bumptech/glide/load/resource/gif/b;->f:Z

    iget-object v1, p0, Lcom/bumptech/glide/load/resource/gif/b;->i:Lcom/bumptech/glide/load/resource/gif/b$a;

    if-eqz v1, :cond_31

    iget-object v3, p0, Lcom/bumptech/glide/load/resource/gif/b;->d:Lcom/bumptech/glide/h;

    invoke-virtual {v3, v1}, Lcom/bumptech/glide/h;->i(Ld1/d;)V

    iput-object v2, p0, Lcom/bumptech/glide/load/resource/gif/b;->i:Lcom/bumptech/glide/load/resource/gif/b$a;

    :cond_31
    iget-object v1, p0, Lcom/bumptech/glide/load/resource/gif/b;->k:Lcom/bumptech/glide/load/resource/gif/b$a;

    if-eqz v1, :cond_3c

    iget-object v3, p0, Lcom/bumptech/glide/load/resource/gif/b;->d:Lcom/bumptech/glide/h;

    invoke-virtual {v3, v1}, Lcom/bumptech/glide/h;->i(Ld1/d;)V

    iput-object v2, p0, Lcom/bumptech/glide/load/resource/gif/b;->k:Lcom/bumptech/glide/load/resource/gif/b$a;

    :cond_3c
    iget-object v1, p0, Lcom/bumptech/glide/load/resource/gif/b;->n:Lcom/bumptech/glide/load/resource/gif/b$a;

    if-eqz v1, :cond_47

    iget-object v3, p0, Lcom/bumptech/glide/load/resource/gif/b;->d:Lcom/bumptech/glide/h;

    invoke-virtual {v3, v1}, Lcom/bumptech/glide/h;->i(Ld1/d;)V

    iput-object v2, p0, Lcom/bumptech/glide/load/resource/gif/b;->n:Lcom/bumptech/glide/load/resource/gif/b$a;

    :cond_47
    iget-object v1, p0, Lcom/bumptech/glide/load/resource/gif/b;->a:Li0/a;

    invoke-interface {v1}, Li0/a;->clear()V

    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/b;->j:Z

    return-void
.end method
