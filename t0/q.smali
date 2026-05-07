.class public Lt0/q;
.super Ljava/io/FilterInputStream;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lt0/q$a;
    }
.end annotation


# instance fields
.field public volatile a:[B

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public final f:Ln0/b;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ln0/b;)V
    .registers 4
    .param p1  # Ljava/io/InputStream;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Ln0/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 p1, -0x1

    iput p1, p0, Lt0/q;->d:I

    iput-object p2, p0, Lt0/q;->f:Ln0/b;

    const-class p1, [B

    const/high16 v0, 0x10000

    invoke-interface {p2, v0, p1}, Ln0/b;->e(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lt0/q;->a:[B

    return-void
.end method

.method public static c()Ljava/io/IOException;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/IOException;

    const-string v1, "BufferedInputStream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a(Ljava/io/InputStream;[B)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lt0/q;->d:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_57

    iget v3, p0, Lt0/q;->e:I

    sub-int/2addr v3, v0

    iget v4, p0, Lt0/q;->c:I

    if-lt v3, v4, :cond_e

    goto :goto_57

    :cond_e
    if-nez v0, :cond_36

    array-length v1, p2

    if-le v4, v1, :cond_36

    iget v1, p0, Lt0/q;->b:I

    array-length v3, p2

    if-ne v1, v3, :cond_36

    array-length v0, p2

    mul-int/lit8 v0, v0, 0x2

    if-le v0, v4, :cond_1e

    goto :goto_1f

    :cond_1e
    move v4, v0

    :goto_1f
    iget-object v0, p0, Lt0/q;->f:Ln0/b;

    const-class v1, [B

    invoke-interface {v0, v4, v1}, Ln0/b;->e(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v1, p2

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lt0/q;->a:[B

    iget-object v1, p0, Lt0/q;->f:Ln0/b;

    invoke-interface {v1, p2}, Ln0/b;->d(Ljava/lang/Object;)V

    move-object p2, v0

    goto :goto_3d

    :cond_36
    if-lez v0, :cond_3d

    array-length v1, p2

    sub-int/2addr v1, v0

    invoke-static {p2, v0, p2, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3d
    :goto_3d
    iget v0, p0, Lt0/q;->e:I

    iget v1, p0, Lt0/q;->d:I

    sub-int/2addr v0, v1

    iput v0, p0, Lt0/q;->e:I

    iput v2, p0, Lt0/q;->d:I

    iput v2, p0, Lt0/q;->b:I

    array-length v1, p2

    sub-int/2addr v1, v0

    invoke-virtual {p1, p2, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    iget p2, p0, Lt0/q;->e:I

    if-gtz p1, :cond_53

    goto :goto_54

    :cond_53
    add-int/2addr p2, p1

    :goto_54
    iput p2, p0, Lt0/q;->b:I

    return p1

    :cond_57
    :goto_57
    invoke-virtual {p1, p2}, Ljava/io/InputStream;->read([B)I

    move-result p1

    if-lez p1, :cond_63

    iput v1, p0, Lt0/q;->d:I

    iput v2, p0, Lt0/q;->e:I

    iput p1, p0, Lt0/q;->b:I

    :cond_63
    return p1
.end method

.method public declared-synchronized available()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    iget-object v1, p0, Lt0/q;->a:[B

    if-eqz v1, :cond_15

    if-eqz v0, :cond_15

    iget v1, p0, Lt0/q;->b:I

    iget v2, p0, Lt0/q;->e:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_1a

    add-int/2addr v1, v0

    monitor-exit p0

    return v1

    :cond_15
    :try_start_15
    invoke-static {}, Lt0/q;->c()Ljava/io/IOException;

    const/4 v0, 0x0

    throw v0
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_1a

    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lt0/q;->a:[B

    if-eqz v0, :cond_f

    iget-object v0, p0, Lt0/q;->f:Ln0/b;

    iget-object v1, p0, Lt0/q;->a:[B

    invoke-interface {v0, v1}, Ln0/b;->d(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lt0/q;->a:[B
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    :cond_f
    monitor-exit p0

    return-void

    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public close()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lt0/q;->a:[B

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lt0/q;->f:Ln0/b;

    iget-object v2, p0, Lt0/q;->a:[B

    invoke-interface {v0, v2}, Ln0/b;->d(Ljava/lang/Object;)V

    iput-object v1, p0, Lt0/q;->a:[B

    :cond_e
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    iput-object v1, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_17
    return-void
.end method

.method public declared-synchronized mark(I)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lt0/q;->c:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lt0/q;->c:I

    iget p1, p0, Lt0/q;->e:I

    iput p1, p0, Lt0/q;->d:I
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-void

    :catchall_f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public markSupported()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public declared-synchronized read()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lt0/q;->a:[B

    iget-object v1, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    const/4 v2, 0x0

    if-eqz v0, :cond_39

    if-eqz v1, :cond_39

    iget v3, p0, Lt0/q;->e:I

    iget v4, p0, Lt0/q;->b:I

    const/4 v5, -0x1

    if-lt v3, v4, :cond_19

    invoke-virtual {p0, v1, v0}, Lt0/q;->a(Ljava/io/InputStream;[B)I

    move-result v1
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_3d

    if-ne v1, v5, :cond_19

    monitor-exit p0

    return v5

    :cond_19
    :try_start_19
    iget-object v1, p0, Lt0/q;->a:[B

    if-eq v0, v1, :cond_26

    iget-object v0, p0, Lt0/q;->a:[B

    if-eqz v0, :cond_22

    goto :goto_26

    :cond_22
    invoke-static {}, Lt0/q;->c()Ljava/io/IOException;

    throw v2

    :cond_26
    :goto_26
    iget v1, p0, Lt0/q;->b:I

    iget v2, p0, Lt0/q;->e:I

    sub-int/2addr v1, v2

    if-lez v1, :cond_37

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lt0/q;->e:I

    aget-byte v0, v0, v2
    :try_end_33
    .catchall {:try_start_19 .. :try_end_33} :catchall_3d

    and-int/lit16 v0, v0, 0xff

    monitor-exit p0

    return v0

    :cond_37
    monitor-exit p0

    return v5

    :cond_39
    :try_start_39
    invoke-static {}, Lt0/q;->c()Ljava/io/IOException;

    throw v2
    :try_end_3d
    .catchall {:try_start_39 .. :try_end_3d} :catchall_3d

    :catchall_3d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized read([BII)I
    .registers 11
    .param p1  # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lt0/q;->a:[B
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_8e

    const/4 v1, 0x0

    if-eqz v0, :cond_8a

    if-nez p3, :cond_b

    const/4 p1, 0x0

    monitor-exit p0

    return p1

    :cond_b
    :try_start_b
    iget-object v2, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    if-eqz v2, :cond_86

    iget v3, p0, Lt0/q;->e:I

    iget v4, p0, Lt0/q;->b:I

    if-ge v3, v4, :cond_33

    sub-int v5, v4, v3

    if-lt v5, p3, :cond_1b

    move v4, p3

    goto :goto_1c

    :cond_1b
    sub-int/2addr v4, v3

    :goto_1c
    invoke-static {v0, v3, p1, p2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, p0, Lt0/q;->e:I

    add-int/2addr v3, v4

    iput v3, p0, Lt0/q;->e:I

    if-eq v4, p3, :cond_31

    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v3
    :try_end_2a
    .catchall {:try_start_b .. :try_end_2a} :catchall_8e

    if-nez v3, :cond_2d

    goto :goto_31

    :cond_2d
    add-int/2addr p2, v4

    sub-int v3, p3, v4

    goto :goto_34

    :cond_31
    :goto_31
    monitor-exit p0

    return v4

    :cond_33
    move v3, p3

    :goto_34
    :try_start_34
    iget v4, p0, Lt0/q;->d:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_49

    array-length v4, v0

    if-lt v3, v4, :cond_49

    invoke-virtual {v2, p1, p2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v4
    :try_end_40
    .catchall {:try_start_34 .. :try_end_40} :catchall_8e

    if-ne v4, v5, :cond_76

    if-ne v3, p3, :cond_45

    goto :goto_47

    :cond_45
    sub-int v5, p3, v3

    :goto_47
    monitor-exit p0

    return v5

    :cond_49
    :try_start_49
    invoke-virtual {p0, v2, v0}, Lt0/q;->a(Ljava/io/InputStream;[B)I

    move-result v4
    :try_end_4d
    .catchall {:try_start_49 .. :try_end_4d} :catchall_8e

    if-ne v4, v5, :cond_56

    if-ne v3, p3, :cond_52

    goto :goto_54

    :cond_52
    sub-int v5, p3, v3

    :goto_54
    monitor-exit p0

    return v5

    :cond_56
    :try_start_56
    iget-object v4, p0, Lt0/q;->a:[B

    if-eq v0, v4, :cond_63

    iget-object v0, p0, Lt0/q;->a:[B

    if-eqz v0, :cond_5f

    goto :goto_63

    :cond_5f
    invoke-static {}, Lt0/q;->c()Ljava/io/IOException;

    throw v1

    :cond_63
    :goto_63
    iget v4, p0, Lt0/q;->b:I

    iget v5, p0, Lt0/q;->e:I

    sub-int v6, v4, v5

    if-lt v6, v3, :cond_6d

    move v4, v3

    goto :goto_6e

    :cond_6d
    sub-int/2addr v4, v5

    :goto_6e
    invoke-static {v0, v5, p1, p2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v5, p0, Lt0/q;->e:I

    add-int/2addr v5, v4

    iput v5, p0, Lt0/q;->e:I
    :try_end_76
    .catchall {:try_start_56 .. :try_end_76} :catchall_8e

    :cond_76
    sub-int/2addr v3, v4

    if-nez v3, :cond_7b

    monitor-exit p0

    return p3

    :cond_7b
    :try_start_7b
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v5
    :try_end_7f
    .catchall {:try_start_7b .. :try_end_7f} :catchall_8e

    if-nez v5, :cond_84

    sub-int/2addr p3, v3

    monitor-exit p0

    return p3

    :cond_84
    add-int/2addr p2, v4

    goto :goto_34

    :cond_86
    :try_start_86
    invoke-static {}, Lt0/q;->c()Ljava/io/IOException;

    throw v1

    :cond_8a
    invoke-static {}, Lt0/q;->c()Ljava/io/IOException;

    throw v1
    :try_end_8e
    .catchall {:try_start_86 .. :try_end_8e} :catchall_8e

    :catchall_8e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized reset()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lt0/q;->a:[B

    if-eqz v0, :cond_31

    const/4 v0, -0x1

    iget v1, p0, Lt0/q;->d:I

    if-eq v0, v1, :cond_e

    iput v1, p0, Lt0/q;->e:I
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_39

    monitor-exit p0

    return-void

    :cond_e
    :try_start_e
    new-instance v0, Lt0/q$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mark has been invalidated, pos: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lt0/q;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " markLimit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lt0/q;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lt0/q$a;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_31
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_39
    .catchall {:try_start_e .. :try_end_39} :catchall_39

    :catchall_39
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized skip(J)J
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    const-wide/16 v0, 0x1

    cmp-long v0, p1, v0

    if-gez v0, :cond_b

    const-wide/16 p1, 0x0

    monitor-exit p0

    return-wide p1

    :cond_b
    :try_start_b
    iget-object v0, p0, Lt0/q;->a:[B

    const/4 v1, 0x0

    if-eqz v0, :cond_68

    iget-object v2, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    if-eqz v2, :cond_64

    iget v1, p0, Lt0/q;->b:I

    iget v3, p0, Lt0/q;->e:I

    sub-int v4, v1, v3

    int-to-long v4, v4

    cmp-long v4, v4, p1

    if-ltz v4, :cond_26

    int-to-long v0, v3

    add-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lt0/q;->e:I
    :try_end_24
    .catchall {:try_start_b .. :try_end_24} :catchall_6c

    monitor-exit p0

    return-wide p1

    :cond_26
    int-to-long v4, v1

    int-to-long v6, v3

    sub-long/2addr v4, v6

    :try_start_29
    iput v1, p0, Lt0/q;->e:I

    iget v1, p0, Lt0/q;->d:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_5c

    iget v1, p0, Lt0/q;->c:I

    int-to-long v6, v1

    cmp-long v1, p1, v6

    if-gtz v1, :cond_5c

    invoke-virtual {p0, v2, v0}, Lt0/q;->a(Ljava/io/InputStream;[B)I

    move-result v0
    :try_end_3b
    .catchall {:try_start_29 .. :try_end_3b} :catchall_6c

    if-ne v0, v3, :cond_3f

    monitor-exit p0

    return-wide v4

    :cond_3f
    :try_start_3f
    iget v0, p0, Lt0/q;->b:I

    iget v1, p0, Lt0/q;->e:I

    sub-int v2, v0, v1

    int-to-long v2, v2

    sub-long v6, p1, v4

    cmp-long v2, v2, v6

    if-ltz v2, :cond_54

    int-to-long v0, v1

    add-long/2addr v0, p1

    sub-long/2addr v0, v4

    long-to-int v0, v0

    iput v0, p0, Lt0/q;->e:I
    :try_end_52
    .catchall {:try_start_3f .. :try_end_52} :catchall_6c

    monitor-exit p0

    return-wide p1

    :cond_54
    int-to-long p1, v0

    add-long/2addr v4, p1

    int-to-long p1, v1

    sub-long/2addr v4, p1

    :try_start_58
    iput v0, p0, Lt0/q;->e:I
    :try_end_5a
    .catchall {:try_start_58 .. :try_end_5a} :catchall_6c

    monitor-exit p0

    return-wide v4

    :cond_5c
    sub-long/2addr p1, v4

    :try_start_5d
    invoke-virtual {v2, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide p1
    :try_end_61
    .catchall {:try_start_5d .. :try_end_61} :catchall_6c

    add-long/2addr v4, p1

    monitor-exit p0

    return-wide v4

    :cond_64
    :try_start_64
    invoke-static {}, Lt0/q;->c()Ljava/io/IOException;

    throw v1

    :cond_68
    invoke-static {}, Lt0/q;->c()Ljava/io/IOException;

    throw v1
    :try_end_6c
    .catchall {:try_start_64 .. :try_end_6c} :catchall_6c

    :catchall_6c
    move-exception p1

    monitor-exit p0

    throw p1
.end method
