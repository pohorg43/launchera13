.class public Landroidx/transition/SidePropagation;
.super Landroidx/transition/VisibilityPropagation;
.source ""


# instance fields
.field private mPropagationSpeed:F

.field private mSide:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroidx/transition/VisibilityPropagation;-><init>()V

    const/high16 v0, 0x40400000  # 3.0f

    iput v0, p0, Landroidx/transition/SidePropagation;->mPropagationSpeed:F

    const/16 v0, 0x50

    iput v0, p0, Landroidx/transition/SidePropagation;->mSide:I

    return-void
.end method

.method private distance(Landroid/view/View;IIIIIIII)I
    .registers 15

    iget p0, p0, Landroidx/transition/SidePropagation;->mSide:I

    const/4 v0, 0x5

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    const v4, 0x800003

    if-ne p0, v4, :cond_19

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result p0

    if-ne p0, v3, :cond_12

    goto :goto_13

    :cond_12
    move v3, v2

    :goto_13
    if-eqz v3, :cond_17

    :cond_15
    move p0, v0

    goto :goto_29

    :cond_17
    :goto_17
    move p0, v1

    goto :goto_29

    :cond_19
    const v4, 0x800005

    if-ne p0, v4, :cond_29

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result p0

    if-ne p0, v3, :cond_25

    goto :goto_26

    :cond_25
    move v3, v2

    :goto_26
    if-eqz v3, :cond_15

    goto :goto_17

    :cond_29
    :goto_29
    if-eq p0, v1, :cond_51

    if-eq p0, v0, :cond_48

    const/16 p1, 0x30

    if-eq p0, p1, :cond_3f

    const/16 p1, 0x50

    if-eq p0, p1, :cond_36

    goto :goto_59

    :cond_36
    sub-int/2addr p3, p7

    sub-int/2addr p4, p2

    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result p0

    add-int v2, p0, p3

    goto :goto_59

    :cond_3f
    sub-int/2addr p9, p3

    sub-int/2addr p4, p2

    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result p0

    add-int v2, p0, p9

    goto :goto_59

    :cond_48
    sub-int/2addr p2, p6

    sub-int/2addr p5, p3

    invoke-static {p5}, Ljava/lang/Math;->abs(I)I

    move-result p0

    add-int v2, p0, p2

    goto :goto_59

    :cond_51
    sub-int/2addr p8, p2

    sub-int/2addr p5, p3

    invoke-static {p5}, Ljava/lang/Math;->abs(I)I

    move-result p0

    add-int v2, p0, p8

    :goto_59
    return v2
.end method

.method private getMaxDistance(Landroid/view/ViewGroup;)I
    .registers 3

    iget p0, p0, Landroidx/transition/SidePropagation;->mSide:I

    const/4 v0, 0x3

    if-eq p0, v0, :cond_17

    const/4 v0, 0x5

    if-eq p0, v0, :cond_17

    const v0, 0x800003

    if-eq p0, v0, :cond_17

    const v0, 0x800005

    if-eq p0, v0, :cond_17

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result p0

    return p0

    :cond_17
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result p0

    return p0
.end method


# virtual methods
.method public getStartDelay(Landroid/view/ViewGroup;Landroidx/transition/Transition;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)J
    .registers 21

    move-object/from16 v10, p0

    move-object/from16 v0, p3

    const-wide/16 v11, 0x0

    if-nez v0, :cond_b

    if-nez p4, :cond_b

    return-wide v11

    :cond_b
    invoke-virtual/range {p2 .. p2}, Landroidx/transition/Transition;->getEpicenter()Landroid/graphics/Rect;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz p4, :cond_1d

    invoke-virtual {v10, v0}, Landroidx/transition/VisibilityPropagation;->getViewVisibility(Landroidx/transition/TransitionValues;)I

    move-result v3

    if-nez v3, :cond_19

    goto :goto_1d

    :cond_19
    move-object/from16 v0, p4

    move v13, v2

    goto :goto_1f

    :cond_1d
    :goto_1d
    const/4 v3, -0x1

    move v13, v3

    :goto_1f
    invoke-virtual {v10, v0}, Landroidx/transition/VisibilityPropagation;->getViewX(Landroidx/transition/TransitionValues;)I

    move-result v3

    invoke-virtual {v10, v0}, Landroidx/transition/VisibilityPropagation;->getViewY(Landroidx/transition/TransitionValues;)I

    move-result v4

    const/4 v0, 0x2

    new-array v5, v0, [I

    move-object/from16 v14, p1

    invoke-virtual {v14, v5}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    const/4 v6, 0x0

    aget v6, v5, v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getTranslationX()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    add-int/2addr v6, v7

    aget v2, v5, v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    add-int v7, v5, v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    add-int v8, v2, v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    add-int v9, v2, v7

    if-eqz v1, :cond_60

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    move v5, v0

    move v15, v1

    goto :goto_68

    :cond_60
    add-int v1, v6, v8

    div-int/2addr v1, v0

    add-int v2, v7, v9

    div-int/2addr v2, v0

    move v5, v1

    move v15, v2

    :goto_68
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v15

    invoke-direct/range {v0 .. v9}, Landroidx/transition/SidePropagation;->distance(Landroid/view/View;IIIIIIII)I

    move-result v0

    int-to-float v0, v0

    invoke-direct/range {p0 .. p1}, Landroidx/transition/SidePropagation;->getMaxDistance(Landroid/view/ViewGroup;)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual/range {p2 .. p2}, Landroidx/transition/Transition;->getDuration()J

    move-result-wide v1

    cmp-long v3, v1, v11

    if-gez v3, :cond_85

    const-wide/16 v1, 0x12c

    :cond_85
    int-to-long v3, v13

    mul-long/2addr v1, v3

    long-to-float v1, v1

    iget v2, v10, Landroidx/transition/SidePropagation;->mPropagationSpeed:F

    div-float/2addr v1, v2

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public setPropagationSpeed(F)V
    .registers 3

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_8

    iput p1, p0, Landroidx/transition/SidePropagation;->mPropagationSpeed:F

    return-void

    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "propagationSpeed may not be 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setSide(I)V
    .registers 2

    iput p1, p0, Landroidx/transition/SidePropagation;->mSide:I

    return-void
.end method
