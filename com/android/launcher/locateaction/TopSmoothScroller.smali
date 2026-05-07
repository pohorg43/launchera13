.class public Lcom/android/launcher/locateaction/TopSmoothScroller;
.super Landroidx/recyclerview/widget/LinearSmoothScroller;
.source ""


# static fields
.field public static final SNAP_TO_CENTER:I = 0x2


# instance fields
.field private mGravity:I

.field private mMargin:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public calculateDtToFit(IIIII)I
    .registers 7

    const/4 v0, 0x2

    if-ne p5, v0, :cond_8

    add-int/2addr p3, p4

    add-int/2addr p1, p2

    sub-int/2addr p3, p1

    div-int/2addr p3, v0

    return p3

    :cond_8
    invoke-super/range {p0 .. p5}, Landroidx/recyclerview/widget/LinearSmoothScroller;->calculateDtToFit(IIIII)I

    move-result p0

    return p0
.end method

.method public calculateDxToMakeVisible(Landroid/view/View;I)I
    .registers 4

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/LinearSmoothScroller;->calculateDxToMakeVisible(Landroid/view/View;I)I

    move-result p1

    iget p2, p0, Lcom/android/launcher/locateaction/TopSmoothScroller;->mGravity:I

    const v0, 0x800003

    if-eq p2, v0, :cond_15

    const v0, 0x800005

    if-eq p2, v0, :cond_11

    return p1

    :cond_11
    iget p0, p0, Lcom/android/launcher/locateaction/TopSmoothScroller;->mMargin:I

    sub-int/2addr p1, p0

    return p1

    :cond_15
    iget p0, p0, Lcom/android/launcher/locateaction/TopSmoothScroller;->mMargin:I

    add-int/2addr p1, p0

    return p1
.end method

.method public calculateDyToMakeVisible(Landroid/view/View;I)I
    .registers 4

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/LinearSmoothScroller;->calculateDyToMakeVisible(Landroid/view/View;I)I

    move-result p1

    iget p2, p0, Lcom/android/launcher/locateaction/TopSmoothScroller;->mGravity:I

    const v0, 0x800003

    if-eq p2, v0, :cond_15

    const v0, 0x800005

    if-eq p2, v0, :cond_11

    return p1

    :cond_11
    iget p0, p0, Lcom/android/launcher/locateaction/TopSmoothScroller;->mMargin:I

    sub-int/2addr p1, p0

    return p1

    :cond_15
    iget p0, p0, Lcom/android/launcher/locateaction/TopSmoothScroller;->mMargin:I

    add-int/2addr p1, p0

    return p1
.end method

.method public calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F
    .registers 2

    const p0, 0x3d4ccccd  # 0.05f

    return p0
.end method

.method public getHorizontalSnapPreference()I
    .registers 3

    iget v0, p0, Lcom/android/launcher/locateaction/TopSmoothScroller;->mGravity:I

    const/16 v1, 0x11

    if-eq v0, v1, :cond_19

    const v1, 0x800003

    if-eq v0, v1, :cond_17

    const v1, 0x800005

    if-eq v0, v1, :cond_15

    invoke-super {p0}, Landroidx/recyclerview/widget/LinearSmoothScroller;->getHorizontalSnapPreference()I

    move-result p0

    return p0

    :cond_15
    const/4 p0, 0x1

    return p0

    :cond_17
    const/4 p0, -0x1

    return p0

    :cond_19
    const/4 p0, 0x2

    return p0
.end method

.method public getVerticalSnapPreference()I
    .registers 3

    iget v0, p0, Lcom/android/launcher/locateaction/TopSmoothScroller;->mGravity:I

    const/16 v1, 0x11

    if-eq v0, v1, :cond_19

    const v1, 0x800003

    if-eq v0, v1, :cond_17

    const v1, 0x800005

    if-eq v0, v1, :cond_15

    invoke-super {p0}, Landroidx/recyclerview/widget/LinearSmoothScroller;->getVerticalSnapPreference()I

    move-result p0

    return p0

    :cond_15
    const/4 p0, 0x1

    return p0

    :cond_17
    const/4 p0, -0x1

    return p0

    :cond_19
    const/4 p0, 0x2

    return p0
.end method

.method public setGravity(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher/locateaction/TopSmoothScroller;->mGravity:I

    return-void
.end method

.method public setMargin(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher/locateaction/TopSmoothScroller;->mMargin:I

    return-void
.end method
