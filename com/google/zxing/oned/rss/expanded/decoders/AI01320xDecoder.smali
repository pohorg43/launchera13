.class final Lcom/google/zxing/oned/rss/expanded/decoders/AI01320xDecoder;
.super Lcom/google/zxing/oned/rss/expanded/decoders/AI013x0xDecoder;
.source ""


# direct methods
.method public constructor <init>(Lcom/google/zxing/common/BitArray;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/zxing/oned/rss/expanded/decoders/AI013x0xDecoder;-><init>(Lcom/google/zxing/common/BitArray;)V

    return-void
.end method


# virtual methods
.method public addWeightCode(Ljava/lang/StringBuilder;I)V
    .registers 3

    const/16 p0, 0x2710

    if-ge p2, p0, :cond_a

    const-string p0, "(3202)"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f

    :cond_a
    const-string p0, "(3203)"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_f
    return-void
.end method

.method public checkWeight(I)I
    .registers 2

    const/16 p0, 0x2710

    if-ge p1, p0, :cond_5

    return p1

    :cond_5
    sub-int/2addr p1, p0

    return p1
.end method
