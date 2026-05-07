.class public final Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$ScrollState;
.super Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$CurveProperties;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ScrollState"
.end annotation


# instance fields
.field private linearInterpolation:F

.field private scrollFromEdge:F


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$CurveProperties;-><init>()V

    return-void
.end method


# virtual methods
.method public final getLinearInterpolation()F
    .registers 1

    iget p0, p0, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$ScrollState;->linearInterpolation:F

    return p0
.end method

.method public final getScrollFromEdge()F
    .registers 1

    iget p0, p0, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$ScrollState;->scrollFromEdge:F

    return p0
.end method

.method public final setLinearInterpolation(F)V
    .registers 2

    iput p1, p0, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$ScrollState;->linearInterpolation:F

    return-void
.end method

.method public final setScrollFromEdge(F)V
    .registers 2

    iput p1, p0, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$ScrollState;->scrollFromEdge:F

    return-void
.end method

.method public final updateInterpolation(Lcom/android/launcher3/DeviceProfile;F)V
    .registers 6

    invoke-virtual {p0}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$CurveProperties;->getHalfPageSize()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p2, v0

    invoke-virtual {p0}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$CurveProperties;->getScreenCenter()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, p2

    invoke-virtual {p0}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$CurveProperties;->getHalfScreenSize()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$CurveProperties;->getHalfPageSize()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x1

    int-to-float v2, v2

    invoke-static {p1}, Lcom/android/quickstep/views/TaskView;->getEdgeScaleDownFactor(Lcom/android/launcher3/DeviceProfile;)F

    move-result p1

    sub-float/2addr v2, p1

    mul-float/2addr v2, v1

    add-float/2addr v2, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    div-float/2addr p1, v2

    const/high16 p2, 0x3f800000  # 1.0f

    invoke-static {p2, p1}, Li1/d;->c(FF)F

    move-result p1

    iput p1, p0, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$ScrollState;->linearInterpolation:F

    return-void
.end method
