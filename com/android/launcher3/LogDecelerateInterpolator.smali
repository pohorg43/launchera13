.class public Lcom/android/launcher3/LogDecelerateInterpolator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/TimeInterpolator;


# instance fields
.field public mBase:I

.field public mDrift:I

.field public final mLogScale:F


# direct methods
.method public constructor <init>(II)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/launcher3/LogDecelerateInterpolator;->mBase:I

    iput p2, p0, Lcom/android/launcher3/LogDecelerateInterpolator;->mDrift:I

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-static {v0, p1, p2}, Lcom/android/launcher3/LogDecelerateInterpolator;->computeLog(FII)F

    move-result p1

    div-float/2addr v0, p1

    iput v0, p0, Lcom/android/launcher3/LogDecelerateInterpolator;->mLogScale:F

    return-void
.end method

.method public static computeLog(FII)F
    .registers 7

    int-to-double v0, p1

    neg-float p1, p0

    float-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    neg-double v0, v0

    double-to-float p1, v0

    const/high16 v0, 0x3f800000  # 1.0f

    add-float/2addr p1, v0

    int-to-float p2, p2

    mul-float/2addr p2, p0

    add-float/2addr p2, p1

    return p2
.end method


# virtual methods
.method public getInterpolation(F)F
    .registers 4

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_9

    goto :goto_15

    :cond_9
    iget v0, p0, Lcom/android/launcher3/LogDecelerateInterpolator;->mBase:I

    iget v1, p0, Lcom/android/launcher3/LogDecelerateInterpolator;->mDrift:I

    invoke-static {p1, v0, v1}, Lcom/android/launcher3/LogDecelerateInterpolator;->computeLog(FII)F

    move-result p1

    iget p0, p0, Lcom/android/launcher3/LogDecelerateInterpolator;->mLogScale:F

    mul-float v0, p1, p0

    :goto_15
    return v0
.end method
