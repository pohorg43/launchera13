.class public abstract Lcom/google/zxing/oned/rss/AbstractRSSReader;
.super Lcom/google/zxing/oned/OneDReader;
.source ""


# static fields
.field private static final MAX_AVG_VARIANCE:I = 0x33

.field private static final MAX_FINDER_PATTERN_RATIO:F = 0.89285713f

.field private static final MAX_INDIVIDUAL_VARIANCE:I = 0x73

.field private static final MIN_FINDER_PATTERN_RATIO:F = 0.7916667f


# instance fields
.field private final dataCharacterCounters:[I

.field private final decodeFinderCounters:[I

.field private final evenCounts:[I

.field private final evenRoundingErrors:[F

.field private final oddCounts:[I

.field private final oddRoundingErrors:[F


# direct methods
.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Lcom/google/zxing/oned/OneDReader;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/google/zxing/oned/rss/AbstractRSSReader;->decodeFinderCounters:[I

    const/16 v1, 0x8

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/google/zxing/oned/rss/AbstractRSSReader;->dataCharacterCounters:[I

    new-array v2, v0, [F

    iput-object v2, p0, Lcom/google/zxing/oned/rss/AbstractRSSReader;->oddRoundingErrors:[F

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/zxing/oned/rss/AbstractRSSReader;->evenRoundingErrors:[F

    array-length v0, v1

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/oned/rss/AbstractRSSReader;->oddCounts:[I

    array-length v0, v1

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/oned/rss/AbstractRSSReader;->evenCounts:[I

    return-void
.end method

.method public static count([I)I
    .registers 5

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v1, v0, :cond_b

    aget v3, p0, v1

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_b
    return v2
.end method

.method public static decrement([I[F)V
    .registers 7

    const/4 v0, 0x0

    aget v1, p1, v0

    const/4 v2, 0x1

    move v3, v2

    :goto_5
    array-length v4, p0

    if-ge v3, v4, :cond_15

    aget v4, p1, v3

    cmpg-float v4, v4, v1

    if-gez v4, :cond_12

    aget v0, p1, v3

    move v1, v0

    move v0, v3

    :cond_12
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_15
    aget p1, p0, v0

    sub-int/2addr p1, v2

    aput p1, p0, v0

    return-void
.end method

.method public static increment([I[F)V
    .registers 7

    const/4 v0, 0x0

    aget v1, p1, v0

    const/4 v2, 0x1

    move v3, v2

    :goto_5
    array-length v4, p0

    if-ge v3, v4, :cond_15

    aget v4, p1, v3

    cmpl-float v4, v4, v1

    if-lez v4, :cond_12

    aget v0, p1, v3

    move v1, v0

    move v0, v3

    :cond_12
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_15
    aget p1, p0, v0

    add-int/2addr p1, v2

    aput p1, p0, v0

    return-void
.end method

.method public static isFinderPattern([I)Z
    .registers 8

    const/4 v0, 0x0

    aget v1, p0, v0

    const/4 v2, 0x1

    aget v3, p0, v2

    add-int/2addr v1, v3

    const/4 v3, 0x2

    aget v3, p0, v3

    add-int/2addr v3, v1

    const/4 v4, 0x3

    aget v4, p0, v4

    add-int/2addr v3, v4

    int-to-float v1, v1

    int-to-float v3, v3

    div-float/2addr v1, v3

    const v3, 0x3f4aaaab

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_39

    const v3, 0x3f649249

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_39

    const v1, 0x7fffffff

    const/high16 v3, -0x80000000

    array-length v4, p0

    move v5, v0

    :goto_27
    if-ge v5, v4, :cond_34

    aget v6, p0, v5

    if-le v6, v3, :cond_2e

    move v3, v6

    :cond_2e
    if-ge v6, v1, :cond_31

    move v1, v6

    :cond_31
    add-int/lit8 v5, v5, 0x1

    goto :goto_27

    :cond_34
    mul-int/lit8 v1, v1, 0xa

    if-ge v3, v1, :cond_39

    move v0, v2

    :cond_39
    return v0
.end method

.method public static parseFinderValue([I[[I)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_14

    aget-object v1, p1, v0

    const/16 v2, 0x73

    invoke-static {p0, v1, v2}, Lcom/google/zxing/oned/OneDReader;->patternMatchVariance([I[II)I

    move-result v1

    const/16 v2, 0x33

    if-ge v1, v2, :cond_11

    return v0

    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_14
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public final getDataCharacterCounters()[I
    .registers 1

    iget-object p0, p0, Lcom/google/zxing/oned/rss/AbstractRSSReader;->dataCharacterCounters:[I

    return-object p0
.end method

.method public final getDecodeFinderCounters()[I
    .registers 1

    iget-object p0, p0, Lcom/google/zxing/oned/rss/AbstractRSSReader;->decodeFinderCounters:[I

    return-object p0
.end method

.method public final getEvenCounts()[I
    .registers 1

    iget-object p0, p0, Lcom/google/zxing/oned/rss/AbstractRSSReader;->evenCounts:[I

    return-object p0
.end method

.method public final getEvenRoundingErrors()[F
    .registers 1

    iget-object p0, p0, Lcom/google/zxing/oned/rss/AbstractRSSReader;->evenRoundingErrors:[F

    return-object p0
.end method

.method public final getOddCounts()[I
    .registers 1

    iget-object p0, p0, Lcom/google/zxing/oned/rss/AbstractRSSReader;->oddCounts:[I

    return-object p0
.end method

.method public final getOddRoundingErrors()[F
    .registers 1

    iget-object p0, p0, Lcom/google/zxing/oned/rss/AbstractRSSReader;->oddRoundingErrors:[F

    return-object p0
.end method
