.class public abstract Lcom/google/zxing/common/GridSampler;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static gridSampler:Lcom/google/zxing/common/GridSampler;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/zxing/common/DefaultGridSampler;

    invoke-direct {v0}, Lcom/google/zxing/common/DefaultGridSampler;-><init>()V

    sput-object v0, Lcom/google/zxing/common/GridSampler;->gridSampler:Lcom/google/zxing/common/GridSampler;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkAndNudgePoints(Lcom/google/zxing/common/BitMatrix;[F)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    move v3, v1

    move v4, v2

    :goto_c
    array-length v5, p1

    const/4 v6, 0x0

    const/4 v7, -0x1

    if-ge v3, v5, :cond_48

    if-eqz v4, :cond_48

    aget v4, p1, v3

    float-to-int v4, v4

    add-int/lit8 v5, v3, 0x1

    aget v8, p1, v5

    float-to-int v8, v8

    if-lt v4, v7, :cond_43

    if-gt v4, v0, :cond_43

    if-lt v8, v7, :cond_43

    if-gt v8, p0, :cond_43

    if-ne v4, v7, :cond_29

    aput v6, p1, v3

    :goto_27
    move v4, v2

    goto :goto_32

    :cond_29
    if-ne v4, v0, :cond_31

    add-int/lit8 v4, v0, -0x1

    int-to-float v4, v4

    aput v4, p1, v3

    goto :goto_27

    :cond_31
    move v4, v1

    :goto_32
    if-ne v8, v7, :cond_38

    aput v6, p1, v5

    :goto_36
    move v4, v2

    goto :goto_40

    :cond_38
    if-ne v8, p0, :cond_40

    add-int/lit8 v4, p0, -0x1

    int-to-float v4, v4

    aput v4, p1, v5

    goto :goto_36

    :cond_40
    :goto_40
    add-int/lit8 v3, v3, 0x2

    goto :goto_c

    :cond_43
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0

    :cond_48
    array-length v3, p1

    add-int/lit8 v3, v3, -0x2

    move v4, v2

    :goto_4c
    if-ltz v3, :cond_85

    if-eqz v4, :cond_85

    aget v4, p1, v3

    float-to-int v4, v4

    add-int/lit8 v5, v3, 0x1

    aget v8, p1, v5

    float-to-int v8, v8

    if-lt v4, v7, :cond_80

    if-gt v4, v0, :cond_80

    if-lt v8, v7, :cond_80

    if-gt v8, p0, :cond_80

    if-ne v4, v7, :cond_66

    aput v6, p1, v3

    :goto_64
    move v4, v2

    goto :goto_6f

    :cond_66
    if-ne v4, v0, :cond_6e

    add-int/lit8 v4, v0, -0x1

    int-to-float v4, v4

    aput v4, p1, v3

    goto :goto_64

    :cond_6e
    move v4, v1

    :goto_6f
    if-ne v8, v7, :cond_75

    aput v6, p1, v5

    :goto_73
    move v4, v2

    goto :goto_7d

    :cond_75
    if-ne v8, p0, :cond_7d

    add-int/lit8 v4, p0, -0x1

    int-to-float v4, v4

    aput v4, p1, v5

    goto :goto_73

    :cond_7d
    :goto_7d
    add-int/lit8 v3, v3, -0x2

    goto :goto_4c

    :cond_80
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0

    :cond_85
    return-void
.end method

.method public static getInstance()Lcom/google/zxing/common/GridSampler;
    .registers 1

    sget-object v0, Lcom/google/zxing/common/GridSampler;->gridSampler:Lcom/google/zxing/common/GridSampler;

    return-object v0
.end method

.method public static setGridSampler(Lcom/google/zxing/common/GridSampler;)V
    .registers 1

    sput-object p0, Lcom/google/zxing/common/GridSampler;->gridSampler:Lcom/google/zxing/common/GridSampler;

    return-void
.end method


# virtual methods
.method public abstract sampleGrid(Lcom/google/zxing/common/BitMatrix;IIFFFFFFFFFFFFFFFF)Lcom/google/zxing/common/BitMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation
.end method

.method public abstract sampleGrid(Lcom/google/zxing/common/BitMatrix;IILcom/google/zxing/common/PerspectiveTransform;)Lcom/google/zxing/common/BitMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation
.end method
