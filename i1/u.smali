.class public Li1/u;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static k:Ljava/util/Random;


# instance fields
.field public a:Ljava/io/ByteArrayOutputStream;

.field public b:I

.field public c:I

.field public d:Z

.field public e:[B

.field public f:[B

.field public g:I

.field public h:[B

.field public i:I

.field public j:[B


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Li1/u;->k:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Li1/u;->d:Z

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v0, p0, Li1/u;->a:Ljava/io/ByteArrayOutputStream;

    return-void
.end method

.method public static a([BII)J
    .registers 8

    const/16 v0, 0x8

    if-le p2, v0, :cond_7

    add-int/lit8 p2, p1, 0x8

    goto :goto_8

    :cond_7
    add-int/2addr p2, p1

    :goto_8
    const-wide/16 v1, 0x0

    :goto_a
    if-ge p1, p2, :cond_16

    shl-long/2addr v1, v0

    aget-byte v3, p0, p1

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    or-long/2addr v1, v3

    add-int/lit8 p1, p1, 0x1

    goto :goto_a

    :cond_16
    const-wide p0, 0xffffffffL

    and-long/2addr p0, v1

    const/16 p2, 0x20

    ushr-long v0, v1, p2

    or-long/2addr p0, v0

    return-wide p0
.end method


# virtual methods
.method public final b()V
    .registers 27

    move-object/from16 v0, p0

    const/4 v1, 0x0

    iput v1, v0, Li1/u;->i:I

    :goto_5
    iget v2, v0, Li1/u;->i:I

    const/16 v3, 0x8

    if-ge v2, v3, :cond_30

    iget-boolean v3, v0, Li1/u;->d:Z

    if-eqz v3, :cond_1c

    iget-object v3, v0, Li1/u;->h:[B

    aget-byte v4, v3, v2

    iget-object v5, v0, Li1/u;->j:[B

    aget-byte v5, v5, v2

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    goto :goto_2b

    :cond_1c
    iget-object v3, v0, Li1/u;->h:[B

    aget-byte v4, v3, v2

    iget-object v5, v0, Li1/u;->f:[B

    iget v6, v0, Li1/u;->c:I

    add-int/2addr v6, v2

    aget-byte v5, v5, v6

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    :goto_2b
    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Li1/u;->i:I

    goto :goto_5

    :cond_30
    iget-object v2, v0, Li1/u;->h:[B

    const/4 v4, 0x4

    invoke-static {v2, v1, v4}, Li1/u;->a([BII)J

    move-result-wide v5

    invoke-static {v2, v4, v4}, Li1/u;->a([BII)J

    move-result-wide v7

    iget-object v2, v0, Li1/u;->e:[B

    invoke-static {v2, v1, v4}, Li1/u;->a([BII)J

    move-result-wide v9

    iget-object v2, v0, Li1/u;->e:[B

    invoke-static {v2, v4, v4}, Li1/u;->a([BII)J

    move-result-wide v11

    iget-object v2, v0, Li1/u;->e:[B

    invoke-static {v2, v3, v4}, Li1/u;->a([BII)J

    move-result-wide v13

    iget-object v2, v0, Li1/u;->e:[B

    const/16 v15, 0xc

    invoke-static {v2, v15, v4}, Li1/u;->a([BII)J

    move-result-wide v15

    const/16 v2, 0x10

    const-wide/16 v17, 0x0

    :goto_59
    add-int/lit8 v19, v2, -0x1

    if-lez v2, :cond_93

    const-wide v20, 0x9e3779b9L

    add-long v17, v17, v20

    const-wide v20, 0xffffffffL

    and-long v17, v17, v20

    shl-long v22, v7, v4

    add-long v22, v22, v9

    add-long v24, v7, v17

    xor-long v22, v22, v24

    const/4 v2, 0x5

    ushr-long v24, v7, v2

    add-long v24, v24, v11

    xor-long v22, v22, v24

    add-long v5, v5, v22

    and-long v5, v5, v20

    shl-long v22, v5, v4

    add-long v22, v22, v13

    add-long v24, v5, v17

    xor-long v22, v22, v24

    ushr-long v24, v5, v2

    add-long v24, v24, v15

    xor-long v22, v22, v24

    add-long v7, v7, v22

    and-long v7, v7, v20

    move/from16 v2, v19

    goto :goto_59

    :cond_93
    iget-object v2, v0, Li1/u;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->reset()V

    long-to-int v2, v5

    invoke-virtual {v0, v2}, Li1/u;->c(I)V

    long-to-int v2, v7

    invoke-virtual {v0, v2}, Li1/u;->c(I)V

    iget-object v2, v0, Li1/u;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    iget-object v4, v0, Li1/u;->f:[B

    iget v5, v0, Li1/u;->b:I

    invoke-static {v2, v1, v4, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v1, v0, Li1/u;->i:I

    :goto_af
    iget v2, v0, Li1/u;->i:I

    if-ge v2, v3, :cond_c7

    iget-object v4, v0, Li1/u;->f:[B

    iget v5, v0, Li1/u;->b:I

    add-int/2addr v5, v2

    aget-byte v6, v4, v5

    iget-object v7, v0, Li1/u;->j:[B

    aget-byte v7, v7, v2

    xor-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Li1/u;->i:I

    goto :goto_af

    :cond_c7
    iget-object v2, v0, Li1/u;->h:[B

    iget-object v4, v0, Li1/u;->j:[B

    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, v0, Li1/u;->b:I

    iput v2, v0, Li1/u;->c:I

    add-int/2addr v2, v3

    iput v2, v0, Li1/u;->b:I

    iput v1, v0, Li1/u;->i:I

    iput-boolean v1, v0, Li1/u;->d:Z

    return-void
.end method

.method public final c(I)V
    .registers 4

    iget-object v0, p0, Li1/u;->a:Ljava/io/ByteArrayOutputStream;

    ushr-int/lit8 v1, p1, 0x18

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget-object v0, p0, Li1/u;->a:Ljava/io/ByteArrayOutputStream;

    ushr-int/lit8 v1, p1, 0x10

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget-object v0, p0, Li1/u;->a:Ljava/io/ByteArrayOutputStream;

    ushr-int/lit8 v1, p1, 0x8

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget-object p0, p0, Li1/u;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    return-void
.end method

.method public final d()I
    .registers 1

    sget-object p0, Li1/u;->k:Ljava/util/Random;

    invoke-virtual {p0}, Ljava/util/Random;->nextInt()I

    move-result p0

    return p0
.end method
