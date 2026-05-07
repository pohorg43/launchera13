.class public final Ly0/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ly0/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ly0/e<",
        "Landroid/graphics/drawable/Drawable;",
        "[B>;"
    }
.end annotation


# instance fields
.field public final a:Ln0/c;

.field public final b:Ly0/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly0/e<",
            "Landroid/graphics/Bitmap;",
            "[B>;"
        }
    .end annotation
.end field

.field public final c:Ly0/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly0/e<",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ln0/c;Ly0/e;Ly0/e;)V
    .registers 4
    .param p1  # Ln0/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Ly0/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Ly0/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln0/c;",
            "Ly0/e<",
            "Landroid/graphics/Bitmap;",
            "[B>;",
            "Ly0/e<",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            "[B>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly0/c;->a:Ln0/c;

    iput-object p2, p0, Ly0/c;->b:Ly0/e;

    iput-object p3, p0, Ly0/c;->c:Ly0/e;

    return-void
.end method


# virtual methods
.method public a(Lm0/w;Lj0/e;)Lm0/w;
    .registers 5
    .param p1  # Lm0/w;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Lj0/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm0/w<",
            "Landroid/graphics/drawable/Drawable;",
            ">;",
            "Lj0/e;",
            ")",
            "Lm0/w<",
            "[B>;"
        }
    .end annotation

    invoke-interface {p1}, Lm0/w;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_1d

    iget-object p1, p0, Ly0/c;->b:Ly0/e;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object p0, p0, Ly0/c;->a:Ln0/c;

    invoke-static {v0, p0}, Lt0/e;->d(Landroid/graphics/Bitmap;Ln0/c;)Lt0/e;

    move-result-object p0

    invoke-interface {p1, p0, p2}, Ly0/e;->a(Lm0/w;Lj0/e;)Lm0/w;

    move-result-object p0

    return-object p0

    :cond_1d
    instance-of v0, v0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    if-eqz v0, :cond_28

    iget-object p0, p0, Ly0/c;->c:Ly0/e;

    invoke-interface {p0, p1, p2}, Ly0/e;->a(Lm0/w;Lj0/e;)Lm0/w;

    move-result-object p0

    return-object p0

    :cond_28
    const/4 p0, 0x0

    return-object p0
.end method
