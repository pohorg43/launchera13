.class public Lh0/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public final a:Ljava/io/InputStream;

.field public final b:Ljava/nio/charset/Charset;

.field public c:[B

.field public d:I

.field public e:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_20

    sget-object v0, Lh0/c;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    iput-object p1, p0, Lh0/b;->a:Ljava/io/InputStream;

    iput-object p2, p0, Lh0/b;->b:Ljava/nio/charset/Charset;

    const/16 p1, 0x2000

    new-array p1, p1, [B

    iput-object p1, p0, Lh0/b;->c:[B

    return-void

    :cond_18
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unsupported encoding"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_20
    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public final a()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lh0/b;->a:Ljava/io/InputStream;

    iget-object v1, p0, Lh0/b;->c:[B

    array-length v2, v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_12

    iput v3, p0, Lh0/b;->d:I

    iput v0, p0, Lh0/b;->e:I

    return-void

    :cond_12
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method public b()Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lh0/b;->a:Ljava/io/InputStream;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lh0/b;->c:[B

    if-eqz v1, :cond_7f

    iget v1, p0, Lh0/b;->d:I

    iget v2, p0, Lh0/b;->e:I

    if-lt v1, v2, :cond_10

    invoke-virtual {p0}, Lh0/b;->a()V

    :cond_10
    iget v1, p0, Lh0/b;->d:I

    :goto_12
    iget v2, p0, Lh0/b;->e:I

    const/16 v3, 0xa

    if-eq v1, v2, :cond_41

    iget-object v2, p0, Lh0/b;->c:[B

    aget-byte v4, v2, v1

    if-ne v4, v3, :cond_3e

    iget v3, p0, Lh0/b;->d:I

    if-eq v1, v3, :cond_2b

    add-int/lit8 v4, v1, -0x1

    aget-byte v5, v2, v4

    const/16 v6, 0xd

    if-ne v5, v6, :cond_2b

    goto :goto_2c

    :cond_2b
    move v4, v1

    :goto_2c
    new-instance v5, Ljava/lang/String;

    sub-int/2addr v4, v3

    iget-object v6, p0, Lh0/b;->b:Ljava/nio/charset/Charset;

    invoke-virtual {v6}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v2, v3, v4, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lh0/b;->d:I

    monitor-exit v0

    return-object v5

    :cond_3e
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_41
    new-instance v1, Lh0/b$a;

    iget v2, p0, Lh0/b;->e:I

    iget v4, p0, Lh0/b;->d:I

    sub-int/2addr v2, v4

    add-int/lit8 v2, v2, 0x50

    invoke-direct {v1, p0, v2}, Lh0/b$a;-><init>(Lh0/b;I)V

    :cond_4d
    iget-object v2, p0, Lh0/b;->c:[B

    iget v4, p0, Lh0/b;->d:I

    iget v5, p0, Lh0/b;->e:I

    sub-int/2addr v5, v4

    invoke-virtual {v1, v2, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    const/4 v2, -0x1

    iput v2, p0, Lh0/b;->e:I

    invoke-virtual {p0}, Lh0/b;->a()V

    iget v2, p0, Lh0/b;->d:I

    :goto_5f
    iget v4, p0, Lh0/b;->e:I

    if-eq v2, v4, :cond_4d

    iget-object v4, p0, Lh0/b;->c:[B

    aget-byte v5, v4, v2

    if-ne v5, v3, :cond_7c

    iget v3, p0, Lh0/b;->d:I

    if-eq v2, v3, :cond_72

    sub-int v5, v2, v3

    invoke-virtual {v1, v4, v3, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :cond_72
    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lh0/b;->d:I

    invoke-virtual {v1}, Lh0/b$a;->toString()Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :cond_7c
    add-int/lit8 v2, v2, 0x1

    goto :goto_5f

    :cond_7f
    new-instance p0, Ljava/io/IOException;

    const-string v1, "LineReader is closed"

    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_87
    move-exception p0

    monitor-exit v0
    :try_end_89
    .catchall {:try_start_3 .. :try_end_89} :catchall_87

    throw p0
.end method

.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lh0/b;->a:Ljava/io/InputStream;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lh0/b;->c:[B

    if-eqz v1, :cond_f

    const/4 v1, 0x0

    iput-object v1, p0, Lh0/b;->c:[B

    iget-object p0, p0, Lh0/b;->a:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_f
    monitor-exit v0

    return-void

    :catchall_11
    move-exception p0

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p0
.end method
