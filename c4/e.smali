.class public final Lc4/e;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:[Ljava/nio/file/LinkOption;

.field public static final b:[B


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/nio/file/LinkOption;

    sput-object v0, Lc4/e;->a:[Ljava/nio/file/LinkOption;

    const/16 v0, 0x1000

    new-array v0, v0, [B

    sput-object v0, Lc4/e;->b:[B

    return-void
.end method

.method public static a(Ljava/io/InputStream;[BII)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p3, :cond_1d

    if-ltz p2, :cond_1d

    add-int v0, p3, p2

    array-length v1, p1

    if-gt v0, v1, :cond_1d

    if-ltz v0, :cond_1d

    const/4 v0, 0x0

    :goto_c
    if-eq v0, p3, :cond_1c

    add-int v1, p2, v0

    sub-int v2, p3, v0

    invoke-virtual {p0, p1, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1a

    goto :goto_1c

    :cond_1a
    add-int/2addr v0, v1

    goto :goto_c

    :cond_1c
    :goto_1c
    return v0

    :cond_1d
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public static b(Ljava/io/InputStream;J)J
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-wide v0, p1

    :goto_1
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_12

    invoke-virtual {p0, v0, v1}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v4

    cmp-long v6, v4, v2

    if-nez v6, :cond_10

    goto :goto_12

    :cond_10
    sub-long/2addr v0, v4

    goto :goto_1

    :cond_12
    :goto_12
    cmp-long v4, v0, v2

    if-lez v4, :cond_2b

    sget-object v4, Lc4/e;->b:[B

    const/4 v5, 0x0

    const-wide/16 v6, 0x1000

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v6, v6

    invoke-static {p0, v4, v5, v6}, Lc4/e;->a(Ljava/io/InputStream;[BII)I

    move-result v4

    const/4 v5, 0x1

    if-ge v4, v5, :cond_28

    goto :goto_2b

    :cond_28
    int-to-long v4, v4

    sub-long/2addr v0, v4

    goto :goto_12

    :cond_2b
    :goto_2b
    sub-long/2addr p1, v0

    return-wide p1
.end method
