.class public Lt0/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lj0/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lj0/f<",
        "Landroid/graphics/drawable/BitmapDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ln0/c;

.field public final b:Lj0/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj0/f<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ln0/c;Lj0/f;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln0/c;",
            "Lj0/f<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt0/b;->a:Ln0/c;

    iput-object p2, p0, Lt0/b;->b:Lj0/f;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/io/File;Lj0/e;)Z
    .registers 6
    .param p1  # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Lj0/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lm0/w;

    iget-object v0, p0, Lt0/b;->b:Lj0/f;

    new-instance v1, Lt0/e;

    invoke-interface {p1}, Lm0/w;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object p0, p0, Lt0/b;->a:Ln0/c;

    invoke-direct {v1, p1, p0}, Lt0/e;-><init>(Landroid/graphics/Bitmap;Ln0/c;)V

    invoke-interface {v0, v1, p2, p3}, Lj0/a;->a(Ljava/lang/Object;Ljava/io/File;Lj0/e;)Z

    move-result p0

    return p0
.end method

.method public b(Lj0/e;)Lcom/bumptech/glide/load/c;
    .registers 2
    .param p1  # Lj0/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lt0/b;->b:Lj0/f;

    invoke-interface {p0, p1}, Lj0/f;->b(Lj0/e;)Lcom/bumptech/glide/load/c;

    move-result-object p0

    return-object p0
.end method
