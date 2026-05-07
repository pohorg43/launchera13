.class public Li0/d;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:[B

.field public b:Ljava/nio/ByteBuffer;

.field public c:Li0/c;

.field public d:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Li0/d;->a:[B

    const/4 v0, 0x0

    iput v0, p0, Li0/d;->d:I

    return-void
.end method


# virtual methods
.method public final a()Z
    .registers 1

    iget-object p0, p0, Li0/d;->c:Li0/c;

    iget p0, p0, Li0/c;->b:I

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public b()Li0/c;
    .registers 10
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Li0/d;->b:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_1fe

    invoke-virtual {p0}, Li0/d;->a()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object p0, p0, Li0/d;->c:Li0/c;

    return-object p0

    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_14
    const/4 v3, 0x6

    if-ge v2, v3, :cond_22

    invoke-virtual {p0}, Li0/d;->c()I

    move-result v3

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "GIF"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-wide/high16 v2, 0x4000000000000000L  # 2.0

    const/4 v4, 0x1

    if-nez v0, :cond_36

    iget-object v0, p0, Li0/d;->c:Li0/c;

    iput v4, v0, Li0/c;->b:I

    goto :goto_90

    :cond_36
    iget-object v0, p0, Li0/d;->c:Li0/c;

    invoke-virtual {p0}, Li0/d;->f()I

    move-result v5

    iput v5, v0, Li0/c;->f:I

    iget-object v0, p0, Li0/d;->c:Li0/c;

    invoke-virtual {p0}, Li0/d;->f()I

    move-result v5

    iput v5, v0, Li0/c;->g:I

    invoke-virtual {p0}, Li0/d;->c()I

    move-result v0

    iget-object v5, p0, Li0/d;->c:Li0/c;

    and-int/lit16 v6, v0, 0x80

    if-eqz v6, :cond_52

    move v6, v4

    goto :goto_53

    :cond_52
    move v6, v1

    :goto_53
    iput-boolean v6, v5, Li0/c;->h:Z

    and-int/lit8 v0, v0, 0x7

    add-int/2addr v0, v4

    int-to-double v6, v0

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-int v0, v6

    iput v0, v5, Li0/c;->i:I

    iget-object v0, p0, Li0/d;->c:Li0/c;

    invoke-virtual {p0}, Li0/d;->c()I

    move-result v5

    iput v5, v0, Li0/c;->j:I

    iget-object v0, p0, Li0/d;->c:Li0/c;

    invoke-virtual {p0}, Li0/d;->c()I

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Li0/d;->c:Li0/c;

    iget-boolean v0, v0, Li0/c;->h:Z

    if-eqz v0, :cond_90

    invoke-virtual {p0}, Li0/d;->a()Z

    move-result v0

    if-nez v0, :cond_90

    iget-object v0, p0, Li0/d;->c:Li0/c;

    iget v5, v0, Li0/c;->i:I

    invoke-virtual {p0, v5}, Li0/d;->e(I)[I

    move-result-object v5

    iput-object v5, v0, Li0/c;->a:[I

    iget-object v0, p0, Li0/d;->c:Li0/c;

    iget-object v5, v0, Li0/c;->a:[I

    iget v6, v0, Li0/c;->j:I

    aget v5, v5, v6

    iput v5, v0, Li0/c;->k:I

    :cond_90
    :goto_90
    invoke-virtual {p0}, Li0/d;->a()Z

    move-result v0

    if-nez v0, :cond_1fb

    move v0, v1

    :cond_97
    :goto_97
    if-nez v0, :cond_1f3

    invoke-virtual {p0}, Li0/d;->a()Z

    move-result v5

    if-nez v5, :cond_1f3

    iget-object v5, p0, Li0/d;->c:Li0/c;

    iget v5, v5, Li0/c;->c:I

    const v6, 0x7fffffff

    if-gt v5, v6, :cond_1f3

    invoke-virtual {p0}, Li0/d;->c()I

    move-result v5

    const/16 v6, 0x21

    if-eq v5, v6, :cond_149

    const/16 v6, 0x2c

    if-eq v5, v6, :cond_bf

    const/16 v6, 0x3b

    if-eq v5, v6, :cond_bd

    iget-object v5, p0, Li0/d;->c:Li0/c;

    iput v4, v5, Li0/c;->b:I

    goto :goto_97

    :cond_bd
    move v0, v4

    goto :goto_97

    :cond_bf
    iget-object v5, p0, Li0/d;->c:Li0/c;

    iget-object v6, v5, Li0/c;->d:Li0/b;

    if-nez v6, :cond_cc

    new-instance v6, Li0/b;

    invoke-direct {v6}, Li0/b;-><init>()V

    iput-object v6, v5, Li0/c;->d:Li0/b;

    :cond_cc
    iget-object v5, v5, Li0/c;->d:Li0/b;

    invoke-virtual {p0}, Li0/d;->f()I

    move-result v6

    iput v6, v5, Li0/b;->a:I

    iget-object v5, p0, Li0/d;->c:Li0/c;

    iget-object v5, v5, Li0/c;->d:Li0/b;

    invoke-virtual {p0}, Li0/d;->f()I

    move-result v6

    iput v6, v5, Li0/b;->b:I

    iget-object v5, p0, Li0/d;->c:Li0/c;

    iget-object v5, v5, Li0/c;->d:Li0/b;

    invoke-virtual {p0}, Li0/d;->f()I

    move-result v6

    iput v6, v5, Li0/b;->c:I

    iget-object v5, p0, Li0/d;->c:Li0/c;

    iget-object v5, v5, Li0/c;->d:Li0/b;

    invoke-virtual {p0}, Li0/d;->f()I

    move-result v6

    iput v6, v5, Li0/b;->d:I

    invoke-virtual {p0}, Li0/d;->c()I

    move-result v5

    and-int/lit16 v6, v5, 0x80

    if-eqz v6, :cond_fc

    move v6, v4

    goto :goto_fd

    :cond_fc
    move v6, v1

    :goto_fd
    and-int/lit8 v7, v5, 0x7

    add-int/2addr v7, v4

    int-to-double v7, v7

    invoke-static {v2, v3, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    double-to-int v7, v7

    iget-object v8, p0, Li0/d;->c:Li0/c;

    iget-object v8, v8, Li0/c;->d:Li0/b;

    and-int/lit8 v5, v5, 0x40

    if-eqz v5, :cond_110

    move v5, v4

    goto :goto_111

    :cond_110
    move v5, v1

    :goto_111
    iput-boolean v5, v8, Li0/b;->e:Z

    if-eqz v6, :cond_11c

    invoke-virtual {p0, v7}, Li0/d;->e(I)[I

    move-result-object v5

    iput-object v5, v8, Li0/b;->k:[I

    goto :goto_11f

    :cond_11c
    const/4 v5, 0x0

    iput-object v5, v8, Li0/b;->k:[I

    :goto_11f
    iget-object v5, p0, Li0/d;->c:Li0/c;

    iget-object v5, v5, Li0/c;->d:Li0/b;

    iget-object v6, p0, Li0/d;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    iput v6, v5, Li0/b;->j:I

    invoke-virtual {p0}, Li0/d;->c()I

    invoke-virtual {p0}, Li0/d;->g()V

    invoke-virtual {p0}, Li0/d;->a()Z

    move-result v5

    if-eqz v5, :cond_139

    goto/16 :goto_97

    :cond_139
    iget-object v5, p0, Li0/d;->c:Li0/c;

    iget v6, v5, Li0/c;->c:I

    add-int/2addr v6, v4

    iput v6, v5, Li0/c;->c:I

    iget-object v6, v5, Li0/c;->e:Ljava/util/List;

    iget-object v5, v5, Li0/c;->d:Li0/b;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_97

    :cond_149
    invoke-virtual {p0}, Li0/d;->c()I

    move-result v5

    if-eq v5, v4, :cond_1ee

    const/16 v6, 0xf9

    const/4 v7, 0x2

    if-eq v5, v6, :cond_1ad

    const/16 v6, 0xfe

    if-eq v5, v6, :cond_1a8

    const/16 v6, 0xff

    if-eq v5, v6, :cond_161

    invoke-virtual {p0}, Li0/d;->g()V

    goto/16 :goto_97

    :cond_161
    invoke-virtual {p0}, Li0/d;->d()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move v6, v1

    :goto_16a
    const/16 v8, 0xb

    if-ge v6, v8, :cond_179

    iget-object v8, p0, Li0/d;->a:[B

    aget-byte v8, v8, v6

    int-to-char v8, v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_16a

    :cond_179
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "NETSCAPE2.0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a3

    :cond_185
    invoke-virtual {p0}, Li0/d;->d()V

    iget-object v5, p0, Li0/d;->a:[B

    aget-byte v6, v5, v1

    if-ne v6, v4, :cond_197

    aget-byte v6, v5, v4

    aget-byte v5, v5, v7

    iget-object v5, p0, Li0/d;->c:Li0/c;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_197
    iget v5, p0, Li0/d;->d:I

    if-lez v5, :cond_97

    invoke-virtual {p0}, Li0/d;->a()Z

    move-result v5

    if-eqz v5, :cond_185

    goto/16 :goto_97

    :cond_1a3
    invoke-virtual {p0}, Li0/d;->g()V

    goto/16 :goto_97

    :cond_1a8
    invoke-virtual {p0}, Li0/d;->g()V

    goto/16 :goto_97

    :cond_1ad
    iget-object v5, p0, Li0/d;->c:Li0/c;

    new-instance v6, Li0/b;

    invoke-direct {v6}, Li0/b;-><init>()V

    iput-object v6, v5, Li0/c;->d:Li0/b;

    invoke-virtual {p0}, Li0/d;->c()I

    invoke-virtual {p0}, Li0/d;->c()I

    move-result v5

    iget-object v6, p0, Li0/d;->c:Li0/c;

    iget-object v6, v6, Li0/c;->d:Li0/b;

    and-int/lit8 v8, v5, 0x1c

    shr-int/2addr v8, v7

    iput v8, v6, Li0/b;->g:I

    if-nez v8, :cond_1ca

    iput v4, v6, Li0/b;->g:I

    :cond_1ca
    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_1d0

    move v5, v4

    goto :goto_1d1

    :cond_1d0
    move v5, v1

    :goto_1d1
    iput-boolean v5, v6, Li0/b;->f:Z

    invoke-virtual {p0}, Li0/d;->f()I

    move-result v5

    const/16 v6, 0xa

    if-ge v5, v7, :cond_1dc

    move v5, v6

    :cond_1dc
    iget-object v7, p0, Li0/d;->c:Li0/c;

    iget-object v7, v7, Li0/c;->d:Li0/b;

    mul-int/2addr v5, v6

    iput v5, v7, Li0/b;->i:I

    invoke-virtual {p0}, Li0/d;->c()I

    move-result v5

    iput v5, v7, Li0/b;->h:I

    invoke-virtual {p0}, Li0/d;->c()I

    goto/16 :goto_97

    :cond_1ee
    invoke-virtual {p0}, Li0/d;->g()V

    goto/16 :goto_97

    :cond_1f3
    iget-object v0, p0, Li0/d;->c:Li0/c;

    iget v1, v0, Li0/c;->c:I

    if-gez v1, :cond_1fb

    iput v4, v0, Li0/c;->b:I

    :cond_1fb
    iget-object p0, p0, Li0/d;->c:Li0/c;

    return-object p0

    :cond_1fe
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "You must call setData() before parseHeader()"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final c()I
    .registers 2

    :try_start_0
    iget-object v0, p0, Li0/d;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result p0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_9

    and-int/lit16 p0, p0, 0xff

    goto :goto_f

    :catch_9
    iget-object p0, p0, Li0/d;->c:Li0/c;

    const/4 v0, 0x1

    iput v0, p0, Li0/c;->b:I

    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public final d()V
    .registers 8

    invoke-virtual {p0}, Li0/d;->c()I

    move-result v0

    iput v0, p0, Li0/d;->d:I

    if-lez v0, :cond_3d

    const/4 v0, 0x0

    move v1, v0

    :goto_a
    :try_start_a
    iget v1, p0, Li0/d;->d:I

    if-ge v0, v1, :cond_3d

    sub-int/2addr v1, v0

    iget-object v2, p0, Li0/d;->b:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Li0/d;->a:[B

    invoke-virtual {v2, v3, v0, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_16} :catch_18

    add-int/2addr v0, v1

    goto :goto_a

    :catch_18
    move-exception v2

    const/4 v3, 0x3

    const-string v4, "GifHeaderParser"

    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_38

    const-string v3, "Error Reading Block n: "

    const-string v5, " count: "

    const-string v6, " blockSize: "

    invoke-static {v3, v0, v5, v1, v6}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Li0/d;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_38
    iget-object p0, p0, Li0/d;->c:Li0/c;

    const/4 v0, 0x1

    iput v0, p0, Li0/c;->b:I

    :cond_3d
    return-void
.end method

.method public final e(I)[I
    .registers 11
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    mul-int/lit8 v0, p1, 0x3

    new-array v0, v0, [B

    const/4 v1, 0x0

    :try_start_5
    iget-object v2, p0, Li0/d;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/16 v2, 0x100

    new-array v1, v2, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_10
    if-ge v2, p1, :cond_48

    add-int/lit8 v4, v3, 0x1

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v5, v4, 0x1

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v6, v5, 0x1

    aget-byte v5, v0, v5

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v7, v2, 0x1

    const/high16 v8, -0x1000000

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v3, v8

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    or-int/2addr v3, v5

    aput v3, v1, v2
    :try_end_31
    .catch Ljava/nio/BufferUnderflowException; {:try_start_5 .. :try_end_31} :catch_34

    move v3, v6

    move v2, v7

    goto :goto_10

    :catch_34
    move-exception p1

    const-string v0, "GifHeaderParser"

    const/4 v2, 0x3

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_43

    const-string v2, "Format Error Reading Color Table"

    invoke-static {v0, v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_43
    iget-object p0, p0, Li0/d;->c:Li0/c;

    const/4 p1, 0x1

    iput p1, p0, Li0/c;->b:I

    :cond_48
    return-object v1
.end method

.method public final f()I
    .registers 1

    iget-object p0, p0, Li0/d;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result p0

    return p0
.end method

.method public final g()V
    .registers 4

    :cond_0
    invoke-virtual {p0}, Li0/d;->c()I

    move-result v0

    iget-object v1, p0, Li0/d;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, v0

    iget-object v2, p0, Li0/d;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, p0, Li0/d;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    if-gtz v0, :cond_0

    return-void
.end method
