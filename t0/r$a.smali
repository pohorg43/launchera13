.class public Lt0/r$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lt0/j$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt0/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Lt0/q;

.field public final b:Lcom/bumptech/glide/util/c;


# direct methods
.method public constructor <init>(Lt0/q;Lcom/bumptech/glide/util/c;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt0/r$a;->a:Lt0/q;

    iput-object p2, p0, Lt0/r$a;->b:Lcom/bumptech/glide/util/c;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object p0, p0, Lt0/r$a;->a:Lt0/q;

    monitor-enter p0

    :try_start_3
    iget-object v0, p0, Lt0/q;->a:[B

    array-length v0, v0

    iput v0, p0, Lt0/q;->c:I
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-void

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Ln0/c;Landroid/graphics/Bitmap;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lt0/r$a;->b:Lcom/bumptech/glide/util/c;

    iget-object p0, p0, Lcom/bumptech/glide/util/c;->b:Ljava/io/IOException;

    if-eqz p0, :cond_c

    if-eqz p2, :cond_b

    invoke-interface {p1, p2}, Ln0/c;->d(Landroid/graphics/Bitmap;)V

    :cond_b
    throw p0

    :cond_c
    return-void
.end method
