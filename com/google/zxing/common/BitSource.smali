.class public final Lcom/google/zxing/common/BitSource;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private bitOffset:I

.field private byteOffset:I

.field private final bytes:[B


# direct methods
.method public constructor <init>([B)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/zxing/common/BitSource;->bytes:[B

    return-void
.end method


# virtual methods
.method public available()I
    .registers 3

    iget-object v0, p0, Lcom/google/zxing/common/BitSource;->bytes:[B

    array-length v0, v0

    iget v1, p0, Lcom/google/zxing/common/BitSource;->byteOffset:I

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x8

    iget p0, p0, Lcom/google/zxing/common/BitSource;->bitOffset:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public getBitOffset()I
    .registers 1

    iget p0, p0, Lcom/google/zxing/common/BitSource;->bitOffset:I

    return p0
.end method

.method public getByteOffset()I
    .registers 1

    iget p0, p0, Lcom/google/zxing/common/BitSource;->byteOffset:I

    return p0
.end method

.method public readBits(I)I
    .registers 12

    const/4 v0, 0x1

    if-lt p1, v0, :cond_64

    const/16 v1, 0x20

    if-gt p1, v1, :cond_64

    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v1

    if-gt p1, v1, :cond_64

    iget v1, p0, Lcom/google/zxing/common/BitSource;->bitOffset:I

    const/4 v2, 0x0

    const/16 v3, 0xff

    const/16 v4, 0x8

    if-lez v1, :cond_38

    rsub-int/lit8 v5, v1, 0x8

    if-ge p1, v5, :cond_1c

    move v6, p1

    goto :goto_1d

    :cond_1c
    move v6, v5

    :goto_1d
    sub-int/2addr v5, v6

    rsub-int/lit8 v7, v6, 0x8

    shr-int v7, v3, v7

    shl-int/2addr v7, v5

    iget-object v8, p0, Lcom/google/zxing/common/BitSource;->bytes:[B

    iget v9, p0, Lcom/google/zxing/common/BitSource;->byteOffset:I

    aget-byte v8, v8, v9

    and-int/2addr v7, v8

    shr-int v5, v7, v5

    sub-int/2addr p1, v6

    add-int/2addr v1, v6

    iput v1, p0, Lcom/google/zxing/common/BitSource;->bitOffset:I

    if-ne v1, v4, :cond_37

    iput v2, p0, Lcom/google/zxing/common/BitSource;->bitOffset:I

    add-int/2addr v9, v0

    iput v9, p0, Lcom/google/zxing/common/BitSource;->byteOffset:I

    :cond_37
    move v2, v5

    :cond_38
    if-lez p1, :cond_63

    :goto_3a
    if-lt p1, v4, :cond_4c

    shl-int/lit8 v1, v2, 0x8

    iget-object v2, p0, Lcom/google/zxing/common/BitSource;->bytes:[B

    iget v5, p0, Lcom/google/zxing/common/BitSource;->byteOffset:I

    aget-byte v2, v2, v5

    and-int/2addr v2, v3

    or-int/2addr v2, v1

    add-int/2addr v5, v0

    iput v5, p0, Lcom/google/zxing/common/BitSource;->byteOffset:I

    add-int/lit8 p1, p1, -0x8

    goto :goto_3a

    :cond_4c
    if-lez p1, :cond_63

    rsub-int/lit8 v0, p1, 0x8

    shr-int v1, v3, v0

    shl-int/2addr v1, v0

    shl-int/2addr v2, p1

    iget-object v3, p0, Lcom/google/zxing/common/BitSource;->bytes:[B

    iget v4, p0, Lcom/google/zxing/common/BitSource;->byteOffset:I

    aget-byte v3, v3, v4

    and-int/2addr v1, v3

    shr-int v0, v1, v0

    or-int/2addr v2, v0

    iget v0, p0, Lcom/google/zxing/common/BitSource;->bitOffset:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/zxing/common/BitSource;->bitOffset:I

    :cond_63
    return v2

    :cond_64
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
