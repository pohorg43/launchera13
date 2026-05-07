.class public Lc4/a;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static a(Ljava/lang/String;[BII)Z
    .registers 10

    sget-object v0, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    array-length v0, p0

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_d
    if-ge v3, v1, :cond_1d

    add-int v4, v2, v3

    aget-byte v4, p0, v4

    add-int v5, p2, v3

    aget-byte v5, p1, v5

    if-eq v4, v5, :cond_1a

    goto :goto_20

    :cond_1a
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_1d
    if-ne v0, p3, :cond_20

    const/4 v2, 0x1

    :cond_20
    :goto_20
    return v2
.end method
