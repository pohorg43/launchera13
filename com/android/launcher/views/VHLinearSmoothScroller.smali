.class public Lcom/android/launcher/views/VHLinearSmoothScroller;
.super Landroidx/recyclerview/widget/LinearSmoothScroller;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "ToggleBarRecyclerScroller"

.field private static final TARGET_SEEK_EXTRA_SCROLL_RATIO:F = 1.2f

.field private static final TARGET_SEEK_SCROLL_DISTANCE_PX:I = 0x2710


# instance fields
.field private final mOplusBezierInterpolator:Landroid/view/animation/OplusBezierInterpolator;

.field private mScrollTime:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 12

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/view/animation/OplusBezierInterpolator;

    const-wide v1, 0x3fc99999a0000000L  # 0.20000000298023224

    const-wide v3, 0x3fd3333340000000L  # 0.30000001192092896

    const-wide v5, 0x3fcae147a0000000L  # 0.20999999344348907

    const-wide/high16 v7, 0x3ff0000000000000L  # 1.0

    const/4 v9, 0x1

    move-object v0, p1

    invoke-direct/range {v0 .. v9}, Landroid/view/animation/OplusBezierInterpolator;-><init>(DDDDZ)V

    iput-object p1, p0, Lcom/android/launcher/views/VHLinearSmoothScroller;->mOplusBezierInterpolator:Landroid/view/animation/OplusBezierInterpolator;

    return-void
.end method


# virtual methods
.method public onTargetFound(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;)V
    .registers 6

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearSmoothScroller;->getHorizontalSnapPreference()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/LinearSmoothScroller;->calculateDxToMakeVisible(Landroid/view/View;I)I

    move-result p2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearSmoothScroller;->getVerticalSnapPreference()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/LinearSmoothScroller;->calculateDyToMakeVisible(Landroid/view/View;I)I

    move-result p1

    mul-int v0, p2, p2

    mul-int v1, p1, p1

    add-int/2addr v1, v0

    int-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearSmoothScroller;->calculateTimeForDeceleration(I)I

    move-result v0

    if-lez v0, :cond_2a

    neg-int p2, p2

    neg-int p1, p1

    iget v0, p0, Lcom/android/launcher/views/VHLinearSmoothScroller;->mScrollTime:I

    iget-object p0, p0, Lcom/android/launcher/views/VHLinearSmoothScroller;->mOplusBezierInterpolator:Landroid/view/animation/OplusBezierInterpolator;

    invoke-virtual {p3, p2, p1, v0, p0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->update(IIILandroid/view/animation/Interpolator;)V

    :cond_2a
    return-void
.end method

.method public setScrollTime(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher/views/VHLinearSmoothScroller;->mScrollTime:I

    return-void
.end method

.method public updateActionForInterimTarget(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;)V
    .registers 5

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->getTargetPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object v0

    if-eqz v0, :cond_3d

    iget v1, v0, Landroid/graphics/PointF;->x:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_18

    iget v1, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_18

    goto :goto_3d

    :cond_18
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->normalize(Landroid/graphics/PointF;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mTargetVector:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    const v2, 0x461c4000  # 10000.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mInterimTargetDx:I

    iget v0, v0, Landroid/graphics/PointF;->y:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mInterimTargetDy:I

    int-to-float v1, v1

    const v2, 0x3f99999a  # 1.2f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iget v2, p0, Lcom/android/launcher/views/VHLinearSmoothScroller;->mScrollTime:I

    iget-object p0, p0, Lcom/android/launcher/views/VHLinearSmoothScroller;->mOplusBezierInterpolator:Landroid/view/animation/OplusBezierInterpolator;

    invoke-virtual {p1, v1, v0, v2, p0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->update(IIILandroid/view/animation/Interpolator;)V

    return-void

    :cond_3d
    :goto_3d
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->getTargetPosition()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->jumpTo(I)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->stop()V

    return-void
.end method
