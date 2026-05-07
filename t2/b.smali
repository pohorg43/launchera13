.class public final Lt2/b;
.super Ljava/util/Random;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lt2/b$a;
    }
.end annotation


# static fields
.field public static final c:Lt2/b$a;


# instance fields
.field public a:J

.field public b:J


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lt2/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lt2/b$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lt2/b;->c:Lt2/b$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/util/Random;-><init>()V

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lt2/b;->setSeed(J)V

    return-void
.end method


# virtual methods
.method public next(I)I
    .registers 6

    invoke-virtual {p0}, Lt2/b;->nextLong()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    shl-long p0, v2, p1

    sub-long/2addr p0, v2

    and-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method public nextBoolean()Z
    .registers 5

    invoke-virtual {p0}, Lt2/b;->nextLong()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_f

    const/4 p0, 0x1

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    return p0
.end method

.method public nextBytes([B)V
    .registers 8

    const-string v0, "bytes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p1

    :cond_6
    if-eqz v0, :cond_20

    const/16 v1, 0x8

    if-ge v0, v1, :cond_e

    move v2, v0

    goto :goto_f

    :cond_e
    move v2, v1

    :goto_f
    invoke-virtual {p0}, Lt2/b;->nextLong()J

    move-result-wide v3

    :goto_13
    add-int/lit8 v5, v2, -0x1

    if-eqz v2, :cond_6

    add-int/lit8 v0, v0, -0x1

    long-to-int v2, v3

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    shr-long/2addr v3, v1

    move v2, v5

    goto :goto_13

    :cond_20
    return-void
.end method

.method public nextDouble()D
    .registers 5

    invoke-virtual {p0}, Lt2/b;->nextLong()J

    move-result-wide v0

    const/16 p0, 0xb

    ushr-long/2addr v0, p0

    long-to-double v0, v0

    const-wide/high16 v2, 0x3ca0000000000000L

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public nextFloat()F
    .registers 5

    invoke-virtual {p0}, Lt2/b;->nextLong()J

    move-result-wide v0

    const/16 p0, 0x28

    ushr-long/2addr v0, p0

    long-to-double v0, v0

    const-wide/high16 v2, 0x3e70000000000000L  # 5.9604644775390625E-8

    mul-double/2addr v0, v2

    double-to-float p0, v0

    return p0
.end method

.method public nextInt()I
    .registers 3

    invoke-virtual {p0}, Lt2/b;->nextLong()J

    move-result-wide v0

    long-to-int p0, v0

    return p0
.end method

.method public nextInt(I)I
    .registers 13

    int-to-long v0, p1

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    const/4 v4, 0x1

    if-lez p1, :cond_a

    move p1, v4

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    if-eqz p1, :cond_20

    :cond_d
    invoke-virtual {p0}, Lt2/b;->nextLong()J

    move-result-wide v5

    ushr-long/2addr v5, v4

    rem-long v7, v5, v0

    sub-long/2addr v5, v7

    const-wide/16 v9, 0x1

    sub-long v9, v0, v9

    add-long/2addr v9, v5

    cmp-long p1, v9, v2

    if-ltz p1, :cond_d

    long-to-int p0, v7

    return p0

    :cond_20
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "n must be positive"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public nextLong()J
    .registers 8

    iget-wide v0, p0, Lt2/b;->a:J

    iget-wide v2, p0, Lt2/b;->b:J

    iput-wide v2, p0, Lt2/b;->a:J

    const/16 v4, 0x17

    shl-long v4, v0, v4

    xor-long/2addr v0, v4

    xor-long v4, v0, v2

    const/16 v6, 0x11

    ushr-long/2addr v0, v6

    xor-long/2addr v0, v4

    const/16 v4, 0x1a

    ushr-long v4, v2, v4

    xor-long/2addr v0, v4

    iput-wide v0, p0, Lt2/b;->b:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public setSeed(J)V
    .registers 6

    sget-object v0, Lt2/b;->c:Lt2/b$a;

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-nez v1, :cond_a

    const-wide/high16 p1, -0x8000000000000000L

    :cond_a
    invoke-static {v0, p1, p2}, Lt2/b$a;->a(Lt2/b$a;J)J

    move-result-wide p1

    invoke-static {v0, p1, p2}, Lt2/b$a;->a(Lt2/b$a;J)J

    move-result-wide v0

    iput-wide p1, p0, Lt2/b;->a:J

    iput-wide v0, p0, Lt2/b;->b:J

    return-void
.end method
