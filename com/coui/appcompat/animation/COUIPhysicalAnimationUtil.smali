.class public Lcom/coui/appcompat/animation/COUIPhysicalAnimationUtil;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(III)I
    .registers 6

    int-to-float p2, p2

    const v0, 0x3ebf06f7  # 0.3731f

    mul-float/2addr p2, v0

    float-to-double v0, p2

    int-to-float p1, p1

    const/high16 v2, 0x3fc00000  # 1.5f

    div-float/2addr p1, v2

    const/high16 v2, 0x40200000  # 2.5f

    mul-float/2addr p1, v2

    const v2, 0x3f666666  # 0.9f

    mul-float/2addr p2, v2

    div-float/2addr p1, p2

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->tanh(D)D

    move-result-wide p1

    mul-double/2addr p1, v0

    double-to-int p1, p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static b(III)I
    .registers 4

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x3f800000  # 1.0f

    mul-float/2addr p1, v0

    int-to-float p2, p2

    div-float/2addr p1, p2

    int-to-float p0, p0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    sub-float/2addr v0, p1

    mul-float/2addr v0, p0

    const/high16 p0, 0x40a00000  # 5.0f

    div-float/2addr v0, p0

    const/high16 p0, 0x40000000  # 2.0f

    mul-float/2addr v0, p0

    float-to-int p0, v0

    return p0
.end method
