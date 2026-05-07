.class public final Lcom/google/zxing/pdf417/encoder/Dimensions;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final maxCols:I

.field private final maxRows:I

.field private final minCols:I

.field private final minRows:I


# direct methods
.method public constructor <init>(IIII)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/zxing/pdf417/encoder/Dimensions;->minCols:I

    iput p2, p0, Lcom/google/zxing/pdf417/encoder/Dimensions;->maxCols:I

    iput p3, p0, Lcom/google/zxing/pdf417/encoder/Dimensions;->minRows:I

    iput p4, p0, Lcom/google/zxing/pdf417/encoder/Dimensions;->maxRows:I

    return-void
.end method


# virtual methods
.method public getMaxCols()I
    .registers 1

    iget p0, p0, Lcom/google/zxing/pdf417/encoder/Dimensions;->maxCols:I

    return p0
.end method

.method public getMaxRows()I
    .registers 1

    iget p0, p0, Lcom/google/zxing/pdf417/encoder/Dimensions;->maxRows:I

    return p0
.end method

.method public getMinCols()I
    .registers 1

    iget p0, p0, Lcom/google/zxing/pdf417/encoder/Dimensions;->minCols:I

    return p0
.end method

.method public getMinRows()I
    .registers 1

    iget p0, p0, Lcom/google/zxing/pdf417/encoder/Dimensions;->minRows:I

    return p0
.end method
