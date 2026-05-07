.class public final Lk0/c;
.super Ljava/io/OutputStream;
.source ""


# instance fields
.field public final a:Ljava/io/OutputStream;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public b:[B

.field public c:Ln0/b;

.field public d:I


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Ln0/b;)V
    .registers 4
    .param p1  # Ljava/io/OutputStream;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Ln0/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    iput-object p1, p0, Lk0/c;->a:Ljava/io/OutputStream;

    iput-object p2, p0, Lk0/c;->c:Ln0/b;

    const-class p1, [B

    const/high16 v0, 0x10000

    invoke-interface {p2, v0, p1}, Ln0/b;->e(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lk0/c;->b:[B

    return-void
.end method


# virtual methods
.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lk0/c;->flush()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_15

    iget-object v0, p0, Lk0/c;->a:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    iget-object v0, p0, Lk0/c;->b:[B

    if-eqz v0, :cond_14

    iget-object v1, p0, Lk0/c;->c:Ln0/b;

    invoke-interface {v1, v0}, Ln0/b;->d(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lk0/c;->b:[B

    :cond_14
    return-void

    :catchall_15
    move-exception v0

    iget-object p0, p0, Lk0/c;->a:Ljava/io/OutputStream;

    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    throw v0
.end method

.method public flush()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lk0/c;->d:I

    if-lez v0, :cond_e

    iget-object v1, p0, Lk0/c;->a:Ljava/io/OutputStream;

    iget-object v2, p0, Lk0/c;->b:[B

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    iput v3, p0, Lk0/c;->d:I

    :cond_e
    iget-object p0, p0, Lk0/c;->a:Ljava/io/OutputStream;

    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public write(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lk0/c;->b:[B

    iget v1, p0, Lk0/c;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lk0/c;->d:I

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    array-length p1, v0

    if-ne v2, p1, :cond_18

    if-lez v2, :cond_18

    iget-object p1, p0, Lk0/c;->a:Ljava/io/OutputStream;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    iput v1, p0, Lk0/c;->d:I

    :cond_18
    return-void
.end method

.method public write([B)V
    .registers 4
    .param p1  # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lk0/c;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .registers 10
    .param p1  # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :cond_2
    sub-int v2, p3, v1

    add-int v3, p2, v1

    iget v4, p0, Lk0/c;->d:I

    if-nez v4, :cond_15

    iget-object v5, p0, Lk0/c;->b:[B

    array-length v5, v5

    if-lt v2, v5, :cond_15

    iget-object p0, p0, Lk0/c;->a:Ljava/io/OutputStream;

    invoke-virtual {p0, p1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    return-void

    :cond_15
    iget-object v5, p0, Lk0/c;->b:[B

    array-length v5, v5

    sub-int/2addr v5, v4

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v4, p0, Lk0/c;->b:[B

    iget v5, p0, Lk0/c;->d:I

    invoke-static {p1, v3, v4, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, p0, Lk0/c;->d:I

    add-int/2addr v3, v2

    iput v3, p0, Lk0/c;->d:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lk0/c;->b:[B

    array-length v4, v2

    if-ne v3, v4, :cond_38

    if-lez v3, :cond_38

    iget-object v4, p0, Lk0/c;->a:Ljava/io/OutputStream;

    invoke-virtual {v4, v2, v0, v3}, Ljava/io/OutputStream;->write([BII)V

    iput v0, p0, Lk0/c;->d:I

    :cond_38
    if-lt v1, p3, :cond_2

    return-void
.end method
