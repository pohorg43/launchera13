.class final Lcom/google/android/material/color/MathUtils;
.super Ljava/lang/Object;
.source ""


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clamp(FFF)F
    .registers 3

    invoke-static {p2, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method public static differenceDegrees(FF)F
    .registers 2

    sub-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const/high16 p1, 0x43340000  # 180.0f

    sub-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    sub-float/2addr p1, p0

    return p1
.end method

.method public static lerp(FFF)F
    .registers 4

    const/high16 v0, 0x3f800000  # 1.0f

    sub-float/2addr v0, p2

    mul-float/2addr v0, p0

    mul-float/2addr p2, p1

    add-float/2addr p2, v0

    return p2
.end method

.method public static sanitizeDegrees(F)F
    .registers 3

    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    const/high16 v1, 0x43b40000  # 360.0f

    if-gez v0, :cond_a

    rem-float/2addr p0, v1

    add-float/2addr p0, v1

    return p0

    :cond_a
    cmpl-float v0, p0, v1

    if-ltz v0, :cond_f

    rem-float/2addr p0, v1

    :cond_f
    return p0
.end method

.method public static sanitizeDegrees(I)I
    .registers 2

    const/16 v0, 0x168

    if-gez p0, :cond_7

    rem-int/2addr p0, v0

    add-int/2addr p0, v0

    return p0

    :cond_7
    if-lt p0, v0, :cond_a

    rem-int/2addr p0, v0

    :cond_a
    return p0
.end method

.method public static toDegrees(F)F
    .registers 2

    const/high16 v0, 0x43340000  # 180.0f

    mul-float/2addr p0, v0

    const v0, 0x40490fdb  # (float)Math.PI

    div-float/2addr p0, v0

    return p0
.end method

.method public static toRadians(F)F
    .registers 2

    const/high16 v0, 0x43340000  # 180.0f

    div-float/2addr p0, v0

    const v0, 0x40490fdb  # (float)Math.PI

    mul-float/2addr p0, v0

    return p0
.end method
