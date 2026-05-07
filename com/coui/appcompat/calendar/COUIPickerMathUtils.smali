.class public final Lcom/coui/appcompat/calendar/COUIPickerMathUtils;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final VIEW_STATE_ACCELERATED:I = 0x40

.field public static final VIEW_STATE_ACTIVATED:I = 0x20

.field public static final VIEW_STATE_DRAG_CAN_ACCEPT:I = 0x100

.field public static final VIEW_STATE_DRAG_HOVERED:I = 0x200

.field public static final VIEW_STATE_ENABLED:I = 0x8

.field public static final VIEW_STATE_FOCUSED:I = 0x4

.field public static final VIEW_STATE_HOVERED:I = 0x80

.field public static final VIEW_STATE_IDS:[I

.field public static final VIEW_STATE_PRESSED:I = 0x10

.field public static final VIEW_STATE_SELECTED:I = 0x2

.field private static final VIEW_STATE_SETS:[[I

.field public static final VIEW_STATE_WINDOW_FOCUSED:I = 0x1


# direct methods
.method public static constructor <clinit>()V
    .registers 10

    const/16 v0, 0x14

    new-array v0, v0, [I

    fill-array-data v0, :array_66

    sput-object v0, Lcom/coui/appcompat/calendar/COUIPickerMathUtils;->VIEW_STATE_IDS:[I

    array-length v0, v0

    new-array v1, v0, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_e
    sget-object v4, Lcom/support/appcompat/R$styleable;->ViewDrawableStatesCompat:[I

    array-length v5, v4

    const/4 v6, 0x1

    if-ge v3, v5, :cond_31

    aget v4, v4, v3

    move v5, v2

    :goto_17
    sget-object v7, Lcom/coui/appcompat/calendar/COUIPickerMathUtils;->VIEW_STATE_IDS:[I

    array-length v8, v7

    if-ge v5, v8, :cond_2e

    aget v8, v7, v5

    if-ne v8, v4, :cond_2b

    mul-int/lit8 v8, v3, 0x2

    aput v4, v1, v8

    add-int/2addr v8, v6

    add-int/lit8 v9, v5, 0x1

    aget v7, v7, v9

    aput v7, v1, v8

    :cond_2b
    add-int/lit8 v5, v5, 0x2

    goto :goto_17

    :cond_2e
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_31
    sget-object v3, Lcom/coui/appcompat/calendar/COUIPickerMathUtils;->VIEW_STATE_IDS:[I

    array-length v3, v3

    div-int/lit8 v3, v3, 0x2

    shl-int v3, v6, v3

    new-array v3, v3, [[I

    sput-object v3, Lcom/coui/appcompat/calendar/COUIPickerMathUtils;->VIEW_STATE_SETS:[[I

    move v3, v2

    :goto_3d
    sget-object v4, Lcom/coui/appcompat/calendar/COUIPickerMathUtils;->VIEW_STATE_SETS:[[I

    array-length v4, v4

    if-ge v3, v4, :cond_64

    invoke-static {v3}, Ljava/lang/Integer;->bitCount(I)I

    move-result v4

    new-array v4, v4, [I

    move v5, v2

    move v6, v5

    :goto_4a
    if-ge v5, v0, :cond_5d

    add-int/lit8 v7, v5, 0x1

    aget v7, v1, v7

    and-int/2addr v7, v3

    if-eqz v7, :cond_5a

    add-int/lit8 v7, v6, 0x1

    aget v8, v1, v5

    aput v8, v4, v6

    move v6, v7

    :cond_5a
    add-int/lit8 v5, v5, 0x2

    goto :goto_4a

    :cond_5d
    sget-object v5, Lcom/coui/appcompat/calendar/COUIPickerMathUtils;->VIEW_STATE_SETS:[[I

    aput-object v4, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3d

    :cond_64
    return-void

    nop

    :array_66
    .array-data 4
        0x101009d
        0x1
        0x10100a1
        0x2
        0x101009c
        0x4
        0x101009e
        0x8
        0x10100a7
        0x10
        0x10102fe
        0x20
        0x101031b
        0x40
        0x1010367
        0x80
        0x1010368
        0x100
        0x1010369
        0x200
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static constrain(FFF)F
    .registers 4

    cmpg-float v0, p0, p1

    if-gez v0, :cond_6

    move p0, p1

    goto :goto_b

    :cond_6
    cmpl-float p1, p0, p2

    if-lez p1, :cond_b

    move p0, p2

    :cond_b
    :goto_b
    return p0
.end method

.method public static constrain(III)I
    .registers 3

    if-ge p0, p1, :cond_4

    move p0, p1

    goto :goto_7

    :cond_4
    if-le p0, p2, :cond_7

    move p0, p2

    :cond_7
    :goto_7
    return p0
.end method

.method public static constrain(JJJ)J
    .registers 7

    cmp-long v0, p0, p2

    if-gez v0, :cond_6

    move-wide p0, p2

    goto :goto_b

    :cond_6
    cmp-long p2, p0, p4

    if-lez p2, :cond_b

    move-wide p0, p4

    :cond_b
    :goto_b
    return-wide p0
.end method

.method public static dist(FFFF)F
    .registers 4

    sub-float/2addr p2, p0

    sub-float/2addr p3, p1

    float-to-double p0, p2

    float-to-double p2, p3

    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public static distanceToFurthestCorner(FFFFFF)F
    .registers 7

    invoke-static {p0, p1, p2, p3}, Lcom/coui/appcompat/calendar/COUIPickerMathUtils;->dist(FFFF)F

    move-result v0

    invoke-static {p0, p1, p4, p3}, Lcom/coui/appcompat/calendar/COUIPickerMathUtils;->dist(FFFF)F

    move-result p3

    invoke-static {p0, p1, p4, p5}, Lcom/coui/appcompat/calendar/COUIPickerMathUtils;->dist(FFFF)F

    move-result p4

    invoke-static {p0, p1, p2, p5}, Lcom/coui/appcompat/calendar/COUIPickerMathUtils;->dist(FFFF)F

    move-result p0

    invoke-static {v0, p3, p4, p0}, Lcom/coui/appcompat/calendar/COUIPickerMathUtils;->max(FFFF)F

    move-result p0

    return p0
.end method

.method public static dpToPx(Landroid/content/Context;I)F
    .registers 3
    .param p0  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1  # I
        .annotation build Landroidx/annotation/Dimension;
            unit = 0x0
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    return p0
.end method

.method public static floorMod(FI)F
    .registers 5

    int-to-float v0, p1

    div-float v1, p0, v0

    float-to-int v1, v1

    invoke-static {p0}, Ljava/lang/Math;->signum(F)F

    move-result v2

    mul-float/2addr v2, v0

    const/4 v0, 0x0

    cmpg-float v0, v2, v0

    if-gez v0, :cond_17

    mul-int v0, v1, p1

    int-to-float v0, v0

    cmpl-float v0, v0, p0

    if-eqz v0, :cond_17

    add-int/lit8 v1, v1, -0x1

    :cond_17
    mul-int/2addr v1, p1

    int-to-float p1, v1

    sub-float/2addr p0, p1

    return p0
.end method

.method public static floorMod(II)I
    .registers 4

    div-int v0, p0, p1

    xor-int v1, p0, p1

    if-gez v1, :cond_c

    mul-int v1, v0, p1

    if-eq v1, p0, :cond_c

    add-int/lit8 v0, v0, -0x1

    :cond_c
    mul-int/2addr v0, p1

    sub-int/2addr p0, v0

    return p0
.end method

.method public static geq(FFF)Z
    .registers 3

    add-float/2addr p0, p2

    cmpl-float p0, p0, p1

    if-ltz p0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public static getViewState(I)[I
    .registers 3

    sget-object v0, Lcom/coui/appcompat/calendar/COUIPickerMathUtils;->VIEW_STATE_SETS:[[I

    array-length v1, v0

    if-ge p0, v1, :cond_8

    aget-object p0, v0, p0

    return-object p0

    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid state set mask"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isLayoutRtl(Landroid/view/View;)Z
    .registers 2

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_8

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
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

.method public static lerpDeg(FFF)F
    .registers 5

    sub-float/2addr p1, p0

    const/high16 v0, 0x43340000  # 180.0f

    add-float/2addr p1, v0

    const/high16 v1, 0x43b40000  # 360.0f

    rem-float/2addr p1, v1

    sub-float/2addr p1, v0

    mul-float/2addr p1, p2

    add-float/2addr p1, p0

    return p1
.end method

.method private static max(FFFF)F
    .registers 5

    cmpl-float v0, p0, p1

    if-lez v0, :cond_d

    cmpl-float v0, p0, p2

    if-lez v0, :cond_d

    cmpl-float v0, p0, p3

    if-lez v0, :cond_d

    goto :goto_1e

    :cond_d
    cmpl-float p0, p1, p2

    if-lez p0, :cond_17

    cmpl-float p0, p1, p3

    if-lez p0, :cond_17

    move p0, p1

    goto :goto_1e

    :cond_17
    cmpl-float p0, p2, p3

    if-lez p0, :cond_1d

    move p0, p2

    goto :goto_1e

    :cond_1d
    move p0, p3

    :goto_1e
    return p0
.end method
