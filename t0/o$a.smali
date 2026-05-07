.class public final Lt0/o$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lt0/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt0/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lk0/k;

.field public final b:Ln0/b;

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/util/List;Ln0/b;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;",
            "Ln0/b;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Argument must not be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p3, p0, Lt0/o$a;->b:Ln0/b;

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p2, p0, Lt0/o$a;->c:Ljava/util/List;

    new-instance p2, Lk0/k;

    invoke-direct {p2, p1, p3}, Lk0/k;-><init>(Ljava/io/InputStream;Ln0/b;)V

    iput-object p2, p0, Lt0/o$a;->a:Lk0/k;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lt0/o$a;->c:Ljava/util/List;

    iget-object v1, p0, Lt0/o$a;->a:Lk0/k;

    invoke-virtual {v1}, Lk0/k;->c()Ljava/io/InputStream;

    move-result-object v1

    iget-object p0, p0, Lt0/o$a;->b:Ln0/b;

    invoke-static {v0, v1, p0}, Lcom/bumptech/glide/load/d;->a(Ljava/util/List;Ljava/io/InputStream;Ln0/b;)I

    move-result p0

    return p0
.end method

.method public b(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lt0/o$a;->a:Lk0/k;

    invoke-virtual {p0}, Lk0/k;->c()Ljava/io/InputStream;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public c()V
    .registers 2

    iget-object p0, p0, Lt0/o$a;->a:Lk0/k;

    iget-object p0, p0, Lk0/k;->a:Lt0/q;

    monitor-enter p0

    :try_start_5
    iget-object v0, p0, Lt0/q;->a:[B

    array-length v0, v0

    iput v0, p0, Lt0/q;->c:I
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_c

    monitor-exit p0

    return-void

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public d()Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lt0/o$a;->c:Ljava/util/List;

    iget-object v1, p0, Lt0/o$a;->a:Lk0/k;

    invoke-virtual {v1}, Lk0/k;->c()Ljava/io/InputStream;

    move-result-object v1

    iget-object p0, p0, Lt0/o$a;->b:Ln0/b;

    invoke-static {v0, v1, p0}, Lcom/bumptech/glide/load/d;->b(Ljava/util/List;Ljava/io/InputStream;Ln0/b;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object p0

    return-object p0
.end method
