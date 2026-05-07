.class public Lcom/android/launcher3/touch/OverScroll;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final OVERSCROLL_DAMP_FACTOR:F = 0.07f


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dampedScroll(FI)I
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_9

    const/4 p0, 0x0

    return p0

    :cond_9
    int-to-float p1, p1

    div-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    div-float v0, p0, v0

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    invoke-static {p0}, Lcom/android/launcher3/touch/OverScroll;->overScrollInfluenceCurve(F)F

    move-result p0

    mul-float/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const/high16 v1, 0x3f800000  # 1.0f

    cmpl-float p0, p0, v1

    if-ltz p0, :cond_29

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    div-float/2addr v0, p0

    :cond_29
    const p0, 0x3d8f5c29  # 0.07f

    mul-float/2addr v0, p0

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method private static overScrollInfluenceCurve(F)F
    .registers 3

    const/high16 v0, 0x3f800000  # 1.0f

    sub-float/2addr p0, v0

    mul-float v1, p0, p0

    mul-float/2addr v1, p0

    add-float/2addr v1, v0

    return v1
.end method
