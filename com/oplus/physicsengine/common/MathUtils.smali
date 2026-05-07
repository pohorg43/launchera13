.class public Lcom/oplus/physicsengine/common/MathUtils;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final PI:F = 3.1415927f


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static abs(F)F
    .registers 2

    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-lez v0, :cond_6

    goto :goto_7

    :cond_6
    neg-float p0, p0

    :goto_7
    return p0
.end method

.method public static floatEquals(FF)Z
    .registers 4

    sub-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    float-to-double p0, p0

    const-wide v0, 0x3e7ad7f29abcaf48L  # 1.0E-7

    cmpg-double p0, p0, v0

    if-gez p0, :cond_11

    const/4 p0, 0x1

    goto :goto_12

    :cond_11
    const/4 p0, 0x0

    :goto_12
    return p0
.end method

.method public static max(FF)F
    .registers 3

    cmpl-float v0, p0, p1

    if-lez v0, :cond_5

    goto :goto_6

    :cond_5
    move p0, p1

    :goto_6
    return p0
.end method

.method public static min(FF)F
    .registers 3

    cmpg-float v0, p0, p1

    if-gez v0, :cond_5

    goto :goto_6

    :cond_5
    move p0, p1

    :goto_6
    return p0
.end method

.method public static sqrt(F)F
    .registers 3

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/StrictMath;->sqrt(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method
