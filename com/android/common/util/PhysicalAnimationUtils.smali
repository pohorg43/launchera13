.class public Lcom/android/common/util/PhysicalAnimationUtils;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final NUM_ONE:F = 1.0f

.field public static final NUM_THREE:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calcRealOverScrollDist(III)I
    .registers 3

    int-to-float p0, p0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    div-int/2addr p1, p2

    int-to-float p1, p1

    const/high16 p2, 0x3f800000  # 1.0f

    sub-float/2addr p2, p1

    mul-float/2addr p2, p0

    const/high16 p0, 0x40400000  # 3.0f

    div-float/2addr p2, p0

    float-to-int p0, p2

    return p0
.end method
